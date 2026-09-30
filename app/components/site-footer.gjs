import Component from '@glimmer/component';

export default class SiteFooter extends Component {
  <template>
    <footer>
      <nav>
        <div class="nav-links-container">
          <ul class="nav-links">
            <li><a href="#about">About</a></li>
            <li><a href="#support">Support</a></li>
            <li><a href="#projects">Projects</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div>
      </nav>
      <p>Copyright &#169; 2024 Apotecaedro. All Rights Reserved.</p>
    </footer>
  </template>
}
