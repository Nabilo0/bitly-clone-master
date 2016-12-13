
$(document).ready(function(){

  $('.shorturl').click(function(){
  	alert("clicked");
    // $('#texter').load($(this));
    var click_count = $("#texter").text()
    $('#texter').html(parseInt(click_count) + 1)
                                  });
    
    $("#delete").click(function(){
    alert("has Been Deleted all Urls");
                                  });
       
        $('div').draggable();
    

 $("#view").click(function(){
        $.getJSON("/", function(result){
            $.each(result, function(i, field){
                $("#q").append(field + " ");
            });
        });
    });


function ajaxFunction(){
      var ajaxRequest;  // The variable that makes Ajax possible!

      try{
         // Opera 8.0+, Firefox, Safari 
         ajaxRequest = new XMLHttpRequest();
        }catch (e){

         // Internet Explorer Browsers
         try{
            ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
         }catch (e) {
            try{
               ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
            }catch (e){

               // Something went wrong
               alert("Your browser broke!");
               return false;
            }
         }
      }
   }



});  

// $(document).ready(function(){

//    $.ajax({
//        type: 'POST',
//        url: '/url',
//        data:  $('form').serialize,
//        dataType: 'json',
//       success: function(data){
//         // success logic
// },
  
//       });
//    });
       



// $(document).load( "index.html", function() {
//   alert( "Load was performed." );
// });
 
// 
//  $(document).ready(function(){
//     $("url.click_count").click(function(){
//         $("index.html").load("demo_test.txt", function(responseTxt, statusTxt, xhr){
//             if(statusTxt == "success")
//                 alert("External content loaded successfully!");
//             if(statusTxt == "error")
//                 alert("Error: " + xhr.status + ": " + xhr.statusText);
//         });
//     });
// });


// 	<script>
// $(document).ready(function(){
// $.ajax({
//     url: 'url',
//     method: 'post',
//     success: function (data) {
//         console.log(data);
//     }
// });
// });
// </script>
 
// <script>
// $(document).ready(function(){
//     $("url.click_count").click(function(){
//         $("table").load("index.xml",function(response, status){
//             if (status == "success"){
//                 $("div").html("<ol></ol>");
//                 $(response).find("click_count").each(function(){
//                     var item_text = $(this).integer();
//                     $('<li></li>').html(item_text).appendTo('ol');
//                 });
//                 alert("There are " + $(response).find("cd").length + " CDs")
//             }
//         });
//     });
// });
// function loaddata()
// {
//  var name=document.getElementById( "username" );
	
//  if(name)
//  {
//   $.ajax({
//   type: 'post',
//   url: 'loaddata.php',
//   data: {
//    user_name:name,
//   },
//   success: function (response) {
//    // We get the element having id of display_info and put the response inside it
//    $( '#display_info' ).html(response);
//   }
//   });
//  }
	
//  else
//  {
//   $( '#display_info' ).html("Please Enter Some Words");
//  }
// }

// $( "#texter" ).load( "index.html" );
// $("#step1").click(function() {

//     $.ajax({
//       type: "GET",
//       url: "http://127.0.0.1:9393/",
//             dataType: "text",
//       success : function(data) {
//             $("#texter").html(data);
//             //step1j = data;
//             //alert(step1j); // WORKS
//             //return step1j;
//       }
// });
// });


//      $.ajax({
//     url: '/url',
//     dataType: 'json',
//     type: 'post',
//     contentType: 'application/json',
//     data: JSON.stringify( { "first-name": $('#first-name').val(), "last-name": $('#last-name').val() } ),
//     processData: false,
//     success: function( data, textStatus, jQxhr ){
//         $('#response pre').html( JSON.stringify( data ) );
//     },
//     error: function( jqXhr, textStatus, errorThrown ){
//         console.log( errorThrown );
//     }