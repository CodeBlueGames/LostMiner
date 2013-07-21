package
{
	import org.flixel.*;
	
	public class PlayState extends FlxState
	{
		
		static var map:FlxTilemap; 
		static var player:Player;
		var bg:FlxSprite = new FlxSprite(0, 0, Sources.ImgBG);
		var lava:FlxGroup;
		
		public function PlayState():void
		{
			
		}
		
		override public function create():void
		{
			add(bg);
			map = new FlxTilemap();
			map.loadMap(new Sources.TxtMap, Sources.ImgMap, 16, 16);
			add(map);
			lava = new FlxGroup;
			addLava(496, 192 + 32);
			addLava(496 + 16, 192 + 32);
			addLava(496 + 32, 192 + 32);
			addLava(496 + 48, 192 + 32);
			addLava(496 + 64, 192 + 32);
			addLava(496 + 80, 192 + 32);
			addLava(496 + 96, 192 + 32);
			addLava(496 + 112, 192 + 32);
			addLava(496 + 176, 192 + 32);
			addLava(496 + 192, 192 + 32);
			addLava(496 + 208, 192 + 32);
			addLava(496 + 224, 192 + 32);
			addLava(496 + 240, 192 + 32);
			addLava(496 + 256, 192 + 32);
			addLava(496 + 272, 192 + 32);
			addLava(496 + 288, 192 + 32);
			player = new Player;			
			player.x = FlxG.width - 211;
			player.y = FlxG.height - 32;
			add(player);
								
			FlxG.resetCameras();
			FlxG.camera.follow(player, FlxCamera.STYLE_PLATFORMER);
			FlxG.camera.setBounds(0, 0, map.width, map.height);
			FlxG.worldBounds = new FlxRect(0, 0, map.width, map.height);
			FlxG.playMusic(Sources.Mp3Soundtrack);
			FlxG.mouse.hide();			
		}
		
		override public function update():void {
			super.update();
			FlxG.collide(player, map);
			if (player.y > FlxG.height - 24) {
				restart(player, lava);
			}							
		}
		
		public function restart(a:Player, b:FlxGroup){
			player.x = FlxG.width - 211;
			player.y = FlxG.height - 32;
		}
		
		public function addLava(LavaX:int, LavaY:int):void {
			var Lava:FlxSprite = new FlxSprite(LavaX, LavaY, Sources.ImgLava);
			add(Lava);
		}
	}
}