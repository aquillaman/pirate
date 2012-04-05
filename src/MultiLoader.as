package
{
  import flash.display.Loader;
  import flash.display.LoaderInfo;
  import flash.events.Event;
  import flash.events.ProgressEvent;
  import flash.net.URLRequest;
  
  import org.osmf.events.LoaderEvent;

  public class MultiLoader
  {
    private var bites:Array = new Array();
    private var sourses:Vector.<URLRequest> = new <URLRequest>[
      new URLRequest("LibDialog_ru.swf"),
      new URLRequest("BackPacketDialog_ru.swf"),
      new URLRequest("BaitListDialog_ru.swf"),
      new URLRequest("BattleDialog_ru.swf"),
      new URLRequest("BillingDialog_ru.swf")
    ]
    
    public function MultiLoader()
    {
      for each(var url:URLRequest in sourses){
        var loader:Loader = new Loader();
        loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onComplete);
        loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, onProgress);
        loader.load(url);
      }
    }
    
    private function onProgress(event:ProgressEvent):void{
      if(bites.indexOf(event.bytesTotal) == -1){
        bites.push(event.bytesTotal);
        trace(this + " onProgress | first | bytesTotal: " + event.bytesTotal);
      }
      var urlParts:Array = (event.currentTarget as LoaderInfo).loaderURL.split("/");
//      trace(this + " onProgress | url: " + urlParts[urlParts.length-1]);
    }
    private function onComplete(event:Event):void{
      var urlParts:Array = (event.currentTarget as LoaderInfo).url.split("/");
      trace(this + " onComplete | url: " + urlParts[urlParts.length-1]);
    }
  }
}