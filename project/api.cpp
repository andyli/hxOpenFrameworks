
#ifndef _WIN32_WINNT
#   define _WIN32_WINNT 0x400
#endif

#define IMPLEMENT_API
#include <hx/CFFI.h>

#include "ofMain.h"
#include "ofAppGlutWindow.h"

/*
	ofTypes
*/

//ofPoint
DEFINE_KIND(_ofPoint);

void delete_ofPoint(value a) {
	ofPoint* pt = (ofPoint*) val_data(a);
	delete pt;
}

value _ofPoint_new(value a,value b,value c) {
	value ret = alloc_abstract(_ofPoint, new ofPoint(val_float(a),val_float(b),val_float(c)));
	val_gc(ret, delete_ofPoint);
	return ret;
}
DEFINE_PRIM(_ofPoint_new,3);

value _ofPoint_getX(value a) {
	ofPoint* pt = (ofPoint*) val_data(a);
	return alloc_float(pt->x);
}
DEFINE_PRIM(_ofPoint_getX,1);

value _ofPoint_getY(value a) {
	ofPoint* pt = (ofPoint*) val_data(a);
	return alloc_float(pt->y);
}
DEFINE_PRIM(_ofPoint_getY,1);

value _ofPoint_getZ(value a) {
	ofPoint* pt = (ofPoint*) val_data(a);
	return alloc_float(pt->z);
}
DEFINE_PRIM(_ofPoint_getZ,1);

value _ofPoint_setX(value a,value b) {
	ofPoint* pt = (ofPoint*) val_data(a);
	return alloc_float(pt->x = val_float(b));
}
DEFINE_PRIM(_ofPoint_setX,2);

value _ofPoint_setY(value a,value b) {
	ofPoint* pt = (ofPoint*) val_data(a);
	return alloc_float(pt->y = val_float(b));
}
DEFINE_PRIM(_ofPoint_setY,2);

value _ofPoint_setZ(value a,value b) {
	ofPoint* pt = (ofPoint*) val_data(a);
	return alloc_float(pt->z = val_float(b));
}
DEFINE_PRIM(_ofPoint_setZ,2);

value _ofPoint_set(value a,value b,value c,value d) {
	ofPoint* pt = (ofPoint*) val_data(a);
	pt->set(val_float(b),val_float(c),val_float(d));
	return alloc_null();
}
DEFINE_PRIM(_ofPoint_set,4);

//ofRectangle
DEFINE_KIND(_ofRectangle);

void delete_ofRectangle(value a) {
	ofRectangle* rect = (ofRectangle*) val_data(a);
	delete rect;
}

value _ofRectangle_new() {
	value ret = alloc_abstract(_ofRectangle, new ofRectangle());
	val_gc(ret, delete_ofRectangle);
	return ret;
}
DEFINE_PRIM(_ofRectangle_new,0);

value _ofRectangle_getX(value a) {
	ofRectangle* pt = (ofRectangle*) val_data(a);
	return alloc_float(pt->x);
}
DEFINE_PRIM(_ofRectangle_getX,1);

value _ofRectangle_getY(value a) {
	ofRectangle* pt = (ofRectangle*) val_data(a);
	return alloc_float(pt->y);
}
DEFINE_PRIM(_ofRectangle_getY,1);

value _ofRectangle_getWidth(value a) {
	ofRectangle* pt = (ofRectangle*) val_data(a);
	return alloc_float(pt->width);
}
DEFINE_PRIM(_ofRectangle_getWidth,1);

value _ofRectangle_getHeight(value a) {
	ofRectangle* pt = (ofRectangle*) val_data(a);
	return alloc_float(pt->height);
}
DEFINE_PRIM(_ofRectangle_getHeight,1);

value _ofRectangle_setX(value a,value b) {
	ofRectangle* pt = (ofRectangle*) val_data(a);
	return alloc_float(pt->x = val_float(b));
}
DEFINE_PRIM(_ofRectangle_setX,2);

value _ofRectangle_setY(value a,value b) {
	ofRectangle* pt = (ofRectangle*) val_data(a);
	return alloc_float(pt->y = val_float(b));
}
DEFINE_PRIM(_ofRectangle_setY,2);

value _ofRectangle_setWidth(value a,value b) {
	ofRectangle* pt = (ofRectangle*) val_data(a);
	return alloc_float(pt->width = val_float(b));
}
DEFINE_PRIM(_ofRectangle_setWidth,2);

value _ofRectangle_setHeight(value a,value b) {
	ofRectangle* pt = (ofRectangle*) val_data(a);
	return alloc_float(pt->height = val_float(b));
}
DEFINE_PRIM(_ofRectangle_setHeight,2);

//ofColor
DEFINE_KIND(_ofColor);

void delete_ofColor(value a) {
	ofColor* rect = (ofColor*) val_data(a);
	delete rect;
}

value _ofColor_new() {
	value ret = alloc_abstract(_ofColor, new ofColor());
	val_gc(ret, delete_ofColor);
	return ret;
}
DEFINE_PRIM(_ofColor_new,0);

value _ofColor_getR(value a) {
	ofColor* pt = (ofColor*) val_data(a);
	return alloc_float(pt->r);
}
DEFINE_PRIM(_ofColor_getR,1);

value _ofColor_getG(value a) {
	ofColor* pt = (ofColor*) val_data(a);
	return alloc_float(pt->g);
}
DEFINE_PRIM(_ofColor_getG,1);

value _ofColor_getB(value a) {
	ofColor* pt = (ofColor*) val_data(a);
	return alloc_float(pt->b);
}
DEFINE_PRIM(_ofColor_getB,1);

value _ofColor_getA(value a) {
	ofColor* pt = (ofColor*) val_data(a);
	return alloc_float(pt->a);
}
DEFINE_PRIM(_ofColor_getA,1);

value _ofColor_setR(value a,value b) {
	ofColor* pt = (ofColor*) val_data(a);
	return alloc_float(pt->r = val_float(b));
}
DEFINE_PRIM(_ofColor_setR,2);

