package
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	import managers.LayerManager;
	
	import mediators.WalkerMediator;
	
	import models.FieldModel;
	import models.WalkerModel;
	
	import utils.TestButton;
	
	import views.FieldView;
	import views.WalkerView;
	
	[SWF(height="400", width="400", backgroundColor="0xEEEEEE")]
	
	public class Pirate extends Sprite{
		private var walker:WalkerModel;
		private var walkerMdr:WalkerMediator;
		private var field:FieldModel;
		
		private var btn:TestButton;
		
		public function Pirate()
		{
			init();
		}
		
		private function init():void{
			app.layerManager.mapLayer.addChild(FieldView.create(field = new FieldModel()));
			app.layerManager.walkersLayer.addChild(new WalkerView(walker = new WalkerModel()));
			
			walkerMdr = WalkerMediator.create(walker, field);
			
			app.layerManager.btnsLayer.addChild(btn = TestButton.factory(new Point(0,250), "Do some With walker"));
			btn.addEventListener(MouseEvent.CLICK, function onClick(event:MouseEvent):void{
				walkerMdr.walk();
			});
		}
	}
}