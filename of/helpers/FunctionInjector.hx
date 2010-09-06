package of.helpers;

import of.app.BaseApp;
import of.app.AppRunner;
import of.app.AppGlutWindow;
import of.graphics.Graphics;
import of.utils.Utils;
import of.utils.Types;

class FunctionInjector 
{	
	inline static public function runApp(_:Dynamic, app:BaseApp):Void {
		return AppRunner.runApp(app);
	}
	
	inline static public function setupOpenGL(_:Dynamic, window:AppGlutWindow, w:Int, h:Int, screenMode:Int):Void {
		return AppRunner.setupOpenGL(window, w, h, screenMode);
	}
	
	inline static public function getAppPtr(_:Dynamic):BaseApp {
		return AppRunner.getAppPtr();
	}
	
	inline static public function getWindowPtr(_:Dynamic):AppGlutWindow {
		return AppRunner.getWindowPtr();
	}
	
	inline static public function getFrameRate(_:Dynamic):Float{
		return AppRunner.getFrameRate();
	}
	
	inline static public function getFrameNum(_:Dynamic):Int{
		return AppRunner.getFrameNum();
	}
	
	inline static public function setFrameRate(_:Dynamic, targetRate:Int):Void{
		return AppRunner.setFrameRate(targetRate);
	}
	
	inline static public function sleepMillis(_:Dynamic, millis:Int):Void{
		return AppRunner.sleepMillis(millis);
	}
	
	inline static public function getLastFrameTime(_:Dynamic):Float{
		return AppRunner.getLastFrameTime();
	}
	
	inline static public function hideCursor(_:Dynamic):Void{
		return AppRunner.hideCursor();
	}
	
	inline static public function showCursor(_:Dynamic):Void{
		return AppRunner.showCursor();
	}
	
	inline static public function getWindowPositionX(_:Dynamic):Int{
		return AppRunner.getWindowPositionX();
	}
	
	inline static public function getWindowPositionY(_:Dynamic):Int{
		return AppRunner.getWindowPositionY();
	}
	
	inline static public function getScreenWidth(_:Dynamic):Int{
		return AppRunner.getScreenWidth();
	}
	
	inline static public function getScreenHeight(_:Dynamic):Int{
		return AppRunner.getScreenHeight();
	}
	
	inline static public function getWindowMode(_:Dynamic):Int{
		return AppRunner.getWindowMode();
	}
	
	inline static public function getWidth(_:Dynamic):Int{
		return AppRunner.getWidth();
	}
	
	inline static public function getHeight(_:Dynamic):Int{
		return AppRunner.getHeight();
	}

	
	inline static public function setWindowPosition(_:Dynamic, x:Int, y:Int):Void{
		return AppRunner.setWindowPosition(x, y);
	}
	
	inline static public function setWindowShape(_:Dynamic, width:Int, height:Int):Void{
		return AppRunner.setWindowShape(width, height);
	}
	
	inline static public function setWindowTitle(_:Dynamic, title:String):Void{
		return AppRunner.setWindowTitle(title);
	}
	
	inline static public function enableSetupScreen(_:Dynamic):Void{
		return AppRunner.enableSetupScreen();
	}
	
	inline static public function disableSetupScreen(_:Dynamic):Void{
		return AppRunner.disableSetupScreen();
	}
	
	inline static public function setFullscreen(_:Dynamic, fullscreen:Bool):Void{
		return AppRunner.setFullscreen(fullscreen);
	}
	
	inline static public function toggleFullscreen(_:Dynamic):Void{
		return AppRunner.toggleFullscreen();
	}
	
	inline static public function setVerticalSync(_:Dynamic, bSync:Bool):Void{
		return AppRunner.setVerticalSync(bSync);
	}
	
	inline static public function nextPow2(_:Dynamic, input:Int):Int {
		return Utils.nextPow2(input);
	}
	
	inline static public function resetElapsedTimeCounter(_:Dynamic):Void {
		return Utils.resetElapsedTimeCounter();
	}
	
	inline static public function getElapsedTimef(_:Dynamic):Float {
		return Utils.getElapsedTimef();
	}
	
	inline static public function getElapsedTimeMillis(_:Dynamic):Int {
		return Utils.getElapsedTimeMillis();
	}
	
	inline static public function getSeconds(_:Dynamic):Int {
		return Utils.getSeconds();
	}
	
	inline static public function getMinutes(_:Dynamic):Int {
		return Utils.getMinutes();
	}
	
