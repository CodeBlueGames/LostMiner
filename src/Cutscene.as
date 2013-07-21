package 
{
	import org.flixel.FlxG;
	import org.flixel.FlxState;
	import flash.display.MovieClip;
	import flash.media.SoundMixer;
	import flash.events.Event;
	import org.flixel.*;
	//import flash.display.Sprite;
	
	public class Cutscene extends FlxState
	{
		//Embed the cutscene swf relative to the root of the Flixel project here
		[Embed(source = 'org/flixel/data/private/graphics/cutscene.swf')] private var Swflass:Class;	 
		//This is the MovieClip container for your cutscene
		private var movie:MovieClip;
		//This is the length of the cutscene in frames
		private var lengthh:Number;
 
		 override public function create():void
		{
			movie = new Swflass();//inainte era swf Class acuma e swf class
			//Set your zoom factor of the FlxGame here (default is 2)
			var zoomFactor:int = 2;
			movie.scaleX = 2.0/zoomFactor;
			movie.scaleY = 2.0 / zoomFactor;
			//Add the MovieClip container to the FlxState
			FlxG.stage.addChild(movie);
			
			//Set the length of the cutscene here (frames)
			lengthh = 700;
			//Adds a listener to the cutscene to call next() after each frame.
			movie.addEventListener(Event.EXIT_FRAME, next);
		}
		/*override public function update():void
		{
			if(movie.currentFrame == movie.totalFrames)
{
 FlxG.stage.removeChild(movie);
}
		}*/
		private function next(e:Event):void
		{
			//After each frame, length decreases by one
			lengthh--;
			//Length is 0 at the end of the movie
			if (lengthh <= 0)
			{
				//Removes the listener
				movie.removeEventListener(Event.EXIT_FRAME, next);	
				FlxG.stage.removeChild(movie);
				//Stops all overlaying sounds before state switch
				SoundMixer.stopAll();
				//Enter the next FlxState to switch to
				FlxG.switchState(new PlayState);
			}			
		}	
		
	} 
}