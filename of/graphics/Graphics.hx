package of.graphics;

import of.utils.Types;
import cpp.Lib;

class Graphics 
{
	// bg color
	/* TODO
	float * ofBgColorPtr();
	*/
	static public function background(r:Int, g:Int, b:Int, a:Int = 255):Void{	
		_ofBackground(r, g, b, a);
	}

	// user's access to settings (bgAuto, corner mode):
	// default is true
	static public function setBackgroundAuto(bManual:Bool):Void{	
		_ofSetBackgroundAuto(bManual);
	}
	// set the mode, either to OF_RECTMODE_CORNER or OF_RECTMODE_CENTER
	static public function setRectMode(mode:Int):Void{	
		_ofSetRectMode(mode);
	}		

	//set whether OF uses ARB rectangular texture or the more traditonal GL_TEXTURE_2D
	static public function getUsingArbTex():Bool {
		return _ofGetUsingArbTex();
	}
	static public function enableArbTex():Void{	
		_ofEnableArbTex();
	}
	static public function disableArbTex():Void{	
		_ofDisableArbTex();
	}

	// OF's access to settings (bgAuto, origin, corner mode):
	static public function bClearBg():Bool {
		return _ofbClearBg();
	}
	
	// default is OF_RECTMODE_CORNER
	static public function getRectMode():Int {
		return _ofGetRectMode();
	}

	static public function setCurveResolution(res:Int):Void{	
		_ofSetCurveResolution(res);
	}

	// geometry 
	static public function triangle(x1:Float,y1:Float,x2:Float,y2:Float,x3:Float, y3:Float):Void{	
		_ofTriangle({x1:x1, y1:y1, x2:x2, y2:y2, x3:x3, y3:y3});
	}
	static public function circle(x:Float,y:Float, radius:Float):Void{	
		_ofCircle(x, y, radius);
	}
	static public function ellipse(x:Float, y:Float, width:Float, height:Float):Void{	
		_ofEllipse(x, y, width, height);
	}
	static public function line(x1:Float, y1:Float, x2:Float, y2:Float):Void {
		_ofLine(x1, y1, x2, y2);
	}
	static public function rect(x1:Float, y1:Float, w:Float, h:Float):Void {
		_ofRect(x1, y1, w, h);
	}
	
	// if there 22 is a problem, you can change it here
	static public function setCircleResolution(res:Int):Void{	
		_ofSetCircleResolution(res);
	}  		

