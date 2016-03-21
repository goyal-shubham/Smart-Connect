
	var id =1; 
$(document).ready(function(){


 $('.column1').click(function(){
	
			$('#pop_background').fadeIn();
			$('#Geo_popup').fadeIn();
			return false;
	});
	$('.column2').click(function(){
	
			$('#pop_background').fadeIn();
			$('#Smart_popup').fadeIn();
			return false;
	});
	$('#pop_background').click(function(){
	
			$('#pop_background').fadeOut();
			$('#Geo_popup').fadeOut();
			$('#Smart_popup').fadeOut();
			
			//document.getElementById("SignUpForm").reset();
			//document.getElementById("loginform").reset();
			return false;
	});
	
	$('.GeoGo').click(function(){
	
	var city= document.getElementById("qualificationS").value;
	var Major= document.getElementById("qualificationM").value;
	

		if (city == 1)
		{   
				if(Major == 1)
				{ id=1; }
		}
		if (city == 2)
		{
				if(Major == 2)
				{ id=2;
				
				}
		}
	
	});
	 if(id==1){
  
	$('#KG').fadeIn();
	$('#RM').fadeIn();
  }
 if(id==2){
  
	$('#KS').fadeIn();
	$('#SG').fadeIn();
  }
 
	
});

$(document).on("click",".friend-grid", function (e) {
  e.preventdefault;
  $(this).parents('.friends-grids').fadeOut(300);
});
$(document).ready(function(){
  if(id==1){
  
	$('#KG').fadeIn();
	$('#RM').fadeIn();
  }
 if(id==2){
  
	$('#KS').fadeIn();
	$('#SG').fadeIn();
  }
 
 
});


