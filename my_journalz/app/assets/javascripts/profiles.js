function initializePostOptions(){
	//hide all post forms
	$("form").hide()
	$('#post-option').on('select', showPostOption)

}

function showPostOption(event){
	//which post option to show?
	//hide all post option forms
	// show the form for the selected option
	$('select').on("change", function( event ) {
  	  $("form").hide()
	  var checked = $("select :checked")
	  console.log( checked.val() )
	  if( checked.val() == "giphy"){
	    $(".giphy").show()
	  }
	  if( checked.val() == "text"){
	    $(".text").show()
	  }
	})
}