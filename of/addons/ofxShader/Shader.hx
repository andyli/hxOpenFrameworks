package of.addons.ofxShader;

import cpp.Lib;
import of.graphics.Texture;

class Shader 
{

	public function new():Void {
		__handle = _ofxShader_new();
	}
	
	public function setup(vertName:String, fragName:String = "", geomName:String = ""):Bool {
		return _ofxShader_setup(vertName, fragName, geomName);
	}
	
	// these are essential to call before linking the program with geometry shaders
	// type: GL_POINTS, GL_LINES, GL_LINES_ADJACENCY_EXT, GL_TRIANGLES, GL_TRIANGLES_ADJACENCY_EXT
	public function setGeometryInputType(type:Int):Void{
		_ofxShader_setGeometryInputType(__handle, type);
	}
	// type: GL_POINTS, GL_LINE_STRIP or GL_TRIANGLE_STRIP
	public function setGeometryOutputType(type:Int):Void{
		_ofxShader_setGeometryOutputType(__handle, type);
	}
	// set number of output vertices
	public function setGeometryOutputCount(count:Int):Void{
		_ofxShader_setGeometryOutputCount(__handle, count);
	}
	
	// returns maximum number of supported vertices
	public function getGeometryMaxOutputCount():Int{
		return _ofxShader_getGeometryMaxOutputCount(__handle);
	}


	
	public function unload():Void{
		_ofxShader_unload(__handle);
	}
	
	
	public function begin():Void{
		_ofxShader_begin(__handle);
	}
	
	public function end():Void{
		_ofxShader_end(__handle);
	}
	
	// set a texture reference
	public function setUniformTexture(name:String, img:Texture, textureLocation:Int):Void{
		_ofxShader_setUniformTexture(__handle, name, img.__handle, textureLocation);
	}
	
	// set a single uniform value
	public function setUniform1i(name:String, v1:Int):Void{
		_ofxShader_setUniform1i(__handle, name, v1);
	}
	
	public function setUniform2i(name:String, v1:Int, v2:Int):Void{
		_ofxShader_setUniform2i(__handle, name, v1, v2);
	}
	
	public function setUniform3i(name:String, v1:Int, v2:Int, v3:Int):Void{
		_ofxShader_setUniform3i(__handle, name, v1, v2, v3);
	}
	
	public function setUniform4i(name:String, v1:Int, v2:Int, v3:Int, v4:Int):Void{
		_ofxShader_setUniform4i(__handle, name, {val0:v1, val1:v2, val2:v3, val3:v4});
	}
	
	
	public function setUniform1f(name:String, v1:Float):Void{
		_ofxShader_setUniform1f(__handle, name, v1);
	}
	
	public function setUniform2f(name:String, v1:Float, v2:Float):Void{
		_ofxShader_setUniform2f(__handle, name, v1, v2);
	}
	
	public function setUniform3f(name:String, v1:Float, v2:Float, v3:Float):Void{
		_ofxShader_setUniform3f(__handle, name, v1, v2, v3);
	}
	
	public function setUniform4f(name:String, v1:Float, v2:Float, v3:Float, v4:Float):Void{
		_ofxShader_setUniform4f(__handle, name, {val0:v1, val1:v2, val2:v3, val3:v4});
	}
	
	// set an array of uniform values
	public function setUniform1iv(name:String, v:Array<Int>, count:Int = 1):Void{
		_ofxShader_setUniform1iv(__handle, name, v, count);
	}
	
	public function setUniform2iv(name:String, v:Array<Int>, count:Int = 1):Void{
		_ofxShader_setUniform2iv(__handle, name, v, count);
	}
	
	public function setUniform3iv(name:String, v:Array<Int>, count:Int = 1):Void{
		_ofxShader_setUniform3iv(__handle, name, v, count);
	}
	
	public function setUniform4iv(name:String, v:Array<Int>, count:Int = 1):Void{
		_ofxShader_setUniform4iv(__handle, name, v, count);
	}
	
	
	public function setUniform1fv(name:String, v:Array<Float>, count:Int = 1):Void{
		_ofxShader_setUniform1fv(__handle, name, v, count);
	}
	
	public function setUniform2fv(name:String, v:Array<Float>, count:Int = 1):Void{
		_ofxShader_setUniform2fv(__handle, name, v, count);
	}
	
	public function setUniform3fv(name:String, v:Array<Float>, count:Int = 1):Void{
		_ofxShader_setUniform3fv(__handle, name, v, count);
	}
	
	public function setUniform4fv(name:String, v:Array<Float>, count:Int = 1):Void{
		_ofxShader_setUniform4fv(__handle, name, v, count);
	}
	
