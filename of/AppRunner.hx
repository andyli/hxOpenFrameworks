package of;

import cpp.Lib;

class AppRunner 
{
	static public function runApp(app:BaseApp):Void {
		_ofRunApp(app.__handle);
		currentApp = app;
	}
	
	static public function setupOpenGL(window:AppGlutWindow, w:Int, h:Int, screenMode:Int):Void {
		_ofSetupOpenGL(window.__handle, w, h, screenMode);
		currentWindow = window;
	}
	
	static public var currentApp(default, null):BaseApp;
	static public var currentWindow(default, null):AppGlutWindow;
	
	static var _ofRunApp = Lib.load("hxOpenFrameworks", "_ofRunApp", 1);
	static var _ofSetupOpenGL = Lib.load("hxOpenFrameworks", "_ofSetupOpenGL", 4);
}