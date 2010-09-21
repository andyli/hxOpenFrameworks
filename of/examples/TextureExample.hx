package of.examples;

import cpp.Lib;
import haxe.io.Bytes;
import haxe.io.BytesData;
import of.utils.Types;
import of.utils.Constants;
import of.graphics.Texture;

using of.helpers.FunctionInjector;

class TextureExample extends of.app.BaseApp
{
	var texGray:Texture;
	var texColor:Texture;
	var texColorAlpha:Texture;

	var w:Int;
	var h:Int;
	
	var colorPixels:BytesData;
	var grayPixels:BytesData;
	var colorAlphaPixels:BytesData;
		
	override public function setup():Void {
		w = 250;
		h = 200;
		
		texGray = new Texture();
		texColor = new Texture();
		texColorAlpha = new Texture();
		
		texGray.allocate(w,h,Constants.GL_LUMINANCE);
		texColor.allocate(w,h,Constants.GL_RGB);
		texColorAlpha.allocate(w,h,Constants.GL_RGBA);
		
		grayPixels			= Bytes.alloc(w*h).getData();
		colorPixels 		= Bytes.alloc(w*h*3).getData();
		colorAlphaPixels	= Bytes.alloc(w*h*4).getData();

		// gray pixels, set them randomly
		for (i in 0...w*h){
			grayPixels[i] = cast (randomuf() * 255);
		}
		
		// color pixels, use w and h to control red and green
		for (i in 0...w){
			for (j in 0...h){
				colorPixels[(j*w+i)*3 + 0] = cast i;	// r
				colorPixels[(j*w+i)*3 + 1] = cast j;	// g
				colorPixels[(j*w+i)*3 + 2] = cast 0;	// b
			}
		}
		
		// color alpha pixels, use w and h to control red and green
		for (i in 0...w){
			for (j in 0...h){
				colorAlphaPixels[(j*w+i)*4 + 0] = cast 255;	// r
				colorAlphaPixels[(j*w+i)*4 + 1] = cast 133;	// g
				colorAlphaPixels[(j*w+i)*4 + 2] = cast 200; // b
				colorAlphaPixels[(j*w+i)*4 + 3] = cast i; 	// alpha
			}
		}
		
		
		texGray.loadData(grayPixels, w,h, Constants.GL_LUMINANCE);
		texColor.loadData(colorPixels, w,h, Constants.GL_RGB);
		texColorAlpha.loadData(colorAlphaPixels, w,h, Constants.GL_RGBA);
	}
	
	override public function update():Void {
		background(255,255,255);
	
		for (i in 0...w){
			for (j in 0...h){
				grayPixels[j*w+i] = cast (randomuf() * 255);
			}
		}
		texGray.loadData(grayPixels, w,h, Constants.GL_LUMINANCE);
	}
	
	override public function draw():Void {
		setColor(0xffffff);
		
		texGray.draw(100,100,w,h);
		texColor.draw(350,300,w,h);
		
		// 	blending had to be enabled 
		// 	for transparency to work:
		
		enableAlphaBlending();
		texColorAlpha.draw(250, 200, w, h);
		disableAlphaBlending();
	}
	
	override public function mouseMoved(x:Int, y:Int):Void {
		// when the mouse moves, we change the color image:
		var pct = x / getWidth();
		for (i in 0...w){
			for (j in 0...h){
				colorPixels[(j*w+i)*3 + 0] = cast i;	// r
				colorPixels[(j*w+i)*3 + 1] = cast j;	// g
				colorPixels[(j*w+i)*3 + 2] = cast (pct*255); // b
			}
		}
		// finally, load those pixels into the texture
		texColor.loadData(colorPixels, w,h, Constants.GL_RGB);
	}
	
	public static function main():Void {
		setupOpenGL(new of.app.AppGlutWindow(), 1024, 768, Constants.OF_FULLSCREEN);
		runApp(new TextureExample());
	}
}