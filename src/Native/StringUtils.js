var _panosoft$elm_string_utils$Native_StringUtils = function() {
	function isString(v) {
        return typeof v == 'string' || v instanceof String
    }

    function nopToString(v) {
        return v;
    }
	return {
        isString: isString,
        nopToString : nopToString
    }
}();
