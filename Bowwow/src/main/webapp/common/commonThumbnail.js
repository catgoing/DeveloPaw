function setThumbnail(event){
	var reader = new FileReader();
	
	reader.onload = function(event) { 
		var img = document.createElement("img");
		var imgTag = document.querySelector("#thumbnailImage");
		if(imgTag === null) {
			document.querySelector("div#thumb_container").appendChild(img);
			
			img.setAttribute("id", "thumbnailImage");
			img.setAttribute("style", "width:280px; height: 200px; margin-top:10px;");
			console.log("imgDiv Creating test", img);
		} else {
			img = imgTag;
		}
		img.setAttribute("src", event.target.result); 
		console.log(img);
	}; 
	reader.readAsDataURL(event.target.files[0]); 
}
