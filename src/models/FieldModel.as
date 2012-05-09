package models
{
	import flash.sampler.NewObjectSample;
	import models.nodes.NodeModell;

	public class FieldModel extends BaseModel
	{
		private var _field:Vector.< Vector.<NodeModell> >;
		
		public function FieldModel()
		{
			init();
		}
		
		private function init():void{
			var fWidth	: uint = 10;
			var fHeight	: uint = 10;
			
			_field =  new Vector.<Vector.<NodeModell>>();
			
			for (var i:int = 0; i < fWidth; i++) 
			{
				var line:Vector.<NodeModell> = new Vector.<NodeModell>();
				for (var j:int = 0; j < fHeight; j++) 
				{
					line.push(new NodeModell(i,j));
				}
				_field.push(line);
			}
			
		}
		
		public function get field():Vector.<Vector.<NodeModell>>{
			return _field;
		}
	}
}