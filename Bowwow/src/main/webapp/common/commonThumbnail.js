function setThumbnail(event){
	var reader = new FileReader(); 
	
	reader.onload = function(event) { 
		var img = document.createElement("img");
		var imgTag = document.querySelector("#thumbnailImage");
		if(imgTag === null) {
			document.querySelector("div#thumb_container").appendChild(img);
			img.setAttribute("id", "thumbnailImage");
			img.setAttribute("style", "height: 200px;");
		} else {
			img = imgTag;
		}
		img.setAttribute("src", event.target.result); 
		console.log(img);
	}; 
	reader.readAsDataURL(event.target.files[0]); 
}