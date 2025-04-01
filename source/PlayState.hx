package;

import flixel.FlxState;
import Pista;

class PlayState extends FlxState
{
	public var player:Player;
	var background:Background;
	var pista:Pista;

	override public function create()
	{
		super.create();
    
    // TODO: make the background smaller
		background = new Background();
		pista = new Pista();
		player = new Player(10,460);
		pista = new Pista();

		add(background);
		add(pista);
		add(player);
	}


	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		player.sendCanMove(pista);
    pista.sendMovePlayer(player);
	}
}
