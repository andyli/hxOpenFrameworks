package of.app;

import cpp.Lib;
import of.utils.Types;

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
	
	
	public function getWindowPosition():Point{
		return new Point(null,null,null,_ofAppGlutWindow_getWindowPosition(__handle));
	}
	
	public function getWindowSize():Point{
		return new Point(null,null,null,_ofAppGlutWindow_getWindowSize(__handle));
	}
	
	public function getScreenSize():Point{
		return new Point(null,null,null,_ofAppGlutWindow_getScreenSize(__handle));
	}

	
	public function getWindowMode():Int{
		return _ofAppGlutWindow_getWindowMode(__handle);
	}

	
	public function getFrameNum():Int{
		return _ofAppGlutWindow_getFrameNum(__handle);
	}
	
	public function getFrameRate():Float{
		return _ofAppGlutWindow_getFrameRate(__handle);
	}
	
	public function getLastFrameTime():Float{
		return _ofAppGlutWindow_getLastFrameTime(__handle);
	}
	
	public function setFrameRate(targetRate:Float):Void{
		_ofAppGlutWindow_setFrameRate(__handle, targetRate);
	}

	
	public function enableSetupScreen():Void{
		_ofAppGlutWindow_enableSetupScreen(__handle);
	}
	
	public function disableSetupScreen():Void{
		_ofAppGlutWindow_disableSetupScreen(__handle);
	}

	
	static public function display():Void{
		_ofAppGlutWindow_display();
	}
	
	static public function mouse_cb(button:Int, state:Int, x:Int, y:Int):Void{
		_ofAppGlutWindow_mouse_cb( button, state, x, y);
	}
	
	static public function motion_cb(x:Int, y:Int):Void{
		_ofAppGlutWindow_motion_cb(x, y);
	}
	
	static public function passive_motion_cb(x:Int, y:Int):Void{
		_ofAppGlutWindow_passive_motion_cb(x, y);
	}
	
	static public function idle_cb():Void{
		_ofAppGlutWindow_idle_cb();
	}
	
	static public function keyboard_cb(key:Int, x:Int, y:Int):Void{
		_ofAppGlutWindow_keyboard_cb(key, x, y);
	}
	
	static public function keyboard_up_cb(key:Int, x:Int, y:Int):Void{
		_ofAppGlutWindow_keyboard_up_cb(key, x, y);
	}
	static public function special_key_cb(key:Int, x:Int, y:Int):Void{
		_ofAppGlutWindow_special_key_cb(key, x, y);
	}
	static public function special_key_up_cb(key:Int, x:Int, y:Int):Void{
		_ofAppGlutWindow_special_key_up_cb(key, x, y);
	}
	
	static public function resize_cb(w:Int, h:Int):Void{
		_ofAppGlutWindow_resize_cb(w, h);
	}

	public var displayString:String;
	
	function __getDisplayString():String {
		return _ofAppGlutWindow_getDisplayString(__handle);
	}
	
	function __setDisplayString(str:String):String {
		return _ofAppGlutWindow_setDisplayString(__handle,str);
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
	static var _ofAppGlutWindow_getWindowPosition = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_getWindowPosition", 1);
	static var _ofAppGlutWindow_getWindowSize = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_getWindowSize", 1);
	static var _ofAppGlutWindow_getScreenSize = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_getScreenSize", 1);
	static var _ofAppGlutWindow_getWindowMode = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_getWindowMode", 1);
	static var _ofAppGlutWindow_getFrameNum = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_getFrameNum", 1);
	static var _ofAppGlutWindow_getFrameRate = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_getFrameRate", 1);
	static var _ofAppGlutWindow_getLastFrameTime = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_getLastFrameTime", 1);
	static var _ofAppGlutWindow_setFrameRate = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_setFrameRate", 2);
	static var _ofAppGlutWindow_enableSetupScreen = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_enableSetupScreen", 1);
	static var _ofAppGlutWindow_disableSetupScreen = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_disableSetupScreen", 1);
	static var _ofAppGlutWindow_display = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_display", 0);
	static var _ofAppGlutWindow_mouse_cb = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_mouse_cb", 4);
	static var _ofAppGlutWindow_motion_cb = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_motion_cb", 2);
	static var _ofAppGlutWindow_passive_motion_cb = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_passive_motion_cb", 2);
	static var _ofAppGlutWindow_idle_cb = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_idle_cb", 0);
	static var _ofAppGlutWindow_keyboard_cb = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_keyboard_cb", 3);
	static var _ofAppGlutWindow_keyboard_up_cb = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_keyboard_up_cb", 3);
	static var _ofAppGlutWindow_special_key_cb = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_special_key_cb", 3);
	static var _ofAppGlutWindow_special_key_up_cb = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_special_key_up_cb", 3);
	static var _ofAppGlutWindow_resize_cb = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_resize_cb", 2);
	static var _ofAppGlutWindow_getDisplayString = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_getDisplayString", 1);
	static var _ofAppGlutWindow_setDisplayString = Lib.load("hxOpenFrameworks", "_ofAppGlutWindow_setDisplayString", 2);
}