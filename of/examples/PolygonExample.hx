package of.examples;

import cpp.Lib;
import of.AppRunner;
import of.Graphics;
import of.Types;
import of.Constants;
import of.Utils;

typedef DraggableVertex = {
	var	x:Float;
	var y:Float;
	var bBeingDragged:Bool;
	var bOver:Bool;
	var	radius:Float;
}

class PolygonExample extends of.BaseApp
{
	var nCurveVertexes:Int;
	var curveVertices:Array<DraggableVertex>;
		
	override public function setup():Void {
		Graphics.background(255, 255, 255);
		AppRunner.setFrameRate(60);
		
		nCurveVertexes = 7;
		
		curveVertices = [];
		curveVertices.push( { x:326.0, y:209.0, bBeingDragged:false, bOver:false, radius:4.0 } );
		curveVertices.push( { x:306.0, y:279.0, bBeingDragged:false, bOver:false, radius:4.0 } );
		curveVertices.push( { x:265.0, y:331.0, bBeingDragged:false, bOver:false, radius:4.0 } );
		curveVertices.push( { x:304.0, y:383.0, bBeingDragged:false, bOver:false, radius:4.0 } );
		curveVertices.push( { x:374.0, y:383.0, bBeingDragged:false, bOver:false, radius:4.0 } );
		curveVertices.push( { x:418.0, y:309.0, bBeingDragged:false, bOver:false, radius:4.0 } );
		curveVertices.push( { x:345.0, y:279.0, bBeingDragged:false, bOver:false, radius:4.0 } );
	}
	
