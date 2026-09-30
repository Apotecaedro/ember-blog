import Component from '@glimmer/component';

export default class HeroSection extends Component {
  <template>
    <section id="profile">
      <div class="section__pic-container">
        <img loading="lazy" src="/assets/profile-pic.png" alt="Apotecaedro logo" />
      </div>
      <div class="section__text">
        <p class="section__text__p1">Welcome to</p>
        <h1 class="title">Apotecaedro</h1>
        <p class="section__text__p2">Game Studio</p>
        <div class="btn-container">
          <a class="btn btn-color-2" href="#support">Support Us</a>
          <a class="btn btn-color-1" href="#contact">Contact Info</a>
        </div>
        <div id="socials-container">
          <a class="icon-link" href="https://www.patreon.com/Apotecaedro" target="_blank" rel="noopener noreferrer">
            <img loading="lazy" src="/assets/patreon-logo (2).png" alt="Our Patreon profile" class="icon" />
          </a>
          <a class="icon-link" href="mailto:apotecaedro@gmail.com">
            <img loading="lazy" src="/assets/email.png" alt="Our Contact" class="icon" />
          </a>
        </div>
      </div>
    </section>
  </template>
}