value _ofColor_setG(value a,value b) {
	ofColor* pt = (ofColor*) val_data(a);
	return alloc_float(pt->g = val_float(b));
}
DEFINE_PRIM(_ofColor_setG,2);

value _ofColor_setB(value a,value b) {
	ofColor* pt = (ofColor*) val_data(a);
	return alloc_float(pt->b = val_float(b));
}
DEFINE_PRIM(_ofColor_setB,2);

value _ofColor_setA(value a,value b) {
	ofColor* pt = (ofColor*) val_data(a);
	return alloc_float(pt->a = val_float(b));
}
DEFINE_PRIM(_ofColor_setA,2);

//ofStyle
DEFINE_KIND(_ofStyle);

void delete_ofStyle(value a) {
	ofStyle* rect = (ofStyle*) val_data(a);
	delete rect;
}

value _ofStyle_new() {
	value ret = alloc_abstract(_ofStyle, new ofStyle());
	val_gc(ret, delete_ofStyle);
	return ret;
}
DEFINE_PRIM(_ofStyle_new,0);


value _ofStyle_getPolyMode(value a) {
	ofStyle* pt = (ofStyle*) val_data(a);
	return alloc_int(pt->polyMode);
}
DEFINE_PRIM(_ofStyle_getPolyMode,1);

value _ofStyle_setPolyMode(value a,value b) {
	ofStyle* pt = (ofStyle*) val_data(a);
	return alloc_int(pt->polyMode = val_int(b));
}
DEFINE_PRIM(_ofStyle_setPolyMode,2);

value _ofStyle_getRectMode(value a) {
	ofStyle* pt = (ofStyle*) val_data(a);
	return alloc_int(pt->rectMode);
}
DEFINE_PRIM(_ofStyle_getRectMode,1);

value _ofStyle_setRectMode(value a,value b) {
	ofStyle* pt = (ofStyle*) val_data(a);
	return alloc_int(pt->rectMode = val_int(b));
}
DEFINE_PRIM(_ofStyle_setRectMode,2);

value _ofStyle_getBFill(value a) {
	ofStyle* pt = (ofStyle*) val_data(a);
	return alloc_bool(pt->bFill);
}
DEFINE_PRIM(_ofStyle_getBFill,1);

value _ofStyle_setBFill(value a,value b) {
	ofStyle* pt = (ofStyle*) val_data(a);
	return alloc_bool(pt->bFill = val_bool(b));
}
DEFINE_PRIM(_ofStyle_setBFill,2);

value _ofStyle_getBlending(value a) {
	ofStyle* pt = (ofStyle*) val_data(a);
	return alloc_bool(pt->blending);
}
DEFINE_PRIM(_ofStyle_getBlending,1);

value _ofStyle_setBlending(value a,value b) {
	ofStyle* pt = (ofStyle*) val_data(a);
	return alloc_bool(pt->blending = val_bool(b));
}
DEFINE_PRIM(_ofStyle_setBlending,2);

value _ofStyle_getSmoothing(value a) {
	ofStyle* pt = (ofStyle*) val_data(a);
	return alloc_bool(pt->smoothing);
}
DEFINE_PRIM(_ofStyle_getSmoothing,1);

value _ofStyle_setSmoothing(value a,value b) {
	ofStyle* pt = (ofStyle*) val_data(a);
	return alloc_bool(pt->smoothing = val_bool(b));
}
DEFINE_PRIM(_ofStyle_setSmoothing,2);

value _ofStyle_getCircleResolution(value a) {
	ofStyle* pt = (ofStyle*) val_data(a);
	return alloc_int(pt->circleResolution);
}
DEFINE_PRIM(_ofStyle_getCircleResolution,1);

value _ofStyle_setCircleResolution(value a,value b) {
	ofStyle* pt = (ofStyle*) val_data(a);
	return alloc_int(pt->circleResolution = val_int(b));
}
DEFINE_PRIM(_ofStyle_setCircleResolution,2);

value _ofStyle_getLineWidth(value a) {
	ofStyle* pt = (ofStyle*) val_data(a);
	return alloc_float(pt->lineWidth);
}
DEFINE_PRIM(_ofStyle_getLineWidth,1);

value _ofStyle_setLineWidth(value a,value b) {
	ofStyle* pt = (ofStyle*) val_data(a);
	return alloc_float(pt->lineWidth = val_float(b));
}
DEFINE_PRIM(_ofStyle_setLineWidth,2);

value _ofStyle_getColor(value a) {
	ofStyle* styl = (ofStyle*) val_data(a);
	
	value ret = alloc_abstract(_ofColor, &styl->color);
	return ret;
}
DEFINE_PRIM(_ofStyle_getColor,1);

/*
	ofUtils
*/

value _ofResetElapsedTimeCounter() {
	ofResetElapsedTimeCounter();
	return alloc_null();
}
DEFINE_PRIM(_ofResetElapsedTimeCounter,0);

value _ofGetElapsedTimef() {
	return alloc_float(ofGetElapsedTimef());
}
DEFINE_PRIM(_ofGetElapsedTimef,0);

value _ofGetElapsedTimeMillis() {
	return alloc_int(ofGetElapsedTimeMillis());
}
DEFINE_PRIM(_ofGetElapsedTimeMillis,0);

value _ofGetSeconds() {
	return alloc_int(ofGetSeconds());
}
DEFINE_PRIM(_ofGetSeconds,0);

value _ofGetMinutes() {
	return alloc_int(ofGetMinutes());
}
DEFINE_PRIM(_ofGetMinutes,0);

value _ofGetHours() {
	return alloc_int(ofGetHours());
}
DEFINE_PRIM(_ofGetHours,0);

value _ofGetSystemTime() {
	return alloc_float(ofGetSystemTime());
}
DEFINE_PRIM(_ofGetSystemTime,0);

