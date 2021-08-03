function openTab(evt, tabName, tabValue) {
  changeQueryString(`?${tabName}=${tabValue}`, undefined);
  updateTab();
}

function changeQueryString(searchString, documentTitle){      
  documentTitle = typeof documentTitle !== 'undefined' ? documentTitle : document.title;      
  var urlSplit=( window.location.href ).split( "?" );      
  var obj = { Title: documentTitle, Url: urlSplit[0] + searchString };      
  history.pushState(obj, obj.Title, obj.Url);      
}

const navbarMenu = () => {
  const burger = $(".navbar-burger"),
        menu = $(".navbar-menu");

  burger.click(() => {
    [burger, menu].forEach((el) => el.toggleClass('is-active'));
  });
}

const sidebarAccordion = () => {
  const triggers = $('.trigger');

  if (triggers) {
    triggers.each((idx, el) => {
      var href = el.attributes.getNamedItem('href').nodeValue;
      href = href.slice(1);
      const collapsible = document.getElementById(href);
      new bulmaCollapsible(collapsible);
      collapsible.bulmaCollapsible('collapse');
    });
  }
}

$(() => {
  navbarMenu();
  sidebarAccordion();
  $('img')
    .wrap('<span style="display:inline-block"></span>')
    .css('display', 'block')
    .parent()
    .zoom({'magnify':0.4, 'on':'click'});
  $('.navbar-logo').trigger('zoom.destroy');
  $('.no-zoom').trigger('zoom.destroy');
});

function updateTab() {
  let urlParams = new URLSearchParams(window.location.search);
  let id = urlParams.get("platform");
  selectTab(id);
}

function selectTab(id) {
  // if no value was given, let's take the first panel
  if (!id) {
    el = document.querySelectorAll(".tablinks")[0];
    if (el.dataset.hash) id = el.dataset.hash;
    if (!id) return;
  }

  // remove the active class from the tabs,
  // and add it back to the one the user selected
  document.querySelectorAll(".tablinks").forEach(el => {
    var match = false;
    if (el.hash) 
      match = el.hash === id;
    else if (el.dataset.hash) {
      match = el.dataset.hash === id;
    }
    el.classList[match ? 'add' : 'remove']('active');
  });
  
  // now hide all the panels, then filter to
  // the one we're interested in, and show it
  document.querySelectorAll(".tabcontent").forEach(el => {
    var match = el.classList.contains(id);
    el.style.display = match ? 'block' : 'none';
  });
}

// Check for back button presses to update tabs
window.addEventListener('popstate', updateTab);
// Update selected tab
updateTab();
