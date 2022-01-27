/*
 *
 */

#include "hbglfw.ch"

REQUEST HB_CODEPAGE_UTF8EX

FUNCTION Main()

   LOCAL pWindow
   LOCAL nWidth
   LOCAL nHeight
   LOCAL pXdisplay
   LOCAL nXwindow
   LOCAL pSurface
   LOCAL pCairo

   IF( glfwInit() < 0 )
      OutStd( e"Unable to initialize Init: \n" )
      RETURN -1
   ENDIF

   glfwWindowHint( GLFW_CLIENT_API, GLFW_NO_API )

   pWindow := glfwCreateWindow( 720, 450, "GLFW .AND. Cairo", NIL, NIL )
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

   glfwSetKeyCallback( pWindow, @key_callback() )

   DO WHILE( glfwWindowShouldClose( pWindow ) == 0 )

      glfwGetFramebufferSize( pWindow, @nWidth, @nHeight )
      cairo_xlib_surface_set_size( pSurface, nWidth, nHeight )

      cairo_push_group( pCairo )

      cairo_set_source_rgb( pCairo, 1.0, 1.0, 1.0 )
      cairo_set_operator( pCairo, CAIRO_OPERATOR_SOURCE )
      cairo_paint( pCairo )
      //---
      cairo_select_font_face( pCairo, "Sans", CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_BOLD )
      cairo_set_font_size( pCairo, 36 )
      cairo_set_source_rgb( pCairo, 1, 0, 0 )
      cairo_move_to( pCairo, 10, 200 )
      cairo_show_text( pCairo, "Hello! - Harbour development" )

      cairo_set_source_rgb( pCairo, 0, 0, 1 )
      cairo_move_to( pCairo, 10, 240 )
      cairo_show_text( pCairo, "https://github.com/dev-harbour" )
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

STATIC PROCEDURE key_callback( pWindows, key, scancode, action, mods )

   UNUSED( scancode )
   UNUSED( mods )

   IF key == GLFW_KEY_ESCAPE .AND. action == GLFW_PRESS
      glfwSetWindowShouldClose( pWindows, GLFW_TRUE )
   ENDIF

   RETURN