/*
 * Cairo library: cairo-xlib.c
 * version 2.0.16
 *
 * Copyright © 2022 dev-harbour 
 *
 */

#include "hbcairo.h"

#if CAIRO_HAS_XLIB_SURFACE

#include <X11/Xlib.h>
#include <cairo/cairo-xlib.h>

CAIRO_BEGIN_DECLS

// cairo_public cairo_surface_t * cairo_xlib_surface_create (Display *dpy, Drawable drawable, Visual *visual, int width, int height);
// cairo_public cairo_surface_t * hb_cairo_xlib_surface_create (Display *dpy, Drawable drawable, int width, int height);
HB_FUNC( HB_CAIRO_XLIB_SURFACE_CREATE )
{
   Display * dpy = hb_parptr( 1 );

   if( dpy &&                                 /* Display *dpy      */
      hb_param( 2, HB_IT_INTEGER ) != NULL && /* Drawable drawable */
      hb_param( 3, HB_IT_INTEGER ) != NULL && /* int width         */
      hb_param( 4, HB_IT_INTEGER ) != NULL )  /* int height        */
   {
      Visual * visual = DefaultVisual( dpy, DefaultScreen( dpy ) );
      hb_surface_Return( cairo_xlib_surface_create( dpy, ( Drawable ) hb_parni( 2 ), visual, hb_parni( 3 ),  hb_parni( 4 ) ) );
   }
   else
   {
      HB_ERR_ARGS();
   }
}

// cairo_public cairo_surface_t * cairo_xlib_surface_create_for_bitmap (Display *dpy, Pixmap bitmap, Screen *screen, int width, int height);

// cairo_public void cairo_xlib_surface_set_size (cairo_surface_t *surface, int width, int height);
HB_FUNC( CAIRO_XLIB_SURFACE_SET_SIZE )
{
   cairo_surface_t * surface = hb_surface_Param( 1 );

   if( surface &&
      hb_param( 2, HB_IT_INTEGER ) != NULL &&
      hb_param( 3, HB_IT_INTEGER ) != NULL )
   {
      cairo_xlib_surface_set_size( surface, hb_parni( 2 ), hb_parni( 3 ) );
   }
   else
   {
      HB_ERR_ARGS();
   }
}

// cairo_public void cairo_xlib_surface_set_drawable (cairo_surface_t *surface, Drawable drawable, int width, int height);
// cairo_public Display * cairo_xlib_surface_get_display (cairo_surface_t *surface);
// cairo_public Drawable cairo_xlib_surface_get_drawable (cairo_surface_t *surface);
// cairo_public Screen * cairo_xlib_surface_get_screen (cairo_surface_t *surface);
// cairo_public Visual * cairo_xlib_surface_get_visual (cairo_surface_t *surface);
// cairo_public int cairo_xlib_surface_get_depth (cairo_surface_t *surface);
// cairo_public int cairo_xlib_surface_get_width (cairo_surface_t *surface);
// cairo_public int cairo_xlib_surface_get_height (cairo_surface_t *surface);
// cairo_public void cairo_xlib_device_debug_cap_xrender_version (cairo_device_t *device, int major_version, int minor_version);
// cairo_public void cairo_xlib_device_debug_set_precision (cairo_device_t *device, int precision);
// cairo_public int cairo_xlib_device_debug_get_precision (cairo_device_t *device);

CAIRO_END_DECLS

#else /* CAIRO_HAS_XLIB_SURFACE */
#error Cairo was not compiled with support for the xlib backend
#endif /* CAIRO_HAS_XLIB_SURFACE */
