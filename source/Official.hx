package;

import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.math.FlxRandom;

class Official extends FlxSprite
{
  var onYourMarksTime:FlxRandom = new FlxRandom(1, 3);
  var setTime:FlxRandom = new FlxRandom(1, 3);
  var goTime:FlxRandom = new FlxRandom(1, 3); 

  public function new(x:Float, y:Float) {
    super(x, y);

    makeGraphics(45, 120, FlxColor.RED);
  }

  function onYourMarks() {
    
  }
}
