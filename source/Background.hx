package;

import flixel.FlxSprite;

class Background extends FlxSprite
{
	public function new(x:Float = 0, y:Float = 0) {
		super(x, y);
		loadGraphic(AssetPaths.Gradas__png);
 }	
}
