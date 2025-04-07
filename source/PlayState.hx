package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;
import Pista;

class PlayState extends FlxState
{
	public var player:Player;
	var background:Background;
	var pista:Pista;
  var sprintTime:SprintTime;
  var timerBackground:FlxSprite;

	override public function create()
	{
		super.create();
    
		background = new Background();
    timerBackground = new FlxSprite(10, 10);
    timerBackground.makeGraphic(200, 60, FlxColor.BLACK);
    
    pista = new Pista();
		player = new Player(10,460);
		pista = new Pista();

    sprintTime = new SprintTime(20, 20);
    sprintTime.startTimer();

		add(background);
		add(pista);
		add(player);
    add(timerBackground);
    add(sprintTime);
	}


	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		player.sendCanMove(pista);
    pista.sendMovePlayer(player);
    sprintTime.stopTimer(player.x);
	}
}
