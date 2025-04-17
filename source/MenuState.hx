package;

import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.text.FlxText;

class MenuState  extends FlxState
{
  var startButton:FlxButton; 
  var exitButton:FlxButton;
  var title:FlxText;

  override public function create() {
    super.create();
    
    startButton = new FlxButton(0, 0, "Play", changeState);
    exitButton = new FlxButton(560, 390, "Exit", exitGame);
    
    startButton.scale.x = startButton.scale.y = 2;
    startButton.updateHitbox();
    startButton.label.setFormat(null, 24, FlxColor.BLACK, "center");
    startButton.label.fieldWidth = startButton.width;

    exitButton.scale.x = exitButton.scale.y = 2;
    exitButton.updateHitbox();
    exitButton.label.setFormat(null, 24, FlxColor.BLACK, "center");
    exitButton.label.fieldWidth = exitButton.width;
    
    title = new FlxText(0, 70, FlxG.width, "100 meters", 64);
    title.setFormat(null, 64, FlxColor.WHITE, "center");

    startButton.screenCenter();
    add(startButton);
    add(exitButton);
    add(title);
  }

  function changeState() {
    FlxG.switchState(new PlayState());
  }

  function exitGame() {
    Sys.exit(0);
  }

  override public function update(elapsed:Float) {
    super.update(elapsed);
    trace(startButton.y);
  }
}
