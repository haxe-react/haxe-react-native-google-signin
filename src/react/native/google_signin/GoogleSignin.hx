package react.native.google_signin;

import js.Promise;

@:jsRequire('react-native-google-signin', 'GoogleSignin')
extern class GoogleSignin {
	static function hasPlayServices(option:{autoResolve:Bool}):Promise<Bool>;
	static function configure(option:Dynamic):Promise<Bool>;
	static function currentUserAsync():Promise<User>;
	static function currentUser():User;
	static function signIn():Promise<User>;
	static function getAccessToken():Promise<String>;
	static function signOut():Promise<Nothing>;
}

typedef User = {
	id:String,
	name:String,
	email:String,
	photo:String,
	idToken:String,
	serverAuthCode:String,
	scopes:Array<String>,
	accessToken:String,
}