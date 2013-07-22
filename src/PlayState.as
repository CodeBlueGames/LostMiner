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
			player = new Player;			
			player.x = map.width - 1680;
			player.y = FlxG.height - 32;
			add(player);
			addLava(map.width - 1584, map.height - 16);	
			addLava(map.width - 1584 + 16, map.height - 16);
			addLava(map.width - 1584 + 32, map.height - 16);
			addLava(map.width - 1584 + 48, map.height - 16);
			addLava(map.width - 1584 + 64, map.height - 16);
			addLava(map.width - 1584 + 80, map.height - 16);
			addLava(map.width - 1584 + 96, map.height - 16);
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
			player.x = map.width - 1680;
			player.y = FlxG.height - 32;
		}
		
		public function addLava(LavaX:int, LavaY:int):void {
			var Lava:FlxSprite = new FlxSprite(LavaX, LavaY, Sources.ImgLava);
			add(Lava);
		}
	}
}