package
{
	import org.flixel.*;
	import com.newgrounds.API;
	
	public class Level4 extends FlxState
	{
		
		static var map:FlxTilemap; 
		static var player:Player;
		var lava:FlxGroup;
		var door:FlxSprite;
		var key:FlxSprite;
		var gotKey:Boolean = false;
		static var gems:Number = 0.0;
		
		public function Level4():void
		{
			
		}
		
		override public function create():void
		{
			map = new FlxTilemap();
			map.loadMap(new Sources.TxtMap4, Sources.ImgMap, 16, 16);
			add(map);
			lava = new FlxGroup;
			door = new FlxSprite(map.width - 1120, map.height - 112 - 16, Sources.ImgDoor);
			add(door);
			key = new FlxSprite(map.width - 48, map.height - 64 + 16, Sources.ImgKey);
			add(key);
			player = new Player;			
			player.x = map.width - 1950;
			player.y = FlxG.height - 96;
			add(player);			
			FlxG.resetCameras();
			FlxG.camera.follow(player, FlxCamera.STYLE_PLATFORMER);
			FlxG.camera.setBounds(0, 0, map.width, map.height);
			FlxG.worldBounds = new FlxRect(0, 0, map.width, map.height);			
			FlxG.mouse.hide();			
		}
		
		override public function update():void {
			super.update();
			FlxG.collide(player, map);
			if (player.y > FlxG.height - 24) {
				restart(player, lava);
			}
			FlxG.overlap(player, key, getKey);
			FlxG.overlap(player, door, nextLevel);
			var down:Boolean = (FlxG.keys.DOWN);
			if(down) {
				trace(player.x);
				trace(player.y);
			}
		}
		
		public function restart(a:Player, b:FlxGroup){
			player.x = map.width - 1950;
			player.y = FlxG.height - 96;
			if (gotKey == true) {
				key = new FlxSprite(map.width - 48, map.height - 64 + 16, Sources.ImgKey);
				add(key);
				gotKey = false;
			}
		}
		
		public function addLava(LavaX:int, LavaY:int):void {
			var Lava:FlxSprite = new FlxSprite(LavaX, LavaY, Sources.ImgLava);
			add(Lava);
		}
		
		public function getKey(a:Player, b:FlxSprite):void {
			remove(key);
			key = null;
			gotKey = true;			
		}
		
		public function nextLevel(a:Player, b:FlxSprite):void {
			if (gotKey == true) {
				FlxG.switchState(new CreditState);				
			}
		}
	}
}