import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { action } from '@ember/object';
import { on } from '@ember/modifier';

export default class SupportSection extends Component {
  @tracked previewActive = false;
  @tracked previewTop = 0;
  @tracked previewLeft = 0;

  @action
  showPreview(event) {
    this.previewTop = event.clientY + 10;
    this.previewLeft = event.clientX + 10;
    this.previewActive = true;
  }

  @action
  hidePreview() {
    this.previewActive = false;
  }

  <template>
    <section id="support">
      <p class="section__text__p1">Do you enjoy our content and want to see us grow?</p>
      <h1 class="title">Support Us</h1>
      <div class="support-details-container">
        <div class="about-containers">
          <div class="details-container">
            <a
              class="preview-link"
              href="https://www.patreon.com/Apotecaedro"
              target="_blank"
              rel="noopener noreferrer"
              {{on "mouseenter" this.showPreview}}
              {{on "mouseleave" this.hidePreview}}
            >Our Patreon</a>

            <div
              class="modal {{if this.previewActive "active"}}"
              style="top: {{this.previewTop}}px; left: {{this.previewLeft}}px;"
            >
              <img loading="lazy" src="/assets/patreon-logo (2).png" alt="Preview of the Patreon page" />
            </div>
          </div>
        </div>
      </div>
      <a class="icon-link arrow" href="#projects">
        <img loading="lazy" src="/assets/arrow.png" alt="Arrow icon" class="icon" />
      </a>
    </section>
  </template>
}
