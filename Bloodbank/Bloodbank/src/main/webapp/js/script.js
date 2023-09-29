const openMiniFormButton = document.getElementById('open-mini-form-btn');
const miniForm = document.getElementById('mini-form');
const registrationForm = document.getElementById('registration-form');

openMiniFormButton.addEventListener('click', () => {
  miniForm.classList.remove('hidden');
  registrationForm.classList.add('light-form');
});