// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

let xhttp = new XMLHttpRequest();

document.addEventListener('click', function(e) {
  let el = document.querySelector('.js-unread');

  if (e.target === el) {
    xhttp.open('get', "http://localhost:3333/personal_messages/inbox");
    xhttp.send();
  }
})
