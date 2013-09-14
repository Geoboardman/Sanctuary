package;

import openfl.Assets;
import flash.geom.Rectangle;
import flash.net.SharedObject;
import org.flixel.FlxButton;
import org.flixel.FlxG;
import org.flixel.FlxPath;
import org.flixel.FlxSave;
import org.flixel.FlxObject;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;
import org.flixel.util.FlxMath;
import org.flixel.FlxTilemap;
import org.flixel.FlxCamera;

import flash.events.Event;
import flash.net.URLLoader;
import flash.net.URLRequest;

import org.flixel.tmx.TmxMap;
import org.flixel.tmx.TmxLayer;
import org.flixel.tmx.TmxObject;

class PlayState extends FlxState
{
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	private var player:Player;
	// Some static constants for the size of the tilemap tiles
	private var TILE_WIDTH:Int;
	private var TILE_HEIGHT:Int;
	// Basic level structure
	private var t:FlxTilemap;
	private var trees:FlxTilemap;
	
	public function new()
	{
		TILE_WIDTH = 32;
		TILE_HEIGHT = 32;
		
		super();
	}
	
	override public function create():Void
	{
		// Create a TmxMap with a tmx file
		var tmx : TmxMap = new TmxMap( Assets.getText('assets/Forest.tmx') );
		 
		t = new FlxTilemap();
		trees = new FlxTilemap();
		// Generate a CSV from the layer 'map' with all the tiles from the TileSet 'tiles'
		var mapCsv:String = tmx.getLayer('baselayer').toCsv( tmx.getTileSet('mountain_landscape') );
		var treeLayer:String = tmx.getLayer('trees').toCsv( tmx.getTileSet('mountain_landscape') );
		
		t.loadMap(mapCsv, "assets/mountain_landscape.png", 32, 32, FlxTilemap.OFF);
		trees.loadMap(treeLayer, "assets/mountain_landscape.png", 32, 32, FlxTilemap.OFF);
		add(t);
		add(trees);
		
		// Set a background color
		FlxG.bgColor = 0xff131c1b;
		// Show the mouse (in case it hasn't been disabled)
		#if !FLX_NO_MOUSE
		FlxG.mouse.show();
		#end
		add(new FlxText(0, 0, 100, "Welcome to Sanctuary!"));
		player = new Player();
		add(player);
		FlxG.camera.follow(player.body, FlxCamera.STYLE_TOPDOWN);
		//FlxG.worldBounds = t.getBounds();
		
		super.create();
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		t.destroy();
		t = null;
		trees.destroy();
		trees = null;
		player.destroy();
		player = null;
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		FlxG.collide(player, trees);
		player.update();
		super.update();
	}	
}