value _ofGetYear() {
	return alloc_int(ofGetYear());
}
DEFINE_PRIM(_ofGetYear,0);

value _ofGetMonth() {
	return alloc_int(ofGetMonth());
}
DEFINE_PRIM(_ofGetMonth,0);

value _ofGetDay() {
	return alloc_int(ofGetDay());
}
DEFINE_PRIM(_ofGetDay,0);

value _ofGetWeekday() {
	return alloc_int(ofGetWeekday());
}
DEFINE_PRIM(_ofGetWeekday,0);

value _ofLaunchBrowser(value a) {
	ofLaunchBrowser(val_string(a));
	return alloc_null();
}
DEFINE_PRIM(_ofLaunchBrowser,1);

value _ofEnableDataPath() {
	ofEnableDataPath();
	return alloc_null();
}
DEFINE_PRIM(_ofEnableDataPath,0);

value _ofDisableDataPath() {
	ofDisableDataPath();
	return alloc_null();
}
DEFINE_PRIM(_ofDisableDataPath,0);

value _ofToDataPath(value a,value b) {
	return alloc_string(ofToDataPath(val_string(a),val_bool(b)).c_str());
}
DEFINE_PRIM(_ofToDataPath,2);

value _ofSetDataPathRoot(value a) {
	ofSetDataPathRoot(val_string(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSetDataPathRoot,1);

value _ofToString2(value a,value b) {
	return alloc_string(ofToString(val_float(a),val_int(b)).c_str());
}
DEFINE_PRIM(_ofToString2,2);

value _ofToString1(value a) {
	return alloc_string(ofToString(val_int(a)).c_str());
}
DEFINE_PRIM(_ofToString1,1);

value _ofToInt(value a) {
	return alloc_int(ofToInt(val_string(a)));
}
DEFINE_PRIM(_ofToInt,1);

value _ofToFloat(value a) {
	return alloc_float(ofToFloat(val_string(a)));
}
DEFINE_PRIM(_ofToFloat,1);

value _ofGetVersionInfo() {
	return alloc_string(ofGetVersionInfo().c_str());
}
DEFINE_PRIM(_ofGetVersionInfo,0);

value _ofSaveScreen(value a) {
	ofSaveScreen(val_string(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSaveScreen,1);

value _ofSaveFrame() {
	ofSaveFrame();
	return alloc_null();
}
DEFINE_PRIM(_ofSaveFrame,0);

value _ofSetLogLevel(value a) {
	ofSetLogLevel(val_int(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSetLogLevel,1);

value _ofLog(value a,value b) {
	ofLog(val_int(a),val_string(b));
	return alloc_null();
}
DEFINE_PRIM(_ofLog,2);

value _ofSetConsoleColor(value a) {
	ofSetConsoleColor(val_int(a));
	return alloc_null();
}
DEFINE_PRIM(_ofSetConsoleColor,1);

value _ofRestoreConsoleColor() {
	ofRestoreConsoleColor();
	return alloc_null();
}
DEFINE_PRIM(_ofRestoreConsoleColor,0);

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

value _ofAppGlutWindow_getWindowPosition(value a) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	
	ofPoint* pt = new ofPoint();
	*pt = window->getWindowPosition();
	value ret = alloc_abstract(_ofPoint, pt);
	val_gc(ret, delete_ofPoint);
	return ret;
}
DEFINE_PRIM(_ofAppGlutWindow_getWindowPosition,1);

value _ofAppGlutWindow_getWindowSize(value a) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	
	ofPoint* pt = new ofPoint();
	*pt = window->getWindowSize();
	value ret = alloc_abstract(_ofPoint, pt);
	val_gc(ret, delete_ofPoint);
	return ret;
}
DEFINE_PRIM(_ofAppGlutWindow_getWindowSize,1);

value _ofAppGlutWindow_getScreenSize(value a) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	
	ofPoint* pt = new ofPoint();
	*pt = window->getScreenSize();
	value ret = alloc_abstract(_ofPoint, pt);
	val_gc(ret, delete_ofPoint);
	return ret;
}
DEFINE_PRIM(_ofAppGlutWindow_getScreenSize,1);

value _ofAppGlutWindow_getWindowMode(value a) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	return alloc_int(window->getWindowMode());
}
DEFINE_PRIM(_ofAppGlutWindow_getWindowMode,1);

value _ofAppGlutWindow_getFrameNum(value a) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	return alloc_int(window->getFrameNum());
}
DEFINE_PRIM(_ofAppGlutWindow_getFrameNum,1);

value _ofAppGlutWindow_getFrameRate(value a) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	return alloc_float(window->getFrameRate());
}
DEFINE_PRIM(_ofAppGlutWindow_getFrameRate,1);

value _ofAppGlutWindow_getLastFrameTime(value a) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	return alloc_float(window->getLastFrameTime());
}
DEFINE_PRIM(_ofAppGlutWindow_getLastFrameTime,1);

value _ofAppGlutWindow_setFrameRate(value a,value b) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	window->setFrameRate(val_float(b));
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_setFrameRate,2);

value _ofAppGlutWindow_enableSetupScreen(value a) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	window->enableSetupScreen();
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_enableSetupScreen,1);

value _ofAppGlutWindow_disableSetupScreen(value a) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	window->disableSetupScreen();
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_disableSetupScreen,1);

value _ofAppGlutWindow_display() {
	ofAppGlutWindow::display();
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_display,0);

value _ofAppGlutWindow_mouse_cb(value a,value b,value c,value d) {
	ofAppGlutWindow::mouse_cb(val_int(a),val_int(b),val_int(c),val_int(d));
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_mouse_cb,4);

value _ofAppGlutWindow_motion_cb(value a,value b) {
	ofAppGlutWindow::motion_cb(val_int(a),val_int(b));
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_motion_cb,2);

value _ofAppGlutWindow_passive_motion_cb(value a,value b) {
	ofAppGlutWindow::passive_motion_cb(val_int(a),val_int(b));
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_passive_motion_cb,2);

