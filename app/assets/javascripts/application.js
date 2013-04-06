//= require jquery
//= require jquery_ujs
//= require jquery-fileupload
//= require jquery.validate
//= require social-share-button
//= require ckeditor-jquery
//= require best_in_place 
// require turbolinks

$(function(){
	if($(".alert").html() != '')
	{
		$(".alert").css('display', 'block');
	}

	$('.best_in_place').best_in_place()
})