package events
{
	import flash.events.Event;
	
	public class ExtendedEvent extends Event
	{
		public var data:*;
		
		public function ExtendedEvent(type:String, data:*=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			this.data = data;
			super(type, bubbles, cancelable);
		}
	}
}