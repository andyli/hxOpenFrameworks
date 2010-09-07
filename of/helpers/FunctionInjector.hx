package of.helpers;

import of.app.BaseApp;
import of.app.AppRunner;
import of.app.AppGlutWindow;
import of.graphics.Graphics;
import of.utils.Utils;
import of.utils.Types;

class FunctionInjector 
{	
	inline static public function runApp(_:BaseApp, app:BaseApp):Void {
		return AppRunner.runApp(app);
	}
	
	inline static public function setupOpenGL(_:BaseApp, window:AppGlutWindow, w:Int, h:Int, screenMode:Int):Void {
		return AppRunner.setupOpenGL(window, w, h, screenMode);
	}
	
	inline static public function getAppPtr(_:BaseApp):BaseApp {
		return AppRunner.getAppPtr();
	}
	
	inline static public function getWindowPtr(_:BaseApp):AppGlutWindow {
		return AppRunner.getWindowPtr();
	}
	
	inline static public function getFrameRate(_:BaseApp):Float{
		return AppRunner.getFrameRate();
	}
	
	inline static public function getFrameNum(_:BaseApp):Int{
		return AppRunner.getFrameNum();
	}
	
	inline static public function setFrameRate(_:BaseApp, targetRate:Int):Void{
		return AppRunner.setFrameRate(targetRate);
	}
	
	inline static public function sleepMillis(_:BaseApp, millis:Int):Void{
		return AppRunner.sleepMillis(millis);
	}
	
	inline static public function getLastFrameTime(_:BaseApp):Float{
		return AppRunner.getLastFrameTime();
	}
	
	inline static public function hideCursor(_:BaseApp):Void{
		return AppRunner.hideCursor();
	}
	
	inline static public function showCursor(_:BaseApp):Void{
		return AppRunner.showCursor();
	}
	
	inline static public function getWindowPositionX(_:BaseApp):Int{
		return AppRunner.getWindowPositionX();
	}
	
	inline static public function getWindowPositionY(_:BaseApp):Int{
		return AppRunner.getWindowPositionY();
	}
	
	inline static public function getScreenWidth(_:BaseApp):Int{
		return AppRunner.getScreenWidth();
	}
	
	inline static public function getScreenHeight(_:BaseApp):Int{
		return AppRunner.getScreenHeight();
	}
	
	inline static public function getWindowMode(_:BaseApp):Int{
		return AppRunner.getWindowMode();
	}
	
	inline static public function getWidth(_:BaseApp):Int{
		return AppRunner.getWidth();
	}
	
	inline static public function getHeight(_:BaseApp):Int{
		return AppRunner.getHeight();
	}

	
	inline static public function setWindowPosition(_:BaseApp, x:Int, y:Int):Void{
		return AppRunner.setWindowPosition(x, y);
	}
	
	inline static public function setWindowShape(_:BaseApp, width:Int, height:Int):Void{
		return AppRunner.setWindowShape(width, height);
	}
	
	inline static public function setWindowTitle(_:BaseApp, title:String):Void{
		return AppRunner.setWindowTitle(title);
	}
	
	inline static public function enableSetupScreen(_:BaseApp):Void{
		return AppRunner.enableSetupScreen();
	}
	
	inline static public function disableSetupScreen(_:BaseApp):Void{
		return AppRunner.disableSetupScreen();
	}
	
	inline static public function setFullscreen(_:BaseApp, fullscreen:Bool):Void{
		return AppRunner.setFullscreen(fullscreen);
	}
	
	inline static public function toggleFullscreen(_:BaseApp):Void{
		return AppRunner.toggleFullscreen();
	}
	
	inline static public function setVerticalSync(_:BaseApp, bSync:Bool):Void{
		return AppRunner.setVerticalSync(bSync);
	}
	
	inline static public function nextPow2(_:BaseApp, input:Int):Int {
		return Utils.nextPow2(input);
	}
	
	inline static public function resetElapsedTimeCounter(_:BaseApp):Void {
		return Utils.resetElapsedTimeCounter();
	}
	
	inline static public function getElapsedTimef(_:BaseApp):Float {
		return Utils.getElapsedTimef();
	}
	
	inline static public function getElapsedTimeMillis(_:BaseApp):Int {
		return Utils.getElapsedTimeMillis();
	}
	
	inline static public function getSeconds(_:BaseApp):Int {
		return Utils.getSeconds();
	}
	
	inline static public function getMinutes(_:BaseApp):Int {
		return Utils.getMinutes();
	}
	
