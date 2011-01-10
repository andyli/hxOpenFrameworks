package of.utils;

import cpp.Lib;
import of.app.AppRunner;
import of.graphics.Image;
import of.utils.Constants;

class Utils 
{	
	static public function nextPow2(input:Int):Int {
		return _ofNextPow2(input);
	}
	
	// this happens on the first frame
	static public function resetElapsedTimeCounter():Void {
		_ofResetElapsedTimeCounter();
	}
	
	static public function getElapsedTimef():Float {
		return _ofGetElapsedTimef();
	}
	
	static public function getElapsedTimeMillis():Int {
		return _ofGetElapsedTimeMillis();
	}
	
	static public function getFrameNum():Int {
		return _ofGetFrameNum();
	}
	
	static public function getSeconds():Int {
		return _ofGetSeconds();
	}
	
	static public function getMinutes():Int {
		return _ofGetMinutes();
	}
	
	static public function getHours():Int {
		return _ofGetHours();
	}
	
	// system time in milliseconds;
	static public function getSystemTime():Float {
		return _ofGetSystemTime();
	}
	
	static public function getYear():Int {
		return _ofGetYear();
	}
	
	static public function getMonth():Int {
		return _ofGetMonth();
	}
	
	static public function getDay():Int {
		return _ofGetDay();
	}
	
	static public function getWeekday():Int {
		return _ofGetWeekday();
	}
	
	static public function launchBrowser(url:String):Void {
		_ofLaunchBrowser(url);
	}
	
	static public function enableDataPath():Void {
		_ofEnableDataPath();
	}
	
	static public function disableDataPath():Void {
		_ofDisableDataPath();
	}
	
	static public function toDataPath(path:String, ?absolute:Bool = false):String {
		return _ofToDataPath(path, absolute);
	}
	
	//set the root path that ofToDataPath will use to search for files relative to the app
	//the path must have a trailing slash (/) !!!!
	static public function setDataPathRoot( root:String ):Void {
		_ofSetDataPathRoot( root );
	}
	
	static public function toString(value:Float, ?precision:Int = 7):String {
		return Std.is(value,Int) ? _ofToString1(value) : _ofToString2(value, precision);
	}

	static public function toInt(intString:String):Int {
		return _ofToInt(intString);
	}
	
	static public function toFloat(floatString:String):Float {
		return _ofToFloat(floatString);
	}
	
	static public function getVersionInfo():String {
		return _ofGetVersionInfo();
	}
	
	static public function saveScreen(filename:String):Void {
		var screen = new Image();
		screen.allocate(AppRunner.getWidth(), AppRunner.getHeight(), Constants.OF_IMAGE_COLOR);
		screen.grabScreen(0, 0, AppRunner.getWidth(), AppRunner.getHeight());
		screen.saveImage(filename);
	}
	
	static public function saveFrame():Void {
		var fileName = toString(saveImageCounter++) + ".png";
		saveScreen(fileName);
	}
	
	static public function splitString(text:String, delimiter:String):Array<String> {
		return text.split(delimiter);
	}
	
	static public function setLogLevel(logLevel:LogLevel):Void {
		_ofSetLogLevel(Type.enumIndex(logLevel));
	}
	
	static public function ofLog(logLevel:LogLevel, message:String):Void {
		_ofLog(Type.enumIndex(logLevel), message);
	}
	
	static public function setConsoleColor(color:Int):Void {
		_ofSetConsoleColor(color);
	}
	
	static public function restoreConsoleColor():Void {
		_ofRestoreConsoleColor();
	}
	
	static var saveImageCounter:Int = 0;
	
	static var _ofNextPow2 = Lib.load("hxOpenFrameworks", "_ofNextPow2", 1);
	static var _ofResetElapsedTimeCounter = Lib.load("hxOpenFrameworks", "_ofResetElapsedTimeCounter", 0);
	static var _ofGetElapsedTimef = Lib.load("hxOpenFrameworks", "_ofGetElapsedTimef", 0);
	static var _ofGetElapsedTimeMillis = Lib.load("hxOpenFrameworks", "_ofGetElapsedTimeMillis", 0);
	static var _ofGetFrameNum = Lib.load("hxOpenFrameworks", "_ofGetFrameNum", 0);
	static var _ofGetSeconds = Lib.load("hxOpenFrameworks", "_ofGetSeconds", 0);
	static var _ofGetMinutes = Lib.load("hxOpenFrameworks", "_ofGetMinutes", 0);
	static var _ofGetHours = Lib.load("hxOpenFrameworks", "_ofGetHours", 0);
	static var _ofGetSystemTime = Lib.load("hxOpenFrameworks", "_ofGetSystemTime", 0);
	static var _ofGetYear = Lib.load("hxOpenFrameworks", "_ofGetYear", 0);
	static var _ofGetMonth = Lib.load("hxOpenFrameworks", "_ofGetMonth", 0);
	static var _ofGetDay = Lib.load("hxOpenFrameworks", "_ofGetDay", 0);
	static var _ofGetWeekday = Lib.load("hxOpenFrameworks", "_ofGetWeekday", 0);
	static var _ofLaunchBrowser = Lib.load("hxOpenFrameworks", "_ofLaunchBrowser", 1);
	static var _ofEnableDataPath = Lib.load("hxOpenFrameworks", "_ofEnableDataPath", 0);
	static var _ofDisableDataPath = Lib.load("hxOpenFrameworks", "_ofDisableDataPath", 0);
	static var _ofToDataPath = Lib.load("hxOpenFrameworks", "_ofToDataPath", 2);
	static var _ofSetDataPathRoot = Lib.load("hxOpenFrameworks", "_ofSetDataPathRoot", 1);
	static var _ofToString2 = Lib.load("hxOpenFrameworks", "_ofToString2", 2);
	static var _ofToString1 = Lib.load("hxOpenFrameworks", "_ofToString1", 1);
	static var _ofToInt = Lib.load("hxOpenFrameworks", "_ofToInt", 1);
	static var _ofToFloat = Lib.load("hxOpenFrameworks", "_ofToFloat", 1);
	static var _ofGetVersionInfo = Lib.load("hxOpenFrameworks", "_ofGetVersionInfo", 0);
	static var _ofSetLogLevel = Lib.load("hxOpenFrameworks", "_ofSetLogLevel", 1);
	static var _ofLog = Lib.load("hxOpenFrameworks", "_ofLog", 2);
	static var _ofSetConsoleColor = Lib.load("hxOpenFrameworks", "_ofSetConsoleColor", 1);
	static var _ofRestoreConsoleColor = Lib.load("hxOpenFrameworks", "_ofRestoreConsoleColor", 0);
}