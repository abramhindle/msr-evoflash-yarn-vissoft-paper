

//left arrow  	37
//up arrow 	38
//right arrow 	39
//down arrow 	40
//spacebar 32
//enter 13
//backspace  	8

document.onkeypress=changeHREF;

function nextPage() {
	var path = location.href.substring(0,location.href.lastIndexOf("/")+1);
	var file = location.href.substring(location.href.lastIndexOf("/")+1);
	var pagen = file.substring(0,file.indexOf("."));
	var ext = file.substring(file.indexOf("."));
	pagen = parseInt(pagen) + 1;
	if (pagen > 17) {
		pagen = 17;
	}
	location.href = path + pagen + ext;
}
function previousPage() {
	var path = location.href.substring(0,location.href.lastIndexOf("/")+1);
	var file = location.href.substring(location.href.lastIndexOf("/")+1);
	var pagen = file.substring(0,file.indexOf("."));
	var ext = file.substring(file.indexOf("."));
	pagen = parseInt(pagen) - 1;
	if (pagen < 1) {
		pagen = 1;
	}
	location.href = path + pagen + ext;

}
function changeHREF(ev){
	ev=ev||event;
	if(ev.keyCode == 13 || ev.keyCode==27 || ev.keycode == 40 || ev.keyCode == 32 || ev.keyCode == 39){
		nextPage();
		return false
	}
	if(ev.keycode == 37 || ev.keyCode == 38 || ev.keyCode == 8){
		previousPage();
		return false
	}

}
