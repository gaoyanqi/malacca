(function() {
	var Malacca = {};
	var Malacca.upload = {};
	
	// dom collection
	var _DROP_AREA = null;
	var _RESULT_TABLE_BODY = null;
	
	var _data_textareas = null;
	var _data_previewareas = null;
	
	Malacca.upload.init = function() {
		_DROP_AREA = window;
		_RESULT_TABLE_BODY = document.getElementById("result_body");
		
		_DROP_AREA.addEventListener("dragenter", Malacca.upload._dragenter, false);
		_DROP_AREA.addEventListener("dragover", Malacca.upload._dragover, false);
		_DROP_AREA.addEventListener("drop", Malacca.upload._drop, false);
	};
	
	Malacca.upload._dragenter = function(e) {
		e.stopPropagation();
		e.preventDefault();
	};
	
	Malacca.upload._dragover = function(e) {
		e.stopPropagation();
		e.preventDefault();
	};
	
	Malacca.upload._drop = function(e) {
		Malacca.upload.handleFiles(e);
		e.stopPropagation();
		e.preventDefault();
	};
	
	Malacca.upload.handleFiles = function(e) {
		var dt = e.dataTransfer;
		var files = dt.files;
		var _html = [];
		var html = "";
		for(var i = 0, l = files.length ; i < l ; i++) {
			html = '<tr>';
			html += '<td>';
			html += '<strong class="break_all">' + files[i].fileName + '</strong>';
			html += '</td>';
			html += '<td>' + Math.ceil(files[i].size/1024) + ' KB</td>';
			html += '<td><textarea class="result_area" onfocus="this.select()"></textarea></td>';
			html += '</tr>';
			_html.push(html);
		}
		
		_RESULT_TABLE_BODY.innerHTML = _html.join("");
		
		_data_textareas = document.getElementsByClassName("result_area");
		_data_previewareas = document.getElementsByClassName("preview_area");
		
		Malacca.upload.openFiles(files);
	};
	
	Malacca.upload.openFiles = function(/*@type {Files}*/files) {
		for(var i = 0, l = files.length ; i < l ; i++) {
			Malacca.upload.readFile(files[i], i);
		}
	};
	
	Malacca.upload.readFile = function(/*@type {Files}*/ file, /*@type {int}*/index) {
		var reader = new FileReader();
		
		reader.onprogress = function(/*@type {ProgressEvent}*/e) {
			if(e.lengthComputable) {
				_data_previewareas[index].innerHTML = '<span class="loading">' + (Math.ceil(100 * e.loaded/file.size)) + '%</span>';
			}
		};
		
		reader.onloadstart = function(/*@type {ProgressEvent}*/e) {
			_data_previewareas[index].innerHTMl = '<span class="loading"></span>';
		};
		
		reader.onload = function(/*@type {ProgressEvent}*/e) {
			var _result = e.target.result;
			_data_textareas[index].value = _result;
			Malacca.upload.previewFile(_result, index);
		};
		
		reader.readAsDataURL(file);
	};
	
	Malacca.previewFile = function(/*@type {string}*/ result, /*@type {int}*/ index) {
		var _type = result.substr(5, result.indexOf(";") - 5);
		var _html = "Can't Preview this file";
		var _haveSrc = false;
		switch(_type) {
			case "image/jpeg":
			case "image/png":
			case "image/git":
				_html = '<img alt=""/>';
				_haveSrc = true;
				break;
			case "audio/mp3":
				_html = '<audio controls="controls"></audio>';
				_haveSrc = true;
				break;
			default:
				break;
		};
		
		_data_previewareas[index].innerHTML = _html;
		if(_haveSrc) {
			_data_previewarea[index].children[0].src = result;
		}
	};
	
	window.addEventListener("load", Malacca.upload.init, false);
})();