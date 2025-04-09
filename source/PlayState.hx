package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;
import Pista;
import flixel.ui.FlxButton;

class PlayState extends FlxState
{
	public var player:Player;
	var background:Background;
	var pista:Pista;
  var sprintTime:SprintTime;
  var timerBackground:FlxSprite;
  var startButton:FlxButton;

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

    startButton = new FlxButton(10, 80, "Start", startSprint);
    
		add(background);
		add(pista);
		add(player);
    add(timerBackground);
    add(sprintTime);
    add(startButton);
	}

  // TODO: make that you can unly sprint if the button is pressed
  function startSprint() {
      startButton.kill();
      sprintTime.startTimer();
  }

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		player.sendCanMove(pista);
    pista.sendMovePlayer(player);
    sprintTime.stopTimer(player.x);
	}
}
