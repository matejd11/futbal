Schemas.SportMatch = new SimpleSchema
    _id:
        type: Mongo.ObjectId
        defaultValue: new Meteor.Collection.ObjectID()
    teamA:
        type: Object
    "teamA.name":
        type: String
    "teamA.members":
        type: [Mongo.ObjectId]
    teamB:
        type: Object
    "teamB.name":
        type: String
    "teamB.members":
        type: [Mongo.ObjectId]
    date:
        type: Date
    scoreA:
        type: Number
    scoreB:
        type: Number

@SportMatch = new Mongo.Collection "sportmatch"

SportMatch.attachSchema(Schemas.SportMatech)
###
Players.helpers
    "fullName": ->
        ((@firstName) ? "")  + ' ' + ((@lastName) ? "")
###
