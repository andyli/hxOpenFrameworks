package of.utils;

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

class Color {
	public function new(?handle:Dynamic):Void {
		__handle = handle == null ? _ofColor_new() : handle;
	}
	
	public var r(__getR,__setR):Float;
	public var g(__getG,__setG):Float;
	public var b(__getB,__setB):Float;
	public var a(__getA,__setA):Float;
	
	public var __handle(default, null):Dynamic;
	
	static var _ofColor_new = Lib.load("hxOpenFrameworks", "_ofColor_new", 0);
	static var _ofColor_getR = Lib.load("hxOpenFrameworks", "_ofColor_getR", 1);
	static var _ofColor_getG = Lib.load("hxOpenFrameworks", "_ofColor_getG", 1);
	static var _ofColor_getB = Lib.load("hxOpenFrameworks", "_ofColor_getB", 1);
	static var _ofColor_getA = Lib.load("hxOpenFrameworks", "_ofColor_getA", 1);
	static var _ofColor_setR = Lib.load("hxOpenFrameworks", "_ofColor_setR", 2);
	static var _ofColor_setG = Lib.load("hxOpenFrameworks", "_ofColor_setG", 2);
	static var _ofColor_setB = Lib.load("hxOpenFrameworks", "_ofColor_setB", 2);
	static var _ofColor_setA = Lib.load("hxOpenFrameworks", "_ofColor_setA", 2);
	
	function __getR():Float {
		return _ofColor_getR(__handle);
	}
	function __setR(r:Float):Float {
		return _ofColor_setR(__handle, r);
	}
	function __getG():Float {
		return _ofColor_getG(__handle);
	}
	function __setG(g:Float):Float {
		return _ofColor_setG(__handle, g);
	}
	function __getB():Float {
		return _ofColor_getB(__handle);
	}
	function __setB(b:Float):Float {
		return _ofColor_setB(__handle, b);
	}
	function __getA():Float {
		return _ofColor_getA(__handle);
	}
	function __setA(a:Float):Float {
		return _ofColor_setA(__handle, a);
	}
}

class Style {
	public function new(?handle:Dynamic):Void {
		__handle = handle == null ? _ofStyle_new() : handle;
		color = new Color(_ofStyle_getColor(__handle));
	}
	
	public var color(default,null):Color;
	public var polyMode(__getPolyMode,__setPolyMode):Int;
	public var rectMode(__getRectMode,__setRectMode):Int;
	public var bFill(__getBFill, __setBFill):Bool;
	public var blending(__getBlending, __setBlending):Bool;
	public var smoothing(__getSmoothing, __setSmoothing):Bool;
	public var circleResolution(__getCircleResolution, __setCircleResolution):Int;
	public var lineWidth(__getLineWidth, __setLineWidth):Float;
	
	public var __handle(default, null):Dynamic;
	
	static var _ofStyle_new = Lib.load("hxOpenFrameworks", "_ofStyle_new", 0);
	static var _ofStyle_getColor = Lib.load("hxOpenFrameworks", "_ofStyle_getColor", 1);
	static var _ofStyle_getPolyMode = Lib.load("hxOpenFrameworks", "_ofStyle_getPolyMode", 1);
	static var _ofStyle_setPolyMode = Lib.load("hxOpenFrameworks", "_ofStyle_setPolyMode", 2);
	static var _ofStyle_getRectMode = Lib.load("hxOpenFrameworks", "_ofStyle_getRectMode", 1);
	static var _ofStyle_setRectMode = Lib.load("hxOpenFrameworks", "_ofStyle_setRectMode", 2);
	static var _ofStyle_getBFill = Lib.load("hxOpenFrameworks", "_ofStyle_getBFill", 1);
	static var _ofStyle_setBFill = Lib.load("hxOpenFrameworks", "_ofStyle_setBFill", 2);
	static var _ofStyle_getBlending = Lib.load("hxOpenFrameworks", "_ofStyle_getBlending", 1);
	static var _ofStyle_setBlending = Lib.load("hxOpenFrameworks", "_ofStyle_setBlending", 2);
	static var _ofStyle_getSmoothing = Lib.load("hxOpenFrameworks", "_ofStyle_getSmoothing", 1);
	static var _ofStyle_setSmoothing = Lib.load("hxOpenFrameworks", "_ofStyle_setSmoothing", 2);
	static var _ofStyle_getCircleResolution = Lib.load("hxOpenFrameworks", "_ofStyle_getCircleResolution", 1);
	static var _ofStyle_setCircleResolution = Lib.load("hxOpenFrameworks", "_ofStyle_setCircleResolution", 2);
	static var _ofStyle_getLineWidth = Lib.load("hxOpenFrameworks", "_ofStyle_getLineWidth", 1);
	static var _ofStyle_setLineWidth = Lib.load("hxOpenFrameworks", "_ofStyle_setLineWidth", 2);
	
	function __getPolyMode():Int {
		return _ofStyle_getPolyMode(__handle);
	}
	function __setPolyMode(val:Int):Int {
		return _ofStyle_setPolyMode(__handle,val);
	}

	function __getRectMode():Int {
		return _ofStyle_getRectMode(__handle);
	}
	function __setRectMode(val:Int):Int {
		return _ofStyle_setRectMode(__handle,val);
	}

	function __getBFill():Bool {
		return _ofStyle_getBFill(__handle);
	}
	function __setBFill(val:Bool):Bool {
		return _ofStyle_setBFill(__handle,val);
	}

	function __getBlending():Bool {
		return _ofStyle_getBlending(__handle);
	}
	function __setBlending(val:Bool):Bool {
		return _ofStyle_setBlending(__handle,val);
	}

	function __getSmoothing():Bool {
		return _ofStyle_getSmoothing(__handle);
	}
	function __setSmoothing(val:Bool):Bool {
		return _ofStyle_setSmoothing(__handle,val);
	}

	function __getCircleResolution():Int {
		return _ofStyle_getCircleResolution(__handle);
	}
	function __setCircleResolution(val:Int):Int {
		return _ofStyle_setCircleResolution(__handle,val);
	}

	function __getLineWidth():Float {
		return _ofStyle_getLineWidth(__handle);
	}
	function __setLineWidth(val:Float):Float {
		return _ofStyle_setLineWidth(__handle,val);
	}

}