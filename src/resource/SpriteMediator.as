package resource
{
  import flash.display.Sprite;
  
  public class SpriteMediator extends Sprite implements IResourceMediator
  {
    public function SpriteMediator()
    {
      super();
    }
    
    public function get callback():Function { return callbackHandler; }
    
    private function callbackHandler(obj:*):void{
      trace(this + "received: " + obj)obj;
    }
  }
}