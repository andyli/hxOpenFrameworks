package of.events;

import of.app.AppRunner;
import of.app.BaseApp;
import hsl.haxe.DirectSignaler;

typedef Event<T> = DirectSignaler<T>;

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
		setup = new Event<EventArgs>(subject);
		update = new Event<EventArgs>(subject);
		draw = new Event<EventArgs>(subject);
		exit = new Event<EventArgs>(subject);
		windowResized = new Event<ResizeEventArgs>(subject);

		keyPressed = new Event<KeyEventArgs>(subject);
		keyReleased = new Event<KeyEventArgs>(subject);

		mouseMoved = new Event<MouseEventArgs>(subject);
		mouseDragged = new Event<MouseEventArgs>(subject);
		mousePressed = new Event<MouseEventArgs>(subject);
		mouseReleased = new Event<MouseEventArgs>(subject);

		audioReceived = new Event<AudioEventArgs>(subject);
		audioRequested = new Event<AudioEventArgs>(subject);
/*
		touchDown = new Event<TouchEventArgs>(subject);
		touchUp = new Event<TouchEventArgs>(subject);
		touchMoved = new Event<TouchEventArgs>(subject);
		touchDoubleTap = new Event<TouchEventArgs>(subject);
*/
	}
	
	public var setup(default,null):Event<EventArgs> ;
	public var update(default,null):Event<EventArgs> ;
	public var draw(default,null):Event<EventArgs> ;
	public var exit(default,null):Event<EventArgs> ;
	public var windowResized(default,null):Event<ResizeEventArgs> ;

	public var keyPressed(default,null):Event<KeyEventArgs> ;
	public var keyReleased(default,null):Event<KeyEventArgs> ;

	public var mouseMoved(default,null):Event<MouseEventArgs> ;
	public var mouseDragged(default,null):Event<MouseEventArgs> ;
	public var mousePressed(default,null):Event<MouseEventArgs> ;
	public var mouseReleased(default,null):Event<MouseEventArgs> ;

	public var audioReceived(default,null):Event<AudioEventArgs> ;
	public var audioRequested(default,null):Event<AudioEventArgs> ;
/*
	public var touchDown(default,null):Event<TouchEventArgs> ;
	public var touchUp(default,null):Event<TouchEventArgs> ;
	public var touchMoved(default,null):Event<TouchEventArgs> ;
	public var touchDoubleTap(default,null):Event<TouchEventArgs> ;
*/
}