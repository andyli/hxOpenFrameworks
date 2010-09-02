package of;

import cpp.Lib;

class Point {
	public function new(?x:Float = 0, ?y:Float = 0, ?z:Float = 0, ?handle:Dynamic):Void {
		__handle = handle == null ? _ofPoint_new(x, y, z) : handle;
	}
	
	public function set(x:Float, y:Float, z:Float):Void {
		_ofPoint_set(__handle, x, y, z);
	}
	
	public var x(__getX,__setX):Float;
	public var y(__getY,__setY):Float;
	public var z(__getZ,__setZ):Float;
	
	public var __handle(default, null):Dynamic;
	
	static var _ofPoint_new = Lib.load("hxOpenFrameworks", "_ofPoint_new", 3);
	static var _ofPoint_getX = Lib.load("hxOpenFrameworks", "_ofPoint_getX", 1);
	static var _ofPoint_getY = Lib.load("hxOpenFrameworks", "_ofPoint_getY", 1);
	static var _ofPoint_getZ = Lib.load("hxOpenFrameworks", "_ofPoint_getZ", 1);
	static var _ofPoint_setX = Lib.load("hxOpenFrameworks", "_ofPoint_setX", 2);
	static var _ofPoint_setY = Lib.load("hxOpenFrameworks", "_ofPoint_setY", 2);
	static var _ofPoint_setZ = Lib.load("hxOpenFrameworks", "_ofPoint_setZ", 2);
	static var _ofPoint_set = Lib.load("hxOpenFrameworks", "_ofPoint_set", 4);
	
	function __getX():Float {
		return _ofPoint_getX(__handle);
	}
	function __setX(x:Float):Float {
		return _ofPoint_setX(__handle, x);
	}
	function __getY():Float {
		return _ofPoint_getY(__handle);
	}
	function __setY(y:Float):Float {
		return _ofPoint_setY(__handle, y);
	}
	function __getZ():Float {
		return _ofPoint_getX(__handle);
	}
	function __setZ(x:Float):Float {
		return _ofPoint_setX(__handle, z);
	}
}

class Rectangle {
	public function new(?handle:Dynamic):Void {
		__handle = handle == null ? _ofRectangle_new() : handle;
	}
	
	public var x(__getX,__setX):Float;
	public var y(__getY,__setY):Float;
	public var width(__getWidth,__setWidth):Float;
	public var height(__getHeight,__setHeight):Float;
	
	public var __handle(default, null):Dynamic;
	
	static var _ofRectangle_new = Lib.load("hxOpenFrameworks", "_ofRectangle_new", 0);
	static var _ofRectangle_getX = Lib.load("hxOpenFrameworks", "_ofRectangle_getX", 1);
	static var _ofRectangle_getY = Lib.load("hxOpenFrameworks", "_ofRectangle_getY", 1);
	static var _ofRectangle_getWidth = Lib.load("hxOpenFrameworks", "_ofRectangle_getWidth", 1);
	static var _ofRectangle_getHeight = Lib.load("hxOpenFrameworks", "_ofRectangle_getHeight", 1);
	static var _ofRectangle_setX = Lib.load("hxOpenFrameworks", "_ofRectangle_setX", 2);
	static var _ofRectangle_setY = Lib.load("hxOpenFrameworks", "_ofRectangle_setY", 2);
	static var _ofRectangle_setWidth = Lib.load("hxOpenFrameworks", "_ofRectangle_setWidth", 2);
	static var _ofRectangle_setHeight = Lib.load("hxOpenFrameworks", "_ofRectangle_setHeight", 2);
	
	function __getX():Float {
		return _ofRectangle_getX(__handle);
	}
	function __setX(x:Float):Float {
		return _ofRectangle_setX(__handle, x);
	}
	function __getY():Float {
		return _ofRectangle_getY(__handle);
	}
	function __setY(y:Float):Float {
		return _ofRectangle_setY(__handle, y);
	}
	function __getWidth():Float {
		return _ofRectangle_getWidth(__handle);
	}
	function __setWidth(width:Float):Float {
		return _ofRectangle_setWidth(__handle, width);
	}
	function __getHeight():Float {
		return _ofRectangle_getHeight(__handle);
	}
	function __setHeight(height:Float):Float {
		return _ofRectangle_setHeight(__handle, height);
	}
}