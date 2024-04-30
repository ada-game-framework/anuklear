#!/bin/bash

DEFINES="-DNK_INCLUDE_FIXED_TYPES=1 -DNK_INCLUDE_STANDARD_BOOL=1 \
     -DNK_INCLUDE_STANDARD_IO=1 -DNK_INCLUDE_DEFAULT_ALLOCATOR=1 \
     -DNK_INCLUDE_VERTEX_BUFFER_OUTPUT=1 -DNK_INCLUDE_FONT_BAKING=1 \
     -DNK_INCLUDE_DEFAULT_FONT=1 -DNK_UINT_DRAW_INDEX=1 \
     -DNK_ZERO_COMMAND_MEMORY=1"
# TODO:
# #define NK_INCLUDE_COMMAND_USERDATA 1

gcc -fdump-ada-spec-slim -C -c ${DEFINES} ./Nuklear/nuklear.h

sed -i 's/with bits_stdint_intn_h;//' nuklear_h.ads
sed -i 's/bits_stdint_intn_h.int8_t;/Interfaces.Integer_8;/' nuklear_h.ads
sed -i 's/bits_stdint_intn_h.int16_t;/Interfaces.Integer_16;/' nuklear_h.ads
sed -i 's/bits_stdint_intn_h.int32_t;/Interfaces.Integer_32;/' nuklear_h.ads

sed -i 's/with bits_stdint_uintn_h;//' nuklear_h.ads
sed -i 's/bits_stdint_uintn_h.uint8_t;/Interfaces.Unsigned_8;/' nuklear_h.ads
sed -i 's/bits_stdint_uintn_h.uint16_t;/Interfaces.Unsigned_16;/' nuklear_h.ads
sed -i 's/bits_stdint_uintn_h.uint32_t;/Interfaces.Unsigned_32;/' nuklear_h.ads

sed -i 's/subtype nk_size is stdint_h.uintptr_t;/subtype nk_size is unsigned;/' nuklear_h.ads
sed -i 's/subtype nk_ptr is stdint_h.uintptr_t;/subtype nk_ptr is unsigned;/' nuklear_h.ads

sed -i 's/with stdint_h;//' nuklear_h.ads

sed -i 's/subtype nk_bool is int/subtype nk_bool is c_bool/' nuklear_h.ads
# sed -i 's/struct nk_/struct /' nuklear_h.ads
# sed -i 's/type nk_/type /' nuklear_h.ads
sed -i 's/NK_//' nuklear_h.ads
# sed -i 's/_f / /' nuklear_h.ads

sed -i 's/type nk_image is record/type nk_image_t is record/' nuklear_h.ads
sed -i 's/: nk_image/: nk_image_t/' nuklear_h.ads
sed -i 's/: access constant nk_image/: access constant nk_image_t/' nuklear_h.ads
sed -i 's/: aliased nk_image/: aliased nk_image_t/' nuklear_h.ads
sed -i 's/return nk_image/return nk_image_t/' nuklear_h.ads

sed -i 's/type nk_vec2 is record/type nk_vec2_t is record/' nuklear_h.ads
sed -i 's/: nk_vec2;/: nk_vec2_t;/' nuklear_h.ads
sed -i 's/: nk_vec2)/: nk_vec2_t)/' nuklear_h.ads
sed -i 's/: access nk_vec2;/: access nk_vec2_t;/' nuklear_h.ads
sed -i 's/: access constant nk_vec2;/: access constant nk_vec2_t;/' nuklear_h.ads
sed -i 's/: aliased nk_vec2;/: aliased nk_vec2_t;/' nuklear_h.ads
sed -i 's/of aliased nk_vec2;/of aliased nk_vec2_t;/' nuklear_h.ads
sed -i 's/return nk_vec2 /return nk_vec2_t /' nuklear_h.ads

sed -i 's/type nk_vec2i is record/type nk_vec2i_t is record/' nuklear_h.ads
sed -i 's/: nk_vec2i;/: nk_vec2i_t;/' nuklear_h.ads
sed -i 's/: aliased nk_vec2i;/: aliased nk_vec2i_t;/' nuklear_h.ads
sed -i 's/of aliased nk_vec2i;/of aliased nk_vec2i_t;/' nuklear_h.ads

