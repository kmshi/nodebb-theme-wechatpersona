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
			user.picture = "https://avatars3.githubusercontent.com/u/667828?v=3&s=40";
			//user.gravatarpicture = "https://avatars3.githubusercontent.com/u/667828?v=3&s=40";
		});
		callback(null, params);
	};

	theme.usersGet = function(users, callback) {
		users.forEach(function(user, index){
			user.picture = "https://avatars3.githubusercontent.com/u/667828?v=3&s=40";
			//user.gravatarpicture = "https://avatars3.githubusercontent.com/u/667828?v=3&s=40";
		});
		callback(null, users);
	};


	module.exports = theme;

}(module));