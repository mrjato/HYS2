function listEvent(login, userCity, done, fail, always) {
	done = typeof done !== 'undefined' ? done : function() {
	};
	fail = typeof fail !== 'undefined' ? fail : function() {
	};
	always = typeof always !== 'undefined' ? always : function() {
	};

	$.ajax({
		url : 'rest/event/' + login + '/' + userCity,
		type : 'GET'
	}).done(done).fail(fail).always(always);
}


function joinEvent(login, eventId, done, fail, always) {
	done = typeof done !== 'undefined' ? done : function() {
	};
	fail = typeof fail !== 'undefined' ? fail : function() {
	};
	always = typeof always !== 'undefined' ? always : function() {
	};

	$.ajax({
		url : 'rest/event/' + eventId + '/' + login,
		type : 'POST'
	}).done(done).fail(fail).always(always);
}
