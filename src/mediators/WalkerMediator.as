package mediators
{
	import flashx.textLayout.utils.CharacterUtil;
	
	import models.BaseModel;
	import models.FieldModel;
	import models.WalkerModel;
	import models.nodes.NodeModell;
	

	public class WalkerMediator extends ModelMediator
	{
		public var model		:WalkerModel;
		public var field		:FieldModel;
		
		public function WalkerMediator()
		{
			super();
		}
		
		public static function create(model:WalkerModel, field:FieldModel):WalkerMediator{
			var med:WalkerMediator = new WalkerMediator();
			med.model = model;
			med.field = field;
			
			return med;
		}
		
		public function walk():void{
			model._X += 1;
			model._Y += 1;
			
			if(model._X > field.field.length-1) model._X=0;
			if(model._Y > field.field[0].length-1) model._Y=0;

//			map.length; 		// width
//			map[0].length; 		// height
//			map[model._X+1];
//			map[model._X+1][model._Y+1];
			
			model.changed();
		}
	}
}