package view
{
	import model.CellModell;
	import model.FieldModel;
	
	import utils.UiUtil;

	public class FieldView extends BaseView
	{
		private var _fieldData:FieldModel;
		
		public function set fieldData(value:FieldModel):void 
		{
			_fieldData = value;
			build();
		}
		
		public function build():void{
			for (var i:int = 0; i < _fieldData.field.length; i++) 
			{
				for (var j:int = 0; j < _fieldData.field[i].length; j++) 
				{
					var cv:CellView = new CellView();
					cv.cellData = _fieldData.field[i][j];
					cv.x = cv.width * j;
					cv.y = cv.height * i;
					addChild(cv);
				}
			}
			makeStroke();
		}

		private function makeStroke():void
		{
			addChild(UiUtil.getFilledSquare(this.width,this.height));
		}
	}
}