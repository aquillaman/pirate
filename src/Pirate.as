package
{
	import flash.display.Sprite;
	
	import model.FieldModel;
	
	import view.FieldView;
	
	public class Pirate extends Sprite{
		public function Pirate()
		{
			var fv:FieldView = new FieldView();
			fv.fieldData = new FieldModel();
			addChild(fv);
		}
	}
}