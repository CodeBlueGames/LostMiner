package  
{
	/**
	 * ...
	 * @author ...
	 */
	
	 import org.flixel.*;
	 
	public class MenuState extends FlxState
	{
		
		var startButton:FlxButton = new FlxButton(FlxG.width / 2 - 40, FlxG.height / 2 - 50, "Start", startGame);
		var creditsButton:FlxButton = new FlxButton(FlxG.width / 2 - 40, FlxG.height / 2 - 30, "Credits", showCredits);		
		var bg:FlxSprite;
		
		public function MenuState() 
		{
			bg = new FlxSprite(0, 0, Sources.ImgMenu);
			add(bg);
			add(startButton);
			add(creditsButton);			
			FlxG.mouse.show();			
		}
		
		public function startGame():void
		{
			FlxG.switchState(new PlayState);
		}
		
		public function showCredits():void
		{
			FlxG.switchState(new CreditState);
		}	
		
		
	}

}