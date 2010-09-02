
#ifndef _WIN32_WINNT
#   define _WIN32_WINNT 0x400
#endif

#define IMPLEMENT_API
#include <hx/CFFI.h>

#include "ofMain.h"
#include "ofAppGlutWindow.h"


/*
	ofAppRunner
*/

value _ofRunApp(value a) {	
	ofBaseApp* app = (ofBaseApp*) val_data(a);
	ofRunApp(app);
	
	return alloc_null();
}
DEFINE_PRIM(_ofRunApp,1);

value _ofSetupOpenGL(value a, value b, value c, value d) {
	ofSetupOpenGL((ofAppBaseWindow*) val_data(a), val_int(b), val_int(c), val_int(d));
	
	return alloc_null();
}
DEFINE_PRIM(_ofSetupOpenGL,4);

value _ofGetFrameRate() {
	return alloc_float(ofGetFrameRate());
}
DEFINE_PRIM(_ofGetFrameRate,0);

value _ofGetFrameNum() {
	return alloc_int(ofGetFrameNum());
}
DEFINE_PRIM(_ofGetFrameNum,0);

value _ofSetFrameRate(value a) {
	ofSetFrameRate(val_int(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSetFrameRate,1);

value _ofSleepMillis(value a) {
	ofSleepMillis(val_int(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSleepMillis,1);

value _ofGetLastFrameTime() {
	return alloc_float(ofGetLastFrameTime());
}
DEFINE_PRIM(_ofGetLastFrameTime,0);

value _ofHideCursor() {
	ofHideCursor();
	return alloc_null();
}
DEFINE_PRIM(_ofHideCursor,0);

value _ofShowCursor() {
	ofShowCursor();
	return alloc_null();
}
DEFINE_PRIM(_ofShowCursor,0);

value _ofGetWindowPositionX() {
	return alloc_int(ofGetWindowPositionX());
}
DEFINE_PRIM(_ofGetWindowPositionX,0);

value _ofGetWindowPositionY() {
	return alloc_int(ofGetWindowPositionY());
}
DEFINE_PRIM(_ofGetWindowPositionY,0);

value _ofGetScreenWidth() {
	return alloc_int(ofGetScreenWidth());
}
DEFINE_PRIM(_ofGetScreenWidth,0);

value _ofGetScreenHeight() {
	return alloc_int(ofGetScreenHeight());
}
DEFINE_PRIM(_ofGetScreenHeight,0);

value _ofGetWindowMode() {
	return alloc_int(ofGetWindowMode());
}
DEFINE_PRIM(_ofGetWindowMode,0);

value _ofGetWidth() {
	return alloc_int(ofGetWidth());
}
DEFINE_PRIM(_ofGetWidth,0);

value _ofGetHeight() {
	return alloc_int(ofGetHeight());
}
DEFINE_PRIM(_ofGetHeight,0);

value _ofSetWindowPosition(value a,value b) {
	ofSetWindowPosition(val_int(a),val_int(b));
	return alloc_null();
}
DEFINE_PRIM(_ofSetWindowPosition,2);

value _ofSetWindowShape(value a,value b) {
	ofSetWindowShape(val_int(a),val_int(b));
	return alloc_null();
}
DEFINE_PRIM(_ofSetWindowShape,2);

value _ofSetWindowTitle(value a) {
	ofSetWindowTitle(val_string(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSetWindowTitle,1);

value _ofEnableSetupScreen() {
	ofEnableSetupScreen();
	return alloc_null();
}
DEFINE_PRIM(_ofEnableSetupScreen,0);

value _ofDisableSetupScreen() {
	ofDisableSetupScreen();
	return alloc_null();
}
DEFINE_PRIM(_ofDisableSetupScreen,0);

value _ofSetFullscreen(value a) {
	ofSetFullscreen(val_bool(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSetFullscreen,1);

value _ofToggleFullscreen() {
	ofToggleFullscreen();
	return alloc_null();
}
DEFINE_PRIM(_ofToggleFullscreen,0);

value _ofSetVerticalSync(value a) {
	ofSetVerticalSync(val_bool(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSetVerticalSync,1);


/*
	ofAppGlutWindow
*/

DEFINE_KIND(_ofAppGlutWindow);

void delete_ofAppGlutWindow(value a) {
	ofAppGlutWindow* app = (ofAppGlutWindow*) val_data(a);
	delete app;
}

value _ofAppGlutWindow_new() {
	value ret = alloc_abstract(_ofAppGlutWindow, new ofAppGlutWindow());
	val_gc(ret, delete_ofAppGlutWindow);
	return ret;
}
DEFINE_PRIM(_ofAppGlutWindow_new,0);

value _ofAppGlutWindow_setupOpenGL(value a, value b, value c, value d) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	window->setupOpenGL(val_int(b), val_int(c), val_int(d));
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_setupOpenGL,4);

value _ofAppGlutWindow_initializeWindow(value a) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	window->initializeWindow();
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_initializeWindow,1);

value _ofAppGlutWindow_runAppViaInfiniteLoop(value a, value b) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	window->runAppViaInfiniteLoop((ofBaseApp*) val_data(b));
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_runAppViaInfiniteLoop,2);

value _ofAppGlutWindow_setGlutDisplayString(value a, value b) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	window->setGlutDisplayString(val_string(b));
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_setGlutDisplayString,2);

value _ofAppGlutWindow_hideCursor(value a) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	window->hideCursor();
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_hideCursor,1);

value _ofAppGlutWindow_showCursor(value a) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	window->showCursor();
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_showCursor,1);

value _ofAppGlutWindow_setFullscreen(value a, value b) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	window->setFullscreen(val_bool(b));
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_setFullscreen,2);

value _ofAppGlutWindow_toggleFullscreen(value a) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	window->toggleFullscreen();
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_toggleFullscreen,1);

value _ofAppGlutWindow_exitApp() {
	ofAppGlutWindow::exitApp();
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_exitApp,0);

value _ofAppGlutWindow_setWindowTitle(value a, value b) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	window->setWindowTitle(val_string(b));
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_setWindowTitle,2);

value _ofAppGlutWindow_setWindowPosition(value a, value b, value c) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	window->setWindowPosition(val_int(b), val_int(c));
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_setWindowPosition,3);

