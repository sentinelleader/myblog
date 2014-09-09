//= require theme/modernizr
//= require theme/jquery-1.9.1
//= require theme/jquery.carousello
//= require theme/jquery.flexslider
//= require theme/jquery.isotope
//= require theme/jquery.magnific-popup
//= require theme/jquery.parallax
//= require theme/jquery.simpleplaceholder
//= require theme/jquery.smoothScroll
//= require theme/jquery.themepunch.plugins.min
//= require theme/jquery.themepunch.revolution.min
//= require theme/jquery.horparallax
//= require theme/plugins
//= require theme/waypoints.min
//= require theme/us.widgets
//= require theme/jquery.lazyyoutube
//= require plugins/gist-embed

$(function() {

  var url = location.pathname;
  if (window.location.href == "http://noconformity.com.s3-website-us-west-1.amazonaws.com/"){
    window.location.href="http://noconformity.com";
  }
  $(".archive-nav").change(function() {
    if(this.value!=0){
      document.location.href=this.value;
    }
  });
  $(".flexslider").flexslider({
    controlsContainer: ".flexslider",
    directionalNav: true,
    controlNav: false,
    smoothHeight: true,
    start: function() {
      $(".flexslider").removeClass("flex-loading");
    }
  });

});
