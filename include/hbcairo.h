#ifndef HBCAIRO_H_
#define HBCAIRO_H_

#include "hbapi.h"
#include "hbapierr.h"
#include "hbapiitm.h"
#include "hbapistr.h"
#include "hbstack.h"

#include <cairo/cairo.h>
#include <cairo/cairo-pdf.h>
#include <cairo/cairo-ps.h>
#include <cairo/cairo-svg.h>

HB_EXTERN_BEGIN

extern HB_EXPORT cairo_t * hb_cairo_Param( int iParam );
extern HB_EXPORT cairo_t * hb_cairo_ParamGet( int iParam );
extern HB_EXPORT cairo_t * hb_cairo_ItemGet( PHB_ITEM pItem );
extern HB_EXPORT PHB_ITEM  hb_cairo_ItemPut( PHB_ITEM pItem, cairo_t * pCr );
extern HB_EXPORT void      hb_cairo_ItemClear( PHB_ITEM pItem );
extern HB_EXPORT void      hb_cairo_Return( cairo_t * pCr );

extern HB_EXPORT cairo_surface_t * hb_surface_Param( int iParam );
extern HB_EXPORT cairo_surface_t * hb_surface_ParamGet( int iParam );
extern HB_EXPORT cairo_surface_t * hb_surface_ItemGet( PHB_ITEM pItem );
extern HB_EXPORT PHB_ITEM          hb_surface_ItemPut( PHB_ITEM pItem, cairo_surface_t * pSurface );
extern HB_EXPORT void              hb_surface_ItemClear( PHB_ITEM pItem );
extern HB_EXPORT void              hb_surface_Return( cairo_surface_t * pSurface );

HB_EXTERN_END

#define UNUSED( x ) ( ( void ) ( x ) )
#define HB_ERR_ARGS() ( hb_errRT_BASE_SubstR( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS ) )

#endif /* HBCAIRO_H_ */
