package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxGroup;

/**
 * ...
 * @author Richard Saville 9/6/2013
 */
class Player extends FlxGroup
{

	public var inventory:Inventory;
	public var body:FlxSprite;
	
	public function new() 
	{
		super();
		body = new FlxSprite();
		inventory = new Inventory();
		body.loadGraphic("assets/player.png", true, true, 32);
		body.addAnimation("walkDown", [0, 1, 2, 3, 4, 5, 6, 7], 8, true);
		body.addAnimation("walkLeft", [8, 9, 10, 11, 12, 13, 14, 15], 8, true);
		body.addAnimation("walkRight", [16, 17, 18, 19, 20, 21, 22, 23], 8, true);
		body.addAnimation("walkUp", [24, 25, 26, 27, 28, 29, 30, 31], 8, true);
		body.maxVelocity.x = 150;
        body.maxVelocity.y = 150;
        body.acceleration.y = 200;
        body.drag.x = body.maxVelocity.x * 4;
		body.drag.y = body.maxVelocity.y * 4;
		
		add(body);
		add(inventory);
	}
	
	//Basic game loop function again!
	override public function update():Void
	{
		//control the player with keyboard
		body.acceleration.x = 0;
		body.acceleration.y = 0;
			
        if (FlxG.keys.LEFT)
        {
			body.play("walkLeft");
			body.acceleration.x = -body.maxVelocity.x * 4;
        }
        else if (FlxG.keys.RIGHT)
        {
			body.play("walkRight");
            body.acceleration.x = body.maxVelocity.x * 4;
        }
        else if (FlxG.keys.UP)
        {
			body.play("walkUp");
            body.acceleration.y = -body.maxVelocity.y * 4;
        }
        else if (FlxG.keys.DOWN)
        {
			body.play("walkDown");
            body.acceleration.y = body.maxVelocity.y * 4;
        }
		else
		{
			body.frame = body.frame;
		}
		if (FlxG.keys.I)
		{
			//toggle inventory visibility
			if (inventory.visible)
				inventory.visible = false;
			else
				inventory.visible = true;
		}
		super.update();
	}
	
}