	inline static public function getHours(_:Dynamic):Int {
		return Utils.getHours();
	}
	
	inline static public function getSystemTime(_:Dynamic):Float {
		return Utils.getSystemTime();
	}
	
	inline static public function getYear(_:Dynamic):Int {
		return Utils.getYear();
	}
	
	inline static public function getMonth(_:Dynamic):Int {
		return Utils.getMonth();
	}
	
	inline static public function getDay(_:Dynamic):Int {
		return Utils.getDay();
	}
	
	inline static public function getWeekday(_:Dynamic):Int {
		return Utils.getWeekday();
	}
	
	inline static public function launchBrowser(_:Dynamic, url:String):Void {
		return Utils.launchBrowser(url);
	}
	
	inline static public function enableDataPath(_:Dynamic):Void {
		return Utils.enableDataPath();
	}
	
	inline static public function disableDataPath(_:Dynamic):Void {
		return Utils.disableDataPath();
	}
	
	inline static public function toDataPath(_:Dynamic, path:String, ?absolute:Bool = false):String {
		return Utils.toDataPath(path, absolute);
	}
	
	inline static public function setDataPathRoot(_:Dynamic,  root:String ):Void {
		return Utils.setDataPathRoot( root );
	}
	
	inline static public function toString(_:Dynamic, value:Float, ?precision:Int = 7):String {
		return Utils.toString(value, precision);
	}

	inline static public function toInt(_:Dynamic, intString:String):Int {
		return Utils.toInt(intString);
	}
	
	inline static public function toFloat(_:Dynamic, floatString:String):Float {
		return Utils.toFloat(floatString);
	}
	
	inline static public function getVersionInfo(_:Dynamic):String {
		return Utils.getVersionInfo();
	}
	
	inline static public function saveScreen(_:Dynamic, filename:String):Void {
		return Utils.saveScreen(filename);
	}
	
	inline static public function saveFrame(_:Dynamic):Void {
		return Utils.saveFrame();
	}
	
	inline static public function splitString(_:Dynamic, text:String, delimiter:String):Array<String> {
		return Utils.splitString(text, delimiter);
	}
	
	inline static public function setLogLevel(_:Dynamic, logLevel:Int):Void {
		return Utils.setLogLevel(logLevel);
	}
	
	inline static public function log(_:Dynamic, logLevel:Int, message:String):Void {
		return Utils.log(logLevel, message);
	}
	
	inline static public function setConsoleColor(_:Dynamic, color:Int):Void {
		return Utils.setConsoleColor(color);
	}
	
	inline static public function restoreConsoleColor(_:Dynamic):Void {
		return Utils.restoreConsoleColor();
	}
	
	inline static public function seedRandom(_:Dynamic, ?val:Int):Void {
		return of.utils.Math.seedRandom(val);
	}
	
	inline static public function random(_:Dynamic, val0:Float, val1:Float):Float {
		return of.utils.Math.random(val0, val1);
	}
	
	inline static public function randomf(_:Dynamic):Float {
		return of.utils.Math.randomf();
	}
	
	inline static public function randomuf(_:Dynamic):Float {
		return of.utils.Math.randomuf();
	}

	inline static public function normalize(_:Dynamic, value:Float, min:Float, max:Float):Float {
		return of.utils.Math.normalize(value, min, max);
	}
	
	inline static public function map(_:Dynamic, value:Float, inputMin:Float, inputMax:Float, outputMin:Float, outputMax:Float, clamp:Bool = false):Float {
		return of.utils.Math.map(value, inputMin, inputMax, outputMin, outputMax, clamp);
	}
	
	inline static public function clamp(_:Dynamic, value:Float, min:Float, max:Float):Float {
		return of.utils.Math.clamp(value, min, max);
	}
	
	inline static public function lerp(_:Dynamic, start:Float, stop:Float, amt:Float):Float {
		return of.utils.Math.lerp(start, stop, amt);
	}
	
	inline static public function dist(_:Dynamic, x1:Float, y1:Float, x2:Float, y2:Float):Float {
		return of.utils.Math.dist(x1, y1, x2, y2);
	}
	
	inline static public function distSquared(_:Dynamic, x1:Float, y1:Float, x2:Float, y2:Float):Float {
		return of.utils.Math.distSquared(x1, y1, x2, y2);
	}
	
	inline static public function sign(_:Dynamic, n:Float):Int {
		return of.utils.Math.sign(n);
	}
	
	inline static public function inRange(_:Dynamic, t:Float, min:Float, max:Float):Bool {
		return of.utils.Math.inRange(t, min, max);
	}
	