	// set attributes that vary per vertex (look up the location before glBegin)
	public function getAttributeLocation(name:String):Int{
		return _ofxShader_getAttributeLocation(__handle, name);
	}
	
	
	public function setAttribute1s(location:Int, v1:Int):Void{
		_ofxShader_setAttribute1s(__handle, location, v1);
	}
	
	public function setAttribute2s(location:Int, v1:Int, v2:Int):Void{
		_ofxShader_setAttribute2s(__handle, location, v1, v2);
	}
	
	public function setAttribute3s(location:Int, v1:Int, v2:Int, v3:Int):Void{
		_ofxShader_setAttribute3s(__handle, location, v1, v2, v3);
	}
	
	public function setAttribute4s(location:Int, v1:Int, v2:Int, v3:Int, v4:Int):Void{
		_ofxShader_setAttribute4s(__handle, location, {val0:v1, val1:v2, val2:v3, val3:v4});
	}
	
	
	public function setAttribute1f(location:Int, v1:Float):Void{
		_ofxShader_setAttribute1f(__handle, location, v1);
	}
	
	public function setAttribute2f(location:Int, v1:Float, v2:Float):Void{
		_ofxShader_setAttribute2f(__handle, location, v1, v2);
	}
	
	public function setAttribute3f(location:Int, v1:Float, v2:Float, v3:Float):Void{
		_ofxShader_setAttribute3f(__handle, location, v1, v2, v3);
	}
	
	public function setAttribute4f(location:Int, v1:Float, v2:Float, v3:Float, v4:Float):Void{
		_ofxShader_setAttribute4f(__handle, location, {val0:v1, val1:v2, val2:v3, val3:v4});
	}
	
	
	public function setAttribute1d(location:Int, v1:Float):Void{
		_ofxShader_setAttribute1d(__handle, location, v1);
	}
	
	public function setAttribute2d(location:Int, v1:Float, v2:Float):Void{
		_ofxShader_setAttribute2d(__handle, location, v1, v2);
	}
	
	public function setAttribute3d(location:Int, v1:Float, v2:Float, v3:Float):Void{
		_ofxShader_setAttribute3d(__handle, location, v1, v2, v3);
	}
	
	public function setAttribute4d(location:Int, v1:Float, v2:Float, v3:Float, v4:Float):Void{
		_ofxShader_setAttribute4d(__handle, location, {val0:v1, val1:v2, val2:v3, val3:v4});
	}
	
	
	public function printActiveUniforms():Void{
		_ofxShader_printActiveUniforms(__handle);
	}
	
	public function printActiveAttributes():Void{
		_ofxShader_printActiveAttributes(__handle);
	}
	

	// advanced use
	
	// these methods create and compile a shader from source or file
	// type: GL_VERTEX_SHADER, GL_FRAGMENT_SHADER, GL_GEOMETRY_SHADER_EXT etc.
	public function setupShaderFromSource(type:Int, source:String):Bool{
		return _ofxShader_setupShaderFromSource(__handle, type, source);
	}
	
	public function setupShaderFromFile(type:Int, filename:String):Bool{
		return _ofxShader_setupShaderFromFile(__handle, type, filename);
	}
	
	// links program with all compiled shaders
	public function linkProgram():Bool{
		return _ofxShader_linkProgram(__handle);
	}

	
	public function getProgram():Int {
		return _ofxShader_getProgram(__handle);
	}
	
	public function getShader(type:Int):Int{
		return _ofxShader_getShader(__handle, type);
	}
	
	public var __handle(default, null):Dynamic;
	