	override public function draw():Void {
		Graphics.fill();
		Graphics.setColor(0xe0be21);

		//------(a)--------------------------------------
		// 
		// 		draw a star
		//
		// 		use poly winding odd, the default rule
		//
		// 		info about the winding rules is here:
		//		http://glprogramming.com/red/images/Image128.gif
		// 
		Graphics.setPolyMode(Constants.OF_POLY_WINDING_ODD);	// this is the normal mode
		Graphics.beginShape();
			Graphics.vertex(200,135);
			Graphics.vertex(15,135);
			Graphics.vertex(165,25);
			Graphics.vertex(105,200);
			Graphics.vertex(50,25);
		Graphics.endShape();
		
		
		//------(b)--------------------------------------
		// 
		// 		draw a star
		//
		// 		use poly winding nonzero
		//
		// 		info about the winding rules is here:
		//		http://glprogramming.com/red/images/Image128.gif
		// 
		Graphics.setColor(0xb5de10);
		Graphics.setPolyMode(Constants.OF_POLY_WINDING_NONZERO);
		Graphics.beginShape();
			Graphics.vertex(400,135);
			Graphics.vertex(215,135);
			Graphics.vertex(365,25);
			Graphics.vertex(305,200);
			Graphics.vertex(250,25);
		Graphics.endShape();
		//-------------------------------------
		
		
		
		//------(c)--------------------------------------
		// 
		// 		draw a star dynamically
		//
		// 		use the mouse position as a pct
		//		to calc nPoints and internal point radius
		//
		var xPct = mouseX / AppRunner.getWidth();
		var yPct = mouseY / AppRunner.getHeight();
		var nTips = Std.int(5 + xPct * 60);
		var nStarPts = Std.int(nTips * 2);
		var angleChangePerPt = Constants.TWO_PI / nStarPts;
		var innerRadius = 0 + yPct*80;
		var outerRadius = 80.0;
		var origx = 525.0;
		var origy = 100.0;
		var angle = 0.0;
		
		Graphics.setColor(0xa16bca);
		Graphics.beginShape();
		for (i in 0...nStarPts){
			if (i % 2 == 0) {
				// inside point:
				var x = origx + innerRadius * Math.cos(angle);
				var y = origy + innerRadius * Math.sin(angle);
				Graphics.vertex(x,y);
			} else {
				// outside point
				var x = origx + outerRadius * Math.cos(angle);
				var y = origy + outerRadius * Math.sin(angle);
				Graphics.vertex(x,y);
			}
			angle += angleChangePerPt;
		}
		Graphics.endShape();
		//-------------------------------------
		
		//------(d)--------------------------------------
		// 
		// 		poylgon of random points
		//
		// 		lots of self intersection, 500 pts is a good stress test
		// 
		// 
		Graphics.setColor(0x0cb0b6);
		Graphics.setPolyMode(Constants.OF_POLY_WINDING_ODD);
		Graphics.beginShape();
		for (i in 0...10){
			Graphics.vertex(of.Math.random(650,850), of.Math.random(20,200));
		}
		Graphics.endShape();
		//-------------------------------------
		
		
		//------(e)--------------------------------------
		// 
		// 		use sin cos and time to make some spirally shape
		//
		Graphics.pushMatrix();
			Graphics.translate(100,300,0);
			Graphics.setColor(0xff2220);
			Graphics.fill();
			Graphics.setPolyMode(Constants.OF_POLY_WINDING_ODD);
			Graphics.beginShape();
			var angleStep 	= Constants.TWO_PI/(100.0 + Math.sin(Utils.getElapsedTimef()/5.0) * 60); 
			var radiusAdder = 0.5;
			var radius 		= 0.0;
			for (i in 0...200){
				var anglef = (i) * angleStep;
				var x = radius * Math.cos(anglef);
				var y = radius * Math.sin(anglef); 
				Graphics.vertex(x,y);
				radius += radiusAdder; 
			}
			Graphics.endShape(Constants.OF_CLOSE);
		Graphics.popMatrix();
		//-------------------------------------
		
		//------(f)--------------------------------------
		// 
		// 		Graphics.curveVertex
		// 
		// 		because it uses catmul rom splines, we need to repeat the first and last 
		// 		items so the curve actually goes through those points
		//

		Graphics.setColor(0x2bdbe6);
		Graphics.beginShape();
		
			for (i in 0...nCurveVertexes){
				
				
				// sorry about all the if/states here, but to do catmull rom curves
				// we need to duplicate the start and end points so the curve acutally 
				// goes through them.
				
				// for i == 0, we just call the vertex twice
				// for i == nCurveVertexes-1 (last point) we call vertex 0 twice
				// otherwise just normal Graphics.curveVertex call
				
				if (i == 0){
					Graphics.curveVertex(curveVertices[0].x, curveVertices[0].y); // we need to duplicate 0 for the curve to start at point 0
					Graphics.curveVertex(curveVertices[0].x, curveVertices[0].y); // we need to duplicate 0 for the curve to start at point 0
				} else if (i == nCurveVertexes-1){
					Graphics.curveVertex(curveVertices[i].x, curveVertices[i].y);
					Graphics.curveVertex(curveVertices[0].x, curveVertices[0].y);	// to draw a curve from pt 6 to pt 0
					Graphics.curveVertex(curveVertices[0].x, curveVertices[0].y);	// we duplicate the first point twice
				} else {
					Graphics.curveVertex(curveVertices[i].x, curveVertices[i].y);
				}
			}
			
		Graphics.endShape();
		
		
		// show a faint the non-curve version of the same polygon:
		Graphics.enableAlphaBlending();
			Graphics.noFill();
			Graphics.setColor(0,0,0,40);
			Graphics.beginShape();
				for (i in 0...nCurveVertexes){
					Graphics.vertex(curveVertices[i].x, curveVertices[i].y);
				}
			Graphics.endShape(true);
			
			
			Graphics.setColor(0,0,0,80);
			for (i in 0...nCurveVertexes){
				if (curveVertices[i].bOver == true) Graphics.fill();
				else Graphics.noFill();
				Graphics.circle(curveVertices[i].x, curveVertices[i].y,4);
			}
		Graphics.disableAlphaBlending();
		//-------------------------------------
		
		
		//------(g)--------------------------------------
		// 
		// 		Graphics.bezierVertex
		// 
		// 		with Graphics.bezierVertex we can draw a curve from the current vertex
		//		through the the next three vertexes we pass in.
		//		(two control points and the final bezier point)
		//		
		
		var x0 = 500;
		var y0 = 300;
		var x1 = 550+50*Math.cos(Utils.getElapsedTimef()*1.0);
		var y1 = 300+100*Math.sin(Utils.getElapsedTimef()/3.5);
		var x2 = 600+30*Math.cos(Utils.getElapsedTimef()*2.0);
		var y2 = 300+100*Math.sin(Utils.getElapsedTimef());
		var x3 = 650;
		var y3 = 300;
		
		
		
		Graphics.fill();
		Graphics.setColor(0xFF9933);
		Graphics.beginShape();
		Graphics.vertex(x0,y0);
		Graphics.bezierVertex(x1,y1,x2,y2,x3,y3);
		Graphics.endShape();
		
		
		Graphics.enableAlphaBlending();
			Graphics.fill();
			Graphics.setColor(0,0,0,40);
			Graphics.circle(x0,y0,4);
			Graphics.circle(x1,y1,4);
			Graphics.circle(x2,y2,4);
			Graphics.circle(x3,y3,4);
		Graphics.disableAlphaBlending();
		
		
		
		//------(h)--------------------------------------
		// 
		// 		holes / Graphics.nextContour
		// 
		// 		with Graphics.nextContour we can create multi-contour shapes
		// 		this allows us to draw holes, for example... 
		//
		Graphics.fill();
		Graphics.setColor(0xd3ffd3);
		Graphics.rect(80,480,140,70);
		Graphics.setColor(0xff00ff);
		
		Graphics.beginShape();
			
			Graphics.vertex(100,500);
			Graphics.vertex(180,550);
			Graphics.vertex(100,600);
			
			Graphics.nextContour(true);
			
			Graphics.vertex(120,520);
			Graphics.vertex(160,550);
			Graphics.vertex(120,580);
			
		Graphics.endShape(true);
		//-------------------------------------
		
		
		//------(i)--------------------------------------
		// 
		// 		CSG / Graphics.nextContour
		// 
		// 		with different winding rules, you can even use Graphics.nextContour to 
		// 		perform constructive solid geometry 
		// 		
		// 		be careful, the clockwiseness or counter clockwisenss of your multiple
		// 		contours matters with these winding rules.
		//
		// 		for csg ideas, see : http://glprogramming.com/red/chapter11.html
		// 
		// 		info about the winding rules is here:
		//		http://glprogramming.com/red/images/Image128.gif
		// 
		Graphics.noFill();
		
		
		Graphics.pushMatrix();
		
		Graphics.setPolyMode(Constants.OF_POLY_WINDING_ODD);
		
		Graphics.beginShape();
			
			Graphics.vertex(300,500);
			Graphics.vertex(380,550);
			Graphics.vertex(300,600);
			
			Graphics.nextContour(true);
			
			for (i in 0...20){
				var anglef = (i / 19.0) * Constants.TWO_PI;
				var x = 340 + 30 * Math.cos(anglef);
				var y = 550 + 30 * Math.sin(anglef); 
				Graphics.vertex(x,y);
				radius 	+= radiusAdder; 
			}
			

		Graphics.endShape(true);
		
		Graphics.translate(100,0,0);
		
		Graphics.setPolyMode(Constants.OF_POLY_WINDING_NONZERO);	
		Graphics.beginShape();
			
			Graphics.vertex(300,500);
			Graphics.vertex(380,550);
			Graphics.vertex(300,600);
			
			Graphics.nextContour(true);
			
			for (i in 0...20){
				var anglef = (i / 19.0) * Constants.TWO_PI;
				var x = 340 + 30 * Math.cos(anglef);
				var y = 550 + 30 * Math.sin(anglef); 
				Graphics.vertex(x,y);
				radius 	+= radiusAdder; 
			}
			
		Graphics.endShape(true);
		
		Graphics.translate(100, 0, 0);
		Graphics.setPolyMode(Constants.OF_POLY_WINDING_ABS_GEQ_TWO);
		Graphics.beginShape();
			Graphics.vertex(300,500);
			Graphics.vertex(380,550);
			Graphics.vertex(300,600);
			Graphics.nextContour(true);
			
			for (i in 0...20){
				var anglef = (i / 19.0) * Constants.TWO_PI;
				var x = 340 + 30 * Math.cos(anglef);
				var y = 550 + 30 * Math.sin(anglef); 
				Graphics.vertex(x,y);
				radius 	+= radiusAdder; 
			}
			
			
		Graphics.endShape(true);
		
		Graphics.popMatrix();
		//-------------------------------------
		
		
		Graphics.setColor(0x000000);
		Graphics.drawBitmapString("(a) star\nwinding rule odd", 20,210);
		
		Graphics.setColor(0x000000);
		Graphics.drawBitmapString("(b) star\nwinding rule nonzero", 220,210);
		
		Graphics.setColor(0x000000);
		Graphics.drawBitmapString("(c) dynamically\ncreated shape", 420,210);
		
		Graphics.setColor(0x000000);
		Graphics.drawBitmapString("(d) random points\npoly", 670,210);
		
		Graphics.setColor(0x000000);
		Graphics.drawBitmapString("(e) fun with sin/cos", 20,410);
		
		Graphics.setColor(0x000000);
		Graphics.drawBitmapString("(f) Graphics.curveVertex\nuses catmull rom\nto make curved shapes", 220,410);
		
		Graphics.setColor(0x000000);
		Graphics.drawBitmapString("(g) Graphics.bezierVertex\nuses bezier to draw curves", 460,410);
		
		
		Graphics.setColor(0x000000);
		Graphics.drawBitmapString("(h) Graphics.nextContour\nallows for holes", 20,610);
		
		Graphics.setColor(0x000000);
		Graphics.drawBitmapString("(i) Graphics.nextContour\ncan even be used for CSG operations\nsuch as union and intersection", 260,620);
	}
	
