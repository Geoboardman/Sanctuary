package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;

/**
 * ...
 * @author Richard Saville 9/6/2013
 */
class Player extends FlxSprite
{

	public function new() 
	{
		super(0, 0);
		loadGraphic("assets/player.png", true, true, 32);
		addAnimation("walkDown", [0, 1, 2, 3, 4, 5, 6, 7], 8, true);
		addAnimation("walkLeft", [8, 9, 10, 11, 12, 13, 14, 15], 8, true);
		addAnimation("walkRight", [16, 17, 18, 19, 20, 21, 22, 23], 8, true);
		addAnimation("walkUp", [24, 25, 26, 27, 28, 29, 30, 31], 8, true);
		maxVelocity.x = 150;
        maxVelocity.y = 150;
        acceleration.y = 200;
        drag.x = maxVelocity.x * 4;
		drag.y = maxVelocity.y * 4;
	}
	
	//Basic game loop function again!
	override public function update():Void
	{
		//control the player with keyboard
		acceleration.x = 0;
		acceleration.y = 0;
			
        if (FlxG.keys.LEFT)
        {
			play("walkLeft");
			acceleration.x = -maxVelocity.x * 4;
        }
        else if (FlxG.keys.RIGHT)
        {
			play("walkRight");
            acceleration.x = maxVelocity.x * 4;
        }
        else if (FlxG.keys.UP)
        {
			play("walkUp");
            acceleration.y = -maxVelocity.y * 4;
        }
        else if (FlxG.keys.DOWN)
        {
			play("walkDown");
            acceleration.y = maxVelocity.y * 4;
        }
		else
		{
			frame = frame;
		}
		super.update();
	}
	
}