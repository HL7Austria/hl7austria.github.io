import { tabulatorInstances } from './tables/_loader.js';

const switcher = document.getElementById('select-language');
const allLangs = document.querySelectorAll('.lang');

switcher.addEventListener('change', (event) => {
    const selectedLang = event.target.value;
    allLangs.forEach((el) => el.style.display = 'none');
    document.querySelectorAll(`.lang-${selectedLang}`).forEach((el) => el.style.display = 'block');
    tabulatorInstances.forEach(table => table.setLocale?.(selectedLang === 'en' ? `lang-${selectedLang}` : ''));
});