	inline static public function radToDeg(_:Dynamic, radians:Float):Float {
		return of.utils.Math.radToDeg(radians);
	}
	
	inline static public function degToRad(_:Dynamic, degrees:Float):Float {
		return of.utils.Math.degToRad(degrees);
	}
	
	inline static public function randomWidth(_:Dynamic):Float {
		return of.utils.Math.randomWidth();
	}
	
	inline static public function randomHeight(_:Dynamic):Float {
		return of.utils.Math.randomHeight();
	}

	inline static public function noise(_:Dynamic, x:Float, ?y:Float, ?z:Float, ?w:Float):Float {
		return of.utils.Math.noise(x, y, z, w);
	}
	
	inline static public function signedNoise(_:Dynamic, x:Float, ?y:Float, ?z:Float, ?w:Float):Float {
		return of.utils.Math.signedNoise(x, y, z, w);
	}
	
	inline static public function abs(_:Dynamic, v:Float):Float{
		return Math.abs(v);
	}
	inline static public function min(_:Dynamic, a:Float,b:Float):Float{
		return Math.min(a,b);
	}
	inline static public function max(_:Dynamic, a:Float,b:Float):Float{
		return Math.max(a,b);
	}
	inline static public function sin(_:Dynamic, v:Float):Float{
		return Math.sin(v);
	}
	inline static public function cos(_:Dynamic, v:Float):Float{
		return Math.cos(v);
	}
	inline static public function atan2(_:Dynamic, y:Float,x:Float):Float{
		return Math.atan2(y,x);
	}
	inline static public function tan(_:Dynamic, v:Float):Float{
		return Math.tan(v);
	}
	inline static public function exp(_:Dynamic, v:Float):Float{
		return Math.exp(v);
	}
	inline static public function sqrt(_:Dynamic, v:Float):Float{
		return Math.sqrt(v);
	}
	inline static public function round(_:Dynamic, v:Float):Int{
		return Math.round(v);
	}
	inline static public function floor(_:Dynamic, v:Float):Int{
		return Math.floor(v);
	}
	inline static public function ceil(_:Dynamic, v:Float):Int{
		return Math.ceil(v);
	}
	inline static public function atan(_:Dynamic, v:Float):Float{
		return Math.atan(v);
	}
	inline static public function asin(_:Dynamic, v:Float):Float{
		return Math.asin(v);
	}
	inline static public function acos(_:Dynamic, v:Float):Float{
		return Math.acos(v);
	}
	inline static public function pow(_:Dynamic, v:Float,exp:Float):Float{
		return Math.pow(v,exp);
	}
	
	inline static public function background(_:Dynamic, r:Int, g:Int, b:Int):Void{
		return Graphics.background(r, g, b);
	}

	inline static public function setBackgroundAuto(_:Dynamic, bManual:Bool):Void{
		return Graphics.setBackgroundAuto(bManual);
	}
	inline static public function setRectMode(_:Dynamic, mode:Int):Void{
		return Graphics.setRectMode(mode);
	}		

	inline static public function getUsingArbTex(_:Dynamic):Bool {
		return Graphics.getUsingArbTex();
	}
	inline static public function enableArbTex(_:Dynamic):Void{
		return Graphics.enableArbTex();
	}
	inline static public function disableArbTex(_:Dynamic):Void{
		return Graphics.disableArbTex();
	}

	inline static public function bClearBg(_:Dynamic):Bool {
		return Graphics.bClearBg();
	}
	
	inline static public function getRectMode(_:Dynamic):Int {
		return Graphics.getRectMode();
	}

	inline static public function setCurveResolution(_:Dynamic, res:Int):Void{
		return Graphics.setCurveResolution(res);
	}

	inline static public function triangle(_:Dynamic, x1:Float,y1:Float,x2:Float,y2:Float,x3:Float, y3:Float):Void{
		return Graphics.triangle(x1,y1,x2,y2,x3, y3);
	}
	inline static public function circle(_:Dynamic, x:Float,y:Float, radius:Float):Void{
		return Graphics.circle(x,y, radius);
	}
	inline static public function ellipse(_:Dynamic, x:Float, y:Float, width:Float, height:Float):Void{
		return Graphics.ellipse(x, y, width, height);
	}
	inline static public function line(_:Dynamic, x1:Float, y1:Float, x2:Float, y2:Float):Void {
		return Graphics.line(x1, y1, x2, y2);
	}
	inline static public function rect(_:Dynamic, x1:Float, y1:Float, w:Float, h:Float):Void {
		return Graphics.rect(x1, y1, w, h);
	}
	