value _ofAppGlutWindow_idle_cb() {
	ofAppGlutWindow::idle_cb();
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_idle_cb,0);

value _ofAppGlutWindow_keyboard_cb(value a,value b,value c) {
	ofAppGlutWindow::keyboard_cb(val_int(a),val_int(b),val_int(c));
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_keyboard_cb,3);

value _ofAppGlutWindow_keyboard_up_cb(value a,value b,value c) {
	ofAppGlutWindow::keyboard_up_cb(val_int(a),val_int(b),val_int(c));
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_keyboard_up_cb,3);

value _ofAppGlutWindow_special_key_cb(value a,value b,value c) {
	ofAppGlutWindow::special_key_cb(val_int(a),val_int(b),val_int(c));
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_special_key_cb,3);

value _ofAppGlutWindow_special_key_up_cb(value a,value b,value c) {
	ofAppGlutWindow::special_key_up_cb(val_int(a),val_int(b),val_int(c));
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_special_key_up_cb,3);

value _ofAppGlutWindow_resize_cb(value a,value b) {
	ofAppGlutWindow::resize_cb(val_int(a),val_int(b));
	return alloc_null();
}
DEFINE_PRIM(_ofAppGlutWindow_resize_cb,2);

value _ofAppGlutWindow_getDisplayString(value a) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	return alloc_string(window->displayString.c_str());
}
DEFINE_PRIM(_ofAppGlutWindow_getDisplayString,1);

value _ofAppGlutWindow_setDisplayString(value a,value b) {
	ofAppGlutWindow* window = (ofAppGlutWindow*) val_data(a);
	return alloc_string((window->displayString = val_string(b)).c_str());
}
DEFINE_PRIM(_ofAppGlutWindow_setDisplayString,2);

/*
	ofBaseApp
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

value _ofMap(value a) {
	return alloc_float(ofMap(	val_field_numeric(a, val_id("value")), 
								val_field_numeric(a, val_id("inputMin")), 
								val_field_numeric(a, val_id("inputMax")), 
								val_field_numeric(a, val_id("outputMin")), 
								val_field_numeric(a, val_id("outputMax")), 
								val_bool(val_field(a, val_id("clamp")))));
}
DEFINE_PRIM(_ofMap,1);

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

value _ofTriangle(value a) {
	ofTriangle(	val_field_numeric(a, val_id("x1")), 
				val_field_numeric(a, val_id("y1")), 
				val_field_numeric(a, val_id("x2")), 
				val_field_numeric(a, val_id("y2")), 
				val_field_numeric(a, val_id("x3")), 
				val_field_numeric(a, val_id("y3")));
	return alloc_null();
}
DEFINE_PRIM(_ofTriangle,1);

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

value _ofCurve(value a) {
	ofCurve(	val_field_numeric(a, val_id("x0")), 
				val_field_numeric(a, val_id("y0")),	
				val_field_numeric(a, val_id("x1")), 
				val_field_numeric(a, val_id("y1")), 
				val_field_numeric(a, val_id("x2")), 
				val_field_numeric(a, val_id("y2")), 
				val_field_numeric(a, val_id("x3")), 
				val_field_numeric(a, val_id("y3")));
	return alloc_null();
}
DEFINE_PRIM(_ofCurve,1);

value _ofBezier(value a) {
	ofBezier(	val_field_numeric(a, val_id("x0")), 
				val_field_numeric(a, val_id("y0")),	
				val_field_numeric(a, val_id("x1")), 
				val_field_numeric(a, val_id("y1")), 
				val_field_numeric(a, val_id("x2")), 
				val_field_numeric(a, val_id("y2")), 
				val_field_numeric(a, val_id("x3")), 
				val_field_numeric(a, val_id("y3")));
	return alloc_null();
}
DEFINE_PRIM(_ofBezier,1);

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

value _ofGetStyle() {
	ofStyle* pt = new ofStyle();
	*pt = ofGetStyle();
	value ret = alloc_abstract(_ofStyle, pt);
	val_gc(ret, delete_ofStyle);
	return ret;
}
DEFINE_PRIM(_ofGetStyle,0);

value _ofSetStyle(value a) {
	ofStyle* val = (ofStyle*) val_data(a);
	ofSetStyle(*val);
	return alloc_null();
}
DEFINE_PRIM(_ofSetStyle,1);

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

value _ofBezierVertex(value a) {
	ofBezierVertex(	val_field_numeric(a, val_id("x1")), 
					val_field_numeric(a, val_id("y1")), 
					val_field_numeric(a, val_id("x2")), 
					val_field_numeric(a, val_id("y2")), 
					val_field_numeric(a, val_id("x3")), 
					val_field_numeric(a, val_id("y3")));
	return alloc_null();
}
DEFINE_PRIM(_ofBezierVertex,1);

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

/*
	ofTextureData
*/
DEFINE_KIND(_ofTextureData);

void delete_ofTextureData(value a) {
	ofTextureData* rect = (ofTextureData*) val_data(a);
	delete rect;
}

value _ofTextureData_get_glType(value a) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_int(pt->glType);
}
DEFINE_PRIM(_ofTextureData_get_glType,1);

value _ofTextureData_set_glType(value a,value b) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_int(pt->glType = val_int(b));
}
DEFINE_PRIM(_ofTextureData_set_glType,2);

value _ofTextureData_get_glTypeInternal(value a) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_int(pt->glTypeInternal);
}
DEFINE_PRIM(_ofTextureData_get_glTypeInternal,1);

value _ofTextureData_set_glTypeInternal(value a,value b) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_int(pt->glTypeInternal = val_int(b));
}
DEFINE_PRIM(_ofTextureData_set_glTypeInternal,2);

value _ofTextureData_get_textureTarget(value a) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_int(pt->textureTarget);
}
DEFINE_PRIM(_ofTextureData_get_textureTarget,1);

