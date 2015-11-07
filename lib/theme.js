(function(module) {
	"use strict";

	var theme = {},
		meta = module.parent.require('./meta'),
		path = module.parent.require('path'),
		nconf = module.parent.require('nconf');


	theme.userCreate = function(userData, callback) {
		//TODO:use node-avatar-generator to generate an random avatar,store it into qiniu, and save the url
		//userData.picture = "";
		//userData.gravatarpicture = "";
		callback(null, userData);
	};

	theme.userListGet = function(params, callback) {
		params.users.forEach(function(user, index){
			if (user.picture){
				user.picture = user.picture.replace("s.gravatar.com","cn.gravatar.com");
				user.gravatarpicture = user.picture;
			}
		});
		callback(null, params);
	};

	theme.usersGet = function(users, callback) {
		users.forEach(function(user, index){
			if (user.picture){
				user.picture = user.picture.replace("s.gravatar.com","cn.gravatar.com");
				user.gravatarpicture = user.picture;
			}
		});
		callback(null, users);
	};

	theme.checkDeviceType = function(params, callback) {
		var router = params.router,
			middleware = params.middleware;

		router.use('/',function(req, res, next){
			theme.ua = req.headers['user-agent'];
			next();
		});

		callback(null,params);
	};

	theme.configGet = function(config,callback){
		config.isAndroid = (theme.ua.match(/Android/i) != null);
		config.isIos = (theme.ua.match(/iPhone|iPad|iPod/i) != null);
		config.isWeChat = (theme.ua.match(/MicroMessenger/i) != null);
		config.isDesktop = (!config.isAndroid && !config.isIos);
		callback(null, config);
	};


	module.exports = theme;

}(module));