package managers
{
	import flash.display.Sprite;
	import flash.display.Stage;
	
	public class LayerManager extends Sprite
	{
		public var mapLayer:Sprite;
		public var walkersLayer:Sprite;
		
		public var btnsLayer:Sprite;
		
		private var _stage:Stage;
		
		public function LayerManager()
		{
			super();
		}
		
		public function registerStage(stage:Stage):void{
			this._stage = stage;
			
			this._stage.addChild(mapLayer = new Sprite());
			this._stage.addChild(walkersLayer = new Sprite());
			this._stage.addChild(btnsLayer = new Sprite());
			
		}
	}
}