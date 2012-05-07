package
{
	import flash.display.Sprite;
	
	import managers.LayerManager;
	
	import models.FieldModel;
	import models.WalkerModel;
	
	import views.FieldView;
	import views.WalkerView;
	
	[SWF(height="400", width="400", backgroundColor="0xEEEEEE")]
	
	public class Pirate extends Sprite{
		public function Pirate()
		{
			init();
		}
		
		private function init():void{
			app.layerManager.mapLayer.addChild(FieldView.create(new FieldModel()));
			
			app.layerManager.walkersLayer.addChild(WalkerView.create(new FieldModel()));
		}
	}
}