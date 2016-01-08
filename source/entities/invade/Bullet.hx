package entities.invade;

import flixel.FlxSprite;

/**
 * ...
 * @author Kai
 */
class Bullet extends FlxSprite
{
	public var good:Bool = false;
	public var ySpeed:Float = 0;
	public var xSpeed:Float = 0;
	
	public function new(X:Float=0, Y:Float=0, _xSpeed:Float=0, _ySpeed:Float=0, _isGood:Bool=false) 
	{
		super(X, Y);
		
		//set vars from constructor
		good = _isGood;
		xSpeed = _xSpeed;
		ySpeed = _ySpeed;
		
		//load bullet sprite
		loadGraphic("assets/images/bullet.png", false, 1, 4);
	}
	
	override public function update():Void {
		x += xSpeed;
		y += ySpeed;
		super.update();
	}
}