	inline static public function getHours(_:BaseApp):Int {
		return Utils.getHours();
	}
	
	inline static public function getSystemTime(_:BaseApp):Float {
		return Utils.getSystemTime();
	}
	
	inline static public function getYear(_:BaseApp):Int {
		return Utils.getYear();
	}
	
	inline static public function getMonth(_:BaseApp):Int {
		return Utils.getMonth();
	}
	
	inline static public function getDay(_:BaseApp):Int {
		return Utils.getDay();
	}
	
	inline static public function getWeekday(_:BaseApp):Int {
		return Utils.getWeekday();
	}
	
	inline static public function launchBrowser(_:BaseApp, url:String):Void {
		return Utils.launchBrowser(url);
	}
	
	inline static public function enableDataPath(_:BaseApp):Void {
		return Utils.enableDataPath();
	}
	
	inline static public function disableDataPath(_:BaseApp):Void {
		return Utils.disableDataPath();
	}
	
	inline static public function toDataPath(_:BaseApp, path:String, ?absolute:Bool = false):String {
		return Utils.toDataPath(path, absolute);
	}
	
	inline static public function setDataPathRoot(_:BaseApp,  root:String ):Void {
		return Utils.setDataPathRoot( root );
	}
	
	inline static public function toString(_:BaseApp, value:Float, ?precision:Int = 7):String {
		return Utils.toString(value, precision);
	}

	inline static public function toInt(_:BaseApp, intString:String):Int {
		return Utils.toInt(intString);
	}
	
	inline static public function toFloat(_:BaseApp, floatString:String):Float {
		return Utils.toFloat(floatString);
	}
	
	inline static public function getVersionInfo(_:BaseApp):String {
		return Utils.getVersionInfo();
	}
	
	inline static public function saveScreen(_:BaseApp, filename:String):Void {
		return Utils.saveScreen(filename);
	}
	
	inline static public function saveFrame(_:BaseApp):Void {
		return Utils.saveFrame();
	}
	
	inline static public function splitString(_:BaseApp, text:String, delimiter:String):Array<String> {
		return Utils.splitString(text, delimiter);
	}
	
	inline static public function setLogLevel(_:BaseApp, logLevel:Int):Void {
		return Utils.setLogLevel(logLevel);
	}
	
	inline static public function log(_:BaseApp, logLevel:Int, message:String):Void {
		return Utils.log(logLevel, message);
	}
	
	inline static public function setConsoleColor(_:BaseApp, color:Int):Void {
		return Utils.setConsoleColor(color);
	}
	
	inline static public function restoreConsoleColor(_:BaseApp):Void {
		return Utils.restoreConsoleColor();
	}
	
	inline static public function seedRandom(_:BaseApp, ?val:Int):Void {
		return of.utils.Math.seedRandom(val);
	}
	
	inline static public function random(_:BaseApp, val0:Float, val1:Float):Float {
		return of.utils.Math.random(val0, val1);
	}
	
	inline static public function randomf(_:BaseApp):Float {
		return of.utils.Math.randomf();
	}
	
	inline static public function randomuf(_:BaseApp):Float {
		return of.utils.Math.randomuf();
	}

	inline static public function normalize(_:BaseApp, value:Float, min:Float, max:Float):Float {
		return of.utils.Math.normalize(value, min, max);
	}
	
	inline static public function map(_:BaseApp, value:Float, inputMin:Float, inputMax:Float, outputMin:Float, outputMax:Float, clamp:Bool = false):Float {
		return of.utils.Math.map(value, inputMin, inputMax, outputMin, outputMax, clamp);
	}
	
	inline static public function clamp(_:BaseApp, value:Float, min:Float, max:Float):Float {
		return of.utils.Math.clamp(value, min, max);
	}
	
	inline static public function lerp(_:BaseApp, start:Float, stop:Float, amt:Float):Float {
		return of.utils.Math.lerp(start, stop, amt);
	}
	
	inline static public function dist(_:BaseApp, x1:Float, y1:Float, x2:Float, y2:Float):Float {
		return of.utils.Math.dist(x1, y1, x2, y2);
	}
	
	inline static public function distSquared(_:BaseApp, x1:Float, y1:Float, x2:Float, y2:Float):Float {
		return of.utils.Math.distSquared(x1, y1, x2, y2);
	}
	
	inline static public function sign(_:BaseApp, n:Float):Int {
		return of.utils.Math.sign(n);
	}
	
	inline static public function inRange(_:BaseApp, t:Float, min:Float, max:Float):Bool {
		return of.utils.Math.inRange(t, min, max);
	}
	
