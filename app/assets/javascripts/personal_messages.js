// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

let xhttp = new XMLHttpRequest();

document.addEventListener('click', function(e) {
  let els = document.querySelectorAll('.js-unread');

  Array.prototype.map.call(els, (el)=> {
    let params = `id=${el.id}&read=${true}`;
    let url = `http://localhost:3333/personal_messages/inbox?${params}`;

    if (e.target === el) {
      console.log(url)
      xhttp.open('get', url);
      xhttp.send();
      el.classList.remove('js-unread');
    }
  });
});
