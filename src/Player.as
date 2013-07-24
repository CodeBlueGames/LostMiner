package  
{
	/**
	 * ...
	 * @author ...
	 */
	
	 import org.flixel.*;
	 
	public class Player extends FlxSprite
	{
		
		public function Player() 
		{
			loadGraphic(Sources.ImgPlayer, 16, 16);			
			acceleration.y = 300;	
			addAnimation('idle', [0]);
			addAnimation('walk', [1, 2, 1, 2], 5);
			addAnimation('jump', [3]);
		}
		
		override public function update():void
		{
			var up:Boolean = (FlxG.keys.UP || FlxG.keys.W);
			var right:Boolean = (FlxG.keys.RIGHT || FlxG.keys.D);
			var left:Boolean = (FlxG.keys.LEFT || FlxG.keys.A);
			var down:Boolean = (FlxG.keys.DOWN || FlxG.keys.S);
			if (touching == DOWN) {
				if (!left && !right) {
					play('idle');
					velocity.x = 0;
				} else {
					play('walk');
				}
				if (up) {
					velocity.y = -150;
					play('jump');			
					
				}
				if (left) {
					velocity.x = -75;
					facing = LEFT;					
				}
				if (right) {
					velocity.x = 75;
					facing = RIGHT;					
				}				
			} else {
				if (!left && !right) {
					play('jump');
					velocity.x = 0;
				} else {
				if (left) {
					velocity.x = -75;
					facing = LEFT;					
				}
				if (right) {
					velocity.x = 75;
					facing = RIGHT;					
				}				
				}
			}
		}
		
	}

}