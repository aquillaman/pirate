package model
{
	import flash.sampler.NewObjectSample;

	public class FieldModel extends BaseModel
	{
		private var _field:Vector.< Vector.<CellModell> >;
		
		public function FieldModel()
		{
			init();
		}
		
		private function init():void{
			var fWidth	: uint = 10;
			var fHeight	: uint = 10;
			
			_field =  new Vector.<Vector.<CellModell>>();
			
			for (var i:int = 0; i < fWidth; i++) 
			{
				var line:Vector.<CellModell> = new Vector.<CellModell>();
				for (var j:int = 0; j < fHeight; j++) 
				{
					line.push(new CellModell());
				}
				_field.push(line);
			}
			
		}
		
		public function get field():Vector.<Vector.<CellModell>>{
			return _field;
		}
	}
}