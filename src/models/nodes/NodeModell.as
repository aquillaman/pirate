package models.nodes
{
	import models.BaseModel;

	public class NodeModell extends BaseModel implements INode
	{
		private var X:uint;
		private var Y:uint;
		
		private var _f:Number;
		private var _g:Number;
		private var _h:Number;
		private var _parentNode:INode;
		private var _traversable:Boolean;
		
		
		
		public function NodeModell(x:uint, y:uint)
		{
			this.X = x;
			this.Y = y;
			super();
		}
		
		public function get f():Number{
			return _f;
		}
		public function get g():Number{
			return _g;
		}
		public function get h():Number{
			return _h;
		}
		public function get _X():Number{
			return _X;
		}
		public function get _Y():Number{
			return _Y;
		}
		public function get parentNode():INode{
			return _parentNode;
		}
		public function get traversable():Boolean{
			return _traversable;
		}
		public function set f(value:Number):void{
			_f= value;
		}
		public function set g(value:Number):void{
			_g = value;
		}
		public function set h(value:Number):void{
			_h = value;
		}
		public function set parentNode(value:INode):void{
			_parentNode = value;
		}
		public function set traversable(value:Boolean):void{
			_traversable = value;
		}
	}
}