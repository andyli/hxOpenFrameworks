package of.utils;

class Constants 
{
	inline static public var OF_VERSION = 6;
	
	inline static public var OF_LOOP_NONE = 0x01;
	inline static public var OF_LOOP_PALINDROME = 0x02;
	inline static public var OF_LOOP_NORMAL = 0x03;
	
	inline static public var OF_DEFAULT_LOG_LEVEL = LogLevel.OF_LOG_WARNING;
	
	inline static public var OF_SERIAL_NO_DATA = -2;
	inline static public var OF_SERIAL_ERROR = -1;
	
	inline static public var PI = 3.14159265358979323846;
	inline static public var TWO_PI = 6.28318530717958647693;
	inline static public var M_TWO_PI = 6.28318530717958647693;
	inline static public var FOUR_PI = 12.56637061435917295385;
	inline static public var HALF_PI = 1.57079632679489661923;
	
	inline static public var OF_FILLED = 0x01;
	inline static public var OF_OUTLINE = 0x02;
	
	inline static public var OF_WINDOW = 0;
	inline static public var OF_FULLSCREEN = 1;
	inline static public var OF_GAME_MODE = 2;
	
	inline static public var OF_RECTMODE_CORNER = 0;
	inline static public var OF_RECTMODE_CENTER = 1;
	
	inline static public var OF_IMAGE_GRAYSCALE = 0x00;
	inline static public var OF_IMAGE_COLOR = 0x01;
	inline static public var OF_IMAGE_COLOR_ALPHA = 0x02;
	inline static public var OF_IMAGE_UNDEFINED = 0x03;
	
	inline static public var OF_MAX_STYLE_HISTORY = 32;
	inline static public var OF_MAX_CIRCLE_PTS = 1024;
	
	inline static public var OF_POLY_WINDING_ODD = 100130;
	inline static public var OF_POLY_WINDING_NONZERO = 100131;
	inline static public var OF_POLY_WINDING_POSITIVE = 100132;
	inline static public var OF_POLY_WINDING_NEGATIVE = 100133;
	inline static public var OF_POLY_WINDING_ABS_GEQ_TWO = 100134;

	inline static public var OF_CLOSE = true;
	
	inline static public var OF_KEY_MODIFIER = 0x0100;
	inline static public var OF_KEY_RETURN = 13;
	inline static public var OF_KEY_ESC = 27;

	#if TARGET_OSX /* TODO */
		inline static public var OF_KEY_BACKSPACE = 127;
		inline static public var OF_KEY_DEL = 8;
	#else
		inline static public var OF_KEY_BACKSPACE = 8;
		inline static public var OF_KEY_DEL = 127;
	#end

	inline static public var OF_KEY_F1 = (1 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_F2 = (2 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_F3 = (3 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_F4 = (4 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_F5 = (5 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_F6 = (6 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_F7 = (7 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_F8 = (8 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_F9 = (9 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_F10 = (10 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_F11 = (11 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_F12 = (12 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_LEFT = (100 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_UP = (101 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_RIGHT = (102 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_DOWN = (103 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_PAGE_UP = (104 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_PAGE_DOWN = (105 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_HOME = (106 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_END = (107 | OF_KEY_MODIFIER);
	inline static public var OF_KEY_INSERT = (108 | OF_KEY_MODIFIER);
}

class LogLevel {
	inline static public var OF_LOG_VERBOSE = 0;
	inline static public var OF_LOG_NOTICE = 1;
	inline static public var OF_LOG_WARNING = 2;
	inline static public var OF_LOG_ERROR = 3;
	inline static public var OF_LOG_FATAL_ERROR = 4;
	inline static public var OF_LOG_SILENT = 5;
}

/* TODO
#ifndef DEG_TO_RAD
	#define DEG_TO_RAD (PI/180.0)
#endif

#ifndef RAD_TO_DEG
	#define RAD_TO_DEG (180.0/PI)
#endif

#ifndef MIN
	#define MIN(x,y) (((x) < (y)) ? (x) : (y))
#endif

#ifndef MAX
	#define MAX(x,y) (((x) > (y)) ? (x) : (y))
#endif

#ifndef CLAMP
	#define CLAMP(val,min,max) (MAX(MIN(val,max),min))
#endif

#ifndef ABS
	#define ABS(x) (((x) < 0) ? -(x) : (x))
#endif

*/