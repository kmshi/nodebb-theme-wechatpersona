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
			var ua = req.headers['user-agent']||'';
			res.locals.config = res.locals.config ||{};
			res.locals.config.isAndroid = (ua.match(/Android/i) != null);
			res.locals.config.isIos = (ua.match(/iPhone|iPad|iPod/i) != null);
			res.locals.config.isWeChat = (ua.match(/MicroMessenger/i) != null);
			res.locals.config.isDesktop = (!res.locals.config.isAndroid && !res.locals.config.isIos);
			next();
		});

		callback(null,params);
	};


	module.exports = theme;

}(module));