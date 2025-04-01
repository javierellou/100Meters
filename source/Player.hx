package;

import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.FlxG;

class Player extends FlxSprite
{
	public var SPEED:Float = 0;
	@:allow(Pista)
	var canMovePlayer:Bool = true;
	
	public function new(x:Float = 0, y:Float = 0) {
		super(x, y);

		makeGraphic(48, 120, FlxColor.BLUE);
		drag.x = 800;
	}

	function updateMovement() {
	  if (canMovePlayer) {
      velocity.x = SPEED;
    }
		else if (!(canMovePlayer)) {velocity.x = 0;}

		if (SPEED < 0) {SPEED -= 20;}
	}

	function increaseVelocity() {
		var isClicked:Bool = false;
		isClicked = FlxG.mouse.justPressed;

		if (isClicked)
		{
			SPEED += 40;
		} 
	}
 
	public function sendCanMove(pos:Pista) {
		if (x >= 640) {
      pos.canMove = true;
      canMovePlayer = false;
    }
		else {pos.canMove = false;}
	}

	override function update(elapsed:Float) {
		updateMovement();
		increaseVelocity();
		super.update(elapsed);
		trace(SPEED); // Debug purposes
    trace(canMovePlayer);
	}

}

