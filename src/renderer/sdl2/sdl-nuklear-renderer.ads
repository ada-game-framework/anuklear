with Interfaces.C; use Interfaces.C;
with SDL.C_Pointers;
with SDL.Video.Windows;
with SDL.Video.Renderers;
with SDL.Events.Events;
with Nuklear; use Nuklear;

package SDL.Nuklear.Renderer is
   function Initialise
     (Window   : SDL.Video.Windows.Window;
      Renderer : SDL.Video.Renderers.Renderer) return access nk_context;


   --  NK_API struct nk_context* nk_sdl_init(SDL_Window *win, SDL_Renderer *renderer);
   function sdl_init (win      : SDL.C_Pointers.Windows_Pointer;
                      renderer : SDL.C_Pointers.Renderer_Pointer) return access nk_context
   with Import => True,
        Convention => C,
        External_Name => "nk_sdl_init";


   --  NK_API void nk_sdl_font_stash_begin(struct nk_font_atlas **atlas);
   procedure sdl_font_stash_begin (atlas : in out font_atlas_access)
   with Import => True,
        Convention => C,
        External_Name => "nk_sdl_font_stash_begin";


   --  NK_API void nk_sdl_font_stash_end(void);
   procedure sdl_font_stash_end  -- ./include/nuklear_sdl_renderer.h:17
   with Import => True,
        Convention => C,
        External_Name => "nk_sdl_font_stash_end";


   --  NK_API int nk_sdl_handle_event(SDL_Event *evt);
   function sdl_handle_event (evt : in out SDL.Events.Events.Events) return Interfaces.C.int
   with Import => True,
        Convention => C,
        External_Name => "nk_sdl_handle_event";


   --  NK_API void nk_sdl_render(enum nk_anti_aliasing);
   procedure sdl_render (arg1 : nk_anti_aliasing)
   with Import => True,
        Convention => C,
        External_Name => "nk_sdl_render";


   --  NK_API void nk_sdl_shutdown(void);
   procedure sdl_shutdown
   with Import => True,
        Convention => C,
        External_Name => "nk_sdl_shutdown";


   --  NK_API void nk_sdl_handle_grab(void);
   procedure sdl_handle_grab
   with Import => True,
        Convention => C,
        External_Name => "nk_sdl_handle_grab";
end SDL.Nuklear.Renderer;