value _ofTextureData_set_textureTarget(value a,value b) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_int(pt->textureTarget = val_int(b));
}
DEFINE_PRIM(_ofTextureData_set_textureTarget,2);

value _ofTextureData_get_pixelType(value a) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_int(pt->pixelType);
}
DEFINE_PRIM(_ofTextureData_get_pixelType,1);

value _ofTextureData_set_pixelType(value a,value b) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_int(pt->pixelType = val_int(b));
}
DEFINE_PRIM(_ofTextureData_set_pixelType,2);

value _ofTextureData_get_tex_t(value a) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_float(pt->tex_t);
}
DEFINE_PRIM(_ofTextureData_get_tex_t,1);

value _ofTextureData_set_tex_t(value a,value b) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_float(pt->tex_t = val_float(b));
}
DEFINE_PRIM(_ofTextureData_set_tex_t,2);

value _ofTextureData_get_tex_u(value a) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_float(pt->tex_u);
}
DEFINE_PRIM(_ofTextureData_get_tex_u,1);

value _ofTextureData_set_tex_u(value a,value b) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_float(pt->tex_u = val_float(b));
}
DEFINE_PRIM(_ofTextureData_set_tex_u,2);

value _ofTextureData_get_tex_w(value a) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_float(pt->tex_w);
}
DEFINE_PRIM(_ofTextureData_get_tex_w,1);

value _ofTextureData_set_tex_w(value a,value b) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_float(pt->tex_w = val_float(b));
}
DEFINE_PRIM(_ofTextureData_set_tex_w,2);

value _ofTextureData_get_tex_h(value a) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_float(pt->tex_h);
}
DEFINE_PRIM(_ofTextureData_get_tex_h,1);

value _ofTextureData_set_tex_h(value a,value b) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_float(pt->tex_h = val_float(b));
}
DEFINE_PRIM(_ofTextureData_set_tex_h,2);

value _ofTextureData_get_width(value a) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_float(pt->width);
}
DEFINE_PRIM(_ofTextureData_get_width,1);

value _ofTextureData_set_width(value a,value b) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_float(pt->width = val_float(b));
}
DEFINE_PRIM(_ofTextureData_set_width,2);

value _ofTextureData_get_height(value a) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_float(pt->height);
}
DEFINE_PRIM(_ofTextureData_get_height,1);

value _ofTextureData_set_height(value a,value b) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_float(pt->height = val_float(b));
}
DEFINE_PRIM(_ofTextureData_set_height,2);

value _ofTextureData_get_bFlipTexture(value a) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_bool(pt->bFlipTexture);
}
DEFINE_PRIM(_ofTextureData_get_bFlipTexture,1);

value _ofTextureData_set_bFlipTexture(value a,value b) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_bool(pt->bFlipTexture = val_bool(b));
}
DEFINE_PRIM(_ofTextureData_set_bFlipTexture,2);

value _ofTextureData_get_textureID(value a) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_int(pt->textureID);
}
DEFINE_PRIM(_ofTextureData_get_textureID,1);

value _ofTextureData_set_textureID(value a,value b) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_int(pt->textureID = val_int(b));
}
DEFINE_PRIM(_ofTextureData_set_textureID,2);

value _ofTextureData_get_bAllocated(value a) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_bool(pt->bAllocated);
}
DEFINE_PRIM(_ofTextureData_get_bAllocated,1);

value _ofTextureData_set_bAllocated(value a,value b) {
	ofTextureData* pt = (ofTextureData*) val_data(a);
	return alloc_bool(pt->bAllocated = val_bool(b));
}
DEFINE_PRIM(_ofTextureData_set_bAllocated,2);



/*
	ofTexture
*/
DEFINE_KIND(_ofTexture);

void delete_ofTexture(value a) {
	ofTexture* rect = (ofTexture*) val_data(a);
	delete rect;
}

value _ofTexture_new() {
	value ret = alloc_abstract(_ofTexture, new ofTexture());
	val_gc(ret, delete_ofTexture);
	return ret;
}
DEFINE_PRIM(_ofTexture_new,0);

value _ofTexture_clone(value a,value b) {
	ofTexture* pt = (ofTexture*) val_data(a);
	*pt = *(ofTexture*) val_data(b);
	return alloc_null();
}
DEFINE_PRIM(_ofTexture_clone,2);

value _ofTexture_allocate(value a,value b,value c,value d,value e) {
	ofTexture* pt = (ofTexture*) val_data(a);
	pt->allocate(val_int(b),val_int(c),val_int(d),val_bool(e));
	return alloc_null();
}
DEFINE_PRIM(_ofTexture_allocate,5);

value _ofTexture_clear(value a) {
	ofTexture* pt = (ofTexture*) val_data(a);
	pt->clear();
	return alloc_null();
}
DEFINE_PRIM(_ofTexture_clear,1);

value _ofTexture_loadData(value a,value b,value c,value d,value e) {
	ofTexture* pt = (ofTexture*) val_data(a);
	pt->loadData(	(unsigned char*) buffer_data(val_to_buffer(b)), 
					val_int(c), 
					val_int(d),
					val_int(e));
	return alloc_null();
}
DEFINE_PRIM(_ofTexture_loadData,5);

value _ofTexture_loadScreenData(value a,value b,value c,value d,value e) {
	ofTexture* pt = (ofTexture*) val_data(a);
	pt->loadScreenData(val_int(b), val_int(c), val_int(d), val_int(e));
	return alloc_null();
}
DEFINE_PRIM(_ofTexture_loadScreenData,5);

value _ofTexture_setAnchorPercent(value a,value b,value c) {
	ofTexture* pt = (ofTexture*) val_data(a);
	pt->setAnchorPercent(val_float(b), val_float(c));
	return alloc_null();
}
DEFINE_PRIM(_ofTexture_setAnchorPercent,3);

