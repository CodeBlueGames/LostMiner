package  
{
	/**
	 * ...
	 * @author ...
	 */
	
	 import org.flixel.*;
	 
	public class CreditState extends FlxState
	{
		
		var CBG:FlxText = new FlxText(FlxG.width / 2 - 65, FlxG.height / 2 - 70, 200, "A game by CodeBlueGames", true);
		var PRG:FlxText = new FlxText(FlxG.width / 2 - 68, FlxG.height / 2 - 50, 200, "Programmer: Keith Thomas", true);
		var ART:FlxText = new FlxText(FlxG.width / 2 - 60, FlxG.height / 2 - 30, 200, "Artist: Jeffrey Pereira", true);
		var backButton:FlxButton = new FlxButton(FlxG.width - 320, FlxG.height - 20, "Back", goBack);
		
		public function CreditState() 
		{
			add(CBG);
			add(PRG);
			add(ART);
			add(backButton);
			FlxG.mouse.show();
		}
		
		public function goBack():void
		{
			FlxG.switchState(new MenuState);
		}
		
	}

}