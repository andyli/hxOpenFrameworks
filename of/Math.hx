package of;

import cpp.Lib;

class Math {
	static public function nextPow2(a:Int):Int {
		return _ofNextPow2(a);
	}
	
	static public function seedRandom(?val:Int):Void {
		val == null ? _ofSeedRandom() : _ofSeedRandom2(val);
	}
	
	// random (x - y)
	static public function random(val0:Float, val1:Float):Float {
		return _ofRandom(val0, val1);
	}
	
	// random (-1 - 1)
	static public function randomf():Float {
		return _ofRandomf();
	}
	
	// random (0 - 1) 
	static public function randomuf():Float {
		return _ofRandomf();
	}

	static public function normalize(value:Float, min:Float, max:Float):Float {
		return _ofNormalize(value, min, max);
	}
	
	static public function map(value:Float, inputMin:Float, inputMax:Float, outputMin:Float, outputMax:Float, clamp:Bool = false):Float {
		return _ofMap({value:value, inputMin:inputMin, inputMax:inputMax, outputMin:outputMin, outputMax:outputMax, clamp:clamp});
	}
	
	static public function clamp(value:Float, min:Float, max:Float):Float {
		return _ofClamp(value, min, max);
	}
	
	static public function lerp(start:Float, stop:Float, amt:Float):Float {
		return _ofLerp(start, stop, amt);
	}
	
	static public function dist(x1:Float, y1:Float, x2:Float, y2:Float):Float {
		return _ofDist(x1, y1, x2, y2);
	}
	
	static public function distSquared(x1:Float, y1:Float, x2:Float, y2:Float):Float {
		return _ofDistSquared(x1, y1, x2, y2);
	}
	
	static public function sign(n:Float):Int {
		return _ofSign(n);
	}
	
	static public function inRange(t:Float, min:Float, max:Float):Bool {
		return _ofInRange(t, min, max);
	}
	
	static public function radToDeg(radians:Float):Float {
		return _ofRadToDeg(radians);
	}
	
	static public function degToRad(degrees:Float):Float {
		return _ofDegToRad(degrees);
	}
	
	static public function randomWidth():Float {
		return _ofRandomWidth();
	}
	
	static public function randomHeight():Float {
		return _ofRandomHeight();
	}

	//returns noise in 0.0 to 1.0 range
	static public function noise(x:Float, ?y:Float, ?z:Float, ?w:Float):Float {
		if (w != null) return _ofNoise4(x, y, z, w);
		if (z != null) return _ofNoise3(x, y, z);
		if (y != null) return _ofNoise2(x, y);
		return _ofNoise(x);
	}

	//returns noise in -1.0 to 1.0 range
	static public function signedNoise(x:Float, ?y:Float, ?z:Float, ?w:Float):Float {
		if (w != null) return _ofSignedNoise4(x, y, z, w);
		if (z != null) return _ofSignedNoise3(x, y, z);
		if (y != null) return _ofSignedNoise2(x, y);
		return _ofSignedNoise(x);
	}
	
	
	static var _ofNextPow2 = Lib.load("hxOpenFrameworks", "_ofNextPow2", 1);
	static var _ofSeedRandom = Lib.load("hxOpenFrameworks", "_ofSeedRandom", 0);
	static var _ofSeedRandom2 = Lib.load("hxOpenFrameworks", "_ofSeedRandom2", 1);
	static var _ofRandom = Lib.load("hxOpenFrameworks", "_ofRandom", 2);
	static var _ofRandomf = Lib.load("hxOpenFrameworks", "_ofRandomf", 0);
	static var _ofRandomuf = Lib.load("hxOpenFrameworks", "_ofRandomuf", 0);

	static var _ofNormalize = Lib.load("hxOpenFrameworks", "_ofNormalize", 3);
	static var _ofMap = Lib.load("hxOpenFrameworks", "_ofMap", 1);
	static var _ofClamp = Lib.load("hxOpenFrameworks", "_ofClamp", 3);
	static var _ofLerp = Lib.load("hxOpenFrameworks", "_ofLerp", 3);
	static var _ofDist = Lib.load("hxOpenFrameworks", "_ofDist", 4);
	static var _ofDistSquared = Lib.load("hxOpenFrameworks", "_ofDistSquared", 4);
	static var _ofSign = Lib.load("hxOpenFrameworks", "_ofSign", 1);
	static var _ofInRange = Lib.load("hxOpenFrameworks", "_ofInRange", 3);
	static var _ofRadToDeg = Lib.load("hxOpenFrameworks", "_ofRadToDeg", 1);
	static var _ofDegToRad = Lib.load("hxOpenFrameworks", "_ofDegToRad", 1);
	static var _ofRandomWidth = Lib.load("hxOpenFrameworks", "_ofRandomWidth", 0);
	static var _ofRandomHeight = Lib.load("hxOpenFrameworks", "_ofRandomHeight", 0);

	static var _ofNoise = Lib.load("hxOpenFrameworks", "_ofNoise", 1);
	static var _ofNoise2 = Lib.load("hxOpenFrameworks", "_ofNoise2", 2);
	static var _ofNoise3 = Lib.load("hxOpenFrameworks", "_ofNoise3", 3);
	static var _ofNoise4 = Lib.load("hxOpenFrameworks", "_ofNoise4", 4);

	static var _ofSignedNoise = Lib.load("hxOpenFrameworks", "_ofSignedNoise", 1);
	static var _ofSignedNoise2 = Lib.load("hxOpenFrameworks", "_ofSignedNoise2", 2);
	static var _ofSignedNoise3 = Lib.load("hxOpenFrameworks", "_ofSignedNoise3", 3);
	static var _ofSignedNoise4 = Lib.load("hxOpenFrameworks", "_ofSignedNoise4", 4);
}