value _ofTexture_setAnchorPoint(value a,value b,value c) {
	ofTexture* pt = (ofTexture*) val_data(a);
	pt->setAnchorPoint(val_float(b), val_float(c));
	return alloc_null();
}
DEFINE_PRIM(_ofTexture_setAnchorPoint,3);

value _ofTexture_resetAnchor(value a) {
	ofTexture* pt = (ofTexture*) val_data(a);
	pt->resetAnchor();
	return alloc_null();
}
DEFINE_PRIM(_ofTexture_resetAnchor,1);

value _ofTexture_draw4(value a,value b,value c,value d,value e) {
	ofTexture* pt = (ofTexture*) val_data(a);
	pt->draw(val_float(b),val_float(c),val_float(d),val_float(e));
	return alloc_null();
}
DEFINE_PRIM(_ofTexture_draw4,5);

value _ofTexture_draw2(value a,value b,value c) {
	ofTexture* pt = (ofTexture*) val_data(a);
	pt->draw(val_float(b),val_float(c));
	return alloc_null();
}
DEFINE_PRIM(_ofTexture_draw2,3);

value _ofTexture_bind(value a) {
	ofTexture* pt = (ofTexture*) val_data(a);
	pt->bind();
	return alloc_null();
}
DEFINE_PRIM(_ofTexture_bind,1);

value _ofTexture_unbind(value a) {
	ofTexture* pt = (ofTexture*) val_data(a);
	pt->unbind();
	return alloc_null();
}
DEFINE_PRIM(_ofTexture_unbind,1);

value _ofTexture_getCoordFromPoint(value a,value b,value c) {
	ofTexture* pt = (ofTexture*) val_data(a);
	
	value ret = alloc_abstract(_ofPoint, new ofPoint(pt->getCoordFromPoint(val_float(b),val_float(c))));
	val_gc(ret, delete_ofPoint);
	return ret;
}
DEFINE_PRIM(_ofTexture_getCoordFromPoint,3);

value _ofTexture_getCoordFromPercent(value a,value b,value c) {
	ofTexture* pt = (ofTexture*) val_data(a);
	
	value ret = alloc_abstract(_ofPoint, new ofPoint(pt->getCoordFromPercent(val_float(b),val_float(c))));
	val_gc(ret, delete_ofPoint);
	return ret;
}
DEFINE_PRIM(_ofTexture_getCoordFromPercent,3);

/* since I cannot make it compiles on Mac, and these are not in the OF docs anyway, I remove it.
value _ofTexture_setTextureWrap(value a,value b,value c) {
	ofTexture* pt = (ofTexture*) val_data(a);
	pt->setTextureWrap(val_int(b), val_int(c));
	return alloc_null();
}
DEFINE_PRIM(_ofTexture_setTextureWrap,3);

value _ofTexture_setTextureMinMagFilter(value a,value b,value c) {
	ofTexture* pt = (ofTexture*) val_data(a);
	pt->setTextureMinMagFilter(val_int(b), val_int(c));
	return alloc_null();
}
DEFINE_PRIM(_ofTexture_setTextureMinMagFilter,3);
*/

value _ofTexture_bAllocated(value a) {
	ofTexture* pt = (ofTexture*) val_data(a);
	pt->bAllocated();
	return alloc_null();
}
DEFINE_PRIM(_ofTexture_bAllocated,1);

value _ofTexture_getWidth(value a) {
	ofTexture* pt = (ofTexture*) val_data(a);
	return alloc_float(pt->getWidth());
}
DEFINE_PRIM(_ofTexture_getWidth,1);

value _ofTexture_getHeight(value a) {
	ofTexture* pt = (ofTexture*) val_data(a);
	return alloc_float(pt->getHeight());
}
DEFINE_PRIM(_ofTexture_getHeight,1);

value _ofTexture_getTextureData(value a) {
	ofTexture* pt = (ofTexture*) val_data(a);
	return alloc_abstract(_ofTextureData,&pt->getTextureData());
}
DEFINE_PRIM(_ofTexture_getTextureData,1);


/*
	ofImage
*/
DEFINE_KIND(_ofImage);

void delete_ofImage(value a) {
	ofImage* rect = (ofImage*) val_data(a);
	delete rect;
}

value _ofImage_new() {
	value ret = alloc_abstract(_ofImage, new ofImage());
	val_gc(ret, delete_ofImage);
	return ret;
}
DEFINE_PRIM(_ofImage_new,0);


value _ofImage_allocate(value a,value b,value c,value d) {
	ofImage* pt = (ofImage*) val_data(a);
	pt->allocate(val_int(b),val_int(c),val_int(d));
	return alloc_null();
}
DEFINE_PRIM(_ofImage_allocate,4);

value _ofImage_clear(value a) {
	ofImage* pt = (ofImage*) val_data(a);
	pt->clear();
	return alloc_null();
}
DEFINE_PRIM(_ofImage_clear,1);

value _ofImage_clone(value a,value b) {
	ofImage* pt = (ofImage*) val_data(a);
	pt->clone(*(ofImage*) val_data(b));
	return alloc_null();
}
DEFINE_PRIM(_ofImage_clone,2);

value _ofImage_setUseTexture(value a,value b) {
	ofImage* pt = (ofImage*) val_data(a);
	pt->setUseTexture(val_bool(b));
	return alloc_null();
}
DEFINE_PRIM(_ofImage_setUseTexture,2);

value _ofImage_getTextureReference(value a) {
	ofImage* pt = (ofImage*) val_data(a);
	value ret = alloc_abstract(_ofTexture, &pt->getTextureReference());
	return ret;
}
DEFINE_PRIM(_ofImage_getTextureReference,1);

value _ofImage_loadImage(value a,value b) {
	ofImage* pt = (ofImage*) val_data(a);
	return alloc_bool(pt->loadImage(val_string(b)));
}
DEFINE_PRIM(_ofImage_loadImage,2);

value _ofImage_saveImage(value a,value b) {
	ofImage* pt = (ofImage*) val_data(a);
	pt->saveImage(val_string(b));
	return alloc_null();
}
DEFINE_PRIM(_ofImage_saveImage,2);

