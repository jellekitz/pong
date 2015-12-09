package actors 
{
	import utils.Controller;	
	import flash.events.Event;
	/**
	 * ...
	 * @author Jelle Kitzen
	 */
	public class Player extends Paddle 
	{
		private var controller:Controller;
		private var speed:Number = 0;
		
		public function Player() 
		{
			this.addEventListener(Event.ADDED_TO_STAGE, init);		
		}
		
		public function set speedController(nietHogerDan:Number):void {
			if (nietHogerDan > 30) {
				trace("boven de dertig is niet mogelijk");
				nietHogerDan = 30;
			}
			speed = nietHogerDan;
		}
		public function get speedRestriction():Number {
			return speed;
		}
		
		private function init(e:Event):void 
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, init);
			controller = new Controller(stage);
			this.addEventListener(Event.ENTER_FRAME, loop);			
		}
		private function loop(e:Event):void 
		{
			if (controller.up)
			{
				speed = -10;
			}
			else if(controller.down)
			{
				speed = 10;
			}else
			{
				if (speed > 0) speed--;
				if (speed < 0) speed++;
				
			}
			if (controller.fire)
			{
				
				
			}
			this.y += speed;
		}
		
	}

}