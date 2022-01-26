/*
 *
 */

#include "hbcairo.ch"

FUNCTION Main()

   LOCAL pWindow
   LOCAL nWidth
	LOCAL nHeight
	LOCAL pXdisplay
	LOCAL nXwindow
	LOCAL pSurface
	LOCAL pCairo

   LOCAL cText := "GLFW .AND. Cairo"

   IF( glfwInit() < 0 )
      OutStd( e"Unable to initialize Init: \n" )
      RETURN -1
   ENDIF

   glfwWindowHint( GLFW_CLIENT_API, GLFW_NO_API )

   pWindow := glfwCreateWindow( 720, 450, cText, NIL, NIL )
   IF( pWindow == NIL )
      OutStd( e"Unable to initialize Window: \n" )
      glfwTerminate()
      RETURN -1
   ENDIF

   glfwSwapInterval( 1 )

   glfwGetFramebufferSize( pWindow, @nWidth, @nHeight )

   pXdisplay := glfwGetX11Display()
   IF( pXdisplay == NIL )
      OutStd( e"Unable to initialize Xdisplay: \n" )
      glfwTerminate()
      RETURN -1
   ENDIF

   nXwindow := glfwGetX11Window( pWindow )
   pSurface  := hb_cairo_xlib_surface_create( pXdisplay, nXwindow, nWidth, nHeight )

   pCairo := cairo_create( pSurface )

   DO WHILE( glfwWindowShouldClose( pWindow ) == 0 )

      glfwGetFramebufferSize( pWindow, @nWidth, @nHeight )
      cairo_xlib_surface_set_size( pSurface, nWidth, nHeight )

      cairo_push_group( pCairo )

      cairo_set_source_rgb( pCairo, 1.0, 1.0, 1.0 )
      cairo_set_operator( pCairo, CAIRO_OPERATOR_SOURCE )
      cairo_paint( pCairo )
      //---
      cairo_select_font_face( pCairo, "Monospac", CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_NORMAL )
      cairo_set_font_size( pCairo, 42 )
      cairo_set_source_rgb( pCairo, 0, 0, 0 )

      nWidth  := ( nWidth - Len( ctext ) ) / 2
      nHeight := nWidth / 2

      cairo_move_to( pCairo, nWidth, nHeight )
      cairo_show_text( pCairo, cText )
      //---
      cairo_pop_group_to_source( pCairo )
      cairo_paint( pCairo )
      cairo_surface_flush( pSurface )
      glfwSwapBuffers( pWindow )

      glfwPollEvents()

   ENDDO

   cairo_destroy( pCairo )
   cairo_surface_finish( pSurface )
   cairo_surface_destroy( pSurface )
   glfwDestroyWindow( pWindow )
   glfwTerminate()

   RETURN 0
