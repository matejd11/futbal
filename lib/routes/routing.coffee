Router.plugin 'auth',
	authenticate:
		home: 'home',
		layout: 'layout',
		logout: 'logout',
		route: 'login',
	authorize:
		allow: ->
			return true if Meteor.user()
		template: 'notAuthorized'
	except: ['enroll', 'forgotPassword', 'home', 'login', 'reset', 'verify', 'preview'],
    noAuth:
        template: 'login'

Router.configure
	title: 'Statistics'
	notFoundTemplate: 'NotFound'
	layoutTemplate: 'layout'
