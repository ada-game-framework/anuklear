pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;


with System;


with SDL.C_Pointers;
with SDL.Video.Windows;
with SDL.Video.Renderers;
with SDL.Events.Events;
with Nuklear; use Nuklear;

package SDL.Nuklear.Renderer is

  -- * Nuklear - 4.9.4 - public domain
  --

  -- * ==============================================================
  -- *
  -- *                              API
  -- *
  -- * ===============================================================
  --



   function Initialise
     (Window   : SDL.Video.Windows.Window;
      Renderer : SDL.Video.Renderers.Renderer) return access nk_context;

   function sdl_init (win : SDL.C_Pointers.Windows_Pointer; renderer : SDL.C_Pointers.Renderer_Pointer) return access nk_context  -- ./Nuklear/demo/sdl_renderer/nuklear_sdl_renderer.h:15
   with Import => True,
        Convention => C,
        External_Name => "nk_sdl_init";


   procedure sdl_font_stash_begin (atlas : in out font_atlas_access)  -- ./Nuklear/demo/sdl_renderer/nuklear_sdl_renderer.h:16
   with Import => True,
        Convention => C,
        External_Name => "nk_sdl_font_stash_begin";

   procedure sdl_font_stash_end  -- ./Nuklear/demo/sdl_renderer/nuklear_sdl_renderer.h:17
   with Import => True,
        Convention => C,
        External_Name => "nk_sdl_font_stash_end";

   function sdl_handle_event (evt : in out SDL.Events.Events.Events) return Interfaces.C.int  -- ./Nuklear/demo/sdl_renderer/nuklear_sdl_renderer.h:18
   with Import => True,
        Convention => C,
        External_Name => "nk_sdl_handle_event";

   procedure sdl_render (arg1 : nk_anti_aliasing)  -- ./Nuklear/demo/sdl_renderer/nuklear_sdl_renderer.h:19
   with Import => True,
        Convention => C,
        External_Name => "nk_sdl_render";

   procedure sdl_shutdown  -- ./Nuklear/demo/sdl_renderer/nuklear_sdl_renderer.h:20
   with Import => True,
        Convention => C,
        External_Name => "nk_sdl_shutdown";

  -- Metal API does not support cliprects with negative coordinates or large
  -- * dimensions. The issue is fixed in SDL2 with version 2.0.22 but until
  -- * that version is released, the NK_SDL_CLAMP_CLIP_RECT flag can be used to
  -- * ensure the cliprect is itself clipped to the viewport.
  -- * See discussion at https://discourse.libsdl.org/t/rendergeometryraw-producing-different-results-in-metal-vs-opengl/34953
  --

  -- * ==============================================================
  -- *
  -- *                          IMPLEMENTATION
  -- *
  -- * ===============================================================
  --

  -- setup global state
  -- convert from command queue into draw list and draw to screen
  -- fill converting configuration
  -- convert shapes into vertexes
  -- iterate over and execute each draw command
  -- warn for cases where NK_SDL_CLAMP_CLIP_RECT should have been set but isn't
  -- optional grabbing behavior
  -- KEYUP & KEYDOWN share same routine
  -- RSHIFT & LSHIFT share same routine
  -- MOUSEBUTTONUP & MOUSEBUTTONDOWN share same routine
  -- glDeleteTextures(1, &dev->font_tex);
end SDL.Nuklear.Renderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
