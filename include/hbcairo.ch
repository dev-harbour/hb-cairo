#ifndef HBCAIRO_CH_
#define HBCAIRO_CH_

/* cairo.h */
#define CAIRO_STATUS_SUCCESS                   0
#define CAIRO_STATUS_NO_MEMORY                 1
#define CAIRO_STATUS_INVALID_RESTORE           2
#define CAIRO_STATUS_INVALID_POP_GROUP         3
#define CAIRO_STATUS_NO_CURRENT_POINT          4
#define CAIRO_STATUS_INVALID_MATRIX            5
#define CAIRO_STATUS_INVALID_STATUS            6
#define CAIRO_STATUS_NULL_POINTER              7
#define CAIRO_STATUS_INVALID_STRING            8
#define CAIRO_STATUS_INVALID_PATH_DATA         9
#define CAIRO_STATUS_READ_ERROR                10
#define CAIRO_STATUS_WRITE_ERROR               11
#define CAIRO_STATUS_SURFACE_FINISHED          12
#define CAIRO_STATUS_SURFACE_TYPE_MISMATCH     13
#define CAIRO_STATUS_PATTERN_TYPE_MISMATCH     14
#define CAIRO_STATUS_INVALID_CONTENT           15
#define CAIRO_STATUS_INVALID_FORMAT            16
#define CAIRO_STATUS_INVALID_VISUAL            17
#define CAIRO_STATUS_FILE_NOT_FOUND            18
#define CAIRO_STATUS_INVALID_DASH              19
#define CAIRO_STATUS_INVALID_DSC_COMMENT       20
#define CAIRO_STATUS_INVALID_INDEX             21
#define CAIRO_STATUS_CLIP_NOT_REPRESENTABLE    22
#define CAIRO_STATUS_TEMP_FILE_ERROR           23
#define CAIRO_STATUS_INVALID_STRIDE            24
#define CAIRO_STATUS_FONT_TYPE_MISMATCH        25
#define CAIRO_STATUS_USER_FONT_IMMUTABLE       26
#define CAIRO_STATUS_USER_FONT_ERROR           27
#define CAIRO_STATUS_NEGATIVE_COUNT            28
#define CAIRO_STATUS_INVALID_CLUSTERS          29
#define CAIRO_STATUS_INVALID_SLANT             30
#define CAIRO_STATUS_INVALID_WEIGHT            31
#define CAIRO_STATUS_INVALID_SIZE              32
#define CAIRO_STATUS_USER_FONT_NOT_IMPLEMENTED 33
#define CAIRO_STATUS_DEVICE_TYPE_MISMATCH      34
#define CAIRO_STATUS_DEVICE_ERROR              35
#define CAIRO_STATUS_INVALID_MESH_CONSTRUCTION 36
#define CAIRO_STATUS_DEVICE_FINISHED           37
#define CAIRO_STATUS_JBIG2_GLOBAL_MISSING      38
#define CAIRO_STATUS_PNG_ERROR                 39
#define CAIRO_STATUS_FREETYPE_ERROR            40
#define CAIRO_STATUS_WIN32_GDI_ERROR           41
#define CAIRO_STATUS_TAG_ERROR                 42
#define CAIRO_STATUS_LAST_STATUS               43

#define CAIRO_CONTENT_COLOR		              0x1000
#define CAIRO_CONTENT_ALPHA		              0x2000
#define CAIRO_CONTENT_COLOR_ALPHA	           0x3000

#define CAIRO_FORMAT_INVALID                   -1
#define CAIRO_FORMAT_ARGB32                    0
#define CAIRO_FORMAT_RGB24                     1
#define CAIRO_FORMAT_A8                        2
#define CAIRO_FORMAT_A1                        3
#define CAIRO_FORMAT_RGB16_565                 4
#define CAIRO_FORMAT_RGB30                     5

