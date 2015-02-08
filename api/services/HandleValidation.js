exports.handleValidation = function(validationErrors) {
	var errors = [];
	_.forEach(validationErrors, function(error) {
		// console.log(error);
		errors.push(error[0]['message']);
	});

	return errors;
}