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
//= require jsapi
//= require chartkick
//= require dataTables/jquery.dataTables
//= require foundation
//= require pickadate/picker
//= require pickadate/picker.date
//= require pickadate/picker.time
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation();
	 $('#example').dataTable();
     $('#compra_tarje_date').pickadate();
     $('#compra_tarje_date_compra').pickadate();
     $('#sugerencium_date').pickadate();
});


    