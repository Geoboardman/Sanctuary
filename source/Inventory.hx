package ;
import flash.display.Sprite;
import org.flixel.FlxGroup;
import org.flixel.FlxSprite;
import org.flixel.util.FlxArray;
import org.flixel.util.FlxPoint;

/**
 * ...
 * @author ...
 */
class Inventory extends FlxGroup
{
	private var items:FlxGroup;
	private var invTile:FlxSprite;
	private var invWidth:Int;
	private var invHeight:Int;
	
	
	public function new() 
	{
		super(100);
		invWidth = 5;
		invHeight = 5;
		var startPosX = 200;
		var startPosY = 200;
		//invTile = new FlxSprite();
		//invTile.loadGraphic("assets/invTile.png", false, true, 32);
		items = new FlxGroup();
		var itemsIndex = 0;
		for (i in 0...5)
		{
			for (j in 0...5)
			{
				invTile = new FlxSprite();
				invTile.loadGraphic("assets/invTile.png", false, false, 32,32);
				//invTile.scale = new FlxPoint(2,2);
				invTile.scrollFactor.x = 0;
				invTile.scrollFactor.y = 0;
				invTile.x = (i * 32);// + startPosX;
				invTile.y = (j * 32);// + startPosY;
				add(invTile);
				
				//add itemGraphic
				//if (itemsIndex < items.length)
				//{
					//add(items[itemsIndex]);
					//itemsIndex++;
				//}
			}
		}
		
	}
	
	public function addItem(item:Item)
	{
		items.add(item);
	}
	
	//Basic game loop function again!
	override public function update():Void
	{
		super.update();
	}
	
}