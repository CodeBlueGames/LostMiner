package  
{
	public class Sources 
	{		
		//IMPORTING GRAPHICS (.PNG)
		[Embed(source = 'org/flixel/data/private/graphics/map.png')] public static var ImgMap:Class;
		[Embed(source = 'org/flixel/data/private/graphics/player.png')] public static var ImgPlayer:Class;
		[Embed(source = 'org/flixel/data/private/graphics/background.png')] public static var ImgBG:Class;
		[Embed(source = 'org/flixel/data/private/graphics/lava.png')] public static var ImgLava:Class;
		[Embed(source = 'org/flixel/data/private/graphics/menu.png')] public static var ImgMenu:Class;
		[Embed(source = 'org/flixel/data/private/graphics/door.png')] public static var ImgDoor:Class;
		[Embed(source = 'org/flixel/data/private/graphics/key.png')] public static var ImgKey:Class;
		
		//IMPORTING SOUNDS AND MUSIC (.MP3)
		[Embed(source = 'org/flixel/data/private/sounds/soundtrack.mp3')] public static var Mp3Soundtrack:Class;
		[Embed(source = 'org/flixel/data/private/sounds/jump.mp3')] public static var Mp3Jump:Class;
		
		//IMPORTING TEXTS (.TXT)
		[Embed(source = 'org/flixel/data/private/texts/map1.txt', mimeType = "application/octet-stream")] public static var TxtMap:Class;
		[Embed(source = 'org/flixel/data/private/texts/map2.txt', mimeType = "application/octet-stream")] public static var TxtMap2:Class;
		[Embed(source = 'org/flixel/data/private/texts/map3.txt', mimeType = "application/octet-stream")] public static var TxtMap3:Class;
		[Embed(source = 'org/flixel/data/private/texts/map4.txt', mimeType = "application/octet-stream")] public static var TxtMap4:Class;
	}
}