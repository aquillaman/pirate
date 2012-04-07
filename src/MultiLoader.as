package
{
  import flash.display.Loader;
  import flash.display.LoaderInfo;
  import flash.events.Event;
  import flash.events.ProgressEvent;
  import flash.net.URLRequest;

  public class MultiLoader
  {
    private var progressManager:ProgressDataHolder = new ProgressDataHolder();
    private var bites:Array = new Array();
    private var sourses:Vector.<URLRequest> = new <URLRequest>[
      new URLRequest("sourses/AvatarChoiceDialog_ru.swf"),
      new URLRequest("sourses/BackPacketDialog_ru.swf"),
      new URLRequest("sourses/BaitListDialog_ru.swf"),
      new URLRequest("sourses/BattleDialog_ru.swf"),
      new URLRequest("sourses/BillingDialog_ru.swf"),
      new URLRequest("sourses/CatchedEntityDialog_ru.swf"),
      new URLRequest("sourses/ComixDialog_ru.swf"),
      new URLRequest("sourses/ConsoleDialog_ru.swf"),
      new URLRequest("sourses/ErrorDialog_ru.swf"),
      new URLRequest("sourses/LevelDialog_ru.swf"),
      new URLRequest("sourses/LibDialog_ru.swf"),
      new URLRequest("sourses/LocationDialog_ru.swf"),
      new URLRequest("sourses/MenuAll_ru.swf"),
      new URLRequest("sourses/MessageListDialog_ru.swf"),
      new URLRequest("sourses/preloader_ru.swf"),
      new URLRequest("sourses/QuestsDialog_ru.swf"),
      new URLRequest("sourses/SelectCreaturesDialog_ru.swf"),
      new URLRequest("sourses/ServerFailure_ru.swf"),
      new URLRequest("sourses/ShopDialog_ru.swf"),
      new URLRequest("sourses/TestDialog_ru.swf"),
      new URLRequest("sourses/TutorialDialog_ru.swf")
    ]
    
    public function MultiLoader()
    {
      for each(var url:URLRequest in sourses){
        var loader:Loader = new Loader();
        loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onComplete);
        loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, onProgress);
        loader.name = url.url.split("_")[0];
        loader.load(url);
      }
    }
    
    private function onProgress(event:ProgressEvent):void{
      var name:String = (event.currentTarget as LoaderInfo).loader.name;
      var totalProgress:ProgressData;
      totalProgress = progressManager.addData(name, ProgressData.factory(event.bytesTotal, event.bytesLoaded));
//      trace('totalProgress.loaded: ',totalProgress.loaded);
//      trace('totalProgress.total: ',totalProgress.total);
//      trace('PERCENT: ',totalProgress.loaded/totalProgress.total);
      if(sourses.length == progressManager.listLen){
        pirate.progress.progress = (totalProgress.loaded/totalProgress.total);
      }
    }
    private function onComplete(event:Event):void{
      var urlParts:Array = (event.currentTarget as LoaderInfo).url.split("/");
    }
  }
}

internal class ProgressDataHolder{
  internal var keys:Vector.<String> = new <String>[];
  internal var values:Vector.<ProgressData> = new <ProgressData>[];
  public function get listLen():uint{ return keys.length; }
  public function addData(key:String, data:ProgressData):ProgressData{
    var i:int = keys.indexOf(key);
    var totatProgress:ProgressData = new ProgressData();
    if(i == -1){
      keys.push(key);
      values.push(data);
    }else{
      values[i] = data;
    }
    
    for(i=0; i<values.length; i++){
      totatProgress.loaded += values[i].loaded;
      totatProgress.total += values[i].total;
    }
    return totatProgress;
  }
}

internal class ProgressData{
  private var _total:Number =0;
  private var _loaded:Number =0;
  public static function factory(bytesTotal:Number, bytesLoaded:Number):ProgressData{
    var pd:ProgressData = new ProgressData();
    pd.loaded = bytesLoaded;
    pd.total = bytesTotal;
    return pd;
  }
  public function set total(value:Number):void{_total = value;}
  public function set loaded(value:Number):void{_loaded = value;}
  public function get total():Number{return _total;} 
  public function get loaded():Number{return _loaded;} 
}