	inline static public function setCircleResolution(_:Dynamic, res:Int):Void{
		return Graphics.setCircleResolution(res);
	}  		

	inline static public function curve(_:Dynamic, x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Void{
		return Graphics.curve(x0, y0, x1, y1, x2, y2, x3, y3);
	}
	inline static public function bezier(_:Dynamic, x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Void{
		return Graphics.bezier(x0, y0, x1, y1, x2, y2, x3, y3);
	}

	inline static public function noFill(_:Dynamic):Void{
		return Graphics.noFill();
	}
	inline static public function fill(_:Dynamic):Void{
		return Graphics.fill();
	}

	inline static public function setLineWidth(_:Dynamic, lineWidth:Float):Void{
		return Graphics.setLineWidth(lineWidth);
	}
	
	inline static public function setColor(_:Dynamic, rOrHex:Int, ?g:Int, ?b:Int, ?a:Int):Void{
		return Graphics.setColor(rOrHex, g, b, a);
	}

	inline static public function enableAlphaBlending(_:Dynamic):Void{
		return Graphics.enableAlphaBlending();
	}  
	inline static public function disableAlphaBlending(_:Dynamic):Void{
		return Graphics.disableAlphaBlending();
	}

	inline static public function enableSmoothing(_:Dynamic):Void{
		return Graphics.enableSmoothing();
	}
	inline static public function disableSmoothing(_:Dynamic):Void{
		return Graphics.disableSmoothing();
	}
	
	inline static public function getStyle(_:Dynamic):Style {
		return Graphics.getStyle();
	}
	inline static public function setStyle(_:Dynamic, style:Style):Void {
		return Graphics.setStyle(style);
	}
	
	inline static public function pushStyle(_:Dynamic):Void{
		return Graphics.pushStyle();
	}
	inline static public function popStyle(_:Dynamic):Void{
		return Graphics.popStyle();
	}
	
	inline static public function pushMatrix(_:Dynamic):Void{
		return Graphics.pushMatrix();
	}
	inline static public function popMatrix(_:Dynamic):Void{
		return Graphics.popMatrix();
	}
	inline static public function translate(_:Dynamic, x:Float, y:Float, z:Float = 0):Void{
		return Graphics.translate(x, y, z);
	}
	inline static public function scale(_:Dynamic, xAmnt:Float, yAmnt:Float, zAmnt:Float = 1):Void{
		return Graphics.scale(xAmnt, yAmnt, zAmnt);
	}
	inline static public function rotate(_:Dynamic, degrees:Float, ?vecX:Float, ?vecY:Float, ?vecZ:Float):Void{
		return Graphics.rotate(degrees, vecX, vecY, vecZ);
	}
	inline static public function rotateX(_:Dynamic, degrees:Float):Void{
		return Graphics.rotateX(degrees);
	}
	inline static public function rotateY(_:Dynamic, degrees:Float):Void{
		return Graphics.rotateY(degrees);
	}
	inline static public function rotateZ(_:Dynamic, degrees:Float):Void{
		return Graphics.rotateZ(degrees);
	}

	inline static public function drawBitmapString(_:Dynamic, textString:String, x:Float, y:Float):Void{
		return Graphics.drawBitmapString(textString, x, y);
	}

	inline static public function setupGraphicDefaults(_:Dynamic):Void{
		return Graphics.setupGraphicDefaults();
	}
	inline static public function setupScreen(_:Dynamic):Void{
		return Graphics.setupScreen();
	}

	inline static public function curveVertex(_:Dynamic, x:Float, y:Float):Void{
		return Graphics.curveVertex(x, y);
	}
	inline static public function bezierVertex(_:Dynamic, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Void{
		return Graphics.bezierVertex(x1, y1, x2, y2, x3, y3);
	}

	inline static public function setPolyMode(_:Dynamic, mode:Int):Void{
		return Graphics.setPolyMode(mode);
	}	
	inline static public function beginShape(_:Dynamic):Void{
		return Graphics.beginShape();
	}
	inline static public function vertex(_:Dynamic, x:Float, y:Float):Void{
		return Graphics.vertex(x, y);
	}
	inline static public function endShape(_:Dynamic, bClose:Bool = false):Void{
		return Graphics.endShape(bClose);
	}
	
	inline static public function nextContour(_:Dynamic, bClose:Bool = false):Void{
		return Graphics.nextContour(bClose);
	}
}