value _ofImage_getPixels(value a) {
	ofImage* pt = (ofImage*) val_data(a);
	return buffer_val(alloc_buffer((const char *) pt->getPixels()));
}
DEFINE_PRIM(_ofImage_getPixels,1);

value _ofImage_setFromPixels(value a,value b) {
	ofImage* pt = (ofImage*) val_data(a);
	pt->setFromPixels(	(unsigned char*) buffer_data(val_to_buffer(val_field(b, val_id("pixels")))), 
						val_field_numeric(b, val_id("w")), 
						val_field_numeric(b, val_id("h")), 
						val_field_numeric(b, val_id("newType")), 
						val_bool(val_field(b, val_id("bOrderIsRGB"))));
	return alloc_null();
}
DEFINE_PRIM(_ofImage_setFromPixels,2);

value _ofImage_setImageType(value a,value b) {
	ofImage* pt = (ofImage*) val_data(a);
	pt->setImageType(val_int(b));
	return alloc_null();
}
DEFINE_PRIM(_ofImage_setImageType,2);

value _ofImage_resize(value a,value b,value c) {
	ofImage* pt = (ofImage*) val_data(a);
	pt->resize(val_int(b),val_int(c));
	return alloc_null();
}
DEFINE_PRIM(_ofImage_resize,3);

value _ofImage_grabScreen(value a,value b,value c,value d,value e) {
	ofImage* pt = (ofImage*) val_data(a);
	pt->grabScreen(val_int(b),val_int(c),val_int(d),val_int(e));
	return alloc_null();
}
DEFINE_PRIM(_ofImage_grabScreen,5);

value _ofImage_update(value a) {
	ofImage* pt = (ofImage*) val_data(a);
	pt->update();
	return alloc_null();
}
DEFINE_PRIM(_ofImage_update,1);

value _ofImage_setAnchorPercent(value a,value b,value c) {
	ofImage* pt = (ofImage*) val_data(a);
	pt->setAnchorPercent(val_float(b),val_float(c));
	return alloc_null();
}
DEFINE_PRIM(_ofImage_setAnchorPercent,3);

value _ofImage_setAnchorPoint(value a,value b,value c) {
	ofImage* pt = (ofImage*) val_data(a);
	pt->setAnchorPoint(val_float(b),val_float(c));
	return alloc_null();
}
DEFINE_PRIM(_ofImage_setAnchorPoint,3);

value _ofImage_resetAnchor(value a) {
	ofImage* pt = (ofImage*) val_data(a);
	pt->resetAnchor();
	return alloc_null();
}
DEFINE_PRIM(_ofImage_resetAnchor,1);

value _ofImage_draw4(value a,value b,value c,value d,value e) {
	ofImage* pt = (ofImage*) val_data(a);
	pt->draw(val_float(b),val_float(c),val_float(d),val_float(e));
	return alloc_null();
}
DEFINE_PRIM(_ofImage_draw4,5);

value _ofImage_draw2(value a,value b,value c) {
	ofImage* pt = (ofImage*) val_data(a);
	pt->draw(val_float(b),val_float(c));
	return alloc_null();
}
DEFINE_PRIM(_ofImage_draw2,3);

value _ofImage_getWidth(value a) {
	ofImage* pt = (ofImage*) val_data(a);
	return alloc_float(pt->width);
}
DEFINE_PRIM(_ofImage_getWidth,1);

value _ofImage_getHeight(value a) {
	ofImage* pt = (ofImage*) val_data(a);
	return alloc_float(pt->height);
}
DEFINE_PRIM(_ofImage_getHeight,1);

value _ofImage_getBpp(value a) {
	ofImage* pt = (ofImage*) val_data(a);
	return alloc_int(pt->bpp);
}
DEFINE_PRIM(_ofImage_getBpp,1);

value _ofImage_getType(value a) {
	ofImage* pt = (ofImage*) val_data(a);
	return alloc_int(pt->type);
}
DEFINE_PRIM(_ofImage_getType,1);


/*
	ofTrueTypeFont
*/
DEFINE_KIND(_ofTrueTypeFont);

void delete_ofTrueTypeFont(value a) {
	ofTrueTypeFont* rect = (ofTrueTypeFont*) val_data(a);
	delete rect;
}

value _ofTrueTypeFont_new() {
	value ret = alloc_abstract(_ofTrueTypeFont, new ofTrueTypeFont());
	val_gc(ret, delete_ofTrueTypeFont);	
	return ret;
}
DEFINE_PRIM(_ofTrueTypeFont_new,0);

value _ofTrueTypeFont_loadFont(value a,value b) {
	ofTrueTypeFont* pt = (ofTrueTypeFont*) val_data(a);
	const char* filename = val_string(val_field(b, val_id("filename")));
	int fontsize = val_field_numeric(b, val_id("fontsize"));
	bool _bAntiAliased = val_bool(val_field(b, val_id("_bAntiAliased")));
	bool _bFullCharacterSet = val_bool(val_field(b, val_id("_bFullCharacterSet")));
	bool makeContours = val_bool(val_field(b, val_id("makeContours")));
					
	gc_enter_blocking();

	pt->loadFont(	filename, 
					fontsize,
					_bAntiAliased, 
					_bFullCharacterSet, 
					makeContours);
					
	gc_exit_blocking();

	return alloc_null();
}
DEFINE_PRIM(_ofTrueTypeFont_loadFont,2);

value _ofTrueTypeFont_getLineHeight(value a) {
	ofTrueTypeFont* pt = (ofTrueTypeFont*) val_data(a);
	return alloc_float(pt->getLineHeight());
}
DEFINE_PRIM(_ofTrueTypeFont_getLineHeight,1);

value _ofTrueTypeFont_setLineHeight(value a,value b) {
	ofTrueTypeFont* pt = (ofTrueTypeFont*) val_data(a);
	pt->setLineHeight(val_float(b));
	return alloc_null();
}
DEFINE_PRIM(_ofTrueTypeFont_setLineHeight,2);

