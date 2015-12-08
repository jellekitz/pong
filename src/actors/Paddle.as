package actors 
{
	import flash.display.MovieClip;
	
	/**
	 * ...
	 * @author Jelle Kitzen
	 */
	public class Paddle extends MovieClip 
	{
		
		public function Paddle() 
		{
			addChild(new PaddleArt());
		}
		
	}

}