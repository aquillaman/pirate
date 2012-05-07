package
{
	import flash.display.Sprite;
	
	import managers.LayerManager;
	
	[SWF(height="400", width="400", backgroundColor="0xEEEEEE")]
	
	public class app extends Sprite
	{
		private var mailnApp:Pirate;
		
		public static var layerManager:LayerManager = new LayerManager();
		
		public function app()
		{
			layerManager.registerStage(this.stage);
			mailnApp = new Pirate();
		}
	}
}