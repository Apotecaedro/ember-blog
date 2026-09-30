import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { modifier } from 'ember-modifier';

const observeVisibility = modifier((element, [onVisible]) => {
  const observer = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        onVisible();
        observer.unobserve(element);
      }
    });
  });
  observer.observe(element);

  return () => observer.disconnect();
});

export default class LazyImage extends Component {
  @tracked loaded = false;

  markLoaded = () => {
    this.loaded = true;
  };

  <template>
    <img
      loading="lazy"
      src={{if this.loaded @src "https://via.placeholder.com/375x138"}}
      alt={{@alt}}
      class="{{if this.loaded 'loaded' 'loading'}}"
      {{observeVisibility this.markLoaded}}
      ...attributes
    />
  </template>
}
