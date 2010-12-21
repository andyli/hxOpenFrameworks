package of.examples;

import cpp.Lib;
import of.Context;
using of.Context.Functions;
using of.events.EventUtils;

/*
 * The OF event system is replaced by HSL(http://code.google.com/p/hxhsl/), which is a more stardard and better way to work with events.
 * Check out the HSL wiki for more in-depth info: http://code.google.com/p/hxhsl/w/list
 */

class AdvancedEventsExample extends BaseApp
{
	
	var evObject:EventsObject;

	var floatMsg:String;
	var intMsg:String;
	var expireMsg:String;

	var enabled:Bool;
	
	override public function setup():Void {
		background(50,50,50);

		enabled = false;
		
		evObject = new EventsObject(this);

		// add the newFloat method to listen for eventsAddon newFloatEvent
		// or you can use the HSL way: evObject.newFloatEvent.bind(newFloat);
		addListener(evObject.newFloatEvent,newFloat);

		// add the newFloat method to listen for eventsAddon newFloatEvent
		// or you can use the HSL way: evObject.newIntEvent.bind(newInt);
		addListener(evObject.newIntEvent,newInt);
	}
	
	override public function draw():Void {
		drawBitmapString(floatMsg,20,20);
		drawBitmapString(intMsg,20,40);
		drawBitmapString("click to enable/disable events",20,60);
	}

	function newFloat(f:Float):Void{
		floatMsg 	= "newFloat event:  " + toString(f);
	}

	function newInt(i:Int):Void{
		intMsg	 	= "newInt   event:  " + toString(i);
	}
	
	override public function mousePressed(x:Int, y:Int, button:Int):Void {
		if(enabled)
			evObject.disable();
		else
			evObject.enable();

		enabled=!enabled;
	}
	
	public static function main():Void {
		AppRunner.setupOpenGL(new of.app.AppGlutWindow(), 1024, 768, Constants.OF_WINDOW);
		AppRunner.runApp(new AdvancedEventsExample());
	}
}

class EventsObject {
	public var newFloatEvent:Event<Float>;
	public var newIntEvent:Event<Int>;
	var counter:Float;
	var app:BaseApp;
	
	public function new(app:BaseApp):Void {
		newFloatEvent = new Event<Float>(this);
		newIntEvent = new Event<Int>(this);
	    counter = 0;
		this.app = app;
	}

	public function enable():Void{
		app.events.update.bind(update);
	}

	public function disable():Void{
	    app.events.update.unbind(update);
	}

	public function update(args:EventArgs):Void{
		counter += 0.3;
		
		var intCounter = Std.int(counter);
		
		newFloatEvent.dispatch(counter);
		newIntEvent.dispatch(intCounter);
	}
}
