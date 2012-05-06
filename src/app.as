package
{
	import flash.display.Sprite;
	
	[SWF(height="400", width="400", backgroundColor="0xEEEEEE")]
	
	public class app extends Sprite
	{
		private var mailnApp:Pirate;
		public function app()
		{
			stage.addChild(mailnApp = new Pirate());
		}
	}
}