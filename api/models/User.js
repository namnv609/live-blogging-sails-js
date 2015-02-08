/**
* User.js
*
* @description :: TODO: You might write a short summary of how this model works and what it represents here.
* @docs        :: http://sailsjs.org/#!documentation/models
*/

module.exports = {
    types: {
        uniqEmail: function(email) {
            
        }
    },
    attributes: {
        name : {
            type: 'string',
            required: true
        },

        password : {
            type: 'string',
            required: true
        },

        email : {
            type: 'string',
            required: true,
            // email: true
        }
    },
    labels: {
        name: 'Name',
        password: 'Password',
        email: 'Email'
    }
};