#define CAIRO_OPERATOR_CLEAR                   0
#define CAIRO_OPERATOR_SOURCE                  1
#define CAIRO_OPERATOR_OVER                    2
#define CAIRO_OPERATOR_IN                      3
#define CAIRO_OPERATOR_OUT                     4
#define CAIRO_OPERATOR_ATOP                    5
#define CAIRO_OPERATOR_DEST                    6
#define CAIRO_OPERATOR_DEST_OVER               7
#define CAIRO_OPERATOR_DEST_IN                 8
#define CAIRO_OPERATOR_DEST_OUT                9
#define CAIRO_OPERATOR_DEST_ATOP               10
#define CAIRO_OPERATOR_XOR                     11
#define CAIRO_OPERATOR_ADD                     12
#define CAIRO_OPERATOR_SATURATE                13
#define CAIRO_OPERATOR_MULTIPLY                14
#define CAIRO_OPERATOR_SCREEN                  15
#define CAIRO_OPERATOR_OVERLAY                 16
#define CAIRO_OPERATOR_DARKEN                  17
#define CAIRO_OPERATOR_LIGHTEN                 18
#define CAIRO_OPERATOR_COLOR_DODGE             19
#define CAIRO_OPERATOR_COLOR_BURN              20
#define CAIRO_OPERATOR_HARD_LIGHT              21
#define CAIRO_OPERATOR_SOFT_LIGHT              22
#define CAIRO_OPERATOR_DIFFERENCE              23
#define CAIRO_OPERATOR_EXCLUSION               24
#define CAIRO_OPERATOR_HSL_HUE                 25
#define CAIRO_OPERATOR_HSL_SATURATION          26
#define CAIRO_OPERATOR_HSL_COLOR               27
#define CAIRO_OPERATOR_HSL_LUMINOSITY          28

#define CAIRO_ANTIALIAS_DEFAULT                0
#define CAIRO_ANTIALIAS_NONE                   1
#define CAIRO_ANTIALIAS_GRAY                   2
#define CAIRO_ANTIALIAS_SUBPIXEL               3
#define CAIRO_ANTIALIAS_FAST                   4
#define CAIRO_ANTIALIAS_GOOD                   5
#define CAIRO_ANTIALIAS_BEST                   6

#define CAIRO_FILL_RULE_WINDING                0
#define CAIRO_FILL_RULE_EVEN_ODD               1

#define CAIRO_LINE_CAP_BUTT                    0
#define CAIRO_LINE_CAP_ROUND                   1
#define CAIRO_LINE_CAP_SQUARE                  2

#define CAIRO_LINE_JOIN_MITER                  0
#define CAIRO_LINE_JOIN_ROUND                  1
#define CAIRO_LINE_JOIN_BEVEL                  2

#define CAIRO_TAG_DEST "cairo.dest"
#define CAIRO_TAG_LINK "Link"

#define CAIRO_TEXT_CLUSTER_FLAG_BACKWARD       0x00000001

#define CAIRO_FONT_SLANT_NORMAL                0
#define CAIRO_FONT_SLANT_ITALIC                1
#define CAIRO_FONT_SLANT_OBLIQUE               2

#define CAIRO_FONT_WEIGHT_NORMAL               0
#define CAIRO_FONT_WEIGHT_BOLD                 1

#define CAIRO_SUBPIXEL_ORDER_DEFAULT           0
#define CAIRO_SUBPIXEL_ORDER_RGB               1
#define CAIRO_SUBPIXEL_ORDER_BGR               2
#define CAIRO_SUBPIXEL_ORDER_VRGB              3
#define CAIRO_SUBPIXEL_ORDER_VBGR              4

#define CAIRO_HINT_STYLE_DEFAULT               0
#define CAIRO_HINT_STYLE_NONE                  1
#define CAIRO_HINT_STYLE_SLIGHT                2
#define CAIRO_HINT_STYLE_MEDIUM                3
#define CAIRO_HINT_STYLE_FULL                  4

#define CAIRO_HINT_METRICS_DEFAULT             0
#define CAIRO_HINT_METRICS_OFF                 1
#define CAIRO_HINT_METRICS_ON                  2

#define CAIRO_FONT_TYPE_TOY                    0
#define CAIRO_FONT_TYPE_FT                     1
#define CAIRO_FONT_TYPE_WIN32                  2
#define CAIRO_FONT_TYPE_QUARTZ                 3
#define CAIRO_FONT_TYPE_USER                   4

#define CAIRO_PATH_MOVE_TO                     0
#define CAIRO_PATH_LINE_TO                     1
#define CAIRO_PATH_CURVE_TO                    2
#define CAIRO_PATH_CLOSE_PATH                  3

#define CAIRO_DEVICE_TYPE_DRM                  0
#define CAIRO_DEVICE_TYPE_GL                   1
#define CAIRO_DEVICE_TYPE_SCRIPT               2
#define CAIRO_DEVICE_TYPE_XCB                  3
#define CAIRO_DEVICE_TYPE_XLIB                 4
#define CAIRO_DEVICE_TYPE_XML                  5
#define CAIRO_DEVICE_TYPE_COGL                 6
#define CAIRO_DEVICE_TYPE_WIN32                7
#define CAIRO_DEVICE_TYPE_INVALID             -1

