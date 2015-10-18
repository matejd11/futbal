Meteor.startup ->
    if Meteor.users.find().count() is 0
        id = Accounts.createUser
            email: 'b@b.b'
            password: 'aaaaaa'
            profile: name: 'matej'
            username: "matej"
        Roles.addUsersToRoles id, 'admin'
        id = Accounts.createUser
            email: 'a@a.a'
            password: 'aaaaaa'
            profile: name: 'cyril'
            username: "cyril"
        Roles.addUsersToRoles id, 'admin'

    if Players.find().count() is 0
        Players.insert _id:new Meteor.Collection.ObjectID()._str, firstName:"x", lastName:"x", birth:new Date(1996, 0, 0), nick:"cyril"

    if Teams.find().count() is 0
        Teams.insert _id:new Meteor.Collection.ObjectID()._str, name:"Domáci", members: []
        Teams.insert _id:new Meteor.Collection.ObjectID()._str, name:"Hostia", members: []
        
    Players._ensureIndex({nick: 1}, {unique: 1, sparse: 1, name:"uk_nick"})
