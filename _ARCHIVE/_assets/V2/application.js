// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
//= require V2/javascript/modernizr
//= require V2/javascript/jquery-1.9.1
//= require V2/javascript/jquery.carousello
//= require V2/javascript/jquery.flexslider
//= require V2/javascript/jquery.isotope
//= require V2/javascript/jquery.magnific-popup
//= require V2/javascript/jquery.parallax
//= require V2/javascript/jquery.simpleplaceholder
//= require V2/javascript/jquery.smoothScroll
//= require V2/javascript/jquery.themepunch.plugins.min
//= require V2/javascript/jquery.themepunch.revolution.min
//= require V2/javascript/jquery.horparallax
//= require V2/javascript/plugins
//= require V2/javascript/waypoints.min
//= require V2/javascript/us.widgets
//= require V2/javascript/jquery.lazyyoutube
//
// ---------------------------------------------------------------------------

$(function() {
  // -------------------------------------------------------------------------
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
  // ------------------------------------------------------------------------
});
