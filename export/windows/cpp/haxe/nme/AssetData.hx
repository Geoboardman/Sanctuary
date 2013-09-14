package nme;


import openfl.Assets;


class AssetData {
	
	
	public static var library:Map <String, LibraryType>;
	public static var path:Map <String, String>;
	public static var type:Map <String, AssetType>;
	
	private static var initialized:Bool = false;
	
	
	public static function initialize ():Void {
		
		if (!initialized) {
			
			path = new Map<String, String> ();
			type = new Map<String, AssetType> ();
			library = new Map<String, LibraryType> ();
			
			path.set ("Beep", "assets/data/beep.wav");
			type.set ("Beep", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/data/autotiles.png", "assets/data/autotiles.png");
			type.set ("assets/data/autotiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/autotiles_alt.png", "assets/data/autotiles_alt.png");
			type.set ("assets/data/autotiles_alt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/base.png", "assets/data/base.png");
			type.set ("assets/data/base.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/beep.mp3", "assets/data/beep.mp3");
			type.set ("assets/data/beep.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			path.set ("assets/data/beep.wav", "assets/data/beep.wav");
			type.set ("assets/data/beep.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/data/button.png", "assets/data/button.png");
			type.set ("assets/data/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_a.png", "assets/data/button_a.png");
			type.set ("assets/data/button_a.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_b.png", "assets/data/button_b.png");
			type.set ("assets/data/button_b.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_c.png", "assets/data/button_c.png");
			type.set ("assets/data/button_c.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_down.png", "assets/data/button_down.png");
			type.set ("assets/data/button_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_left.png", "assets/data/button_left.png");
			type.set ("assets/data/button_left.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_right.png", "assets/data/button_right.png");
			type.set ("assets/data/button_right.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_up.png", "assets/data/button_up.png");
			type.set ("assets/data/button_up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_x.png", "assets/data/button_x.png");
			type.set ("assets/data/button_x.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_y.png", "assets/data/button_y.png");
			type.set ("assets/data/button_y.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/courier.ttf", "assets/data/courier.ttf");
			type.set ("assets/data/courier.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("assets/data/cursor.png", "assets/data/cursor.png");
			type.set ("assets/data/cursor.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/default.png", "assets/data/default.png");
			type.set ("assets/data/default.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/fontData10pt.png", "assets/data/fontData10pt.png");
			type.set ("assets/data/fontData10pt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/fontData11pt.png", "assets/data/fontData11pt.png");
			type.set ("assets/data/fontData11pt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/handle.png", "assets/data/handle.png");
			type.set ("assets/data/handle.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/logo.png", "assets/data/logo.png");
			type.set ("assets/data/logo.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/logo_corners.png", "assets/data/logo_corners.png");
			type.set ("assets/data/logo_corners.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/logo_light.png", "assets/data/logo_light.png");
			type.set ("assets/data/logo_light.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/nokiafc22.ttf", "assets/data/nokiafc22.ttf");
			type.set ("assets/data/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("assets/data/stick.png", "assets/data/stick.png");
			type.set ("assets/data/stick.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/flixel.png", "assets/data/vcr/flixel.png");
			type.set ("assets/data/vcr/flixel.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/open.png", "assets/data/vcr/open.png");
			type.set ("assets/data/vcr/open.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/pause.png", "assets/data/vcr/pause.png");
			type.set ("assets/data/vcr/pause.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/play.png", "assets/data/vcr/play.png");
			type.set ("assets/data/vcr/play.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/record_off.png", "assets/data/vcr/record_off.png");
			type.set ("assets/data/vcr/record_off.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/record_on.png", "assets/data/vcr/record_on.png");
			type.set ("assets/data/vcr/record_on.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/restart.png", "assets/data/vcr/restart.png");
			type.set ("assets/data/vcr/restart.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/step.png", "assets/data/vcr/step.png");
			type.set ("assets/data/vcr/step.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/stop.png", "assets/data/vcr/stop.png");
			type.set ("assets/data/vcr/stop.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vis/bounds.png", "assets/data/vis/bounds.png");
			type.set ("assets/data/vis/bounds.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/EntryMap.tmx", "assets/EntryMap.tmx");
			type.set ("assets/EntryMap.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/Forest.tmx", "assets/Forest.tmx");
			type.set ("assets/Forest.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/ForestTiles.png", "assets/ForestTiles.png");
			type.set ("assets/ForestTiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/HaxeFlixel.svg", "assets/HaxeFlixel.svg");
			type.set ("assets/HaxeFlixel.svg", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/invTile.png", "assets/invTile.png");
			type.set ("assets/invTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/mountain_landscape.png", "assets/mountain_landscape.png");
			type.set ("assets/mountain_landscape.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/player.png", "assets/player.png");
			type.set ("assets/player.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/testingMap.tmx", "assets/testingMap.tmx");
			type.set ("assets/testingMap.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/TileSets/BENCH.bmp", "assets/TileSets/BENCH.bmp");
			type.set ("assets/TileSets/BENCH.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/BENCH.GIF", "assets/TileSets/BENCH.GIF");
			type.set ("assets/TileSets/BENCH.GIF", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/TileSets/CLIFFVEG.bmp", "assets/TileSets/CLIFFVEG.bmp");
			type.set ("assets/TileSets/CLIFFVEG.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/CLIFSHD.bmp", "assets/TileSets/CLIFSHD.bmp");
			type.set ("assets/TileSets/CLIFSHD.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/CLIFVEG2.bmp", "assets/TileSets/CLIFVEG2.bmp");
			type.set ("assets/TileSets/CLIFVEG2.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/ENCINT.GIF", "assets/TileSets/ENCINT.GIF");
			type.set ("assets/TileSets/ENCINT.GIF", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/TileSets/FENCDAM.bmp", "assets/TileSets/FENCDAM.bmp");
			type.set ("assets/TileSets/FENCDAM.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/FENCE.bmp", "assets/TileSets/FENCE.bmp");
			type.set ("assets/TileSets/FENCE.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/FENCSHD1.bmp", "assets/TileSets/FENCSHD1.bmp");
			type.set ("assets/TileSets/FENCSHD1.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/FENCSHD2.bmp", "assets/TileSets/FENCSHD2.bmp");
			type.set ("assets/TileSets/FENCSHD2.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/GRS2ROC.bmp", "assets/TileSets/GRS2ROC.bmp");
			type.set ("assets/TileSets/GRS2ROC.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/INVEN3.TIF", "assets/TileSets/INVEN3.TIF");
			type.set ("assets/TileSets/INVEN3.TIF", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/KITCHEN.GIF", "assets/TileSets/KITCHEN.GIF");
			type.set ("assets/TileSets/KITCHEN.GIF", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/TileSets/PAVE.bmp", "assets/TileSets/PAVE.bmp");
			type.set ("assets/TileSets/PAVE.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/RUIN.bmp", "assets/TileSets/RUIN.bmp");
			type.set ("assets/TileSets/RUIN.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/TABLE1.GIF", "assets/TileSets/TABLE1.GIF");
			type.set ("assets/TileSets/TABLE1.GIF", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/TileSets/TEST5B.bmp", "assets/TileSets/TEST5B.bmp");
			type.set ("assets/TileSets/TEST5B.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/TEST6.bmp", "assets/TileSets/TEST6.bmp");
			type.set ("assets/TileSets/TEST6.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/TEST7B.bmp", "assets/TileSets/TEST7B.bmp");
			type.set ("assets/TileSets/TEST7B.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/TEST7B.png", "assets/TileSets/TEST7B.png");
			type.set ("assets/TileSets/TEST7B.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/TileSets/TOWNBOT.bmp", "assets/TileSets/TOWNBOT.bmp");
			type.set ("assets/TileSets/TOWNBOT.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/TOWNBOT2.bmp", "assets/TileSets/TOWNBOT2.bmp");
			type.set ("assets/TileSets/TOWNBOT2.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/TOWNDOOR.bmp", "assets/TileSets/TOWNDOOR.bmp");
			type.set ("assets/TileSets/TOWNDOOR.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/TOWNJNT.bmp", "assets/TileSets/TOWNJNT.bmp");
			type.set ("assets/TileSets/TOWNJNT.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/TOWNJNT2.bmp", "assets/TileSets/TOWNJNT2.bmp");
			type.set ("assets/TileSets/TOWNJNT2.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/TOWNSHD1.bmp", "assets/TileSets/TOWNSHD1.bmp");
			type.set ("assets/TileSets/TOWNSHD1.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/TOWNTOP.bmp", "assets/TileSets/TOWNTOP.bmp");
			type.set ("assets/TileSets/TOWNTOP.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/TOWNWIN.bmp", "assets/TileSets/TOWNWIN.bmp");
			type.set ("assets/TileSets/TOWNWIN.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/TREE.GIF", "assets/TileSets/TREE.GIF");
			type.set ("assets/TileSets/TREE.GIF", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/TileSets/VILDAM.bmp", "assets/TileSets/VILDAM.bmp");
			type.set ("assets/TileSets/VILDAM.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/VILFLR.bmp", "assets/TileSets/VILFLR.bmp");
			type.set ("assets/TileSets/VILFLR.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/VILINT.bmp", "assets/TileSets/VILINT.bmp");
			type.set ("assets/TileSets/VILINT.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/VILSHD.bmp", "assets/TileSets/VILSHD.bmp");
			type.set ("assets/TileSets/VILSHD.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			path.set ("assets/TileSets/_BACKUP_.bmp", "assets/TileSets/_BACKUP_.bmp");
			type.set ("assets/TileSets/_BACKUP_.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			
			
			initialized = true;
			
		}
		
	}
	
	
}