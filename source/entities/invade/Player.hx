package entities.invade;

import flixel.FlxG;
import flixel.FlxSprite;

/**
 * ...
 * @author Kai
 */
class Player extends FlxSprite
{

	public function new(X:Float=0, Y:Float=0) 
	{
		super(X, Y);
		
		//setup the player sprite
		loadGraphic("assets/images/space_invade.png", true, 16, 16);
		animation.add("player", [8], 0, true);
		animation.play("player");
	}

	override public function update():Void
	{
		if (FlxG.keys.pressed.LEFT)
		{
			x -= 1;
		}
		if (FlxG.keys.pressed.RIGHT)
		{
			x += 1;
		}
		
		super.update();
	}
}