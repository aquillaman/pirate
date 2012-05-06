package model
{
	public class FieldModel extends BaseModel
	{
		private var field:Array = [];
		
		public function FieldModel()
		{
			init();
		}
		
		private function init():void{
			var fWidth	: uint = 10;
			var fHeight	: uint = 10;
			
			for (var i:int = 0; i < fWidth; i++) 
			{
				var line:Array = [];
				for (var i:int = 0; i < fHeight; i++) 
				{
					line.push(new CellModell());
				}
				field.push(line);
			}
			
		}
	}
}