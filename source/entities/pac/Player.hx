package entities.pac;

import flixel.FlxObject;
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
		loadGraphic("assets/images/man.png", true, 16, 16);
		
		setFacingFlip(FlxObject.RIGHT, false, false);
		setFacingFlip(FlxObject.LEFT, true, false);
		setFacingFlip(FlxObject.UP, false, false);
		setFacingFlip(FlxObject.DOWN, false, true);
		
		animation.add("right", [0, 1], 3, true);
		animation.add("up", [2, 3], 3, true);
		
		animation.play("right");
		
		facing = FlxObject.LEFT;
	}
	
}