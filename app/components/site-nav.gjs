import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { action } from '@ember/object';
import { on } from '@ember/modifier';

export default class SiteNav extends Component {
  @tracked menuOpen = false;

  @action
  toggleMenu() {
    this.menuOpen = !this.menuOpen;
  }

  <template>
    <nav id="desktop-nav">
      <div class="logo">Apotecaedro</div>
      <div>
        <ul class="nav-links">
          <li><a href="#about">About</a></li>
          <li><a href="#support">Support</a></li>
          <li><a href="#projects">Projects</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </div>
    </nav>
    <nav id="hamburger-nav">
      <div class="logo">Apotecaedro</div>
      <div class="hamburger-menu">
        <div
          class="hamburger-icon {{if this.menuOpen "open"}}"
          role="button"
          tabindex="0"
          {{on "click" this.toggleMenu}}
        >
          <span></span>
          <span></span>
          <span></span>
        </div>
        <div class="menu-links {{if this.menuOpen "open"}}">
          <li><a href="#about" {{on "click" this.toggleMenu}}>About</a></li>
          <li><a href="#support" {{on "click" this.toggleMenu}}>Support</a></li>
          <li><a href="#projects" {{on "click" this.toggleMenu}}>Projects</a></li>
          <li><a href="#contact" {{on "click" this.toggleMenu}}>Contact</a></li>
        </div>
      </div>
    </nav>
  </template>
}