value _ofAppGlutWindow_setWindowShape(value a, value b, value c) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	window->setWindowShape(val_int(b), val_int(c));
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_setWindowShape,3);

/* TODO
	ofPoint		getWindowPosition();
	ofPoint		getWindowSize();
	ofPoint		getScreenSize();

	int			getWindowMode();

	int			getFrameNum();
	float		getFrameRate();
	double		getLastFrameTime();
	void		setFrameRate(float targetRate);

	void		enableSetupScreen();
	void		disableSetupScreen();

	static void display(void);
	static void mouse_cb(int button, int state, int x, int y);
	static void motion_cb(int x, int y);
	static void passive_motion_cb(int x, int y);
	static void idle_cb(void);
	static void keyboard_cb(unsigned char key, int x, int y);
	static void keyboard_up_cb(unsigned char key, int x, int y);
	static void special_key_cb(int key, int x, int y) ;
	static void special_key_up_cb(int key, int x, int y) ;
	static void resize_cb(int w, int h);


	string displayString;
*/

class ofBaseAppX : public ofBaseApp{

	public:
		value handler;
		
		void setup(){ 
			val_ocall0(handler, val_id("setup")); 
		}
		void update(){ 
			val_ocall0(handler, val_id("update")); 
		}
		void draw(){ 
			val_ocall0(handler, val_id("draw"));
		}
		void exit(){ 
			val_ocall0(handler, val_id("exit"));
		}


		void windowResized(int w, int h){ 
			val_ocall2(handler, val_id("windowResized"), alloc_int(w), alloc_int(h)); 
		}

		void keyPressed( int key ){ 
			val_ocall1(handler, val_id("keyPressed"), alloc_int(key)); 
		}
		void keyReleased( int key ){ 
			val_ocall1(handler, val_id("keyReleased"), alloc_int(key)); 
		}
		void mouseMoved( int x, int y ){ 
			val_ocall2(handler, val_id("mouseMoved"), alloc_int(x), alloc_int(y)); 
		}
		
