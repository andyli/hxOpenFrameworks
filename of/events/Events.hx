package of.events;

import of.app.AppRunner;
import of.app.BaseApp;
import hsl.haxe.Signaler;
import hsl.haxe.DirectSignaler;

typedef EventArgs = {};

typedef KeyEventArgs = { >EventArgs,
	var key:Int;
};

typedef MouseEventArgs = { >EventArgs,
	var x:Int;
	var y:Int;
	var button:Null<Int>;
};

typedef TouchEventArgs = { >EventArgs,
	var id:Int;
	var time:Int;
	var x:Float;
	var y:Float;
	var numTouches:Int;
	var width:Float;
	var height:Float;
	var angle:Float;
	var minoraxis:Float;
	var majoraxis:Float;
	var pressure:Float;
	var xspeed:Float;
	var yspeed:Float;
	var xaccel:Float;
	var yaccel:Float;
};

typedef AudioEventArgs = { >EventArgs,
	var buffer:Array<Float>;
	var bufferSize:Int;
	var nChannels:Int;
};

typedef ResizeEventArgs = { >EventArgs,
	var width:Int;
	var height:Int;
};

class Events {
	public function new(subject:BaseApp):Void {
		setup = new DirectSignaler<EventArgs>(subject);
		update = new DirectSignaler<EventArgs>(subject);
		draw = new DirectSignaler<EventArgs>(subject);
		exit = new DirectSignaler<EventArgs>(subject);
		windowResized = new DirectSignaler<ResizeEventArgs>(subject);

		keyPressed = new DirectSignaler<KeyEventArgs>(subject);
		keyReleased = new DirectSignaler<KeyEventArgs>(subject);

		mouseMoved = new DirectSignaler<MouseEventArgs>(subject);
		mouseDragged = new DirectSignaler<MouseEventArgs>(subject);
		mousePressed = new DirectSignaler<MouseEventArgs>(subject);
		mouseReleased = new DirectSignaler<MouseEventArgs>(subject);

		audioReceived = new DirectSignaler<AudioEventArgs>(subject);
		audioRequested = new DirectSignaler<AudioEventArgs>(subject);

		touchDown = new DirectSignaler<TouchEventArgs>(subject);
		touchUp = new DirectSignaler<TouchEventArgs>(subject);
		touchMoved = new DirectSignaler<TouchEventArgs>(subject);
		touchDoubleTap = new DirectSignaler<TouchEventArgs>(subject);
	}
	
	public var setup(default,null):Signaler<EventArgs> ;
	public var update(default,null):Signaler<EventArgs> ;
	public var draw(default,null):Signaler<EventArgs> ;
	public var exit(default,null):Signaler<EventArgs> ;
	public var windowResized(default,null):Signaler<ResizeEventArgs> ;

	public var keyPressed(default,null):Signaler<KeyEventArgs> ;
	public var keyReleased(default,null):Signaler<KeyEventArgs> ;

	public var mouseMoved(default,null):Signaler<MouseEventArgs> ;
	public var mouseDragged(default,null):Signaler<MouseEventArgs> ;
	public var mousePressed(default,null):Signaler<MouseEventArgs> ;
	public var mouseReleased(default,null):Signaler<MouseEventArgs> ;

	public var audioReceived(default,null):Signaler<AudioEventArgs> ;
	public var audioRequested(default,null):Signaler<AudioEventArgs> ;

	public var touchDown(default,null):Signaler<TouchEventArgs> ;
	public var touchUp(default,null):Signaler<TouchEventArgs> ;
	public var touchMoved(default,null):Signaler<TouchEventArgs> ;
	public var touchDoubleTap(default,null):Signaler<TouchEventArgs> ;
}