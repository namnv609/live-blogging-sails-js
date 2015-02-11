/**
* Settings.js
*
* @description :: TODO: You might write a short summary of how this model works and what it represents here.
* @docs        :: http://sailsjs.org/#!documentation/models
*/

module.exports = {

    attributes: {
        siteName: {
            type: 'string',
            required: true
        },
        siteDescription: {
            type: 'string',
            required: true
        },
        siteKeyword: {
            type: 'string',
            required: true
        },
        siteFooter: {
            type: 'string',
            required: true
        }
    },
    labels: {
        siteName: 'Site name',
        siteDescription: 'Site description',
        siteKeyword: 'Site keyword',
        siteFooter: 'Site footer'
    }
};

