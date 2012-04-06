package
{
  import flash.display.Sprite;
  
  public class pirate extends Sprite
  {
    public static var progress:Progress;
    
    public function pirate()
    {
      var loader:MultiLoader = new MultiLoader();
      
      stage.addChild(progress = new Progress());
    }
  }
}