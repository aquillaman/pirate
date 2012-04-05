package
{
  import flash.display.Loader;
  import flash.events.Event;
  import flash.net.URLRequest;

  public class MultiLoader
  {
    private var loader:Loader;
    private var sourses:Vector.<URLRequest> = [
      new URLRequest("sourses/LibDialog_ru.swf"),
      new URLRequest("sourses/LibDialog_ru.swf")
    ]
    
    public function MultiLoader()
    {
      loader.addEventListener(Event.COMPLETE, onComplete);
    }
    
    private function onComplete(event:Event):void{
      trace(this + "onComplete");
    }
  }
}