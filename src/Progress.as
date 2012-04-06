package
{
  import flash.display.BlendMode;
  import flash.display.Shape;
  import flash.display.Sprite;
  import flash.text.TextField;
  import flash.text.TextFieldAutoSize;
  
  public class Progress extends Sprite
  {
    private var _bar:Shape;
    private var _text:TextField;
    public function Progress()
    {
      drawBarr();
      addTextField();
    }
    
    public function set progress(value:Number):void{
      _bar.scaleX = value;
      _text.text = Math.floor(value*100).toString() + " %";
    }
    
    private function addTextField():void
    {
      _text = new TextField();
      _text.autoSize = TextFieldAutoSize.CENTER;
      _text.text = "0 %";
      _text.x = 40;
      _text.blendMode = BlendMode.INVERT;;
     this.addChild(_text); 
    }
    
    private function drawBarr():void{
      _bar = new Shape();
      _bar.graphics.beginFill(0);
      _bar.graphics.drawRect(0,0,100,18);
      _bar.graphics.endFill();
      _bar.scaleX = 0;
      this.addChild(_bar);
    }
  }
}