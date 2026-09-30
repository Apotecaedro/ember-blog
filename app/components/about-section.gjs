import Component from '@glimmer/component';

export default class AboutSection extends Component {
  <template>
    <section id="about">
      <p class="section__text__p1">Get To Know More</p>
      <h1 class="title">About Us</h1>
      <div class="section-container">
        <div class="section__pic-container">
          <img loading="lazy" src="/assets/about-pic.png" alt="Profile picture" class="about-pic" />
        </div>
        <div class="about-details-container">
          <div class="about-containers">
            <div class="details-container">
              <a
                class="icon-link"
                href="https://www.youtube.com/channel/UCiNoKjRKzMVfYONO9DLib3Q"
                target="_blank"
                rel="noopener noreferrer"
              >
                <img loading="lazy" src="/assets/YouTube_dark_icon.png" alt="Youtube icon" class="icon" />
              </a>
              <h3>
                <a href="https://www.youtube.com/channel/UCiNoKjRKzMVfYONO9DLib3Q" target="_blank" rel="noopener noreferrer">
                  YouTube Channel
                </a>
              </h3>
              <p>Game reviews <br />Release trailers</p>
            </div>
            <div class="details-container">
              <a class="icon-link" href="https://apotecaedro.itch.io/" target="_blank" rel="noopener noreferrer">
                <img loading="lazy" src="/assets/itch-io-icon.png" alt="Itch.io icon" class="icon" />
              </a>
              <h3>
                <a href="https://apotecaedro.itch.io/" target="_blank" rel="noopener noreferrer">
                  Itch.io Page
                </a>
              </h3>
              <p>Full-length games<br />Game jam projects</p>
            </div>
          </div>
          <div class="text-container">
            <p>
              We're a team of brazilian content creators who specialize in producing electronic games, video reviews,
              guides, and more. Join us as we share our diverse range of content and our enthusiasm for gaming.
            </p>
          </div>
        </div>
      </div>
      <a class="icon-link arrow" href="#support">
        <img loading="lazy" src="/assets/arrow.png" alt="Arrow icon" class="icon" />
      </a>
    </section>
  </template>
}
