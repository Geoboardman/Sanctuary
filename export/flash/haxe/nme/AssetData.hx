package nme;


import openfl.Assets;


class AssetData {

	
	public static var className = new #if haxe3 Map <String, #else Hash <#end Dynamic> ();
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();
	
	private static var initialized:Bool = false;
	
	
	public static function initialize ():Void {
		
		if (!initialized) {
			
			className.set ("Beep", nme.NME_assets_data_beep_mp3);
			type.set ("Beep", Reflect.field (AssetType, "sound".toUpperCase ()));
			className.set ("assets/data/autotiles.png", nme.NME_assets_data_autotiles_png);
			type.set ("assets/data/autotiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/autotiles_alt.png", nme.NME_assets_data_autotiles_alt_png);
			type.set ("assets/data/autotiles_alt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/base.png", nme.NME_assets_data_base_png);
			type.set ("assets/data/base.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/beep.mp3", nme.NME_assets_data_beep_mp4);
			type.set ("assets/data/beep.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			className.set ("assets/data/button.png", nme.NME_assets_data_button_png);
			type.set ("assets/data/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_a.png", nme.NME_assets_data_button_a_png);
			type.set ("assets/data/button_a.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_b.png", nme.NME_assets_data_button_b_png);
			type.set ("assets/data/button_b.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_c.png", nme.NME_assets_data_button_c_png);
			type.set ("assets/data/button_c.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_down.png", nme.NME_assets_data_button_down_png);
			type.set ("assets/data/button_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_left.png", nme.NME_assets_data_button_left_png);
			type.set ("assets/data/button_left.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_right.png", nme.NME_assets_data_button_right_png);
			type.set ("assets/data/button_right.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_up.png", nme.NME_assets_data_button_up_png);
			type.set ("assets/data/button_up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_x.png", nme.NME_assets_data_button_x_png);
			type.set ("assets/data/button_x.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_y.png", nme.NME_assets_data_button_y_png);
			type.set ("assets/data/button_y.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/courier.ttf", nme.NME_assets_data_courier_ttf);
			type.set ("assets/data/courier.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("assets/data/cursor.png", nme.NME_assets_data_cursor_png);
			type.set ("assets/data/cursor.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/default.png", nme.NME_assets_data_default_png);
			type.set ("assets/data/default.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/fontData10pt.png", nme.NME_assets_data_fontdata10pt_png);
			type.set ("assets/data/fontData10pt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/fontData11pt.png", nme.NME_assets_data_fontdata11pt_png);
			type.set ("assets/data/fontData11pt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/handle.png", nme.NME_assets_data_handle_png);
			type.set ("assets/data/handle.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/logo.png", nme.NME_assets_data_logo_png);
			type.set ("assets/data/logo.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/logo_corners.png", nme.NME_assets_data_logo_corners_png);
			type.set ("assets/data/logo_corners.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/logo_light.png", nme.NME_assets_data_logo_light_png);
			type.set ("assets/data/logo_light.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/nokiafc22.ttf", nme.NME_assets_data_nokiafc22_ttf);
			type.set ("assets/data/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("assets/data/stick.png", nme.NME_assets_data_stick_png);
			type.set ("assets/data/stick.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/flixel.png", nme.NME_assets_data_vcr_flixel_png);
			type.set ("assets/data/vcr/flixel.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/open.png", nme.NME_assets_data_vcr_open_png);
			type.set ("assets/data/vcr/open.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/pause.png", nme.NME_assets_data_vcr_pause_png);
			type.set ("assets/data/vcr/pause.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/play.png", nme.NME_assets_data_vcr_play_png);
			type.set ("assets/data/vcr/play.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/record_off.png", nme.NME_assets_data_vcr_record_off_png);
			type.set ("assets/data/vcr/record_off.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/record_on.png", nme.NME_assets_data_vcr_record_on_png);
			type.set ("assets/data/vcr/record_on.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/restart.png", nme.NME_assets_data_vcr_restart_png);
			type.set ("assets/data/vcr/restart.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/step.png", nme.NME_assets_data_vcr_step_png);
			type.set ("assets/data/vcr/step.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/stop.png", nme.NME_assets_data_vcr_stop_png);
			type.set ("assets/data/vcr/stop.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vis/bounds.png", nme.NME_assets_data_vis_bounds_png);
			type.set ("assets/data/vis/bounds.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/EntryMap.tmx", nme.NME_assets_entrymap_tmx);
			type.set ("assets/EntryMap.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			className.set ("assets/Forest.tmx", nme.NME_assets_forest_tmx);
			type.set ("assets/Forest.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			className.set ("assets/ForestTiles.png", nme.NME_assets_foresttiles_png);
			type.set ("assets/ForestTiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/HaxeFlixel.svg", nme.NME_assets_haxeflixel_svg);
			type.set ("assets/HaxeFlixel.svg", Reflect.field (AssetType, "text".toUpperCase ()));
			className.set ("assets/invTile.png", nme.NME_assets_invtile_png);
			type.set ("assets/invTile.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/mountain_landscape.png", nme.NME_assets_mountain_landscape_png);
			type.set ("assets/mountain_landscape.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/player.png", nme.NME_assets_player_png);
			type.set ("assets/player.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/testingMap.tmx", nme.NME_assets_testingmap_tmx);
			type.set ("assets/testingMap.tmx", Reflect.field (AssetType, "text".toUpperCase ()));
			className.set ("assets/TileSets/BENCH.bmp", nme.NME_assets_tilesets_bench_bmp);
			type.set ("assets/TileSets/BENCH.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/BENCH.GIF", nme.NME_assets_tilesets_bench_gif);
			type.set ("assets/TileSets/BENCH.GIF", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/TileSets/CLIFFVEG.bmp", nme.NME_assets_tilesets_cliffveg_bmp);
			type.set ("assets/TileSets/CLIFFVEG.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/CLIFSHD.bmp", nme.NME_assets_tilesets_clifshd_bmp);
			type.set ("assets/TileSets/CLIFSHD.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/CLIFVEG2.bmp", nme.NME_assets_tilesets_clifveg2_bmp);
			type.set ("assets/TileSets/CLIFVEG2.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/ENCINT.GIF", nme.NME_assets_tilesets_encint_gif);
			type.set ("assets/TileSets/ENCINT.GIF", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/TileSets/FENCDAM.bmp", nme.NME_assets_tilesets_fencdam_bmp);
			type.set ("assets/TileSets/FENCDAM.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/FENCE.bmp", nme.NME_assets_tilesets_fence_bmp);
			type.set ("assets/TileSets/FENCE.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/FENCSHD1.bmp", nme.NME_assets_tilesets_fencshd1_bmp);
			type.set ("assets/TileSets/FENCSHD1.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/FENCSHD2.bmp", nme.NME_assets_tilesets_fencshd2_bmp);
			type.set ("assets/TileSets/FENCSHD2.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/GRS2ROC.bmp", nme.NME_assets_tilesets_grs2roc_bmp);
			type.set ("assets/TileSets/GRS2ROC.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/INVEN3.TIF", nme.NME_assets_tilesets_inven3_tif);
			type.set ("assets/TileSets/INVEN3.TIF", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/KITCHEN.GIF", nme.NME_assets_tilesets_kitchen_gif);
			type.set ("assets/TileSets/KITCHEN.GIF", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/TileSets/PAVE.bmp", nme.NME_assets_tilesets_pave_bmp);
			type.set ("assets/TileSets/PAVE.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/RUIN.bmp", nme.NME_assets_tilesets_ruin_bmp);
			type.set ("assets/TileSets/RUIN.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/TABLE1.GIF", nme.NME_assets_tilesets_table1_gif);
			type.set ("assets/TileSets/TABLE1.GIF", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/TileSets/TEST5B.bmp", nme.NME_assets_tilesets_test5b_bmp);
			type.set ("assets/TileSets/TEST5B.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/TEST6.bmp", nme.NME_assets_tilesets_test6_bmp);
			type.set ("assets/TileSets/TEST6.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/TEST7B.bmp", nme.NME_assets_tilesets_test7b_bmp);
			type.set ("assets/TileSets/TEST7B.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/TEST7B.png", nme.NME_assets_tilesets_test7b_png);
			type.set ("assets/TileSets/TEST7B.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/TileSets/TOWNBOT.bmp", nme.NME_assets_tilesets_townbot_bmp);
			type.set ("assets/TileSets/TOWNBOT.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/TOWNBOT2.bmp", nme.NME_assets_tilesets_townbot2_bmp);
			type.set ("assets/TileSets/TOWNBOT2.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/TOWNDOOR.bmp", nme.NME_assets_tilesets_towndoor_bmp);
			type.set ("assets/TileSets/TOWNDOOR.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/TOWNJNT.bmp", nme.NME_assets_tilesets_townjnt_bmp);
			type.set ("assets/TileSets/TOWNJNT.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/TOWNJNT2.bmp", nme.NME_assets_tilesets_townjnt2_bmp);
			type.set ("assets/TileSets/TOWNJNT2.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/TOWNSHD1.bmp", nme.NME_assets_tilesets_townshd1_bmp);
			type.set ("assets/TileSets/TOWNSHD1.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/TOWNTOP.bmp", nme.NME_assets_tilesets_towntop_bmp);
			type.set ("assets/TileSets/TOWNTOP.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/TOWNWIN.bmp", nme.NME_assets_tilesets_townwin_bmp);
			type.set ("assets/TileSets/TOWNWIN.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/TREE.GIF", nme.NME_assets_tilesets_tree_gif);
			type.set ("assets/TileSets/TREE.GIF", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/TileSets/VILDAM.bmp", nme.NME_assets_tilesets_vildam_bmp);
			type.set ("assets/TileSets/VILDAM.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/VILFLR.bmp", nme.NME_assets_tilesets_vilflr_bmp);
			type.set ("assets/TileSets/VILFLR.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/VILINT.bmp", nme.NME_assets_tilesets_vilint_bmp);
			type.set ("assets/TileSets/VILINT.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/VILSHD.bmp", nme.NME_assets_tilesets_vilshd_bmp);
			type.set ("assets/TileSets/VILSHD.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			className.set ("assets/TileSets/_BACKUP_.bmp", nme.NME_assets_tilesets__backup__bmp);
			type.set ("assets/TileSets/_BACKUP_.bmp", Reflect.field (AssetType, "binary".toUpperCase ()));
			
			
			initialized = true;
			
		}
		
	}
	
	
}


class NME_assets_data_beep_mp3 extends flash.media.Sound { }
class NME_assets_data_autotiles_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_autotiles_alt_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_base_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_beep_mp4 extends flash.media.Sound { }
class NME_assets_data_button_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_a_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_b_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_c_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_down_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_left_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_right_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_up_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_x_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_y_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_courier_ttf extends flash.text.Font { }
class NME_assets_data_cursor_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_default_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_fontdata10pt_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_fontdata11pt_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_handle_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_logo_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_logo_corners_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_logo_light_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_nokiafc22_ttf extends flash.text.Font { }
class NME_assets_data_stick_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_flixel_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_open_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_pause_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_play_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_record_off_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_record_on_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_restart_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_step_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_stop_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vis_bounds_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_entrymap_tmx extends flash.utils.ByteArray { }
class NME_assets_forest_tmx extends flash.utils.ByteArray { }
class NME_assets_foresttiles_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_haxeflixel_svg extends flash.utils.ByteArray { }
class NME_assets_invtile_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_mountain_landscape_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_player_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_testingmap_tmx extends flash.utils.ByteArray { }
class NME_assets_tilesets_bench_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_bench_gif extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_tilesets_cliffveg_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_clifshd_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_clifveg2_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_encint_gif extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_tilesets_fencdam_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_fence_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_fencshd1_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_fencshd2_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_grs2roc_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_inven3_tif extends flash.utils.ByteArray { }
class NME_assets_tilesets_kitchen_gif extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_tilesets_pave_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_ruin_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_table1_gif extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_tilesets_test5b_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_test6_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_test7b_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_test7b_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_tilesets_townbot_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_townbot2_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_towndoor_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_townjnt_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_townjnt2_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_townshd1_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_towntop_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_townwin_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_tree_gif extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_tilesets_vildam_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_vilflr_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_vilint_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets_vilshd_bmp extends flash.utils.ByteArray { }
class NME_assets_tilesets__backup__bmp extends flash.utils.ByteArray { }
