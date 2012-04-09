package resource
{
  import framework.iLogos.managers.ResourceManager;
  
  public class GameResourceManager extends ResourceManager implements IResourceManager
  {
    public function GameResourceManager(flag:Boolean=false)
    {
      super(flag);
    }
  }
}