	static public function curve(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Void{	
		_ofCurve({x0:x0, y0:y0, x1:x1, y1:y1, x2:x2, y2:y2, x3:x3, y3:y3});
	}
	static public function bezier(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Void{	
		_ofBezier({x0:x0, y0:y0, x1:x1, y1:y1, x2:x2, y2:y2, x3:x3, y3:y3});
	}


	// drawing options
	static public function noFill():Void{	
		_ofNoFill();
	}
	static public function fill():Void{	
		_ofFill();
	}

	static public function setLineWidth(lineWidth:Float):Void{	
		_ofSetLineWidth(lineWidth);
	}

	// color options
	// 0-255
	// 0-255
	// hex, like web 0xFF0033;
	static public function setColor(rOrGray:Int, ?g:Int, ?b:Int, ?a:Int):Void{	
		if (a != null) _ofSetColor4(rOrGray, g, b, a);
		else if (b != null) _ofSetColor3(rOrGray, g, b);
		else _ofSetColor1(rOrGray);
	}
	
	static public function setHexColor(hex:Int):Void {
		_ofSetHexColor(hex);
	}

	// transparency
	// this just turns on and off opengl blending, the common mode
	static public function enableAlphaBlending():Void{	
		_ofEnableAlphaBlending();
	}  
	static public function disableAlphaBlending():Void{	
		_ofDisableAlphaBlending();
	}

	// smooth 
	static public function enableSmoothing():Void{	
		_ofEnableSmoothing();
	}
	static public function disableSmoothing():Void{	
		_ofDisableSmoothing();
	}

	// drawing style - combines color, fill, blending and smoothing

	static public function getStyle():Style {
		return new Style(_ofGetStyle());
	}
	static public function setStyle(style:Style):Void {	
		_ofSetStyle(style.__handle);
	}
	
	static public function pushStyle():Void{	
		_ofPushStyle();
	}
	static public function popStyle():Void{	
		_ofPopStyle();
	}

	//our openGL wrappers
	static public function pushMatrix():Void{	
		_ofPushMatrix();
	}
	static public function popMatrix():Void{	
		_ofPopMatrix();
	}
	static public function translate(x:Float, y:Float, z:Float = 0):Void{	
		_ofTranslate(x, y, z);
	}
	static public function scale(xAmnt:Float, yAmnt:Float, zAmnt:Float = 1):Void{	
		_ofScale(xAmnt, yAmnt, zAmnt);
	}
	static public function rotate(degrees:Float, ?vecX:Float, ?vecY:Float, ?vecZ:Float):Void{	
		if (vecX == null) _ofRotate1(degrees);
		else _ofRotate4(degrees, vecX, vecY, vecZ);
	}
	static public function rotateX(degrees:Float):Void{	
		_ofRotateX(degrees);
	}
	static public function rotateY(degrees:Float):Void{	
		_ofRotateY(degrees);
	}
	static public function rotateZ(degrees:Float):Void{	
		_ofRotateZ(degrees);
	}

	// bitmapped type
	// ** note, this uses glDrawPixels and may be S L 0 W on some graphics cards
	static public function drawBitmapString(textString:String, x:Float, y:Float):Void{	
		_ofDrawBitmapString(textString, x, y);
	}

	// screen coordinate things / default gl values
	static public function setupGraphicDefaults():Void{	
		_ofSetupGraphicDefaults();
	}
	static public function setupScreen():Void{	
		_ofSetupScreen();
	}

	static public function curveVertex(x:Float, y:Float):Void{	
		_ofCurveVertex(x, y);
	}
	static public function bezierVertex(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Void{	
		_ofBezierVertex({x1:x1, y1:y1, x2:x2, y2:y2, x3:x3, y3:y3});
	}

	// for polygons
	static public function setPolyMode(mode:Int):Void{	
		_ofSetPolyMode(mode);
	}	
	static public function beginShape():Void{	
		_ofBeginShape();
	}
	static public function vertex(x:Float, y:Float):Void{	
		_ofVertex(x, y);
	}
	static public function endShape(bClose:Bool = false):Void{	
		_ofEndShape(bClose);
	}
	
	// for multi contour shapes!
	static public function nextContour(bClose:Bool = false):Void{	
		_ofNextContour(bClose);
	}

	static var _ofBackground = Lib.load("hxOpenFrameworks", "_ofBackground", 4);
	static var _ofSetBackgroundAuto = Lib.load("hxOpenFrameworks", "_ofSetBackgroundAuto", 1);
	static var _ofSetRectMode = Lib.load("hxOpenFrameworks", "_ofSetRectMode", 1);
	static var _ofGetUsingArbTex = Lib.load("hxOpenFrameworks", "_ofGetUsingArbTex", 0);
	static var _ofEnableArbTex = Lib.load("hxOpenFrameworks", "_ofEnableArbTex", 0);
	static var _ofDisableArbTex = Lib.load("hxOpenFrameworks", "_ofDisableArbTex", 0);

	static var _ofbClearBg = Lib.load("hxOpenFrameworks", "_ofbClearBg", 0);
	static var _ofGetRectMode = Lib.load("hxOpenFrameworks", "_ofGetRectMode", 0);

	static var _ofSetCurveResolution = Lib.load("hxOpenFrameworks", "_ofSetCurveResolution", 1);

	static var _ofTriangle = Lib.load("hxOpenFrameworks", "_ofTriangle", 1);
	static var _ofCircle = Lib.load("hxOpenFrameworks", "_ofCircle", 3);
	static var _ofEllipse = Lib.load("hxOpenFrameworks", "_ofEllipse", 4);
	static var _ofLine = Lib.load("hxOpenFrameworks", "_ofLine", 4);
	static var _ofRect = Lib.load("hxOpenFrameworks", "_ofRect", 4);
	static var _ofSetCircleResolution = Lib.load("hxOpenFrameworks", "_ofSetCircleResolution", 1);

	static var _ofCurve = Lib.load("hxOpenFrameworks", "_ofCurve", 1);
	static var _ofBezier = Lib.load("hxOpenFrameworks", "_ofBezier", 1);

	static var _ofNoFill = Lib.load("hxOpenFrameworks", "_ofNoFill", 0);
	static var _ofFill = Lib.load("hxOpenFrameworks", "_ofFill", 0);

	static var _ofSetLineWidth = Lib.load("hxOpenFrameworks", "_ofSetLineWidth", 1);

	static var _ofSetColor3 = Lib.load("hxOpenFrameworks", "_ofSetColor3", 3);
	static var _ofSetColor4 = Lib.load("hxOpenFrameworks", "_ofSetColor4", 4);
	static var _ofSetColor1 = Lib.load("hxOpenFrameworks", "_ofSetColor1", 1);
	static var _ofSetHexColor = Lib.load("hxOpenFrameworks", "_ofSetHexColor", 1);

	static var _ofEnableAlphaBlending = Lib.load("hxOpenFrameworks", "_ofEnableAlphaBlending", 0);
	static var _ofDisableAlphaBlending = Lib.load("hxOpenFrameworks", "_ofDisableAlphaBlending", 0);

	static var _ofEnableSmoothing = Lib.load("hxOpenFrameworks", "_ofEnableSmoothing", 0);
	static var _ofDisableSmoothing = Lib.load("hxOpenFrameworks", "_ofDisableSmoothing", 0);

	static var _ofGetStyle = Lib.load("hxOpenFrameworks", "_ofGetStyle", 0);
	static var _ofSetStyle = Lib.load("hxOpenFrameworks", "_ofSetStyle", 1);
	static var _ofPushStyle = Lib.load("hxOpenFrameworks", "_ofPushStyle", 0);
	static var _ofPopStyle = Lib.load("hxOpenFrameworks", "_ofPopStyle", 0);

	static var _ofPushMatrix = Lib.load("hxOpenFrameworks", "_ofPushMatrix", 0);
	static var _ofPopMatrix = Lib.load("hxOpenFrameworks", "_ofPopMatrix", 0);
	static var _ofTranslate = Lib.load("hxOpenFrameworks", "_ofTranslate", 3);
	static var _ofScale = Lib.load("hxOpenFrameworks", "_ofScale", 3);
	static var _ofRotate4 = Lib.load("hxOpenFrameworks", "_ofRotate4", 4);
	static var _ofRotate1 = Lib.load("hxOpenFrameworks", "_ofRotate1", 1);
	static var _ofRotateX = Lib.load("hxOpenFrameworks", "_ofRotateX", 1);
	static var _ofRotateY = Lib.load("hxOpenFrameworks", "_ofRotateY", 1);
	static var _ofRotateZ = Lib.load("hxOpenFrameworks", "_ofRotateZ", 1);

	static var _ofDrawBitmapString = Lib.load("hxOpenFrameworks", "_ofDrawBitmapString", 3);

	static var _ofSetupGraphicDefaults = Lib.load("hxOpenFrameworks", "_ofSetupGraphicDefaults", 0);
	static var _ofSetupScreen = Lib.load("hxOpenFrameworks", "_ofSetupScreen", 0);

	static var _ofCurveVertex = Lib.load("hxOpenFrameworks", "_ofCurveVertex", 2);
	static var _ofBezierVertex = Lib.load("hxOpenFrameworks", "_ofBezierVertex", 1);

	static var _ofSetPolyMode = Lib.load("hxOpenFrameworks", "_ofSetPolyMode", 1);
	static var _ofBeginShape = Lib.load("hxOpenFrameworks", "_ofBeginShape", 0);
	static var _ofVertex = Lib.load("hxOpenFrameworks", "_ofVertex", 2);
	static var _ofEndShape = Lib.load("hxOpenFrameworks", "_ofEndShape", 1);
	static var _ofNextContour = Lib.load("hxOpenFrameworks", "_ofNextContour", 1);
}