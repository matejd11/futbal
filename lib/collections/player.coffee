@Schemas.Player = new SimpleSchema
	_id:
		type: Mongo.ObjectId,
		defaultValue: new Meteor.Collection.ObjectID()
	firstName:
		type: String
		label: "First name"
		max: 50
	lastName:
		type: String
		label: "Last name"
		max: 50
		optional: true
	birth:
		type: Date
		label: "Birth date"
		max: 50
		optional: true
	nick:
		type: String
		max: 50
	active:
		type: Boolean,
		defaultValue: true

@Players = new Mongo.Collection "player"

Players.attachSchema(Schemas.Player)

Players.helpers
	"fullName": ->
		((@firstName) ? "")  + ' ' + ((@lastName) ? "")
