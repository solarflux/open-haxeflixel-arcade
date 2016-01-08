package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;

/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	
	public var gameButtons:FlxTypedGroup<FlxButton>;
	public var invadeButton:FlxButton;
	public var galButton:FlxButton;
	public var pacButton:FlxButton;
	public var snakeButton:FlxButton;
	public var centButton:FlxButton;
	public var frogButton:FlxButton;
	
	override public function create():Void
	{
		super.create();
		gameButtons = new FlxTypedGroup<FlxButton>();
		
		invadeButton = new FlxButton(20, 20, "Invade", invade);
		gameButtons.add(invadeButton);
		add(gameButtons);
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
	}
	
	function pac() {
		
	}
	
	function invade() {
		FlxG.switchState(new Invade());
	}
}