import Component from '@glimmer/component';
import { action } from '@ember/object';
import { on } from '@ember/modifier';

export default class DarkModeToggle extends Component {
  @action
  toggle() {
    document.body.classList.toggle('dark-theme');
  }

  <template>
    <button id="dark-mode-btn" type="button" {{on "click" this.toggle}}>
      <img
        loading="lazy"
        src="/assets/dark-theme-icon.png"
        alt="Dark Theme"
        width="20px"
        height="auto"
        class="icon"
      />
      <span>Toggle Dark Mode</span>
    </button>
  </template>
}
