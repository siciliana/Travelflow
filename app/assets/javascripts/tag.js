


$(document).ready(function(){

  $('.add_tag').on('click',function(event){
    console.log(event)
      event.preventDefault()



    // var input = $("<input type= 'text' class ='tag'>")

    $('.add_tag').append("<%=j render partial: tag' %>")

      // "<input class='tag_name' type='text' name='tag[name]'>")

  // var tag = $(this)
  //   console.log(this)
// })

//   $('.form').on('click', function(response){
//     console.log(response)



  })

})


