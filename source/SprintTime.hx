package;

import haxe.Timer;
import flixel.FlxSprite;
import DateTools;
import flixel.util.FlxColor;
import flixel.text.FlxText;

class SprintTime extends FlxText {
  @:allow(PlayState)
  var timer:Timer;
  var start: Date;
  var timePassed: Float = 0.0;
  var isActivated: Bool = false;
  var actualTime:Float;
  var totalTime:Float = 0.0;
  @:allow(PlayState)
  var resTime:Float = 0.0;

  public function new(x:Float = 0, y:Float = 0) {
    super(x, y, 0, Std.string(totalTime), 30);
  }

  public function startTimer() {
    if (!isActivated)
    {
      isActivated = true;
      timer = new Timer(1);
      timer.run = updateTimer;
    }
  }

  public function stopTimer(playerX:Float) {
    if (isActivated && playerX >= 1200) {
      isActivated = false;
      timer.stop();
    }
  }

  function updateTimer() {
    totalTime = haxe.Timer.stamp() - resTime;
    text = Std.string(totalTime);
  }

  override function update(elapsed:Float) {
    super.update(elapsed);
  }
}
