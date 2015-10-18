@Schemas.Team = new SimpleSchema
	_id:
		type: Mongo.ObjectId,
		defaultValue: new Meteor.Collection.ObjectID()
	name:
		type: String
		max: 50
	members:
		type: [Mongo.ObjectId]

@Teams = new Mongo.Collection "team"

Teams.attachSchema(Schemas.Team)

Teams.helpers
	"players": ->
		attr = this.members
		if attr != undefined
			return Players.find({_id: {$in: attr}})
		attr = []
		return Players.find({_id: {$in: attr}})
#  "clone" ->

