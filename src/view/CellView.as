package view
{
	import model.CellModell;
	
	import utils.UiUtil;

	public class CellView extends BaseView
	{
		private var _cellData:CellModell
		
		private function makeStroke():void
		{
			addChild(UiUtil.getFilledSquare(20,20));
		}
		
		public function set cellData(value:CellModell):void 
		{
			_cellData = value;
			
			makeStroke();
		}
	}
}