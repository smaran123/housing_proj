// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require gritter
//= require bootstrap-sprockets
//= require jquery_nested_form
//= require underscore
//= require gmaps/google
//= require turbolinks
//= require_tree .

function hide_popup(){
    var popups = ["", "2", "3", "4"]
    for(i=0; i<popups.length; i++){
        if(jQuery('#popup_box'+popups[i])){
            jQuery('#popup_body'+popups[i]).html("");
            jQuery('#popup_box'+popups[i]).hide();
        }
    }

    //    if(jQuery('#popup_box2')){
    //        jQuery('#popup_body2').html("");
    //        jQuery('#popup_box2').hide();
    //    }
    //    if(jQuery('#popup_box3')){
    //        jQuery('#popup_body3').html("");
    //        jQuery('#popup_box3').hide();
    //    }
    
    if(jQuery('#overlay')){
        jQuery('#overlay').hide();
    }
}


function signup(){
    jQuery.ajax({
        url: "/home/requirement",
        success: function(data) {
            jQuery('#popup_body').html(data);
            jQuery('#overlay').show();
            jQuery('#popup_box').show();
        }
    });
}