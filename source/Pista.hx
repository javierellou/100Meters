package;

import flixel.FlxSprite;
import PlayState;
import flixel.FlxG;

class Pista extends FlxSprite{
	var playState:PlayState;
	var SPEED:Float = 0;
	@:allow(Player)
	var canMove:Bool = false;
	public static var ismovible:Bool = false;

	public function new(x:Float = 0, y:Float = 550) {
		super(x, y);
		loadGraphic(AssetPaths.pista__png);

		drag.x = 800;
		playState = new PlayState();
	}

// TODO: Change the position in which Pista stops
	function sendMovePlayer() {
		if (x < -18043) canMove = false;
		trace(x);
		trace(canMove);
	}

	function updateMovement() {
		if (canMove)
		{
			trace("Condition: ", canMove);
			velocity.x = SPEED * -1;
			if (x < 640) {velocity.x = SPEED * -1;}
			else {velocity.x = 0;}

			if (SPEED < 0) {SPEED -= 20;}
		} else {
			velocity.x = 0;
		}
	}

	function calculateSpeed() {
		var isClicked:Bool = false;
		isClicked = FlxG.mouse.justPressed;
		
		if (isClicked)
		{
			SPEED += 40;
		}
	}

	override function update(elapsed:Float) {
		super.update(elapsed);
		sendMovePlayer();
		updateMovement();
		calculateSpeed();
	}
}
