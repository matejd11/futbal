Meteor.startup ->
    if Meteor.users.find().count() is 0
        id = Accounts.createUser
            email: 'mdujava@gmail.com'
            password: 'aaabbb'
            profile: name: 'matej'
            username: "matej"
        Roles.addUsersToRoles id, 'admin'
        id = Accounts.createUser
            email: 'dujavac@gmail.com'
            password: 'aaabbb'
            profile: name: 'cyril'
            username: "cyril"
        Roles.addUsersToRoles id, 'admin'