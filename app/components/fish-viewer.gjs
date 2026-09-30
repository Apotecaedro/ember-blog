import Component from '@glimmer/component';
import { modifier } from 'ember-modifier';
import * as THREE from 'three';
import { GLTFLoader } from 'three/examples/jsm/loaders/GLTFLoader.js';

const setupFishScene = modifier((element) => {
  const isDesktop = window.matchMedia('(min-width: 1024px)').matches;
  if (!isDesktop) {
    return;
  }

  const scene = new THREE.Scene();
  const camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);
  camera.position.z = 5;

  const renderer = new THREE.WebGLRenderer({ alpha: true });
  renderer.setSize(window.innerWidth, window.innerHeight);
  element.appendChild(renderer.domElement);

  scene.add(new THREE.AmbientLight(0xffffff, 0.5));

  const directionalLight = new THREE.DirectionalLight(0xffffff, 0.5);
  directionalLight.position.set(5, 5, 5);
  scene.add(directionalLight);

  let fish;
  const mouse = new THREE.Vector2();
  const velocity = new THREE.Vector3();
  const direction = new THREE.Vector3();
  const target = new THREE.Vector3();

  new GLTFLoader().load('/assets/NormFish.glb', (gltf) => {
    fish = gltf.scene;
    fish.position.y = 5;
    scene.add(fish);
  });

  const onMouseMove = (event) => {
    mouse.x = (event.clientX / window.innerWidth) * 2 - 1;
    mouse.y = -(event.clientY / window.innerHeight) * 2 + 1;
  };
  window.addEventListener('mousemove', onMouseMove);

  let frameId;
  const animate = () => {
    frameId = requestAnimationFrame(animate);

    if (fish) {
      camera.getWorldDirection(direction);
      const distance = -camera.position.z / direction.z;
      target.set(mouse.x * distance, mouse.y * distance, 0).add(camera.position);

      fish.lookAt(target);
      velocity.copy(target).sub(fish.position).multiplyScalar(0.001);
      fish.position.add(velocity);
      fish.position.z -= 0.005;
    }

    renderer.render(scene, camera);
  };
  animate();

  return () => {
    cancelAnimationFrame(frameId);
    window.removeEventListener('mousemove', onMouseMove);
    renderer.dispose();
    element.removeChild(renderer.domElement);
  };
});

export default class FishViewer extends Component {
  <template>
    <div id="canvas-container" style="width: 80vw; height: 100vh;" {{setupFishScene}}></div>
  </template>
}
