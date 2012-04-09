package resource
{
  import flash.display.DisplayObjectContainer;
  import flash.display.Sprite;

  public interface IResourceManager
  {
    function addSourceByClass(swfName:String,  className: String , scale: Boolean = false, center: Boolean = false, completeEventCode: String = ''): DisplayObjectContainer;
    function addSourceByInst(swfName:String,  instName: String , scale: Boolean = false, center: Boolean = false): DisplayObjectContainer;
    
    function loadSourceByInst(swfName:String, instName: String, cpFlag:Boolean = false):IResourceMediator;
    function loadSourceByClass(swfName:String, className: String):IResourceMediator;
  }
}