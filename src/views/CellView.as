package views
{
	import models.nodes.NodeModell;
	
	import utils.UiUtil;

	public class CellView extends BaseView
	{
		private var _cellData:NodeModell
		
		private function makeStroke():void
		{
			addChild(UiUtil.getFilledSquare(20,20));
		}
		
		public function set cellData(value:NodeModell):void 
		{
			_cellData = value;
			
			makeStroke();
		}
	}
}