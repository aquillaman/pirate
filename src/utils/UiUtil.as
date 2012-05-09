package utils
{
	import flash.display.Shape;

	public class UiUtil
	{
		public  static function getFilledSquare(width:Number, height:Number, color:uint=0xCCCCCC):Shape{
			var shape:Shape = new Shape();
			shape.graphics.lineStyle(1,color,1);
			shape.graphics.beginFill(color, 0.5);
			shape.graphics.drawRect(0,0,width,height);
			shape.graphics.endFill();
			
			return shape;
		}
	}
}