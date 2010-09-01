package of;

import cpp.Lib;

class AppGlutWindow 
{

	public function new():Void {
		__handle = _ofAppGlutWindow_new();
	}
	
	public function setupOpenGL(w:Int, h:Int, screenMode:Int):Void {
		_ofAppGlutWindow_setupOpenGL(__handle, w, h, screenMode);
	}
	
	public function initializeWindow():Void {
		_ofAppGlutWindow_initializeWindow(__handle);
	}
	
	public function runAppViaInfiniteLoop(appPtr:BaseApp):Void {
		_ofAppGlutWindow_runAppViaInfiniteLoop(__handle, appPtr.__handle);
	}
	
	public function setGlutDisplayString(str:String):Void {
		_ofAppGlutWindow_setGlutDisplayString(__handle, str);
	}
	
	public function hideCursor():Void {
		_ofAppGlutWindow_hideCursor(__handle);
	}
	
	public function showCursor():Void {
		_ofAppGlutWindow_showCursor(__handle);
	}
	
	public function setFullscreen(fullScreen:Bool):Void {
		_ofAppGlutWindow_setFullscreen(__handle, fullScreen);
	}
	
	public function toggleFullscreen():Void {
		_ofAppGlutWindow_toggleFullscreen(__handle);
	}
	
	static public function exitApp():Void {
		_ofAppGlutWindow_exitApp();
	}
	
	public function setWindowTitle(title:String):Void {
		_ofAppGlutWindow_setWindowTitle(__handle, title);
	}
	
	public function setWindowPosition(x:Int, y:Int):Void {
		_ofAppGlutWindow_setWindowPosition(__handle, x, y);
	}
	
	public function setWindowShape(w:Int, h:Int):Void {
		_ofAppGlutWindow_setWindowShape(__handle, w, h);
	}
		
	public var __handle(default, null):Dynamic;
	
	static var _ofAppGlutWindow_new = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_new", 0);
	static var _ofAppGlutWindow_setupOpenGL = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_setupOpenGL", 4);
	static var _ofAppGlutWindow_initializeWindow = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_initializeWindow", 1);
	static var _ofAppGlutWindow_runAppViaInfiniteLoop = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_runAppViaInfiniteLoop", 2);
	static var _ofAppGlutWindow_setGlutDisplayString = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_setGlutDisplayString", 2);
	static var _ofAppGlutWindow_hideCursor = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_hideCursor", 1);
	static var _ofAppGlutWindow_showCursor = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_showCursor", 1);
	static var _ofAppGlutWindow_setFullscreen = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_setFullscreen", 2);
	static var _ofAppGlutWindow_toggleFullscreen = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_toggleFullscreen", 1);
	static var _ofAppGlutWindow_exitApp = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_exitApp", 0);
	static var _ofAppGlutWindow_setWindowTitle = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_setWindowTitle", 2);
	static var _ofAppGlutWindow_setWindowPosition = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_setWindowPosition", 3);
	static var _ofAppGlutWindow_setWindowShape = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_setWindowShape", 3);
}