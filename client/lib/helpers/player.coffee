Template.players.helpers
    data: -> 
        return Players.find {}, lastName: 1, firstName:1

Template.players.events
    "click .delete": ->
        if confirm("Naozaj chcete vymazať?")
            Meteor.call 'removePlayer', this._id
