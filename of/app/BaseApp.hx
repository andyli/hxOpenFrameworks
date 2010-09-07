package of.app;

import cpp.Lib;
import of.utils.Utils;

class BaseApp 
{
		public function new():Void {
            __handle = _ofBaseApp_new();
			Lib.load("hxOpenFrameworks", "_ofBaseApp_setHandle", 2)(__handle, this);
        }

		public function setup():Void {}
		public function update():Void {}
		public function draw():Void {}
		public function exit():Void {}


		public function windowResized(w:Int, h:Int):Void {}
		public function keyPressed( key:Int ):Void {}
		public function keyReleased( key:Int ):Void {}
		public function mouseMoved( x:Int, y:Int ):Void {}
		public function mouseDragged( x:Int, y:Int, button:Int ):Void {}
		public function mousePressed( x:Int, y:Int, button:Int ):Void {}
		public function mouseReleased( ?x:Int, ?y:Int, ?button:Int ):Void {}

		//public function audioReceived( float * input, int bufferSize, int nChannels ):Void{}
		//public function audioRequested( float * output, int bufferSize, int nChannels ):Void{}

		// for processing heads
		public var mouseX(__getMouseX, null):Int;
		public var mouseY(__getMouseY, null):Int;
		
		public var __handle(default, null):Dynamic;

		function __getMouseX():Int {
			return _ofBaseApp_getMouseX(__handle);
		}
		function __getMouseY():Int {
			return _ofBaseApp_getMouseY(__handle);
		}
		
		function __mouseDragged( args: { x:Int, y:Int, button:Int } ):Void {
			mouseDragged(args.x, args.y, args.button);
		}
		
		function __mousePressed( args: { x:Int, y:Int, button:Int } ):Void {
			mousePressed(args.x, args.y, args.button);
		}
		
		function __mouseReleased( args: { x:Int, y:Int, button:Int } ):Void {
			mouseReleased(args.x, args.y, args.button);
		}
		
		
		static var _ofBaseApp_new = Lib.load("hxOpenFrameworks", "_ofBaseApp_new", 0);
		static var _ofBaseApp_getMouseX = Lib.load("hxOpenFrameworks", "_ofBaseApp_getMouseX", 1);
		static var _ofBaseApp_getMouseY = Lib.load("hxOpenFrameworks", "_ofBaseApp_getMouseY", 1);
}
