package of.events;

import of.app.BaseApp;
import of.events.Events;

class EventUtils {
	static public function addListener<T>(app:BaseApp, event:Event<T>, listenerMethod:T->Dynamic):Void{
		event.bind(listenerMethod);
	}
	
	static public function removeListener<T>(app:BaseApp, event:Event<T>, listenerMethod:T->Dynamic):Void{
		event.unbind(listenerMethod);
	}
	
	static public function notifyEvent<T>(app:BaseApp, event:Event<T>, arguments:T):Void{
		event.dispatch(arguments);
	}
}