Players.allow
	insert: (userId, doc) ->
		userId
	update: (userId, docs, fields, modifier) ->
		_.all docs, (doc) ->
			userId
	remove: (userId, docs) ->
		_.all docs, (doc) ->
			userId

Meteor.publish "player", (param)->
	if typeof param is 'boolean'
		if param is true
			return Players.find({active: true})
		else
			return Players.find()
	else if typeof param is not null
		return Players.find({_id: param})
	else 
		return Players.find()

Meteor.publish "freePlayer", ->
	return Players.find()#findFreePlayers()