		void mousePressed( int x, int y, int button ){ 
			value args = alloc_empty_object();
			alloc_field(args,val_id("x"),alloc_int(x));
			alloc_field(args,val_id("y"),alloc_int(y));
			alloc_field(args,val_id("button"),alloc_int(button));
			
			val_ocall1(handler, val_id("__mousePressed"), args); 
		}
		void mouseDragged( int x, int y, int button ){ 
			value args = alloc_empty_object();
			alloc_field(args,val_id("x"),alloc_int(x));
			alloc_field(args,val_id("y"),alloc_int(y));
			alloc_field(args,val_id("button"),alloc_int(button));
			
			val_ocall1(handler, val_id("__mouseDragged"), args); 
		}
		void mouseReleased(){ val_ocall0(handler, val_id("mouseReleased")); }
		void mouseReleased( int x, int y, int button ){ 
			value args = alloc_empty_object();
			alloc_field(args,val_id("x"),alloc_int(x));
			alloc_field(args,val_id("y"),alloc_int(y));
			alloc_field(args,val_id("button"),alloc_int(button));
			
			val_ocall1(handler, val_id("__mouseReleased"), args); 
		}
		
		/*
		void mousePressed( int x, int y, int button ){ 
			value args[] = {alloc_int(x), alloc_int(y), alloc_int(button)};
			val_ocallN(handler, val_id("mousePressed"), args, 3); 
		}
		void mouseDragged( int x, int y, int button ){ 
			value args[] = {alloc_int(x), alloc_int(y), alloc_int(button)};
			val_ocallN(handler, val_id("mouseDragged"), args, 3); 
		}
		void mouseReleased(){ val_ocall0(handler, val_id("mouseReleased")); }
		void mouseReleased( int x, int y, int button ){ 
			value args[] = {alloc_int(x), alloc_int(y), alloc_int(button)};
			val_ocallN(handler, val_id("mouseReleased"), args, 3); 
		}*/
};

/*
	ofBaseApp
*/

DEFINE_KIND(_ofBaseApp);

void delete_ofBaseApp(value a) {
	ofBaseAppX* app = (ofBaseAppX*) val_data(a);
	delete app;
}

value _ofBaseApp_new() {
	value ret = alloc_abstract(_ofBaseApp, new ofBaseAppX());
	val_gc(ret, delete_ofBaseApp);
	return ret;
}
DEFINE_PRIM(_ofBaseApp_new,0);

value _ofBaseApp_setHandle(value a, value b) {
	ofBaseAppX* app = (ofBaseAppX*) val_data(a);
	app->handler = b;
	return alloc_null();
}
DEFINE_PRIM(_ofBaseApp_setHandle,2);

value _ofBaseApp_getMouseX(value a) {
	ofBaseAppX* app = (ofBaseAppX*) val_data(a);
	return alloc_int(app->mouseX);
}
DEFINE_PRIM(_ofBaseApp_getMouseX,1);

value _ofBaseApp_getMouseY(value a) {
	ofBaseAppX* app = (ofBaseAppX*) val_data(a);
	return alloc_int(app->mouseY);
}
DEFINE_PRIM(_ofBaseApp_getMouseY,1);


/*
	ofMath
*/
value _ofNextPow2(value a) {
	return alloc_int(ofNextPow2(val_int(a)));
}
DEFINE_PRIM(_ofNextPow2,1);

value _ofSeedRandom() {
	ofSeedRandom();
	return alloc_null();
}
DEFINE_PRIM(_ofSeedRandom,0);

