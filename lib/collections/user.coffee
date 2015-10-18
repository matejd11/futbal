###
Schemas.UserProfile = new SimpleSchema(
    owned:
        type: [String]
        max: 50)
###

@Schemas.User = new SimpleSchema
    username:
        type: String
        optional: true
        regEx: /^[a-z0-9A-Z_]{3,15}$/
    emails:
        type: [ Object ]
        optional: true
    'emails.$.address':
        type: String
        regEx: SimpleSchema.RegEx.Email
    'emails.$.verified': type: Boolean
    createdAt:
        type: Date
    services:
        type: Object
        optional: true
        blackbox: true
    roles:
        type: Object
        optional: true
        blackbox: true
    roles:
        type: [String]
        optional: true

Meteor.users.attachSchema Schemas.User
