package tools
{
	import flash.events.MouseEvent;
	
	import mx.core.UIComponent;
	
	import spark.components.BorderContainer;
	import spark.modules.Module;
	import elements.Controllable;

	public class ControllsMediator
	{
		private var controlls_panel:BorderContainer;
		private var controllables:Vector.<Controllable> = new Vector.<Controllable>;
		
		private static var _instance:ControllsMediator
		public static function get instance():ControllsMediator{
			if(!_instance) _instance = new ControllsMediator();
			return _instance;
		}
		
		public function setControllsPanel(controlls_panel:BorderContainer):void{
			this.controlls_panel = controlls_panel;
		}
		
		public function addControlladble(controllable:Controllable):void{
			controllable.addEventListener(MouseEvent.MOUSE_DOWN, switchControlls);
			controllable.addEventListener(MouseEvent.MOUSE_UP, clearControlls);
			this.controllables.push(controllable);
		}
		
		private function clearControlls(event:MouseEvent):void{
//			this.controlls_panel.removeAllElements();
		}
		
		private function switchControlls(event:MouseEvent):void{
			this.controlls_panel.removeAllElements();
			this.controlls_panel.addElement( (event.currentTarget as Controllable).controllsPanelModule);
		}
	}
}