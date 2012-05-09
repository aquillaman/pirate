package views
{
	import events.ExtendedEvent;
	import events.ModelEvent;
	
	import models.WalkerModel;
	
	import utils.UiUtil;

	public class WalkerView extends BaseView
	{
		private var walker:WalkerModel;
		
		public function WalkerView(walker:WalkerModel)
		{
			this.walker = walker;
			super();
			makeStroke();
			
			this.walker.addEventListener(ModelEvent.CHANGE_EVENT, onModelChanged);
		}
		
		private function onModelChanged(event:ExtendedEvent):void{
			this.x = walker._X*this.width;
			this.y = walker._Y*this.height;
		}
		
		private function makeStroke():void
		{
			addChild(UiUtil.getFilledSquare(20,20, 0xFF0000));
		}
	}
}