	inline static public function radToDeg(_:BaseApp, radians:Float):Float {
		return of.utils.Math.radToDeg(radians);
	}
	
	inline static public function degToRad(_:BaseApp, degrees:Float):Float {
		return of.utils.Math.degToRad(degrees);
	}
	
	inline static public function randomWidth(_:BaseApp):Float {
		return of.utils.Math.randomWidth();
	}
	
	inline static public function randomHeight(_:BaseApp):Float {
		return of.utils.Math.randomHeight();
	}

	inline static public function noise(_:BaseApp, x:Float, ?y:Float, ?z:Float, ?w:Float):Float {
		return of.utils.Math.noise(x, y, z, w);
	}
	
	inline static public function signedNoise(_:BaseApp, x:Float, ?y:Float, ?z:Float, ?w:Float):Float {
		return of.utils.Math.signedNoise(x, y, z, w);
	}
	
	inline static public function abs(_:BaseApp, v:Float):Float{
		return Math.abs(v);
	}
	inline static public function min(_:BaseApp, a:Float,b:Float):Float{
		return Math.min(a,b);
	}
	inline static public function max(_:BaseApp, a:Float,b:Float):Float{
		return Math.max(a,b);
	}
	inline static public function sin(_:BaseApp, v:Float):Float{
		return Math.sin(v);
	}
	inline static public function cos(_:BaseApp, v:Float):Float{
		return Math.cos(v);
	}
	inline static public function atan2(_:BaseApp, y:Float,x:Float):Float{
		return Math.atan2(y,x);
	}
	inline static public function tan(_:BaseApp, v:Float):Float{
		return Math.tan(v);
	}
	inline static public function exp(_:BaseApp, v:Float):Float{
		return Math.exp(v);
	}
	inline static public function sqrt(_:BaseApp, v:Float):Float{
		return Math.sqrt(v);
	}
	inline static public function round(_:BaseApp, v:Float):Int{
		return Math.round(v);
	}
	inline static public function floor(_:BaseApp, v:Float):Int{
		return Math.floor(v);
	}
	inline static public function ceil(_:BaseApp, v:Float):Int{
		return Math.ceil(v);
	}
	inline static public function atan(_:BaseApp, v:Float):Float{
		return Math.atan(v);
	}
	inline static public function asin(_:BaseApp, v:Float):Float{
		return Math.asin(v);
	}
	inline static public function acos(_:BaseApp, v:Float):Float{
		return Math.acos(v);
	}
	inline static public function pow(_:BaseApp, v:Float,exp:Float):Float{
		return Math.pow(v,exp);
	}
	
	inline static public function background(_:BaseApp, r:Int, g:Int, b:Int):Void{
		return Graphics.background(r, g, b);
	}

	inline static public function setBackgroundAuto(_:BaseApp, bManual:Bool):Void{
		return Graphics.setBackgroundAuto(bManual);
	}
	inline static public function setRectMode(_:BaseApp, mode:Int):Void{
		return Graphics.setRectMode(mode);
	}		

	inline static public function getUsingArbTex(_:BaseApp):Bool {
		return Graphics.getUsingArbTex();
	}
	inline static public function enableArbTex(_:BaseApp):Void{
		return Graphics.enableArbTex();
	}
	inline static public function disableArbTex(_:BaseApp):Void{
		return Graphics.disableArbTex();
	}

	inline static public function bClearBg(_:BaseApp):Bool {
		return Graphics.bClearBg();
	}
	
	inline static public function getRectMode(_:BaseApp):Int {
		return Graphics.getRectMode();
	}

	inline static public function setCurveResolution(_:BaseApp, res:Int):Void{
		return Graphics.setCurveResolution(res);
	}

	inline static public function triangle(_:BaseApp, x1:Float,y1:Float,x2:Float,y2:Float,x3:Float, y3:Float):Void{
		return Graphics.triangle(x1,y1,x2,y2,x3, y3);
	}
	inline static public function circle(_:BaseApp, x:Float,y:Float, radius:Float):Void{
		return Graphics.circle(x,y, radius);
	}
	inline static public function ellipse(_:BaseApp, x:Float, y:Float, width:Float, height:Float):Void{
		return Graphics.ellipse(x, y, width, height);
	}
	inline static public function line(_:BaseApp, x1:Float, y1:Float, x2:Float, y2:Float):Void {
		return Graphics.line(x1, y1, x2, y2);
	}
	inline static public function rect(_:BaseApp, x1:Float, y1:Float, w:Float, h:Float):Void {
		return Graphics.rect(x1, y1, w, h);
	}
	
