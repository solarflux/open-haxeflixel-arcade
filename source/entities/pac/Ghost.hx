package entities.pac;

import flixel.FlxSprite;

/**
 * ...
 * @author Kai
 */
class Ghost extends FlxSprite
{

	public function new(X:Float=0, Y:Float=0) 
	{
		super(X, Y);
		loadGraphic("assets/images/ghost.png", true, 16, 16);
		
		animation.add("idle", [0, 1], 3, true);
		animation.play("idle");
	}
	
}