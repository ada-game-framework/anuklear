package body SDL.Nuklear.Renderer is
   function Get_Internal_Window (Self : in SDL.Video.Windows.Window) return SDL.C_Pointers.Windows_Pointer with
     Import     => True,
     Convention => Ada;

   function Get_Internal_Renderer (Self : in SDL.Video.Renderers.Renderer) return SDL.C_Pointers.Renderer_Pointer with
     Import     => True,
     Convention => Ada;

   function Initialise
     (Window   : SDL.Video.Windows.Window;
      Renderer : SDL.Video.Renderers.Renderer) return access nk_context is
   begin
      return sdl_init (Get_Internal_Window (Window), Get_Internal_Renderer (Renderer));
   end Initialise;
end SDL.Nuklear.Renderer;