value _ofTrueTypeFont_stringWidth(value a,value b) {
	ofTrueTypeFont* pt = (ofTrueTypeFont*) val_data(a);
	return alloc_float(pt->stringWidth(val_string(b)));
}
DEFINE_PRIM(_ofTrueTypeFont_stringWidth,2);

value _ofTrueTypeFont_stringHeight(value a,value b) {
	ofTrueTypeFont* pt = (ofTrueTypeFont*) val_data(a);
	return alloc_float(pt->stringHeight(val_string(b)));
}
DEFINE_PRIM(_ofTrueTypeFont_stringHeight,2);

value _ofTrueTypeFont_getStringBoundingBox(value a,value b,value c,value d) {
	ofTrueTypeFont* pt = (ofTrueTypeFont*) val_data(a);
	ofRectangle rect = pt->getStringBoundingBox(val_string(b),val_float(c),val_float(d));
	value ret = alloc_abstract(_ofRectangle,new ofRectangle(rect.x,rect.y,rect.width,rect.height));
	val_gc(ret, delete_ofRectangle);
	return ret;
}
DEFINE_PRIM(_ofTrueTypeFont_getStringBoundingBox,4);

value _ofTrueTypeFont_drawString(value a,value b,value c,value d) {
	ofTrueTypeFont* pt = (ofTrueTypeFont*) val_data(a);
	pt->drawString(val_string(b),val_float(c),val_float(d));
	return alloc_null();
}
DEFINE_PRIM(_ofTrueTypeFont_drawString,4);

value _ofTrueTypeFont_drawStringAsShapes(value a,value b,value c,value d) {
	ofTrueTypeFont* pt = (ofTrueTypeFont*) val_data(a);
	pt->drawStringAsShapes(val_string(b),val_float(c),val_float(d));
	return alloc_null();
}
DEFINE_PRIM(_ofTrueTypeFont_drawStringAsShapes,4);

value _ofTrueTypeFont_getCharacterAsPoints(value a,value b, value c) {
	ofTrueTypeFont* ttf = (ofTrueTypeFont*) val_data(a);
	ofTTFCharacter chr = ttf->getCharacterAsPoints(val_int(b));
	int num = chr.contours.size();
	
	value contours = alloc_array(num);
	value ret = alloc_empty_object();
	alloc_field(ret,val_id("contours"),contours);
	for (int i = 0 ; i < num ; ++i) {
		ofTTFContour* cntr = &chr.contours[i];
		int num = cntr->pts.size();
		value pts = alloc_array(num);
		value contour = alloc_empty_object();
		alloc_field(contour,val_id("pts"),pts);
		val_array_set_i(contours,i,contour);
		for (int p = 0 ; p < num ; ++p) {
			value pt = alloc_abstract(_ofPoint, new ofPoint(cntr->pts[p]));
			val_gc(pt, delete_ofPoint);
			
			value args = alloc_array(4);
			val_array_set_i(args,0,alloc_null());
			val_array_set_i(args,1,alloc_null());
			val_array_set_i(args,2,alloc_null());
			val_array_set_i(args,3,pt);
			
			val_array_set_i(pts, p, val_call1(c, args));
		}
	}
	return ret;
}
DEFINE_PRIM(_ofTrueTypeFont_getCharacterAsPoints,3);

value _ofTrueTypeFont_get_nCharacters(value a) {
	ofTrueTypeFont* pt = (ofTrueTypeFont*) val_data(a);
	return alloc_int(pt->nCharacters);
}
DEFINE_PRIM(_ofTrueTypeFont_get_nCharacters,1);

value _ofTrueTypeFont_set_nCharacters(value a,value b) {
	ofTrueTypeFont* pt = (ofTrueTypeFont*) val_data(a);
	return alloc_int(pt->nCharacters = val_int(b));
}
DEFINE_PRIM(_ofTrueTypeFont_set_nCharacters,2);

value _ofTrueTypeFont_get_bLoadedOk(value a) {
	ofTrueTypeFont* pt = (ofTrueTypeFont*) val_data(a);
	return alloc_bool(pt->bLoadedOk);
}
DEFINE_PRIM(_ofTrueTypeFont_get_bLoadedOk,1);

value _ofTrueTypeFont_set_bLoadedOk(value a,value b) {
	ofTrueTypeFont* pt = (ofTrueTypeFont*) val_data(a);
	return alloc_bool(pt->bLoadedOk = val_bool(b));
}
DEFINE_PRIM(_ofTrueTypeFont_set_bLoadedOk,2);

value _ofTrueTypeFont_get_bAntiAlised(value a) {
	ofTrueTypeFont* pt = (ofTrueTypeFont*) val_data(a);
	return alloc_bool(pt->bAntiAlised);
}
DEFINE_PRIM(_ofTrueTypeFont_get_bAntiAlised,1);

value _ofTrueTypeFont_set_bAntiAlised(value a,value b) {
	ofTrueTypeFont* pt = (ofTrueTypeFont*) val_data(a);
	return alloc_bool(pt->bAntiAlised = val_bool(b));
}
DEFINE_PRIM(_ofTrueTypeFont_set_bAntiAlised,2);

value _ofTrueTypeFont_get_bFullCharacterSet(value a) {
	ofTrueTypeFont* pt = (ofTrueTypeFont*) val_data(a);
	return alloc_bool(pt->bFullCharacterSet);
}
DEFINE_PRIM(_ofTrueTypeFont_get_bFullCharacterSet,1);

value _ofTrueTypeFont_set_bFullCharacterSet(value a,value b) {
	ofTrueTypeFont* pt = (ofTrueTypeFont*) val_data(a);
	return alloc_bool(pt->bFullCharacterSet = val_bool(b));
}
DEFINE_PRIM(_ofTrueTypeFont_set_bFullCharacterSet,2);