sed -i 's/type nk_rect is record/type nk_rect_t is record/' nuklear_h.ads
sed -i 's/: nk_rect;/: nk_rect_t;/' nuklear_h.ads
sed -i 's/: nk_rect)/: nk_rect_t)/' nuklear_h.ads
sed -i 's/: access nk_rect;/: access nk_rect_t;/' nuklear_h.ads
sed -i 's/: aliased nk_rect;/: aliased nk_rect_t;/' nuklear_h.ads
sed -i 's/return nk_rect /return nk_rect_t /' nuklear_h.ads

sed -i 's/type nk_recti is record/type nk_recti_t is record/' nuklear_h.ads
sed -i 's/: nk_recti;/: nk_recti_t;/' nuklear_h.ads
sed -i 's/: aliased nk_recti;/: aliased nk_recti_t;/' nuklear_h.ads

sed -i 's/function nk_begin/function start/' nuklear_h.ads
sed -i 's/procedure nk_end/procedure finish/' nuklear_h.ads

sed -i 's/nk_panel_flags_//g' nuklear_h.ads

# sed -i 's/nk_//' nuklear_h.ads

sed -i 's/function nk_/function /' nuklear_h.ads
sed -i 's/procedure nk_/procedure /' nuklear_h.ads

sed -i 's/: Interfaces.C.Strings.chars_ptr;/: Interfaces.C.char_array;/' nuklear_h.ads
sed -i 's/: Interfaces.C.Strings.chars_ptr)/: Interfaces.C.char_array)/' nuklear_h.ads

sed -i '/-- some language glyph codepoint ranges/i \
    type font_atlas_access is access all nk_font_atlas; \
    ' nuklear_h.ads

sed -i 's/nuklear_h/Nuklear/' nuklear_h.ads

mv nuklear_h.ads src/nuklear.ads

## Renderer

gcc -fdump-ada-spec-slim -C -c ./Nuklear/demo/sdl_renderer/nuklear_sdl_renderer.h

# sed -i 's/ use Interfaces.C;//' nuklear_sdl_renderer_h.ads

sed -i '/package nuklear_sdl_renderer_h is/i \
with SDL.C_Pointers; \
with SDL.Video.Windows; \
with SDL.Video.Renderers; \
with SDL.Events.Events; \
with Nuklear; use Nuklear; \
    ' nuklear_sdl_renderer_h.ads

sed -i '/type nk_context/d ' nuklear_sdl_renderer_h.ads
sed -i '/type nk_anti_aliasing/d ' nuklear_sdl_renderer_h.ads

sed -i 's/access SDL2_SDL_video_h.SDL_Window;/SDL.C_Pointers.Windows_Pointer;/' nuklear_sdl_renderer_h.ads
sed -i 's/access SDL2_SDL_render_h.SDL_Renderer)/SDL.C_Pointers.Renderer_Pointer)/' nuklear_sdl_renderer_h.ads
sed -i 's/access SDL2_SDL_events_h.SDL_Event)/in out SDL.Events.Events.Events)/' nuklear_sdl_renderer_h.ads
sed -i 's/atlas : System.Address)/atlas : access nk_font_atlas)/' nuklear_sdl_renderer_h.ads
sed -i 's/type nk_font_atlas;//' nuklear_sdl_renderer_h.ads

sed -i 's/limited with SDL2_SDL_video_h;//' nuklear_sdl_renderer_h.ads
sed -i 's/limited with SDL2_SDL_render_h;//' nuklear_sdl_renderer_h.ads
sed -i 's/limited with SDL2_SDL_events_h;//' nuklear_sdl_renderer_h.ads

sed -i 's/function nk_/function /' nuklear_sdl_renderer_h.ads
sed -i 's/procedure nk_/procedure /' nuklear_sdl_renderer_h.ads

sed -i 's/nuklear_sdl_renderer_h/SDL.Nuklear.Renderer/' nuklear_sdl_renderer_h.ads
sed -i 's/return int/return Interfaces.C.int/' nuklear_sdl_renderer_h.ads

sed -i 's/sdl_font_stash_begin (atlas : access nk_font_atlas)/sdl_font_stash_begin (atlas : access font_atlas_access)/' nuklear_sdl_renderer_h.ads

sed -i '/function sdl_init (/i \
   \
   function Initialise \
     (Window   : SDL.Video.Windows.Window; \
      Renderer : SDL.Video.Renderers.Renderer) return access nk_context; \
      ' nuklear_sdl_renderer_h.ads

mv nuklear_sdl_renderer_h.ads src/renderer/sdl2/sdl-nuklear-renderer.ads
