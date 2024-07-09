// This file defines the implementation of the Nuklear library which we will bind to.

#define NK_INCLUDE_FIXED_TYPES
#define NK_INCLUDE_STANDARD_BOOL
#define NK_INCLUDE_STANDARD_IO
#define NK_INCLUDE_DEFAULT_ALLOCATOR
#define NK_INCLUDE_VERTEX_BUFFER_OUTPUT
#define NK_INCLUDE_FONT_BAKING
#define NK_INCLUDE_DEFAULT_FONT
#define NK_ZERO_COMMAND_MEMORY
// #define NK_UINT_DRAW_INDEX
// #define NK_BUTTON_TRIGGER_ON_RELEASE

// TODO: ?
// #define NK_INCLUDE_COMMAND_USERDATA

#define NK_IMPLEMENTATION
#include "../include/nuklear.h"

#if defined(RENDER_SDL)

#define NK_SDL_RENDERER_IMPLEMENTATION
#include "../include/nuklear_sdl_renderer.h"

#endif
