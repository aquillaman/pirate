package tools
{
	import flash.display.Stage;
	import flash.events.MouseEvent;
	import flash.sampler.startSampling;
	
	import mx.core.UIComponent;

	public class DrudMeditor
	{
		private var _stage:Stage;
		private var _target:UIComponent;
		public function DrudMeditor(target:UIComponent) {
			this._stage = target.stage;
			this._target = target;
			create();
		}
		
		private function create():void{
			_target.addEventListener(MouseEvent.MOUSE_DOWN, _startDrag);
			_target.addEventListener(MouseEvent.MOUSE_UP, _stopDrag);
		}
		
		private function destroy():void{
			_target.removeEventListener(MouseEvent.MOUSE_DOWN, _startDrag);
			_target.removeEventListener(MouseEvent.MOUSE_UP, _stopDrag);
		}
		
		private var dragging:Boolean;
		protected function _startDrag(event:MouseEvent):void {
			if(dragging) return;
			dragging = true;
			_target.startDrag();
		}
		
		protected function _stopDrag(event:MouseEvent):void {
			dragging = false;
			_target.stopDrag();
		}
	}
}