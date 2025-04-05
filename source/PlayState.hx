package;

import flixel.FlxState;
import Pista;

class PlayState extends FlxState
{
	public var player:Player;
	var background:Background;
	var pista:Pista;
  var sprintTime:SprintTime;

	override public function create()
	{
		super.create();
    
		background = new Background();
    
    pista = new Pista();
		player = new Player(10,460);
		pista = new Pista();
    sprintTime = new SprintTime(20, 20);
    sprintTime.startTimer();

		add(background);
		add(pista);
		add(player);
    add(sprintTime);
	}


	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		player.sendCanMove(pista);
    pista.sendMovePlayer(player);
	}
}