	static var _ofxShader_new = Lib.load("hxOpenFrameworks", "_ofxShader_new", 0);
	static var _ofxShader_setup = Lib.load("hxOpenFrameworks", "_ofxShader_setup", 4);
	static var _ofxShader_setGeometryInputType = Lib.load("hxOpenFrameworks", "_ofxShader_setGeometryInputType", 2);
	static var _ofxShader_setGeometryOutputType = Lib.load("hxOpenFrameworks", "_ofxShader_setGeometryOutputType", 2);
	static var _ofxShader_setGeometryOutputCount = Lib.load("hxOpenFrameworks", "_ofxShader_setGeometryOutputCount", 2);
	static var _ofxShader_getGeometryMaxOutputCount = Lib.load("hxOpenFrameworks", "_ofxShader_getGeometryMaxOutputCount", 1);
	static var _ofxShader_unload = Lib.load("hxOpenFrameworks", "_ofxShader_unload", 1);
	static var _ofxShader_begin = Lib.load("hxOpenFrameworks", "_ofxShader_begin", 1);
	static var _ofxShader_end = Lib.load("hxOpenFrameworks", "_ofxShader_end", 1);
	static var _ofxShader_setUniformTexture = Lib.load("hxOpenFrameworks", "_ofxShader_setUniformTexture", 4);
	static var _ofxShader_setUniform1i = Lib.load("hxOpenFrameworks", "_ofxShader_setUniform1i", 3);
	static var _ofxShader_setUniform2i = Lib.load("hxOpenFrameworks", "_ofxShader_setUniform2i", 4);
	static var _ofxShader_setUniform3i = Lib.load("hxOpenFrameworks", "_ofxShader_setUniform3i", 5);
	static var _ofxShader_setUniform4i = Lib.load("hxOpenFrameworks", "_ofxShader_setUniform4i", 3);
	static var _ofxShader_setUniform1f = Lib.load("hxOpenFrameworks", "_ofxShader_setUniform1f", 3);
	static var _ofxShader_setUniform2f = Lib.load("hxOpenFrameworks", "_ofxShader_setUniform2f", 4);
	static var _ofxShader_setUniform3f = Lib.load("hxOpenFrameworks", "_ofxShader_setUniform3f", 5);
	static var _ofxShader_setUniform4f = Lib.load("hxOpenFrameworks", "_ofxShader_setUniform4f", 3);
	static var _ofxShader_setUniform1iv = Lib.load("hxOpenFrameworks", "_ofxShader_setUniform1iv", 4);
	static var _ofxShader_setUniform2iv = Lib.load("hxOpenFrameworks", "_ofxShader_setUniform2iv", 4);
	static var _ofxShader_setUniform3iv = Lib.load("hxOpenFrameworks", "_ofxShader_setUniform3iv", 4);
	static var _ofxShader_setUniform4iv = Lib.load("hxOpenFrameworks", "_ofxShader_setUniform4iv", 4);
	static var _ofxShader_setUniform1fv = Lib.load("hxOpenFrameworks", "_ofxShader_setUniform1fv", 4);
	static var _ofxShader_setUniform2fv = Lib.load("hxOpenFrameworks", "_ofxShader_setUniform2fv", 4);
	static var _ofxShader_setUniform3fv = Lib.load("hxOpenFrameworks", "_ofxShader_setUniform3fv", 4);
	static var _ofxShader_setUniform4fv = Lib.load("hxOpenFrameworks", "_ofxShader_setUniform4fv", 4);
	static var _ofxShader_getAttributeLocation = Lib.load("hxOpenFrameworks", "_ofxShader_getAttributeLocation", 2);
	static var _ofxShader_setAttribute1s = Lib.load("hxOpenFrameworks", "_ofxShader_setAttribute1s", 3);
	static var _ofxShader_setAttribute2s = Lib.load("hxOpenFrameworks", "_ofxShader_setAttribute2s", 4);
	static var _ofxShader_setAttribute3s = Lib.load("hxOpenFrameworks", "_ofxShader_setAttribute3s", 5);
	static var _ofxShader_setAttribute4s = Lib.load("hxOpenFrameworks", "_ofxShader_setAttribute4s", 3);
	static var _ofxShader_setAttribute1f = Lib.load("hxOpenFrameworks", "_ofxShader_setAttribute1f", 3);
	static var _ofxShader_setAttribute2f = Lib.load("hxOpenFrameworks", "_ofxShader_setAttribute2f", 4);
	static var _ofxShader_setAttribute3f = Lib.load("hxOpenFrameworks", "_ofxShader_setAttribute3f", 5);
	static var _ofxShader_setAttribute4f = Lib.load("hxOpenFrameworks", "_ofxShader_setAttribute4f", 3);
	static var _ofxShader_setAttribute1d = Lib.load("hxOpenFrameworks", "_ofxShader_setAttribute1d", 3);
	static var _ofxShader_setAttribute2d = Lib.load("hxOpenFrameworks", "_ofxShader_setAttribute2d", 4);
	static var _ofxShader_setAttribute3d = Lib.load("hxOpenFrameworks", "_ofxShader_setAttribute3d", 5);
	static var _ofxShader_setAttribute4d = Lib.load("hxOpenFrameworks", "_ofxShader_setAttribute4d", 3);
	static var _ofxShader_printActiveUniforms = Lib.load("hxOpenFrameworks", "_ofxShader_printActiveUniforms", 1);
	static var _ofxShader_printActiveAttributes = Lib.load("hxOpenFrameworks", "_ofxShader_printActiveAttributes", 1);
	static var _ofxShader_setupShaderFromSource = Lib.load("hxOpenFrameworks", "_ofxShader_setupShaderFromSource", 3);
	static var _ofxShader_setupShaderFromFile = Lib.load("hxOpenFrameworks", "_ofxShader_setupShaderFromFile", 3);
	static var _ofxShader_linkProgram = Lib.load("hxOpenFrameworks", "_ofxShader_linkProgram", 1);
	static var _ofxShader_getProgram = Lib.load("hxOpenFrameworks", "_ofxShader_getProgram", 1);
	static var _ofxShader_getShader = Lib.load("hxOpenFrameworks", "_ofxShader_getShader", 2);
}