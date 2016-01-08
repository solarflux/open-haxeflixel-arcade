package states;

import entities.invade.Bullet;
import entities.invade.Player;
import flixel.FlxG;
import flixel.FlxState;
import flixel.group.FlxTypedGroup;

/**
 * ...
 * @author Kai
 */
class Invade extends FlxState
{
	
	public var player:Player;
	public var playerBullets:FlxTypedGroup<Bullet>;
	public var enemyBullets:FlxTypedGroup<Bullet>;
	
	override public function create():Void
	{
		super.create();
		
		player = new Player(96, 256);
		add(player);
		
		playerBullets = new FlxTypedGroup<Bullet>();
		add(playerBullets);
	}

	//Set objects to null to save memory
	override public function destroy():Void
	{
		player.destroy();
		player = null;
		
		playerBullets.destroy();
		player = null;
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		if (FlxG.keys.justPressed.SPACE)
		{
			playerBullets.add(new Bullet(player.x + 8, player.y + 3, 0, -2.5, true));
		}
		super.update();
	}	
	
}