package models
{
	import events.ExtendedEvent;
	import events.ModelEvent;
	
	import flash.events.EventDispatcher;

	public class BaseModel extends EventDispatcher
	{
		public function changed():void{
			dispatchEvent(new ExtendedEvent(ModelEvent.CHANGE_EVENT));
		}
	}
}