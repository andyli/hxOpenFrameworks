package of.examples;

import cpp.Lib;
import of.utils.Types;
import of.utils.Constants;

using of.helpers.OpenFrameworksContext;

typedef DraggableVertex = {
	var	x:Float;
	var y:Float;
	var bBeingDragged:Bool;
	var bOver:Bool;
	var	radius:Float;
}

class PolygonExample extends of.app.BaseApp
{
	var nCurveVertexes:Int;
	var curveVertices:Array<DraggableVertex>;
		
	override public function setup():Void {
		background(255, 255, 255);
		setFrameRate(60);
		
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
		fill();
		setColor(0xe0be21);

		//------(a)--------------------------------------
		// 
		// 		draw a star
		//
		// 		use poly winding odd, the default rule
		//
		// 		info about the winding rules is here:
		//		http://glprogramming.com/red/images/Image128.gif
		// 
		setPolyMode(Constants.OF_POLY_WINDING_ODD);	// this is the normal mode
		beginShape();
			vertex(200,135);
			vertex(15,135);
			vertex(165,25);
			vertex(105,200);
			vertex(50,25);
		endShape();
		
		
		//------(b)--------------------------------------
		// 
		// 		draw a star
		//
		// 		use poly winding nonzero
		//
		// 		info about the winding rules is here:
		//		http://glprogramming.com/red/images/Image128.gif
		// 
		setColor(0xb5de10);
		setPolyMode(Constants.OF_POLY_WINDING_NONZERO);
		beginShape();
			vertex(400,135);
			vertex(215,135);
			vertex(365,25);
			vertex(305,200);
			vertex(250,25);
		endShape();
		//-------------------------------------
		
		
		
		//------(c)--------------------------------------
		// 
		// 		draw a star dynamically
		//
		// 		use the mouse position as a pct
		//		to calc nPoints and internal point radius
		//
		var xPct = mouseX / getWidth();
		var yPct = mouseY / getHeight();
		var nTips = Std.int(5 + xPct * 60);
		var nStarPts = Std.int(nTips * 2);
		var angleChangePerPt = Constants.TWO_PI / nStarPts;
		var innerRadius = 0 + yPct*80;
		var outerRadius = 80.0;
		var origx = 525.0;
		var origy = 100.0;
		var angle = 0.0;
		
		setColor(0xa16bca);
		beginShape();
		for (i in 0...nStarPts){
			if (i % 2 == 0) {
				// inside point:
				var x = origx + innerRadius * cos(angle);
				var y = origy + innerRadius * sin(angle);
				vertex(x,y);
			} else {
				// outside point
				var x = origx + outerRadius * cos(angle);
				var y = origy + outerRadius * sin(angle);
				vertex(x,y);
			}
			angle += angleChangePerPt;
		}
		endShape();
		//-------------------------------------
		
		//------(d)--------------------------------------
		// 
		// 		poylgon of random points
		//
		// 		lots of self intersection, 500 pts is a good stress test
		// 
		// 
		setColor(0x0cb0b6);
		setPolyMode(Constants.OF_POLY_WINDING_ODD);
		beginShape();
		for (i in 0...10){
			vertex(random(650,850), random(20,200));
		}
		endShape();
		//-------------------------------------
		
		
		//------(e)--------------------------------------
		// 
		// 		use sin cos and time to make some spirally shape
		//
		pushMatrix();
			translate(100,300,0);
			setColor(0xff2220);
			fill();
			setPolyMode(Constants.OF_POLY_WINDING_ODD);
			beginShape();
			var angleStep 	= Constants.TWO_PI/(100.0 + sin(getElapsedTimef()/5.0) * 60); 
			var radiusAdder = 0.5;
			var radius 		= 0.0;
			for (i in 0...200){
				var anglef = (i) * angleStep;
				var x = radius * cos(anglef);
				var y = radius * sin(anglef); 
				vertex(x,y);
				radius += radiusAdder; 
			}
			endShape(Constants.OF_CLOSE);
		popMatrix();
		//-------------------------------------
		
		//------(f)--------------------------------------
		// 
		// 		curveVertex
		// 
		// 		because it uses catmul rom splines, we need to repeat the first and last 
		// 		items so the curve actually goes through those points
		//

		setColor(0x2bdbe6);
		beginShape();
		
			for (i in 0...nCurveVertexes){
				
				
				// sorry about all the if/states here, but to do catmull rom curves
				// we need to duplicate the start and end points so the curve acutally 
				// goes through them.
				
				// for i == 0, we just call the vertex twice
				// for i == nCurveVertexes-1 (last point) we call vertex 0 twice
				// otherwise just normal curveVertex call
				
				if (i == 0){
					curveVertex(curveVertices[0].x, curveVertices[0].y); // we need to duplicate 0 for the curve to start at point 0
					curveVertex(curveVertices[0].x, curveVertices[0].y); // we need to duplicate 0 for the curve to start at point 0
				} else if (i == nCurveVertexes-1){
					curveVertex(curveVertices[i].x, curveVertices[i].y);
					curveVertex(curveVertices[0].x, curveVertices[0].y);	// to draw a curve from pt 6 to pt 0
					curveVertex(curveVertices[0].x, curveVertices[0].y);	// we duplicate the first point twice
				} else {
					curveVertex(curveVertices[i].x, curveVertices[i].y);
				}
			}
			
		endShape();
		
		
		// show a faint the non-curve version of the same polygon:
		enableAlphaBlending();
			noFill();
			setColor(0,0,0,40);
			beginShape();
				for (i in 0...nCurveVertexes){
					vertex(curveVertices[i].x, curveVertices[i].y);
				}
			endShape(true);
			
			
			setColor(0,0,0,80);
			for (i in 0...nCurveVertexes){
				if (curveVertices[i].bOver == true) fill();
				else noFill();
				circle(curveVertices[i].x, curveVertices[i].y,4);
			}
		disableAlphaBlending();
		//-------------------------------------
		
		
		//------(g)--------------------------------------
		// 
		// 		bezierVertex
		// 
		// 		with bezierVertex we can draw a curve from the current vertex
		//		through the the next three vertexes we pass in.
		//		(two control points and the final bezier point)
		//		
		
		var x0 = 500;
		var y0 = 300;
		var x1 = 550+50*cos(getElapsedTimef()*1.0);
		var y1 = 300+100*sin(getElapsedTimef()/3.5);
		var x2 = 600+30*cos(getElapsedTimef()*2.0);
		var y2 = 300+100*sin(getElapsedTimef());
		var x3 = 650;
		var y3 = 300;
		
		
		
		fill();
		setColor(0xFF9933);
		beginShape();
		vertex(x0,y0);
		bezierVertex(x1,y1,x2,y2,x3,y3);
		endShape();
		
		
		enableAlphaBlending();
			fill();
			setColor(0,0,0,40);
			circle(x0,y0,4);
			circle(x1,y1,4);
			circle(x2,y2,4);
			circle(x3,y3,4);
		disableAlphaBlending();
		
		
		
		//------(h)--------------------------------------
		// 
		// 		holes / nextContour
		// 
		// 		with nextContour we can create multi-contour shapes
		// 		this allows us to draw holes, for example... 
		//
		fill();
		setColor(0xd3ffd3);
		rect(80,480,140,70);
		setColor(0xff00ff);
		
		beginShape();
			
			vertex(100,500);
			vertex(180,550);
			vertex(100,600);
			
			nextContour(true);
			
			vertex(120,520);
			vertex(160,550);
			vertex(120,580);
			
		endShape(true);
		//-------------------------------------
		
		
		//------(i)--------------------------------------
		// 
		// 		CSG / nextContour
		// 
		// 		with different winding rules, you can even use nextContour to 
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
		noFill();
		
		
		pushMatrix();
		
		setPolyMode(Constants.OF_POLY_WINDING_ODD);
		
		beginShape();
			
			vertex(300,500);
			vertex(380,550);
			vertex(300,600);
			
			nextContour(true);
			
			for (i in 0...20){
				var anglef = (i / 19.0) * Constants.TWO_PI;
				var x = 340 + 30 * cos(anglef);
				var y = 550 + 30 * sin(anglef); 
				vertex(x,y);
				radius 	+= radiusAdder; 
			}
			

		endShape(true);
		
		translate(100,0,0);
		
		setPolyMode(Constants.OF_POLY_WINDING_NONZERO);	
		beginShape();
			
			vertex(300,500);
			vertex(380,550);
			vertex(300,600);
			
			nextContour(true);
			
			for (i in 0...20){
				var anglef = (i / 19.0) * Constants.TWO_PI;
				var x = 340 + 30 * cos(anglef);
				var y = 550 + 30 * sin(anglef); 
				vertex(x,y);
				radius 	+= radiusAdder; 
			}
			
		endShape(true);
		
		translate(100, 0, 0);
		setPolyMode(Constants.OF_POLY_WINDING_ABS_GEQ_TWO);
		beginShape();
			vertex(300,500);
			vertex(380,550);
			vertex(300,600);
			nextContour(true);
			
			for (i in 0...20){
				var anglef = (i / 19.0) * Constants.TWO_PI;
				var x = 340 + 30 * cos(anglef);
				var y = 550 + 30 * sin(anglef); 
				vertex(x,y);
				radius 	+= radiusAdder; 
			}
			
			
		endShape(true);
		
		popMatrix();
		//-------------------------------------
		
		
		setColor(0x000000);
		drawBitmapString("(a) star\nwinding rule odd", 20,210);
		
		setColor(0x000000);
		drawBitmapString("(b) star\nwinding rule nonzero", 220,210);
		
		setColor(0x000000);
		drawBitmapString("(c) dynamically\ncreated shape", 420,210);
		
		setColor(0x000000);
		drawBitmapString("(d) random points\npoly", 670,210);
		
		setColor(0x000000);
		drawBitmapString("(e) fun with sin/cos", 20,410);
		
		setColor(0x000000);
		drawBitmapString("(f) curveVertex\nuses catmull rom\nto make curved shapes", 220,410);
		
		setColor(0x000000);
		drawBitmapString("(g) bezierVertex\nuses bezier to draw curves", 460,410);
		
		
		setColor(0x000000);
		drawBitmapString("(h) nextContour\nallows for holes", 20,610);
		
		setColor(0x000000);
		drawBitmapString("(i) nextContour\ncan even be used for CSG operations\nsuch as union and intersection", 260,620);
	}
	
	override public function mouseMoved(x:Int, y:Int):Void {
		for (i in 0...nCurveVertexes){
			var diffx = x - curveVertices[i].x;
			var diffy = y - curveVertices[i].y;
			var dist = sqrt(diffx*diffx + diffy*diffy);
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
			var dist = sqrt(diffx*diffx + diffy*diffy);
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
		setupOpenGL(new of.app.AppGlutWindow(), 1024, 768, Constants.OF_WINDOW);
		runApp(new PolygonExample());
	}
}