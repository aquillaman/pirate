package resource
{
  import flash.display.DisplayObjectContainer;
  import flash.display.Sprite;

  public interface IResourceManager
  {
    function addSourceByClass(swfName:String,  className: String , scale: Boolean = false, center: Boolean = false, completeEventCode: String = ''): DisplayObjectContainer;
    function addSourceByInst(swfName:String,  instName: String , scale: Boolean = false, center: Boolean = false): DisplayObjectContainer;
    
    function loadSourceByInst(func: Function, swfName:String, instName: String, cpFlag:Boolean = false):DisplayObjectContainer;
    function loadSourceByClass(func: Function, swfName:String, className: String):DisplayObjectContainer;
  }
}