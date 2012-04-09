package resource
{
  import flash.display.DisplayObjectContainer;
  import flash.display.Sprite;
  import flash.errors.IllegalOperationError;
  
  import framework.iLogos.managers.ResourceManager;
  
  public class GameResourceManager extends ResourceManager implements IResourceManager
  {
    
    public static function getInstance():GameResourceManager {
      if(instance == null)
        instance = new GameResourceManager(true);
      return instance as GameResourceManager;
    }
    
    public function GameResourceManager(flag:Boolean=false)
    {
      super(flag);
    }
    
    public function addSourceByClass(swfName:String,  className: String , scale: Boolean = false, center: Boolean = false, completeEventCode: String = ''): DisplayObjectContainer{
      var holder:Sprite = new Sprite();
      super.AddSourceByClass(holder, swfName, className, scale, center, completeEventCode);
      return holder;
    }
    public function addSourceByInst(swfName:String,  instName: String , scale: Boolean = false, center: Boolean = false): DisplayObjectContainer{
      var holder:Sprite = new Sprite();
      super.AddSourceByClass(holder, swfName, instName, scale, center);
      return holder;
    }
    
    public function loadSourceByInst(func: Function, swfName:String, instName: String, cpFlag:Boolean = false):DisplayObjectContainer{
      throw new IllegalOperationError("loadSourceByInst not implementet yet in " + this);
    }
    public function loadSourceByClass(func: Function, swfName:String, className: String):DisplayObjectContainer{
      throw new IllegalOperationError("loadSourceByClass not implementet yet in " + this);
    }
  }
}