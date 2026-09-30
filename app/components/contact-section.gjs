import Component from '@glimmer/component';

export default class ContactSection extends Component {
  <template>
    <section id="contact">
      <p class="section__text__p1">Get in Touch</p>
      <h1 class="title">Contact Us</h1>
      <div class="contact-info-upper-container">
        <div class="contact-info-container">
          <img loading="lazy" src="/assets/email.png" alt="Email icon" class="icon contact-icon email-icon" />
          <p><a href="mailto:apotecaedro@gmail.com">Apotecaedro@gmail.com</a></p>
        </div>
        <div class="contact-info-container">
          <img loading="lazy" src="/assets/YouTube_dark_icon.png" alt="YouTube icon" class="icon contact-icon" />
          <p>
            <a href="https://www.youtube.com/@Apotecaedro/community" target="_blank" rel="noopener noreferrer">
              YouTube Comunity
            </a>
          </p>
        </div>
      </div>
    </section>
  </template>
}
