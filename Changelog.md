[//]: # ( All notable changes to this project will be documented in this file. )
[//]: # ( Encoding: UTF-8 No BOM )
[//]: # ( ## 2022-01-26   ### Changed   ### Fixed   ### Added   ### Removed   ### Update )
[//]: # ( Entries may not always be in chronological/commit order. )
[//]: # ( Others according to Markdown specifications. )

# Changelog hb-cairo

## 2022-01-30

### Update

   - hb-cairo/include/hbcairo.ch
   - hb-cairo/src/cairo.c


### Added

   - cairo_font_extents()

### Fixed

   - cairo_text_extents()

## 2022-01-30

### Update

   - hb-cairo/include/hbcairo.ch
   - hb-cairo/src/cairo.c
   - hb-cairo/examples/example_00.prg

### Added

   - cairo_text_extents()
      > The function returns an array
   - cairo_new_sub_path()
   - cairo_line_to()
   - cairo_curve_to()
   - cairo_arc()
   - cairo_arc_negative()
   - cairo_rel_move_to()
   - cairo_rel_line_to()
   - cairo_rel_curve_to()
   - cairo_rectangle()
   - cairo_close_path()
   - cairo_path_extents()
   - cairo_fill()
   - cairo_fill_preserve()
   - cairo_in_fill()
   - cairo_fill_extents()
   - cairo_get_fill_rule()
   - cairo_stroke()
   - cairo_set_line_width()

## 2022-01-26

### Added

   - Initial commit

### Added

   - hb-cairo/examples/example_00.prg
   - hb-cairo/examples/hbmk.hbm
   - hb-cairo/examples/README.md
   - hb-cairo/include/hbcairo.ch
   - hb-cairo/include/hbcairo.h
   - hb-cairo/src/cairo.c
   - hb-cairo/src/cairo-xlib.c
   - GitHub/hb-cairo/Changelog.md
   - GitHub/hb-cairo/hbcairo.hbc
   - GitHub/hb-cairo/hbcairo.hbp
   - GitHub/hb-cairo/README.md
   - GitHub/hb-cairo/.gitignore