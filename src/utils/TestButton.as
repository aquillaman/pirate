package utils
{
    import flash.display.DisplayObject;
    import flash.display.DisplayObjectContainer;
    import flash.display.Shape;
    import flash.display.SimpleButton;
    import flash.display.Sprite;
    import flash.errors.IllegalOperationError;
    import flash.geom.Point;
    import flash.text.TextField;
    import flash.text.TextFieldAutoSize;
    
    public class TestButton extends SimpleButton
    {
        private static var factoryLock:Boolean = false;
        private static var upColor:uint = 0xCCCCCC;
        private static var overColor:uint = 0xEEEEEE;
        private static var downColor:uint = 0xAAAAAA;
        
        
        public function TestButton(upState:DisplayObject=null, overState:DisplayObject=null, downState:DisplayObject=null, hitTestState:DisplayObject=null)
        {
            if(factoryLock)
            {
                super(upState, overState, downState, hitTestState);
            }else{
                throw new IllegalOperationError("Используйте статический метод factory()")
            }
        }
        
        public static function factory(poz:Point, lable:String=''):TestButton
        {
            factoryLock = true;
            
            var btn:TestButton = new TestButton(state(lable,upColor),state(lable,overColor),state(lable,downColor),state(lable));
            btn.x = poz.x;
            btn.y = poz.y;
            
            factoryLock = true;
            return btn;
        }
		
        
        private static function state(value:String = '',color:uint = 0):DisplayObject{
            var holder:Sprite = new Sprite();
            var shape:Shape = new Shape();
            
            var bgW:int = 50;
            var bgH:int = 20;
            
            var lable:TextField = new TextField();
            lable.autoSize = TextFieldAutoSize.LEFT;
            lable.text = value;

            if(lable.text.length > 10)
            {
                bgW = lable.width +10;
                bgH = lable.height +10;
                
                lable.x += 5
                lable.y += 5
            }
            
            with(shape)
            {
                graphics.lineStyle(1,color);
                graphics.beginFill(color, 0.5);
                graphics.drawRect(0,0,bgW,bgH);
                graphics.endFill();
            }
            holder.addChild(shape);
            holder.addChild(lable);
            
            return holder;
        }
    }
}