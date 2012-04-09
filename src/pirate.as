package
{
  import flash.display.DisplayObjectContainer;
  import flash.display.Sprite;
  import flash.events.MouseEvent;
  
  import resource.GameResourceManager;
  import resource.IResourceManager;
  
  public class pirate extends Sprite
  {
    public static var progress:Progress;
    private var grm:IResourceManager;
    
    public function pirate()
    {
      grm = GameResourceManager.getInstance();
      
      stage.addEventListener(MouseEvent.CLICK, onStageClicked); 
    }
    
    private function onStageClicked(event:MouseEvent):void{
      grm.loadSourceByClass(onResourceLoaded, "LidDialog.swf", "img");
    }
    
    private function onResourceLoaded(holder:DisplayObjectContainer):void{
      
    }
  }
}