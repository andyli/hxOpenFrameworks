package of;

import cpp.Lib;

class AppRunner 
{
	static public function runApp(app:BaseApp):Void {
		_ofRunApp(app.__handle);
		_appPtr = app;
	}
	
	static public function setupOpenGL(window:AppGlutWindow, w:Int, h:Int, screenMode:Int):Void {
		_ofSetupOpenGL(window.__handle, w, h, screenMode);
		_windowPtr = window;
	}
	
	static public function getAppPtr():BaseApp {
		return _appPtr;
	}
	
	static public function getWindowPtr():AppGlutWindow {
		return _windowPtr;
	}
	
	//-------------------------- time
	
	static public function getFrameRate():Float{
		return _ofGetFrameRate();
	}
	
	static public function getFrameNum():Int{
		return _ofGetFrameNum();
	}
	
	static public function setFrameRate(targetRate:Int):Void{
		_ofSetFrameRate(targetRate);
	}
	
	static public function sleepMillis(millis:Int):Void{
		_ofSleepMillis(millis);
	}
	
	static public function getLastFrameTime():Float{
		return _ofGetLastFrameTime();
	}

	//-------------------------- cursor
	
	static public function hideCursor():Void{
		_ofHideCursor();
	}
	
	static public function showCursor():Void{
		_ofShowCursor();
	}
	//-------------------------- window / screen
	
	static public function getWindowPositionX():Int{
		return _ofGetWindowPositionX();
	}
	
	static public function getWindowPositionY():Int{
		return _ofGetWindowPositionY();
	}
	
	static public function getScreenWidth():Int{
		return _ofGetScreenWidth();
	}
	
	static public function getScreenHeight():Int{
		return _ofGetScreenHeight();
	}
	
	static public function getWindowMode():Int{
		return _ofGetWindowMode();
	}
	
	static public function getWidth():Int{
		return _ofGetWidth();
	}
	
	static public function getHeight():Int{
		return _ofGetHeight();
	}

	
	static public function setWindowPosition(x:Int, y:Int):Void{
		_ofSetWindowPosition(x, y);
	}
	
	static public function setWindowShape(width:Int, height:Int):Void{
		_ofSetWindowShape(width, height);
	}
	
	static public function setWindowTitle(title:String):Void{
		_ofSetWindowTitle(title);
	}
	
	static public function enableSetupScreen():Void{
		_ofEnableSetupScreen();
	}
	
	static public function disableSetupScreen():Void{
		_ofDisableSetupScreen();
	}
	
	static public function setFullscreen(fullscreen:Bool):Void{
		_ofSetFullscreen(fullscreen);
	}
	
	static public function toggleFullscreen():Void{
		_ofToggleFullscreen();
	}
	//-------------------------- sync
	
	static public function setVerticalSync(bSync:Bool):Void{
		_ofSetVerticalSync(bSync);
	}
	
	static var _appPtr:BaseApp;
	static var _windowPtr:AppGlutWindow;
	
	static var _ofRunApp = Lib.load("hxOpenFrameworks", "_ofRunApp", 1);
	static var _ofSetupOpenGL = Lib.load("hxOpenFrameworks", "_ofSetupOpenGL", 4);

	static var _ofGetFrameRate = Lib.load("hxOpenFrameworks", "_ofGetFrameRate", 0);
	static var _ofGetFrameNum = Lib.load("hxOpenFrameworks", "_ofGetFrameNum", 0);
	static var _ofSetFrameRate = Lib.load("hxOpenFrameworks", "_ofSetFrameRate", 1);
	static var _ofSleepMillis = Lib.load("hxOpenFrameworks", "_ofSleepMillis", 1);
	static var _ofGetLastFrameTime = Lib.load("hxOpenFrameworks", "_ofGetLastFrameTime", 0);


	static var _ofHideCursor = Lib.load("hxOpenFrameworks", "_ofHideCursor", 0);
	static var _ofShowCursor = Lib.load("hxOpenFrameworks", "_ofShowCursor", 0);

	static var _ofGetWindowPositionX = Lib.load("hxOpenFrameworks", "_ofGetWindowPositionX", 0);
	static var _ofGetWindowPositionY = Lib.load("hxOpenFrameworks", "_ofGetWindowPositionY", 0);
	static var _ofGetScreenWidth = Lib.load("hxOpenFrameworks", "_ofGetScreenWidth", 0);
	static var _ofGetScreenHeight = Lib.load("hxOpenFrameworks", "_ofGetScreenHeight", 0);
	static var _ofGetWindowMode = Lib.load("hxOpenFrameworks", "_ofGetWindowMode", 0);
	static var _ofGetWidth = Lib.load("hxOpenFrameworks", "_ofGetWidth", 0);
	static var _ofGetHeight = Lib.load("hxOpenFrameworks", "_ofGetHeight", 0);

	static var _ofSetWindowPosition = Lib.load("hxOpenFrameworks", "_ofSetWindowPosition", 2);
	static var _ofSetWindowShape = Lib.load("hxOpenFrameworks", "_ofSetWindowShape", 2);
	static var _ofSetWindowTitle = Lib.load("hxOpenFrameworks", "_ofSetWindowTitle", 1);
	static var _ofEnableSetupScreen = Lib.load("hxOpenFrameworks", "_ofEnableSetupScreen", 0);
	static var _ofDisableSetupScreen = Lib.load("hxOpenFrameworks", "_ofDisableSetupScreen", 0);
	static var _ofSetFullscreen = Lib.load("hxOpenFrameworks", "_ofSetFullscreen", 1);
	static var _ofToggleFullscreen = Lib.load("hxOpenFrameworks", "_ofToggleFullscreen", 0);

	static var _ofSetVerticalSync = Lib.load("hxOpenFrameworks", "_ofSetVerticalSync", 1);
}