value _ofSeedRandom2(value a) {
	ofSeedRandom(val_int(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSeedRandom2,1);

value _ofRandom(value a, value b) {
	return alloc_float(ofRandom(val_float(a), val_float(b)));
}
DEFINE_PRIM(_ofRandom,2);

value _ofRandomf() {
	return alloc_float(ofRandomf());
}
DEFINE_PRIM(_ofRandomf,0);

value _ofRandomuf() {
	return alloc_float(ofRandomuf());
}
DEFINE_PRIM(_ofRandomuf,0);

value _ofNormalize(value a, value b, value c) {
	return alloc_float(ofNormalize(val_float(a), val_float(b), val_float(c)));
}
DEFINE_PRIM(_ofNormalize,3);

value _ofMap(value a, value b, value c, value d, value e, value f) {
	return alloc_float(ofMap(val_float(a), val_float(b), val_float(c), val_float(d), val_float(e), val_bool(f)));
}
DEFINE_PRIM_MULT(_ofMap);

value _ofClamp(value a, value b, value c) {
	return alloc_float(ofClamp(val_float(a), val_float(b), val_float(c)));
}
DEFINE_PRIM(_ofClamp,3);

value _ofLerp(value a, value b, value c) {
	return alloc_float(ofLerp(val_float(a), val_float(b), val_float(c)));
}
DEFINE_PRIM(_ofLerp,3);

value _ofDist(value a, value b, value c, value d) {
	return alloc_float(ofDist(val_float(a), val_float(b), val_float(c), val_float(d)));
}
DEFINE_PRIM(_ofDist,4);

value _ofDistSquared(value a, value b, value c, value d) {
	return alloc_float(ofDistSquared(val_float(a), val_float(b), val_float(c), val_float(d)));
}
DEFINE_PRIM(_ofDistSquared,4);

value _ofSign(value a) {
	return alloc_int(ofSign(val_float(a)));
}
DEFINE_PRIM(_ofSign,1);

value _ofInRange(value a, value b, value c) {
	return alloc_bool(ofInRange(val_float(a), val_float(b), val_float(c)));
}
DEFINE_PRIM(_ofInRange,3);

value _ofRadToDeg(value a) {
	return alloc_float(ofRadToDeg(val_float(a)));
}
DEFINE_PRIM(_ofRadToDeg,1);

value _ofDegToRad(value a) {
	return alloc_float(ofDegToRad(val_float(a)));
}
DEFINE_PRIM(_ofDegToRad,1);

value _ofRandomWidth() {
	return alloc_float(ofRandomWidth());
}
DEFINE_PRIM(_ofRandomWidth,0);

value _ofRandomHeight() {
	return alloc_float(ofRandomHeight());
}
DEFINE_PRIM(_ofRandomHeight,0);


value _ofNoise(value a) {
	return alloc_float(ofNoise(val_float(a)));
}
DEFINE_PRIM(_ofNoise,1);

value _ofNoise2(value a, value b) {
	return alloc_float(ofNoise(val_float(a), val_float(b)));
}
DEFINE_PRIM(_ofNoise2,2);

value _ofNoise3(value a, value b, value c) {
	return alloc_float(ofNoise(val_float(a), val_float(b), val_float(c)));
}
DEFINE_PRIM(_ofNoise3,3);

value _ofNoise4(value a, value b, value c, value d) {
	return alloc_float(ofNoise(val_float(a), val_float(b), val_float(c), val_float(d)));
}
DEFINE_PRIM(_ofNoise4,4);


value _ofSignedNoise(value a) {
	return alloc_float(ofSignedNoise(val_float(a)));
}
DEFINE_PRIM(_ofSignedNoise,1);

value _ofSignedNoise2(value a, value b) {
	return alloc_float(ofSignedNoise(val_float(a), val_float(b)));
}
DEFINE_PRIM(_ofSignedNoise2,2);

value _ofSignedNoise3(value a, value b, value c) {
	return alloc_float(ofSignedNoise(val_float(a), val_float(b), val_float(c)));
}
DEFINE_PRIM(_ofSignedNoise3,3);

value _ofSignedNoise4(value a, value b, value c, value d) {
	return alloc_float(ofSignedNoise(val_float(a), val_float(b), val_float(c), val_float(d)));
}
DEFINE_PRIM(_ofSignedNoise4,4);


/*
	ofGraphics
*/
/* TODO
float * ofBgColorPtr();
*/

value _ofBackground(value a, value b, value c) {
	ofBackground(val_int(a), val_int(b), val_int(c));
	return alloc_null();
}
DEFINE_PRIM(_ofBackground,3);

value _ofSetBackgroundAuto(value a) {
	ofSetBackgroundAuto(val_bool(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSetBackgroundAuto,1);

value _ofSetRectMode(value a) {
	ofSetRectMode(val_int(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSetRectMode,1);

value _ofGetUsingArbTex() {
	return alloc_bool(ofGetUsingArbTex());
}
DEFINE_PRIM(_ofGetUsingArbTex,0);

value _ofEnableArbTex() {
	ofEnableArbTex();
	return alloc_null();
}
DEFINE_PRIM(_ofEnableArbTex,0);

value _ofDisableArbTex() {
	ofDisableArbTex();
	return alloc_null();
}
DEFINE_PRIM(_ofDisableArbTex,0);

value _ofbClearBg() {
	return alloc_bool(ofbClearBg());
}
DEFINE_PRIM(_ofbClearBg,0);

value _ofGetRectMode() {
	return alloc_int(ofGetRectMode());
}
DEFINE_PRIM(_ofGetRectMode,0);

value _ofSetCurveResolution(value a) {
	ofSetCurveResolution(val_int(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSetCurveResolution,1);

value _ofTriangle(value a, value b, value c, value d, value e, value f) {
	ofTriangle(val_float(a), val_float(b), val_float(c), val_float(d), val_float(e), val_bool(f));
	return alloc_null();
}
DEFINE_PRIM_MULT(_ofTriangle);

value _ofCircle(value a, value b, value c) {
	ofCircle(val_float(a), val_float(b), val_float(c));
	return alloc_null();
}
DEFINE_PRIM(_ofCircle,3);

value _ofEllipse(value a, value b, value c, value d) {
	ofEllipse(val_float(a), val_float(b), val_float(c), val_float(d));
	return alloc_null();
}
DEFINE_PRIM(_ofEllipse,4);

value _ofLine(value a, value b, value c, value d) {
	ofLine(val_float(a), val_float(b), val_float(c), val_float(d));
	return alloc_null();
}
DEFINE_PRIM(_ofLine,4);

value _ofRect(value a, value b, value c, value d) {
	ofRect(val_float(a), val_float(b), val_float(c), val_float(d));
	return alloc_null();
}
DEFINE_PRIM(_ofRect,4);

value _ofSetCircleResolution(value a) {
	ofSetCircleResolution(val_int(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSetCircleResolution,1);

value _ofCurve(value a, value b, value c, value d, value e, value f, value g, value h) {
	ofCurve(val_float(a), val_float(b), val_float(c), val_float(d), val_float(e), val_bool(f), val_float(g), val_bool(h));
	return alloc_null();
}
DEFINE_PRIM_MULT(_ofCurve);

value _ofBezier(value a, value b, value c, value d, value e, value f, value g, value h) {
	ofBezier(val_float(a), val_float(b), val_float(c), val_float(d), val_float(e), val_bool(f), val_float(g), val_bool(h));
	return alloc_null();
}
DEFINE_PRIM_MULT(_ofBezier);

value _ofNoFill() {
	ofNoFill();
	return alloc_null();
}
DEFINE_PRIM(_ofNoFill,0);

value _ofFill() {
	ofFill();
	return alloc_null();
}
DEFINE_PRIM(_ofFill,0);

value _ofSetLineWidth(value a) {
	ofSetLineWidth(val_float(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSetLineWidth,1);

value _ofSetColor3(value a,value b,value c) {
	ofSetColor(val_int(a),val_int(b),val_int(c));
	return alloc_null();
}
DEFINE_PRIM(_ofSetColor3,3);

value _ofSetColor4(value a,value b,value c,value d) {
	ofSetColor(val_int(a),val_int(b),val_int(c),val_float(d));
	return alloc_null();
}
DEFINE_PRIM(_ofSetColor4,4);

value _ofSetColor1(value a) {
	ofSetColor(val_int(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSetColor1,1);

value _ofEnableAlphaBlending() {
	ofEnableAlphaBlending();
	return alloc_null();
}
DEFINE_PRIM(_ofEnableAlphaBlending,0);

value _ofDisableAlphaBlending() {
	ofDisableAlphaBlending();
	return alloc_null();
}
DEFINE_PRIM(_ofDisableAlphaBlending,0);

value _ofEnableSmoothing() {
	ofEnableSmoothing();
	return alloc_null();
}
DEFINE_PRIM(_ofEnableSmoothing,0);

value _ofDisableSmoothing() {
	ofDisableSmoothing();
	return alloc_null();
}
DEFINE_PRIM(_ofDisableSmoothing,0);

/* TODO
ofStyle ofGetStyle();
void ofSetStyle(ofStyle style);
*/

value _ofPushStyle() {
	ofPushStyle();
	return alloc_null();
}
DEFINE_PRIM(_ofPushStyle,0);

value _ofPopStyle() {
	ofPopStyle();
	return alloc_null();
}
DEFINE_PRIM(_ofPopStyle,0);

value _ofPushMatrix() {
	ofPushMatrix();
	return alloc_null();
}
DEFINE_PRIM(_ofPushMatrix,0);

value _ofPopMatrix() {
	ofPopMatrix();
	return alloc_null();
}
DEFINE_PRIM(_ofPopMatrix,0);

value _ofTranslate(value a,value b,value c) {
	ofTranslate(val_float(a),val_float(b),val_float(c));
	return alloc_null();
}
DEFINE_PRIM(_ofTranslate,3);

value _ofScale(value a,value b,value c) {
	ofScale(val_float(a),val_float(b),val_float(c));
	return alloc_null();
}
DEFINE_PRIM(_ofScale,3);

value _ofRotate4(value a,value b,value c,value d) {
	ofRotate(val_float(a),val_float(b),val_float(c),val_float(d));
	return alloc_null();
}
DEFINE_PRIM(_ofRotate4,4);

value _ofRotate1(value a) {
	ofRotate(val_float(a));
	return alloc_null();
}
DEFINE_PRIM(_ofRotate1,1);

value _ofRotateX(value a) {
	ofRotateX(val_float(a));
	return alloc_null();
}
DEFINE_PRIM(_ofRotateX,1);

value _ofRotateY(value a) {
	ofRotateY(val_float(a));
	return alloc_null();
}
DEFINE_PRIM(_ofRotateY,1);

value _ofRotateZ(value a) {
	ofRotateZ(val_float(a));
	return alloc_null();
}
DEFINE_PRIM(_ofRotateZ,1);

value _ofDrawBitmapString(value a,value b,value c) {
	ofDrawBitmapString(val_string(a),val_float(b),val_float(c));
	return alloc_null();
}
DEFINE_PRIM(_ofDrawBitmapString,3);

value _ofSetupGraphicDefaults() {
	ofSetupGraphicDefaults();
	return alloc_null();
}
DEFINE_PRIM(_ofSetupGraphicDefaults,0);

value _ofSetupScreen() {
	ofSetupScreen();
	return alloc_null();
}
DEFINE_PRIM(_ofSetupScreen,0);

value _ofCurveVertex(value a,value b) {
	ofCurveVertex(val_float(a),val_float(b));
	return alloc_null();
}
DEFINE_PRIM(_ofCurveVertex,2);

value _ofBezierVertex(value a, value b, value c, value d, value e, value f) {
	ofBezierVertex(val_float(a), val_float(b), val_float(c), val_float(d), val_float(e), val_bool(f));
	return alloc_null();
}
DEFINE_PRIM_MULT(_ofBezierVertex);

value _ofSetPolyMode(value a) {
	ofSetPolyMode(val_int(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSetPolyMode,1);

value _ofBeginShape() {
	ofBeginShape();
	return alloc_null();
}
DEFINE_PRIM(_ofBeginShape,0);

value _ofVertex(value a,value b) {
	ofVertex(val_float(a),val_float(b));
	return alloc_null();
}
DEFINE_PRIM(_ofVertex,2);

value _ofEndShape(value a) {
	ofEndShape(val_bool(a));
	return alloc_null();
}
DEFINE_PRIM(_ofEndShape,1);

value _ofNextContour(value a) {
	ofNextContour(val_bool(a));
	return alloc_null();
}
DEFINE_PRIM(_ofNextContour,1);