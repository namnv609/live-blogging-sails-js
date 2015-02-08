/************************************
* MyServices.js
*
* Author: NamNV609
* Email: namnv609@gmail.com
*************************************/

/**
* Custom model validation messages
*
* @param model object Model name
* @param validationErrors object Validation errors
* @return array Model validation errors
*/
exports.modelValidation = function(model, validationErrors) {
    var _validationErrors = {
        required: '%s is required field',
        email: '%s is invalid email',
        uniqEmail: '%s is uniquess'
    };
    var _errors = [];
    var labelList = model.labels;
    var util = require('util');

    _.forEach(validationErrors, function(errors, fieldName) {
        _.forEach(errors, function(error) {
            _errors.push(util.format(_validationErrors[error['rule']], labelList[fieldName]));
        });
    });

    return _errors;
}