#define CAIRO_SURFACE_OBSERVER_NORMAL              0
#define CAIRO_SURFACE_OBSERVER_RECORD_OPERATIONS   0x1


#define CAIRO_SURFACE_TYPE_IMAGE               0
#define CAIRO_SURFACE_TYPE_PDF                 1
#define CAIRO_SURFACE_TYPE_PS                  2
#define CAIRO_SURFACE_TYPE_XLIB                3
#define CAIRO_SURFACE_TYPE_XCB                 4
#define CAIRO_SURFACE_TYPE_GLITZ               5
#define CAIRO_SURFACE_TYPE_QUARTZ              6
#define CAIRO_SURFACE_TYPE_WIN32               7
#define CAIRO_SURFACE_TYPE_BEOS                8
#define CAIRO_SURFACE_TYPE_DIRECTFB            9
#define CAIRO_SURFACE_TYPE_SVG                 10
#define CAIRO_SURFACE_TYPE_OS2                 11
#define CAIRO_SURFACE_TYPE_WIN32_PRINTING      12
#define CAIRO_SURFACE_TYPE_QUARTZ_IMAGE        13
#define CAIRO_SURFACE_TYPE_SCRIPT              14
#define CAIRO_SURFACE_TYPE_QT                  15
#define CAIRO_SURFACE_TYPE_RECORDING           16
#define CAIRO_SURFACE_TYPE_VG                  17
#define CAIRO_SURFACE_TYPE_GL                  18
#define CAIRO_SURFACE_TYPE_DRM                 19
#define CAIRO_SURFACE_TYPE_TEE                 20
#define CAIRO_SURFACE_TYPE_XML                 21
#define CAIRO_SURFACE_TYPE_SKIA                22
#define CAIRO_SURFACE_TYPE_SUBSURFACE          23
#define CAIRO_SURFACE_TYPE_COGL                24

#define CAIRO_MIME_TYPE_JPEG                   "image/jpeg"
#define CAIRO_MIME_TYPE_PNG                    "image/png"
#define CAIRO_MIME_TYPE_JP2                    "image/jp2"
#define CAIRO_MIME_TYPE_URI                    "text/x-uri"
#define CAIRO_MIME_TYPE_UNIQUE_ID              "application/x-cairo.uuid"
#define CAIRO_MIME_TYPE_JBIG2                  "application/x-cairo.jbig2"
#define CAIRO_MIME_TYPE_JBIG2_GLOBAL           "application/x-cairo.jbig2-global"
#define CAIRO_MIME_TYPE_JBIG2_GLOBAL_ID        "application/x-cairo.jbig2-global-id"
#define CAIRO_MIME_TYPE_CCITT_FAX              "image/g3fax"
#define CAIRO_MIME_TYPE_CCITT_FAX_PARAMS       "application/x-cairo.ccitt.params"
#define CAIRO_MIME_TYPE_EPS                    "application/postscript"
#define CAIRO_MIME_TYPE_EPS_PARAMS             "application/x-cairo.eps.params"

#define CAIRO_PATTERN_TYPE_SOLID               0
#define CAIRO_PATTERN_TYPE_SURFACE             1
#define CAIRO_PATTERN_TYPE_LINEAR              2
#define CAIRO_PATTERN_TYPE_RADIAL              3
#define CAIRO_PATTERN_TYPE_MESH                4
#define CAIRO_PATTERN_TYPE_RASTER_SOURCE       5

#define CAIRO_EXTEND_NONE                      0
#define CAIRO_EXTEND_REPEAT                    1
#define CAIRO_EXTEND_REFLECT                   2
#define CAIRO_EXTEND_PAD                       3

#define CAIRO_FILTER_FAST                      0
#define CAIRO_FILTER_GOOD                      1
#define CAIRO_FILTER_BEST                      2
#define CAIRO_FILTER_NEAREST                   3
#define CAIRO_FILTER_BILINEAR                  4
#define CAIRO_FILTER_GAUSSIAN                  5

#define CAIRO_REGION_OVERLAP_IN                0  /* completely inside region */
#define CAIRO_REGION_OVERLAP_OUT               1  /* completely outside region */
#define CAIRO_REGION_OVERLAP_PART              2  /* partly inside region */
/* End cairo.h */

#endif /* HBCAIRO_CH_ */
