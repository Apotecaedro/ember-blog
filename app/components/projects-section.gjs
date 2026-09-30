import Component from '@glimmer/component';
import LazyImage from 'apotecaedro/components/lazy-image';

export default class ProjectsSection extends Component {
  <template>
    <section id="projects">
      <p class="section__text__p1">Browse Our Recent</p>
      <h1 class="title">Projects</h1>
      <div class="support-details-container">
        <div class="about-containers">
          <div class="details-container color-container">
            <div class="article-container">
              <LazyImage @src="/assets/jVAnhN.png" @alt="Game Mockup Jam" class="project-img" />
            </div>
            <h2 class="support-sub-title project-title">Game Mockup Jam</h2>
            <div class="btn-container">
              <a
                class="btn btn-color-2 project-btn"
                href="https://preguisaquente.itch.io/tiny-knight"
                target="_blank"
                rel="noopener noreferrer"
              >
                Itch.io
              </a>
            </div>
          </div>
          <div class="details-container color-container">
            <div class="article-container">
              <LazyImage @src="/assets/Rustic Printed Stamp (7).png" @alt="Kenshi Review" class="project-img" />
            </div>
            <h2 class="support-sub-title project-title">Kenshi Review</h2>
            <div class="btn-container">
              <a
                class="btn btn-color-2 project-btn"
                href="https://www.youtube.com/watch?v=PXNVJDXryM8"
                target="_blank"
                rel="noopener noreferrer"
              >
                YouTube
              </a>
            </div>
          </div>
          <div class="details-container color-container">
            <div class="article-container">
              <LazyImage @src="/assets/Rustic Printed Stamp (8).png" @alt="Kenshi Challenge" class="project-img" />
            </div>
            <h2 class="support-sub-title project-title">Kenshi Challenge</h2>
            <div class="btn-container">
              <a
                class="btn btn-color-2 project-btn"
                href="https://www.youtube.com/watch?v=XFg0fL2lPe0"
                target="_blank"
                rel="noopener noreferrer"
              >
                YouTube
              </a>
            </div>
          </div>
        </div>
      </div>
      <a class="icon-link arrow" href="#contact">
        <img loading="lazy" src="/assets/arrow.png" alt="Arrow icon" class="icon" />
      </a>
    </section>
  </template>
}
