/**
 * 模板解析
 * @author peter
 * @email gaoyanqi@gmail.com
 */
(function() {
	var T = function(tpl, data) {
		var fn = !/[^\w-:.]/.test(tpl) ?
			cache[tpl] = cache[tpl] || (function()(
				var ele = document.getElementById(tpl);
				var html = '';
				
				if(ele && /^(textarea|input)$/i.test(ele.tagName)) {
					html = ele.value;
				} else {
					html = ele.innerHTML;
				}
				return compile(html);
			))() :
			compile(tpl);
			
		return isObject(data) ? fn(data) : fn;
	}
	
	var compile = function(str) {
		return new Function("_template_object",
			"var _template_fun_array=[];with(_template_object){_template_fun_array.push('" + analysisStr(str) + "');}return _template_fun_array.join('')"
		);
	}
	
	var analysisStr = function(str) {
		var _left_ = T.LEFT_DELIMITER;
		var _right_ = T.RIGHT_DELIMITER;
		
		var _left = T._encodeReg(_left_);
		var _right = T._encodeReg(_right_);
		
		str = String(str)
			.replace(new RegExp("(" + _left + "[^" + _right + "]*)//.*\n", "g"), "$1")
			.replace(new RegExp("<!--.*?-->", "g"), "")
			.replace(new RegExp(_left + "\\*.*?\\*" + _right, "g"), "")
			.replace(new RegExp("[\\r\\t\\n]", "g"), "")
			.replace(new RegExp(_left + "(?:(?!" + _right + ")[\\s\\S])*" + _right + "|((?:(?!" + _left + ")[\\s\\S])+)", "g"), function(item, $1) {
				var str = "";
				if($1) {
					str = $1.replace(/\\/, "&#92;").replace(/'/g, '&#39;');
					while(/<[^<]*?&#39;[^<]*?>/g.test(str)) {
						str = str.replace(/(<[^<]*?)&#39;([^<]*?>)/g, "$1\r$2");
					}
				} else {
					str = item;
				}
				return str;
			})
			.replace(new RegExp("(" + _left + ":?[hvu]?[\\s]*?=[\\s]*?[^;|" + _right + "]*?);[\\s]*?" + _right, "g"), "$1" + _right)
			.replace(new RegExp("(" + _left + "[\\s]*?var[\\s]*?.*?[\\s]*?[^;])[\\s]*?" + _right, "g"), "$1;" + _right_)
	}
})();