	inline static public function setCircleResolution(_:BaseApp, res:Int):Void{
		return Graphics.setCircleResolution(res);
	}  		

	inline static public function curve(_:BaseApp, x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Void{
		return Graphics.curve(x0, y0, x1, y1, x2, y2, x3, y3);
	}
	inline static public function bezier(_:BaseApp, x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Void{
		return Graphics.bezier(x0, y0, x1, y1, x2, y2, x3, y3);
	}

	inline static public function noFill(_:BaseApp):Void{
		return Graphics.noFill();
	}
	inline static public function fill(_:BaseApp):Void{
		return Graphics.fill();
	}

	inline static public function setLineWidth(_:BaseApp, lineWidth:Float):Void{
		return Graphics.setLineWidth(lineWidth);
	}
	
	inline static public function setColor(_:BaseApp, rOrHex:Int, ?g:Int, ?b:Int, ?a:Int):Void{
		return Graphics.setColor(rOrHex, g, b, a);
	}

	inline static public function enableAlphaBlending(_:BaseApp):Void{
		return Graphics.enableAlphaBlending();
	}  
	inline static public function disableAlphaBlending(_:BaseApp):Void{
		return Graphics.disableAlphaBlending();
	}

	inline static public function enableSmoothing(_:BaseApp):Void{
		return Graphics.enableSmoothing();
	}
	inline static public function disableSmoothing(_:BaseApp):Void{
		return Graphics.disableSmoothing();
	}
	
	inline static public function getStyle(_:BaseApp):Style {
		return Graphics.getStyle();
	}
	inline static public function setStyle(_:BaseApp, style:Style):Void {
		return Graphics.setStyle(style);
	}
	
	inline static public function pushStyle(_:BaseApp):Void{
		return Graphics.pushStyle();
	}
	inline static public function popStyle(_:BaseApp):Void{
		return Graphics.popStyle();
	}
	
	inline static public function pushMatrix(_:BaseApp):Void{
		return Graphics.pushMatrix();
	}
	inline static public function popMatrix(_:BaseApp):Void{
		return Graphics.popMatrix();
	}
	inline static public function translate(_:BaseApp, x:Float, y:Float, z:Float = 0):Void{
		return Graphics.translate(x, y, z);
	}
	inline static public function scale(_:BaseApp, xAmnt:Float, yAmnt:Float, zAmnt:Float = 1):Void{
		return Graphics.scale(xAmnt, yAmnt, zAmnt);
	}
	inline static public function rotate(_:BaseApp, degrees:Float, ?vecX:Float, ?vecY:Float, ?vecZ:Float):Void{
		return Graphics.rotate(degrees, vecX, vecY, vecZ);
	}
	inline static public function rotateX(_:BaseApp, degrees:Float):Void{
		return Graphics.rotateX(degrees);
	}
	inline static public function rotateY(_:BaseApp, degrees:Float):Void{
		return Graphics.rotateY(degrees);
	}
	inline static public function rotateZ(_:BaseApp, degrees:Float):Void{
		return Graphics.rotateZ(degrees);
	}

	inline static public function drawBitmapString(_:BaseApp, textString:String, x:Float, y:Float):Void{
		return Graphics.drawBitmapString(textString, x, y);
	}

	inline static public function setupGraphicDefaults(_:BaseApp):Void{
		return Graphics.setupGraphicDefaults();
	}
	inline static public function setupScreen(_:BaseApp):Void{
		return Graphics.setupScreen();
	}

	inline static public function curveVertex(_:BaseApp, x:Float, y:Float):Void{
		return Graphics.curveVertex(x, y);
	}
	inline static public function bezierVertex(_:BaseApp, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Void{
		return Graphics.bezierVertex(x1, y1, x2, y2, x3, y3);
	}

	inline static public function setPolyMode(_:BaseApp, mode:Int):Void{
		return Graphics.setPolyMode(mode);
	}	
	inline static public function beginShape(_:BaseApp):Void{
		return Graphics.beginShape();
	}
	inline static public function vertex(_:BaseApp, x:Float, y:Float):Void{
		return Graphics.vertex(x, y);
	}
	inline static public function endShape(_:BaseApp, bClose:Bool = false):Void{
		return Graphics.endShape(bClose);
	}
	
	inline static public function nextContour(_:BaseApp, bClose:Bool = false):Void{
		return Graphics.nextContour(bClose);
	}
}