/**
* User.js
*
* @description :: TODO: You might write a short summary of how this model works and what it represents here.
* @docs        :: http://sailsjs.org/#!documentation/models
*/

module.exports = {
    types: {
        rePassword: function(repassword) {
            return repassword === this.password;
        }
    },
    attributes: {
        name : {
            type: 'string',
            required: true
        },
        email : {
            type: 'string',
            required: true,
            email: true
        },
        password : {
            type: 'string',
            minLength: 6,
            maxLength: 32
        },
        repassword: {
            type: 'string',
            rePassword: true
        }
    },
    labels: {
        name: 'Name',
        password: 'Password',
        repassword: 'Re-Password',
        email: 'Email'
    },
    beforeUpdate: function(values, next) {
        var md5 = require('MD5');

        if (values.password && values.repassword) {
            values.password = md5(values.password);
        } else {
            delete values.password;
        }

        delete values.repassword;
        next();
    }
};