	override public function mouseMoved(x:Int, y:Int):Void {
		for (i in 0...nCurveVertexes){
			var diffx = x - curveVertices[i].x;
			var diffy = y - curveVertices[i].y;
			var dist = Math.sqrt(diffx*diffx + diffy*diffy);
			if (dist < curveVertices[i].radius){
				curveVertices[i].bOver = true;
			} else {
				curveVertices[i].bOver = false;
			}	
		}
	}
	
	override public function mouseDragged(x:Int, y:Int, button:Int):Void {
		for (i in 0...nCurveVertexes){
			if (curveVertices[i].bBeingDragged == true){
				curveVertices[i].x = x;
				curveVertices[i].y = y;
			}
		}
	}
	
	override public function mousePressed(x:Int, y:Int, button:Int):Void {
		for (i in 0...nCurveVertexes){
			var diffx = x - curveVertices[i].x;
			var diffy = y - curveVertices[i].y;
			var dist = Math.sqrt(diffx*diffx + diffy*diffy);
			if (dist < curveVertices[i].radius){
				curveVertices[i].bBeingDragged = true;
			} else {
				curveVertices[i].bBeingDragged = false;
			}	
		}
	}
	
	override public function mouseReleased(?x:Int, ?y:Int, ?button:Int):Void {
		for (i in 0...nCurveVertexes){
			curveVertices[i].bBeingDragged = false;	
		}
	}
	
	public static function main():Void {
		AppRunner.setupOpenGL(new of.AppGlutWindow(), 1024, 768, Constants.OF_WINDOW);
		AppRunner.runApp(new PolygonExample());
	}
}