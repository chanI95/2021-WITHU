/**
 * 
 */

$("#img__preview").on("change", function(e){
	var f = e.target.files[0];
	
	if(!f.type.match('image*')){
		$("#img__preview").val("");
		alert('이미지만 첨부할 수 있습니다.');
		
	}
	
	var reader = new FileReader();
	reader.onload = function(e) {
		$("#img__wrap").attr("src", e.target.result);
	}
	
	reader.readAsDataURL(f);
});