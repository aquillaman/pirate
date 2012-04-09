package resource
{
  import flash.display.DisplayObjectContainer;

  public interface IResourceMediator implements DisplayObjectContainer
  {
    function get callback():Function;
  }
}