pragma Ada_2012;

pragma Style_Checks (Off);
pragma Warnings (Off, "-gnatwu");

with Interfaces.C; use Interfaces.C;



with Interfaces.C.Extensions;
with System;
with Interfaces.C.Strings;

package Nuklear is

   UNDEFINED : constant := (-1.0);  --  ./Nuklear/nuklear.h:236

   UTF_SIZE : constant := 4;  --  ./Nuklear/nuklear.h:238

   INPUT_MAX : constant := 16;  --  ./Nuklear/nuklear.h:240

   MAX_NUMBER_BUFFER : constant := 64;  --  ./Nuklear/nuklear.h:243

   SCROLLBAR_HIDING_TIMEOUT : constant := 4.0;  --  ./Nuklear/nuklear.h:246
   --  unsupported macro: API extern
   --  unsupported macro: LIB static
   --  unsupported macro: INTERN static
   --  unsupported macro: STORAGE static
   --  unsupported macro: GLOBAL static
   --  arg-macro: function FLAG (x)
   --    return 2 ** (x);
   --  unsupported macro: STRINGIFY(x) #x
   --  arg-macro: procedure MACRO_STRINGIFY (x)
   --    STRINGIFY(x)
   --  unsupported macro: STRING_JOIN_IMMEDIATE(arg1,arg2) arg1 ## arg2
   --  arg-macro: procedure STRING_JOIN_DELAY (arg1, arg2)
   --    STRING_JOIN_IMMEDIATE(arg1, arg2)
   --  arg-macro: procedure STRING_JOIN (arg1, arg2)
   --    STRING_JOIN_DELAY(arg1, arg2)
   --  arg-macro: procedure UNIQUE_NAME (name)
   --    STRING_JOIN(name,__LINE__)
   --  arg-macro: procedure STATIC_ASSERT (exp)
   --    typedef char UNIQUE_NAME(_dummy_array)((exp)?1:-1)
   --  unsupported macro: FILE_LINE __FILE__ ":" NK_MACRO_STRINGIFY(__LINE__)
   --  arg-macro: function MIN (a, b)
   --    return (a) < (b) ? (a) : (b);
   --  arg-macro: function MAX (a, b)
   --    return (a) < (b) ? (b) : (a);
   --  arg-macro: function CLAMP (i, v, x)
   --    return MAX(NK_MIN(v,x), i);
   --  unsupported macro: INT8 int8_t
   --  unsupported macro: UINT8 uint8_t
   --  unsupported macro: INT16 int16_t
   --  unsupported macro: UINT16 uint16_t
   --  unsupported macro: INT32 int32_t
   --  unsupported macro: UINT32 uint32_t
   --  unsupported macro: SIZE_TYPE uintptr_t
   --  unsupported macro: POINTER_TYPE uintptr_t
   --  unsupported macro: BOOL bool
   --  arg-macro: procedure foreach (c, ctx)
   --    for((c) := nk__begin(ctx); (c) /= 0; (c) := nk__next(ctx,c))
   --  arg-macro: procedure draw_foreach (cmd, ctx, b)
   --    for((cmd):=nk__draw_begin(ctx, b); (cmd)/=0; (cmd):=nk__draw_next(cmd, b, ctx))
   --  arg-macro: procedure tree_push (ctx, type, title, state)
   --    nk_tree_push_hashed(ctx, type, title, state, FILE_LINE,nk_strlen(NK_FILE_LINE),__LINE__)
   --  arg-macro: procedure tree_push_id (ctx, type, title, state, id)
   --    nk_tree_push_hashed(ctx, type, title, state, FILE_LINE,nk_strlen(NK_FILE_LINE),id)
   --  arg-macro: procedure tree_image_push (ctx, type, img, title, state)
   --    nk_tree_image_push_hashed(ctx, type, img, title, state, FILE_LINE,nk_strlen(NK_FILE_LINE),__LINE__)
   --  arg-macro: procedure tree_image_push_id (ctx, type, img, title, state, id)
   --    nk_tree_image_push_hashed(ctx, type, img, title, state, FILE_LINE,nk_strlen(NK_FILE_LINE),id)
   --  arg-macro: procedure tree_element_push (ctx, type, title, state, sel)
   --    nk_tree_element_push_hashed(ctx, type, title, state, sel, FILE_LINE,nk_strlen(NK_FILE_LINE),__LINE__)
   --  arg-macro: procedure tree_element_push_id (ctx, type, title, state, sel, id)
   --    nk_tree_element_push_hashed(ctx, type, title, state, sel, FILE_LINE,nk_strlen(NK_FILE_LINE),id)

   WIDGET_DISABLED_FACTOR : constant := 0.5;  --  ./Nuklear/nuklear.h:3635
   --  unsupported macro: STRTOD nk_strtod

   TEXTEDIT_UNDOSTATECOUNT : constant := 99;  --  ./Nuklear/nuklear.h:4339

   TEXTEDIT_UNDOCHARCOUNT : constant := 999;  --  ./Nuklear/nuklear.h:4343
   --  unsupported macro: VERTEX_LAYOUT_END NK_VERTEX_ATTRIBUTE_COUNT,NK_FORMAT_COUNT,0
   --  arg-macro: procedure draw_list_foreach (cmd, can, b)
   --    for((cmd):=nk__draw_list_begin(can, b); (cmd)/=0; (cmd):=nk__draw_list_next(cmd, b, can))

   MAX_LAYOUT_ROW_TEMPLATE_COLUMNS : constant := 16;  --  ./Nuklear/nuklear.h:5383

   CHART_MAX_SLOT : constant := 4;  --  ./Nuklear/nuklear.h:5386

   WINDOW_MAX_NAME : constant := 64;  --  ./Nuklear/nuklear.h:5485

   BUTTON_BEHAVIOR_STACK_SIZE : constant := 8;  --  ./Nuklear/nuklear.h:5600

   FONT_STACK_SIZE : constant := 8;  --  ./Nuklear/nuklear.h:5604

   STYLE_ITEM_STACK_SIZE : constant := 16;  --  ./Nuklear/nuklear.h:5608

   FLOAT_STACK_SIZE : constant := 32;  --  ./Nuklear/nuklear.h:5612

   VECTOR_STACK_SIZE : constant := 16;  --  ./Nuklear/nuklear.h:5616

   FLAGS_STACK_SIZE : constant := 32;  --  ./Nuklear/nuklear.h:5620

   COLOR_STACK_SIZE : constant := 32;  --  ./Nuklear/nuklear.h:5624
   --  unsupported macro: CONFIGURATION_STACK_TYPE(prefix,name,type) struct nk_config_stack_ ##name ##_element { prefix ##_ ##type *address; prefix ##_ ##type old_value; }
   --  unsupported macro: CONFIG_STACK(type,size) struct nk_config_stack_ ##type { int head; struct nk_config_stack_ ##type ##_element elements[size]; }
   --  unsupported macro: nk_float float
   --  unsupported macro: VALUE_PAGE_CAPACITY (((NK_MAX(sizeof(struct nk_window),sizeof(struct nk_panel)) / sizeof(nk_uint))) / 2)

   PI : constant := 3.141592654;  --  ./Nuklear/nuklear.h:5752
   UTF_INVALID : constant := 16#FFFD#;  --  ./Nuklear/nuklear.h:5753
   MAX_FLOAT_PRECISION : constant := 2;  --  ./Nuklear/nuklear.h:5754
   --  arg-macro: function UNUSED (x)
   --    return (void)(x);
   --  arg-macro: function SATURATE (x)
   --    return MAX(0, NK_MIN(1.0, x));
   --  arg-macro: function LEN (a)
   --    return sizeof(a)/sizeof(a)(0);
   --  arg-macro: function ABS (a)
   --    return ((a) < 0) ? -(a) : (a);
   --  arg-macro: function BETWEEN (x, a, b)
   --    return (a) <= (x)  and then  (x) < (b);
   --  arg-macro: function INBOX (px, py, x, y, w, h)
   --    return BETWEEN(px,x,x+w)  and then  NK_BETWEEN(py,y,y+h);
   --  arg-macro: function INTERSECT (x0, y0, w0, h0, x1, y1, w1, h1)
   --    return (x1 < (x0 + w0))  and then  (x0 < (x1 + w1))  and then  (y1 < (y0 + h0))  and then  (y0 < (y1 + h1));
   --  arg-macro: function CONTAINS (x, y, w, h, bx, by, bw, bh)
   --    return INBOX(x,y, bx, by, bw, bh)  and then  NK_INBOX(x+w,y+h, bx, by, bw, bh);
   --  arg-macro: procedure vec2_sub (a, b)
   --    nk_vec2((a).x - (b).x, (a).y - (b).y)
   --  arg-macro: procedure vec2_add (a, b)
   --    nk_vec2((a).x + (b).x, (a).y + (b).y)
   --  arg-macro: function vec2_len_sqr (a)
   --    return (a).x*(a).x+(a).y*(a).y;
   --  arg-macro: procedure vec2_muls (a, t)
   --    nk_vec2((a).x * (t), (a).y * (t))
   --  arg-macro: function ptr_add (t, p, i)
   --    return (t*)((void*)((nk_byte*)(p) + (i)));
   --  arg-macro: function ptr_add_const (t, p, i)
   --    return (const t*)((const void*)((const nk_byte*)(p) + (i)));
   --  arg-macro: procedure zero_struct (s)
   --    nk_zero(ands, sizeof(s))
   --  arg-macro: function UINT_TO_PTR (x)
   --    return (void*)(__PTRDIFF_TYPE__)(x);
   --  arg-macro: function PTR_TO_UINT (x)
   --    return (nk_size)(__PTRDIFF_TYPE__)(x);
   --  arg-macro: function ALIGN_PTR (x, mask)
   --    return UINT_TO_PTR((NK_PTR_TO_UINT((nk_byte*)(x) + (mask-1)) and ~(mask-1)));
   --  arg-macro: function ALIGN_PTR_BACK (x, mask)
   --    return UINT_TO_PTR((NK_PTR_TO_UINT((nk_byte*)(x)) and ~(mask-1)));
   --  arg-macro: function OFFSETOF (st, m)
   --    return __builtin_offsetof(st,m);
   --  arg-macro: procedure ALIGNOF (t)
   --    OFFSETOF(struct {char c; t _h;}, _h)
   --  arg-macro: function CONTAINER_OF (ptr, type, member)
   --    return type*)((void*)((char*)(1 ? (ptr): and((type*)0).member) - OFFSETOF(type, member));

  --/// # Nuklear
  --/// ![](https://cloud.githubusercontent.com/assets/8057201/11761525/ae06f0ca-a0c6-11e5-819d-5610b25f6ef4.gif)
  --///
  --/// ## Contents
  --/// 1. About section
  --/// 2. Highlights section
  --/// 3. Features section
  --/// 4. Usage section
  --///     1. Flags section
  --///     2. Constants section
  --///     3. Dependencies section
  --/// 5. Example section
  --/// 6. API section
  --///     1. Context section
  --///     2. Input section
  --///     3. Drawing section
  --///     4. Window section
  --///     5. Layouting section
  --///     6. Groups section
  --///     7. Tree section
  --///     8. Properties section
  --/// 7. License section
  --/// 8. Changelog section
  --/// 9. Gallery section
  --/// 10. Credits section
  --///
  --/// ## About
  --/// This is a minimal state immediate mode graphical user interface toolkit
  --/// written in ANSI C and licensed under public domain. It was designed as a simple
  --/// embeddable user interface for application and does not have any dependencies,
  --/// a default renderbackend or OS window and input handling but instead provides a very modular
  --/// library approach by using simple input state for input and draw
  --/// commands describing primitive shapes as output. So instead of providing a
  --/// layered library that tries to abstract over a number of platform and
  --/// render backends it only focuses on the actual UI.
  --///
  --/// ## Highlights
  --/// - Graphical user interface toolkit
  --/// - Single header library
  --/// - Written in C89 (a.k.a. ANSI C or ISO C90)
  --/// - Small codebase (~18kLOC)
  --/// - Focus on portability, efficiency and simplicity
  --/// - No dependencies (not even the standard library if not wanted)
  --/// - Fully skinnable and customizable
  --/// - Low memory footprint with total memory control if needed or wanted
  --/// - UTF-8 support
  --/// - No global or hidden state
  --/// - Customizable library modules (you can compile and use only what you need)
  --/// - Optional font baker and vertex buffer output
  --/// - [Code available on github](https://github.com/Immediate-Mode-UI/Nuklear/)
  --///
  --/// ## Features
  --/// - Absolutely no platform dependent code
  --/// - Memory management control ranging from/to
  --///     - Ease of use by allocating everything from standard library
  --///     - Control every byte of memory inside the library
  --/// - Font handling control ranging from/to
  --///     - Use your own font implementation for everything
  --///     - Use this libraries internal font baking and handling API
  --/// - Drawing output control ranging from/to
  --///     - Simple shapes for more high level APIs which already have drawing capabilities
  --///     - Hardware accessible anti-aliased vertex buffer output
  --/// - Customizable colors and properties ranging from/to
  --///     - Simple changes to color by filling a simple color table
  --///     - Complete control with ability to use skinning to decorate widgets
  --/// - Bendable UI library with widget ranging from/to
  --///     - Basic widgets like buttons, checkboxes, slider, ...
  --///     - Advanced widget like abstract comboboxes, contextual menus,...
  --/// - Compile time configuration to only compile what you need
  --///     - Subset which can be used if you do not want to link or use the standard library
  --/// - Can be easily modified to only update on user input instead of frame updates
  --///
  --/// ## Usage
  --/// This library is self contained in one single header file and can be used either
  --/// in header only mode or in implementation mode. The header only mode is used
  --/// by default when included and allows including this header in other headers
  --/// and does not contain the actual implementation. <br /><br />
  --///
  --/// The implementation mode requires to define  the preprocessor macro
  --/// IMPLEMENTATION in *one* .c/.cpp file before #including this file, e.g.:
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~C
  --///     #define IMPLEMENTATION
  --///     #include "nuklear.h"
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Also optionally define the symbols listed in the section "OPTIONAL DEFINES"
  --/// below in header and implementation mode if you want to use additional functionality
  --/// or need more control over the library.
  --///
  --/// !!! WARNING
  --///     Every time nuklear is included define the same compiler flags. This very important not doing so could lead to compiler errors or even worse stack corruptions.
  --///
  --/// ### Flags
  --/// Flag                            | Description
  --/// --------------------------------|------------------------------------------
  --/// PRIVATE                      | If defined declares all functions as static, so they can only be accessed inside the file that contains the implementation
  --/// INCLUDE_FIXED_TYPES          | If defined it will include header `<stdint.h>` for fixed sized types otherwise nuklear tries to select the correct type. If that fails it will throw a compiler error and you have to select the correct types yourself.
  --/// INCLUDE_DEFAULT_ALLOCATOR    | If defined it will include header `<stdlib.h>` and provide additional functions to use this library without caring for memory allocation control and therefore ease memory management.
  --/// INCLUDE_STANDARD_IO          | If defined it will include header `<stdio.h>` and provide additional functions depending on file loading.
  --/// INCLUDE_STANDARD_VARARGS     | If defined it will include header <stdarg.h> and provide additional functions depending on file loading.
  --/// INCLUDE_STANDARD_BOOL        | If defined it will include header `<stdbool.h>` for nk_bool otherwise nuklear defines nk_bool as int.
  --/// INCLUDE_VERTEX_BUFFER_OUTPUT | Defining this adds a vertex draw command list backend to this library, which allows you to convert queue commands into vertex draw commands. This is mainly if you need a hardware accessible format for OpenGL, DirectX, Vulkan, Metal,...
  --/// INCLUDE_FONT_BAKING          | Defining this adds `stb_truetype` and `stb_rect_pack` implementation to this library and provides font baking and rendering. If you already have font handling or do not want to use this font handler you don't have to define it.
  --/// INCLUDE_DEFAULT_FONT         | Defining this adds the default font: ProggyClean.ttf into this library which can be loaded into a font atlas and allows using this library without having a truetype font
  --/// INCLUDE_COMMAND_USERDATA     | Defining this adds a userdata pointer into each command. Can be useful for example if you want to provide custom shaders depending on the used widget. Can be combined with the style structures.
  --/// BUTTON_TRIGGER_ON_RELEASE    | Different platforms require button clicks occurring either on buttons being pressed (up to down) or released (down to up). By default this library will react on buttons being pressed, but if you define this it will only trigger if a button is released.
  --/// ZERO_COMMAND_MEMORY          | Defining this will zero out memory for each drawing command added to a drawing queue (inside nk_command_buffer_push). Zeroing command memory is very useful for fast checking (using memcmp) if command buffers are equal and avoid drawing frames when nothing on screen has changed since previous frame.
  --/// UINT_DRAW_INDEX              | Defining this will set the size of vertex index elements when using NK_VERTEX_BUFFER_OUTPUT to 32bit instead of the default of 16bit
  --/// KEYSTATE_BASED_INPUT         | Define this if your backend uses key state for each frame rather than key press/release events
  --///
  --/// !!! WARNING
  --///     The following flags will pull in the standard C library:
  --///     - INCLUDE_DEFAULT_ALLOCATOR
  --///     - INCLUDE_STANDARD_IO
  --///     - INCLUDE_STANDARD_VARARGS
  --///
  --/// !!! WARNING
  --///     The following flags if defined need to be defined for both header and implementation:
  --///     - INCLUDE_FIXED_TYPES
  --///     - INCLUDE_DEFAULT_ALLOCATOR
  --///     - INCLUDE_STANDARD_VARARGS
  --///     - INCLUDE_STANDARD_BOOL
  --///     - INCLUDE_VERTEX_BUFFER_OUTPUT
  --///     - INCLUDE_FONT_BAKING
  --///     - INCLUDE_DEFAULT_FONT
  --///     - INCLUDE_STANDARD_VARARGS
  --///     - INCLUDE_COMMAND_USERDATA
  --///     - UINT_DRAW_INDEX
  --///
  --/// ### Constants
  --/// Define                          | Description
  --/// --------------------------------|---------------------------------------
  --/// BUFFER_DEFAULT_INITIAL_SIZE  | Initial buffer size allocated by all buffers while using the default allocator functions included by defining NK_INCLUDE_DEFAULT_ALLOCATOR. If you don't want to allocate the default 4k memory then redefine it.
  --/// MAX_NUMBER_BUFFER            | Maximum buffer size for the conversion buffer between float and string Under normal circumstances this should be more than sufficient.
  --/// INPUT_MAX                    | Defines the max number of bytes which can be added as text input in one frame. Under normal circumstances this should be more than sufficient.
  --///
  --/// !!! WARNING
  --///     The following constants if defined need to be defined for both header and implementation:
  --///     - MAX_NUMBER_BUFFER
  --///     - BUFFER_DEFAULT_INITIAL_SIZE
  --///     - INPUT_MAX
  --///
  --/// ### Dependencies
  --/// Function    | Description
  --/// ------------|---------------------------------------------------------------
  --/// ASSERT   | If you don't define this, nuklear will use <assert.h> with assert().
  --/// MEMSET   | You can define this to 'memset' or your own memset implementation replacement. If not nuklear will use its own version.
  --/// MEMCPY   | You can define this to 'memcpy' or your own memcpy implementation replacement. If not nuklear will use its own version.
  --/// INV_SQRT | You can define this to your own inverse sqrt implementation replacement. If not nuklear will use its own slow and not highly accurate version.
  --/// SIN      | You can define this to 'sinf' or your own sine implementation replacement. If not nuklear will use its own approximation implementation.
  --/// COS      | You can define this to 'cosf' or your own cosine implementation replacement. If not nuklear will use its own approximation implementation.
  --/// STRTOD   | You can define this to `strtod` or your own string to double conversion implementation replacement. If not defined nuklear will use its own imprecise and possibly unsafe version (does not handle nan or infinity!).
  --/// DTOA     | You can define this to `dtoa` or your own double to string conversion implementation replacement. If not defined nuklear will use its own imprecise and possibly unsafe version (does not handle nan or infinity!).
  --/// VSNPRINTF| If you define `NK_INCLUDE_STANDARD_VARARGS` as well as `NK_INCLUDE_STANDARD_IO` and want to be safe define this to `vsnprintf` on compilers supporting later versions of C or C++. By default nuklear will check for your stdlib version in C as well as compiler version in C++. if `vsnprintf` is available it will define it to `vsnprintf` directly. If not defined and if you have older versions of C or C++ it will be defined to `vsprintf` which is unsafe.
  --///
  --/// !!! WARNING
  --///     The following dependencies will pull in the standard C library if not redefined:
  --///     - ASSERT
  --///
  --/// !!! WARNING
  --///     The following dependencies if defined need to be defined for both header and implementation:
  --///     - ASSERT
  --///
  --/// !!! WARNING
  --///     The following dependencies if defined need to be defined only for the implementation part:
  --///     - MEMSET
  --///     - MEMCPY
  --///     - SQRT
  --///     - SIN
  --///     - COS
  --///     - STRTOD
  --///     - DTOA
  --///     - VSNPRINTF
  --///
  --/// ## Example
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// // init gui state
  --/// enum {EASY, HARD};
  --/// static int op = EASY;
  --/// static float value = 0.6f;
  --/// static int i =  20;
  --/// struct nk_context ctx;
  --///
  --/// nk_init_fixed(&ctx, calloc(1, MAX_MEMORY), MAX_MEMORY, &font);
  --/// if (nk_begin(&ctx, "Show", nk_rect(50, 50, 220, 220),
  --///     WINDOW_BORDER|NK_WINDOW_MOVABLE|NK_WINDOW_CLOSABLE)) {
  --///     // fixed widget pixel width
  --///     nk_layout_row_static(&ctx, 30, 80, 1);
  --///     if (nk_button_label(&ctx, "button")) {
  --///         // event handling
  --///     }
  --///
  --///     // fixed widget window ratio width
  --///     nk_layout_row_dynamic(&ctx, 30, 2);
  --///     if (nk_option_label(&ctx, "easy", op == EASY)) op = EASY;
  --///     if (nk_option_label(&ctx, "hard", op == HARD)) op = HARD;
  --///
  --///     // custom widget pixel width
  --///     nk_layout_row_begin(&ctx, STATIC, 30, 2);
  --///     {
  --///         nk_layout_row_push(&ctx, 50);
  --///         nk_label(&ctx, "Volume:", TEXT_LEFT);
  --///         nk_layout_row_push(&ctx, 110);
  --///         nk_slider_float(&ctx, 0, &value, 1.0f, 0.1f);
  --///     }
  --///     nk_layout_row_end(&ctx);
  --/// }
  --/// nk_end(&ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// ![](https://cloud.githubusercontent.com/assets/8057201/10187981/584ecd68-675c-11e5-897c-822ef534a876.png)
  --///
  --/// ## API
  --///
  --

  -- * ==============================================================
  -- *
  -- *                          CONSTANTS
  -- *
  -- * ===============================================================
  --

  -- * ==============================================================
  -- *
  -- *                          HELPER
  -- *
  -- * ===============================================================
  --

  -- * ===============================================================
  -- *
  -- *                          BASIC
  -- *
  -- * ===============================================================
  --

   subtype nk_char is Interfaces.Integer_8;  -- ./Nuklear/nuklear.h:411

   subtype nk_uchar is Interfaces.Unsigned_8;  -- ./Nuklear/nuklear.h:412

   subtype nk_byte is Interfaces.Unsigned_8;  -- ./Nuklear/nuklear.h:413

   subtype nk_short is Interfaces.Integer_16;  -- ./Nuklear/nuklear.h:414

   subtype nk_ushort is Interfaces.Unsigned_16;  -- ./Nuklear/nuklear.h:415

   subtype nk_int is Interfaces.Integer_32;  -- ./Nuklear/nuklear.h:416

   subtype nk_uint is Interfaces.Unsigned_32;  -- ./Nuklear/nuklear.h:417

   subtype nk_size is unsigned;  -- ./Nuklear/nuklear.h:418

   subtype nk_ptr is unsigned;  -- ./Nuklear/nuklear.h:419

   subtype nk_bool is Extensions.bool;  -- ./Nuklear/nuklear.h:420

   subtype nk_hash is nk_uint;  -- ./Nuklear/nuklear.h:422

   subtype nk_flags is nk_uint;  -- ./Nuklear/nuklear.h:423

   subtype nk_rune is nk_uint;  -- ./Nuklear/nuklear.h:424

  -- Make sure correct type size:
  -- * This will fire with a negative subscript error if the type sizes
  -- * are set incorrectly by the compiler, and compile out if not

   subtype u_dummy_array429 is Interfaces.C.char_array (0 .. 0);  -- ./Nuklear/nuklear.h:429

   subtype u_dummy_array430 is Interfaces.C.char_array (0 .. 0);  -- ./Nuklear/nuklear.h:430

   subtype u_dummy_array431 is Interfaces.C.char_array (0 .. 0);  -- ./Nuklear/nuklear.h:431

   subtype u_dummy_array432 is Interfaces.C.char_array (0 .. 0);  -- ./Nuklear/nuklear.h:432

   subtype u_dummy_array433 is Interfaces.C.char_array (0 .. 0);  -- ./Nuklear/nuklear.h:433

   subtype u_dummy_array434 is Interfaces.C.char_array (0 .. 0);  -- ./Nuklear/nuklear.h:434

   subtype u_dummy_array435 is Interfaces.C.char_array (0 .. 0);  -- ./Nuklear/nuklear.h:435

   subtype u_dummy_array436 is Interfaces.C.char_array (0 .. 0);  -- ./Nuklear/nuklear.h:436

   subtype u_dummy_array437 is Interfaces.C.char_array (0 .. 0);  -- ./Nuklear/nuklear.h:437

   subtype u_dummy_array439 is Interfaces.C.char_array (0 .. 0);  -- ./Nuklear/nuklear.h:439

  -- ============================================================================
  -- *
  -- *                                  API
  -- *
  -- * ===========================================================================

   type nk_style_slide is null record;   -- incomplete struct

   type nk_color is record
      r : aliased nk_byte;  -- ./Nuklear/nuklear.h:476
      g : aliased nk_byte;  -- ./Nuklear/nuklear.h:476
      b : aliased nk_byte;  -- ./Nuklear/nuklear.h:476
      a : aliased nk_byte;  -- ./Nuklear/nuklear.h:476
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:476

   type nk_colorf is record
      r : aliased float;  -- ./Nuklear/nuklear.h:477
      g : aliased float;  -- ./Nuklear/nuklear.h:477
      b : aliased float;  -- ./Nuklear/nuklear.h:477
      a : aliased float;  -- ./Nuklear/nuklear.h:477
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:477

   type nk_vec2_t is record
      x : aliased float;  -- ./Nuklear/nuklear.h:478
      y : aliased float;  -- ./Nuklear/nuklear.h:478
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:478

   type nk_vec2i_t is record
      x : aliased short;  -- ./Nuklear/nuklear.h:479
      y : aliased short;  -- ./Nuklear/nuklear.h:479
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:479

   type nk_rect_t is record
      x : aliased float;  -- ./Nuklear/nuklear.h:480
      y : aliased float;  -- ./Nuklear/nuklear.h:480
      w : aliased float;  -- ./Nuklear/nuklear.h:480
      h : aliased float;  -- ./Nuklear/nuklear.h:480
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:480

   type nk_recti_t is record
      x : aliased short;  -- ./Nuklear/nuklear.h:481
      y : aliased short;  -- ./Nuklear/nuklear.h:481
      w : aliased short;  -- ./Nuklear/nuklear.h:481
      h : aliased short;  -- ./Nuklear/nuklear.h:481
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:481

   subtype nk_glyph is Interfaces.C.char_array (0 .. 3);  -- ./Nuklear/nuklear.h:482

   type nk_handle (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ptr : System.Address;  -- ./Nuklear/nuklear.h:483
         when others =>
            id : aliased int;  -- ./Nuklear/nuklear.h:483
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- ./Nuklear/nuklear.h:483

   type anon_array1129 is array (0 .. 3) of aliased nk_ushort;
   type nk_image_t is record
      handle : aliased nk_handle;  -- ./Nuklear/nuklear.h:484
      w : aliased nk_ushort;  -- ./Nuklear/nuklear.h:484
      h : aliased nk_ushort;  -- ./Nuklear/nuklear.h:484
      region : aliased anon_array1129;  -- ./Nuklear/nuklear.h:484
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:484

   type nk_nine_slice is record
      img : aliased nk_image_t;  -- ./Nuklear/nuklear.h:485
      l : aliased nk_ushort;  -- ./Nuklear/nuklear.h:485
      t : aliased nk_ushort;  -- ./Nuklear/nuklear.h:485
      r : aliased nk_ushort;  -- ./Nuklear/nuklear.h:485
      b : aliased nk_ushort;  -- ./Nuklear/nuklear.h:485
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:485

   type nk_cursor is record
      img : aliased nk_image_t;  -- ./Nuklear/nuklear.h:486
      size : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:486
      offset : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:486
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:486

   type nk_scroll is record
      x : aliased nk_uint;  -- ./Nuklear/nuklear.h:487
      y : aliased nk_uint;  -- ./Nuklear/nuklear.h:487
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:487

   type nk_heading is
     (UP,
      RIGHT,
      DOWN,
      LEFT)
   with Convention => C;  -- ./Nuklear/nuklear.h:489

   type nk_button_behavior is
     (BUTTON_DEFAULT,
      BUTTON_REPEATER)
   with Convention => C;  -- ./Nuklear/nuklear.h:490

   type nk_modify is
     (FIXED,
      MODIFIABLE)
   with Convention => C;  -- ./Nuklear/nuklear.h:491

   type nk_orientation is
     (VERTICAL,
      HORIZONTAL)
   with Convention => C;  -- ./Nuklear/nuklear.h:492

   type nk_collapse_states is
     (MINIMIZED,
      MAXIMIZED)
   with Convention => C;  -- ./Nuklear/nuklear.h:493

   type nk_show_states is
     (HIDDEN,
      SHOWN)
   with Convention => C;  -- ./Nuklear/nuklear.h:494

   type nk_chart_type is
     (CHART_LINES,
      CHART_COLUMN,
      CHART_MAX)
   with Convention => C;  -- ./Nuklear/nuklear.h:495

   subtype nk_chart_event is unsigned;
   nk_chart_event_CHART_HOVERING : constant nk_chart_event := 1;
   nk_chart_event_CHART_CLICKED : constant nk_chart_event := 2;  -- ./Nuklear/nuklear.h:496

   type nk_color_format is
     (RGB,
      RGBA)
   with Convention => C;  -- ./Nuklear/nuklear.h:497

   type nk_popup_type is
     (POPUP_STATIC,
      POPUP_DYNAMIC)
   with Convention => C;  -- ./Nuklear/nuklear.h:498

   type nk_layout_format is
     (DYNAMIC,
      STATIC)
   with Convention => C;  -- ./Nuklear/nuklear.h:499

   type nk_tree_type is
     (TREE_NODE,
      TREE_TAB)
   with Convention => C;  -- ./Nuklear/nuklear.h:500

   type nk_plugin_alloc is access function
        (arg1 : nk_handle;
         arg2 : System.Address;
         arg3 : nk_size) return System.Address
   with Convention => C;  -- ./Nuklear/nuklear.h:502

   type nk_plugin_free is access procedure (arg1 : nk_handle; arg2 : System.Address)
   with Convention => C;  -- ./Nuklear/nuklear.h:503

   type nk_text_edit;
   type nk_plugin_filter is access function (arg1 : access constant nk_text_edit; arg2 : nk_rune) return nk_bool
   with Convention => C;  -- ./Nuklear/nuklear.h:504

   type nk_plugin_paste is access procedure (arg1 : nk_handle; arg2 : access nk_text_edit)
   with Convention => C;  -- ./Nuklear/nuklear.h:505

   type nk_plugin_copy is access procedure
        (arg1 : nk_handle;
         arg2 : Interfaces.C.char_array;
         arg3 : int)
   with Convention => C;  -- ./Nuklear/nuklear.h:506

   type nk_allocator is record
      userdata : aliased nk_handle;  -- ./Nuklear/nuklear.h:509
      alloc : nk_plugin_alloc;  -- ./Nuklear/nuklear.h:510
      free : nk_plugin_free;  -- ./Nuklear/nuklear.h:511
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:508

   type nk_symbol_type is
     (SYMBOL_NONE,
      SYMBOL_X,
      SYMBOL_UNDERSCORE,
      SYMBOL_CIRCLE_SOLID,
      SYMBOL_CIRCLE_OUTLINE,
      SYMBOL_RECT_SOLID,
      SYMBOL_RECT_OUTLINE,
      SYMBOL_TRIANGLE_UP,
      SYMBOL_TRIANGLE_DOWN,
      SYMBOL_TRIANGLE_LEFT,
      SYMBOL_TRIANGLE_RIGHT,
      SYMBOL_PLUS,
      SYMBOL_MINUS,
      SYMBOL_MAX)
   with Convention => C;  -- ./Nuklear/nuklear.h:513

  -- =============================================================================
  -- *
  -- *                                  CONTEXT
  -- *
  -- * =============================================================================

  --/// ### Context
  --/// Contexts are the main entry point and the majestro of nuklear and contain all required state.
  --/// They are used for window, memory, input, style, stack, commands and time management and need
  --/// to be passed into all nuklear GUI specific functions.
  --///
  --/// #### Usage
  --/// To use a context it first has to be initialized which can be achieved by calling
  --/// one of either `nk_init_default`, `nk_init_fixed`, `nk_init`, `nk_init_custom`.
  --/// Each takes in a font handle and a specific way of handling memory. Memory control
  --/// hereby ranges from standard library to just specifying a fixed sized block of memory
  --/// which nuklear has to manage itself from.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_context ctx;
  --/// nk_init_xxx(&ctx, ...);
  --/// while (1) {
  --///     // [...]
  --///     nk_clear(&ctx);
  --/// }
  --/// nk_free(&ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// #### Reference
  --/// Function            | Description
  --/// --------------------|-------------------------------------------------------
  --/// __nk_init_default__ | Initializes context with standard library memory allocation (malloc,free)
  --/// __nk_init_fixed__   | Initializes context from single fixed size memory block
  --/// __nk_init__         | Initializes context with memory allocator callbacks for alloc and free
  --/// __nk_init_custom__  | Initializes context from two buffers. One for draw commands the other for window/panel/table allocations
  --/// __nk_clear__        | Called at the end of the frame to reset and prepare the context for the next frame
  --/// __nk_free__         | Shutdown and free all memory allocated inside the context
  --/// __nk_set_user_data__| Utility function to pass user data to draw command
  --

  --/// #### nk_init_default
  --/// Initializes a `nk_context` struct with a default standard library allocator.
  --/// Should be used if you don't want to be bothered with memory management in nuklear.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_init_default(struct nk_context *ctx, const struct nk_user_font *font);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|---------------------------------------------------------------
  --/// __ctx__     | Must point to an either stack or heap allocated `nk_context` struct
  --/// __font__    | Must point to a previously initialized font handle for more info look at font documentation
  --///
  --/// Returns either `false(0)` on failure or `true(1)` on success.
  --///
  --

   type nk_context;
   type nk_user_font;
   function init_default (arg1 : access nk_context; arg2 : access constant nk_user_font) return nk_bool  -- ./Nuklear/nuklear.h:584
   with Import => True,
        Convention => C,
        External_Name => "nk_init_default";

  --/// #### nk_init_fixed
  --/// Initializes a `nk_context` struct from single fixed size memory block
  --/// Should be used if you want complete control over nuklear's memory management.
  --/// Especially recommended for system with little memory or systems with virtual memory.
  --/// For the later case you can just allocate for example 16MB of virtual memory
  --/// and only the required amount of memory will actually be committed.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_init_fixed(struct nk_context *ctx, void *memory, nk_size size, const struct nk_user_font *font);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// !!! Warning
  --///     make sure the passed memory block is aligned correctly for `nk_draw_commands`.
  --///
  --/// Parameter   | Description
  --/// ------------|--------------------------------------------------------------
  --/// __ctx__     | Must point to an either stack or heap allocated `nk_context` struct
  --/// __memory__  | Must point to a previously allocated memory block
  --/// __size__    | Must contain the total size of __memory__
  --/// __font__    | Must point to a previously initialized font handle for more info look at font documentation
  --///
  --/// Returns either `false(0)` on failure or `true(1)` on success.
  --

   function init_fixed
     (arg1 : access nk_context;
      memory : System.Address;
      size : nk_size;
      arg4 : access constant nk_user_font) return nk_bool  -- ./Nuklear/nuklear.h:609
   with Import => True,
        Convention => C,
        External_Name => "nk_init_fixed";

  --/// #### nk_init
  --/// Initializes a `nk_context` struct with memory allocation callbacks for nuklear to allocate
  --/// memory from. Used internally for `nk_init_default` and provides a kitchen sink allocation
  --/// interface to nuklear. Can be useful for cases like monitoring memory consumption.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_init(struct nk_context *ctx, struct nk_allocator *alloc, const struct nk_user_font *font);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|---------------------------------------------------------------
  --/// __ctx__     | Must point to an either stack or heap allocated `nk_context` struct
  --/// __alloc__   | Must point to a previously allocated memory allocator
  --/// __font__    | Must point to a previously initialized font handle for more info look at font documentation
  --///
  --/// Returns either `false(0)` on failure or `true(1)` on success.
  --

   function init
     (arg1 : access nk_context;
      arg2 : access nk_allocator;
      arg3 : access constant nk_user_font) return nk_bool  -- ./Nuklear/nuklear.h:627
   with Import => True,
        Convention => C,
        External_Name => "nk_init";

  --/// #### nk_init_custom
  --/// Initializes a `nk_context` struct from two different either fixed or growing
  --/// buffers. The first buffer is for allocating draw commands while the second buffer is
  --/// used for allocating windows, panels and state tables.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_init_custom(struct nk_context *ctx, struct nk_buffer *cmds, struct nk_buffer *pool, const struct nk_user_font *font);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|---------------------------------------------------------------
  --/// __ctx__     | Must point to an either stack or heap allocated `nk_context` struct
  --/// __cmds__    | Must point to a previously initialized memory buffer either fixed or dynamic to store draw commands into
  --/// __pool__    | Must point to a previously initialized memory buffer either fixed or dynamic to store windows, panels and tables
  --/// __font__    | Must point to a previously initialized font handle for more info look at font documentation
  --///
  --/// Returns either `false(0)` on failure or `true(1)` on success.
  --

   type nk_buffer;
   function init_custom
     (arg1 : access nk_context;
      cmds : access nk_buffer;
      pool : access nk_buffer;
      arg4 : access constant nk_user_font) return nk_bool  -- ./Nuklear/nuklear.h:646
   with Import => True,
        Convention => C,
        External_Name => "nk_init_custom";

  --/// #### nk_clear
  --/// Resets the context state at the end of the frame. This includes mostly
  --/// garbage collector tasks like removing windows or table not called and therefore
  --/// used anymore.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_clear(struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to a previously initialized `nk_context` struct
  --

   procedure clear (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:660
   with Import => True,
        Convention => C,
        External_Name => "nk_clear";

  --/// #### nk_free
  --/// Frees all memory allocated by nuklear. Not needed if context was
  --/// initialized with `nk_init_fixed`.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_free(struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to a previously initialized `nk_context` struct
  --

   procedure free (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:673
   with Import => True,
        Convention => C,
        External_Name => "nk_free";

  --/// #### nk_set_user_data
  --/// Sets the currently passed userdata passed down into each draw command.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_set_user_data(struct nk_context *ctx, nk_handle data);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|--------------------------------------------------------------
  --/// __ctx__     | Must point to a previously initialized `nk_context` struct
  --/// __data__    | Handle with either pointer or index to be passed into every draw commands
  --

  -- =============================================================================
  -- *
  -- *                                  INPUT
  -- *
  -- * =============================================================================

  --/// ### Input
  --/// The input API is responsible for holding the current input state composed of
  --/// mouse, key and text input states.
  --/// It is worth noting that no direct OS or window handling is done in nuklear.
  --/// Instead all input state has to be provided by platform specific code. This on one hand
  --/// expects more work from the user and complicates usage but on the other hand
  --/// provides simple abstraction over a big number of platforms, libraries and other
  --/// already provided functionality.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_input_begin(&ctx);
  --/// while (GetEvent(&evt)) {
  --///     if (evt.type == MOUSE_MOVE)
  --///         nk_input_motion(&ctx, evt.motion.x, evt.motion.y);
  --///     else if (evt.type == [...]) {
  --///         // [...]
  --///     }
  --/// } nk_input_end(&ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// #### Usage
  --/// Input state needs to be provided to nuklear by first calling `nk_input_begin`
  --/// which resets internal state like delta mouse position and button transitions.
  --/// After `nk_input_begin` all current input state needs to be provided. This includes
  --/// mouse motion, button and key pressed and released, text input and scrolling.
  --/// Both event- or state-based input handling are supported by this API
  --/// and should work without problems. Finally after all input state has been
  --/// mirrored `nk_input_end` needs to be called to finish input process.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_context ctx;
  --/// nk_init_xxx(&ctx, ...);
  --/// while (1) {
  --///     Event evt;
  --///     nk_input_begin(&ctx);
  --///     while (GetEvent(&evt)) {
  --///         if (evt.type == MOUSE_MOVE)
  --///             nk_input_motion(&ctx, evt.motion.x, evt.motion.y);
  --///         else if (evt.type == [...]) {
  --///             // [...]
  --///         }
  --///     }
  --///     nk_input_end(&ctx);
  --///     // [...]
  --///     nk_clear(&ctx);
  --/// } nk_free(&ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// #### Reference
  --/// Function            | Description
  --/// --------------------|-------------------------------------------------------
  --/// __nk_input_begin__  | Begins the input mirroring process. Needs to be called before all other `nk_input_xxx` calls
  --/// __nk_input_motion__ | Mirrors mouse cursor position
  --/// __nk_input_key__    | Mirrors key state with either pressed or released
  --/// __nk_input_button__ | Mirrors mouse button state with either pressed or released
  --/// __nk_input_scroll__ | Mirrors mouse scroll values
  --/// __nk_input_char__   | Adds a single ASCII text character into an internal text buffer
  --/// __nk_input_glyph__  | Adds a single multi-byte UTF-8 character into an internal text buffer
  --/// __nk_input_unicode__| Adds a single unicode rune into an internal text buffer
  --/// __nk_input_end__    | Ends the input mirroring process by calculating state changes. Don't call any `nk_input_xxx` function referenced above after this call
  --

   type nk_keys is
     (KEY_NONE,
      KEY_SHIFT,
      KEY_CTRL,
      KEY_DEL,
      KEY_ENTER,
      KEY_TAB,
      KEY_BACKSPACE,
      KEY_COPY,
      KEY_CUT,
      KEY_PASTE,
      KEY_UP,
      KEY_DOWN,
      KEY_LEFT,
      KEY_RIGHT,
      KEY_TEXT_INSERT_MODE,
      KEY_TEXT_REPLACE_MODE,
      KEY_TEXT_RESET_MODE,
      KEY_TEXT_LINE_START,
      KEY_TEXT_LINE_END,
      KEY_TEXT_START,
      KEY_TEXT_END,
      KEY_TEXT_UNDO,
      KEY_TEXT_REDO,
      KEY_TEXT_SELECT_ALL,
      KEY_TEXT_WORD_LEFT,
      KEY_TEXT_WORD_RIGHT,
      KEY_SCROLL_START,
      KEY_SCROLL_END,
      KEY_SCROLL_DOWN,
      KEY_SCROLL_UP,
      KEY_MAX)
   with Convention => C;  -- ./Nuklear/nuklear.h:755

  -- Shortcuts: text field
  -- Shortcuts: scrollbar
   type nk_buttons is
     (BUTTON_LEFT,
      BUTTON_MIDDLE,
      BUTTON_RIGHT,
      BUTTON_DOUBLE,
      BUTTON_MAX)
   with Convention => C;  -- ./Nuklear/nuklear.h:790

  --/// #### nk_input_begin
  --/// Begins the input mirroring process by resetting text, scroll
  --/// mouse, previous mouse position and movement as well as key state transitions,
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_input_begin(struct nk_context*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to a previously initialized `nk_context` struct
  --

   procedure input_begin (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:809
   with Import => True,
        Convention => C,
        External_Name => "nk_input_begin";

  --/// #### nk_input_motion
  --/// Mirrors current mouse position to nuklear
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_input_motion(struct nk_context *ctx, int x, int y);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to a previously initialized `nk_context` struct
  --/// __x__       | Must hold an integer describing the current mouse cursor x-position
  --/// __y__       | Must hold an integer describing the current mouse cursor y-position
  --

   procedure input_motion
     (arg1 : access nk_context;
      x : int;
      y : int)  -- ./Nuklear/nuklear.h:823
   with Import => True,
        Convention => C,
        External_Name => "nk_input_motion";

  --/// #### nk_input_key
  --/// Mirrors the state of a specific key to nuklear
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_input_key(struct nk_context*, enum nk_keys key, nk_bool down);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to a previously initialized `nk_context` struct
  --/// __key__     | Must be any value specified in enum `nk_keys` that needs to be mirrored
  --/// __down__    | Must be 0 for key is up and 1 for key is down
  --

   procedure input_key
     (arg1 : access nk_context;
      arg2 : nk_keys;
      down : nk_bool)  -- ./Nuklear/nuklear.h:837
   with Import => True,
        Convention => C,
        External_Name => "nk_input_key";

  --/// #### nk_input_button
  --/// Mirrors the state of a specific mouse button to nuklear
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_input_button(struct nk_context *ctx, enum nk_buttons btn, int x, int y, nk_bool down);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to a previously initialized `nk_context` struct
  --/// __btn__     | Must be any value specified in enum `nk_buttons` that needs to be mirrored
  --/// __x__       | Must contain an integer describing mouse cursor x-position on click up/down
  --/// __y__       | Must contain an integer describing mouse cursor y-position on click up/down
  --/// __down__    | Must be 0 for key is up and 1 for key is down
  --

   procedure input_button
     (arg1 : access nk_context;
      arg2 : nk_buttons;
      x : int;
      y : int;
      down : nk_bool)  -- ./Nuklear/nuklear.h:853
   with Import => True,
        Convention => C,
        External_Name => "nk_input_button";

  --/// #### nk_input_scroll
  --/// Copies the last mouse scroll value to nuklear. Is generally
  --/// a scroll value. So does not have to come from mouse and could also originate
  --/// TODO finish this sentence
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_input_scroll(struct nk_context *ctx, struct nk_vec2 val);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to a previously initialized `nk_context` struct
  --/// __val__     | vector with both X- as well as Y-scroll value
  --

   procedure input_scroll (arg1 : access nk_context; val : nk_vec2_t)  -- ./Nuklear/nuklear.h:868
   with Import => True,
        Convention => C,
        External_Name => "nk_input_scroll";

  --/// #### nk_input_char
  --/// Copies a single ASCII character into an internal text buffer
  --/// This is basically a helper function to quickly push ASCII characters into
  --/// nuklear.
  --///
  --/// !!! Note
  --///     Stores up to INPUT_MAX bytes between `nk_input_begin` and `nk_input_end`.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_input_char(struct nk_context *ctx, char c);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to a previously initialized `nk_context` struct
  --/// __c__       | Must be a single ASCII character preferable one that can be printed
  --

   procedure input_char (arg1 : access nk_context; arg2 : char)  -- ./Nuklear/nuklear.h:886
   with Import => True,
        Convention => C,
        External_Name => "nk_input_char";

  --/// #### nk_input_glyph
  --/// Converts an encoded unicode rune into UTF-8 and copies the result into an
  --/// internal text buffer.
  --///
  --/// !!! Note
  --///     Stores up to INPUT_MAX bytes between `nk_input_begin` and `nk_input_end`.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_input_glyph(struct nk_context *ctx, const nk_glyph g);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to a previously initialized `nk_context` struct
  --/// __g__       | UTF-32 unicode codepoint
  --

   procedure input_glyph (arg1 : access nk_context; arg2 : Interfaces.C.char_array)  -- ./Nuklear/nuklear.h:903
   with Import => True,
        Convention => C,
        External_Name => "nk_input_glyph";

  --/// #### nk_input_unicode
  --/// Converts a unicode rune into UTF-8 and copies the result
  --/// into an internal text buffer.
  --/// !!! Note
  --///     Stores up to INPUT_MAX bytes between `nk_input_begin` and `nk_input_end`.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_input_unicode(struct nk_context*, nk_rune rune);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to a previously initialized `nk_context` struct
  --/// __rune__    | UTF-32 unicode codepoint
  --

   procedure input_unicode (arg1 : access nk_context; arg2 : nk_rune)  -- ./Nuklear/nuklear.h:919
   with Import => True,
        Convention => C,
        External_Name => "nk_input_unicode";

  --/// #### nk_input_end
  --/// End the input mirroring process by resetting mouse grabbing
  --/// state to ensure the mouse cursor is not grabbed indefinitely.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_input_end(struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to a previously initialized `nk_context` struct
  --

   procedure input_end (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:932
   with Import => True,
        Convention => C,
        External_Name => "nk_input_end";

  -- =============================================================================
  -- *
  -- *                                  DRAWING
  -- *
  -- * =============================================================================

  --/// ### Drawing
  --/// This library was designed to be render backend agnostic so it does
  --/// not draw anything to screen directly. Instead all drawn shapes, widgets
  --/// are made of, are buffered into memory and make up a command queue.
  --/// Each frame therefore fills the command buffer with draw commands
  --/// that then need to be executed by the user and his own render backend.
  --/// After that the command buffer needs to be cleared and a new frame can be
  --/// started. It is probably important to note that the command buffer is the main
  --/// drawing API and the optional vertex buffer API only takes this format and
  --/// converts it into a hardware accessible format.
  --///
  --/// #### Usage
  --/// To draw all draw commands accumulated over a frame you need your own render
  --/// backend able to draw a number of 2D primitives. This includes at least
  --/// filled and stroked rectangles, circles, text, lines, triangles and scissors.
  --/// As soon as this criterion is met you can iterate over each draw command
  --/// and execute each draw command in a interpreter like fashion:
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// const struct nk_command *cmd = 0;
  --/// nk_foreach(cmd, &ctx) {
  --///     switch (cmd->type) {
  --///     case COMMAND_LINE:
  --///         your_draw_line_function(...)
  --///         break;
  --///     case COMMAND_RECT
  --///         your_draw_rect_function(...)
  --///         break;
  --///     case //...:
  --///         //[...]
  --///     }
  --/// }
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// In program flow context draw commands need to be executed after input has been
  --/// gathered and the complete UI with windows and their contained widgets have
  --/// been executed and before calling `nk_clear` which frees all previously
  --/// allocated draw commands.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_context ctx;
  --/// nk_init_xxx(&ctx, ...);
  --/// while (1) {
  --///     Event evt;
  --///     nk_input_begin(&ctx);
  --///     while (GetEvent(&evt)) {
  --///         if (evt.type == MOUSE_MOVE)
  --///             nk_input_motion(&ctx, evt.motion.x, evt.motion.y);
  --///         else if (evt.type == [...]) {
  --///             [...]
  --///         }
  --///     }
  --///     nk_input_end(&ctx);
  --///     //
  --///     // [...]
  --///     //
  --///     const struct nk_command *cmd = 0;
  --///     nk_foreach(cmd, &ctx) {
  --///     switch (cmd->type) {
  --///     case COMMAND_LINE:
  --///         your_draw_line_function(...)
  --///         break;
  --///     case COMMAND_RECT
  --///         your_draw_rect_function(...)
  --///         break;
  --///     case ...:
  --///         // [...]
  --///     }
  --///     nk_clear(&ctx);
  --/// }
  --/// nk_free(&ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// You probably noticed that you have to draw all of the UI each frame which is
  --/// quite wasteful. While the actual UI updating loop is quite fast rendering
  --/// without actually needing it is not. So there are multiple things you could do.
  --///
  --/// First is only update on input. This of course is only an option if your
  --/// application only depends on the UI and does not require any outside calculations.
  --/// If you actually only update on input make sure to update the UI two times each
  --/// frame and call `nk_clear` directly after the first pass and only draw in
  --/// the second pass. In addition it is recommended to also add additional timers
  --/// to make sure the UI is not drawn more than a fixed number of frames per second.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_context ctx;
  --/// nk_init_xxx(&ctx, ...);
  --/// while (1) {
  --///     // [...wait for input ]
  --///     // [...do two UI passes ...]
  --///     do_ui(...)
  --///     nk_clear(&ctx);
  --///     do_ui(...)
  --///     //
  --///     // draw
  --///     const struct nk_command *cmd = 0;
  --///     nk_foreach(cmd, &ctx) {
  --///     switch (cmd->type) {
  --///     case COMMAND_LINE:
  --///         your_draw_line_function(...)
  --///         break;
  --///     case COMMAND_RECT
  --///         your_draw_rect_function(...)
  --///         break;
  --///     case ...:
  --///         //[...]
  --///     }
  --///     nk_clear(&ctx);
  --/// }
  --/// nk_free(&ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// The second probably more applicable trick is to only draw if anything changed.
  --/// It is not really useful for applications with continuous draw loop but
  --/// quite useful for desktop applications. To actually get nuklear to only
  --/// draw on changes you first have to define `ZERO_COMMAND_MEMORY` and
  --/// allocate a memory buffer that will store each unique drawing output.
  --/// After each frame you compare the draw command memory inside the library
  --/// with your allocated buffer by memcmp. If memcmp detects differences
  --/// you have to copy the command buffer into the allocated buffer
  --/// and then draw like usual (this example uses fixed memory but you could
  --/// use dynamically allocated memory).
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// //[... other defines ...]
  --/// #define ZERO_COMMAND_MEMORY
  --/// #include "nuklear.h"
  --/// //
  --/// // setup context
  --/// struct nk_context ctx;
  --/// void *last = calloc(1,64*1024);
  --/// void *buf = calloc(1,64*1024);
  --/// nk_init_fixed(&ctx, buf, 64*1024);
  --/// //
  --/// // loop
  --/// while (1) {
  --///     // [...input...]
  --///     // [...ui...]
  --///     void *cmds = nk_buffer_memory(&ctx.memory);
  --///     if (memcmp(cmds, last, ctx.memory.allocated)) {
  --///         memcpy(last,cmds,ctx.memory.allocated);
  --///         const struct nk_command *cmd = 0;
  --///         nk_foreach(cmd, &ctx) {
  --///             switch (cmd->type) {
  --///             case COMMAND_LINE:
  --///                 your_draw_line_function(...)
  --///                 break;
  --///             case COMMAND_RECT
  --///                 your_draw_rect_function(...)
  --///                 break;
  --///             case ...:
  --///                 // [...]
  --///             }
  --///         }
  --///     }
  --///     nk_clear(&ctx);
  --/// }
  --/// nk_free(&ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Finally while using draw commands makes sense for higher abstracted platforms like
  --/// X11 and Win32 or drawing libraries it is often desirable to use graphics
  --/// hardware directly. Therefore it is possible to just define
  --/// `INCLUDE_VERTEX_BUFFER_OUTPUT` which includes optional vertex output.
  --/// To access the vertex output you first have to convert all draw commands into
  --/// vertexes by calling `nk_convert` which takes in your preferred vertex format.
  --/// After successfully converting all draw commands just iterate over and execute all
  --/// vertex draw commands:
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// // fill configuration
  --/// struct your_vertex
  --/// {
  --///     float pos[2]; // important to keep it to 2 floats
  --///     float uv[2];
  --///     unsigned char col[4];
  --/// };
  --/// struct nk_convert_config cfg = {};
  --/// static const struct nk_draw_vertex_layout_element vertex_layout[] = {
  --///     {VERTEX_POSITION, NK_FORMAT_FLOAT, NK_OFFSETOF(struct your_vertex, pos)},
  --///     {VERTEX_TEXCOORD, NK_FORMAT_FLOAT, NK_OFFSETOF(struct your_vertex, uv)},
  --///     {VERTEX_COLOR, NK_FORMAT_R8G8B8A8, NK_OFFSETOF(struct your_vertex, col)},
  --///     {VERTEX_LAYOUT_END}
  --/// };
  --/// cfg.shape_AA = ANTI_ALIASING_ON;
  --/// cfg.line_AA = ANTI_ALIASING_ON;
  --/// cfg.vertex_layout = vertex_layout;
  --/// cfg.vertex_size = sizeof(struct your_vertex);
  --/// cfg.vertex_alignment = ALIGNOF(struct your_vertex);
  --/// cfg.circle_segment_count = 22;
  --/// cfg.curve_segment_count = 22;
  --/// cfg.arc_segment_count = 22;
  --/// cfg.global_alpha = 1.0f;
  --/// cfg.tex_null = dev->tex_null;
  --/// //
  --/// // setup buffers and convert
  --/// struct nk_buffer cmds, verts, idx;
  --/// nk_buffer_init_default(&cmds);
  --/// nk_buffer_init_default(&verts);
  --/// nk_buffer_init_default(&idx);
  --/// nk_convert(&ctx, &cmds, &verts, &idx, &cfg);
  --/// //
  --/// // draw
  --/// nk_draw_foreach(cmd, &ctx, &cmds) {
  --/// if (!cmd->elem_count) continue;
  --///     //[...]
  --/// }
  --/// nk_buffer_free(&cms);
  --/// nk_buffer_free(&verts);
  --/// nk_buffer_free(&idx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// #### Reference
  --/// Function            | Description
  --/// --------------------|-------------------------------------------------------
  --/// __nk__begin__       | Returns the first draw command in the context draw command list to be drawn
  --/// __nk__next__        | Increments the draw command iterator to the next command inside the context draw command list
  --/// __nk_foreach__      | Iterates over each draw command inside the context draw command list
  --/// __nk_convert__      | Converts from the abstract draw commands list into a hardware accessible vertex format
  --/// __nk_draw_begin__   | Returns the first vertex command in the context vertex draw list to be executed
  --/// __nk__draw_next__   | Increments the vertex command iterator to the next command inside the context vertex command list
  --/// __nk__draw_end__    | Returns the end of the vertex draw list
  --/// __nk_draw_foreach__ | Iterates over each vertex draw command inside the vertex draw list
  --

   type nk_anti_aliasing is
     (ANTI_ALIASING_OFF,
      ANTI_ALIASING_ON)
   with Convention => C;  -- ./Nuklear/nuklear.h:1162

   subtype nk_convert_result is unsigned;
   nk_convert_result_CONVERT_SUCCESS : constant nk_convert_result := 0;
   nk_convert_result_CONVERT_INVALID_PARAM : constant nk_convert_result := 1;
   nk_convert_result_CONVERT_COMMAND_BUFFER_FULL : constant nk_convert_result := 2;
   nk_convert_result_CONVERT_VERTEX_BUFFER_FULL : constant nk_convert_result := 4;
   nk_convert_result_CONVERT_ELEMENT_BUFFER_FULL : constant nk_convert_result := 8;  -- ./Nuklear/nuklear.h:1163

  -- texture handle to a texture with a white pixel
   type nk_draw_null_texture is record
      texture : aliased nk_handle;  -- ./Nuklear/nuklear.h:1171
      uv : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:1172
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:1170

  -- coordinates to a white pixel in the texture
  -- global alpha value
   type nk_draw_vertex_layout_element;
   type nk_convert_config is record
      global_alpha : aliased float;  -- ./Nuklear/nuklear.h:1175
      line_AA : aliased nk_anti_aliasing;  -- ./Nuklear/nuklear.h:1176
      shape_AA : aliased nk_anti_aliasing;  -- ./Nuklear/nuklear.h:1177
      circle_segment_count : aliased unsigned;  -- ./Nuklear/nuklear.h:1178
      arc_segment_count : aliased unsigned;  -- ./Nuklear/nuklear.h:1179
      curve_segment_count : aliased unsigned;  -- ./Nuklear/nuklear.h:1180
      tex_null : aliased nk_draw_null_texture;  -- ./Nuklear/nuklear.h:1181
      vertex_layout : access constant nk_draw_vertex_layout_element;  -- ./Nuklear/nuklear.h:1182
      vertex_size : aliased nk_size;  -- ./Nuklear/nuklear.h:1183
      vertex_alignment : aliased nk_size;  -- ./Nuklear/nuklear.h:1184
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:1174

  -- line anti-aliasing flag can be turned off if you are tight on memory
  -- shape anti-aliasing flag can be turned off if you are tight on memory
  -- number of segments used for circles: default to 22
  -- number of segments used for arcs: default to 22
  -- number of segments used for curves: default to 22
  -- handle to texture with a white pixel for shape drawing
  -- describes the vertex output format and packing
  -- sizeof one vertex for vertex packing
  -- vertex alignment: Can be obtained by ALIGNOF
  --/// #### nk__begin
  --/// Returns a draw command list iterator to iterate all draw
  --/// commands accumulated over one frame.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// const struct nk_command* nk__begin(struct nk_context*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | must point to an previously initialized `nk_context` struct at the end of a frame
  --///
  --/// Returns draw command pointer pointing to the first command inside the draw command list
  --

   type nk_command;
   function u_begin (arg1 : access nk_context) return access constant nk_command  -- ./Nuklear/nuklear.h:1200
   with Import => True,
        Convention => C,
        External_Name => "nk__begin";

  --/// #### nk__next
  --/// Returns draw command pointer pointing to the next command inside the draw command list
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// const struct nk_command* nk__next(struct nk_context*, const struct nk_command*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct at the end of a frame
  --/// __cmd__     | Must point to an previously a draw command either returned by `nk__begin` or `nk__next`
  --///
  --/// Returns draw command pointer pointing to the next command inside the draw command list
  --

   function u_next (arg1 : access nk_context; arg2 : access constant nk_command) return access constant nk_command  -- ./Nuklear/nuklear.h:1215
   with Import => True,
        Convention => C,
        External_Name => "nk__next";

  --/// #### nk_foreach
  --/// Iterates over each draw command inside the context draw command list
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// #define nk_foreach(c, ctx)
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct at the end of a frame
  --/// __cmd__     | Command pointer initialized to NULL
  --///
  --/// Iterates over each draw command inside the context draw command list
  --

  --/// #### nk_convert
  --/// Converts all internal draw commands into vertex draw commands and fills
  --/// three buffers with vertexes, vertex draw commands and vertex indices. The vertex format
  --/// as well as some other configuration values have to be configured by filling out a
  --/// `nk_convert_config` struct.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_flags nk_convert(struct nk_context *ctx, struct nk_buffer *cmds,
  --///     struct nk_buffer *vertices, struct nk_buffer *elements, const struct nk_convert_config*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct at the end of a frame
  --/// __cmds__    | Must point to a previously initialized buffer to hold converted vertex draw commands
  --/// __vertices__| Must point to a previously initialized buffer to hold all produced vertices
  --/// __elements__| Must point to a previously initialized buffer to hold all produced vertex indices
  --/// __config__  | Must point to a filled out `nk_config` struct to configure the conversion process
  --///
  --/// Returns one of enum nk_convert_result error codes
  --///
  --/// Parameter                       | Description
  --/// --------------------------------|-----------------------------------------------------------
  --/// CONVERT_SUCCESS              | Signals a successful draw command to vertex buffer conversion
  --/// CONVERT_INVALID_PARAM        | An invalid argument was passed in the function call
  --/// CONVERT_COMMAND_BUFFER_FULL  | The provided buffer for storing draw commands is full or failed to allocate more memory
  --/// CONVERT_VERTEX_BUFFER_FULL   | The provided buffer for storing vertices is full or failed to allocate more memory
  --/// CONVERT_ELEMENT_BUFFER_FULL  | The provided buffer for storing indices is full or failed to allocate more memory
  --

   function convert
     (arg1 : access nk_context;
      cmds : access nk_buffer;
      vertices : access nk_buffer;
      elements : access nk_buffer;
      arg5 : access constant nk_convert_config) return nk_flags  -- ./Nuklear/nuklear.h:1261
   with Import => True,
        Convention => C,
        External_Name => "nk_convert";

  --/// #### nk__draw_begin
  --/// Returns a draw vertex command buffer iterator to iterate over the vertex draw command buffer
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// const struct nk_draw_command* nk__draw_begin(const struct nk_context*, const struct nk_buffer*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct at the end of a frame
  --/// __buf__     | Must point to an previously by `nk_convert` filled out vertex draw command buffer
  --///
  --/// Returns vertex draw command pointer pointing to the first command inside the vertex draw command buffer
  --

   type nk_draw_command;
   function u_draw_begin (arg1 : access constant nk_context; arg2 : access constant nk_buffer) return access constant nk_draw_command  -- ./Nuklear/nuklear.h:1276
   with Import => True,
        Convention => C,
        External_Name => "nk__draw_begin";

  --/// #### nk__draw_end
  --/// Returns the vertex draw command at the end of the vertex draw command buffer
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// const struct nk_draw_command* nk__draw_end(const struct nk_context *ctx, const struct nk_buffer *buf);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct at the end of a frame
  --/// __buf__     | Must point to an previously by `nk_convert` filled out vertex draw command buffer
  --///
  --/// Returns vertex draw command pointer pointing to the end of the last vertex draw command inside the vertex draw command buffer
  --

   function u_draw_end (arg1 : access constant nk_context; arg2 : access constant nk_buffer) return access constant nk_draw_command  -- ./Nuklear/nuklear.h:1291
   with Import => True,
        Convention => C,
        External_Name => "nk__draw_end";

  --/// #### nk__draw_next
  --/// Increments the vertex draw command buffer iterator
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// const struct nk_draw_command* nk__draw_next(const struct nk_draw_command*, const struct nk_buffer*, const struct nk_context*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __cmd__     | Must point to an previously either by `nk__draw_begin` or `nk__draw_next` returned vertex draw command
  --/// __buf__     | Must point to an previously by `nk_convert` filled out vertex draw command buffer
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct at the end of a frame
  --///
  --/// Returns vertex draw command pointer pointing to the end of the last vertex draw command inside the vertex draw command buffer
  --

   function u_draw_next
     (arg1 : access constant nk_draw_command;
      arg2 : access constant nk_buffer;
      arg3 : access constant nk_context) return access constant nk_draw_command  -- ./Nuklear/nuklear.h:1307
   with Import => True,
        Convention => C,
        External_Name => "nk__draw_next";

  --/// #### nk_draw_foreach
  --/// Iterates over each vertex draw command inside a vertex draw command buffer
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// #define nk_draw_foreach(cmd,ctx, b)
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __cmd__     | `nk_draw_command`iterator set to NULL
  --/// __buf__     | Must point to an previously by `nk_convert` filled out vertex draw command buffer
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct at the end of a frame
  --

  -- =============================================================================
  -- *
  -- *                                  WINDOW
  -- *
  -- * =============================================================================
  --/// ### Window
  --/// Windows are the main persistent state used inside nuklear and are life time
  --/// controlled by simply "retouching" (i.e. calling) each window each frame.
  --/// All widgets inside nuklear can only be added inside the function pair `nk_begin_xxx`
  --/// and `nk_end`. Calling any widgets outside these two functions will result in an
  --/// assert in debug or no state change in release mode.<br /><br />
  --///
  --/// Each window holds frame persistent state like position, size, flags, state tables,
  --/// and some garbage collected internal persistent widget state. Each window
  --/// is linked into a window stack list which determines the drawing and overlapping
  --/// order. The topmost window thereby is the currently active window.<br /><br />
  --///
  --/// To change window position inside the stack occurs either automatically by
  --/// user input by being clicked on or programmatically by calling `nk_window_focus`.
  --/// Windows by default are visible unless explicitly being defined with flag
  --/// `WINDOW_HIDDEN`, the user clicked the close button on windows with flag
  --/// `WINDOW_CLOSABLE` or if a window was explicitly hidden by calling
  --/// `nk_window_show`. To explicitly close and destroy a window call `nk_window_close`.<br /><br />
  --///
  --/// #### Usage
  --/// To create and keep a window you have to call one of the two `nk_begin_xxx`
  --/// functions to start window declarations and `nk_end` at the end. Furthermore it
  --/// is recommended to check the return value of `nk_begin_xxx` and only process
  --/// widgets inside the window if the value is not 0. Either way you have to call
  --/// `nk_end` at the end of window declarations. Furthermore, do not attempt to
  --/// nest `nk_begin_xxx` calls which will hopefully result in an assert or if not
  --/// in a segmentation fault.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// if (nk_begin_xxx(...) {
  --///     // [... widgets ...]
  --/// }
  --/// nk_end(ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// In the grand concept window and widget declarations need to occur after input
  --/// handling and before drawing to screen. Not doing so can result in higher
  --/// latency or at worst invalid behavior. Furthermore make sure that `nk_clear`
  --/// is called at the end of the frame. While nuklear's default platform backends
  --/// already call `nk_clear` for you if you write your own backend not calling
  --/// `nk_clear` can cause asserts or even worse undefined behavior.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_context ctx;
  --/// nk_init_xxx(&ctx, ...);
  --/// while (1) {
  --///     Event evt;
  --///     nk_input_begin(&ctx);
  --///     while (GetEvent(&evt)) {
  --///         if (evt.type == MOUSE_MOVE)
  --///             nk_input_motion(&ctx, evt.motion.x, evt.motion.y);
  --///         else if (evt.type == [...]) {
  --///             nk_input_xxx(...);
  --///         }
  --///     }
  --///     nk_input_end(&ctx);
  --///
  --///     if (nk_begin_xxx(...) {
  --///         //[...]
  --///     }
  --///     nk_end(ctx);
  --///
  --///     const struct nk_command *cmd = 0;
  --///     nk_foreach(cmd, &ctx) {
  --///     case COMMAND_LINE:
  --///         your_draw_line_function(...)
  --///         break;
  --///     case COMMAND_RECT
  --///         your_draw_rect_function(...)
  --///         break;
  --///     case //...:
  --///         //[...]
  --///     }
  --///     nk_clear(&ctx);
  --/// }
  --/// nk_free(&ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// #### Reference
  --/// Function                            | Description
  --/// ------------------------------------|----------------------------------------
  --/// nk_begin                            | Starts a new window; needs to be called every frame for every window (unless hidden) or otherwise the window gets removed
  --/// nk_begin_titled                     | Extended window start with separated title and identifier to allow multiple windows with same name but not title
  --/// nk_end                              | Needs to be called at the end of the window building process to process scaling, scrollbars and general cleanup
  --//
  --/// nk_window_find                      | Finds and returns the window with give name
  --/// nk_window_get_bounds                | Returns a rectangle with screen position and size of the currently processed window.
  --/// nk_window_get_position              | Returns the position of the currently processed window
  --/// nk_window_get_size                  | Returns the size with width and height of the currently processed window
  --/// nk_window_get_width                 | Returns the width of the currently processed window
  --/// nk_window_get_height                | Returns the height of the currently processed window
  --/// nk_window_get_panel                 | Returns the underlying panel which contains all processing state of the current window
  --/// nk_window_get_content_region        | Returns the position and size of the currently visible and non-clipped space inside the currently processed window
  --/// nk_window_get_content_region_min    | Returns the upper rectangle position of the currently visible and non-clipped space inside the currently processed window
  --/// nk_window_get_content_region_max    | Returns the upper rectangle position of the currently visible and non-clipped space inside the currently processed window
  --/// nk_window_get_content_region_size   | Returns the size of the currently visible and non-clipped space inside the currently processed window
  --/// nk_window_get_canvas                | Returns the draw command buffer. Can be used to draw custom widgets
  --/// nk_window_get_scroll                | Gets the scroll offset of the current window
  --/// nk_window_has_focus                 | Returns if the currently processed window is currently active
  --/// nk_window_is_collapsed              | Returns if the window with given name is currently minimized/collapsed
  --/// nk_window_is_closed                 | Returns if the currently processed window was closed
  --/// nk_window_is_hidden                 | Returns if the currently processed window was hidden
  --/// nk_window_is_active                 | Same as nk_window_has_focus for some reason
  --/// nk_window_is_hovered                | Returns if the currently processed window is currently being hovered by mouse
  --/// nk_window_is_any_hovered            | Return if any window currently hovered
  --/// nk_item_is_any_active               | Returns if any window or widgets is currently hovered or active
  --//
  --/// nk_window_set_bounds                | Updates position and size of the currently processed window
  --/// nk_window_set_position              | Updates position of the currently process window
  --/// nk_window_set_size                  | Updates the size of the currently processed window
  --/// nk_window_set_focus                 | Set the currently processed window as active window
  --/// nk_window_set_scroll                | Sets the scroll offset of the current window
  --//
  --/// nk_window_close                     | Closes the window with given window name which deletes the window at the end of the frame
  --/// nk_window_collapse                  | Collapses the window with given window name
  --/// nk_window_collapse_if               | Collapses the window with given window name if the given condition was met
  --/// nk_window_show                      | Hides a visible or reshows a hidden window
  --/// nk_window_show_if                   | Hides/shows a window depending on condition
  --

  --/// #### nk_panel_flags
  --/// Flag                        | Description
  --/// ----------------------------|----------------------------------------
  --/// WINDOW_BORDER            | Draws a border around the window to visually separate window from the background
  --/// WINDOW_MOVABLE           | The movable flag indicates that a window can be moved by user input or by dragging the window header
  --/// WINDOW_SCALABLE          | The scalable flag indicates that a window can be scaled by user input by dragging a scaler icon at the button of the window
  --/// WINDOW_CLOSABLE          | Adds a closable icon into the header
  --/// WINDOW_MINIMIZABLE       | Adds a minimize icon into the header
  --/// WINDOW_NO_SCROLLBAR      | Removes the scrollbar from the window
  --/// WINDOW_TITLE             | Forces a header at the top at the window showing the title
  --/// WINDOW_SCROLL_AUTO_HIDE  | Automatically hides the window scrollbar if no user interaction: also requires delta time in `nk_context` to be set each frame
  --/// WINDOW_BACKGROUND        | Always keep window in the background
  --/// WINDOW_SCALE_LEFT        | Puts window scaler in the left-bottom corner instead right-bottom
  --/// WINDOW_NO_INPUT          | Prevents window of scaling, moving or getting focus
  --///
  --/// #### nk_collapse_states
  --/// State           | Description
  --/// ----------------|-----------------------------------------------------------
  --/// __MINIMIZED__| UI section is collased and not visible until maximized
  --/// __MAXIMIZED__| UI section is extended and visible until minimized
  --/// <br /><br />
  --

   subtype nk_panel_flags is unsigned;
   WINDOW_BORDER : constant nk_panel_flags := 1;
   WINDOW_MOVABLE : constant nk_panel_flags := 2;
   WINDOW_SCALABLE : constant nk_panel_flags := 4;
   WINDOW_CLOSABLE : constant nk_panel_flags := 8;
   WINDOW_MINIMIZABLE : constant nk_panel_flags := 16;
   WINDOW_NO_SCROLLBAR : constant nk_panel_flags := 32;
   WINDOW_TITLE : constant nk_panel_flags := 64;
   WINDOW_SCROLL_AUTO_HIDE : constant nk_panel_flags := 128;
   WINDOW_BACKGROUND : constant nk_panel_flags := 256;
   WINDOW_SCALE_LEFT : constant nk_panel_flags := 512;
   WINDOW_NO_INPUT : constant nk_panel_flags := 1024;  -- ./Nuklear/nuklear.h:1470

  --/// #### nk_begin
  --/// Starts a new window; needs to be called every frame for every
  --/// window (unless hidden) or otherwise the window gets removed
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_begin(struct nk_context *ctx, const char *title, struct nk_rect bounds, nk_flags flags);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __title__   | Window title and identifier. Needs to be persistent over frames to identify the window
  --/// __bounds__  | Initial position and window size. However if you do not define `WINDOW_SCALABLE` or `NK_WINDOW_MOVABLE` you can set window position and size every frame
  --/// __flags__   | Window flags defined in the nk_panel_flags section with a number of different window behaviors
  --///
  --/// Returns `true(1)` if the window can be filled up with widgets from this point
  --/// until `nk_end` or `false(0)` otherwise for example if minimized
  --

   function start
     (ctx : access nk_context;
      title : Interfaces.C.char_array;
      bounds : nk_rect_t;
      flags : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:1501
   with Import => True,
        Convention => C,
        External_Name => "nk_begin";

  --/// #### nk_begin_titled
  --/// Extended window start with separated title and identifier to allow multiple
  --/// windows with same title but not name
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_begin_titled(struct nk_context *ctx, const char *name, const char *title, struct nk_rect bounds, nk_flags flags);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __name__    | Window identifier. Needs to be persistent over frames to identify the window
  --/// __title__   | Window title displayed inside header if flag `WINDOW_TITLE` or either `NK_WINDOW_CLOSABLE` or `NK_WINDOW_MINIMIZED` was set
  --/// __bounds__  | Initial position and window size. However if you do not define `WINDOW_SCALABLE` or `NK_WINDOW_MOVABLE` you can set window position and size every frame
  --/// __flags__   | Window flags defined in the nk_panel_flags section with a number of different window behaviors
  --///
  --/// Returns `true(1)` if the window can be filled up with widgets from this point
  --/// until `nk_end` or `false(0)` otherwise for example if minimized
  --

   function start_titled
     (ctx : access nk_context;
      name : Interfaces.C.char_array;
      title : Interfaces.C.char_array;
      bounds : nk_rect_t;
      flags : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:1521
   with Import => True,
        Convention => C,
        External_Name => "nk_begin_titled";

  --/// #### nk_end
  --/// Needs to be called at the end of the window building process to process scaling, scrollbars and general cleanup.
  --/// All widget calls after this functions will result in asserts or no state changes
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_end(struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --

   procedure finish (ctx : access nk_context)  -- ./Nuklear/nuklear.h:1534
   with Import => True,
        Convention => C,
        External_Name => "nk_end";

  --/// #### nk_window_find
  --/// Finds and returns a window from passed name
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_window *nk_window_find(struct nk_context *ctx, const char *name);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __name__    | Window identifier
  --///
  --/// Returns a `nk_window` struct pointing to the identified window or NULL if
  --/// no window with the given name was found
  --

   type nk_window;
   function window_find (ctx : access nk_context; name : Interfaces.C.char_array) return access nk_window  -- ./Nuklear/nuklear.h:1550
   with Import => True,
        Convention => C,
        External_Name => "nk_window_find";

  --/// #### nk_window_get_bounds
  --/// Returns a rectangle with screen position and size of the currently processed window
  --///
  --/// !!! WARNING
  --///     Only call this function between calls `nk_begin_xxx` and `nk_end`
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_rect nk_window_get_bounds(const struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --///
  --/// Returns a `nk_rect` struct with window upper left window position and size
  --

   function window_get_bounds (ctx : access constant nk_context) return nk_rect_t  -- ./Nuklear/nuklear.h:1566
   with Import => True,
        Convention => C,
        External_Name => "nk_window_get_bounds";

  --/// #### nk_window_get_position
  --/// Returns the position of the currently processed window.
  --///
  --/// !!! WARNING
  --///     Only call this function between calls `nk_begin_xxx` and `nk_end`
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_vec2 nk_window_get_position(const struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --///
  --/// Returns a `nk_vec2` struct with window upper left position
  --

   function window_get_position (ctx : access constant nk_context) return nk_vec2_t  -- ./Nuklear/nuklear.h:1582
   with Import => True,
        Convention => C,
        External_Name => "nk_window_get_position";

  --/// #### nk_window_get_size
  --/// Returns the size with width and height of the currently processed window.
  --///
  --/// !!! WARNING
  --///     Only call this function between calls `nk_begin_xxx` and `nk_end`
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_vec2 nk_window_get_size(const struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --///
  --/// Returns a `nk_vec2` struct with window width and height
  --

   function window_get_size (arg1 : access constant nk_context) return nk_vec2_t  -- ./Nuklear/nuklear.h:1598
   with Import => True,
        Convention => C,
        External_Name => "nk_window_get_size";

  --/// #### nk_window_get_width
  --/// Returns the width of the currently processed window.
  --///
  --/// !!! WARNING
  --///     Only call this function between calls `nk_begin_xxx` and `nk_end`
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// float nk_window_get_width(const struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --///
  --/// Returns the current window width
  --

   function window_get_width (arg1 : access constant nk_context) return float  -- ./Nuklear/nuklear.h:1614
   with Import => True,
        Convention => C,
        External_Name => "nk_window_get_width";

  --/// #### nk_window_get_height
  --/// Returns the height of the currently processed window.
  --///
  --/// !!! WARNING
  --///     Only call this function between calls `nk_begin_xxx` and `nk_end`
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// float nk_window_get_height(const struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --///
  --/// Returns the current window height
  --

   function window_get_height (arg1 : access constant nk_context) return float  -- ./Nuklear/nuklear.h:1630
   with Import => True,
        Convention => C,
        External_Name => "nk_window_get_height";

  --/// #### nk_window_get_panel
  --/// Returns the underlying panel which contains all processing state of the current window.
  --///
  --/// !!! WARNING
  --///     Only call this function between calls `nk_begin_xxx` and `nk_end`
  --/// !!! WARNING
  --///     Do not keep the returned panel pointer around, it is only valid until `nk_end`
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_panel* nk_window_get_panel(struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --///
  --/// Returns a pointer to window internal `nk_panel` state.
  --

   type nk_panel;
   function window_get_panel (arg1 : access nk_context) return access nk_panel  -- ./Nuklear/nuklear.h:1648
   with Import => True,
        Convention => C,
        External_Name => "nk_window_get_panel";

  --/// #### nk_window_get_content_region
  --/// Returns the position and size of the currently visible and non-clipped space
  --/// inside the currently processed window.
  --///
  --/// !!! WARNING
  --///     Only call this function between calls `nk_begin_xxx` and `nk_end`
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_rect nk_window_get_content_region(struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --///
  --/// Returns `nk_rect` struct with screen position and size (no scrollbar offset)
  --/// of the visible space inside the current window
  --

   function window_get_content_region (arg1 : access nk_context) return nk_rect_t  -- ./Nuklear/nuklear.h:1667
   with Import => True,
        Convention => C,
        External_Name => "nk_window_get_content_region";

  --/// #### nk_window_get_content_region_min
  --/// Returns the upper left position of the currently visible and non-clipped
  --/// space inside the currently processed window.
  --///
  --/// !!! WARNING
  --///     Only call this function between calls `nk_begin_xxx` and `nk_end`
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_vec2 nk_window_get_content_region_min(struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --///
  --/// returns `nk_vec2` struct with  upper left screen position (no scrollbar offset)
  --/// of the visible space inside the current window
  --

   function window_get_content_region_min (arg1 : access nk_context) return nk_vec2_t  -- ./Nuklear/nuklear.h:1686
   with Import => True,
        Convention => C,
        External_Name => "nk_window_get_content_region_min";

  --/// #### nk_window_get_content_region_max
  --/// Returns the lower right screen position of the currently visible and
  --/// non-clipped space inside the currently processed window.
  --///
  --/// !!! WARNING
  --///     Only call this function between calls `nk_begin_xxx` and `nk_end`
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_vec2 nk_window_get_content_region_max(struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --///
  --/// Returns `nk_vec2` struct with lower right screen position (no scrollbar offset)
  --/// of the visible space inside the current window
  --

   function window_get_content_region_max (arg1 : access nk_context) return nk_vec2_t  -- ./Nuklear/nuklear.h:1705
   with Import => True,
        Convention => C,
        External_Name => "nk_window_get_content_region_max";

  --/// #### nk_window_get_content_region_size
  --/// Returns the size of the currently visible and non-clipped space inside the
  --/// currently processed window
  --///
  --/// !!! WARNING
  --///     Only call this function between calls `nk_begin_xxx` and `nk_end`
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_vec2 nk_window_get_content_region_size(struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --///
  --/// Returns `nk_vec2` struct with size the visible space inside the current window
  --

   function window_get_content_region_size (arg1 : access nk_context) return nk_vec2_t  -- ./Nuklear/nuklear.h:1723
   with Import => True,
        Convention => C,
        External_Name => "nk_window_get_content_region_size";

  --/// #### nk_window_get_canvas
  --/// Returns the draw command buffer. Can be used to draw custom widgets
  --/// !!! WARNING
  --///     Only call this function between calls `nk_begin_xxx` and `nk_end`
  --/// !!! WARNING
  --///     Do not keep the returned command buffer pointer around it is only valid until `nk_end`
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_command_buffer* nk_window_get_canvas(struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --///
  --/// Returns a pointer to window internal `nk_command_buffer` struct used as
  --/// drawing canvas. Can be used to do custom drawing.
  --

   type nk_command_buffer;
   function window_get_canvas (arg1 : access nk_context) return access nk_command_buffer  -- ./Nuklear/nuklear.h:1742
   with Import => True,
        Convention => C,
        External_Name => "nk_window_get_canvas";

  --/// #### nk_window_get_scroll
  --/// Gets the scroll offset for the current window
  --/// !!! WARNING
  --///     Only call this function between calls `nk_begin_xxx` and `nk_end`
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_window_get_scroll(struct nk_context *ctx, nk_uint *offset_x, nk_uint *offset_y);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter    | Description
  --/// -------------|-----------------------------------------------------------
  --/// __ctx__      | Must point to an previously initialized `nk_context` struct
  --/// __offset_x__ | A pointer to the x offset output (or NULL to ignore)
  --/// __offset_y__ | A pointer to the y offset output (or NULL to ignore)
  --

   procedure window_get_scroll
     (arg1 : access nk_context;
      offset_x : access nk_uint;
      offset_y : access nk_uint)  -- ./Nuklear/nuklear.h:1758
   with Import => True,
        Convention => C,
        External_Name => "nk_window_get_scroll";

  --/// #### nk_window_has_focus
  --/// Returns if the currently processed window is currently active
  --/// !!! WARNING
  --///     Only call this function between calls `nk_begin_xxx` and `nk_end`
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_window_has_focus(const struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --///
  --/// Returns `false(0)` if current window is not active or `true(1)` if it is
  --

   function window_has_focus (arg1 : access constant nk_context) return nk_bool  -- ./Nuklear/nuklear.h:1773
   with Import => True,
        Convention => C,
        External_Name => "nk_window_has_focus";

  --/// #### nk_window_is_hovered
  --/// Return if the current window is being hovered
  --/// !!! WARNING
  --///     Only call this function between calls `nk_begin_xxx` and `nk_end`
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_window_is_hovered(struct nk_context *ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --///
  --/// Returns `true(1)` if current window is hovered or `false(0)` otherwise
  --

   function window_is_hovered (arg1 : access nk_context) return nk_bool  -- ./Nuklear/nuklear.h:1788
   with Import => True,
        Convention => C,
        External_Name => "nk_window_is_hovered";

  --/// #### nk_window_is_collapsed
  --/// Returns if the window with given name is currently minimized/collapsed
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_window_is_collapsed(struct nk_context *ctx, const char *name);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __name__    | Identifier of window you want to check if it is collapsed
  --///
  --/// Returns `true(1)` if current window is minimized and `false(0)` if window not
  --/// found or is not minimized
  --

   function window_is_collapsed (ctx : access nk_context; name : Interfaces.C.char_array) return nk_bool  -- ./Nuklear/nuklear.h:1803
   with Import => True,
        Convention => C,
        External_Name => "nk_window_is_collapsed";

  --/// #### nk_window_is_closed
  --/// Returns if the window with given name was closed by calling `nk_close`
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_window_is_closed(struct nk_context *ctx, const char *name);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __name__    | Identifier of window you want to check if it is closed
  --///
  --/// Returns `true(1)` if current window was closed or `false(0)` window not found or not closed
  --

   function window_is_closed (arg1 : access nk_context; arg2 : Interfaces.C.char_array) return nk_bool  -- ./Nuklear/nuklear.h:1817
   with Import => True,
        Convention => C,
        External_Name => "nk_window_is_closed";

  --/// #### nk_window_is_hidden
  --/// Returns if the window with given name is hidden
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_window_is_hidden(struct nk_context *ctx, const char *name);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __name__    | Identifier of window you want to check if it is hidden
  --///
  --/// Returns `true(1)` if current window is hidden or `false(0)` window not found or visible
  --

   function window_is_hidden (arg1 : access nk_context; arg2 : Interfaces.C.char_array) return nk_bool  -- ./Nuklear/nuklear.h:1831
   with Import => True,
        Convention => C,
        External_Name => "nk_window_is_hidden";

  --/// #### nk_window_is_active
  --/// Same as nk_window_has_focus for some reason
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_window_is_active(struct nk_context *ctx, const char *name);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __name__    | Identifier of window you want to check if it is active
  --///
  --/// Returns `true(1)` if current window is active or `false(0)` window not found or not active
  --

   function window_is_active (arg1 : access nk_context; arg2 : Interfaces.C.char_array) return nk_bool  -- ./Nuklear/nuklear.h:1845
   with Import => True,
        Convention => C,
        External_Name => "nk_window_is_active";

  --/// #### nk_window_is_any_hovered
  --/// Returns if the any window is being hovered
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_window_is_any_hovered(struct nk_context*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --///
  --/// Returns `true(1)` if any window is hovered or `false(0)` otherwise
  --

   function window_is_any_hovered (arg1 : access nk_context) return nk_bool  -- ./Nuklear/nuklear.h:1858
   with Import => True,
        Convention => C,
        External_Name => "nk_window_is_any_hovered";

  --/// #### nk_item_is_any_active
  --/// Returns if the any window is being hovered or any widget is currently active.
  --/// Can be used to decide if input should be processed by UI or your specific input handling.
  --/// Example could be UI and 3D camera to move inside a 3D space.
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_item_is_any_active(struct nk_context*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --///
  --/// Returns `true(1)` if any window is hovered or any item is active or `false(0)` otherwise
  --

   function item_is_any_active (arg1 : access nk_context) return nk_bool  -- ./Nuklear/nuklear.h:1873
   with Import => True,
        Convention => C,
        External_Name => "nk_item_is_any_active";

  --/// #### nk_window_set_bounds
  --/// Updates position and size of window with passed in name
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_window_set_bounds(struct nk_context*, const char *name, struct nk_rect bounds);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __name__    | Identifier of the window to modify both position and size
  --/// __bounds__  | Must point to a `nk_rect` struct with the new position and size
  --

   procedure window_set_bounds
     (arg1 : access nk_context;
      name : Interfaces.C.char_array;
      bounds : nk_rect_t)  -- ./Nuklear/nuklear.h:1886
   with Import => True,
        Convention => C,
        External_Name => "nk_window_set_bounds";

  --/// #### nk_window_set_position
  --/// Updates position of window with passed name
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_window_set_position(struct nk_context*, const char *name, struct nk_vec2 pos);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __name__    | Identifier of the window to modify both position
  --/// __pos__     | Must point to a `nk_vec2` struct with the new position
  --

   procedure window_set_position
     (arg1 : access nk_context;
      name : Interfaces.C.char_array;
      pos : nk_vec2_t)  -- ./Nuklear/nuklear.h:1899
   with Import => True,
        Convention => C,
        External_Name => "nk_window_set_position";

  --/// #### nk_window_set_size
  --/// Updates size of window with passed in name
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_window_set_size(struct nk_context*, const char *name, struct nk_vec2);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __name__    | Identifier of the window to modify both window size
  --/// __size__    | Must point to a `nk_vec2` struct with new window size
  --

   procedure window_set_size
     (arg1 : access nk_context;
      name : Interfaces.C.char_array;
      arg3 : nk_vec2_t)  -- ./Nuklear/nuklear.h:1912
   with Import => True,
        Convention => C,
        External_Name => "nk_window_set_size";

  --/// #### nk_window_set_focus
  --/// Sets the window with given name as active
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_window_set_focus(struct nk_context*, const char *name);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __name__    | Identifier of the window to set focus on
  --

   procedure window_set_focus (arg1 : access nk_context; name : Interfaces.C.char_array)  -- ./Nuklear/nuklear.h:1924
   with Import => True,
        Convention => C,
        External_Name => "nk_window_set_focus";

  --/// #### nk_window_set_scroll
  --/// Sets the scroll offset for the current window
  --/// !!! WARNING
  --///     Only call this function between calls `nk_begin_xxx` and `nk_end`
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_window_set_scroll(struct nk_context *ctx, nk_uint offset_x, nk_uint offset_y);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter    | Description
  --/// -------------|-----------------------------------------------------------
  --/// __ctx__      | Must point to an previously initialized `nk_context` struct
  --/// __offset_x__ | The x offset to scroll to
  --/// __offset_y__ | The y offset to scroll to
  --

   procedure window_set_scroll
     (arg1 : access nk_context;
      offset_x : nk_uint;
      offset_y : nk_uint)  -- ./Nuklear/nuklear.h:1940
   with Import => True,
        Convention => C,
        External_Name => "nk_window_set_scroll";

  --/// #### nk_window_close
  --/// Closes a window and marks it for being freed at the end of the frame
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_window_close(struct nk_context *ctx, const char *name);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __name__    | Identifier of the window to close
  --

   procedure window_close (ctx : access nk_context; name : Interfaces.C.char_array)  -- ./Nuklear/nuklear.h:1952
   with Import => True,
        Convention => C,
        External_Name => "nk_window_close";

  --/// #### nk_window_collapse
  --/// Updates collapse state of a window with given name
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_window_collapse(struct nk_context*, const char *name, enum nk_collapse_states state);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __name__    | Identifier of the window to close
  --/// __state__   | value out of nk_collapse_states section
  --

   procedure window_collapse
     (arg1 : access nk_context;
      name : Interfaces.C.char_array;
      state : nk_collapse_states)  -- ./Nuklear/nuklear.h:1965
   with Import => True,
        Convention => C,
        External_Name => "nk_window_collapse";

  --/// #### nk_window_collapse_if
  --/// Updates collapse state of a window with given name if given condition is met
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_window_collapse_if(struct nk_context*, const char *name, enum nk_collapse_states, int cond);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __name__    | Identifier of the window to either collapse or maximize
  --/// __state__   | value out of nk_collapse_states section the window should be put into
  --/// __cond__    | condition that has to be met to actually commit the collapse state change
  --

   procedure window_collapse_if
     (arg1 : access nk_context;
      name : Interfaces.C.char_array;
      arg3 : nk_collapse_states;
      cond : int)  -- ./Nuklear/nuklear.h:1979
   with Import => True,
        Convention => C,
        External_Name => "nk_window_collapse_if";

  --/// #### nk_window_show
  --/// updates visibility state of a window with given name
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_window_show(struct nk_context*, const char *name, enum nk_show_states);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __name__    | Identifier of the window to either collapse or maximize
  --/// __state__   | state with either visible or hidden to modify the window with
  --

   procedure window_show
     (arg1 : access nk_context;
      name : Interfaces.C.char_array;
      arg3 : nk_show_states)  -- ./Nuklear/nuklear.h:1992
   with Import => True,
        Convention => C,
        External_Name => "nk_window_show";

  --/// #### nk_window_show_if
  --/// Updates visibility state of a window with given name if a given condition is met
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_window_show_if(struct nk_context*, const char *name, enum nk_show_states, int cond);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __name__    | Identifier of the window to either hide or show
  --/// __state__   | state with either visible or hidden to modify the window with
  --/// __cond__    | condition that has to be met to actually commit the visbility state change
  --

   procedure window_show_if
     (arg1 : access nk_context;
      name : Interfaces.C.char_array;
      arg3 : nk_show_states;
      cond : int)  -- ./Nuklear/nuklear.h:2006
   with Import => True,
        Convention => C,
        External_Name => "nk_window_show_if";

  --/// #### nk_window_show_if
  --/// Line for visual seperation. Draws a line with thickness determined by the current row height.
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_rule_horizontal(struct nk_context *ctx, struct nk_color color, BOOL rounding)
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter       | Description
  --/// ----------------|-------------------------------------------------------
  --/// __ctx__         | Must point to an previously initialized `nk_context` struct
  --/// __color__       | Color of the horizontal line
  --/// __rounding__    | Whether or not to make the line round
  --

   procedure rule_horizontal
     (ctx : access nk_context;
      color : nk_color;
      rounding : nk_bool)  -- ./Nuklear/nuklear.h:2019
   with Import => True,
        Convention => C,
        External_Name => "nk_rule_horizontal";

  -- =============================================================================
  -- *
  -- *                                  LAYOUT
  -- *
  -- * =============================================================================
  --/// ### Layouting
  --/// Layouting in general describes placing widget inside a window with position and size.
  --/// While in this particular implementation there are five different APIs for layouting
  --/// each with different trade offs between control and ease of use. <br /><br />
  --///
  --/// All layouting methods in this library are based around the concept of a row.
  --/// A row has a height the window content grows by and a number of columns and each
  --/// layouting method specifies how each widget is placed inside the row.
  --/// After a row has been allocated by calling a layouting functions and then
  --/// filled with widgets will advance an internal pointer over the allocated row. <br /><br />
  --///
  --/// To actually define a layout you just call the appropriate layouting function
  --/// and each subsequent widget call will place the widget as specified. Important
  --/// here is that if you define more widgets then columns defined inside the layout
  --/// functions it will allocate the next row without you having to make another layouting <br /><br />
  --/// call.
  --///
  --/// Biggest limitation with using all these APIs outside the `nk_layout_space_xxx` API
  --/// is that you have to define the row height for each. However the row height
  --/// often depends on the height of the font. <br /><br />
  --///
  --/// To fix that internally nuklear uses a minimum row height that is set to the
  --/// height plus padding of currently active font and overwrites the row height
  --/// value if zero. <br /><br />
  --///
  --/// If you manually want to change the minimum row height then
  --/// use nk_layout_set_min_row_height, and use nk_layout_reset_min_row_height to
  --/// reset it back to be derived from font height. <br /><br />
  --///
  --/// Also if you change the font in nuklear it will automatically change the minimum
  --/// row height for you and. This means if you change the font but still want
  --/// a minimum row height smaller than the font you have to repush your value. <br /><br />
  --///
  --/// For actually more advanced UI I would even recommend using the `nk_layout_space_xxx`
  --/// layouting method in combination with a cassowary constraint solver (there are
  --/// some versions on github with permissive license model) to take over all control over widget
  --/// layouting yourself. However for quick and dirty layouting using all the other layouting
  --/// functions should be fine.
  --///
  --/// #### Usage
  --/// 1.  __nk_layout_row_dynamic__<br /><br />
  --///     The easiest layouting function is `nk_layout_row_dynamic`. It provides each
  --///     widgets with same horizontal space inside the row and dynamically grows
  --///     if the owning window grows in width. So the number of columns dictates
  --///     the size of each widget dynamically by formula:
  --///
  --///     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --///     widget_width = (window_width - padding - spacing) * (1/colum_count)
  --///     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --///     Just like all other layouting APIs if you define more widget than columns this
  --///     library will allocate a new row and keep all layouting parameters previously
  --///     defined.
  --///
  --///     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --///     if (nk_begin_xxx(...) {
  --///         // first row with height: 30 composed of two widgets
  --///         nk_layout_row_dynamic(&ctx, 30, 2);
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///         //
  --///         // second row with same parameter as defined above
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///         //
  --///         // third row uses 0 for height which will use auto layouting
  --///         nk_layout_row_dynamic(&ctx, 0, 2);
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///     }
  --///     nk_end(...);
  --///     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// 2.  __nk_layout_row_static__<br /><br />
  --///     Another easy layouting function is `nk_layout_row_static`. It provides each
  --///     widget with same horizontal pixel width inside the row and does not grow
  --///     if the owning window scales smaller or bigger.
  --///
  --///     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --///     if (nk_begin_xxx(...) {
  --///         // first row with height: 30 composed of two widgets with width: 80
  --///         nk_layout_row_static(&ctx, 30, 80, 2);
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///         //
  --///         // second row with same parameter as defined above
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///         //
  --///         // third row uses 0 for height which will use auto layouting
  --///         nk_layout_row_static(&ctx, 0, 80, 2);
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///     }
  --///     nk_end(...);
  --///     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// 3.  __nk_layout_row_xxx__<br /><br />
  --///     A little bit more advanced layouting API are functions `nk_layout_row_begin`,
  --///     `nk_layout_row_push` and `nk_layout_row_end`. They allow to directly
  --///     specify each column pixel or window ratio in a row. It supports either
  --///     directly setting per column pixel width or widget window ratio but not
  --///     both. Furthermore it is a immediate mode API so each value is directly
  --///     pushed before calling a widget. Therefore the layout is not automatically
  --///     repeating like the last two layouting functions.
  --///
  --///     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --///     if (nk_begin_xxx(...) {
  --///         // first row with height: 25 composed of two widgets with width 60 and 40
  --///         nk_layout_row_begin(ctx, STATIC, 25, 2);
  --///         nk_layout_row_push(ctx, 60);
  --///         nk_widget(...);
  --///         nk_layout_row_push(ctx, 40);
  --///         nk_widget(...);
  --///         nk_layout_row_end(ctx);
  --///         //
  --///         // second row with height: 25 composed of two widgets with window ratio 0.25 and 0.75
  --///         nk_layout_row_begin(ctx, DYNAMIC, 25, 2);
  --///         nk_layout_row_push(ctx, 0.25f);
  --///         nk_widget(...);
  --///         nk_layout_row_push(ctx, 0.75f);
  --///         nk_widget(...);
  --///         nk_layout_row_end(ctx);
  --///         //
  --///         // third row with auto generated height: composed of two widgets with window ratio 0.25 and 0.75
  --///         nk_layout_row_begin(ctx, DYNAMIC, 0, 2);
  --///         nk_layout_row_push(ctx, 0.25f);
  --///         nk_widget(...);
  --///         nk_layout_row_push(ctx, 0.75f);
  --///         nk_widget(...);
  --///         nk_layout_row_end(ctx);
  --///     }
  --///     nk_end(...);
  --///     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// 4.  __nk_layout_row__<br /><br />
  --///     The array counterpart to API nk_layout_row_xxx is the single nk_layout_row
  --///     functions. Instead of pushing either pixel or window ratio for every widget
  --///     it allows to define it by array. The trade of for less control is that
  --///     `nk_layout_row` is automatically repeating. Otherwise the behavior is the
  --///     same.
  --///
  --///     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --///     if (nk_begin_xxx(...) {
  --///         // two rows with height: 30 composed of two widgets with width 60 and 40
  --///         const float ratio[] = {60,40};
  --///         nk_layout_row(ctx, STATIC, 30, 2, ratio);
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///         //
  --///         // two rows with height: 30 composed of two widgets with window ratio 0.25 and 0.75
  --///         const float ratio[] = {0.25, 0.75};
  --///         nk_layout_row(ctx, DYNAMIC, 30, 2, ratio);
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///         //
  --///         // two rows with auto generated height composed of two widgets with window ratio 0.25 and 0.75
  --///         const float ratio[] = {0.25, 0.75};
  --///         nk_layout_row(ctx, DYNAMIC, 30, 2, ratio);
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///     }
  --///     nk_end(...);
  --///     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// 5.  __nk_layout_row_template_xxx__<br /><br />
  --///     The most complex and second most flexible API is a simplified flexbox version without
  --///     line wrapping and weights for dynamic widgets. It is an immediate mode API but
  --///     unlike `nk_layout_row_xxx` it has auto repeat behavior and needs to be called
  --///     before calling the templated widgets.
  --///     The row template layout has three different per widget size specifier. The first
  --///     one is the `nk_layout_row_template_push_static`  with fixed widget pixel width.
  --///     They do not grow if the row grows and will always stay the same.
  --///     The second size specifier is `nk_layout_row_template_push_variable`
  --///     which defines a minimum widget size but it also can grow if more space is available
  --///     not taken by other widgets.
  --///     Finally there are dynamic widgets with `nk_layout_row_template_push_dynamic`
  --///     which are completely flexible and unlike variable widgets can even shrink
  --///     to zero if not enough space is provided.
  --///
  --///     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --///     if (nk_begin_xxx(...) {
  --///         // two rows with height: 30 composed of three widgets
  --///         nk_layout_row_template_begin(ctx, 30);
  --///         nk_layout_row_template_push_dynamic(ctx);
  --///         nk_layout_row_template_push_variable(ctx, 80);
  --///         nk_layout_row_template_push_static(ctx, 80);
  --///         nk_layout_row_template_end(ctx);
  --///         //
  --///         // first row
  --///         nk_widget(...); // dynamic widget can go to zero if not enough space
  --///         nk_widget(...); // variable widget with min 80 pixel but can grow bigger if enough space
  --///         nk_widget(...); // static widget with fixed 80 pixel width
  --///         //
  --///         // second row same layout
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///         nk_widget(...);
  --///     }
  --///     nk_end(...);
  --///     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// 6.  __nk_layout_space_xxx__<br /><br />
  --///     Finally the most flexible API directly allows you to place widgets inside the
  --///     window. The space layout API is an immediate mode API which does not support
  --///     row auto repeat and directly sets position and size of a widget. Position
  --///     and size hereby can be either specified as ratio of allocated space or
  --///     allocated space local position and pixel size. Since this API is quite
  --///     powerful there are a number of utility functions to get the available space
  --///     and convert between local allocated space and screen space.
  --///
  --///     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --///     if (nk_begin_xxx(...) {
  --///         // static row with height: 500 (you can set column count to INT_MAX if you don't want to be bothered)
  --///         nk_layout_space_begin(ctx, STATIC, 500, INT_MAX);
  --///         nk_layout_space_push(ctx, nk_rect(0,0,150,200));
  --///         nk_widget(...);
  --///         nk_layout_space_push(ctx, nk_rect(200,200,100,200));
  --///         nk_widget(...);
  --///         nk_layout_space_end(ctx);
  --///         //
  --///         // dynamic row with height: 500 (you can set column count to INT_MAX if you don't want to be bothered)
  --///         nk_layout_space_begin(ctx, DYNAMIC, 500, INT_MAX);
  --///         nk_layout_space_push(ctx, nk_rect(0.5,0.5,0.1,0.1));
  --///         nk_widget(...);
  --///         nk_layout_space_push(ctx, nk_rect(0.7,0.6,0.1,0.1));
  --///         nk_widget(...);
  --///     }
  --///     nk_end(...);
  --///     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// #### Reference
  --/// Function                                | Description
  --/// ----------------------------------------|------------------------------------
  --/// nk_layout_set_min_row_height            | Set the currently used minimum row height to a specified value
  --/// nk_layout_reset_min_row_height          | Resets the currently used minimum row height to font height
  --/// nk_layout_widget_bounds                 | Calculates current width a static layout row can fit inside a window
  --/// nk_layout_ratio_from_pixel              | Utility functions to calculate window ratio from pixel size
  --//
  --/// nk_layout_row_dynamic                   | Current layout is divided into n same sized growing columns
  --/// nk_layout_row_static                    | Current layout is divided into n same fixed sized columns
  --/// nk_layout_row_begin                     | Starts a new row with given height and number of columns
  --/// nk_layout_row_push                      | Pushes another column with given size or window ratio
  --/// nk_layout_row_end                       | Finished previously started row
  --/// nk_layout_row                           | Specifies row columns in array as either window ratio or size
  --//
  --/// nk_layout_row_template_begin            | Begins the row template declaration
  --/// nk_layout_row_template_push_dynamic     | Adds a dynamic column that dynamically grows and can go to zero if not enough space
  --/// nk_layout_row_template_push_variable    | Adds a variable column that dynamically grows but does not shrink below specified pixel width
  --/// nk_layout_row_template_push_static      | Adds a static column that does not grow and will always have the same size
  --/// nk_layout_row_template_end              | Marks the end of the row template
  --//
  --/// nk_layout_space_begin                   | Begins a new layouting space that allows to specify each widgets position and size
  --/// nk_layout_space_push                    | Pushes position and size of the next widget in own coordinate space either as pixel or ratio
  --/// nk_layout_space_end                     | Marks the end of the layouting space
  --//
  --/// nk_layout_space_bounds                  | Callable after nk_layout_space_begin and returns total space allocated
  --/// nk_layout_space_to_screen               | Converts vector from nk_layout_space coordinate space into screen space
  --/// nk_layout_space_to_local                | Converts vector from screen space into nk_layout_space coordinates
  --/// nk_layout_space_rect_to_screen          | Converts rectangle from nk_layout_space coordinate space into screen space
  --/// nk_layout_space_rect_to_local           | Converts rectangle from screen space into nk_layout_space coordinates
  --

   subtype nk_widget_align is unsigned;
   nk_widget_align_WIDGET_ALIGN_LEFT : constant nk_widget_align := 1;
   nk_widget_align_WIDGET_ALIGN_CENTERED : constant nk_widget_align := 2;
   nk_widget_align_WIDGET_ALIGN_RIGHT : constant nk_widget_align := 4;
   nk_widget_align_WIDGET_ALIGN_TOP : constant nk_widget_align := 8;
   nk_widget_align_WIDGET_ALIGN_MIDDLE : constant nk_widget_align := 16;
   nk_widget_align_WIDGET_ALIGN_BOTTOM : constant nk_widget_align := 32;  -- ./Nuklear/nuklear.h:2294

   subtype nk_widget_alignment is unsigned;
   nk_widget_alignment_WIDGET_LEFT : constant nk_widget_alignment := 17;
   nk_widget_alignment_WIDGET_CENTERED : constant nk_widget_alignment := 18;
   nk_widget_alignment_WIDGET_RIGHT : constant nk_widget_alignment := 20;  -- ./Nuklear/nuklear.h:2302

  --/// #### nk_layout_set_min_row_height
  --/// Sets the currently used minimum row height.
  --/// !!! WARNING
  --///     The passed height needs to include both your preferred row height
  --///     as well as padding. No internal padding is added.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_layout_set_min_row_height(struct nk_context*, float height);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_begin_xxx`
  --/// __height__  | New minimum row height to be used for auto generating the row height
  --

   procedure layout_set_min_row_height (arg1 : access nk_context; height : float)  -- ./Nuklear/nuklear.h:2323
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_set_min_row_height";

  --/// #### nk_layout_reset_min_row_height
  --/// Reset the currently used minimum row height back to `font_height + text_padding + padding`
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_layout_reset_min_row_height(struct nk_context*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_begin_xxx`
  --

   procedure layout_reset_min_row_height (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:2334
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_reset_min_row_height";

  --/// #### nk_layout_widget_bounds
  --/// Returns the width of the next row allocate by one of the layouting functions
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_rect nk_layout_widget_bounds(struct nk_context*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_begin_xxx`
  --///
  --/// Return `nk_rect` with both position and size of the next row
  --

   function layout_widget_bounds (arg1 : access nk_context) return nk_rect_t  -- ./Nuklear/nuklear.h:2347
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_widget_bounds";

  --/// #### nk_layout_ratio_from_pixel
  --/// Utility functions to calculate window ratio from pixel size
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// float nk_layout_ratio_from_pixel(struct nk_context*, float pixel_width);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_begin_xxx`
  --/// __pixel__   | Pixel_width to convert to window ratio
  --///
  --/// Returns `nk_rect` with both position and size of the next row
  --

   function layout_ratio_from_pixel (arg1 : access nk_context; pixel_width : float) return float  -- ./Nuklear/nuklear.h:2361
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_ratio_from_pixel";

  --/// #### nk_layout_row_dynamic
  --/// Sets current row layout to share horizontal space
  --/// between @cols number of widgets evenly. Once called all subsequent widget
  --/// calls greater than @cols will allocate a new row with same layout.
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_layout_row_dynamic(struct nk_context *ctx, float height, int cols);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_begin_xxx`
  --/// __height__  | Holds height of each widget in row or zero for auto layouting
  --/// __columns__ | Number of widget inside row
  --

   procedure layout_row_dynamic
     (ctx : access nk_context;
      height : float;
      cols : int)  -- ./Nuklear/nuklear.h:2376
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_row_dynamic";

  --/// #### nk_layout_row_static
  --/// Sets current row layout to fill @cols number of widgets
  --/// in row with same @item_width horizontal size. Once called all subsequent widget
  --/// calls greater than @cols will allocate a new row with same layout.
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_layout_row_static(struct nk_context *ctx, float height, int item_width, int cols);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_begin_xxx`
  --/// __height__  | Holds height of each widget in row or zero for auto layouting
  --/// __width__   | Holds pixel width of each widget in the row
  --/// __columns__ | Number of widget inside row
  --

   procedure layout_row_static
     (ctx : access nk_context;
      height : float;
      item_width : int;
      cols : int)  -- ./Nuklear/nuklear.h:2392
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_row_static";

  --/// #### nk_layout_row_begin
  --/// Starts a new dynamic or fixed row with given height and columns.
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_layout_row_begin(struct nk_context *ctx, enum nk_layout_format fmt, float row_height, int cols);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_begin_xxx`
  --/// __fmt__     | either `DYNAMIC` for window ratio or `NK_STATIC` for fixed size columns
  --/// __height__  | holds height of each widget in row or zero for auto layouting
  --/// __columns__ | Number of widget inside row
  --

   procedure layout_row_begin
     (ctx : access nk_context;
      fmt : nk_layout_format;
      row_height : float;
      cols : int)  -- ./Nuklear/nuklear.h:2406
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_row_begin";

  --/// #### nk_layout_row_push
  --/// Specifies either window ratio or width of a single column
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_layout_row_push(struct nk_context*, float value);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_begin_xxx`
  --/// __value__   | either a window ratio or fixed width depending on @fmt in previous `nk_layout_row_begin` call
  --

   procedure layout_row_push (arg1 : access nk_context; value : float)  -- ./Nuklear/nuklear.h:2418
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_row_push";

  --/// #### nk_layout_row_end
  --/// Finished previously started row
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_layout_row_end(struct nk_context*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_begin_xxx`
  --

   procedure layout_row_end (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:2429
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_row_end";

  --/// #### nk_layout_row
  --/// Specifies row columns in array as either window ratio or size
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_layout_row(struct nk_context*, enum nk_layout_format, float height, int cols, const float *ratio);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_begin_xxx`
  --/// __fmt__     | Either `DYNAMIC` for window ratio or `NK_STATIC` for fixed size columns
  --/// __height__  | Holds height of each widget in row or zero for auto layouting
  --/// __columns__ | Number of widget inside row
  --

   procedure layout_row
     (arg1 : access nk_context;
      arg2 : nk_layout_format;
      height : float;
      cols : int;
      ratio : access float)  -- ./Nuklear/nuklear.h:2443
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_row";

  --/// #### nk_layout_row_template_begin
  --/// Begins the row template declaration
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_layout_row_template_begin(struct nk_context*, float row_height);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_begin_xxx`
  --/// __height__  | Holds height of each widget in row or zero for auto layouting
  --

   procedure layout_row_template_begin (arg1 : access nk_context; row_height : float)  -- ./Nuklear/nuklear.h:2455
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_row_template_begin";

  --/// #### nk_layout_row_template_push_dynamic
  --/// Adds a dynamic column that dynamically grows and can go to zero if not enough space
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_layout_row_template_push_dynamic(struct nk_context*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_begin_xxx`
  --/// __height__  | Holds height of each widget in row or zero for auto layouting
  --

   procedure layout_row_template_push_dynamic (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:2467
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_row_template_push_dynamic";

  --/// #### nk_layout_row_template_push_variable
  --/// Adds a variable column that dynamically grows but does not shrink below specified pixel width
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_layout_row_template_push_variable(struct nk_context*, float min_width);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_begin_xxx`
  --/// __width__   | Holds the minimum pixel width the next column must always be
  --

   procedure layout_row_template_push_variable (arg1 : access nk_context; min_width : float)  -- ./Nuklear/nuklear.h:2479
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_row_template_push_variable";

  --/// #### nk_layout_row_template_push_static
  --/// Adds a static column that does not grow and will always have the same size
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_layout_row_template_push_static(struct nk_context*, float width);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_begin_xxx`
  --/// __width__   | Holds the absolute pixel width value the next column must be
  --

   procedure layout_row_template_push_static (arg1 : access nk_context; width : float)  -- ./Nuklear/nuklear.h:2491
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_row_template_push_static";

  --/// #### nk_layout_row_template_end
  --/// Marks the end of the row template
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_layout_row_template_end(struct nk_context*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_begin_xxx`
  --

   procedure layout_row_template_end (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:2502
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_row_template_end";

  --/// #### nk_layout_space_begin
  --/// Begins a new layouting space that allows to specify each widgets position and size.
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_layout_space_begin(struct nk_context*, enum nk_layout_format, float height, int widget_count);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_begin_xxx`
  --/// __fmt__     | Either `DYNAMIC` for window ratio or `NK_STATIC` for fixed size columns
  --/// __height__  | Holds height of each widget in row or zero for auto layouting
  --/// __columns__ | Number of widgets inside row
  --

   procedure layout_space_begin
     (arg1 : access nk_context;
      arg2 : nk_layout_format;
      height : float;
      widget_count : int)  -- ./Nuklear/nuklear.h:2516
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_space_begin";

  --/// #### nk_layout_space_push
  --/// Pushes position and size of the next widget in own coordinate space either as pixel or ratio
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_layout_space_push(struct nk_context *ctx, struct nk_rect bounds);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_layout_space_begin`
  --/// __bounds__  | Position and size in laoyut space local coordinates
  --

   procedure layout_space_push (arg1 : access nk_context; bounds : nk_rect_t)  -- ./Nuklear/nuklear.h:2528
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_space_push";

  --/// #### nk_layout_space_end
  --/// Marks the end of the layout space
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_layout_space_end(struct nk_context*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_layout_space_begin`
  --

   procedure layout_space_end (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:2539
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_space_end";

  --/// #### nk_layout_space_bounds
  --/// Utility function to calculate total space allocated for `nk_layout_space`
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_rect nk_layout_space_bounds(struct nk_context*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_layout_space_begin`
  --///
  --/// Returns `nk_rect` holding the total space allocated
  --

   function layout_space_bounds (arg1 : access nk_context) return nk_rect_t  -- ./Nuklear/nuklear.h:2552
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_space_bounds";

  --/// #### nk_layout_space_to_screen
  --/// Converts vector from nk_layout_space coordinate space into screen space
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_vec2 nk_layout_space_to_screen(struct nk_context*, struct nk_vec2);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_layout_space_begin`
  --/// __vec__     | Position to convert from layout space into screen coordinate space
  --///
  --/// Returns transformed `nk_vec2` in screen space coordinates
  --

   function layout_space_to_screen (arg1 : access nk_context; arg2 : nk_vec2_t) return nk_vec2_t  -- ./Nuklear/nuklear.h:2566
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_space_to_screen";

  --/// #### nk_layout_space_to_local
  --/// Converts vector from layout space into screen space
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_vec2 nk_layout_space_to_local(struct nk_context*, struct nk_vec2);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_layout_space_begin`
  --/// __vec__     | Position to convert from screen space into layout coordinate space
  --///
  --/// Returns transformed `nk_vec2` in layout space coordinates
  --

   function layout_space_to_local (arg1 : access nk_context; arg2 : nk_vec2_t) return nk_vec2_t  -- ./Nuklear/nuklear.h:2580
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_space_to_local";

  --/// #### nk_layout_space_rect_to_screen
  --/// Converts rectangle from screen space into layout space
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_rect nk_layout_space_rect_to_screen(struct nk_context*, struct nk_rect);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_layout_space_begin`
  --/// __bounds__  | Rectangle to convert from layout space into screen space
  --///
  --/// Returns transformed `nk_rect` in screen space coordinates
  --

   function layout_space_rect_to_screen (arg1 : access nk_context; arg2 : nk_rect_t) return nk_rect_t  -- ./Nuklear/nuklear.h:2594
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_space_rect_to_screen";

  --/// #### nk_layout_space_rect_to_local
  --/// Converts rectangle from layout space into screen space
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_rect nk_layout_space_rect_to_local(struct nk_context*, struct nk_rect);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_layout_space_begin`
  --/// __bounds__  | Rectangle to convert from layout space into screen space
  --///
  --/// Returns transformed `nk_rect` in layout space coordinates
  --

   function layout_space_rect_to_local (arg1 : access nk_context; arg2 : nk_rect_t) return nk_rect_t  -- ./Nuklear/nuklear.h:2608
   with Import => True,
        Convention => C,
        External_Name => "nk_layout_space_rect_to_local";

  --/// #### nk_spacer
  --/// Spacer is a dummy widget that consumes space as usual but doesn't draw anything
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_spacer(struct nk_context* );
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after call `nk_layout_space_begin`
  --///
  --

   procedure spacer (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:2621
   with Import => True,
        Convention => C,
        External_Name => "nk_spacer";

  -- =============================================================================
  -- *
  -- *                                  GROUP
  -- *
  -- * =============================================================================
  --/// ### Groups
  --/// Groups are basically windows inside windows. They allow to subdivide space
  --/// in a window to layout widgets as a group. Almost all more complex widget
  --/// layouting requirements can be solved using groups and basic layouting
  --/// fuctionality. Groups just like windows are identified by an unique name and
  --/// internally keep track of scrollbar offsets by default. However additional
  --/// versions are provided to directly manage the scrollbar.
  --///
  --/// #### Usage
  --/// To create a group you have to call one of the three `nk_group_begin_xxx`
  --/// functions to start group declarations and `nk_group_end` at the end. Furthermore it
  --/// is required to check the return value of `nk_group_begin_xxx` and only process
  --/// widgets inside the window if the value is not 0.
  --/// Nesting groups is possible and even encouraged since many layouting schemes
  --/// can only be achieved by nesting. Groups, unlike windows, need `nk_group_end`
  --/// to be only called if the corresponding `nk_group_begin_xxx` call does not return 0:
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// if (nk_group_begin_xxx(ctx, ...) {
  --///     // [... widgets ...]
  --///     nk_group_end(ctx);
  --/// }
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// In the grand concept groups can be called after starting a window
  --/// with `nk_begin_xxx` and before calling `nk_end`:
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// struct nk_context ctx;
  --/// nk_init_xxx(&ctx, ...);
  --/// while (1) {
  --///     // Input
  --///     Event evt;
  --///     nk_input_begin(&ctx);
  --///     while (GetEvent(&evt)) {
  --///         if (evt.type == MOUSE_MOVE)
  --///             nk_input_motion(&ctx, evt.motion.x, evt.motion.y);
  --///         else if (evt.type == [...]) {
  --///             nk_input_xxx(...);
  --///         }
  --///     }
  --///     nk_input_end(&ctx);
  --///     //
  --///     // Window
  --///     if (nk_begin_xxx(...) {
  --///         // [...widgets...]
  --///         nk_layout_row_dynamic(...);
  --///         if (nk_group_begin_xxx(ctx, ...) {
  --///             //[... widgets ...]
  --///             nk_group_end(ctx);
  --///         }
  --///     }
  --///     nk_end(ctx);
  --///     //
  --///     // Draw
  --///     const struct nk_command *cmd = 0;
  --///     nk_foreach(cmd, &ctx) {
  --///     switch (cmd->type) {
  --///     case COMMAND_LINE:
  --///         your_draw_line_function(...)
  --///         break;
  --///     case COMMAND_RECT
  --///         your_draw_rect_function(...)
  --///         break;
  --///     case ...:
  --///         // [...]
  --///     }
  --///     nk_clear(&ctx);
  --/// }
  --/// nk_free(&ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --/// #### Reference
  --/// Function                        | Description
  --/// --------------------------------|-------------------------------------------
  --/// nk_group_begin                  | Start a new group with internal scrollbar handling
  --/// nk_group_begin_titled           | Start a new group with separated name and title and internal scrollbar handling
  --/// nk_group_end                    | Ends a group. Should only be called if nk_group_begin returned non-zero
  --/// nk_group_scrolled_offset_begin  | Start a new group with manual separated handling of scrollbar x- and y-offset
  --/// nk_group_scrolled_begin         | Start a new group with manual scrollbar handling
  --/// nk_group_scrolled_end           | Ends a group with manual scrollbar handling. Should only be called if nk_group_begin returned non-zero
  --/// nk_group_get_scroll             | Gets the scroll offset for the given group
  --/// nk_group_set_scroll             | Sets the scroll offset for the given group
  --

  --/// #### nk_group_begin
  --/// Starts a new widget group. Requires a previous layouting function to specify a pos/size.
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_group_begin(struct nk_context*, const char *title, nk_flags);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __title__   | Must be an unique identifier for this group that is also used for the group header
  --/// __flags__   | Window flags defined in the nk_panel_flags section with a number of different group behaviors
  --///
  --/// Returns `true(1)` if visible and fillable with widgets or `false(0)` otherwise
  --

   function group_begin
     (arg1 : access nk_context;
      title : Interfaces.C.char_array;
      arg3 : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:2726
   with Import => True,
        Convention => C,
        External_Name => "nk_group_begin";

  --/// #### nk_group_begin_titled
  --/// Starts a new widget group. Requires a previous layouting function to specify a pos/size.
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_group_begin_titled(struct nk_context*, const char *name, const char *title, nk_flags);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __id__      | Must be an unique identifier for this group
  --/// __title__   | Group header title
  --/// __flags__   | Window flags defined in the nk_panel_flags section with a number of different group behaviors
  --///
  --/// Returns `true(1)` if visible and fillable with widgets or `false(0)` otherwise
  --

   function group_begin_titled
     (arg1 : access nk_context;
      name : Interfaces.C.char_array;
      title : Interfaces.C.char_array;
      arg4 : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:2742
   with Import => True,
        Convention => C,
        External_Name => "nk_group_begin_titled";

  --/// #### nk_group_end
  --/// Ends a widget group
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_group_end(struct nk_context*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --

   procedure group_end (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:2753
   with Import => True,
        Convention => C,
        External_Name => "nk_group_end";

  --/// #### nk_group_scrolled_offset_begin
  --/// starts a new widget group. requires a previous layouting function to specify
  --/// a size. Does not keep track of scrollbar.
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_group_scrolled_offset_begin(struct nk_context*, nk_uint *x_offset, nk_uint *y_offset, const char *title, nk_flags flags);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __x_offset__| Scrollbar x-offset to offset all widgets inside the group horizontally.
  --/// __y_offset__| Scrollbar y-offset to offset all widgets inside the group vertically
  --/// __title__   | Window unique group title used to both identify and display in the group header
  --/// __flags__   | Window flags from the nk_panel_flags section
  --///
  --/// Returns `true(1)` if visible and fillable with widgets or `false(0)` otherwise
  --

   function group_scrolled_offset_begin
     (arg1 : access nk_context;
      x_offset : access nk_uint;
      y_offset : access nk_uint;
      title : Interfaces.C.char_array;
      flags : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:2771
   with Import => True,
        Convention => C,
        External_Name => "nk_group_scrolled_offset_begin";

  --/// #### nk_group_scrolled_begin
  --/// Starts a new widget group. requires a previous
  --/// layouting function to specify a size. Does not keep track of scrollbar.
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_group_scrolled_begin(struct nk_context*, struct nk_scroll *off, const char *title, nk_flags);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __off__     | Both x- and y- scroll offset. Allows for manual scrollbar control
  --/// __title__   | Window unique group title used to both identify and display in the group header
  --/// __flags__   | Window flags from nk_panel_flags section
  --///
  --/// Returns `true(1)` if visible and fillable with widgets or `false(0)` otherwise
  --

   function group_scrolled_begin
     (arg1 : access nk_context;
      off : access nk_scroll;
      title : Interfaces.C.char_array;
      arg4 : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:2788
   with Import => True,
        Convention => C,
        External_Name => "nk_group_scrolled_begin";

  --/// #### nk_group_scrolled_end
  --/// Ends a widget group after calling nk_group_scrolled_offset_begin or nk_group_scrolled_begin.
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_group_scrolled_end(struct nk_context*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --

   procedure group_scrolled_end (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:2799
   with Import => True,
        Convention => C,
        External_Name => "nk_group_scrolled_end";

  --/// #### nk_group_get_scroll
  --/// Gets the scroll position of the given group.
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_group_get_scroll(struct nk_context*, const char *id, nk_uint *x_offset, nk_uint *y_offset);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter    | Description
  --/// -------------|-----------------------------------------------------------
  --/// __ctx__      | Must point to an previously initialized `nk_context` struct
  --/// __id__       | The id of the group to get the scroll position of
  --/// __x_offset__ | A pointer to the x offset output (or NULL to ignore)
  --/// __y_offset__ | A pointer to the y offset output (or NULL to ignore)
  --

   procedure group_get_scroll
     (arg1 : access nk_context;
      id : Interfaces.C.char_array;
      x_offset : access nk_uint;
      y_offset : access nk_uint)  -- ./Nuklear/nuklear.h:2813
   with Import => True,
        Convention => C,
        External_Name => "nk_group_get_scroll";

  --/// #### nk_group_set_scroll
  --/// Sets the scroll position of the given group.
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_group_set_scroll(struct nk_context*, const char *id, nk_uint x_offset, nk_uint y_offset);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter    | Description
  --/// -------------|-----------------------------------------------------------
  --/// __ctx__      | Must point to an previously initialized `nk_context` struct
  --/// __id__       | The id of the group to scroll
  --/// __x_offset__ | The x offset to scroll to
  --/// __y_offset__ | The y offset to scroll to
  --

   procedure group_set_scroll
     (arg1 : access nk_context;
      id : Interfaces.C.char_array;
      x_offset : nk_uint;
      y_offset : nk_uint)  -- ./Nuklear/nuklear.h:2827
   with Import => True,
        Convention => C,
        External_Name => "nk_group_set_scroll";

  -- =============================================================================
  -- *
  -- *                                  TREE
  -- *
  -- * =============================================================================
  --/// ### Tree
  --/// Trees represent two different concept. First the concept of a collapsible
  --/// UI section that can be either in a hidden or visible state. They allow the UI
  --/// user to selectively minimize the current set of visible UI to comprehend.
  --/// The second concept are tree widgets for visual UI representation of trees.<br /><br />
  --///
  --/// Trees thereby can be nested for tree representations and multiple nested
  --/// collapsible UI sections. All trees are started by calling of the
  --/// `nk_tree_xxx_push_tree` functions and ended by calling one of the
  --/// `nk_tree_xxx_pop_xxx()` functions. Each starting functions takes a title label
  --/// and optionally an image to be displayed and the initial collapse state from
  --/// the nk_collapse_states section.<br /><br />
  --///
  --/// The runtime state of the tree is either stored outside the library by the caller
  --/// or inside which requires a unique ID. The unique ID can either be generated
  --/// automatically from `__FILE__` and `__LINE__` with function `nk_tree_push`,
  --/// by `__FILE__` and a user provided ID generated for example by loop index with
  --/// function `nk_tree_push_id` or completely provided from outside by user with
  --/// function `nk_tree_push_hashed`.
  --///
  --/// #### Usage
  --/// To create a tree you have to call one of the seven `nk_tree_xxx_push_xxx`
  --/// functions to start a collapsible UI section and `nk_tree_xxx_pop` to mark the
  --/// end.
  --/// Each starting function will either return `false(0)` if the tree is collapsed
  --/// or hidden and therefore does not need to be filled with content or `true(1)`
  --/// if visible and required to be filled.
  --///
  --/// !!! Note
  --///     The tree header does not require and layouting function and instead
  --///     calculates a auto height based on the currently used font size
  --///
  --/// The tree ending functions only need to be called if the tree content is
  --/// actually visible. So make sure the tree push function is guarded by `if`
  --/// and the pop call is only taken if the tree is visible.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// if (nk_tree_push(ctx, TREE_TAB, "Tree", NK_MINIMIZED)) {
  --///     nk_layout_row_dynamic(...);
  --///     nk_widget(...);
  --///     nk_tree_pop(ctx);
  --/// }
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// #### Reference
  --/// Function                    | Description
  --/// ----------------------------|-------------------------------------------
  --/// nk_tree_push                | Start a collapsible UI section with internal state management
  --/// nk_tree_push_id             | Start a collapsible UI section with internal state management callable in a look
  --/// nk_tree_push_hashed         | Start a collapsible UI section with internal state management with full control over internal unique ID use to store state
  --/// nk_tree_image_push          | Start a collapsible UI section with image and label header
  --/// nk_tree_image_push_id       | Start a collapsible UI section with image and label header and internal state management callable in a look
  --/// nk_tree_image_push_hashed   | Start a collapsible UI section with image and label header and internal state management with full control over internal unique ID use to store state
  --/// nk_tree_pop                 | Ends a collapsible UI section
  --//
  --/// nk_tree_state_push          | Start a collapsible UI section with external state management
  --/// nk_tree_state_image_push    | Start a collapsible UI section with image and label header and external state management
  --/// nk_tree_state_pop           | Ends a collapsabale UI section
  --///
  --/// #### nk_tree_type
  --/// Flag            | Description
  --/// ----------------|----------------------------------------
  --/// TREE_NODE    | Highlighted tree header to mark a collapsible UI section
  --/// TREE_TAB     | Non-highlighted tree header closer to tree representations
  --

  --/// #### nk_tree_push
  --/// Starts a collapsible UI section with internal state management
  --/// !!! WARNING
  --///     To keep track of the runtime tree collapsible state this function uses
  --///     defines `__FILE__` and `__LINE__` to generate a unique ID. If you want
  --///     to call this function in a loop please use `nk_tree_push_id` or
  --///     `nk_tree_push_hashed` instead.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// #define nk_tree_push(ctx, type, title, state)
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __type__    | Value from the nk_tree_type section to visually mark a tree node header as either a collapseable UI section or tree node
  --/// __title__   | Label printed in the tree header
  --/// __state__   | Initial tree state value out of nk_collapse_states
  --///
  --/// Returns `true(1)` if visible and fillable with widgets or `false(0)` otherwise
  --

  --/// #### nk_tree_push_id
  --/// Starts a collapsible UI section with internal state management callable in a look
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// #define nk_tree_push_id(ctx, type, title, state, id)
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __type__    | Value from the nk_tree_type section to visually mark a tree node header as either a collapseable UI section or tree node
  --/// __title__   | Label printed in the tree header
  --/// __state__   | Initial tree state value out of nk_collapse_states
  --/// __id__      | Loop counter index if this function is called in a loop
  --///
  --/// Returns `true(1)` if visible and fillable with widgets or `false(0)` otherwise
  --

  --/// #### nk_tree_push_hashed
  --/// Start a collapsible UI section with internal state management with full
  --/// control over internal unique ID used to store state
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_tree_push_hashed(struct nk_context*, enum nk_tree_type, const char *title, enum nk_collapse_states initial_state, const char *hash, int len,int seed);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __type__    | Value from the nk_tree_type section to visually mark a tree node header as either a collapseable UI section or tree node
  --/// __title__   | Label printed in the tree header
  --/// __state__   | Initial tree state value out of nk_collapse_states
  --/// __hash__    | Memory block or string to generate the ID from
  --/// __len__     | Size of passed memory block or string in __hash__
  --/// __seed__    | Seeding value if this function is called in a loop or default to `0`
  --///
  --/// Returns `true(1)` if visible and fillable with widgets or `false(0)` otherwise
  --

   function tree_push_hashed
     (arg1 : access nk_context;
      arg2 : nk_tree_type;
      title : Interfaces.C.char_array;
      initial_state : nk_collapse_states;
      hash : Interfaces.C.char_array;
      len : int;
      seed : int) return nk_bool  -- ./Nuklear/nuklear.h:2956
   with Import => True,
        Convention => C,
        External_Name => "nk_tree_push_hashed";

  --/// #### nk_tree_image_push
  --/// Start a collapsible UI section with image and label header
  --/// !!! WARNING
  --///     To keep track of the runtime tree collapsible state this function uses
  --///     defines `__FILE__` and `__LINE__` to generate a unique ID. If you want
  --///     to call this function in a loop please use `nk_tree_image_push_id` or
  --///     `nk_tree_image_push_hashed` instead.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// #define nk_tree_image_push(ctx, type, img, title, state)
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --//
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __type__    | Value from the nk_tree_type section to visually mark a tree node header as either a collapseable UI section or tree node
  --/// __img__     | Image to display inside the header on the left of the label
  --/// __title__   | Label printed in the tree header
  --/// __state__   | Initial tree state value out of nk_collapse_states
  --///
  --/// Returns `true(1)` if visible and fillable with widgets or `false(0)` otherwise
  --

  --/// #### nk_tree_image_push_id
  --/// Start a collapsible UI section with image and label header and internal state
  --/// management callable in a look
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// #define nk_tree_image_push_id(ctx, type, img, title, state, id)
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __type__    | Value from the nk_tree_type section to visually mark a tree node header as either a collapseable UI section or tree node
  --/// __img__     | Image to display inside the header on the left of the label
  --/// __title__   | Label printed in the tree header
  --/// __state__   | Initial tree state value out of nk_collapse_states
  --/// __id__      | Loop counter index if this function is called in a loop
  --///
  --/// Returns `true(1)` if visible and fillable with widgets or `false(0)` otherwise
  --

  --/// #### nk_tree_image_push_hashed
  --/// Start a collapsible UI section with internal state management with full
  --/// control over internal unique ID used to store state
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_tree_image_push_hashed(struct nk_context*, enum nk_tree_type, struct nk_image, const char *title, enum nk_collapse_states initial_state, const char *hash, int len,int seed);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct
  --/// __type__    | Value from the nk_tree_type section to visually mark a tree node header as either a collapseable UI section or tree node
  --/// __img__     | Image to display inside the header on the left of the label
  --/// __title__   | Label printed in the tree header
  --/// __state__   | Initial tree state value out of nk_collapse_states
  --/// __hash__    | Memory block or string to generate the ID from
  --/// __len__     | Size of passed memory block or string in __hash__
  --/// __seed__    | Seeding value if this function is called in a loop or default to `0`
  --///
  --/// Returns `true(1)` if visible and fillable with widgets or `false(0)` otherwise
  --

   function tree_image_push_hashed
     (arg1 : access nk_context;
      arg2 : nk_tree_type;
      arg3 : nk_image_t;
      title : Interfaces.C.char_array;
      initial_state : nk_collapse_states;
      hash : Interfaces.C.char_array;
      len : int;
      seed : int) return nk_bool  -- ./Nuklear/nuklear.h:3020
   with Import => True,
        Convention => C,
        External_Name => "nk_tree_image_push_hashed";

  --/// #### nk_tree_pop
  --/// Ends a collapsabale UI section
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_tree_pop(struct nk_context*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after calling `nk_tree_xxx_push_xxx`
  --

   procedure tree_pop (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3031
   with Import => True,
        Convention => C,
        External_Name => "nk_tree_pop";

  --/// #### nk_tree_state_push
  --/// Start a collapsible UI section with external state management
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_tree_state_push(struct nk_context*, enum nk_tree_type, const char *title, enum nk_collapse_states *state);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after calling `nk_tree_xxx_push_xxx`
  --/// __type__    | Value from the nk_tree_type section to visually mark a tree node header as either a collapseable UI section or tree node
  --/// __title__   | Label printed in the tree header
  --/// __state__   | Persistent state to update
  --///
  --/// Returns `true(1)` if visible and fillable with widgets or `false(0)` otherwise
  --

   function tree_state_push
     (arg1 : access nk_context;
      arg2 : nk_tree_type;
      title : Interfaces.C.char_array;
      state : access nk_collapse_states) return nk_bool  -- ./Nuklear/nuklear.h:3047
   with Import => True,
        Convention => C,
        External_Name => "nk_tree_state_push";

  --/// #### nk_tree_state_image_push
  --/// Start a collapsible UI section with image and label header and external state management
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// nk_bool nk_tree_state_image_push(struct nk_context*, enum nk_tree_type, struct nk_image, const char *title, enum nk_collapse_states *state);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after calling `nk_tree_xxx_push_xxx`
  --/// __img__     | Image to display inside the header on the left of the label
  --/// __type__    | Value from the nk_tree_type section to visually mark a tree node header as either a collapseable UI section or tree node
  --/// __title__   | Label printed in the tree header
  --/// __state__   | Persistent state to update
  --///
  --/// Returns `true(1)` if visible and fillable with widgets or `false(0)` otherwise
  --

   function tree_state_image_push
     (arg1 : access nk_context;
      arg2 : nk_tree_type;
      arg3 : nk_image_t;
      title : Interfaces.C.char_array;
      state : access nk_collapse_states) return nk_bool  -- ./Nuklear/nuklear.h:3064
   with Import => True,
        Convention => C,
        External_Name => "nk_tree_state_image_push";

  --/// #### nk_tree_state_pop
  --/// Ends a collapsabale UI section
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_tree_state_pop(struct nk_context*);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter   | Description
  --/// ------------|-----------------------------------------------------------
  --/// __ctx__     | Must point to an previously initialized `nk_context` struct after calling `nk_tree_xxx_push_xxx`
  --

   procedure tree_state_pop (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3075
   with Import => True,
        Convention => C,
        External_Name => "nk_tree_state_pop";

   function tree_element_push_hashed
     (arg1 : access nk_context;
      arg2 : nk_tree_type;
      title : Interfaces.C.char_array;
      initial_state : nk_collapse_states;
      selected : access nk_bool;
      hash : Interfaces.C.char_array;
      len : int;
      seed : int) return nk_bool  -- ./Nuklear/nuklear.h:3079
   with Import => True,
        Convention => C,
        External_Name => "nk_tree_element_push_hashed";

   function tree_element_image_push_hashed
     (arg1 : access nk_context;
      arg2 : nk_tree_type;
      arg3 : nk_image_t;
      title : Interfaces.C.char_array;
      initial_state : nk_collapse_states;
      selected : access nk_bool;
      hash : Interfaces.C.char_array;
      len : int;
      seed : int) return nk_bool  -- ./Nuklear/nuklear.h:3080
   with Import => True,
        Convention => C,
        External_Name => "nk_tree_element_image_push_hashed";

   procedure tree_element_pop (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3081
   with Import => True,
        Convention => C,
        External_Name => "nk_tree_element_pop";

  -- =============================================================================
  -- *
  -- *                                  LIST VIEW
  -- *
  -- * =============================================================================

  -- public:
   type nk_list_view is record
      c_begin : aliased int;  -- ./Nuklear/nuklear.h:3090
      c_end : aliased int;  -- ./Nuklear/nuklear.h:3090
      count : aliased int;  -- ./Nuklear/nuklear.h:3090
      total_height : aliased int;  -- ./Nuklear/nuklear.h:3092
      ctx : access nk_context;  -- ./Nuklear/nuklear.h:3093
      scroll_pointer : access nk_uint;  -- ./Nuklear/nuklear.h:3094
      scroll_value : aliased nk_uint;  -- ./Nuklear/nuklear.h:3095
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:3088

  -- private:
   function list_view_begin
     (arg1 : access nk_context;
      c_out : access nk_list_view;
      id : Interfaces.C.char_array;
      arg4 : nk_flags;
      row_height : int;
      row_count : int) return nk_bool  -- ./Nuklear/nuklear.h:3097
   with Import => True,
        Convention => C,
        External_Name => "nk_list_view_begin";

   procedure list_view_end (arg1 : access nk_list_view)  -- ./Nuklear/nuklear.h:3098
   with Import => True,
        Convention => C,
        External_Name => "nk_list_view_end";

  -- =============================================================================
  -- *
  -- *                                  WIDGET
  -- *
  -- * =============================================================================

   type nk_widget_layout_states is
     (WIDGET_INVALID,
      WIDGET_VALID,
      WIDGET_ROM,
      WIDGET_DISABLED)
   with Convention => C;  -- ./Nuklear/nuklear.h:3104

  -- The widget cannot be seen and is completely out of view
  -- The widget is completely inside the window and can be updated and drawn
  -- The widget is partially visible and cannot be updated
  -- The widget is manually disabled and acts like WIDGET_ROM
   subtype nk_widget_states is unsigned;
   nk_widget_states_WIDGET_STATE_MODIFIED : constant nk_widget_states := 2;
   nk_widget_states_WIDGET_STATE_INACTIVE : constant nk_widget_states := 4;
   nk_widget_states_WIDGET_STATE_ENTERED : constant nk_widget_states := 8;
   nk_widget_states_WIDGET_STATE_HOVER : constant nk_widget_states := 16;
   nk_widget_states_WIDGET_STATE_ACTIVED : constant nk_widget_states := 32;
   nk_widget_states_WIDGET_STATE_LEFT : constant nk_widget_states := 64;
   nk_widget_states_WIDGET_STATE_HOVERED : constant nk_widget_states := 18;
   nk_widget_states_WIDGET_STATE_ACTIVE : constant nk_widget_states := 34;  -- ./Nuklear/nuklear.h:3110

  -- widget is neither active nor hovered
  -- widget has been hovered on the current frame
  -- widget is being hovered
  -- widget is currently activated
  -- widget is from this frame on not hovered anymore
  -- widget is being hovered
  -- widget is currently activated
   function widget (arg1 : access nk_rect_t; arg2 : access constant nk_context) return nk_widget_layout_states  -- ./Nuklear/nuklear.h:3120
   with Import => True,
        Convention => C,
        External_Name => "nk_widget";

   function widget_fitting
     (arg1 : access nk_rect_t;
      arg2 : access nk_context;
      arg3 : nk_vec2_t) return nk_widget_layout_states  -- ./Nuklear/nuklear.h:3121
   with Import => True,
        Convention => C,
        External_Name => "nk_widget_fitting";

   function widget_bounds (arg1 : access nk_context) return nk_rect_t  -- ./Nuklear/nuklear.h:3122
   with Import => True,
        Convention => C,
        External_Name => "nk_widget_bounds";

   function widget_position (arg1 : access nk_context) return nk_vec2_t  -- ./Nuklear/nuklear.h:3123
   with Import => True,
        Convention => C,
        External_Name => "nk_widget_position";

   function widget_size (arg1 : access nk_context) return nk_vec2_t  -- ./Nuklear/nuklear.h:3124
   with Import => True,
        Convention => C,
        External_Name => "nk_widget_size";

   function widget_width (arg1 : access nk_context) return float  -- ./Nuklear/nuklear.h:3125
   with Import => True,
        Convention => C,
        External_Name => "nk_widget_width";

   function widget_height (arg1 : access nk_context) return float  -- ./Nuklear/nuklear.h:3126
   with Import => True,
        Convention => C,
        External_Name => "nk_widget_height";

   function widget_is_hovered (arg1 : access nk_context) return nk_bool  -- ./Nuklear/nuklear.h:3127
   with Import => True,
        Convention => C,
        External_Name => "nk_widget_is_hovered";

   function widget_is_mouse_clicked (arg1 : access nk_context; arg2 : nk_buttons) return nk_bool  -- ./Nuklear/nuklear.h:3128
   with Import => True,
        Convention => C,
        External_Name => "nk_widget_is_mouse_clicked";

   function widget_has_mouse_click_down
     (arg1 : access nk_context;
      arg2 : nk_buttons;
      down : nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3129
   with Import => True,
        Convention => C,
        External_Name => "nk_widget_has_mouse_click_down";

   procedure spacing (arg1 : access nk_context; cols : int)  -- ./Nuklear/nuklear.h:3130
   with Import => True,
        Convention => C,
        External_Name => "nk_spacing";

   procedure widget_disable_begin (ctx : access nk_context)  -- ./Nuklear/nuklear.h:3131
   with Import => True,
        Convention => C,
        External_Name => "nk_widget_disable_begin";

   procedure widget_disable_end (ctx : access nk_context)  -- ./Nuklear/nuklear.h:3132
   with Import => True,
        Convention => C,
        External_Name => "nk_widget_disable_end";

  -- =============================================================================
  -- *
  -- *                                  TEXT
  -- *
  -- * =============================================================================

   subtype nk_text_align is unsigned;
   nk_text_align_TEXT_ALIGN_LEFT : constant nk_text_align := 1;
   nk_text_align_TEXT_ALIGN_CENTERED : constant nk_text_align := 2;
   nk_text_align_TEXT_ALIGN_RIGHT : constant nk_text_align := 4;
   nk_text_align_TEXT_ALIGN_TOP : constant nk_text_align := 8;
   nk_text_align_TEXT_ALIGN_MIDDLE : constant nk_text_align := 16;
   nk_text_align_TEXT_ALIGN_BOTTOM : constant nk_text_align := 32;  -- ./Nuklear/nuklear.h:3138

   subtype nk_text_alignment is unsigned;
   nk_text_alignment_TEXT_LEFT : constant nk_text_alignment := 17;
   nk_text_alignment_TEXT_CENTERED : constant nk_text_alignment := 18;
   nk_text_alignment_TEXT_RIGHT : constant nk_text_alignment := 20;  -- ./Nuklear/nuklear.h:3146

   procedure text
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      arg4 : nk_flags)  -- ./Nuklear/nuklear.h:3151
   with Import => True,
        Convention => C,
        External_Name => "nk_text";

   procedure text_colored
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      arg4 : nk_flags;
      arg5 : nk_color)  -- ./Nuklear/nuklear.h:3152
   with Import => True,
        Convention => C,
        External_Name => "nk_text_colored";

   procedure text_wrap
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int)  -- ./Nuklear/nuklear.h:3153
   with Import => True,
        Convention => C,
        External_Name => "nk_text_wrap";

   procedure text_wrap_colored
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      arg4 : nk_color)  -- ./Nuklear/nuklear.h:3154
   with Import => True,
        Convention => C,
        External_Name => "nk_text_wrap_colored";

   procedure label
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      align : nk_flags)  -- ./Nuklear/nuklear.h:3155
   with Import => True,
        Convention => C,
        External_Name => "nk_label";

   procedure label_colored
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      align : nk_flags;
      arg4 : nk_color)  -- ./Nuklear/nuklear.h:3156
   with Import => True,
        Convention => C,
        External_Name => "nk_label_colored";

   procedure label_wrap (arg1 : access nk_context; arg2 : Interfaces.C.char_array)  -- ./Nuklear/nuklear.h:3157
   with Import => True,
        Convention => C,
        External_Name => "nk_label_wrap";

   procedure label_colored_wrap
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : nk_color)  -- ./Nuklear/nuklear.h:3158
   with Import => True,
        Convention => C,
        External_Name => "nk_label_colored_wrap";

   procedure image (arg1 : access nk_context; arg2 : nk_image_t)  -- ./Nuklear/nuklear.h:3159
   with Import => True,
        Convention => C,
        External_Name => "nk_image";

   procedure image_color
     (arg1 : access nk_context;
      arg2 : nk_image_t;
      arg3 : nk_color)  -- ./Nuklear/nuklear.h:3160
   with Import => True,
        Convention => C,
        External_Name => "nk_image_color";

  -- =============================================================================
  -- *
  -- *                                  BUTTON
  -- *
  -- * =============================================================================

   function button_text
     (arg1 : access nk_context;
      title : Interfaces.C.char_array;
      len : int) return nk_bool  -- ./Nuklear/nuklear.h:3183
   with Import => True,
        Convention => C,
        External_Name => "nk_button_text";

   function button_label (arg1 : access nk_context; title : Interfaces.C.char_array) return nk_bool  -- ./Nuklear/nuklear.h:3184
   with Import => True,
        Convention => C,
        External_Name => "nk_button_label";

   function button_color (arg1 : access nk_context; arg2 : nk_color) return nk_bool  -- ./Nuklear/nuklear.h:3185
   with Import => True,
        Convention => C,
        External_Name => "nk_button_color";

   function button_symbol (arg1 : access nk_context; arg2 : nk_symbol_type) return nk_bool  -- ./Nuklear/nuklear.h:3186
   with Import => True,
        Convention => C,
        External_Name => "nk_button_symbol";

   function button_image (arg1 : access nk_context; img : nk_image_t) return nk_bool  -- ./Nuklear/nuklear.h:3187
   with Import => True,
        Convention => C,
        External_Name => "nk_button_image";

   function button_symbol_label
     (arg1 : access nk_context;
      arg2 : nk_symbol_type;
      arg3 : Interfaces.C.char_array;
      text_alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3188
   with Import => True,
        Convention => C,
        External_Name => "nk_button_symbol_label";

   function button_symbol_text
     (arg1 : access nk_context;
      arg2 : nk_symbol_type;
      arg3 : Interfaces.C.char_array;
      arg4 : int;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3189
   with Import => True,
        Convention => C,
        External_Name => "nk_button_symbol_text";

   function button_image_label
     (arg1 : access nk_context;
      img : nk_image_t;
      arg3 : Interfaces.C.char_array;
      text_alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3190
   with Import => True,
        Convention => C,
        External_Name => "nk_button_image_label";

   function button_image_text
     (arg1 : access nk_context;
      img : nk_image_t;
      arg3 : Interfaces.C.char_array;
      arg4 : int;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3191
   with Import => True,
        Convention => C,
        External_Name => "nk_button_image_text";

   type nk_style_button;
   function button_text_styled
     (arg1 : access nk_context;
      arg2 : access constant nk_style_button;
      title : Interfaces.C.char_array;
      len : int) return nk_bool  -- ./Nuklear/nuklear.h:3192
   with Import => True,
        Convention => C,
        External_Name => "nk_button_text_styled";

   function button_label_styled
     (arg1 : access nk_context;
      arg2 : access constant nk_style_button;
      title : Interfaces.C.char_array) return nk_bool  -- ./Nuklear/nuklear.h:3193
   with Import => True,
        Convention => C,
        External_Name => "nk_button_label_styled";

   function button_symbol_styled
     (arg1 : access nk_context;
      arg2 : access constant nk_style_button;
      arg3 : nk_symbol_type) return nk_bool  -- ./Nuklear/nuklear.h:3194
   with Import => True,
        Convention => C,
        External_Name => "nk_button_symbol_styled";

   function button_image_styled
     (arg1 : access nk_context;
      arg2 : access constant nk_style_button;
      img : nk_image_t) return nk_bool  -- ./Nuklear/nuklear.h:3195
   with Import => True,
        Convention => C,
        External_Name => "nk_button_image_styled";

   function button_symbol_text_styled
     (arg1 : access nk_context;
      arg2 : access constant nk_style_button;
      arg3 : nk_symbol_type;
      arg4 : Interfaces.C.char_array;
      arg5 : int;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3196
   with Import => True,
        Convention => C,
        External_Name => "nk_button_symbol_text_styled";

   function button_symbol_label_styled
     (ctx : access nk_context;
      style : access constant nk_style_button;
      symbol : nk_symbol_type;
      title : Interfaces.C.char_array;
      align : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3197
   with Import => True,
        Convention => C,
        External_Name => "nk_button_symbol_label_styled";

   function button_image_label_styled
     (arg1 : access nk_context;
      arg2 : access constant nk_style_button;
      img : nk_image_t;
      arg4 : Interfaces.C.char_array;
      text_alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3198
   with Import => True,
        Convention => C,
        External_Name => "nk_button_image_label_styled";

   function button_image_text_styled
     (arg1 : access nk_context;
      arg2 : access constant nk_style_button;
      img : nk_image_t;
      arg4 : Interfaces.C.char_array;
      arg5 : int;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3199
   with Import => True,
        Convention => C,
        External_Name => "nk_button_image_text_styled";

   procedure button_set_behavior (arg1 : access nk_context; arg2 : nk_button_behavior)  -- ./Nuklear/nuklear.h:3200
   with Import => True,
        Convention => C,
        External_Name => "nk_button_set_behavior";

   function button_push_behavior (arg1 : access nk_context; arg2 : nk_button_behavior) return nk_bool  -- ./Nuklear/nuklear.h:3201
   with Import => True,
        Convention => C,
        External_Name => "nk_button_push_behavior";

   function button_pop_behavior (arg1 : access nk_context) return nk_bool  -- ./Nuklear/nuklear.h:3202
   with Import => True,
        Convention => C,
        External_Name => "nk_button_pop_behavior";

  -- =============================================================================
  -- *
  -- *                                  CHECKBOX
  -- *
  -- * =============================================================================

   function check_label
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      active : nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3208
   with Import => True,
        Convention => C,
        External_Name => "nk_check_label";

   function check_text
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      active : nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3209
   with Import => True,
        Convention => C,
        External_Name => "nk_check_text";

   function check_text_align
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      active : nk_bool;
      widget_alignment : nk_flags;
      text_alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3210
   with Import => True,
        Convention => C,
        External_Name => "nk_check_text_align";

   function check_flags_label
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      flags : unsigned;
      value : unsigned) return unsigned  -- ./Nuklear/nuklear.h:3211
   with Import => True,
        Convention => C,
        External_Name => "nk_check_flags_label";

   function check_flags_text
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      flags : unsigned;
      value : unsigned) return unsigned  -- ./Nuklear/nuklear.h:3212
   with Import => True,
        Convention => C,
        External_Name => "nk_check_flags_text";

   function checkbox_label
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      active : access nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3213
   with Import => True,
        Convention => C,
        External_Name => "nk_checkbox_label";

   function checkbox_label_align
     (ctx : access nk_context;
      label : Interfaces.C.char_array;
      active : access nk_bool;
      widget_alignment : nk_flags;
      text_alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3214
   with Import => True,
        Convention => C,
        External_Name => "nk_checkbox_label_align";

   function checkbox_text
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      active : access nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3215
   with Import => True,
        Convention => C,
        External_Name => "nk_checkbox_text";

   function checkbox_text_align
     (ctx : access nk_context;
      text : Interfaces.C.char_array;
      len : int;
      active : access nk_bool;
      widget_alignment : nk_flags;
      text_alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3216
   with Import => True,
        Convention => C,
        External_Name => "nk_checkbox_text_align";

   function checkbox_flags_label
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      flags : access unsigned;
      value : unsigned) return nk_bool  -- ./Nuklear/nuklear.h:3217
   with Import => True,
        Convention => C,
        External_Name => "nk_checkbox_flags_label";

   function checkbox_flags_text
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      flags : access unsigned;
      value : unsigned) return nk_bool  -- ./Nuklear/nuklear.h:3218
   with Import => True,
        Convention => C,
        External_Name => "nk_checkbox_flags_text";

  -- =============================================================================
  -- *
  -- *                                  RADIO BUTTON
  -- *
  -- * =============================================================================

   function radio_label
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      active : access nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3224
   with Import => True,
        Convention => C,
        External_Name => "nk_radio_label";

   function radio_label_align
     (ctx : access nk_context;
      label : Interfaces.C.char_array;
      active : access nk_bool;
      widget_alignment : nk_flags;
      text_alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3225
   with Import => True,
        Convention => C,
        External_Name => "nk_radio_label_align";

   function radio_text
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      active : access nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3226
   with Import => True,
        Convention => C,
        External_Name => "nk_radio_text";

   function radio_text_align
     (ctx : access nk_context;
      text : Interfaces.C.char_array;
      len : int;
      active : access nk_bool;
      widget_alignment : nk_flags;
      text_alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3227
   with Import => True,
        Convention => C,
        External_Name => "nk_radio_text_align";

   function option_label
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      active : nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3228
   with Import => True,
        Convention => C,
        External_Name => "nk_option_label";

   function option_label_align
     (ctx : access nk_context;
      label : Interfaces.C.char_array;
      active : nk_bool;
      widget_alignment : nk_flags;
      text_alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3229
   with Import => True,
        Convention => C,
        External_Name => "nk_option_label_align";

   function option_text
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      active : nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3230
   with Import => True,
        Convention => C,
        External_Name => "nk_option_text";

   function option_text_align
     (ctx : access nk_context;
      text : Interfaces.C.char_array;
      len : int;
      is_active : nk_bool;
      widget_alignment : nk_flags;
      text_alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3231
   with Import => True,
        Convention => C,
        External_Name => "nk_option_text_align";

  -- =============================================================================
  -- *
  -- *                                  SELECTABLE
  -- *
  -- * =============================================================================

   function selectable_label
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      align : nk_flags;
      value : access nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3237
   with Import => True,
        Convention => C,
        External_Name => "nk_selectable_label";

   function selectable_text
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      align : nk_flags;
      value : access nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3238
   with Import => True,
        Convention => C,
        External_Name => "nk_selectable_text";

   function selectable_image_label
     (arg1 : access nk_context;
      arg2 : nk_image_t;
      arg3 : Interfaces.C.char_array;
      align : nk_flags;
      value : access nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3239
   with Import => True,
        Convention => C,
        External_Name => "nk_selectable_image_label";

   function selectable_image_text
     (arg1 : access nk_context;
      arg2 : nk_image_t;
      arg3 : Interfaces.C.char_array;
      arg4 : int;
      align : nk_flags;
      value : access nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3240
   with Import => True,
        Convention => C,
        External_Name => "nk_selectable_image_text";

   function selectable_symbol_label
     (arg1 : access nk_context;
      arg2 : nk_symbol_type;
      arg3 : Interfaces.C.char_array;
      align : nk_flags;
      value : access nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3241
   with Import => True,
        Convention => C,
        External_Name => "nk_selectable_symbol_label";

   function selectable_symbol_text
     (arg1 : access nk_context;
      arg2 : nk_symbol_type;
      arg3 : Interfaces.C.char_array;
      arg4 : int;
      align : nk_flags;
      value : access nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3242
   with Import => True,
        Convention => C,
        External_Name => "nk_selectable_symbol_text";

   function select_label
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      align : nk_flags;
      value : nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3244
   with Import => True,
        Convention => C,
        External_Name => "nk_select_label";

   function select_text
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      align : nk_flags;
      value : nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3245
   with Import => True,
        Convention => C,
        External_Name => "nk_select_text";

   function select_image_label
     (arg1 : access nk_context;
      arg2 : nk_image_t;
      arg3 : Interfaces.C.char_array;
      align : nk_flags;
      value : nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3246
   with Import => True,
        Convention => C,
        External_Name => "nk_select_image_label";

   function select_image_text
     (arg1 : access nk_context;
      arg2 : nk_image_t;
      arg3 : Interfaces.C.char_array;
      arg4 : int;
      align : nk_flags;
      value : nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3247
   with Import => True,
        Convention => C,
        External_Name => "nk_select_image_text";

   function select_symbol_label
     (arg1 : access nk_context;
      arg2 : nk_symbol_type;
      arg3 : Interfaces.C.char_array;
      align : nk_flags;
      value : nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3248
   with Import => True,
        Convention => C,
        External_Name => "nk_select_symbol_label";

   function select_symbol_text
     (arg1 : access nk_context;
      arg2 : nk_symbol_type;
      arg3 : Interfaces.C.char_array;
      arg4 : int;
      align : nk_flags;
      value : nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3249
   with Import => True,
        Convention => C,
        External_Name => "nk_select_symbol_text";

  -- =============================================================================
  -- *
  -- *                                  SLIDER
  -- *
  -- * =============================================================================

   function slide_float
     (arg1 : access nk_context;
      min : float;
      val : float;
      max : float;
      step : float) return float  -- ./Nuklear/nuklear.h:3256
   with Import => True,
        Convention => C,
        External_Name => "nk_slide_float";

   function slide_int
     (arg1 : access nk_context;
      min : int;
      val : int;
      max : int;
      step : int) return int  -- ./Nuklear/nuklear.h:3257
   with Import => True,
        Convention => C,
        External_Name => "nk_slide_int";

   function slider_float
     (arg1 : access nk_context;
      min : float;
      val : access float;
      max : float;
      step : float) return nk_bool  -- ./Nuklear/nuklear.h:3258
   with Import => True,
        Convention => C,
        External_Name => "nk_slider_float";

   function slider_int
     (arg1 : access nk_context;
      min : int;
      val : access int;
      max : int;
      step : int) return nk_bool  -- ./Nuklear/nuklear.h:3259
   with Import => True,
        Convention => C,
        External_Name => "nk_slider_int";

  -- =============================================================================
  -- *
  -- *                                  PROGRESSBAR
  -- *
  -- * =============================================================================

   function progress
     (arg1 : access nk_context;
      cur : access nk_size;
      max : nk_size;
      modifyable : nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:3265
   with Import => True,
        Convention => C,
        External_Name => "nk_progress";

   function prog
     (arg1 : access nk_context;
      cur : nk_size;
      max : nk_size;
      modifyable : nk_bool) return nk_size  -- ./Nuklear/nuklear.h:3266
   with Import => True,
        Convention => C,
        External_Name => "nk_prog";

  -- =============================================================================
  -- *
  -- *                                  COLOR PICKER
  -- *
  -- * =============================================================================

   function color_picker
     (arg1 : access nk_context;
      arg2 : nk_colorf;
      arg3 : nk_color_format) return nk_colorf  -- ./Nuklear/nuklear.h:3273
   with Import => True,
        Convention => C,
        External_Name => "nk_color_picker";

   function color_pick
     (arg1 : access nk_context;
      arg2 : access nk_colorf;
      arg3 : nk_color_format) return nk_bool  -- ./Nuklear/nuklear.h:3274
   with Import => True,
        Convention => C,
        External_Name => "nk_color_pick";

  -- =============================================================================
  -- *
  -- *                                  PROPERTIES
  -- *
  -- * =============================================================================
  --/// ### Properties
  --/// Properties are the main value modification widgets in Nuklear. Changing a value
  --/// can be achieved by dragging, adding/removing incremental steps on button click
  --/// or by directly typing a number.
  --///
  --/// #### Usage
  --/// Each property requires a unique name for identification that is also used for
  --/// displaying a label. If you want to use the same name multiple times make sure
  --/// add a '#' before your name. The '#' will not be shown but will generate a
  --/// unique ID. Each property also takes in a minimum and maximum value. If you want
  --/// to make use of the complete number range of a type just use the provided
  --/// type limits from `limits.h`. For example `INT_MIN` and `INT_MAX` for
  --/// `nk_property_int` and `nk_propertyi`. In additional each property takes in
  --/// a increment value that will be added or subtracted if either the increment
  --/// decrement button is clicked. Finally there is a value for increment per pixel
  --/// dragged that is added or subtracted from the value.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// int value = 0;
  --/// struct nk_context ctx;
  --/// nk_init_xxx(&ctx, ...);
  --/// while (1) {
  --///     // Input
  --///     Event evt;
  --///     nk_input_begin(&ctx);
  --///     while (GetEvent(&evt)) {
  --///         if (evt.type == MOUSE_MOVE)
  --///             nk_input_motion(&ctx, evt.motion.x, evt.motion.y);
  --///         else if (evt.type == [...]) {
  --///             nk_input_xxx(...);
  --///         }
  --///     }
  --///     nk_input_end(&ctx);
  --///     //
  --///     // Window
  --///     if (nk_begin_xxx(...) {
  --///         // Property
  --///         nk_layout_row_dynamic(...);
  --///         nk_property_int(ctx, "ID", INT_MIN, &value, INT_MAX, 1, 1);
  --///     }
  --///     nk_end(ctx);
  --///     //
  --///     // Draw
  --///     const struct nk_command *cmd = 0;
  --///     nk_foreach(cmd, &ctx) {
  --///     switch (cmd->type) {
  --///     case COMMAND_LINE:
  --///         your_draw_line_function(...)
  --///         break;
  --///     case COMMAND_RECT
  --///         your_draw_rect_function(...)
  --///         break;
  --///     case ...:
  --///         // [...]
  --///     }
  --///     nk_clear(&ctx);
  --/// }
  --/// nk_free(&ctx);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// #### Reference
  --/// Function            | Description
  --/// --------------------|-------------------------------------------
  --/// nk_property_int     | Integer property directly modifying a passed in value
  --/// nk_property_float   | Float property directly modifying a passed in value
  --/// nk_property_double  | Double property directly modifying a passed in value
  --/// nk_propertyi        | Integer property returning the modified int value
  --/// nk_propertyf        | Float property returning the modified float value
  --/// nk_propertyd        | Double property returning the modified double value
  --///
  --

  --/// #### nk_property_int
  --/// Integer property directly modifying a passed in value
  --/// !!! WARNING
  --///     To generate a unique property ID using the same label make sure to insert
  --///     a `#` at the beginning. It will not be shown but guarantees correct behavior.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_property_int(struct nk_context *ctx, const char *name, int min, int *val, int max, int step, float inc_per_pixel);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter           | Description
  --/// --------------------|-----------------------------------------------------------
  --/// __ctx__             | Must point to an previously initialized `nk_context` struct after calling a layouting function
  --/// __name__            | String used both as a label as well as a unique identifier
  --/// __min__             | Minimum value not allowed to be underflown
  --/// __val__             | Integer pointer to be modified
  --/// __max__             | Maximum value not allowed to be overflown
  --/// __step__            | Increment added and subtracted on increment and decrement button
  --/// __inc_per_pixel__   | Value per pixel added or subtracted on dragging
  --

   procedure property_int
     (arg1 : access nk_context;
      name : Interfaces.C.char_array;
      min : int;
      val : access int;
      max : int;
      step : int;
      inc_per_pixel : float)  -- ./Nuklear/nuklear.h:3371
   with Import => True,
        Convention => C,
        External_Name => "nk_property_int";

  --/// #### nk_property_float
  --/// Float property directly modifying a passed in value
  --/// !!! WARNING
  --///     To generate a unique property ID using the same label make sure to insert
  --///     a `#` at the beginning. It will not be shown but guarantees correct behavior.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_property_float(struct nk_context *ctx, const char *name, float min, float *val, float max, float step, float inc_per_pixel);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter           | Description
  --/// --------------------|-----------------------------------------------------------
  --/// __ctx__             | Must point to an previously initialized `nk_context` struct after calling a layouting function
  --/// __name__            | String used both as a label as well as a unique identifier
  --/// __min__             | Minimum value not allowed to be underflown
  --/// __val__             | Float pointer to be modified
  --/// __max__             | Maximum value not allowed to be overflown
  --/// __step__            | Increment added and subtracted on increment and decrement button
  --/// __inc_per_pixel__   | Value per pixel added or subtracted on dragging
  --

   procedure property_float
     (arg1 : access nk_context;
      name : Interfaces.C.char_array;
      min : float;
      val : access float;
      max : float;
      step : float;
      inc_per_pixel : float)  -- ./Nuklear/nuklear.h:3392
   with Import => True,
        Convention => C,
        External_Name => "nk_property_float";

  --/// #### nk_property_double
  --/// Double property directly modifying a passed in value
  --/// !!! WARNING
  --///     To generate a unique property ID using the same label make sure to insert
  --///     a `#` at the beginning. It will not be shown but guarantees correct behavior.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// void nk_property_double(struct nk_context *ctx, const char *name, double min, double *val, double max, double step, double inc_per_pixel);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter           | Description
  --/// --------------------|-----------------------------------------------------------
  --/// __ctx__             | Must point to an previously initialized `nk_context` struct after calling a layouting function
  --/// __name__            | String used both as a label as well as a unique identifier
  --/// __min__             | Minimum value not allowed to be underflown
  --/// __val__             | Double pointer to be modified
  --/// __max__             | Maximum value not allowed to be overflown
  --/// __step__            | Increment added and subtracted on increment and decrement button
  --/// __inc_per_pixel__   | Value per pixel added or subtracted on dragging
  --

   procedure property_double
     (arg1 : access nk_context;
      name : Interfaces.C.char_array;
      min : double;
      val : access double;
      max : double;
      step : double;
      inc_per_pixel : float)  -- ./Nuklear/nuklear.h:3413
   with Import => True,
        Convention => C,
        External_Name => "nk_property_double";

  --/// #### nk_propertyi
  --/// Integer property modifying a passed in value and returning the new value
  --/// !!! WARNING
  --///     To generate a unique property ID using the same label make sure to insert
  --///     a `#` at the beginning. It will not be shown but guarantees correct behavior.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// int nk_propertyi(struct nk_context *ctx, const char *name, int min, int val, int max, int step, float inc_per_pixel);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter           | Description
  --/// --------------------|-----------------------------------------------------------
  --/// __ctx__             | Must point to an previously initialized `nk_context` struct after calling a layouting function
  --/// __name__            | String used both as a label as well as a unique identifier
  --/// __min__             | Minimum value not allowed to be underflown
  --/// __val__             | Current integer value to be modified and returned
  --/// __max__             | Maximum value not allowed to be overflown
  --/// __step__            | Increment added and subtracted on increment and decrement button
  --/// __inc_per_pixel__   | Value per pixel added or subtracted on dragging
  --///
  --/// Returns the new modified integer value
  --

   function propertyi
     (arg1 : access nk_context;
      name : Interfaces.C.char_array;
      min : int;
      val : int;
      max : int;
      step : int;
      inc_per_pixel : float) return int  -- ./Nuklear/nuklear.h:3436
   with Import => True,
        Convention => C,
        External_Name => "nk_propertyi";

  --/// #### nk_propertyf
  --/// Float property modifying a passed in value and returning the new value
  --/// !!! WARNING
  --///     To generate a unique property ID using the same label make sure to insert
  --///     a `#` at the beginning. It will not be shown but guarantees correct behavior.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// float nk_propertyf(struct nk_context *ctx, const char *name, float min, float val, float max, float step, float inc_per_pixel);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter           | Description
  --/// --------------------|-----------------------------------------------------------
  --/// __ctx__             | Must point to an previously initialized `nk_context` struct after calling a layouting function
  --/// __name__            | String used both as a label as well as a unique identifier
  --/// __min__             | Minimum value not allowed to be underflown
  --/// __val__             | Current float value to be modified and returned
  --/// __max__             | Maximum value not allowed to be overflown
  --/// __step__            | Increment added and subtracted on increment and decrement button
  --/// __inc_per_pixel__   | Value per pixel added or subtracted on dragging
  --///
  --/// Returns the new modified float value
  --

   function propertyf
     (arg1 : access nk_context;
      name : Interfaces.C.char_array;
      min : float;
      val : float;
      max : float;
      step : float;
      inc_per_pixel : float) return float  -- ./Nuklear/nuklear.h:3459
   with Import => True,
        Convention => C,
        External_Name => "nk_propertyf";

  --/// #### nk_propertyd
  --/// Float property modifying a passed in value and returning the new value
  --/// !!! WARNING
  --///     To generate a unique property ID using the same label make sure to insert
  --///     a `#` at the beginning. It will not be shown but guarantees correct behavior.
  --///
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~c
  --/// float nk_propertyd(struct nk_context *ctx, const char *name, double min, double val, double max, double step, double inc_per_pixel);
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --///
  --/// Parameter           | Description
  --/// --------------------|-----------------------------------------------------------
  --/// __ctx__             | Must point to an previously initialized `nk_context` struct after calling a layouting function
  --/// __name__            | String used both as a label as well as a unique identifier
  --/// __min__             | Minimum value not allowed to be underflown
  --/// __val__             | Current double value to be modified and returned
  --/// __max__             | Maximum value not allowed to be overflown
  --/// __step__            | Increment added and subtracted on increment and decrement button
  --/// __inc_per_pixel__   | Value per pixel added or subtracted on dragging
  --///
  --/// Returns the new modified double value
  --

   function propertyd
     (arg1 : access nk_context;
      name : Interfaces.C.char_array;
      min : double;
      val : double;
      max : double;
      step : double;
      inc_per_pixel : float) return double  -- ./Nuklear/nuklear.h:3482
   with Import => True,
        Convention => C,
        External_Name => "nk_propertyd";

  -- =============================================================================
  -- *
  -- *                                  TEXT EDIT
  -- *
  -- * =============================================================================

   subtype nk_edit_flags is unsigned;
   nk_edit_flags_EDIT_DEFAULT : constant nk_edit_flags := 0;
   nk_edit_flags_EDIT_READ_ONLY : constant nk_edit_flags := 1;
   nk_edit_flags_EDIT_AUTO_SELECT : constant nk_edit_flags := 2;
   nk_edit_flags_EDIT_SIG_ENTER : constant nk_edit_flags := 4;
   nk_edit_flags_EDIT_ALLOW_TAB : constant nk_edit_flags := 8;
   nk_edit_flags_EDIT_NO_CURSOR : constant nk_edit_flags := 16;
   nk_edit_flags_EDIT_SELECTABLE : constant nk_edit_flags := 32;
   nk_edit_flags_EDIT_CLIPBOARD : constant nk_edit_flags := 64;
   nk_edit_flags_EDIT_CTRL_ENTER_NEWLINE : constant nk_edit_flags := 128;
   nk_edit_flags_EDIT_NO_HORIZONTAL_SCROLL : constant nk_edit_flags := 256;
   nk_edit_flags_EDIT_ALWAYS_INSERT_MODE : constant nk_edit_flags := 512;
   nk_edit_flags_EDIT_MULTILINE : constant nk_edit_flags := 1024;
   nk_edit_flags_EDIT_GOTO_END_ON_ACTIVATE : constant nk_edit_flags := 2048;  -- ./Nuklear/nuklear.h:3488

   subtype nk_edit_types is unsigned;
   nk_edit_types_EDIT_SIMPLE : constant nk_edit_types := 512;
   nk_edit_types_EDIT_FIELD : constant nk_edit_types := 608;
   nk_edit_types_EDIT_BOX : constant nk_edit_types := 1640;
   nk_edit_types_EDIT_EDITOR : constant nk_edit_types := 1128;  -- ./Nuklear/nuklear.h:3503

   subtype nk_edit_events is unsigned;
   nk_edit_events_EDIT_ACTIVE : constant nk_edit_events := 1;
   nk_edit_events_EDIT_INACTIVE : constant nk_edit_events := 2;
   nk_edit_events_EDIT_ACTIVATED : constant nk_edit_events := 4;
   nk_edit_events_EDIT_DEACTIVATED : constant nk_edit_events := 8;
   nk_edit_events_EDIT_COMMITED : constant nk_edit_events := 16;  -- ./Nuklear/nuklear.h:3509

  -- edit widget is currently being modified
  -- edit widget is not active and is not being modified
  -- edit widget went from state inactive to state active
  -- edit widget went from state active to state inactive
  -- edit widget has received an enter and lost focus
   function edit_string
     (arg1 : access nk_context;
      arg2 : nk_flags;
      buffer : Interfaces.C.char_array;
      len : access int;
      max : int;
      arg6 : nk_plugin_filter) return nk_flags  -- ./Nuklear/nuklear.h:3516
   with Import => True,
        Convention => C,
        External_Name => "nk_edit_string";

   function edit_string_zero_terminated
     (arg1 : access nk_context;
      arg2 : nk_flags;
      buffer : Interfaces.C.char_array;
      max : int;
      arg5 : nk_plugin_filter) return nk_flags  -- ./Nuklear/nuklear.h:3517
   with Import => True,
        Convention => C,
        External_Name => "nk_edit_string_zero_terminated";

   function edit_buffer
     (arg1 : access nk_context;
      arg2 : nk_flags;
      arg3 : access nk_text_edit;
      arg4 : nk_plugin_filter) return nk_flags  -- ./Nuklear/nuklear.h:3518
   with Import => True,
        Convention => C,
        External_Name => "nk_edit_buffer";

   procedure edit_focus (arg1 : access nk_context; flags : nk_flags)  -- ./Nuklear/nuklear.h:3519
   with Import => True,
        Convention => C,
        External_Name => "nk_edit_focus";

   procedure edit_unfocus (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3520
   with Import => True,
        Convention => C,
        External_Name => "nk_edit_unfocus";

  -- =============================================================================
  -- *
  -- *                                  CHART
  -- *
  -- * =============================================================================

   function chart_begin
     (arg1 : access nk_context;
      arg2 : nk_chart_type;
      num : int;
      min : float;
      max : float) return nk_bool  -- ./Nuklear/nuklear.h:3526
   with Import => True,
        Convention => C,
        External_Name => "nk_chart_begin";

   function chart_begin_colored
     (arg1 : access nk_context;
      arg2 : nk_chart_type;
      arg3 : nk_color;
      active : nk_color;
      num : int;
      min : float;
      max : float) return nk_bool  -- ./Nuklear/nuklear.h:3527
   with Import => True,
        Convention => C,
        External_Name => "nk_chart_begin_colored";

   procedure chart_add_slot
     (ctx : access nk_context;
      arg2 : nk_chart_type;
      count : int;
      min_value : float;
      max_value : float)  -- ./Nuklear/nuklear.h:3528
   with Import => True,
        Convention => C,
        External_Name => "nk_chart_add_slot";

   procedure chart_add_slot_colored
     (ctx : access nk_context;
      arg2 : nk_chart_type;
      arg3 : nk_color;
      active : nk_color;
      count : int;
      min_value : float;
      max_value : float)  -- ./Nuklear/nuklear.h:3529
   with Import => True,
        Convention => C,
        External_Name => "nk_chart_add_slot_colored";

   function chart_push (arg1 : access nk_context; arg2 : float) return nk_flags  -- ./Nuklear/nuklear.h:3530
   with Import => True,
        Convention => C,
        External_Name => "nk_chart_push";

   function chart_push_slot
     (arg1 : access nk_context;
      arg2 : float;
      arg3 : int) return nk_flags  -- ./Nuklear/nuklear.h:3531
   with Import => True,
        Convention => C,
        External_Name => "nk_chart_push_slot";

   procedure chart_end (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3532
   with Import => True,
        Convention => C,
        External_Name => "nk_chart_end";

   procedure plot
     (arg1 : access nk_context;
      arg2 : nk_chart_type;
      values : access float;
      count : int;
      offset : int)  -- ./Nuklear/nuklear.h:3533
   with Import => True,
        Convention => C,
        External_Name => "nk_plot";

   procedure plot_function
     (arg1 : access nk_context;
      arg2 : nk_chart_type;
      userdata : System.Address;
      value_getter : access function (arg1 : System.Address; arg2 : int) return float;
      count : int;
      offset : int)  -- ./Nuklear/nuklear.h:3534
   with Import => True,
        Convention => C,
        External_Name => "nk_plot_function";

  -- =============================================================================
  -- *
  -- *                                  POPUP
  -- *
  -- * =============================================================================

   function popup_begin
     (arg1 : access nk_context;
      arg2 : nk_popup_type;
      arg3 : Interfaces.C.char_array;
      arg4 : nk_flags;
      bounds : nk_rect_t) return nk_bool  -- ./Nuklear/nuklear.h:3540
   with Import => True,
        Convention => C,
        External_Name => "nk_popup_begin";

   procedure popup_close (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3541
   with Import => True,
        Convention => C,
        External_Name => "nk_popup_close";

   procedure popup_end (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3542
   with Import => True,
        Convention => C,
        External_Name => "nk_popup_end";

   procedure popup_get_scroll
     (arg1 : access nk_context;
      offset_x : access nk_uint;
      offset_y : access nk_uint)  -- ./Nuklear/nuklear.h:3543
   with Import => True,
        Convention => C,
        External_Name => "nk_popup_get_scroll";

   procedure popup_set_scroll
     (arg1 : access nk_context;
      offset_x : nk_uint;
      offset_y : nk_uint)  -- ./Nuklear/nuklear.h:3544
   with Import => True,
        Convention => C,
        External_Name => "nk_popup_set_scroll";

  -- =============================================================================
  -- *
  -- *                                  COMBOBOX
  -- *
  -- * =============================================================================

   function combo
     (arg1 : access nk_context;
      items : System.Address;
      count : int;
      selected : int;
      item_height : int;
      size : nk_vec2_t) return int  -- ./Nuklear/nuklear.h:3550
   with Import => True,
        Convention => C,
        External_Name => "nk_combo";

   function combo_separator
     (arg1 : access nk_context;
      items_separated_by_separator : Interfaces.C.char_array;
      separator : int;
      selected : int;
      count : int;
      item_height : int;
      size : nk_vec2_t) return int  -- ./Nuklear/nuklear.h:3551
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_separator";

   function combo_string
     (arg1 : access nk_context;
      items_separated_by_zeros : Interfaces.C.char_array;
      selected : int;
      count : int;
      item_height : int;
      size : nk_vec2_t) return int  -- ./Nuklear/nuklear.h:3552
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_string";

   function combo_callback
     (arg1 : access nk_context;
      item_getter : access procedure
        (arg1 : System.Address;
         arg2 : int;
         arg3 : System.Address);
      userdata : System.Address;
      selected : int;
      count : int;
      item_height : int;
      size : nk_vec2_t) return int  -- ./Nuklear/nuklear.h:3553
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_callback";

   procedure combobox
     (arg1 : access nk_context;
      items : System.Address;
      count : int;
      selected : access int;
      item_height : int;
      size : nk_vec2_t)  -- ./Nuklear/nuklear.h:3554
   with Import => True,
        Convention => C,
        External_Name => "nk_combobox";

   procedure combobox_string
     (arg1 : access nk_context;
      items_separated_by_zeros : Interfaces.C.char_array;
      selected : access int;
      count : int;
      item_height : int;
      size : nk_vec2_t)  -- ./Nuklear/nuklear.h:3555
   with Import => True,
        Convention => C,
        External_Name => "nk_combobox_string";

   procedure combobox_separator
     (arg1 : access nk_context;
      items_separated_by_separator : Interfaces.C.char_array;
      separator : int;
      selected : access int;
      count : int;
      item_height : int;
      size : nk_vec2_t)  -- ./Nuklear/nuklear.h:3556
   with Import => True,
        Convention => C,
        External_Name => "nk_combobox_separator";

   procedure combobox_callback
     (arg1 : access nk_context;
      item_getter : access procedure
        (arg1 : System.Address;
         arg2 : int;
         arg3 : System.Address);
      arg3 : System.Address;
      selected : access int;
      count : int;
      item_height : int;
      size : nk_vec2_t)  -- ./Nuklear/nuklear.h:3557
   with Import => True,
        Convention => C,
        External_Name => "nk_combobox_callback";

  -- =============================================================================
  -- *
  -- *                                  ABSTRACT COMBOBOX
  -- *
  -- * =============================================================================

   function combo_begin_text
     (arg1 : access nk_context;
      selected : Interfaces.C.char_array;
      arg3 : int;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3563
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_begin_text";

   function combo_begin_label
     (arg1 : access nk_context;
      selected : Interfaces.C.char_array;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3564
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_begin_label";

   function combo_begin_color
     (arg1 : access nk_context;
      color : nk_color;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3565
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_begin_color";

   function combo_begin_symbol
     (arg1 : access nk_context;
      arg2 : nk_symbol_type;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3566
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_begin_symbol";

   function combo_begin_symbol_label
     (arg1 : access nk_context;
      selected : Interfaces.C.char_array;
      arg3 : nk_symbol_type;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3567
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_begin_symbol_label";

   function combo_begin_symbol_text
     (arg1 : access nk_context;
      selected : Interfaces.C.char_array;
      arg3 : int;
      arg4 : nk_symbol_type;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3568
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_begin_symbol_text";

   function combo_begin_image
     (arg1 : access nk_context;
      img : nk_image_t;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3569
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_begin_image";

   function combo_begin_image_label
     (arg1 : access nk_context;
      selected : Interfaces.C.char_array;
      arg3 : nk_image_t;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3570
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_begin_image_label";

   function combo_begin_image_text
     (arg1 : access nk_context;
      selected : Interfaces.C.char_array;
      arg3 : int;
      arg4 : nk_image_t;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3571
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_begin_image_text";

   function combo_item_label
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3572
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_item_label";

   function combo_item_text
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3573
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_item_text";

   function combo_item_image_label
     (arg1 : access nk_context;
      arg2 : nk_image_t;
      arg3 : Interfaces.C.char_array;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3574
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_item_image_label";

   function combo_item_image_text
     (arg1 : access nk_context;
      arg2 : nk_image_t;
      arg3 : Interfaces.C.char_array;
      arg4 : int;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3575
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_item_image_text";

   function combo_item_symbol_label
     (arg1 : access nk_context;
      arg2 : nk_symbol_type;
      arg3 : Interfaces.C.char_array;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3576
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_item_symbol_label";

   function combo_item_symbol_text
     (arg1 : access nk_context;
      arg2 : nk_symbol_type;
      arg3 : Interfaces.C.char_array;
      arg4 : int;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3577
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_item_symbol_text";

   procedure combo_close (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3578
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_close";

   procedure combo_end (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3579
   with Import => True,
        Convention => C,
        External_Name => "nk_combo_end";

  -- =============================================================================
  -- *
  -- *                                  CONTEXTUAL
  -- *
  -- * =============================================================================

   function contextual_begin
     (arg1 : access nk_context;
      arg2 : nk_flags;
      arg3 : nk_vec2_t;
      trigger_bounds : nk_rect_t) return nk_bool  -- ./Nuklear/nuklear.h:3585
   with Import => True,
        Convention => C,
        External_Name => "nk_contextual_begin";

   function contextual_item_text
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      align : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3586
   with Import => True,
        Convention => C,
        External_Name => "nk_contextual_item_text";

   function contextual_item_label
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      align : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3587
   with Import => True,
        Convention => C,
        External_Name => "nk_contextual_item_label";

   function contextual_item_image_label
     (arg1 : access nk_context;
      arg2 : nk_image_t;
      arg3 : Interfaces.C.char_array;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3588
   with Import => True,
        Convention => C,
        External_Name => "nk_contextual_item_image_label";

   function contextual_item_image_text
     (arg1 : access nk_context;
      arg2 : nk_image_t;
      arg3 : Interfaces.C.char_array;
      len : int;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3589
   with Import => True,
        Convention => C,
        External_Name => "nk_contextual_item_image_text";

   function contextual_item_symbol_label
     (arg1 : access nk_context;
      arg2 : nk_symbol_type;
      arg3 : Interfaces.C.char_array;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3590
   with Import => True,
        Convention => C,
        External_Name => "nk_contextual_item_symbol_label";

   function contextual_item_symbol_text
     (arg1 : access nk_context;
      arg2 : nk_symbol_type;
      arg3 : Interfaces.C.char_array;
      arg4 : int;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3591
   with Import => True,
        Convention => C,
        External_Name => "nk_contextual_item_symbol_text";

   procedure contextual_close (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3592
   with Import => True,
        Convention => C,
        External_Name => "nk_contextual_close";

   procedure contextual_end (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3593
   with Import => True,
        Convention => C,
        External_Name => "nk_contextual_end";

  -- =============================================================================
  -- *
  -- *                                  TOOLTIP
  -- *
  -- * =============================================================================

   procedure tooltip (arg1 : access nk_context; arg2 : Interfaces.C.char_array)  -- ./Nuklear/nuklear.h:3599
   with Import => True,
        Convention => C,
        External_Name => "nk_tooltip";

   function tooltip_begin (arg1 : access nk_context; width : float) return nk_bool  -- ./Nuklear/nuklear.h:3604
   with Import => True,
        Convention => C,
        External_Name => "nk_tooltip_begin";

   procedure tooltip_end (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3605
   with Import => True,
        Convention => C,
        External_Name => "nk_tooltip_end";

  -- =============================================================================
  -- *
  -- *                                  MENU
  -- *
  -- * =============================================================================

   procedure menubar_begin (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3611
   with Import => True,
        Convention => C,
        External_Name => "nk_menubar_begin";

   procedure menubar_end (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3612
   with Import => True,
        Convention => C,
        External_Name => "nk_menubar_end";

   function menu_begin_text
     (arg1 : access nk_context;
      title : Interfaces.C.char_array;
      title_len : int;
      align : nk_flags;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3613
   with Import => True,
        Convention => C,
        External_Name => "nk_menu_begin_text";

   function menu_begin_label
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      align : nk_flags;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3614
   with Import => True,
        Convention => C,
        External_Name => "nk_menu_begin_label";

   function menu_begin_image
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : nk_image_t;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3615
   with Import => True,
        Convention => C,
        External_Name => "nk_menu_begin_image";

   function menu_begin_image_text
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      align : nk_flags;
      arg5 : nk_image_t;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3616
   with Import => True,
        Convention => C,
        External_Name => "nk_menu_begin_image_text";

   function menu_begin_image_label
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      align : nk_flags;
      arg4 : nk_image_t;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3617
   with Import => True,
        Convention => C,
        External_Name => "nk_menu_begin_image_label";

   function menu_begin_symbol
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : nk_symbol_type;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3618
   with Import => True,
        Convention => C,
        External_Name => "nk_menu_begin_symbol";

   function menu_begin_symbol_text
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      align : nk_flags;
      arg5 : nk_symbol_type;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3619
   with Import => True,
        Convention => C,
        External_Name => "nk_menu_begin_symbol_text";

   function menu_begin_symbol_label
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      align : nk_flags;
      arg4 : nk_symbol_type;
      size : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3620
   with Import => True,
        Convention => C,
        External_Name => "nk_menu_begin_symbol_label";

   function menu_item_text
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      arg3 : int;
      align : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3621
   with Import => True,
        Convention => C,
        External_Name => "nk_menu_item_text";

   function menu_item_label
     (arg1 : access nk_context;
      arg2 : Interfaces.C.char_array;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3622
   with Import => True,
        Convention => C,
        External_Name => "nk_menu_item_label";

   function menu_item_image_label
     (arg1 : access nk_context;
      arg2 : nk_image_t;
      arg3 : Interfaces.C.char_array;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3623
   with Import => True,
        Convention => C,
        External_Name => "nk_menu_item_image_label";

   function menu_item_image_text
     (arg1 : access nk_context;
      arg2 : nk_image_t;
      arg3 : Interfaces.C.char_array;
      len : int;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3624
   with Import => True,
        Convention => C,
        External_Name => "nk_menu_item_image_text";

   function menu_item_symbol_text
     (arg1 : access nk_context;
      arg2 : nk_symbol_type;
      arg3 : Interfaces.C.char_array;
      arg4 : int;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3625
   with Import => True,
        Convention => C,
        External_Name => "nk_menu_item_symbol_text";

   function menu_item_symbol_label
     (arg1 : access nk_context;
      arg2 : nk_symbol_type;
      arg3 : Interfaces.C.char_array;
      alignment : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3626
   with Import => True,
        Convention => C,
        External_Name => "nk_menu_item_symbol_label";

   procedure menu_close (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3627
   with Import => True,
        Convention => C,
        External_Name => "nk_menu_close";

   procedure menu_end (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3628
   with Import => True,
        Convention => C,
        External_Name => "nk_menu_end";

  -- =============================================================================
  -- *
  -- *                                  STYLE
  -- *
  -- * =============================================================================

   type nk_style_colors is
     (COLOR_TEXT,
      COLOR_WINDOW,
      COLOR_HEADER,
      COLOR_BORDER,
      COLOR_BUTTON,
      COLOR_BUTTON_HOVER,
      COLOR_BUTTON_ACTIVE,
      COLOR_TOGGLE,
      COLOR_TOGGLE_HOVER,
      COLOR_TOGGLE_CURSOR,
      COLOR_SELECT,
      COLOR_SELECT_ACTIVE,
      COLOR_SLIDER,
      COLOR_SLIDER_CURSOR,
      COLOR_SLIDER_CURSOR_HOVER,
      COLOR_SLIDER_CURSOR_ACTIVE,
      COLOR_PROPERTY,
      COLOR_EDIT,
      COLOR_EDIT_CURSOR,
      COLOR_COMBO,
      COLOR_CHART,
      COLOR_CHART_COLOR,
      COLOR_CHART_COLOR_HIGHLIGHT,
      COLOR_SCROLLBAR,
      COLOR_SCROLLBAR_CURSOR,
      COLOR_SCROLLBAR_CURSOR_HOVER,
      COLOR_SCROLLBAR_CURSOR_ACTIVE,
      COLOR_TAB_HEADER,
      COLOR_COUNT)
   with Convention => C;  -- ./Nuklear/nuklear.h:3637

   type nk_style_cursor is
     (CURSOR_ARROW,
      CURSOR_TEXT,
      CURSOR_MOVE,
      CURSOR_RESIZE_VERTICAL,
      CURSOR_RESIZE_HORIZONTAL,
      CURSOR_RESIZE_TOP_LEFT_DOWN_RIGHT,
      CURSOR_RESIZE_TOP_RIGHT_DOWN_LEFT,
      CURSOR_COUNT)
   with Convention => C;  -- ./Nuklear/nuklear.h:3668

   procedure style_default (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3678
   with Import => True,
        Convention => C,
        External_Name => "nk_style_default";

   procedure style_from_table (arg1 : access nk_context; arg2 : access constant nk_color)  -- ./Nuklear/nuklear.h:3679
   with Import => True,
        Convention => C,
        External_Name => "nk_style_from_table";

   procedure style_load_cursor
     (arg1 : access nk_context;
      arg2 : nk_style_cursor;
      arg3 : access constant nk_cursor)  -- ./Nuklear/nuklear.h:3680
   with Import => True,
        Convention => C,
        External_Name => "nk_style_load_cursor";

   procedure style_load_all_cursors (arg1 : access nk_context; arg2 : access nk_cursor)  -- ./Nuklear/nuklear.h:3681
   with Import => True,
        Convention => C,
        External_Name => "nk_style_load_all_cursors";

   function style_get_color_by_name (arg1 : nk_style_colors) return Interfaces.C.Strings.chars_ptr  -- ./Nuklear/nuklear.h:3682
   with Import => True,
        Convention => C,
        External_Name => "nk_style_get_color_by_name";

   procedure style_set_font (arg1 : access nk_context; arg2 : access constant nk_user_font)  -- ./Nuklear/nuklear.h:3683
   with Import => True,
        Convention => C,
        External_Name => "nk_style_set_font";

   function style_set_cursor (arg1 : access nk_context; arg2 : nk_style_cursor) return nk_bool  -- ./Nuklear/nuklear.h:3684
   with Import => True,
        Convention => C,
        External_Name => "nk_style_set_cursor";

   procedure style_show_cursor (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3685
   with Import => True,
        Convention => C,
        External_Name => "nk_style_show_cursor";

   procedure style_hide_cursor (arg1 : access nk_context)  -- ./Nuklear/nuklear.h:3686
   with Import => True,
        Convention => C,
        External_Name => "nk_style_hide_cursor";

   function style_push_font (arg1 : access nk_context; arg2 : access constant nk_user_font) return nk_bool  -- ./Nuklear/nuklear.h:3688
   with Import => True,
        Convention => C,
        External_Name => "nk_style_push_font";

   function style_push_float
     (arg1 : access nk_context;
      arg2 : access float;
      arg3 : float) return nk_bool  -- ./Nuklear/nuklear.h:3689
   with Import => True,
        Convention => C,
        External_Name => "nk_style_push_float";

   function style_push_vec2
     (arg1 : access nk_context;
      arg2 : access nk_vec2_t;
      arg3 : nk_vec2_t) return nk_bool  -- ./Nuklear/nuklear.h:3690
   with Import => True,
        Convention => C,
        External_Name => "nk_style_push_vec2";

   type nk_style_item;
   function style_push_style_item
     (arg1 : access nk_context;
      arg2 : access nk_style_item;
      arg3 : nk_style_item) return nk_bool  -- ./Nuklear/nuklear.h:3691
   with Import => True,
        Convention => C,
        External_Name => "nk_style_push_style_item";

   function style_push_flags
     (arg1 : access nk_context;
      arg2 : access nk_flags;
      arg3 : nk_flags) return nk_bool  -- ./Nuklear/nuklear.h:3692
   with Import => True,
        Convention => C,
        External_Name => "nk_style_push_flags";

   function style_push_color
     (arg1 : access nk_context;
      arg2 : access nk_color;
      arg3 : nk_color) return nk_bool  -- ./Nuklear/nuklear.h:3693
   with Import => True,
        Convention => C,
        External_Name => "nk_style_push_color";

   function style_pop_font (arg1 : access nk_context) return nk_bool  -- ./Nuklear/nuklear.h:3695
   with Import => True,
        Convention => C,
        External_Name => "nk_style_pop_font";

   function style_pop_float (arg1 : access nk_context) return nk_bool  -- ./Nuklear/nuklear.h:3696
   with Import => True,
        Convention => C,
        External_Name => "nk_style_pop_float";

   function style_pop_vec2 (arg1 : access nk_context) return nk_bool  -- ./Nuklear/nuklear.h:3697
   with Import => True,
        Convention => C,
        External_Name => "nk_style_pop_vec2";

   function style_pop_style_item (arg1 : access nk_context) return nk_bool  -- ./Nuklear/nuklear.h:3698
   with Import => True,
        Convention => C,
        External_Name => "nk_style_pop_style_item";

   function style_pop_flags (arg1 : access nk_context) return nk_bool  -- ./Nuklear/nuklear.h:3699
   with Import => True,
        Convention => C,
        External_Name => "nk_style_pop_flags";

   function style_pop_color (arg1 : access nk_context) return nk_bool  -- ./Nuklear/nuklear.h:3700
   with Import => True,
        Convention => C,
        External_Name => "nk_style_pop_color";

  -- =============================================================================
  -- *
  -- *                                  COLOR
  -- *
  -- * =============================================================================

   function rgb
     (r : int;
      g : int;
      b : int) return nk_color  -- ./Nuklear/nuklear.h:3706
   with Import => True,
        Convention => C,
        External_Name => "nk_rgb";

   function rgb_iv (rgb : access int) return nk_color  -- ./Nuklear/nuklear.h:3707
   with Import => True,
        Convention => C,
        External_Name => "nk_rgb_iv";

   function rgb_bv (rgb : access nk_byte) return nk_color  -- ./Nuklear/nuklear.h:3708
   with Import => True,
        Convention => C,
        External_Name => "nk_rgb_bv";

   function rgb_f
     (r : float;
      g : float;
      b : float) return nk_color  -- ./Nuklear/nuklear.h:3709
   with Import => True,
        Convention => C,
        External_Name => "nk_rgb_f";

   function rgb_fv (rgb : access float) return nk_color  -- ./Nuklear/nuklear.h:3710
   with Import => True,
        Convention => C,
        External_Name => "nk_rgb_fv";

   function rgb_cf (c : nk_colorf) return nk_color  -- ./Nuklear/nuklear.h:3711
   with Import => True,
        Convention => C,
        External_Name => "nk_rgb_cf";

   function rgb_hex (rgb : Interfaces.C.char_array) return nk_color  -- ./Nuklear/nuklear.h:3712
   with Import => True,
        Convention => C,
        External_Name => "nk_rgb_hex";

   function rgb_factor (col : nk_color; factor : float) return nk_color  -- ./Nuklear/nuklear.h:3713
   with Import => True,
        Convention => C,
        External_Name => "nk_rgb_factor";

   function rgba
     (r : int;
      g : int;
      b : int;
      a : int) return nk_color  -- ./Nuklear/nuklear.h:3715
   with Import => True,
        Convention => C,
        External_Name => "nk_rgba";

   function rgba_u32 (arg1 : nk_uint) return nk_color  -- ./Nuklear/nuklear.h:3716
   with Import => True,
        Convention => C,
        External_Name => "nk_rgba_u32";

   function rgba_iv (rgba : access int) return nk_color  -- ./Nuklear/nuklear.h:3717
   with Import => True,
        Convention => C,
        External_Name => "nk_rgba_iv";

   function rgba_bv (rgba : access nk_byte) return nk_color  -- ./Nuklear/nuklear.h:3718
   with Import => True,
        Convention => C,
        External_Name => "nk_rgba_bv";

   function rgba_f
     (r : float;
      g : float;
      b : float;
      a : float) return nk_color  -- ./Nuklear/nuklear.h:3719
   with Import => True,
        Convention => C,
        External_Name => "nk_rgba_f";

   function rgba_fv (rgba : access float) return nk_color  -- ./Nuklear/nuklear.h:3720
   with Import => True,
        Convention => C,
        External_Name => "nk_rgba_fv";

   function rgba_cf (c : nk_colorf) return nk_color  -- ./Nuklear/nuklear.h:3721
   with Import => True,
        Convention => C,
        External_Name => "nk_rgba_cf";

   function rgba_hex (rgb : Interfaces.C.char_array) return nk_color  -- ./Nuklear/nuklear.h:3722
   with Import => True,
        Convention => C,
        External_Name => "nk_rgba_hex";

   function hsva_colorf
     (h : float;
      s : float;
      v : float;
      a : float) return nk_colorf  -- ./Nuklear/nuklear.h:3724
   with Import => True,
        Convention => C,
        External_Name => "nk_hsva_colorf";

   function hsva_colorfv (c : access float) return nk_colorf  -- ./Nuklear/nuklear.h:3725
   with Import => True,
        Convention => C,
        External_Name => "nk_hsva_colorfv";

   procedure colorf_hsva_f
     (out_h : access float;
      out_s : access float;
      out_v : access float;
      out_a : access float;
      c_in : nk_colorf)  -- ./Nuklear/nuklear.h:3726
   with Import => True,
        Convention => C,
        External_Name => "nk_colorf_hsva_f";

   procedure colorf_hsva_fv (hsva : access float; c_in : nk_colorf)  -- ./Nuklear/nuklear.h:3727
   with Import => True,
        Convention => C,
        External_Name => "nk_colorf_hsva_fv";

   function hsv
     (h : int;
      s : int;
      v : int) return nk_color  -- ./Nuklear/nuklear.h:3729
   with Import => True,
        Convention => C,
        External_Name => "nk_hsv";

   function hsv_iv (hsv : access int) return nk_color  -- ./Nuklear/nuklear.h:3730
   with Import => True,
        Convention => C,
        External_Name => "nk_hsv_iv";

   function hsv_bv (hsv : access nk_byte) return nk_color  -- ./Nuklear/nuklear.h:3731
   with Import => True,
        Convention => C,
        External_Name => "nk_hsv_bv";

   function hsv_f
     (h : float;
      s : float;
      v : float) return nk_color  -- ./Nuklear/nuklear.h:3732
   with Import => True,
        Convention => C,
        External_Name => "nk_hsv_f";

   function hsv_fv (hsv : access float) return nk_color  -- ./Nuklear/nuklear.h:3733
   with Import => True,
        Convention => C,
        External_Name => "nk_hsv_fv";

   function hsva
     (h : int;
      s : int;
      v : int;
      a : int) return nk_color  -- ./Nuklear/nuklear.h:3735
   with Import => True,
        Convention => C,
        External_Name => "nk_hsva";

   function hsva_iv (hsva : access int) return nk_color  -- ./Nuklear/nuklear.h:3736
   with Import => True,
        Convention => C,
        External_Name => "nk_hsva_iv";

   function hsva_bv (hsva : access nk_byte) return nk_color  -- ./Nuklear/nuklear.h:3737
   with Import => True,
        Convention => C,
        External_Name => "nk_hsva_bv";

   function hsva_f
     (h : float;
      s : float;
      v : float;
      a : float) return nk_color  -- ./Nuklear/nuklear.h:3738
   with Import => True,
        Convention => C,
        External_Name => "nk_hsva_f";

   function hsva_fv (hsva : access float) return nk_color  -- ./Nuklear/nuklear.h:3739
   with Import => True,
        Convention => C,
        External_Name => "nk_hsva_fv";

  -- color (conversion nuklear --> user)
   procedure color_f
     (r : access float;
      g : access float;
      b : access float;
      a : access float;
      arg5 : nk_color)  -- ./Nuklear/nuklear.h:3742
   with Import => True,
        Convention => C,
        External_Name => "nk_color_f";

   procedure color_fv (rgba_out : access float; arg2 : nk_color)  -- ./Nuklear/nuklear.h:3743
   with Import => True,
        Convention => C,
        External_Name => "nk_color_fv";

   function color_cf (arg1 : nk_color) return nk_colorf  -- ./Nuklear/nuklear.h:3744
   with Import => True,
        Convention => C,
        External_Name => "nk_color_cf";

   procedure color_d
     (r : access double;
      g : access double;
      b : access double;
      a : access double;
      arg5 : nk_color)  -- ./Nuklear/nuklear.h:3745
   with Import => True,
        Convention => C,
        External_Name => "nk_color_d";

   procedure color_dv (rgba_out : access double; arg2 : nk_color)  -- ./Nuklear/nuklear.h:3746
   with Import => True,
        Convention => C,
        External_Name => "nk_color_dv";

   function color_u32 (arg1 : nk_color) return nk_uint  -- ./Nuklear/nuklear.h:3748
   with Import => True,
        Convention => C,
        External_Name => "nk_color_u32";

   procedure color_hex_rgba (output : Interfaces.C.char_array; arg2 : nk_color)  -- ./Nuklear/nuklear.h:3749
   with Import => True,
        Convention => C,
        External_Name => "nk_color_hex_rgba";

   procedure color_hex_rgb (output : Interfaces.C.char_array; arg2 : nk_color)  -- ./Nuklear/nuklear.h:3750
   with Import => True,
        Convention => C,
        External_Name => "nk_color_hex_rgb";

   procedure color_hsv_i
     (out_h : access int;
      out_s : access int;
      out_v : access int;
      arg4 : nk_color)  -- ./Nuklear/nuklear.h:3752
   with Import => True,
        Convention => C,
        External_Name => "nk_color_hsv_i";

   procedure color_hsv_b
     (out_h : access nk_byte;
      out_s : access nk_byte;
      out_v : access nk_byte;
      arg4 : nk_color)  -- ./Nuklear/nuklear.h:3753
   with Import => True,
        Convention => C,
        External_Name => "nk_color_hsv_b";

   procedure color_hsv_iv (hsv_out : access int; arg2 : nk_color)  -- ./Nuklear/nuklear.h:3754
   with Import => True,
        Convention => C,
        External_Name => "nk_color_hsv_iv";

   procedure color_hsv_bv (hsv_out : access nk_byte; arg2 : nk_color)  -- ./Nuklear/nuklear.h:3755
   with Import => True,
        Convention => C,
        External_Name => "nk_color_hsv_bv";

   procedure color_hsv_f
     (out_h : access float;
      out_s : access float;
      out_v : access float;
      arg4 : nk_color)  -- ./Nuklear/nuklear.h:3756
   with Import => True,
        Convention => C,
        External_Name => "nk_color_hsv_f";

   procedure color_hsv_fv (hsv_out : access float; arg2 : nk_color)  -- ./Nuklear/nuklear.h:3757
   with Import => True,
        Convention => C,
        External_Name => "nk_color_hsv_fv";

   procedure color_hsva_i
     (h : access int;
      s : access int;
      v : access int;
      a : access int;
      arg5 : nk_color)  -- ./Nuklear/nuklear.h:3759
   with Import => True,
        Convention => C,
        External_Name => "nk_color_hsva_i";

   procedure color_hsva_b
     (h : access nk_byte;
      s : access nk_byte;
      v : access nk_byte;
      a : access nk_byte;
      arg5 : nk_color)  -- ./Nuklear/nuklear.h:3760
   with Import => True,
        Convention => C,
        External_Name => "nk_color_hsva_b";

   procedure color_hsva_iv (hsva_out : access int; arg2 : nk_color)  -- ./Nuklear/nuklear.h:3761
   with Import => True,
        Convention => C,
        External_Name => "nk_color_hsva_iv";

   procedure color_hsva_bv (hsva_out : access nk_byte; arg2 : nk_color)  -- ./Nuklear/nuklear.h:3762
   with Import => True,
        Convention => C,
        External_Name => "nk_color_hsva_bv";

   procedure color_hsva_f
     (out_h : access float;
      out_s : access float;
      out_v : access float;
      out_a : access float;
      arg5 : nk_color)  -- ./Nuklear/nuklear.h:3763
   with Import => True,
        Convention => C,
        External_Name => "nk_color_hsva_f";

   procedure color_hsva_fv (hsva_out : access float; arg2 : nk_color)  -- ./Nuklear/nuklear.h:3764
   with Import => True,
        Convention => C,
        External_Name => "nk_color_hsva_fv";

  -- =============================================================================
  -- *
  -- *                                  IMAGE
  -- *
  -- * =============================================================================

   function handle_ptr (arg1 : System.Address) return nk_handle  -- ./Nuklear/nuklear.h:3770
   with Import => True,
        Convention => C,
        External_Name => "nk_handle_ptr";

   function handle_id (arg1 : int) return nk_handle  -- ./Nuklear/nuklear.h:3771
   with Import => True,
        Convention => C,
        External_Name => "nk_handle_id";

   function image_handle (arg1 : nk_handle) return nk_image_t  -- ./Nuklear/nuklear.h:3772
   with Import => True,
        Convention => C,
        External_Name => "nk_image_handle";

   function image_ptr (arg1 : System.Address) return nk_image_t  -- ./Nuklear/nuklear.h:3773
   with Import => True,
        Convention => C,
        External_Name => "nk_image_ptr";

   function image_id (arg1 : int) return nk_image_t  -- ./Nuklear/nuklear.h:3774
   with Import => True,
        Convention => C,
        External_Name => "nk_image_id";

   function image_is_subimage (img : access constant nk_image_t) return nk_bool  -- ./Nuklear/nuklear.h:3775
   with Import => True,
        Convention => C,
        External_Name => "nk_image_is_subimage";

   function subimage_ptr
     (arg1 : System.Address;
      w : nk_ushort;
      h : nk_ushort;
      sub_region : nk_rect_t) return nk_image_t  -- ./Nuklear/nuklear.h:3776
   with Import => True,
        Convention => C,
        External_Name => "nk_subimage_ptr";

   function subimage_id
     (arg1 : int;
      w : nk_ushort;
      h : nk_ushort;
      sub_region : nk_rect_t) return nk_image_t  -- ./Nuklear/nuklear.h:3777
   with Import => True,
        Convention => C,
        External_Name => "nk_subimage_id";

   function subimage_handle
     (arg1 : nk_handle;
      w : nk_ushort;
      h : nk_ushort;
      sub_region : nk_rect_t) return nk_image_t  -- ./Nuklear/nuklear.h:3778
   with Import => True,
        Convention => C,
        External_Name => "nk_subimage_handle";

  -- =============================================================================
  -- *
  -- *                                  9-SLICE
  -- *
  -- * =============================================================================

   function nine_slice_handle
     (arg1 : nk_handle;
      l : nk_ushort;
      t : nk_ushort;
      r : nk_ushort;
      b : nk_ushort) return nk_nine_slice  -- ./Nuklear/nuklear.h:3784
   with Import => True,
        Convention => C,
        External_Name => "nk_nine_slice_handle";

   function nine_slice_ptr
     (arg1 : System.Address;
      l : nk_ushort;
      t : nk_ushort;
      r : nk_ushort;
      b : nk_ushort) return nk_nine_slice  -- ./Nuklear/nuklear.h:3785
   with Import => True,
        Convention => C,
        External_Name => "nk_nine_slice_ptr";

   function nine_slice_id
     (arg1 : int;
      l : nk_ushort;
      t : nk_ushort;
      r : nk_ushort;
      b : nk_ushort) return nk_nine_slice  -- ./Nuklear/nuklear.h:3786
   with Import => True,
        Convention => C,
        External_Name => "nk_nine_slice_id";

   function nine_slice_is_sub9slice (img : access constant nk_nine_slice) return int  -- ./Nuklear/nuklear.h:3787
   with Import => True,
        Convention => C,
        External_Name => "nk_nine_slice_is_sub9slice";

   function sub9slice_ptr
     (arg1 : System.Address;
      w : nk_ushort;
      h : nk_ushort;
      sub_region : nk_rect_t;
      l : nk_ushort;
      t : nk_ushort;
      r : nk_ushort;
      b : nk_ushort) return nk_nine_slice  -- ./Nuklear/nuklear.h:3788
   with Import => True,
        Convention => C,
        External_Name => "nk_sub9slice_ptr";

   function sub9slice_id
     (arg1 : int;
      w : nk_ushort;
      h : nk_ushort;
      sub_region : nk_rect_t;
      l : nk_ushort;
      t : nk_ushort;
      r : nk_ushort;
      b : nk_ushort) return nk_nine_slice  -- ./Nuklear/nuklear.h:3789
   with Import => True,
        Convention => C,
        External_Name => "nk_sub9slice_id";

   function sub9slice_handle
     (arg1 : nk_handle;
      w : nk_ushort;
      h : nk_ushort;
      sub_region : nk_rect_t;
      l : nk_ushort;
      t : nk_ushort;
      r : nk_ushort;
      b : nk_ushort) return nk_nine_slice  -- ./Nuklear/nuklear.h:3790
   with Import => True,
        Convention => C,
        External_Name => "nk_sub9slice_handle";

  -- =============================================================================
  -- *
  -- *                                  MATH
  -- *
  -- * =============================================================================

   function murmur_hash
     (key : System.Address;
      len : int;
      seed : nk_hash) return nk_hash  -- ./Nuklear/nuklear.h:3796
   with Import => True,
        Convention => C,
        External_Name => "nk_murmur_hash";

   procedure triangle_from_direction
     (result : access nk_vec2_t;
      r : nk_rect_t;
      pad_x : float;
      pad_y : float;
      arg5 : nk_heading)  -- ./Nuklear/nuklear.h:3797
   with Import => True,
        Convention => C,
        External_Name => "nk_triangle_from_direction";

   function vec2 (x : float; y : float) return nk_vec2_t  -- ./Nuklear/nuklear.h:3799
   with Import => True,
        Convention => C,
        External_Name => "nk_vec2";

   function vec2i (x : int; y : int) return nk_vec2_t  -- ./Nuklear/nuklear.h:3800
   with Import => True,
        Convention => C,
        External_Name => "nk_vec2i";

   function vec2v (xy : access float) return nk_vec2_t  -- ./Nuklear/nuklear.h:3801
   with Import => True,
        Convention => C,
        External_Name => "nk_vec2v";

   function vec2iv (xy : access int) return nk_vec2_t  -- ./Nuklear/nuklear.h:3802
   with Import => True,
        Convention => C,
        External_Name => "nk_vec2iv";

   function get_null_rect return nk_rect_t  -- ./Nuklear/nuklear.h:3804
   with Import => True,
        Convention => C,
        External_Name => "nk_get_null_rect";

   function rect
     (x : float;
      y : float;
      w : float;
      h : float) return nk_rect_t  -- ./Nuklear/nuklear.h:3805
   with Import => True,
        Convention => C,
        External_Name => "nk_rect";

   function recti
     (x : int;
      y : int;
      w : int;
      h : int) return nk_rect_t  -- ./Nuklear/nuklear.h:3806
   with Import => True,
        Convention => C,
        External_Name => "nk_recti";

   function recta (pos : nk_vec2_t; size : nk_vec2_t) return nk_rect_t  -- ./Nuklear/nuklear.h:3807
   with Import => True,
        Convention => C,
        External_Name => "nk_recta";

   function rectv (xywh : access float) return nk_rect_t  -- ./Nuklear/nuklear.h:3808
   with Import => True,
        Convention => C,
        External_Name => "nk_rectv";

   function rectiv (xywh : access int) return nk_rect_t  -- ./Nuklear/nuklear.h:3809
   with Import => True,
        Convention => C,
        External_Name => "nk_rectiv";

   function rect_pos (arg1 : nk_rect_t) return nk_vec2_t  -- ./Nuklear/nuklear.h:3810
   with Import => True,
        Convention => C,
        External_Name => "nk_rect_pos";

   function rect_size (arg1 : nk_rect_t) return nk_vec2_t  -- ./Nuklear/nuklear.h:3811
   with Import => True,
        Convention => C,
        External_Name => "nk_rect_size";

  -- =============================================================================
  -- *
  -- *                                  STRING
  -- *
  -- * =============================================================================

   function strlen (str : Interfaces.C.char_array) return int  -- ./Nuklear/nuklear.h:3817
   with Import => True,
        Convention => C,
        External_Name => "nk_strlen";

   function stricmp (s1 : Interfaces.C.char_array; s2 : Interfaces.C.char_array) return int  -- ./Nuklear/nuklear.h:3818
   with Import => True,
        Convention => C,
        External_Name => "nk_stricmp";

   function stricmpn
     (s1 : Interfaces.C.char_array;
      s2 : Interfaces.C.char_array;
      n : int) return int  -- ./Nuklear/nuklear.h:3819
   with Import => True,
        Convention => C,
        External_Name => "nk_stricmpn";

   function strtoi (str : Interfaces.C.char_array; endptr : System.Address) return int  -- ./Nuklear/nuklear.h:3820
   with Import => True,
        Convention => C,
        External_Name => "nk_strtoi";

   function strtof (str : Interfaces.C.char_array; endptr : System.Address) return float  -- ./Nuklear/nuklear.h:3821
   with Import => True,
        Convention => C,
        External_Name => "nk_strtof";

   function strtod (str : Interfaces.C.char_array; endptr : System.Address) return double  -- ./Nuklear/nuklear.h:3824
   with Import => True,
        Convention => C,
        External_Name => "nk_strtod";

   function strfilter (text : Interfaces.C.char_array; regexp : Interfaces.C.char_array) return int  -- ./Nuklear/nuklear.h:3826
   with Import => True,
        Convention => C,
        External_Name => "nk_strfilter";

   function strmatch_fuzzy_string
     (str : Interfaces.C.char_array;
      pattern : Interfaces.C.char_array;
      out_score : access int) return int  -- ./Nuklear/nuklear.h:3827
   with Import => True,
        Convention => C,
        External_Name => "nk_strmatch_fuzzy_string";

   function strmatch_fuzzy_text
     (txt : Interfaces.C.char_array;
      txt_len : int;
      pattern : Interfaces.C.char_array;
      out_score : access int) return int  -- ./Nuklear/nuklear.h:3828
   with Import => True,
        Convention => C,
        External_Name => "nk_strmatch_fuzzy_text";

  -- =============================================================================
  -- *
  -- *                                  UTF-8
  -- *
  -- * =============================================================================

   function utf_decode
     (arg1 : Interfaces.C.char_array;
      arg2 : access nk_rune;
      arg3 : int) return int  -- ./Nuklear/nuklear.h:3834
   with Import => True,
        Convention => C,
        External_Name => "nk_utf_decode";

   function utf_encode
     (arg1 : nk_rune;
      arg2 : Interfaces.C.char_array;
      arg3 : int) return int  -- ./Nuklear/nuklear.h:3835
   with Import => True,
        Convention => C,
        External_Name => "nk_utf_encode";

   function utf_len (arg1 : Interfaces.C.char_array; byte_len : int) return int  -- ./Nuklear/nuklear.h:3836
   with Import => True,
        Convention => C,
        External_Name => "nk_utf_len";

   function utf_at
     (buffer : Interfaces.C.char_array;
      length : int;
      index : int;
      unicode : access nk_rune;
      len : access int) return Interfaces.C.Strings.chars_ptr  -- ./Nuklear/nuklear.h:3837
   with Import => True,
        Convention => C,
        External_Name => "nk_utf_at";

  -- ===============================================================
  -- *
  -- *                          FONT
  -- *
  -- * ===============================================================

  --/// ### Font
  --/// Font handling in this library was designed to be quite customizable and lets
  --/// you decide what you want to use and what you want to provide. There are three
  --/// different ways to use the font atlas. The first two will use your font
  --/// handling scheme and only requires essential data to run nuklear. The next
  --/// slightly more advanced features is font handling with vertex buffer output.
  --/// Finally the most complex API wise is using nuklear's font baking API.
  --//
  --/// #### Using your own implementation without vertex buffer output
  --///
  --/// So first up the easiest way to do font handling is by just providing a
  --/// `nk_user_font` struct which only requires the height in pixel of the used
  --/// font and a callback to calculate the width of a string. This way of handling
  --/// fonts is best fitted for using the normal draw shape command API where you
  --/// do all the text drawing yourself and the library does not require any kind
  --/// of deeper knowledge about which font handling mechanism you use.
  --/// IMPORTANT: the `nk_user_font` pointer provided to nuklear has to persist
  --/// over the complete life time! I know this sucks but it is currently the only
  --/// way to switch between fonts.
  --///
  --/// ```c
  --///     float your_text_width_calculation(nk_handle handle, float height, const char *text, int len)
  --///     {
  --///         your_font_type *type = handle.ptr;
  --///         float text_width = ...;
  --///         return text_width;
  --///     }
  --///
  --///     struct nk_user_font font;
  --///     font.userdata.ptr = &your_font_class_or_struct;
  --///     font.height = your_font_height;
  --///     font.width = your_text_width_calculation;
  --///
  --///     struct nk_context ctx;
  --///     nk_init_default(&ctx, &font);
  --/// ```
  --/// #### Using your own implementation with vertex buffer output
  --///
  --/// While the first approach works fine if you don't want to use the optional
  --/// vertex buffer output it is not enough if you do. To get font handling working
  --/// for these cases you have to provide two additional parameters inside the
  --/// `nk_user_font`. First a texture atlas handle used to draw text as subimages
  --/// of a bigger font atlas texture and a callback to query a character's glyph
  --/// information (offset, size, ...). So it is still possible to provide your own
  --/// font and use the vertex buffer output.
  --///
  --/// ```c
  --///     float your_text_width_calculation(nk_handle handle, float height, const char *text, int len)
  --///     {
  --///         your_font_type *type = handle.ptr;
  --///         float text_width = ...;
  --///         return text_width;
  --///     }
  --///     void query_your_font_glyph(nk_handle handle, float font_height, struct nk_user_font_glyph *glyph, nk_rune codepoint, nk_rune next_codepoint)
  --///     {
  --///         your_font_type *type = handle.ptr;
  --///         glyph.width = ...;
  --///         glyph.height = ...;
  --///         glyph.xadvance = ...;
  --///         glyph.uv[0].x = ...;
  --///         glyph.uv[0].y = ...;
  --///         glyph.uv[1].x = ...;
  --///         glyph.uv[1].y = ...;
  --///         glyph.offset.x = ...;
  --///         glyph.offset.y = ...;
  --///     }
  --///
  --///     struct nk_user_font font;
  --///     font.userdata.ptr = &your_font_class_or_struct;
  --///     font.height = your_font_height;
  --///     font.width = your_text_width_calculation;
  --///     font.query = query_your_font_glyph;
  --///     font.texture.id = your_font_texture;
  --///
  --///     struct nk_context ctx;
  --///     nk_init_default(&ctx, &font);
  --/// ```
  --///
  --/// #### Nuklear font baker
  --///
  --/// The final approach if you do not have a font handling functionality or don't
  --/// want to use it in this library is by using the optional font baker.
  --/// The font baker APIs can be used to create a font plus font atlas texture
  --/// and can be used with or without the vertex buffer output.
  --///
  --/// It still uses the `nk_user_font` struct and the two different approaches
  --/// previously stated still work. The font baker is not located inside
  --/// `nk_context` like all other systems since it can be understood as more of
  --/// an extension to nuklear and does not really depend on any `nk_context` state.
  --///
  --/// Font baker need to be initialized first by one of the nk_font_atlas_init_xxx
  --/// functions. If you don't care about memory just call the default version
  --/// `nk_font_atlas_init_default` which will allocate all memory from the standard library.
  --/// If you want to control memory allocation but you don't care if the allocated
  --/// memory is temporary and therefore can be freed directly after the baking process
  --/// is over or permanent you can call `nk_font_atlas_init`.
  --///
  --/// After successfully initializing the font baker you can add Truetype(.ttf) fonts from
  --/// different sources like memory or from file by calling one of the `nk_font_atlas_add_xxx`.
  --/// functions. Adding font will permanently store each font, font config and ttf memory block(!)
  --/// inside the font atlas and allows to reuse the font atlas. If you don't want to reuse
  --/// the font baker by for example adding additional fonts you can call
  --/// `nk_font_atlas_cleanup` after the baking process is over (after calling nk_font_atlas_end).
  --///
  --/// As soon as you added all fonts you wanted you can now start the baking process
  --/// for every selected glyph to image by calling `nk_font_atlas_bake`.
  --/// The baking process returns image memory, width and height which can be used to
  --/// either create your own image object or upload it to any graphics library.
  --/// No matter which case you finally have to call `nk_font_atlas_end` which
  --/// will free all temporary memory including the font atlas image so make sure
  --/// you created our texture beforehand. `nk_font_atlas_end` requires a handle
  --/// to your font texture or object and optionally fills a `struct nk_draw_null_texture`
  --/// which can be used for the optional vertex output. If you don't want it just
  --/// set the argument to `NULL`.
  --///
  --/// At this point you are done and if you don't want to reuse the font atlas you
  --/// can call `nk_font_atlas_cleanup` to free all truetype blobs and configuration
  --/// memory. Finally if you don't use the font atlas and any of it's fonts anymore
  --/// you need to call `nk_font_atlas_clear` to free all memory still being used.
  --///
  --/// ```c
  --///     struct nk_font_atlas atlas;
  --///     nk_font_atlas_init_default(&atlas);
  --///     nk_font_atlas_begin(&atlas);
  --///     nk_font *font = nk_font_atlas_add_from_file(&atlas, "Path/To/Your/TTF_Font.ttf", 13, 0);
  --///     nk_font *font2 = nk_font_atlas_add_from_file(&atlas, "Path/To/Your/TTF_Font2.ttf", 16, 0);
  --///     const void* img = nk_font_atlas_bake(&atlas, &img_width, &img_height, FONT_ATLAS_RGBA32);
  --///     nk_font_atlas_end(&atlas, nk_handle_id(texture), 0);
  --///
  --///     struct nk_context ctx;
  --///     nk_init_default(&ctx, &font->handle);
  --///     while (1) {
  --///
  --///     }
  --///     nk_font_atlas_clear(&atlas);
  --/// ```
  --/// The font baker API is probably the most complex API inside this library and
  --/// I would suggest reading some of my examples `example/` to get a grip on how
  --/// to use the font atlas. There are a number of details I left out. For example
  --/// how to merge fonts, configure a font with `nk_font_config` to use other languages,
  --/// use another texture coordinate format and a lot more:
  --///
  --/// ```c
  --///     struct nk_font_config cfg = nk_font_config(font_pixel_height);
  --///     cfg.merge_mode = nk_false or nk_true;
  --///     cfg.range = nk_font_korean_glyph_ranges();
  --///     cfg.coord_type = COORD_PIXEL;
  --///     nk_font *font = nk_font_atlas_add_from_file(&atlas, "Path/To/Your/TTF_Font.ttf", 13, &cfg);
  --/// ```
  --

   type nk_text_width_f is access function
        (arg1 : nk_handle;
         arg2 : float;
         arg3 : Interfaces.C.char_array;
         arg4 : int) return float
   with Convention => C;  -- ./Nuklear/nuklear.h:3994

   type nk_user_font_glyph;
   type nk_query_font_glyph_f is access procedure
        (arg1 : nk_handle;
         arg2 : float;
         arg3 : access nk_user_font_glyph;
         arg4 : nk_rune;
         arg5 : nk_rune)
   with Convention => C;  -- ./Nuklear/nuklear.h:3995

   type anon_array1652 is array (0 .. 1) of aliased nk_vec2_t;
   type nk_user_font_glyph is record
      uv : aliased anon_array1652;  -- ./Nuklear/nuklear.h:4001
      offset : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:4003
      width : aliased float;  -- ./Nuklear/nuklear.h:4005
      height : aliased float;  -- ./Nuklear/nuklear.h:4005
      xadvance : aliased float;  -- ./Nuklear/nuklear.h:4007
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4000

  -- texture coordinates
  -- offset between top left and glyph
  -- size of the glyph
  -- offset to the next glyph
   type nk_user_font is record
      userdata : aliased nk_handle;  -- ./Nuklear/nuklear.h:4013
      height : aliased float;  -- ./Nuklear/nuklear.h:4015
      width : nk_text_width_f;  -- ./Nuklear/nuklear.h:4017
      query : nk_query_font_glyph_f;  -- ./Nuklear/nuklear.h:4020
      texture : aliased nk_handle;  -- ./Nuklear/nuklear.h:4022
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4012

  -- user provided font handle
  -- max height of the font
  -- font string width in pixel callback
  -- font glyph callback to query drawing info
  -- texture handle to the used font atlas or texture
   type nk_font_coord_type is
     (COORD_UV,
      COORD_PIXEL)
   with Convention => C;  -- ./Nuklear/nuklear.h:4028

  -- texture coordinates inside font glyphs are clamped between 0-1
  -- texture coordinates inside font glyphs are in absolute pixel
   type nk_baked_font is record
      height : aliased float;  -- ./Nuklear/nuklear.h:4035
      ascent : aliased float;  -- ./Nuklear/nuklear.h:4037
      descent : aliased float;  -- ./Nuklear/nuklear.h:4037
      glyph_offset : aliased nk_rune;  -- ./Nuklear/nuklear.h:4039
      glyph_count : aliased nk_rune;  -- ./Nuklear/nuklear.h:4041
      ranges : access nk_rune;  -- ./Nuklear/nuklear.h:4043
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4034

  -- height of the font
  -- font glyphs ascent and descent
  -- glyph array offset inside the font glyph baking output array
  -- number of glyphs of this font inside the glyph baking array output
  -- font codepoint ranges as pairs of (from/to) and 0 as last element
   type nk_font_config;
   type anon_array1663 is array (0 .. 2) of aliased unsigned_char;
   type nk_font_config is record
      next : access nk_font_config;  -- ./Nuklear/nuklear.h:4048
      ttf_blob : System.Address;  -- ./Nuklear/nuklear.h:4050
      ttf_size : aliased nk_size;  -- ./Nuklear/nuklear.h:4053
      ttf_data_owned_by_atlas : aliased unsigned_char;  -- ./Nuklear/nuklear.h:4057
      merge_mode : aliased unsigned_char;  -- ./Nuklear/nuklear.h:4059
      pixel_snap : aliased unsigned_char;  -- ./Nuklear/nuklear.h:4061
      oversample_v : aliased unsigned_char;  -- ./Nuklear/nuklear.h:4063
      oversample_h : aliased unsigned_char;  -- ./Nuklear/nuklear.h:4063
      padding : aliased anon_array1663;  -- ./Nuklear/nuklear.h:4065
      size : aliased float;  -- ./Nuklear/nuklear.h:4067
      coord_type : aliased nk_font_coord_type;  -- ./Nuklear/nuklear.h:4069
      spacing : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:4071
      c_range : access nk_rune;  -- ./Nuklear/nuklear.h:4073
      font : access nk_baked_font;  -- ./Nuklear/nuklear.h:4075
      fallback_glyph : aliased nk_rune;  -- ./Nuklear/nuklear.h:4077
      n : access nk_font_config;  -- ./Nuklear/nuklear.h:4079
      p : access nk_font_config;  -- ./Nuklear/nuklear.h:4080
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4047

  -- NOTE: only used internally
  -- pointer to loaded TTF file memory block.
  --     * NOTE: not needed for nk_font_atlas_add_from_memory and nk_font_atlas_add_from_file.

  -- size of the loaded TTF file memory block
  --     * NOTE: not needed for nk_font_atlas_add_from_memory and nk_font_atlas_add_from_file.

  -- used inside font atlas: default to: 0
  -- merges this font into the last font
  -- align every character to pixel boundary (if true set oversample (1,1))
  -- rasterize at high quality for sub-pixel position
  -- baked pixel height of the font
  -- texture coordinate format with either pixel or UV coordinates
  -- extra pixel spacing between glyphs
  -- list of unicode ranges (2 values per range, zero terminated)
  -- font to setup in the baking process: NOTE: not needed for font atlas
  -- fallback glyph to use if a given rune is not found
   type nk_font_glyph is record
      codepoint : aliased nk_rune;  -- ./Nuklear/nuklear.h:4084
      xadvance : aliased float;  -- ./Nuklear/nuklear.h:4085
      x0 : aliased float;  -- ./Nuklear/nuklear.h:4086
      y0 : aliased float;  -- ./Nuklear/nuklear.h:4086
      x1 : aliased float;  -- ./Nuklear/nuklear.h:4086
      y1 : aliased float;  -- ./Nuklear/nuklear.h:4086
      w : aliased float;  -- ./Nuklear/nuklear.h:4086
      h : aliased float;  -- ./Nuklear/nuklear.h:4086
      u0 : aliased float;  -- ./Nuklear/nuklear.h:4087
      v0 : aliased float;  -- ./Nuklear/nuklear.h:4087
      u1 : aliased float;  -- ./Nuklear/nuklear.h:4087
      v1 : aliased float;  -- ./Nuklear/nuklear.h:4087
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4083

   type nk_font;
   type nk_font is record
      next : access nk_font;  -- ./Nuklear/nuklear.h:4091
      handle : aliased nk_user_font;  -- ./Nuklear/nuklear.h:4092
      info : aliased nk_baked_font;  -- ./Nuklear/nuklear.h:4093
      scale : aliased float;  -- ./Nuklear/nuklear.h:4094
      glyphs : access nk_font_glyph;  -- ./Nuklear/nuklear.h:4095
      fallback : access constant nk_font_glyph;  -- ./Nuklear/nuklear.h:4096
      fallback_codepoint : aliased nk_rune;  -- ./Nuklear/nuklear.h:4097
      texture : aliased nk_handle;  -- ./Nuklear/nuklear.h:4098
      config : access nk_font_config;  -- ./Nuklear/nuklear.h:4099
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4090

   type nk_font_atlas_format is
     (FONT_ATLAS_ALPHA8,
      FONT_ATLAS_RGBA32)
   with Convention => C;  -- ./Nuklear/nuklear.h:4102

   type anon_array1673 is array (0 .. 6) of aliased nk_cursor;
   type nk_font_atlas is record
      pixel : System.Address;  -- ./Nuklear/nuklear.h:4108
      tex_width : aliased int;  -- ./Nuklear/nuklear.h:4109
      tex_height : aliased int;  -- ./Nuklear/nuklear.h:4110
      permanent : aliased nk_allocator;  -- ./Nuklear/nuklear.h:4112
      temporary : aliased nk_allocator;  -- ./Nuklear/nuklear.h:4113
      custom : aliased nk_recti_t;  -- ./Nuklear/nuklear.h:4115
      cursors : aliased anon_array1673;  -- ./Nuklear/nuklear.h:4116
      glyph_count : aliased int;  -- ./Nuklear/nuklear.h:4118
      glyphs : access nk_font_glyph;  -- ./Nuklear/nuklear.h:4119
      default_font : access nk_font;  -- ./Nuklear/nuklear.h:4120
      fonts : access nk_font;  -- ./Nuklear/nuklear.h:4121
      config : access nk_font_config;  -- ./Nuklear/nuklear.h:4122
      font_num : aliased int;  -- ./Nuklear/nuklear.h:4123
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4107

    type font_atlas_access is access all nk_font_atlas;

  -- some language glyph codepoint ranges
   function font_default_glyph_ranges return access nk_rune  -- ./Nuklear/nuklear.h:4127
   with Import => True,
        Convention => C,
        External_Name => "nk_font_default_glyph_ranges";

   function font_chinese_glyph_ranges return access nk_rune  -- ./Nuklear/nuklear.h:4128
   with Import => True,
        Convention => C,
        External_Name => "nk_font_chinese_glyph_ranges";

   function font_cyrillic_glyph_ranges return access nk_rune  -- ./Nuklear/nuklear.h:4129
   with Import => True,
        Convention => C,
        External_Name => "nk_font_cyrillic_glyph_ranges";

   function font_korean_glyph_ranges return access nk_rune  -- ./Nuklear/nuklear.h:4130
   with Import => True,
        Convention => C,
        External_Name => "nk_font_korean_glyph_ranges";

   procedure font_atlas_init_default (arg1 : access nk_font_atlas)  -- ./Nuklear/nuklear.h:4133
   with Import => True,
        Convention => C,
        External_Name => "nk_font_atlas_init_default";

   procedure font_atlas_init (arg1 : access nk_font_atlas; arg2 : access nk_allocator)  -- ./Nuklear/nuklear.h:4135
   with Import => True,
        Convention => C,
        External_Name => "nk_font_atlas_init";

   procedure font_atlas_init_custom
     (arg1 : access nk_font_atlas;
      persistent : access nk_allocator;
      transient : access nk_allocator)  -- ./Nuklear/nuklear.h:4136
   with Import => True,
        Convention => C,
        External_Name => "nk_font_atlas_init_custom";

   procedure font_atlas_begin (arg1 : access nk_font_atlas)  -- ./Nuklear/nuklear.h:4137
   with Import => True,
        Convention => C,
        External_Name => "nk_font_atlas_begin";

   function font_config (pixel_height : float) return nk_font_config  -- ./Nuklear/nuklear.h:4138
   with Import => True,
        Convention => C,
        External_Name => "nk_font_config";

   function font_atlas_add (arg1 : access nk_font_atlas; arg2 : access constant nk_font_config) return access nk_font  -- ./Nuklear/nuklear.h:4139
   with Import => True,
        Convention => C,
        External_Name => "nk_font_atlas_add";

   function font_atlas_add_default
     (arg1 : access nk_font_atlas;
      height : float;
      arg3 : access constant nk_font_config) return access nk_font  -- ./Nuklear/nuklear.h:4141
   with Import => True,
        Convention => C,
        External_Name => "nk_font_atlas_add_default";

   function font_atlas_add_from_memory
     (atlas : access nk_font_atlas;
      memory : System.Address;
      size : nk_size;
      height : float;
      config : access constant nk_font_config) return access nk_font  -- ./Nuklear/nuklear.h:4143
   with Import => True,
        Convention => C,
        External_Name => "nk_font_atlas_add_from_memory";

   function font_atlas_add_from_file
     (atlas : access nk_font_atlas;
      file_path : Interfaces.C.char_array;
      height : float;
      arg4 : access constant nk_font_config) return access nk_font  -- ./Nuklear/nuklear.h:4145
   with Import => True,
        Convention => C,
        External_Name => "nk_font_atlas_add_from_file";

   function font_atlas_add_compressed
     (arg1 : access nk_font_atlas;
      memory : System.Address;
      size : nk_size;
      height : float;
      arg5 : access constant nk_font_config) return access nk_font  -- ./Nuklear/nuklear.h:4147
   with Import => True,
        Convention => C,
        External_Name => "nk_font_atlas_add_compressed";

   function font_atlas_add_compressed_base85
     (arg1 : access nk_font_atlas;
      data : Interfaces.C.char_array;
      height : float;
      config : access constant nk_font_config) return access nk_font  -- ./Nuklear/nuklear.h:4148
   with Import => True,
        Convention => C,
        External_Name => "nk_font_atlas_add_compressed_base85";

   function font_atlas_bake
     (arg1 : access nk_font_atlas;
      width : access int;
      height : access int;
      arg4 : nk_font_atlas_format) return System.Address  -- ./Nuklear/nuklear.h:4149
   with Import => True,
        Convention => C,
        External_Name => "nk_font_atlas_bake";

   procedure font_atlas_end
     (arg1 : access nk_font_atlas;
      tex : nk_handle;
      arg3 : access nk_draw_null_texture)  -- ./Nuklear/nuklear.h:4150
   with Import => True,
        Convention => C,
        External_Name => "nk_font_atlas_end";

   function font_find_glyph (arg1 : access nk_font; unicode : nk_rune) return access constant nk_font_glyph  -- ./Nuklear/nuklear.h:4151
   with Import => True,
        Convention => C,
        External_Name => "nk_font_find_glyph";

   procedure font_atlas_cleanup (atlas : access nk_font_atlas)  -- ./Nuklear/nuklear.h:4152
   with Import => True,
        Convention => C,
        External_Name => "nk_font_atlas_cleanup";

   procedure font_atlas_clear (arg1 : access nk_font_atlas)  -- ./Nuklear/nuklear.h:4153
   with Import => True,
        Convention => C,
        External_Name => "nk_font_atlas_clear";

  -- ==============================================================
  -- *
  -- *                          MEMORY BUFFER
  -- *
  -- * ===============================================================

  --/// ### Memory Buffer
  --/// A basic (double)-buffer with linear allocation and resetting as only
  --/// freeing policy. The buffer's main purpose is to control all memory management
  --/// inside the GUI toolkit and still leave memory control as much as possible in
  --/// the hand of the user while also making sure the library is easy to use if
  --/// not as much control is needed.
  --/// In general all memory inside this library can be provided from the user in
  --/// three different ways.
  --///
  --/// The first way and the one providing most control is by just passing a fixed
  --/// size memory block. In this case all control lies in the hand of the user
  --/// since he can exactly control where the memory comes from and how much memory
  --/// the library should consume. Of course using the fixed size API removes the
  --/// ability to automatically resize a buffer if not enough memory is provided so
  --/// you have to take over the resizing. While being a fixed sized buffer sounds
  --/// quite limiting, it is very effective in this library since the actual memory
  --/// consumption is quite stable and has a fixed upper bound for a lot of cases.
  --///
  --/// If you don't want to think about how much memory the library should allocate
  --/// at all time or have a very dynamic UI with unpredictable memory consumption
  --/// habits but still want control over memory allocation you can use the dynamic
  --/// allocator based API. The allocator consists of two callbacks for allocating
  --/// and freeing memory and optional userdata so you can plugin your own allocator.
  --///
  --/// The final and easiest way can be used by defining
  --/// INCLUDE_DEFAULT_ALLOCATOR which uses the standard library memory
  --/// allocation functions malloc and free and takes over complete control over
  --/// memory in this library.
  --

   type nk_memory_status is record
      memory : System.Address;  -- ./Nuklear/nuklear.h:4192
      c_type : aliased unsigned;  -- ./Nuklear/nuklear.h:4193
      size : aliased nk_size;  -- ./Nuklear/nuklear.h:4194
      allocated : aliased nk_size;  -- ./Nuklear/nuklear.h:4195
      needed : aliased nk_size;  -- ./Nuklear/nuklear.h:4196
      calls : aliased nk_size;  -- ./Nuklear/nuklear.h:4197
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4191

   type nk_allocation_type is
     (BUFFER_FIXED,
      BUFFER_DYNAMIC)
   with Convention => C;  -- ./Nuklear/nuklear.h:4200

   type nk_buffer_allocation_type is
     (BUFFER_FRONT,
      BUFFER_BACK,
      BUFFER_MAX)
   with Convention => C;  -- ./Nuklear/nuklear.h:4205

   type nk_buffer_marker is record
      active : aliased nk_bool;  -- ./Nuklear/nuklear.h:4212
      offset : aliased nk_size;  -- ./Nuklear/nuklear.h:4213
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4211

   type nk_memory is record
      ptr : System.Address;  -- ./Nuklear/nuklear.h:4216
      size : aliased nk_size;  -- ./Nuklear/nuklear.h:4216
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4216

   type anon_array1699 is array (0 .. 1) of aliased nk_buffer_marker;
   type nk_buffer is record
      marker : aliased anon_array1699;  -- ./Nuklear/nuklear.h:4218
      pool : aliased nk_allocator;  -- ./Nuklear/nuklear.h:4220
      c_type : aliased nk_allocation_type;  -- ./Nuklear/nuklear.h:4222
      memory : aliased nk_memory;  -- ./Nuklear/nuklear.h:4224
      grow_factor : aliased float;  -- ./Nuklear/nuklear.h:4226
      allocated : aliased nk_size;  -- ./Nuklear/nuklear.h:4228
      needed : aliased nk_size;  -- ./Nuklear/nuklear.h:4230
      calls : aliased nk_size;  -- ./Nuklear/nuklear.h:4232
      size : aliased nk_size;  -- ./Nuklear/nuklear.h:4234
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4217

  -- buffer marker to free a buffer to a certain offset
  -- allocator callback for dynamic buffers
  -- memory management type
  -- memory and size of the current memory block
  -- growing factor for dynamic memory management
  -- total amount of memory allocated
  -- totally consumed memory given that enough memory is present
  -- number of allocation calls
  -- current size of the buffer
   procedure buffer_init_default (arg1 : access nk_buffer)  -- ./Nuklear/nuklear.h:4239
   with Import => True,
        Convention => C,
        External_Name => "nk_buffer_init_default";

   procedure buffer_init
     (arg1 : access nk_buffer;
      arg2 : access constant nk_allocator;
      size : nk_size)  -- ./Nuklear/nuklear.h:4241
   with Import => True,
        Convention => C,
        External_Name => "nk_buffer_init";

   procedure buffer_init_fixed
     (arg1 : access nk_buffer;
      memory : System.Address;
      size : nk_size)  -- ./Nuklear/nuklear.h:4242
   with Import => True,
        Convention => C,
        External_Name => "nk_buffer_init_fixed";

   procedure buffer_info (arg1 : access nk_memory_status; arg2 : access nk_buffer)  -- ./Nuklear/nuklear.h:4243
   with Import => True,
        Convention => C,
        External_Name => "nk_buffer_info";

   procedure buffer_push
     (arg1 : access nk_buffer;
      c_type : nk_buffer_allocation_type;
      memory : System.Address;
      size : nk_size;
      align : nk_size)  -- ./Nuklear/nuklear.h:4244
   with Import => True,
        Convention => C,
        External_Name => "nk_buffer_push";

   procedure buffer_mark (arg1 : access nk_buffer; c_type : nk_buffer_allocation_type)  -- ./Nuklear/nuklear.h:4245
   with Import => True,
        Convention => C,
        External_Name => "nk_buffer_mark";

   procedure buffer_reset (arg1 : access nk_buffer; c_type : nk_buffer_allocation_type)  -- ./Nuklear/nuklear.h:4246
   with Import => True,
        Convention => C,
        External_Name => "nk_buffer_reset";

   procedure buffer_clear (arg1 : access nk_buffer)  -- ./Nuklear/nuklear.h:4247
   with Import => True,
        Convention => C,
        External_Name => "nk_buffer_clear";

   procedure buffer_free (arg1 : access nk_buffer)  -- ./Nuklear/nuklear.h:4248
   with Import => True,
        Convention => C,
        External_Name => "nk_buffer_free";

   function buffer_memory (arg1 : access nk_buffer) return System.Address  -- ./Nuklear/nuklear.h:4249
   with Import => True,
        Convention => C,
        External_Name => "nk_buffer_memory";

   function buffer_memory_const (arg1 : access constant nk_buffer) return System.Address  -- ./Nuklear/nuklear.h:4250
   with Import => True,
        Convention => C,
        External_Name => "nk_buffer_memory_const";

   function buffer_total (arg1 : access nk_buffer) return nk_size  -- ./Nuklear/nuklear.h:4251
   with Import => True,
        Convention => C,
        External_Name => "nk_buffer_total";

  -- ==============================================================
  -- *
  -- *                          STRING
  -- *
  -- * ===============================================================

  --  Basic string buffer which is only used in context with the text editor
  -- *  to manage and manipulate dynamic or fixed size string content. This is _NOT_
  -- *  the default string handling method. The only instance you should have any contact
  -- *  with this API is if you interact with an `nk_text_edit` object inside one of the
  -- *  copy and paste functions and even there only for more advanced cases.

   type nk_str is record
      buffer : aliased nk_buffer;  -- ./Nuklear/nuklear.h:4264
      len : aliased int;  -- ./Nuklear/nuklear.h:4265
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4263

  -- in codepoints/runes/glyphs
   procedure str_init_default (arg1 : access nk_str)  -- ./Nuklear/nuklear.h:4269
   with Import => True,
        Convention => C,
        External_Name => "nk_str_init_default";

   procedure str_init
     (arg1 : access nk_str;
      arg2 : access constant nk_allocator;
      size : nk_size)  -- ./Nuklear/nuklear.h:4271
   with Import => True,
        Convention => C,
        External_Name => "nk_str_init";

   procedure str_init_fixed
     (arg1 : access nk_str;
      memory : System.Address;
      size : nk_size)  -- ./Nuklear/nuklear.h:4272
   with Import => True,
        Convention => C,
        External_Name => "nk_str_init_fixed";

   procedure str_clear (arg1 : access nk_str)  -- ./Nuklear/nuklear.h:4273
   with Import => True,
        Convention => C,
        External_Name => "nk_str_clear";

   procedure str_free (arg1 : access nk_str)  -- ./Nuklear/nuklear.h:4274
   with Import => True,
        Convention => C,
        External_Name => "nk_str_free";

   function str_append_text_char
     (arg1 : access nk_str;
      arg2 : Interfaces.C.char_array;
      arg3 : int) return int  -- ./Nuklear/nuklear.h:4276
   with Import => True,
        Convention => C,
        External_Name => "nk_str_append_text_char";

   function str_append_str_char (arg1 : access nk_str; arg2 : Interfaces.C.char_array) return int  -- ./Nuklear/nuklear.h:4277
   with Import => True,
        Convention => C,
        External_Name => "nk_str_append_str_char";

   function str_append_text_utf8
     (arg1 : access nk_str;
      arg2 : Interfaces.C.char_array;
      arg3 : int) return int  -- ./Nuklear/nuklear.h:4278
   with Import => True,
        Convention => C,
        External_Name => "nk_str_append_text_utf8";

   function str_append_str_utf8 (arg1 : access nk_str; arg2 : Interfaces.C.char_array) return int  -- ./Nuklear/nuklear.h:4279
   with Import => True,
        Convention => C,
        External_Name => "nk_str_append_str_utf8";

   function str_append_text_runes
     (arg1 : access nk_str;
      arg2 : access nk_rune;
      arg3 : int) return int  -- ./Nuklear/nuklear.h:4280
   with Import => True,
        Convention => C,
        External_Name => "nk_str_append_text_runes";

   function str_append_str_runes (arg1 : access nk_str; arg2 : access nk_rune) return int  -- ./Nuklear/nuklear.h:4281
   with Import => True,
        Convention => C,
        External_Name => "nk_str_append_str_runes";

   function str_insert_at_char
     (arg1 : access nk_str;
      pos : int;
      arg3 : Interfaces.C.char_array;
      arg4 : int) return int  -- ./Nuklear/nuklear.h:4283
   with Import => True,
        Convention => C,
        External_Name => "nk_str_insert_at_char";

   function str_insert_at_rune
     (arg1 : access nk_str;
      pos : int;
      arg3 : Interfaces.C.char_array;
      arg4 : int) return int  -- ./Nuklear/nuklear.h:4284
   with Import => True,
        Convention => C,
        External_Name => "nk_str_insert_at_rune";

   function str_insert_text_char
     (arg1 : access nk_str;
      pos : int;
      arg3 : Interfaces.C.char_array;
      arg4 : int) return int  -- ./Nuklear/nuklear.h:4286
   with Import => True,
        Convention => C,
        External_Name => "nk_str_insert_text_char";

   function str_insert_str_char
     (arg1 : access nk_str;
      pos : int;
      arg3 : Interfaces.C.char_array) return int  -- ./Nuklear/nuklear.h:4287
   with Import => True,
        Convention => C,
        External_Name => "nk_str_insert_str_char";

   function str_insert_text_utf8
     (arg1 : access nk_str;
      pos : int;
      arg3 : Interfaces.C.char_array;
      arg4 : int) return int  -- ./Nuklear/nuklear.h:4288
   with Import => True,
        Convention => C,
        External_Name => "nk_str_insert_text_utf8";

   function str_insert_str_utf8
     (arg1 : access nk_str;
      pos : int;
      arg3 : Interfaces.C.char_array) return int  -- ./Nuklear/nuklear.h:4289
   with Import => True,
        Convention => C,
        External_Name => "nk_str_insert_str_utf8";

   function str_insert_text_runes
     (arg1 : access nk_str;
      pos : int;
      arg3 : access nk_rune;
      arg4 : int) return int  -- ./Nuklear/nuklear.h:4290
   with Import => True,
        Convention => C,
        External_Name => "nk_str_insert_text_runes";

   function str_insert_str_runes
     (arg1 : access nk_str;
      pos : int;
      arg3 : access nk_rune) return int  -- ./Nuklear/nuklear.h:4291
   with Import => True,
        Convention => C,
        External_Name => "nk_str_insert_str_runes";

   procedure str_remove_chars (arg1 : access nk_str; len : int)  -- ./Nuklear/nuklear.h:4293
   with Import => True,
        Convention => C,
        External_Name => "nk_str_remove_chars";

   procedure str_remove_runes (str : access nk_str; len : int)  -- ./Nuklear/nuklear.h:4294
   with Import => True,
        Convention => C,
        External_Name => "nk_str_remove_runes";

   procedure str_delete_chars
     (arg1 : access nk_str;
      pos : int;
      len : int)  -- ./Nuklear/nuklear.h:4295
   with Import => True,
        Convention => C,
        External_Name => "nk_str_delete_chars";

   procedure str_delete_runes
     (arg1 : access nk_str;
      pos : int;
      len : int)  -- ./Nuklear/nuklear.h:4296
   with Import => True,
        Convention => C,
        External_Name => "nk_str_delete_runes";

   function str_at_char (arg1 : access nk_str; pos : int) return Interfaces.C.Strings.chars_ptr  -- ./Nuklear/nuklear.h:4298
   with Import => True,
        Convention => C,
        External_Name => "nk_str_at_char";

   function str_at_rune
     (arg1 : access nk_str;
      pos : int;
      unicode : access nk_rune;
      len : access int) return Interfaces.C.Strings.chars_ptr  -- ./Nuklear/nuklear.h:4299
   with Import => True,
        Convention => C,
        External_Name => "nk_str_at_rune";

   function str_rune_at (arg1 : access constant nk_str; pos : int) return nk_rune  -- ./Nuklear/nuklear.h:4300
   with Import => True,
        Convention => C,
        External_Name => "nk_str_rune_at";

   function str_at_char_const (arg1 : access constant nk_str; pos : int) return Interfaces.C.Strings.chars_ptr  -- ./Nuklear/nuklear.h:4301
   with Import => True,
        Convention => C,
        External_Name => "nk_str_at_char_const";

   function str_at_const
     (arg1 : access constant nk_str;
      pos : int;
      unicode : access nk_rune;
      len : access int) return Interfaces.C.Strings.chars_ptr  -- ./Nuklear/nuklear.h:4302
   with Import => True,
        Convention => C,
        External_Name => "nk_str_at_const";

   function str_get (arg1 : access nk_str) return Interfaces.C.Strings.chars_ptr  -- ./Nuklear/nuklear.h:4304
   with Import => True,
        Convention => C,
        External_Name => "nk_str_get";

   function str_get_const (arg1 : access constant nk_str) return Interfaces.C.Strings.chars_ptr  -- ./Nuklear/nuklear.h:4305
   with Import => True,
        Convention => C,
        External_Name => "nk_str_get_const";

   function str_len (arg1 : access nk_str) return int  -- ./Nuklear/nuklear.h:4306
   with Import => True,
        Convention => C,
        External_Name => "nk_str_len";

   function str_len_char (arg1 : access nk_str) return int  -- ./Nuklear/nuklear.h:4307
   with Import => True,
        Convention => C,
        External_Name => "nk_str_len_char";

  --===============================================================
  -- *
  -- *                      TEXT EDITOR
  -- *
  -- * ===============================================================

  --/// ### Text Editor
  --/// Editing text in this library is handled by either `nk_edit_string` or
  --/// `nk_edit_buffer`. But like almost everything in this library there are multiple
  --/// ways of doing it and a balance between control and ease of use with memory
  --/// as well as functionality controlled by flags.
  --///
  --/// This library generally allows three different levels of memory control:
  --/// First of is the most basic way of just providing a simple char array with
  --/// string length. This method is probably the easiest way of handling simple
  --/// user text input. Main upside is complete control over memory while the biggest
  --/// downside in comparison with the other two approaches is missing undo/redo.
  --///
  --/// For UIs that require undo/redo the second way was created. It is based on
  --/// a fixed size nk_text_edit struct, which has an internal undo/redo stack.
  --/// This is mainly useful if you want something more like a text editor but don't want
  --/// to have a dynamically growing buffer.
  --///
  --/// The final way is using a dynamically growing nk_text_edit struct, which
  --/// has both a default version if you don't care where memory comes from and an
  --/// allocator version if you do. While the text editor is quite powerful for its
  --/// complexity I would not recommend editing gigabytes of data with it.
  --/// It is rather designed for uses cases which make sense for a GUI library not for
  --/// an full blown text editor.
  --

   type nk_clipboard is record
      userdata : aliased nk_handle;  -- ./Nuklear/nuklear.h:4348
      paste : nk_plugin_paste;  -- ./Nuklear/nuklear.h:4349
      copy : nk_plugin_copy;  -- ./Nuklear/nuklear.h:4350
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4347

   type nk_text_undo_record is record
      where : aliased int;  -- ./Nuklear/nuklear.h:4354
      insert_length : aliased short;  -- ./Nuklear/nuklear.h:4355
      delete_length : aliased short;  -- ./Nuklear/nuklear.h:4356
      char_storage : aliased short;  -- ./Nuklear/nuklear.h:4357
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4353

   type anon_array1754 is array (0 .. 98) of aliased nk_text_undo_record;
   type anon_array1756 is array (0 .. 998) of aliased nk_rune;
   type nk_text_undo_state is record
      undo_rec : aliased anon_array1754;  -- ./Nuklear/nuklear.h:4361
      undo_char : aliased anon_array1756;  -- ./Nuklear/nuklear.h:4362
      undo_point : aliased short;  -- ./Nuklear/nuklear.h:4363
      redo_point : aliased short;  -- ./Nuklear/nuklear.h:4364
      undo_char_point : aliased short;  -- ./Nuklear/nuklear.h:4365
      redo_char_point : aliased short;  -- ./Nuklear/nuklear.h:4366
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4360

   type nk_text_edit_type is
     (TEXT_EDIT_SINGLE_LINE,
      TEXT_EDIT_MULTI_LINE)
   with Convention => C;  -- ./Nuklear/nuklear.h:4369

   type nk_text_edit_mode is
     (TEXT_EDIT_MODE_VIEW,
      TEXT_EDIT_MODE_INSERT,
      TEXT_EDIT_MODE_REPLACE)
   with Convention => C;  -- ./Nuklear/nuklear.h:4374

   type nk_text_edit is record
      clip : aliased nk_clipboard;  -- ./Nuklear/nuklear.h:4381
      string : aliased nk_str;  -- ./Nuklear/nuklear.h:4382
      filter : nk_plugin_filter;  -- ./Nuklear/nuklear.h:4383
      scrollbar : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:4384
      cursor : aliased int;  -- ./Nuklear/nuklear.h:4386
      select_start : aliased int;  -- ./Nuklear/nuklear.h:4387
      select_end : aliased int;  -- ./Nuklear/nuklear.h:4388
      mode : aliased unsigned_char;  -- ./Nuklear/nuklear.h:4389
      cursor_at_end_of_line : aliased unsigned_char;  -- ./Nuklear/nuklear.h:4390
      initialized : aliased unsigned_char;  -- ./Nuklear/nuklear.h:4391
      has_preferred_x : aliased unsigned_char;  -- ./Nuklear/nuklear.h:4392
      single_line : aliased unsigned_char;  -- ./Nuklear/nuklear.h:4393
      active : aliased unsigned_char;  -- ./Nuklear/nuklear.h:4394
      padding1 : aliased unsigned_char;  -- ./Nuklear/nuklear.h:4395
      preferred_x : aliased float;  -- ./Nuklear/nuklear.h:4396
      undo : aliased nk_text_undo_state;  -- ./Nuklear/nuklear.h:4397
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4380

  -- filter function
   function filter_default (arg1 : access constant nk_text_edit; unicode : nk_rune) return nk_bool  -- ./Nuklear/nuklear.h:4401
   with Import => True,
        Convention => C,
        External_Name => "nk_filter_default";

   function filter_ascii (arg1 : access constant nk_text_edit; unicode : nk_rune) return nk_bool  -- ./Nuklear/nuklear.h:4402
   with Import => True,
        Convention => C,
        External_Name => "nk_filter_ascii";

   function filter_float (arg1 : access constant nk_text_edit; unicode : nk_rune) return nk_bool  -- ./Nuklear/nuklear.h:4403
   with Import => True,
        Convention => C,
        External_Name => "nk_filter_float";

   function filter_decimal (arg1 : access constant nk_text_edit; unicode : nk_rune) return nk_bool  -- ./Nuklear/nuklear.h:4404
   with Import => True,
        Convention => C,
        External_Name => "nk_filter_decimal";

   function filter_hex (arg1 : access constant nk_text_edit; unicode : nk_rune) return nk_bool  -- ./Nuklear/nuklear.h:4405
   with Import => True,
        Convention => C,
        External_Name => "nk_filter_hex";

   function filter_oct (arg1 : access constant nk_text_edit; unicode : nk_rune) return nk_bool  -- ./Nuklear/nuklear.h:4406
   with Import => True,
        Convention => C,
        External_Name => "nk_filter_oct";

   function filter_binary (arg1 : access constant nk_text_edit; unicode : nk_rune) return nk_bool  -- ./Nuklear/nuklear.h:4407
   with Import => True,
        Convention => C,
        External_Name => "nk_filter_binary";

  -- text editor
   procedure textedit_init_default (arg1 : access nk_text_edit)  -- ./Nuklear/nuklear.h:4411
   with Import => True,
        Convention => C,
        External_Name => "nk_textedit_init_default";

   procedure textedit_init
     (arg1 : access nk_text_edit;
      arg2 : access nk_allocator;
      size : nk_size)  -- ./Nuklear/nuklear.h:4413
   with Import => True,
        Convention => C,
        External_Name => "nk_textedit_init";

   procedure textedit_init_fixed
     (arg1 : access nk_text_edit;
      memory : System.Address;
      size : nk_size)  -- ./Nuklear/nuklear.h:4414
   with Import => True,
        Convention => C,
        External_Name => "nk_textedit_init_fixed";

   procedure textedit_free (arg1 : access nk_text_edit)  -- ./Nuklear/nuklear.h:4415
   with Import => True,
        Convention => C,
        External_Name => "nk_textedit_free";

   procedure textedit_text
     (arg1 : access nk_text_edit;
      arg2 : Interfaces.C.char_array;
      total_len : int)  -- ./Nuklear/nuklear.h:4416
   with Import => True,
        Convention => C,
        External_Name => "nk_textedit_text";

   procedure textedit_delete
     (arg1 : access nk_text_edit;
      where : int;
      len : int)  -- ./Nuklear/nuklear.h:4417
   with Import => True,
        Convention => C,
        External_Name => "nk_textedit_delete";

   procedure textedit_delete_selection (arg1 : access nk_text_edit)  -- ./Nuklear/nuklear.h:4418
   with Import => True,
        Convention => C,
        External_Name => "nk_textedit_delete_selection";

   procedure textedit_select_all (arg1 : access nk_text_edit)  -- ./Nuklear/nuklear.h:4419
   with Import => True,
        Convention => C,
        External_Name => "nk_textedit_select_all";

   function textedit_cut (arg1 : access nk_text_edit) return nk_bool  -- ./Nuklear/nuklear.h:4420
   with Import => True,
        Convention => C,
        External_Name => "nk_textedit_cut";

   function textedit_paste
     (arg1 : access nk_text_edit;
      arg2 : Interfaces.C.char_array;
      len : int) return nk_bool  -- ./Nuklear/nuklear.h:4421
   with Import => True,
        Convention => C,
        External_Name => "nk_textedit_paste";

   procedure textedit_undo (arg1 : access nk_text_edit)  -- ./Nuklear/nuklear.h:4422
   with Import => True,
        Convention => C,
        External_Name => "nk_textedit_undo";

   procedure textedit_redo (arg1 : access nk_text_edit)  -- ./Nuklear/nuklear.h:4423
   with Import => True,
        Convention => C,
        External_Name => "nk_textedit_redo";

  -- ===============================================================
  -- *
  -- *                          DRAWING
  -- *
  -- * ===============================================================

  --/// ### Drawing
  --/// This library was designed to be render backend agnostic so it does
  --/// not draw anything to screen. Instead all drawn shapes, widgets
  --/// are made of, are buffered into memory and make up a command queue.
  --/// Each frame therefore fills the command buffer with draw commands
  --/// that then need to be executed by the user and his own render backend.
  --/// After that the command buffer needs to be cleared and a new frame can be
  --/// started. It is probably important to note that the command buffer is the main
  --/// drawing API and the optional vertex buffer API only takes this format and
  --/// converts it into a hardware accessible format.
  --///
  --/// To use the command queue to draw your own widgets you can access the
  --/// command buffer of each window by calling `nk_window_get_canvas` after
  --/// previously having called `nk_begin`:
  --///
  --/// ```c
  --///     void draw_red_rectangle_widget(struct nk_context *ctx)
  --///     {
  --///         struct nk_command_buffer *canvas;
  --///         struct nk_input *input = &ctx->input;
  --///         canvas = nk_window_get_canvas(ctx);
  --///
  --///         struct nk_rect space;
  --///         enum nk_widget_layout_states state;
  --///         state = nk_widget(&space, ctx);
  --///         if (!state) return;
  --///
  --///         if (state != WIDGET_ROM)
  --///             update_your_widget_by_user_input(...);
  --///         nk_fill_rect(canvas, space, 0, nk_rgb(255,0,0));
  --///     }
  --///
  --///     if (nk_begin(...)) {
  --///         nk_layout_row_dynamic(ctx, 25, 1);
  --///         draw_red_rectangle_widget(ctx);
  --///     }
  --///     nk_end(..)
  --///
  --/// ```
  --/// Important to know if you want to create your own widgets is the `nk_widget`
  --/// call. It allocates space on the panel reserved for this widget to be used,
  --/// but also returns the state of the widget space. If your widget is not seen and does
  --/// not have to be updated it is '0' and you can just return. If it only has
  --/// to be drawn the state will be `WIDGET_ROM` otherwise you can do both
  --/// update and draw your widget. The reason for separating is to only draw and
  --/// update what is actually necessary which is crucial for performance.
  --

   type nk_command_type is
     (COMMAND_NOP,
      COMMAND_SCISSOR,
      COMMAND_LINE,
      COMMAND_CURVE,
      COMMAND_RECT,
      COMMAND_RECT_FILLED,
      COMMAND_RECT_MULTI_COLOR,
      COMMAND_CIRCLE,
      COMMAND_CIRCLE_FILLED,
      COMMAND_ARC,
      COMMAND_ARC_FILLED,
      COMMAND_TRIANGLE,
      COMMAND_TRIANGLE_FILLED,
      COMMAND_POLYGON,
      COMMAND_POLYGON_FILLED,
      COMMAND_POLYLINE,
      COMMAND_TEXT,
      COMMAND_IMAGE,
      COMMAND_CUSTOM)
   with Convention => C;  -- ./Nuklear/nuklear.h:4477

  -- command base and header of every command inside the buffer
   type nk_command is record
      c_type : aliased nk_command_type;  -- ./Nuklear/nuklear.h:4501
      next : aliased nk_size;  -- ./Nuklear/nuklear.h:4502
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4500

   type nk_command_scissor is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4509
      x : aliased short;  -- ./Nuklear/nuklear.h:4510
      y : aliased short;  -- ./Nuklear/nuklear.h:4510
      w : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4511
      h : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4511
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4508

   type nk_command_line is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4515
      line_thickness : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4516
      c_begin : aliased nk_vec2i_t;  -- ./Nuklear/nuklear.h:4517
      c_end : aliased nk_vec2i_t;  -- ./Nuklear/nuklear.h:4518
      color : aliased nk_color;  -- ./Nuklear/nuklear.h:4519
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4514

   type anon_array1775 is array (0 .. 1) of aliased nk_vec2i_t;
   type nk_command_curve is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4523
      line_thickness : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4524
      c_begin : aliased nk_vec2i_t;  -- ./Nuklear/nuklear.h:4525
      c_end : aliased nk_vec2i_t;  -- ./Nuklear/nuklear.h:4526
      ctrl : aliased anon_array1775;  -- ./Nuklear/nuklear.h:4527
      color : aliased nk_color;  -- ./Nuklear/nuklear.h:4528
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4522

   type nk_command_rect is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4532
      rounding : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4533
      line_thickness : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4534
      x : aliased short;  -- ./Nuklear/nuklear.h:4535
      y : aliased short;  -- ./Nuklear/nuklear.h:4535
      w : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4536
      h : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4536
      color : aliased nk_color;  -- ./Nuklear/nuklear.h:4537
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4531

   type nk_command_rect_filled is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4541
      rounding : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4542
      x : aliased short;  -- ./Nuklear/nuklear.h:4543
      y : aliased short;  -- ./Nuklear/nuklear.h:4543
      w : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4544
      h : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4544
      color : aliased nk_color;  -- ./Nuklear/nuklear.h:4545
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4540

   type nk_command_rect_multi_color is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4549
      x : aliased short;  -- ./Nuklear/nuklear.h:4550
      y : aliased short;  -- ./Nuklear/nuklear.h:4550
      w : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4551
      h : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4551
      left : aliased nk_color;  -- ./Nuklear/nuklear.h:4552
      top : aliased nk_color;  -- ./Nuklear/nuklear.h:4553
      bottom : aliased nk_color;  -- ./Nuklear/nuklear.h:4554
      right : aliased nk_color;  -- ./Nuklear/nuklear.h:4555
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4548

   type nk_command_triangle is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4559
      line_thickness : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4560
      a : aliased nk_vec2i_t;  -- ./Nuklear/nuklear.h:4561
      b : aliased nk_vec2i_t;  -- ./Nuklear/nuklear.h:4562
      c : aliased nk_vec2i_t;  -- ./Nuklear/nuklear.h:4563
      color : aliased nk_color;  -- ./Nuklear/nuklear.h:4564
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4558

   type nk_command_triangle_filled is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4568
      a : aliased nk_vec2i_t;  -- ./Nuklear/nuklear.h:4569
      b : aliased nk_vec2i_t;  -- ./Nuklear/nuklear.h:4570
      c : aliased nk_vec2i_t;  -- ./Nuklear/nuklear.h:4571
      color : aliased nk_color;  -- ./Nuklear/nuklear.h:4572
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4567

   type nk_command_circle is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4576
      x : aliased short;  -- ./Nuklear/nuklear.h:4577
      y : aliased short;  -- ./Nuklear/nuklear.h:4577
      line_thickness : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4578
      w : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4579
      h : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4579
      color : aliased nk_color;  -- ./Nuklear/nuklear.h:4580
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4575

   type nk_command_circle_filled is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4584
      x : aliased short;  -- ./Nuklear/nuklear.h:4585
      y : aliased short;  -- ./Nuklear/nuklear.h:4585
      w : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4586
      h : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4586
      color : aliased nk_color;  -- ./Nuklear/nuklear.h:4587
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4583

   type anon_array1784 is array (0 .. 1) of aliased float;
   type nk_command_arc is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4591
      cx : aliased short;  -- ./Nuklear/nuklear.h:4592
      cy : aliased short;  -- ./Nuklear/nuklear.h:4592
      r : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4593
      line_thickness : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4594
      a : aliased anon_array1784;  -- ./Nuklear/nuklear.h:4595
      color : aliased nk_color;  -- ./Nuklear/nuklear.h:4596
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4590

   type nk_command_arc_filled is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4600
      cx : aliased short;  -- ./Nuklear/nuklear.h:4601
      cy : aliased short;  -- ./Nuklear/nuklear.h:4601
      r : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4602
      a : aliased anon_array1784;  -- ./Nuklear/nuklear.h:4603
      color : aliased nk_color;  -- ./Nuklear/nuklear.h:4604
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4599

   type anon_array1787 is array (0 .. 0) of aliased nk_vec2i_t;
   type nk_command_polygon is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4608
      color : aliased nk_color;  -- ./Nuklear/nuklear.h:4609
      line_thickness : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4610
      point_count : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4611
      points : aliased anon_array1787;  -- ./Nuklear/nuklear.h:4612
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4607

   type nk_command_polygon_filled is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4616
      color : aliased nk_color;  -- ./Nuklear/nuklear.h:4617
      point_count : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4618
      points : aliased anon_array1787;  -- ./Nuklear/nuklear.h:4619
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4615

   type nk_command_polyline is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4623
      color : aliased nk_color;  -- ./Nuklear/nuklear.h:4624
      line_thickness : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4625
      point_count : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4626
      points : aliased anon_array1787;  -- ./Nuklear/nuklear.h:4627
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4622

   type nk_command_image is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4631
      x : aliased short;  -- ./Nuklear/nuklear.h:4632
      y : aliased short;  -- ./Nuklear/nuklear.h:4632
      w : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4633
      h : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4633
      img : aliased nk_image_t;  -- ./Nuklear/nuklear.h:4634
      col : aliased nk_color;  -- ./Nuklear/nuklear.h:4635
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4630

   type nk_command_custom_callback is access procedure
        (arg1 : System.Address;
         arg2 : short;
         arg3 : short;
         arg4 : unsigned_short;
         arg5 : unsigned_short;
         arg6 : nk_handle)
   with Convention => C;  -- ./Nuklear/nuklear.h:4638

   type nk_command_custom is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4641
      x : aliased short;  -- ./Nuklear/nuklear.h:4642
      y : aliased short;  -- ./Nuklear/nuklear.h:4642
      w : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4643
      h : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4643
      callback_data : aliased nk_handle;  -- ./Nuklear/nuklear.h:4644
      callback : nk_command_custom_callback;  -- ./Nuklear/nuklear.h:4645
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4640

   subtype anon_array1080 is Interfaces.C.char_array (0 .. 0);
   type nk_command_text is record
      header : aliased nk_command;  -- ./Nuklear/nuklear.h:4649
      font : access constant nk_user_font;  -- ./Nuklear/nuklear.h:4650
      background : aliased nk_color;  -- ./Nuklear/nuklear.h:4651
      foreground : aliased nk_color;  -- ./Nuklear/nuklear.h:4652
      x : aliased short;  -- ./Nuklear/nuklear.h:4653
      y : aliased short;  -- ./Nuklear/nuklear.h:4653
      w : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4654
      h : aliased unsigned_short;  -- ./Nuklear/nuklear.h:4654
      height : aliased float;  -- ./Nuklear/nuklear.h:4655
      length : aliased int;  -- ./Nuklear/nuklear.h:4656
      string : aliased anon_array1080;  -- ./Nuklear/nuklear.h:4657
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4648

   type nk_command_clipping is
     (CLIPPING_OFF,
      CLIPPING_ON)
   with Convention => C;  -- ./Nuklear/nuklear.h:4660

   type nk_command_buffer is record
      base : access nk_buffer;  -- ./Nuklear/nuklear.h:4666
      clip : aliased nk_rect_t;  -- ./Nuklear/nuklear.h:4667
      use_clipping : aliased int;  -- ./Nuklear/nuklear.h:4668
      userdata : aliased nk_handle;  -- ./Nuklear/nuklear.h:4669
      c_begin : aliased nk_size;  -- ./Nuklear/nuklear.h:4670
      c_end : aliased nk_size;  -- ./Nuklear/nuklear.h:4670
      last : aliased nk_size;  -- ./Nuklear/nuklear.h:4670
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4665

  -- shape outlines
   procedure stroke_line
     (b : access nk_command_buffer;
      x0 : float;
      y0 : float;
      x1 : float;
      y1 : float;
      line_thickness : float;
      arg7 : nk_color)  -- ./Nuklear/nuklear.h:4674
   with Import => True,
        Convention => C,
        External_Name => "nk_stroke_line";

   procedure stroke_curve
     (arg1 : access nk_command_buffer;
      arg2 : float;
      arg3 : float;
      arg4 : float;
      arg5 : float;
      arg6 : float;
      arg7 : float;
      arg8 : float;
      arg9 : float;
      line_thickness : float;
      arg11 : nk_color)  -- ./Nuklear/nuklear.h:4675
   with Import => True,
        Convention => C,
        External_Name => "nk_stroke_curve";

   procedure stroke_rect
     (arg1 : access nk_command_buffer;
      arg2 : nk_rect_t;
      rounding : float;
      line_thickness : float;
      arg5 : nk_color)  -- ./Nuklear/nuklear.h:4676
   with Import => True,
        Convention => C,
        External_Name => "nk_stroke_rect";

   procedure stroke_circle
     (arg1 : access nk_command_buffer;
      arg2 : nk_rect_t;
      line_thickness : float;
      arg4 : nk_color)  -- ./Nuklear/nuklear.h:4677
   with Import => True,
        Convention => C,
        External_Name => "nk_stroke_circle";

   procedure stroke_arc
     (arg1 : access nk_command_buffer;
      cx : float;
      cy : float;
      radius : float;
      a_min : float;
      a_max : float;
      line_thickness : float;
      arg8 : nk_color)  -- ./Nuklear/nuklear.h:4678
   with Import => True,
        Convention => C,
        External_Name => "nk_stroke_arc";

   procedure stroke_triangle
     (arg1 : access nk_command_buffer;
      arg2 : float;
      arg3 : float;
      arg4 : float;
      arg5 : float;
      arg6 : float;
      arg7 : float;
      line_thichness : float;
      arg9 : nk_color)  -- ./Nuklear/nuklear.h:4679
   with Import => True,
        Convention => C,
        External_Name => "nk_stroke_triangle";

   procedure stroke_polyline
     (arg1 : access nk_command_buffer;
      points : access float;
      point_count : int;
      line_thickness : float;
      col : nk_color)  -- ./Nuklear/nuklear.h:4680
   with Import => True,
        Convention => C,
        External_Name => "nk_stroke_polyline";

   procedure stroke_polygon
     (arg1 : access nk_command_buffer;
      arg2 : access float;
      point_count : int;
      line_thickness : float;
      arg5 : nk_color)  -- ./Nuklear/nuklear.h:4681
   with Import => True,
        Convention => C,
        External_Name => "nk_stroke_polygon";

  -- filled shades
   procedure fill_rect
     (arg1 : access nk_command_buffer;
      arg2 : nk_rect_t;
      rounding : float;
      arg4 : nk_color)  -- ./Nuklear/nuklear.h:4684
   with Import => True,
        Convention => C,
        External_Name => "nk_fill_rect";

   procedure fill_rect_multi_color
     (arg1 : access nk_command_buffer;
      arg2 : nk_rect_t;
      left : nk_color;
      top : nk_color;
      right : nk_color;
      bottom : nk_color)  -- ./Nuklear/nuklear.h:4685
   with Import => True,
        Convention => C,
        External_Name => "nk_fill_rect_multi_color";

   procedure fill_circle
     (arg1 : access nk_command_buffer;
      arg2 : nk_rect_t;
      arg3 : nk_color)  -- ./Nuklear/nuklear.h:4686
   with Import => True,
        Convention => C,
        External_Name => "nk_fill_circle";

   procedure fill_arc
     (arg1 : access nk_command_buffer;
      cx : float;
      cy : float;
      radius : float;
      a_min : float;
      a_max : float;
      arg7 : nk_color)  -- ./Nuklear/nuklear.h:4687
   with Import => True,
        Convention => C,
        External_Name => "nk_fill_arc";

   procedure fill_triangle
     (arg1 : access nk_command_buffer;
      x0 : float;
      y0 : float;
      x1 : float;
      y1 : float;
      x2 : float;
      y2 : float;
      arg8 : nk_color)  -- ./Nuklear/nuklear.h:4688
   with Import => True,
        Convention => C,
        External_Name => "nk_fill_triangle";

   procedure fill_polygon
     (arg1 : access nk_command_buffer;
      arg2 : access float;
      point_count : int;
      arg4 : nk_color)  -- ./Nuklear/nuklear.h:4689
   with Import => True,
        Convention => C,
        External_Name => "nk_fill_polygon";

  -- misc
   procedure draw_image
     (arg1 : access nk_command_buffer;
      arg2 : nk_rect_t;
      arg3 : access constant nk_image_t;
      arg4 : nk_color)  -- ./Nuklear/nuklear.h:4692
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_image";

   procedure draw_nine_slice
     (arg1 : access nk_command_buffer;
      arg2 : nk_rect_t;
      arg3 : access constant nk_nine_slice;
      arg4 : nk_color)  -- ./Nuklear/nuklear.h:4693
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_nine_slice";

   procedure draw_text
     (arg1 : access nk_command_buffer;
      arg2 : nk_rect_t;
      text : Interfaces.C.char_array;
      len : int;
      arg5 : access constant nk_user_font;
      arg6 : nk_color;
      arg7 : nk_color)  -- ./Nuklear/nuklear.h:4694
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_text";

   procedure push_scissor (arg1 : access nk_command_buffer; arg2 : nk_rect_t)  -- ./Nuklear/nuklear.h:4695
   with Import => True,
        Convention => C,
        External_Name => "nk_push_scissor";

   procedure push_custom
     (arg1 : access nk_command_buffer;
      arg2 : nk_rect_t;
      arg3 : nk_command_custom_callback;
      usr : nk_handle)  -- ./Nuklear/nuklear.h:4696
   with Import => True,
        Convention => C,
        External_Name => "nk_push_custom";

  -- ===============================================================
  -- *
  -- *                          INPUT
  -- *
  -- * ===============================================================

   type nk_mouse_button is record
      down : aliased nk_bool;  -- ./Nuklear/nuklear.h:4704
      clicked : aliased unsigned;  -- ./Nuklear/nuklear.h:4705
      clicked_pos : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:4706
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4703

   type anon_array1817 is array (0 .. 3) of aliased nk_mouse_button;
   type nk_mouse is record
      buttons : aliased anon_array1817;  -- ./Nuklear/nuklear.h:4709
      pos : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:4710
      prev : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:4714
      c_delta : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:4715
      scroll_delta : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:4716
      grab : aliased unsigned_char;  -- ./Nuklear/nuklear.h:4717
      grabbed : aliased unsigned_char;  -- ./Nuklear/nuklear.h:4718
      ungrab : aliased unsigned_char;  -- ./Nuklear/nuklear.h:4719
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4708

   type nk_key is record
      down : aliased nk_bool;  -- ./Nuklear/nuklear.h:4723
      clicked : aliased unsigned;  -- ./Nuklear/nuklear.h:4724
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4722

   type anon_array1821 is array (0 .. 29) of aliased nk_key;
   subtype anon_array1823 is Interfaces.C.char_array (0 .. 15);
   type nk_keyboard is record
      keys : aliased anon_array1821;  -- ./Nuklear/nuklear.h:4727
      text : aliased anon_array1823;  -- ./Nuklear/nuklear.h:4728
      text_len : aliased int;  -- ./Nuklear/nuklear.h:4729
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4726

   type nk_input is record
      keyboard : aliased nk_keyboard;  -- ./Nuklear/nuklear.h:4733
      mouse : aliased nk_mouse;  -- ./Nuklear/nuklear.h:4734
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4732

   function input_has_mouse_click (arg1 : access constant nk_input; arg2 : nk_buttons) return nk_bool  -- ./Nuklear/nuklear.h:4737
   with Import => True,
        Convention => C,
        External_Name => "nk_input_has_mouse_click";

   function input_has_mouse_click_in_rect
     (arg1 : access constant nk_input;
      arg2 : nk_buttons;
      arg3 : nk_rect_t) return nk_bool  -- ./Nuklear/nuklear.h:4738
   with Import => True,
        Convention => C,
        External_Name => "nk_input_has_mouse_click_in_rect";

   function input_has_mouse_click_in_button_rect
     (arg1 : access constant nk_input;
      arg2 : nk_buttons;
      arg3 : nk_rect_t) return nk_bool  -- ./Nuklear/nuklear.h:4739
   with Import => True,
        Convention => C,
        External_Name => "nk_input_has_mouse_click_in_button_rect";

   function input_has_mouse_click_down_in_rect
     (arg1 : access constant nk_input;
      arg2 : nk_buttons;
      arg3 : nk_rect_t;
      down : nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:4740
   with Import => True,
        Convention => C,
        External_Name => "nk_input_has_mouse_click_down_in_rect";

   function input_is_mouse_click_in_rect
     (arg1 : access constant nk_input;
      arg2 : nk_buttons;
      arg3 : nk_rect_t) return nk_bool  -- ./Nuklear/nuklear.h:4741
   with Import => True,
        Convention => C,
        External_Name => "nk_input_is_mouse_click_in_rect";

   function input_is_mouse_click_down_in_rect
     (i : access constant nk_input;
      id : nk_buttons;
      b : nk_rect_t;
      down : nk_bool) return nk_bool  -- ./Nuklear/nuklear.h:4742
   with Import => True,
        Convention => C,
        External_Name => "nk_input_is_mouse_click_down_in_rect";

   function input_any_mouse_click_in_rect (arg1 : access constant nk_input; arg2 : nk_rect_t) return nk_bool  -- ./Nuklear/nuklear.h:4743
   with Import => True,
        Convention => C,
        External_Name => "nk_input_any_mouse_click_in_rect";

   function input_is_mouse_prev_hovering_rect (arg1 : access constant nk_input; arg2 : nk_rect_t) return nk_bool  -- ./Nuklear/nuklear.h:4744
   with Import => True,
        Convention => C,
        External_Name => "nk_input_is_mouse_prev_hovering_rect";

   function input_is_mouse_hovering_rect (arg1 : access constant nk_input; arg2 : nk_rect_t) return nk_bool  -- ./Nuklear/nuklear.h:4745
   with Import => True,
        Convention => C,
        External_Name => "nk_input_is_mouse_hovering_rect";

   function input_mouse_clicked
     (arg1 : access constant nk_input;
      arg2 : nk_buttons;
      arg3 : nk_rect_t) return nk_bool  -- ./Nuklear/nuklear.h:4746
   with Import => True,
        Convention => C,
        External_Name => "nk_input_mouse_clicked";

   function input_is_mouse_down (arg1 : access constant nk_input; arg2 : nk_buttons) return nk_bool  -- ./Nuklear/nuklear.h:4747
   with Import => True,
        Convention => C,
        External_Name => "nk_input_is_mouse_down";

   function input_is_mouse_pressed (arg1 : access constant nk_input; arg2 : nk_buttons) return nk_bool  -- ./Nuklear/nuklear.h:4748
   with Import => True,
        Convention => C,
        External_Name => "nk_input_is_mouse_pressed";

   function input_is_mouse_released (arg1 : access constant nk_input; arg2 : nk_buttons) return nk_bool  -- ./Nuklear/nuklear.h:4749
   with Import => True,
        Convention => C,
        External_Name => "nk_input_is_mouse_released";

   function input_is_key_pressed (arg1 : access constant nk_input; arg2 : nk_keys) return nk_bool  -- ./Nuklear/nuklear.h:4750
   with Import => True,
        Convention => C,
        External_Name => "nk_input_is_key_pressed";

   function input_is_key_released (arg1 : access constant nk_input; arg2 : nk_keys) return nk_bool  -- ./Nuklear/nuklear.h:4751
   with Import => True,
        Convention => C,
        External_Name => "nk_input_is_key_released";

   function input_is_key_down (arg1 : access constant nk_input; arg2 : nk_keys) return nk_bool  -- ./Nuklear/nuklear.h:4752
   with Import => True,
        Convention => C,
        External_Name => "nk_input_is_key_down";

  -- ===============================================================
  -- *
  -- *                          DRAW LIST
  -- *
  -- * ===============================================================

  -- ### Draw List
  --/// The optional vertex buffer draw list provides a 2D drawing context
  --/// with antialiasing functionality which takes basic filled or outlined shapes
  --/// or a path and outputs vertexes, elements and draw commands.
  --/// The actual draw list API is not required to be used directly while using this
  --/// library since converting the default library draw command output is done by
  --/// just calling `nk_convert` but I decided to still make this library accessible
  --/// since it can be useful.
  --///
  --/// The draw list is based on a path buffering and polygon and polyline
  --/// rendering API which allows a lot of ways to draw 2D content to screen.
  --/// In fact it is probably more powerful than needed but allows even more crazy
  --/// things than this library provides by default.
  --

   subtype nk_draw_index is nk_uint;  -- ./Nuklear/nuklear.h:4775

   type nk_draw_list_stroke is
     (STROKE_OPEN,
      STROKE_CLOSED)
   with Convention => C;  -- ./Nuklear/nuklear.h:4779

  -- build up path has no connection back to the beginning
  -- build up path has a connection back to the beginning
   type nk_draw_vertex_layout_attribute is
     (VERTEX_POSITION,
      VERTEX_COLOR,
      VERTEX_TEXCOORD,
      VERTEX_ATTRIBUTE_COUNT)
   with Convention => C;  -- ./Nuklear/nuklear.h:4786

   subtype nk_draw_vertex_layout_format is unsigned;
   nk_draw_vertex_layout_format_FORMAT_SCHAR : constant nk_draw_vertex_layout_format := 0;
   nk_draw_vertex_layout_format_FORMAT_SSHORT : constant nk_draw_vertex_layout_format := 1;
   nk_draw_vertex_layout_format_FORMAT_SINT : constant nk_draw_vertex_layout_format := 2;
   nk_draw_vertex_layout_format_FORMAT_UCHAR : constant nk_draw_vertex_layout_format := 3;
   nk_draw_vertex_layout_format_FORMAT_USHORT : constant nk_draw_vertex_layout_format := 4;
   nk_draw_vertex_layout_format_FORMAT_UINT : constant nk_draw_vertex_layout_format := 5;
   nk_draw_vertex_layout_format_FORMAT_FLOAT : constant nk_draw_vertex_layout_format := 6;
   nk_draw_vertex_layout_format_FORMAT_DOUBLE : constant nk_draw_vertex_layout_format := 7;
   nk_draw_vertex_layout_format_FORMAT_COLOR_BEGIN : constant nk_draw_vertex_layout_format := 8;
   nk_draw_vertex_layout_format_FORMAT_R8G8B8 : constant nk_draw_vertex_layout_format := 8;
   nk_draw_vertex_layout_format_FORMAT_R16G15B16 : constant nk_draw_vertex_layout_format := 9;
   nk_draw_vertex_layout_format_FORMAT_R32G32B32 : constant nk_draw_vertex_layout_format := 10;
   nk_draw_vertex_layout_format_FORMAT_R8G8B8A8 : constant nk_draw_vertex_layout_format := 11;
   nk_draw_vertex_layout_format_FORMAT_B8G8R8A8 : constant nk_draw_vertex_layout_format := 12;
   nk_draw_vertex_layout_format_FORMAT_R16G15B16A16 : constant nk_draw_vertex_layout_format := 13;
   nk_draw_vertex_layout_format_FORMAT_R32G32B32A32 : constant nk_draw_vertex_layout_format := 14;
   nk_draw_vertex_layout_format_FORMAT_R32G32B32A32_FLOAT : constant nk_draw_vertex_layout_format := 15;
   nk_draw_vertex_layout_format_FORMAT_R32G32B32A32_DOUBLE : constant nk_draw_vertex_layout_format := 16;
   nk_draw_vertex_layout_format_FORMAT_RGB32 : constant nk_draw_vertex_layout_format := 17;
   nk_draw_vertex_layout_format_FORMAT_RGBA32 : constant nk_draw_vertex_layout_format := 18;
   nk_draw_vertex_layout_format_FORMAT_COLOR_END : constant nk_draw_vertex_layout_format := 18;
   nk_draw_vertex_layout_format_FORMAT_COUNT : constant nk_draw_vertex_layout_format := 19;  -- ./Nuklear/nuklear.h:4793

   type nk_draw_vertex_layout_element is record
      attribute : aliased nk_draw_vertex_layout_attribute;  -- ./Nuklear/nuklear.h:4823
      format : aliased nk_draw_vertex_layout_format;  -- ./Nuklear/nuklear.h:4824
      offset : aliased nk_size;  -- ./Nuklear/nuklear.h:4825
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4822

   type nk_draw_command is record
      elem_count : aliased unsigned;  -- ./Nuklear/nuklear.h:4829
      clip_rect : aliased nk_rect_t;  -- ./Nuklear/nuklear.h:4831
      texture : aliased nk_handle;  -- ./Nuklear/nuklear.h:4833
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4828

  -- number of elements in the current draw batch
  -- current screen clipping rectangle
  -- current texture to set
   type anon_array1842 is array (0 .. 11) of aliased nk_vec2_t;
   type nk_draw_list is record
      clip_rect : aliased nk_rect_t;  -- ./Nuklear/nuklear.h:4841
      circle_vtx : aliased anon_array1842;  -- ./Nuklear/nuklear.h:4842
      config : aliased nk_convert_config;  -- ./Nuklear/nuklear.h:4843
      buffer : access nk_buffer;  -- ./Nuklear/nuklear.h:4845
      vertices : access nk_buffer;  -- ./Nuklear/nuklear.h:4846
      elements : access nk_buffer;  -- ./Nuklear/nuklear.h:4847
      element_count : aliased unsigned;  -- ./Nuklear/nuklear.h:4849
      vertex_count : aliased unsigned;  -- ./Nuklear/nuklear.h:4850
      cmd_count : aliased unsigned;  -- ./Nuklear/nuklear.h:4851
      cmd_offset : aliased nk_size;  -- ./Nuklear/nuklear.h:4852
      path_count : aliased unsigned;  -- ./Nuklear/nuklear.h:4854
      path_offset : aliased unsigned;  -- ./Nuklear/nuklear.h:4855
      line_AA : aliased nk_anti_aliasing;  -- ./Nuklear/nuklear.h:4857
      shape_AA : aliased nk_anti_aliasing;  -- ./Nuklear/nuklear.h:4858
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4840

  -- draw list
   procedure draw_list_init (arg1 : access nk_draw_list)  -- ./Nuklear/nuklear.h:4866
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_init";

   procedure draw_list_setup
     (arg1 : access nk_draw_list;
      arg2 : access constant nk_convert_config;
      cmds : access nk_buffer;
      vertices : access nk_buffer;
      elements : access nk_buffer;
      line_aa : nk_anti_aliasing;
      shape_aa : nk_anti_aliasing)  -- ./Nuklear/nuklear.h:4867
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_setup";

  -- drawing
   function u_draw_list_begin (arg1 : access constant nk_draw_list; arg2 : access constant nk_buffer) return access constant nk_draw_command  -- ./Nuklear/nuklear.h:4871
   with Import => True,
        Convention => C,
        External_Name => "nk__draw_list_begin";

   function u_draw_list_next
     (arg1 : access constant nk_draw_command;
      arg2 : access constant nk_buffer;
      arg3 : access constant nk_draw_list) return access constant nk_draw_command  -- ./Nuklear/nuklear.h:4872
   with Import => True,
        Convention => C,
        External_Name => "nk__draw_list_next";

   function u_draw_list_end (arg1 : access constant nk_draw_list; arg2 : access constant nk_buffer) return access constant nk_draw_command  -- ./Nuklear/nuklear.h:4873
   with Import => True,
        Convention => C,
        External_Name => "nk__draw_list_end";

  -- path
   procedure draw_list_path_clear (arg1 : access nk_draw_list)  -- ./Nuklear/nuklear.h:4876
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_path_clear";

   procedure draw_list_path_line_to (arg1 : access nk_draw_list; pos : nk_vec2_t)  -- ./Nuklear/nuklear.h:4877
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_path_line_to";

   procedure draw_list_path_arc_to_fast
     (arg1 : access nk_draw_list;
      center : nk_vec2_t;
      radius : float;
      a_min : int;
      a_max : int)  -- ./Nuklear/nuklear.h:4878
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_path_arc_to_fast";

   procedure draw_list_path_arc_to
     (arg1 : access nk_draw_list;
      center : nk_vec2_t;
      radius : float;
      a_min : float;
      a_max : float;
      segments : unsigned)  -- ./Nuklear/nuklear.h:4879
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_path_arc_to";

   procedure draw_list_path_rect_to
     (arg1 : access nk_draw_list;
      a : nk_vec2_t;
      b : nk_vec2_t;
      rounding : float)  -- ./Nuklear/nuklear.h:4880
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_path_rect_to";

   procedure draw_list_path_curve_to
     (arg1 : access nk_draw_list;
      p2 : nk_vec2_t;
      p3 : nk_vec2_t;
      p4 : nk_vec2_t;
      num_segments : unsigned)  -- ./Nuklear/nuklear.h:4881
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_path_curve_to";

   procedure draw_list_path_fill (arg1 : access nk_draw_list; arg2 : nk_color)  -- ./Nuklear/nuklear.h:4882
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_path_fill";

   procedure draw_list_path_stroke
     (arg1 : access nk_draw_list;
      arg2 : nk_color;
      closed : nk_draw_list_stroke;
      thickness : float)  -- ./Nuklear/nuklear.h:4883
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_path_stroke";

  -- stroke
   procedure draw_list_stroke_line
     (arg1 : access nk_draw_list;
      a : nk_vec2_t;
      b : nk_vec2_t;
      arg4 : nk_color;
      thickness : float)  -- ./Nuklear/nuklear.h:4886
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_stroke_line";

   procedure draw_list_stroke_rect
     (arg1 : access nk_draw_list;
      rect : nk_rect_t;
      arg3 : nk_color;
      rounding : float;
      thickness : float)  -- ./Nuklear/nuklear.h:4887
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_stroke_rect";

   procedure draw_list_stroke_triangle
     (arg1 : access nk_draw_list;
      a : nk_vec2_t;
      b : nk_vec2_t;
      c : nk_vec2_t;
      arg5 : nk_color;
      thickness : float)  -- ./Nuklear/nuklear.h:4888
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_stroke_triangle";

   procedure draw_list_stroke_circle
     (arg1 : access nk_draw_list;
      center : nk_vec2_t;
      radius : float;
      arg4 : nk_color;
      segs : unsigned;
      thickness : float)  -- ./Nuklear/nuklear.h:4889
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_stroke_circle";

   procedure draw_list_stroke_curve
     (arg1 : access nk_draw_list;
      p0 : nk_vec2_t;
      cp0 : nk_vec2_t;
      cp1 : nk_vec2_t;
      p1 : nk_vec2_t;
      arg6 : nk_color;
      segments : unsigned;
      thickness : float)  -- ./Nuklear/nuklear.h:4890
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_stroke_curve";

   procedure draw_list_stroke_poly_line
     (arg1 : access nk_draw_list;
      pnts : access constant nk_vec2_t;
      cnt : unsigned;
      arg4 : nk_color;
      arg5 : nk_draw_list_stroke;
      thickness : float;
      arg7 : nk_anti_aliasing)  -- ./Nuklear/nuklear.h:4891
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_stroke_poly_line";

  -- fill
   procedure draw_list_fill_rect
     (arg1 : access nk_draw_list;
      rect : nk_rect_t;
      arg3 : nk_color;
      rounding : float)  -- ./Nuklear/nuklear.h:4894
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_fill_rect";

   procedure draw_list_fill_rect_multi_color
     (arg1 : access nk_draw_list;
      rect : nk_rect_t;
      left : nk_color;
      top : nk_color;
      right : nk_color;
      bottom : nk_color)  -- ./Nuklear/nuklear.h:4895
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_fill_rect_multi_color";

   procedure draw_list_fill_triangle
     (arg1 : access nk_draw_list;
      a : nk_vec2_t;
      b : nk_vec2_t;
      c : nk_vec2_t;
      arg5 : nk_color)  -- ./Nuklear/nuklear.h:4896
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_fill_triangle";

   procedure draw_list_fill_circle
     (arg1 : access nk_draw_list;
      center : nk_vec2_t;
      radius : float;
      col : nk_color;
      segs : unsigned)  -- ./Nuklear/nuklear.h:4897
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_fill_circle";

   procedure draw_list_fill_poly_convex
     (arg1 : access nk_draw_list;
      points : access constant nk_vec2_t;
      count : unsigned;
      arg4 : nk_color;
      arg5 : nk_anti_aliasing)  -- ./Nuklear/nuklear.h:4898
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_fill_poly_convex";

  -- misc
   procedure draw_list_add_image
     (arg1 : access nk_draw_list;
      texture : nk_image_t;
      rect : nk_rect_t;
      arg4 : nk_color)  -- ./Nuklear/nuklear.h:4901
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_add_image";

   procedure draw_list_add_text
     (arg1 : access nk_draw_list;
      arg2 : access constant nk_user_font;
      arg3 : nk_rect_t;
      text : Interfaces.C.char_array;
      len : int;
      font_height : float;
      arg7 : nk_color)  -- ./Nuklear/nuklear.h:4902
   with Import => True,
        Convention => C,
        External_Name => "nk_draw_list_add_text";

  -- ===============================================================
  -- *
  -- *                          GUI
  -- *
  -- * ===============================================================

   type nk_style_item_type is
     (STYLE_ITEM_COLOR,
      STYLE_ITEM_IMAGE,
      STYLE_ITEM_NINE_SLICE)
   with Convention => C;  -- ./Nuklear/nuklear.h:4914

   type nk_style_item_data (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            color : aliased nk_color;  -- ./Nuklear/nuklear.h:4921
         when 1 =>
            image : aliased nk_image_t;  -- ./Nuklear/nuklear.h:4922
         when others =>
            slice : aliased nk_nine_slice;  -- ./Nuklear/nuklear.h:4923
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- ./Nuklear/nuklear.h:4920

   type nk_style_item is record
      c_type : aliased nk_style_item_type;  -- ./Nuklear/nuklear.h:4927
      data : aliased nk_style_item_data;  -- ./Nuklear/nuklear.h:4928
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4926

   type nk_style_text is record
      color : aliased nk_color;  -- ./Nuklear/nuklear.h:4932
      padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:4933
      color_factor : aliased float;  -- ./Nuklear/nuklear.h:4934
      disabled_factor : aliased float;  -- ./Nuklear/nuklear.h:4935
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4931

  -- background
   type nk_style_button is record
      normal : aliased nk_style_item;  -- ./Nuklear/nuklear.h:4940
      hover : aliased nk_style_item;  -- ./Nuklear/nuklear.h:4941
      active : aliased nk_style_item;  -- ./Nuklear/nuklear.h:4942
      border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:4943
      color_factor_background : aliased float;  -- ./Nuklear/nuklear.h:4944
      text_background : aliased nk_color;  -- ./Nuklear/nuklear.h:4947
      text_normal : aliased nk_color;  -- ./Nuklear/nuklear.h:4948
      text_hover : aliased nk_color;  -- ./Nuklear/nuklear.h:4949
      text_active : aliased nk_color;  -- ./Nuklear/nuklear.h:4950
      text_alignment : aliased nk_flags;  -- ./Nuklear/nuklear.h:4951
      color_factor_text : aliased float;  -- ./Nuklear/nuklear.h:4952
      border : aliased float;  -- ./Nuklear/nuklear.h:4955
      rounding : aliased float;  -- ./Nuklear/nuklear.h:4956
      padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:4957
      image_padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:4958
      touch_padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:4959
      disabled_factor : aliased float;  -- ./Nuklear/nuklear.h:4960
      userdata : aliased nk_handle;  -- ./Nuklear/nuklear.h:4963
      draw_begin : access procedure (arg1 : access nk_command_buffer; arg2 : nk_handle);  -- ./Nuklear/nuklear.h:4964
      draw_end : access procedure (arg1 : access nk_command_buffer; arg2 : nk_handle);  -- ./Nuklear/nuklear.h:4965
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4938

  -- text
  -- properties
  -- optional user callbacks
  -- background
   type nk_style_toggle is record
      normal : aliased nk_style_item;  -- ./Nuklear/nuklear.h:4970
      hover : aliased nk_style_item;  -- ./Nuklear/nuklear.h:4971
      active : aliased nk_style_item;  -- ./Nuklear/nuklear.h:4972
      border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:4973
      cursor_normal : aliased nk_style_item;  -- ./Nuklear/nuklear.h:4976
      cursor_hover : aliased nk_style_item;  -- ./Nuklear/nuklear.h:4977
      text_normal : aliased nk_color;  -- ./Nuklear/nuklear.h:4980
      text_hover : aliased nk_color;  -- ./Nuklear/nuklear.h:4981
      text_active : aliased nk_color;  -- ./Nuklear/nuklear.h:4982
      text_background : aliased nk_color;  -- ./Nuklear/nuklear.h:4983
      text_alignment : aliased nk_flags;  -- ./Nuklear/nuklear.h:4984
      padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:4987
      touch_padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:4988
      spacing : aliased float;  -- ./Nuklear/nuklear.h:4989
      border : aliased float;  -- ./Nuklear/nuklear.h:4990
      color_factor : aliased float;  -- ./Nuklear/nuklear.h:4991
      disabled_factor : aliased float;  -- ./Nuklear/nuklear.h:4992
      userdata : aliased nk_handle;  -- ./Nuklear/nuklear.h:4995
      draw_begin : access procedure (arg1 : access nk_command_buffer; arg2 : nk_handle);  -- ./Nuklear/nuklear.h:4996
      draw_end : access procedure (arg1 : access nk_command_buffer; arg2 : nk_handle);  -- ./Nuklear/nuklear.h:4997
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:4968

  -- cursor
  -- text
  -- properties
  -- optional user callbacks
  -- background (inactive)
   type nk_style_selectable is record
      normal : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5002
      hover : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5003
      pressed : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5004
      normal_active : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5007
      hover_active : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5008
      pressed_active : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5009
      text_normal : aliased nk_color;  -- ./Nuklear/nuklear.h:5012
      text_hover : aliased nk_color;  -- ./Nuklear/nuklear.h:5013
      text_pressed : aliased nk_color;  -- ./Nuklear/nuklear.h:5014
      text_normal_active : aliased nk_color;  -- ./Nuklear/nuklear.h:5017
      text_hover_active : aliased nk_color;  -- ./Nuklear/nuklear.h:5018
      text_pressed_active : aliased nk_color;  -- ./Nuklear/nuklear.h:5019
      text_background : aliased nk_color;  -- ./Nuklear/nuklear.h:5020
      text_alignment : aliased nk_flags;  -- ./Nuklear/nuklear.h:5021
      rounding : aliased float;  -- ./Nuklear/nuklear.h:5024
      padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5025
      touch_padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5026
      image_padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5027
      color_factor : aliased float;  -- ./Nuklear/nuklear.h:5028
      disabled_factor : aliased float;  -- ./Nuklear/nuklear.h:5029
      userdata : aliased nk_handle;  -- ./Nuklear/nuklear.h:5032
      draw_begin : access procedure (arg1 : access nk_command_buffer; arg2 : nk_handle);  -- ./Nuklear/nuklear.h:5033
      draw_end : access procedure (arg1 : access nk_command_buffer; arg2 : nk_handle);  -- ./Nuklear/nuklear.h:5034
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5000

  -- background (active)
  -- text color (inactive)
  -- text color (active)
  -- properties
  -- optional user callbacks
  -- background
   type nk_style_slider is record
      normal : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5039
      hover : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5040
      active : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5041
      border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5042
      bar_normal : aliased nk_color;  -- ./Nuklear/nuklear.h:5045
      bar_hover : aliased nk_color;  -- ./Nuklear/nuklear.h:5046
      bar_active : aliased nk_color;  -- ./Nuklear/nuklear.h:5047
      bar_filled : aliased nk_color;  -- ./Nuklear/nuklear.h:5048
      cursor_normal : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5051
      cursor_hover : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5052
      cursor_active : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5053
      border : aliased float;  -- ./Nuklear/nuklear.h:5056
      rounding : aliased float;  -- ./Nuklear/nuklear.h:5057
      bar_height : aliased float;  -- ./Nuklear/nuklear.h:5058
      padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5059
      spacing : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5060
      cursor_size : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5061
      color_factor : aliased float;  -- ./Nuklear/nuklear.h:5062
      disabled_factor : aliased float;  -- ./Nuklear/nuklear.h:5063
      show_buttons : aliased int;  -- ./Nuklear/nuklear.h:5066
      inc_button : aliased nk_style_button;  -- ./Nuklear/nuklear.h:5067
      dec_button : aliased nk_style_button;  -- ./Nuklear/nuklear.h:5068
      inc_symbol : aliased nk_symbol_type;  -- ./Nuklear/nuklear.h:5069
      dec_symbol : aliased nk_symbol_type;  -- ./Nuklear/nuklear.h:5070
      userdata : aliased nk_handle;  -- ./Nuklear/nuklear.h:5073
      draw_begin : access procedure (arg1 : access nk_command_buffer; arg2 : nk_handle);  -- ./Nuklear/nuklear.h:5074
      draw_end : access procedure (arg1 : access nk_command_buffer; arg2 : nk_handle);  -- ./Nuklear/nuklear.h:5075
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5037

  -- background bar
  -- cursor
  -- properties
  -- optional buttons
  -- optional user callbacks
  -- background
   type nk_style_progress is record
      normal : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5080
      hover : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5081
      active : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5082
      border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5083
      cursor_normal : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5086
      cursor_hover : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5087
      cursor_active : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5088
      cursor_border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5089
      rounding : aliased float;  -- ./Nuklear/nuklear.h:5092
      border : aliased float;  -- ./Nuklear/nuklear.h:5093
      cursor_border : aliased float;  -- ./Nuklear/nuklear.h:5094
      cursor_rounding : aliased float;  -- ./Nuklear/nuklear.h:5095
      padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5096
      color_factor : aliased float;  -- ./Nuklear/nuklear.h:5097
      disabled_factor : aliased float;  -- ./Nuklear/nuklear.h:5098
      userdata : aliased nk_handle;  -- ./Nuklear/nuklear.h:5101
      draw_begin : access procedure (arg1 : access nk_command_buffer; arg2 : nk_handle);  -- ./Nuklear/nuklear.h:5102
      draw_end : access procedure (arg1 : access nk_command_buffer; arg2 : nk_handle);  -- ./Nuklear/nuklear.h:5103
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5078

  -- cursor
  -- properties
  -- optional user callbacks
  -- background
   type nk_style_scrollbar is record
      normal : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5108
      hover : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5109
      active : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5110
      border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5111
      cursor_normal : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5114
      cursor_hover : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5115
      cursor_active : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5116
      cursor_border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5117
      border : aliased float;  -- ./Nuklear/nuklear.h:5120
      rounding : aliased float;  -- ./Nuklear/nuklear.h:5121
      border_cursor : aliased float;  -- ./Nuklear/nuklear.h:5122
      rounding_cursor : aliased float;  -- ./Nuklear/nuklear.h:5123
      padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5124
      color_factor : aliased float;  -- ./Nuklear/nuklear.h:5125
      disabled_factor : aliased float;  -- ./Nuklear/nuklear.h:5126
      show_buttons : aliased int;  -- ./Nuklear/nuklear.h:5129
      inc_button : aliased nk_style_button;  -- ./Nuklear/nuklear.h:5130
      dec_button : aliased nk_style_button;  -- ./Nuklear/nuklear.h:5131
      inc_symbol : aliased nk_symbol_type;  -- ./Nuklear/nuklear.h:5132
      dec_symbol : aliased nk_symbol_type;  -- ./Nuklear/nuklear.h:5133
      userdata : aliased nk_handle;  -- ./Nuklear/nuklear.h:5136
      draw_begin : access procedure (arg1 : access nk_command_buffer; arg2 : nk_handle);  -- ./Nuklear/nuklear.h:5137
      draw_end : access procedure (arg1 : access nk_command_buffer; arg2 : nk_handle);  -- ./Nuklear/nuklear.h:5138
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5106

  -- cursor
  -- properties
  -- optional buttons
  -- optional user callbacks
  -- background
   type nk_style_edit is record
      normal : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5143
      hover : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5144
      active : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5145
      border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5146
      scrollbar : aliased nk_style_scrollbar;  -- ./Nuklear/nuklear.h:5147
      cursor_normal : aliased nk_color;  -- ./Nuklear/nuklear.h:5150
      cursor_hover : aliased nk_color;  -- ./Nuklear/nuklear.h:5151
      cursor_text_normal : aliased nk_color;  -- ./Nuklear/nuklear.h:5152
      cursor_text_hover : aliased nk_color;  -- ./Nuklear/nuklear.h:5153
      text_normal : aliased nk_color;  -- ./Nuklear/nuklear.h:5156
      text_hover : aliased nk_color;  -- ./Nuklear/nuklear.h:5157
      text_active : aliased nk_color;  -- ./Nuklear/nuklear.h:5158
      selected_normal : aliased nk_color;  -- ./Nuklear/nuklear.h:5161
      selected_hover : aliased nk_color;  -- ./Nuklear/nuklear.h:5162
      selected_text_normal : aliased nk_color;  -- ./Nuklear/nuklear.h:5163
      selected_text_hover : aliased nk_color;  -- ./Nuklear/nuklear.h:5164
      border : aliased float;  -- ./Nuklear/nuklear.h:5167
      rounding : aliased float;  -- ./Nuklear/nuklear.h:5168
      cursor_size : aliased float;  -- ./Nuklear/nuklear.h:5169
      scrollbar_size : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5170
      padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5171
      row_padding : aliased float;  -- ./Nuklear/nuklear.h:5172
      color_factor : aliased float;  -- ./Nuklear/nuklear.h:5173
      disabled_factor : aliased float;  -- ./Nuklear/nuklear.h:5174
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5141

  -- cursor
  -- text (unselected)
  -- text (selected)
  -- properties
  -- background
   type nk_style_property is record
      normal : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5179
      hover : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5180
      active : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5181
      border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5182
      label_normal : aliased nk_color;  -- ./Nuklear/nuklear.h:5185
      label_hover : aliased nk_color;  -- ./Nuklear/nuklear.h:5186
      label_active : aliased nk_color;  -- ./Nuklear/nuklear.h:5187
      sym_left : aliased nk_symbol_type;  -- ./Nuklear/nuklear.h:5190
      sym_right : aliased nk_symbol_type;  -- ./Nuklear/nuklear.h:5191
      border : aliased float;  -- ./Nuklear/nuklear.h:5194
      rounding : aliased float;  -- ./Nuklear/nuklear.h:5195
      padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5196
      color_factor : aliased float;  -- ./Nuklear/nuklear.h:5197
      disabled_factor : aliased float;  -- ./Nuklear/nuklear.h:5198
      edit : aliased nk_style_edit;  -- ./Nuklear/nuklear.h:5200
      inc_button : aliased nk_style_button;  -- ./Nuklear/nuklear.h:5201
      dec_button : aliased nk_style_button;  -- ./Nuklear/nuklear.h:5202
      userdata : aliased nk_handle;  -- ./Nuklear/nuklear.h:5205
      draw_begin : access procedure (arg1 : access nk_command_buffer; arg2 : nk_handle);  -- ./Nuklear/nuklear.h:5206
      draw_end : access procedure (arg1 : access nk_command_buffer; arg2 : nk_handle);  -- ./Nuklear/nuklear.h:5207
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5177

  -- text
  -- symbols
  -- properties
  -- optional user callbacks
  -- colors
   type nk_style_chart is record
      background : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5212
      border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5213
      selected_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5214
      color : aliased nk_color;  -- ./Nuklear/nuklear.h:5215
      border : aliased float;  -- ./Nuklear/nuklear.h:5218
      rounding : aliased float;  -- ./Nuklear/nuklear.h:5219
      padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5220
      color_factor : aliased float;  -- ./Nuklear/nuklear.h:5221
      disabled_factor : aliased float;  -- ./Nuklear/nuklear.h:5222
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5210

  -- properties
  -- background
   type nk_style_combo is record
      normal : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5227
      hover : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5228
      active : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5229
      border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5230
      label_normal : aliased nk_color;  -- ./Nuklear/nuklear.h:5233
      label_hover : aliased nk_color;  -- ./Nuklear/nuklear.h:5234
      label_active : aliased nk_color;  -- ./Nuklear/nuklear.h:5235
      symbol_normal : aliased nk_color;  -- ./Nuklear/nuklear.h:5238
      symbol_hover : aliased nk_color;  -- ./Nuklear/nuklear.h:5239
      symbol_active : aliased nk_color;  -- ./Nuklear/nuklear.h:5240
      button : aliased nk_style_button;  -- ./Nuklear/nuklear.h:5243
      sym_normal : aliased nk_symbol_type;  -- ./Nuklear/nuklear.h:5244
      sym_hover : aliased nk_symbol_type;  -- ./Nuklear/nuklear.h:5245
      sym_active : aliased nk_symbol_type;  -- ./Nuklear/nuklear.h:5246
      border : aliased float;  -- ./Nuklear/nuklear.h:5249
      rounding : aliased float;  -- ./Nuklear/nuklear.h:5250
      content_padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5251
      button_padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5252
      spacing : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5253
      color_factor : aliased float;  -- ./Nuklear/nuklear.h:5254
      disabled_factor : aliased float;  -- ./Nuklear/nuklear.h:5255
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5225

  -- label
  -- symbol
  -- button
  -- properties
  -- background
   type nk_style_tab is record
      background : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5260
      border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5261
      text : aliased nk_color;  -- ./Nuklear/nuklear.h:5262
      tab_maximize_button : aliased nk_style_button;  -- ./Nuklear/nuklear.h:5265
      tab_minimize_button : aliased nk_style_button;  -- ./Nuklear/nuklear.h:5266
      node_maximize_button : aliased nk_style_button;  -- ./Nuklear/nuklear.h:5267
      node_minimize_button : aliased nk_style_button;  -- ./Nuklear/nuklear.h:5268
      sym_minimize : aliased nk_symbol_type;  -- ./Nuklear/nuklear.h:5269
      sym_maximize : aliased nk_symbol_type;  -- ./Nuklear/nuklear.h:5270
      border : aliased float;  -- ./Nuklear/nuklear.h:5273
      rounding : aliased float;  -- ./Nuklear/nuklear.h:5274
      indent : aliased float;  -- ./Nuklear/nuklear.h:5275
      padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5276
      spacing : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5277
      color_factor : aliased float;  -- ./Nuklear/nuklear.h:5278
      disabled_factor : aliased float;  -- ./Nuklear/nuklear.h:5279
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5258

  -- button
  -- properties
   type nk_style_header_align is
     (HEADER_LEFT,
      HEADER_RIGHT)
   with Convention => C;  -- ./Nuklear/nuklear.h:5282

  -- background
   type nk_style_window_header is record
      normal : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5288
      hover : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5289
      active : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5290
      close_button : aliased nk_style_button;  -- ./Nuklear/nuklear.h:5293
      minimize_button : aliased nk_style_button;  -- ./Nuklear/nuklear.h:5294
      close_symbol : aliased nk_symbol_type;  -- ./Nuklear/nuklear.h:5295
      minimize_symbol : aliased nk_symbol_type;  -- ./Nuklear/nuklear.h:5296
      maximize_symbol : aliased nk_symbol_type;  -- ./Nuklear/nuklear.h:5297
      label_normal : aliased nk_color;  -- ./Nuklear/nuklear.h:5300
      label_hover : aliased nk_color;  -- ./Nuklear/nuklear.h:5301
      label_active : aliased nk_color;  -- ./Nuklear/nuklear.h:5302
      align : aliased nk_style_header_align;  -- ./Nuklear/nuklear.h:5305
      padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5306
      label_padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5307
      spacing : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5308
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5286

  -- button
  -- title
  -- properties
   type nk_style_window is record
      header : aliased nk_style_window_header;  -- ./Nuklear/nuklear.h:5312
      fixed_background : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5313
      background : aliased nk_color;  -- ./Nuklear/nuklear.h:5314
      border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5316
      popup_border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5317
      combo_border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5318
      contextual_border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5319
      menu_border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5320
      group_border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5321
      tooltip_border_color : aliased nk_color;  -- ./Nuklear/nuklear.h:5322
      scaler : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5323
      border : aliased float;  -- ./Nuklear/nuklear.h:5325
      combo_border : aliased float;  -- ./Nuklear/nuklear.h:5326
      contextual_border : aliased float;  -- ./Nuklear/nuklear.h:5327
      menu_border : aliased float;  -- ./Nuklear/nuklear.h:5328
      group_border : aliased float;  -- ./Nuklear/nuklear.h:5329
      tooltip_border : aliased float;  -- ./Nuklear/nuklear.h:5330
      popup_border : aliased float;  -- ./Nuklear/nuklear.h:5331
      min_row_height_padding : aliased float;  -- ./Nuklear/nuklear.h:5332
      rounding : aliased float;  -- ./Nuklear/nuklear.h:5334
      spacing : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5335
      scrollbar_size : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5336
      min_size : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5337
      padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5339
      group_padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5340
      popup_padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5341
      combo_padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5342
      contextual_padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5343
      menu_padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5344
      tooltip_padding : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5345
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5311

   type anon_array1882 is array (0 .. 6) of access constant nk_cursor;
   type nk_style is record
      font : access constant nk_user_font;  -- ./Nuklear/nuklear.h:5349
      cursors : anon_array1882;  -- ./Nuklear/nuklear.h:5350
      cursor_active : access constant nk_cursor;  -- ./Nuklear/nuklear.h:5351
      cursor_last : access nk_cursor;  -- ./Nuklear/nuklear.h:5352
      cursor_visible : aliased int;  -- ./Nuklear/nuklear.h:5353
      text : aliased nk_style_text;  -- ./Nuklear/nuklear.h:5355
      button : aliased nk_style_button;  -- ./Nuklear/nuklear.h:5356
      contextual_button : aliased nk_style_button;  -- ./Nuklear/nuklear.h:5357
      menu_button : aliased nk_style_button;  -- ./Nuklear/nuklear.h:5358
      option : aliased nk_style_toggle;  -- ./Nuklear/nuklear.h:5359
      checkbox : aliased nk_style_toggle;  -- ./Nuklear/nuklear.h:5360
      selectable : aliased nk_style_selectable;  -- ./Nuklear/nuklear.h:5361
      slider : aliased nk_style_slider;  -- ./Nuklear/nuklear.h:5362
      progress : aliased nk_style_progress;  -- ./Nuklear/nuklear.h:5363
      property : aliased nk_style_property;  -- ./Nuklear/nuklear.h:5364
      edit : aliased nk_style_edit;  -- ./Nuklear/nuklear.h:5365
      chart : aliased nk_style_chart;  -- ./Nuklear/nuklear.h:5366
      scrollh : aliased nk_style_scrollbar;  -- ./Nuklear/nuklear.h:5367
      scrollv : aliased nk_style_scrollbar;  -- ./Nuklear/nuklear.h:5368
      tab : aliased nk_style_tab;  -- ./Nuklear/nuklear.h:5369
      combo : aliased nk_style_combo;  -- ./Nuklear/nuklear.h:5370
      window : aliased nk_style_window;  -- ./Nuklear/nuklear.h:5371
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5348

   function style_item_color (arg1 : nk_color) return nk_style_item  -- ./Nuklear/nuklear.h:5374
   with Import => True,
        Convention => C,
        External_Name => "nk_style_item_color";

   function style_item_image (img : nk_image_t) return nk_style_item  -- ./Nuklear/nuklear.h:5375
   with Import => True,
        Convention => C,
        External_Name => "nk_style_item_image";

   function style_item_nine_slice (slice : nk_nine_slice) return nk_style_item  -- ./Nuklear/nuklear.h:5376
   with Import => True,
        Convention => C,
        External_Name => "nk_style_item_nine_slice";

   function style_item_hide return nk_style_item  -- ./Nuklear/nuklear.h:5377
   with Import => True,
        Convention => C,
        External_Name => "nk_style_item_hide";

  --==============================================================
  -- *                          PANEL
  -- * =============================================================

   subtype nk_panel_type is unsigned;
   nk_panel_type_PANEL_NONE : constant nk_panel_type := 0;
   nk_panel_type_PANEL_WINDOW : constant nk_panel_type := 1;
   nk_panel_type_PANEL_GROUP : constant nk_panel_type := 2;
   nk_panel_type_PANEL_POPUP : constant nk_panel_type := 4;
   nk_panel_type_PANEL_CONTEXTUAL : constant nk_panel_type := 16;
   nk_panel_type_PANEL_COMBO : constant nk_panel_type := 32;
   nk_panel_type_PANEL_MENU : constant nk_panel_type := 64;
   nk_panel_type_PANEL_TOOLTIP : constant nk_panel_type := 128;  -- ./Nuklear/nuklear.h:5389

   subtype nk_panel_set is unsigned;
   nk_panel_set_PANEL_SET_NONBLOCK : constant nk_panel_set := 240;
   nk_panel_set_PANEL_SET_POPUP : constant nk_panel_set := 244;
   nk_panel_set_PANEL_SET_SUB : constant nk_panel_set := 246;  -- ./Nuklear/nuklear.h:5399

   type nk_chart_slot is record
      c_type : aliased nk_chart_type;  -- ./Nuklear/nuklear.h:5406
      color : aliased nk_color;  -- ./Nuklear/nuklear.h:5407
      highlight : aliased nk_color;  -- ./Nuklear/nuklear.h:5408
      min : aliased float;  -- ./Nuklear/nuklear.h:5409
      max : aliased float;  -- ./Nuklear/nuklear.h:5409
      c_range : aliased float;  -- ./Nuklear/nuklear.h:5409
      count : aliased int;  -- ./Nuklear/nuklear.h:5410
      last : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5411
      index : aliased int;  -- ./Nuklear/nuklear.h:5412
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5405

   type anon_array1891 is array (0 .. 3) of aliased nk_chart_slot;
   type nk_chart is record
      slot : aliased int;  -- ./Nuklear/nuklear.h:5416
      x : aliased float;  -- ./Nuklear/nuklear.h:5417
      y : aliased float;  -- ./Nuklear/nuklear.h:5417
      w : aliased float;  -- ./Nuklear/nuklear.h:5417
      h : aliased float;  -- ./Nuklear/nuklear.h:5417
      slots : aliased anon_array1891;  -- ./Nuklear/nuklear.h:5418
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5415

   type nk_panel_row_layout_type is
     (LAYOUT_DYNAMIC_FIXED,
      LAYOUT_DYNAMIC_ROW,
      LAYOUT_DYNAMIC_FREE,
      LAYOUT_DYNAMIC,
      LAYOUT_STATIC_FIXED,
      LAYOUT_STATIC_ROW,
      LAYOUT_STATIC_FREE,
      LAYOUT_STATIC,
      LAYOUT_TEMPLATE,
      LAYOUT_COUNT)
   with Convention => C;  -- ./Nuklear/nuklear.h:5421

   type anon_array1894 is array (0 .. 15) of aliased float;
   type nk_row_layout is record
      c_type : aliased nk_panel_row_layout_type;  -- ./Nuklear/nuklear.h:5434
      index : aliased int;  -- ./Nuklear/nuklear.h:5435
      height : aliased float;  -- ./Nuklear/nuklear.h:5436
      min_height : aliased float;  -- ./Nuklear/nuklear.h:5437
      columns : aliased int;  -- ./Nuklear/nuklear.h:5438
      ratio : access float;  -- ./Nuklear/nuklear.h:5439
      item_width : aliased float;  -- ./Nuklear/nuklear.h:5440
      item_height : aliased float;  -- ./Nuklear/nuklear.h:5441
      item_offset : aliased float;  -- ./Nuklear/nuklear.h:5442
      filled : aliased float;  -- ./Nuklear/nuklear.h:5443
      item : aliased nk_rect_t;  -- ./Nuklear/nuklear.h:5444
      tree_depth : aliased int;  -- ./Nuklear/nuklear.h:5445
      templates : aliased anon_array1894;  -- ./Nuklear/nuklear.h:5446
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5433

   type nk_popup_buffer is record
      c_begin : aliased nk_size;  -- ./Nuklear/nuklear.h:5450
      parent : aliased nk_size;  -- ./Nuklear/nuklear.h:5451
      last : aliased nk_size;  -- ./Nuklear/nuklear.h:5452
      c_end : aliased nk_size;  -- ./Nuklear/nuklear.h:5453
      active : aliased nk_bool;  -- ./Nuklear/nuklear.h:5454
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5449

   type nk_menu_state is record
      x : aliased float;  -- ./Nuklear/nuklear.h:5458
      y : aliased float;  -- ./Nuklear/nuklear.h:5458
      w : aliased float;  -- ./Nuklear/nuklear.h:5458
      h : aliased float;  -- ./Nuklear/nuklear.h:5458
      offset : aliased nk_scroll;  -- ./Nuklear/nuklear.h:5459
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5457

   type nk_panel is record
      c_type : aliased nk_panel_type;  -- ./Nuklear/nuklear.h:5463
      flags : aliased nk_flags;  -- ./Nuklear/nuklear.h:5464
      bounds : aliased nk_rect_t;  -- ./Nuklear/nuklear.h:5465
      offset_x : access nk_uint;  -- ./Nuklear/nuklear.h:5466
      offset_y : access nk_uint;  -- ./Nuklear/nuklear.h:5467
      at_x : aliased float;  -- ./Nuklear/nuklear.h:5468
      at_y : aliased float;  -- ./Nuklear/nuklear.h:5468
      max_x : aliased float;  -- ./Nuklear/nuklear.h:5468
      footer_height : aliased float;  -- ./Nuklear/nuklear.h:5469
      header_height : aliased float;  -- ./Nuklear/nuklear.h:5470
      border : aliased float;  -- ./Nuklear/nuklear.h:5471
      has_scrolling : aliased unsigned;  -- ./Nuklear/nuklear.h:5472
      clip : aliased nk_rect_t;  -- ./Nuklear/nuklear.h:5473
      menu : aliased nk_menu_state;  -- ./Nuklear/nuklear.h:5474
      row : aliased nk_row_layout;  -- ./Nuklear/nuklear.h:5475
      chart : aliased nk_chart;  -- ./Nuklear/nuklear.h:5476
      buffer : access nk_command_buffer;  -- ./Nuklear/nuklear.h:5477
      parent : access nk_panel;  -- ./Nuklear/nuklear.h:5478
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5462

  --==============================================================
  -- *                          WINDOW
  -- * =============================================================

   subtype nk_window_flags is unsigned;
   nk_window_flags_WINDOW_PRIVATE : constant nk_window_flags := 2048;
   nk_window_flags_WINDOW_DYNAMIC : constant nk_window_flags := 2048;
   nk_window_flags_WINDOW_ROM : constant nk_window_flags := 4096;
   nk_window_flags_WINDOW_NOT_INTERACTIVE : constant nk_window_flags := 5120;
   nk_window_flags_WINDOW_HIDDEN : constant nk_window_flags := 8192;
   nk_window_flags_WINDOW_CLOSED : constant nk_window_flags := 16384;
   nk_window_flags_WINDOW_MINIMIZED : constant nk_window_flags := 32768;
   nk_window_flags_WINDOW_REMOVE_ROM : constant nk_window_flags := 65536;  -- ./Nuklear/nuklear.h:5489

  -- special window type growing up in height while being filled to a certain maximum height
  -- sets window widgets into a read only mode and does not allow input changes
  -- prevents all interaction caused by input to either window or widgets inside
  -- Hides window and stops any window interaction and drawing
  -- Directly closes and frees the window at the end of the frame
  -- marks the window as minimized
  -- Removes read only mode at the end of the window
   type nk_popup_state is record
      win : access nk_window;  -- ./Nuklear/nuklear.h:5508
      c_type : aliased nk_panel_type;  -- ./Nuklear/nuklear.h:5509
      buf : aliased nk_popup_buffer;  -- ./Nuklear/nuklear.h:5510
      name : aliased nk_hash;  -- ./Nuklear/nuklear.h:5511
      active : aliased nk_bool;  -- ./Nuklear/nuklear.h:5512
      combo_count : aliased unsigned;  -- ./Nuklear/nuklear.h:5513
      con_count : aliased unsigned;  -- ./Nuklear/nuklear.h:5514
      con_old : aliased unsigned;  -- ./Nuklear/nuklear.h:5514
      active_con : aliased unsigned;  -- ./Nuklear/nuklear.h:5515
      header : aliased nk_rect_t;  -- ./Nuklear/nuklear.h:5516
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5507

   type nk_edit_state is record
      name : aliased nk_hash;  -- ./Nuklear/nuklear.h:5520
      seq : aliased unsigned;  -- ./Nuklear/nuklear.h:5521
      old : aliased unsigned;  -- ./Nuklear/nuklear.h:5522
      active : aliased int;  -- ./Nuklear/nuklear.h:5523
      prev : aliased int;  -- ./Nuklear/nuklear.h:5523
      cursor : aliased int;  -- ./Nuklear/nuklear.h:5524
      sel_start : aliased int;  -- ./Nuklear/nuklear.h:5525
      sel_end : aliased int;  -- ./Nuklear/nuklear.h:5526
      scrollbar : aliased nk_scroll;  -- ./Nuklear/nuklear.h:5527
      mode : aliased unsigned_char;  -- ./Nuklear/nuklear.h:5528
      single_line : aliased unsigned_char;  -- ./Nuklear/nuklear.h:5529
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5519

   subtype anon_array1903 is Interfaces.C.char_array (0 .. 63);
   type nk_property_state is record
      active : aliased int;  -- ./Nuklear/nuklear.h:5533
      prev : aliased int;  -- ./Nuklear/nuklear.h:5533
      buffer : aliased anon_array1903;  -- ./Nuklear/nuklear.h:5534
      length : aliased int;  -- ./Nuklear/nuklear.h:5535
      cursor : aliased int;  -- ./Nuklear/nuklear.h:5536
      select_start : aliased int;  -- ./Nuklear/nuklear.h:5537
      select_end : aliased int;  -- ./Nuklear/nuklear.h:5538
      name : aliased nk_hash;  -- ./Nuklear/nuklear.h:5539
      seq : aliased unsigned;  -- ./Nuklear/nuklear.h:5540
      old : aliased unsigned;  -- ./Nuklear/nuklear.h:5541
      state : aliased int;  -- ./Nuklear/nuklear.h:5542
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5532

   type nk_table;
   type nk_window is record
      seq : aliased unsigned;  -- ./Nuklear/nuklear.h:5546
      name : aliased nk_hash;  -- ./Nuklear/nuklear.h:5547
      name_string : aliased anon_array1903;  -- ./Nuklear/nuklear.h:5548
      flags : aliased nk_flags;  -- ./Nuklear/nuklear.h:5549
      bounds : aliased nk_rect_t;  -- ./Nuklear/nuklear.h:5551
      scrollbar : aliased nk_scroll;  -- ./Nuklear/nuklear.h:5552
      buffer : aliased nk_command_buffer;  -- ./Nuklear/nuklear.h:5553
      layout : access nk_panel;  -- ./Nuklear/nuklear.h:5554
      scrollbar_hiding_timer : aliased float;  -- ./Nuklear/nuklear.h:5555
      property : aliased nk_property_state;  -- ./Nuklear/nuklear.h:5558
      popup : aliased nk_popup_state;  -- ./Nuklear/nuklear.h:5559
      edit : aliased nk_edit_state;  -- ./Nuklear/nuklear.h:5560
      scrolled : aliased unsigned;  -- ./Nuklear/nuklear.h:5561
      widgets_disabled : aliased nk_bool;  -- ./Nuklear/nuklear.h:5562
      tables : access nk_table;  -- ./Nuklear/nuklear.h:5564
      table_count : aliased unsigned;  -- ./Nuklear/nuklear.h:5565
      next : access nk_window;  -- ./Nuklear/nuklear.h:5568
      prev : access nk_window;  -- ./Nuklear/nuklear.h:5569
      parent : access nk_window;  -- ./Nuklear/nuklear.h:5570
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5545

  -- persistent widget state
  -- window list hooks
  --==============================================================
  -- *                          STACK
  -- * =============================================================

  --/// ### Stack
  --/// The style modifier stack can be used to temporarily change a
  --/// property inside `nk_style`. For example if you want a special
  --/// red button you can temporarily push the old button color onto a stack
  --/// draw the button with a red color and then you just pop the old color
  --/// back from the stack:
  --///
  --///     nk_style_push_style_item(ctx, &ctx->style.button.normal, nk_style_item_color(nk_rgb(255,0,0)));
  --///     nk_style_push_style_item(ctx, &ctx->style.button.hover, nk_style_item_color(nk_rgb(255,0,0)));
  --///     nk_style_push_style_item(ctx, &ctx->style.button.active, nk_style_item_color(nk_rgb(255,0,0)));
  --///     nk_style_push_vec2(ctx, &cx->style.button.padding, nk_vec2(2,2));
  --///
  --///     nk_button(...);
  --///
  --///     nk_style_pop_style_item(ctx);
  --///     nk_style_pop_style_item(ctx);
  --///     nk_style_pop_style_item(ctx);
  --///     nk_style_pop_vec2(ctx);
  --///
  --/// Nuklear has a stack for style_items, float properties, vector properties,
  --/// flags, colors, fonts and for button_behavior. Each has it's own fixed size stack
  --/// which can be changed at compile time.
  --

   type nk_config_stack_style_item_element is record
      address : access nk_style_item;  -- ./Nuklear/nuklear.h:5639
      old_value : aliased nk_style_item;  -- ./Nuklear/nuklear.h:5639
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5639

   type nk_config_stack_float_element is record
      address : access float;  -- ./Nuklear/nuklear.h:5640
      old_value : aliased float;  -- ./Nuklear/nuklear.h:5640
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5640

   type nk_config_stack_vec2_element is record
      address : access nk_vec2_t;  -- ./Nuklear/nuklear.h:5641
      old_value : aliased nk_vec2_t;  -- ./Nuklear/nuklear.h:5641
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5641

   type nk_config_stack_flags_element is record
      address : access nk_flags;  -- ./Nuklear/nuklear.h:5642
      old_value : aliased nk_flags;  -- ./Nuklear/nuklear.h:5642
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5642

   type nk_config_stack_color_element is record
      address : access nk_color;  -- ./Nuklear/nuklear.h:5643
      old_value : aliased nk_color;  -- ./Nuklear/nuklear.h:5643
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5643

   type nk_config_stack_user_font_element is record
      address : System.Address;  -- ./Nuklear/nuklear.h:5644
      old_value : access constant nk_user_font;  -- ./Nuklear/nuklear.h:5644
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5644

   type nk_config_stack_button_behavior_element is record
      address : access nk_button_behavior;  -- ./Nuklear/nuklear.h:5645
      old_value : aliased nk_button_behavior;  -- ./Nuklear/nuklear.h:5645
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5645

   type anon_array1915 is array (0 .. 15) of aliased nk_config_stack_style_item_element;
   type nk_config_stack_style_item is record
      head : aliased int;  -- ./Nuklear/nuklear.h:5647
      elements : aliased anon_array1915;  -- ./Nuklear/nuklear.h:5647
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5647

   type anon_array1918 is array (0 .. 31) of aliased nk_config_stack_float_element;
   type nk_config_stack_float is record
      head : aliased int;  -- ./Nuklear/nuklear.h:5648
      elements : aliased anon_array1918;  -- ./Nuklear/nuklear.h:5648
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5648

   type anon_array1920 is array (0 .. 15) of aliased nk_config_stack_vec2_element;
   type nk_config_stack_vec2 is record
      head : aliased int;  -- ./Nuklear/nuklear.h:5649
      elements : aliased anon_array1920;  -- ./Nuklear/nuklear.h:5649
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5649

   type anon_array1922 is array (0 .. 31) of aliased nk_config_stack_flags_element;
   type nk_config_stack_flags is record
      head : aliased int;  -- ./Nuklear/nuklear.h:5650
      elements : aliased anon_array1922;  -- ./Nuklear/nuklear.h:5650
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5650

   type anon_array1924 is array (0 .. 31) of aliased nk_config_stack_color_element;
   type nk_config_stack_color is record
      head : aliased int;  -- ./Nuklear/nuklear.h:5651
      elements : aliased anon_array1924;  -- ./Nuklear/nuklear.h:5651
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5651

   type anon_array1927 is array (0 .. 7) of aliased nk_config_stack_user_font_element;
   type nk_config_stack_user_font is record
      head : aliased int;  -- ./Nuklear/nuklear.h:5652
      elements : aliased anon_array1927;  -- ./Nuklear/nuklear.h:5652
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5652

   type anon_array1929 is array (0 .. 7) of aliased nk_config_stack_button_behavior_element;
   type nk_config_stack_button_behavior is record
      head : aliased int;  -- ./Nuklear/nuklear.h:5653
      elements : aliased anon_array1929;  -- ./Nuklear/nuklear.h:5653
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5653

   type nk_configuration_stacks is record
      style_items : aliased nk_config_stack_style_item;  -- ./Nuklear/nuklear.h:5656
      floats : aliased nk_config_stack_float;  -- ./Nuklear/nuklear.h:5657
      vectors : aliased nk_config_stack_vec2;  -- ./Nuklear/nuklear.h:5658
      flags : aliased nk_config_stack_flags;  -- ./Nuklear/nuklear.h:5659
      colors : aliased nk_config_stack_color;  -- ./Nuklear/nuklear.h:5660
      fonts : aliased nk_config_stack_user_font;  -- ./Nuklear/nuklear.h:5661
      button_behaviors : aliased nk_config_stack_button_behavior;  -- ./Nuklear/nuklear.h:5662
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5655

  --==============================================================
  -- *                          CONTEXT
  -- * =============================================================

   type anon_array1932 is array (0 .. 59) of aliased nk_hash;
   type anon_array1934 is array (0 .. 59) of aliased nk_uint;
   type nk_table is record
      seq : aliased unsigned;  -- ./Nuklear/nuklear.h:5672
      size : aliased unsigned;  -- ./Nuklear/nuklear.h:5673
      keys : aliased anon_array1932;  -- ./Nuklear/nuklear.h:5674
      values : aliased anon_array1934;  -- ./Nuklear/nuklear.h:5675
      next : access nk_table;  -- ./Nuklear/nuklear.h:5676
      prev : access nk_table;  -- ./Nuklear/nuklear.h:5676
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5671

   type nk_page_data (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            tbl : aliased nk_table;  -- ./Nuklear/nuklear.h:5680
         when 1 =>
            pan : aliased nk_panel;  -- ./Nuklear/nuklear.h:5681
         when others =>
            win : aliased nk_window;  -- ./Nuklear/nuklear.h:5682
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- ./Nuklear/nuklear.h:5679

   type nk_page_element;
   type nk_page_element is record
      data : aliased nk_page_data;  -- ./Nuklear/nuklear.h:5686
      next : access nk_page_element;  -- ./Nuklear/nuklear.h:5687
      prev : access nk_page_element;  -- ./Nuklear/nuklear.h:5688
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5685

   type nk_page;
   type anon_array1940 is array (0 .. 0) of aliased nk_page_element;
   type nk_page is record
      size : aliased unsigned;  -- ./Nuklear/nuklear.h:5692
      next : access nk_page;  -- ./Nuklear/nuklear.h:5693
      win : aliased anon_array1940;  -- ./Nuklear/nuklear.h:5694
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5691

   type nk_pool is record
      alloc : aliased nk_allocator;  -- ./Nuklear/nuklear.h:5698
      c_type : aliased nk_allocation_type;  -- ./Nuklear/nuklear.h:5699
      page_count : aliased unsigned;  -- ./Nuklear/nuklear.h:5700
      pages : access nk_page;  -- ./Nuklear/nuklear.h:5701
      freelist : access nk_page_element;  -- ./Nuklear/nuklear.h:5702
      capacity : aliased unsigned;  -- ./Nuklear/nuklear.h:5703
      size : aliased nk_size;  -- ./Nuklear/nuklear.h:5704
      cap : aliased nk_size;  -- ./Nuklear/nuklear.h:5705
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5697

  -- public: can be accessed freely
   type nk_context is record
      input : aliased nk_input;  -- ./Nuklear/nuklear.h:5710
      style : aliased nk_style;  -- ./Nuklear/nuklear.h:5711
      memory : aliased nk_buffer;  -- ./Nuklear/nuklear.h:5712
      clip : aliased nk_clipboard;  -- ./Nuklear/nuklear.h:5713
      last_widget_state : aliased nk_flags;  -- ./Nuklear/nuklear.h:5714
      button_behavior : aliased nk_button_behavior;  -- ./Nuklear/nuklear.h:5715
      stacks : aliased nk_configuration_stacks;  -- ./Nuklear/nuklear.h:5716
      delta_time_seconds : aliased float;  -- ./Nuklear/nuklear.h:5717
      draw_list : aliased nk_draw_list;  -- ./Nuklear/nuklear.h:5723
      text_edit : aliased nk_text_edit;  -- ./Nuklear/nuklear.h:5732
      overlay : aliased nk_command_buffer;  -- ./Nuklear/nuklear.h:5734
      build : aliased int;  -- ./Nuklear/nuklear.h:5737
      use_pool : aliased int;  -- ./Nuklear/nuklear.h:5738
      pool : aliased nk_pool;  -- ./Nuklear/nuklear.h:5739
      c_begin : access nk_window;  -- ./Nuklear/nuklear.h:5740
      c_end : access nk_window;  -- ./Nuklear/nuklear.h:5741
      active : access nk_window;  -- ./Nuklear/nuklear.h:5742
      current : access nk_window;  -- ./Nuklear/nuklear.h:5743
      freelist : access nk_page_element;  -- ./Nuklear/nuklear.h:5744
      count : aliased unsigned;  -- ./Nuklear/nuklear.h:5745
      seq : aliased unsigned;  -- ./Nuklear/nuklear.h:5746
   end record
   with Convention => C_Pass_By_Copy;  -- ./Nuklear/nuklear.h:5708

  -- private:
  --    should only be accessed if you
  --    know what you are doing

  -- text editor objects are quite big because of an internal
  --     * undo/redo stack. Therefore it does not make sense to have one for
  --     * each window for temporary use cases, so I only provide *one* instance
  --     * for all windows. This works because the content is cleared anyway

  -- draw buffer used for overlay drawing operation like cursor
  -- windows
  -- ==============================================================
  -- *                          MATH
  -- * ===============================================================

  -- ==============================================================
  -- *                          ALIGNMENT
  -- * ===============================================================

  -- Pointer to Integer type conversion for pointer alignment
  -- standard library headers
  -- If your compiler does support `vsnprintf` I would highly recommend
  -- * defining this to vsnprintf instead since `vsprintf` is basically
  -- * unbelievable unsafe and should *NEVER* be used. But I have to support
  -- * it since C89 only provides this unsafe version.

  -- Make sure correct type size:
  -- * This will fire with a negative subscript error if the type sizes
  -- * are set incorrectly by the compiler, and compile out if not

  -- widget
  -- math
  -- util
  -- buffer
  -- draw
  -- buffering
  -- text editor
  -- window
  -- inserts window into the back of list (front of screen)
  -- inserts window into the front of list (back of screen)
  -- pool
  -- page-element
  -- table
  -- panel
  -- layout
  -- popup
  -- text
  -- button
  -- toggle
  -- progress
  -- slider
  -- scrollbar
  -- selectable
  -- edit
  -- color-picker
  -- property
  --*
  -- * @def NO_STB_RECT_PACK_IMPLEMENTATION
  -- *
  -- * When defined, will avoid enabling STB_RECT_PACK_IMPLEMENTATION for when stb_rect_pack.h is already implemented elsewhere.
  --

  --*
  -- * @def NO_STB_TRUETYPE_IMPLEMENTATION
  -- *
  -- * When defined, will avoid enabling STB_TRUETYPE_IMPLEMENTATION for when stb_truetype.h is already implemented elsewhere.
  --

  -- Allow consumer to define own STBTT_malloc/STBTT_free, and use the font atlas' allocator otherwise
  -- ===============================================================
  -- *
  -- *                              MATH
  -- *
  -- * ===============================================================

  --/// ### Math
  --///  Since nuklear is supposed to work on all systems providing floating point
  --///  math without any dependencies I also had to implement my own math functions
  --///  for sqrt, sin and cos. Since the actual highly accurate implementations for
  --///  the standard library functions are quite complex and I do not need high
  --///  precision for my use cases I use approximations.
  --///
  --///  Sqrt
  --///  ----
  --///  For square root nuklear uses the famous fast inverse square root:
  --///  https://en.wikipedia.org/wiki/Fast_inverse_square_root with
  --///  slightly tweaked magic constant. While on today's hardware it is
  --///  probably not faster it is still fast and accurate enough for
  --///  nuklear's use cases. IMPORTANT: this requires float format IEEE 754
  --///
  --///  Sine/Cosine
  --///  -----------
  --///  All constants inside both function are generated Remez's minimax
  --///  approximations for value range 0...2*PI. The reason why I decided to
  --///  approximate exactly that range is that nuklear only needs sine and
  --///  cosine to generate circles which only requires that exact range.
  --///  In addition I used Remez instead of Taylor for additional precision:
  --///  www.lolengine.net/blog/2011/12/21/better-function-approximations.
  --///
  --///  The tool I used to generate constants for both sine and cosine
  --///  (it can actually approximate a lot more functions) can be
  --///  found here: www.lolengine.net/wiki/oss/lolremez
  --

  -- New implementation. Also generated using lolremez.
  -- Old version significantly deviated from expected results.
  --  check the sign of n
  -- ===============================================================
  -- *
  -- *                              UTIL
  -- *
  -- * ===============================================================

  -- only need low bits
  -- at least 16-bits
  -- at least 32-bits
  -- too small of a word count
  -- align destination
  -- fill word
  -- fill trailing bytes
  -- skip whitespace
  -- skip whitespace
  -- a '* matches zero or more instances
  --    c    matches any literal character c
  --    .    matches any single character
  --    ^    matches the beginning of the input string
  --    $    matches the end of the input string
  --    *    matches zero or more occurrences of the previous character

  -- must look even if string is empty
  -- Returns true if each character in pattern is found sequentially within str
  --     * if found then out_score is also set. Score value has no intrinsic meaning.
  --     * Range varies with pattern. Can only compare scores with same search pattern.

  -- bonus for adjacent matches
  -- bonus if match occurs after a separator
  -- bonus if match is uppercase and prev is lower
  -- penalty applied for every letter in str before the first match
  -- maximum penalty for leading letters
  -- penalty for every letter that doesn't matter
  -- loop variables
  -- true so if first letter match gets separator bonus
  -- use "best" matched letter if multiple string letters match the pattern
  -- loop over strings
  -- Apply penalty for each letter before the first pattern match
  -- apply bonus for consecutive bonuses
  -- apply bonus for matches after a separator
  -- apply bonus across camel case boundaries
  -- update pattern iter IFF the next pattern letter was matched
  -- update best letter in str which may be for a "next" letter or a rematch
  -- apply penalty for now skipped letter
  -- separators should be more easily defined
  -- apply score for last match
  -- did not match full pattern
  -- calculate magnitude
  -- set up for scientific notation
  -- convert the number
  -- convert the exponent
  -- swap without temporary
  -- copy all non-format characters
  -- flag arguments
  -- width argument
  -- precision argument
  -- length modifier
  -- specifier
  -- string
  -- current length callback
  -- signed integer
  -- retrieve correct value type
  -- convert number to string
  -- fill left padding up to a total of `width` characters
  -- copy string value representation into buffer
  -- fill up to precision number of digits with '0'
  -- copy string value representation into buffer
  -- fill right padding up to width characters
  -- unsigned integer
  -- print oct/hex/dec value
  -- retrieve correct value type
  -- convert decimal number into hex/oct number
  -- fill left padding up to a total of `width` characters
  -- fill up to precision number of digits
  -- reverse number direction
  -- fill right padding up to width characters
  -- floating point
  -- calculate padding
  -- fill left padding up to a total of `width` characters
  -- copy string value representation into buffer
  -- fill number up to precision
  -- fill right padding up to width characters
  -- Specifier not supported: g,G,e,E,p,z
  -- 32-Bit MurmurHash3: https://code.google.com/p/smhasher/wiki/MurmurHash3
  -- body
  -- tail
  -- fallthrough
  -- fallthrough
  -- finalization
  -- fmix32
  -- ==============================================================
  -- *
  -- *                          COLOR
  -- *
  -- * ===============================================================

  -- ===============================================================
  -- *
  -- *                              UTF-8
  -- *
  -- * ===============================================================

  -- ==============================================================
  -- *
  -- *                          BUFFER
  -- *
  -- * ===============================================================

  -- no back buffer so just set correct size
  -- copy back buffer to the end of the new buffer
  -- calculate total size with needed alignment + size
  -- check if buffer has enough memory
  -- buffer is full so allocate bigger buffer if dynamic
  -- align newly allocated pointer
  -- reset back buffer either back to marker or empty
  -- reset front buffer either back to back marker or empty
  -- ===============================================================
  -- *
  -- *                              STRING
  -- *
  -- * ===============================================================

  -- memmove
  -- memmove
  -- ==============================================================
  -- *
  -- *                          DRAW
  -- *
  -- * ===============================================================

  -- make sure the offset to the next command is aligned
  -- top-left
  -- top-center
  -- top-right
  -- center-left
  -- center
  -- center-right
  -- bottom-left
  -- bottom-center
  -- bottom-right
  -- make sure text fits inside bounds
  -- ===============================================================
  -- *
  -- *                              VERTEX
  -- *
  -- * ===============================================================

  -- This assert triggers because your are drawing a lot of stuff and nuklear
  --     * defined `nk_draw_index` as `nk_ushort` to safe space be default.
  --     *
  --     * So you reached the maximum number of indices or rather vertexes.
  --     * To solve this issue please change typedef `nk_draw_index` to `nk_uint`
  --     * and don't forget to specify the new element size in your drawing
  --     * backend (OpenGL, DirectX, ...). For example in OpenGL for `glDrawElements`
  --     * instead of specifying `GL_UNSIGNED_SHORT` you have to define `GL_UNSIGNED_INT`.
  --     * Sorry for the inconvenience.

  -- if this triggers you tried to provide a value format for a color
  -- if this triggers you tried to provide a color format for a value
  -- ANTI-ALIASED STROKE
  -- allocate vertices and elements
  -- temporary allocate normals + points
  -- make sure vertex pointer is still correct
  -- calculate normals
  -- vec2 inverted length
  -- fill elements
  -- average normals
  -- fill vertices
  -- add all elements
  -- average normals
  -- add indexes
  -- add vertices
  -- free temporary normals + points
  -- NON ANTI-ALIASED STROKE
  -- vec2 inverted length
  -- add vertices
  -- temporary allocate normals
  -- add elements
  -- compute normals
  -- vec2 inverted length
  -- add vertices + indexes
  -- add vertices
  -- add indexes
  -- free temporary normals + points
  --  This algorithm for arc drawing relies on these two trigonometric identities[1]:
  --            sin(a + b) = sin(a) * cos(b) + cos(a) * sin(b)
  --            cos(a + b) = cos(a) * cos(b) - sin(a) * sin(b)
  --        Two coordinates (x, y) of a point on a circle centered on
  --        the origin can be written in polar form as:
  --            x = r * cos(a)
  --            y = r * sin(a)
  --        where r is the radius of the circle,
  --            a is the angle between (x, y) and the origin.
  --        This allows us to rotate the coordinates around the
  --        origin by an angle b using the following transformation:
  --            x' = r * cos(a + b) = x * cos(b) - y * sin(b)
  --            y' = r * sin(a + b) = y * cos(b) + x * sin(b)
  --        [1] https://en.wikipedia.org/wiki/List_of_trigonometric_identities#Angle_sum_and_difference_identities
  --

  -- push new command with given texture
  -- add region inside of the texture
  -- draw every glyph image
  -- query currently drawn glyph information
  -- calculate and draw glyph drawing rectangle and image
  -- offset next glyph
  --  stb_rect_pack.h - v1.01 - public domain - rectangle packing
  --  Sean Barrett 2014
  --
  --  Useful for e.g. packing rectangular textures into an atlas.
  --  Does not do rotation.
  --
  --  Before #including,
  --
  --     #define STB_RECT_PACK_IMPLEMENTATION
  --
  --  in the file that you want to have the implementation.
  --
  --  Not necessarily the awesomest packing method, but better than
  --  the totally naive one in stb_truetype (which is primarily what
  --  this is meant to replace).
  --
  --  Has only had a few tests run, may have issues.
  --
  --  More docs to come.
  --
  --  No memory allocations; uses qsort() and assert() from stdlib.
  --  Can override those by defining STBRP_SORT and STBRP_ASSERT.
  --
  --  This library currently uses the Skyline Bottom-Left algorithm.
  --
  --  Please note: better rectangle packers are welcome! Please
  --  implement them to the same API, but with a different init
  --  function.
  --
  --  Credits
  --
  --   Library
  --     Sean Barrett
  --   Minor features
  --     Martins Mozeiko
  --     github:IntellectualKitty
  --
  --   Bugfixes / warning fixes
  --     Jeremy Jaussaud
  --     Fabian Giesen
  --
  --  Version history:
  --
  --      1.01  (2021-07-11)  always use large rect mode, expose STBRP__MAXVAL in public section
  --      1.00  (2019-02-25)  avoid small space waste; gracefully fail too-wide rectangles
  --      0.99  (2019-02-07)  warning fixes
  --      0.11  (2017-03-03)  return packing success/fail result
  --      0.10  (2016-10-25)  remove cast-away-const to avoid warnings
  --      0.09  (2016-08-27)  fix compiler warnings
  --      0.08  (2015-09-13)  really fix bug with empty rects (w=0 or h=0)
  --      0.07  (2015-09-13)  fix bug with empty rects (w=0 or h=0)
  --      0.06  (2015-04-15)  added STBRP_SORT to allow replacing qsort
  --      0.05:  added STBRP_ASSERT to allow replacing assert
  --      0.04:  fixed minor bug in STBRP_LARGE_RECTS support
  --      0.01:  initial release
  --
  --  LICENSE
  --
  --    See end of file for license information.
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --        INCLUDE SECTION
  --
  --  Mostly for internal use, but this is the maximum supported coordinate value.
  --  Assign packed locations to rectangles. The rectangles are of type
  --  'stbrp_rect' defined below, stored in the array 'rects', and there
  --  are 'num_rects' many of them.
  --
  --  Rectangles which are successfully packed have the 'was_packed' flag
  --  set to a non-zero value and 'x' and 'y' store the minimum location
  --  on each axis (i.e. bottom-left in cartesian coordinates, top-left
  --  if you imagine y increasing downwards). Rectangles which do not fit
  --  have the 'was_packed' flag set to 0.
  --
  --  You should not try to access the 'rects' array from another thread
  --  while this function is running, as the function temporarily reorders
  --  the array while it executes.
  --
  --  To pack into another rectangle, you need to call stbrp_init_target
  --  again. To continue packing into the same rectangle, you can call
  --  this function again. Calling this multiple times with multiple rect
  --  arrays will probably produce worse packing results than calling it
  --  a single time with the full rectangle array, but the option is
  --  available.
  --
  --  The function returns 1 if all of the rectangles were successfully
  --  packed and 0 otherwise.
  --  reserved for your use:
  --  input:
  --  output:
  --  non-zero if valid packing
  --  16 bytes, nominally
  --  Initialize a rectangle packer to:
  --     pack a rectangle that is 'width' by 'height' in dimensions
  --     using temporary storage provided by the array 'nodes', which is 'num_nodes' long
  --
  --  You must call this function every time you start packing into a new target.
  --
  --  There is no "shutdown" function. The 'nodes' memory must stay valid for
  --  the following stbrp_pack_rects() call (or calls), but can be freed after
  --  the call (or calls) finish.
  --
  --  Note: to guarantee best results, either:
  --        1. make sure 'num_nodes' >= 'width'
  --    or  2. call stbrp_allow_out_of_mem() defined below with 'allow_out_of_mem = 1'
  --
  --  If you don't do either of the above things, widths will be quantized to multiples
  --  of small integers to guarantee the algorithm doesn't run out of temporary storage.
  --
  --  If you do #2, then the non-quantized algorithm will be used, but the algorithm
  --  may run out of temporary storage and be unable to pack some rectangles.
  --  Optionally call this function after init but before doing any packing to
  --  change the handling of the out-of-temp-memory scenario, described above.
  --  If you call init again, this will be reset to the default (false).
  --  Optionally select which packing heuristic the library should use. Different
  --  heuristics will produce better/worse results for different data sets.
  --  If you call init again, this will be reset to the default.
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  the details of the following structures don't matter to you, but they must
  --  be visible so you can handle the memory allocations for them
  --  we allocate two extra nodes so optimal user-node-count is 'width' not 'width+2'
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --      IMPLEMENTATION SECTION
  --
  --  if it's ok to run out of memory, then don't bother aligning them;
  --  this gives better packing, but may fail due to OOM (even though
  --  the rectangles easily fit). @TODO a smarter approach would be to only
  --  quantize once we've hit OOM, then we could get rid of this parameter.
  --  if it's not ok to run out of memory, then quantize the widths
  --  so that num_nodes is always enough nodes.
  --
  --  I.e. num_nodes * align >= width
  --                   align >= width / num_nodes
  --                   align = ceil(width/num_nodes)
  --  node 0 is the full width, node 1 is the sentinel (lets us not store width explicitly)
  --  find minimum y position if it starts at x1
  --  skip in case we're past the node
  --  we ended up handling this in the caller for efficiency
  --  raise min_y higher.
  --  we've accounted for all waste up to min_y,
  --  but we'll now add more waste for everything we've visted
  --  the first time through, visited_width might be reduced
  --  add waste area
  --  align to multiple of c->align
  --  if it can't possibly fit, bail immediately
  --  actually just want to test BL
  --  bottom left
  --  best-fit
  --  can only use it if it first vertically
  --  if doing best-fit (BF), we also have to try aligning right edge to each node position
  --
  --  e.g, if fitting
  --
  --      ____________________
  --     |____________________|
  --
  --             into
  --
  --    |                         |
  --    |             ____________|
  --    |____________|
  --
  --  then right-aligned reduces waste, but bottom-left BL is always chooses left-aligned
  --
  --  This makes BF take about 2x the time
  --  find first node that's admissible
  --  find the left position that matches this
  --  find best position according to heuristic
  --  bail if:
  --     1. it failed
  --     2. the best node doesn't fit (we don't always check this)
  --     3. we're out of memory
  --  on success, create new node
  --  insert the new node into the right starting point, and
  --  let 'cur' point to the remaining nodes needing to be
  --  stiched back in
  --  preserve the existing one, so start testing with the next one
  --  from here, traverse cur and free the nodes, until we get to one
  --  that shouldn't be freed
  --  move the current node to the free list
  --  stitch the list back in
  --  we use the 'was_packed' field internally to allow sorting/unsorting
  --  sort according to heuristic
  --  empty rect needs no space
  --  unsort
  --  set was_packed flags and all_rects_packed status
  --  return the all_rects_packed status
  --------------------------------------------------------------------------------
  --This software is available under 2 licenses -- choose whichever you prefer.
  --------------------------------------------------------------------------------
  --ALTERNATIVE A - MIT License
  --Copyright (c) 2017 Sean Barrett
  --Permission is hereby granted, free of charge, to any person obtaining a copy of
  --this software and associated documentation files (the "Software"), to deal in
  --the Software without restriction, including without limitation the rights to
  --use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
  --of the Software, and to permit persons to whom the Software is furnished to do
  --so, subject to the following conditions:
  --The above copyright notice and this permission notice shall be included in all
  --copies or substantial portions of the Software.
  --THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  --IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  --FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  --AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  --LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  --OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  --SOFTWARE.
  --------------------------------------------------------------------------------
  --ALTERNATIVE B - Public Domain (www.unlicense.org)
  --This is free and unencumbered software released into the public domain.
  --Anyone is free to copy, modify, publish, use, compile, sell, or distribute this
  --software, either in source code form or as a compiled binary, for any purpose,
  --commercial or non-commercial, and by any means.
  --In jurisdictions that recognize copyright laws, the author or authors of this
  --software dedicate any and all copyright interest in the software to the public
  --domain. We make this dedication for the benefit of the public at large and to
  --the detriment of our heirs and successors. We intend this dedication to be an
  --overt act of relinquishment in perpetuity of all present and future rights to
  --this software under copyright law.
  --THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  --IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  --FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  --AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
  --ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
  --WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
  --------------------------------------------------------------------------------
  --

  --  stb_truetype.h - v1.26 - public domain
  --  authored from 2009-2021 by Sean Barrett / RAD Game Tools
  --
  --  =======================================================================
  --
  --     NO SECURITY GUARANTEE -- DO NOT USE THIS ON UNTRUSTED FONT FILES
  --
  --  This library does no range checking of the offsets found in the file,
  --  meaning an attacker can use it to read arbitrary memory.
  --
  --  =======================================================================
  --
  --    This library processes TrueType files:
  --         parse files
  --         extract glyph metrics
  --         extract glyph shapes
  --         render glyphs to one-channel bitmaps with antialiasing (box filter)
  --         render glyphs to one-channel SDF bitmaps (signed-distance field/function)
  --
  --    Todo:
  --         non-MS cmaps
  --         crashproof on bad data
  --         hinting? (no longer patented)
  --         cleartype-style AA?
  --         optimize: use simple memory allocator for intermediates
  --         optimize: build edge-list directly from curves
  --         optimize: rasterize directly from curves?
  --
  --  ADDITIONAL CONTRIBUTORS
  --
  --    Mikko Mononen: compound shape support, more cmap formats
  --    Tor Andersson: kerning, subpixel rendering
  --    Dougall Johnson: OpenType / Type 2 font handling
  --    Daniel Ribeiro Maciel: basic GPOS-based kerning
  --
  --    Misc other:
  --        Ryan Gordon
  --        Simon Glass
  --        github:IntellectualKitty
  --        Imanol Celaya
  --        Daniel Ribeiro Maciel
  --
  --    Bug/warning reports/fixes:
  --        "Zer" on mollyrocket       Fabian "ryg" Giesen   github:NiLuJe
  --        Cass Everitt               Martins Mozeiko       github:aloucks
  --        stoiko (Haemimont Games)   Cap Petschulat        github:oyvindjam
  --        Brian Hook                 Omar Cornut           github:vassvik
  --        Walter van Niftrik         Ryan Griege
  --        David Gow                  Peter LaValle
  --        David Given                Sergey Popov
  --        Ivan-Assen Ivanov          Giumo X. Clanjor
  --        Anthony Pesch              Higor Euripedes
  --        Johan Duparc               Thomas Fields
  --        Hou Qiming                 Derek Vinyard
  --        Rob Loach                  Cort Stratton
  --        Kenney Phillis Jr.         Brian Costabile
  --        Ken Voskuil (kaesve)
  --
  --  VERSION HISTORY
  --
  --    1.26 (2021-08-28) fix broken rasterizer
  --    1.25 (2021-07-11) many fixes
  --    1.24 (2020-02-05) fix warning
  --    1.23 (2020-02-02) query SVG data for glyphs; query whole kerning table (but only kern not GPOS)
  --    1.22 (2019-08-11) minimize missing-glyph duplication; fix kerning if both 'GPOS' and 'kern' are defined
  --    1.21 (2019-02-25) fix warning
  --    1.20 (2019-02-07) PackFontRange skips missing codepoints; GetScaleFontVMetrics()
  --    1.19 (2018-02-11) GPOS kerning, STBTT_fmod
  --    1.18 (2018-01-29) add missing function
  --    1.17 (2017-07-23) make more arguments const; doc fix
  --    1.16 (2017-07-12) SDF support
  --    1.15 (2017-03-03) make more arguments const
  --    1.14 (2017-01-16) num-fonts-in-TTC function
  --    1.13 (2017-01-02) support OpenType fonts, certain Apple fonts
  --    1.12 (2016-10-25) suppress warnings about casting away const with -Wcast-qual
  --    1.11 (2016-04-02) fix unused-variable warning
  --    1.10 (2016-04-02) user-defined fabs(); rare memory leak; remove duplicate typedef
  --    1.09 (2016-01-16) warning fix; avoid crash on outofmem; use allocation userdata properly
  --    1.08 (2015-09-13) document stbtt_Rasterize(); fixes for vertical & horizontal edges
  --    1.07 (2015-08-01) allow PackFontRanges to accept arrays of sparse codepoints;
  --                      variant PackFontRanges to pack and render in separate phases;
  --                      fix stbtt_GetFontOFfsetForIndex (never worked for non-0 input?);
  --                      fixed an assert() bug in the new rasterizer
  --                      replace assert() with STBTT_assert() in new rasterizer
  --
  --    Full history can be found at the end of this file.
  --
  --  LICENSE
  --
  --    See end of file for license information.
  --
  --  USAGE
  --
  --    Include this file in whatever places need to refer to it. In ONE C/C++
  --    file, write:
  --       #define STB_TRUETYPE_IMPLEMENTATION
  --    before the #include of this file. This expands out the actual
  --    implementation into that C/C++ file.
  --
  --    To make the implementation private to the file that generates the implementation,
  --       #define STBTT_STATIC
  --
  --    Simple 3D API (don't ship this, but it's fine for tools and quick start)
  --            stbtt_BakeFontBitmap()               -- bake a font to a bitmap for use as texture
  --            stbtt_GetBakedQuad()                 -- compute quad to draw for a given char
  --
  --    Improved 3D API (more shippable):
  --            #include "stb_rect_pack.h"           -- optional, but you really want it
  --            stbtt_PackBegin()
  --            stbtt_PackSetOversampling()          -- for improved quality on small fonts
  --            stbtt_PackFontRanges()               -- pack and renders
  --            stbtt_PackEnd()
  --            stbtt_GetPackedQuad()
  --
  --    "Load" a font file from a memory buffer (you have to keep the buffer loaded)
  --            stbtt_InitFont()
  --            stbtt_GetFontOffsetForIndex()        -- indexing for TTC font collections
  --            stbtt_GetNumberOfFonts()             -- number of fonts for TTC font collections
  --
  --    Render a unicode codepoint to a bitmap
  --            stbtt_GetCodepointBitmap()           -- allocates and returns a bitmap
  --            stbtt_MakeCodepointBitmap()          -- renders into bitmap you provide
  --            stbtt_GetCodepointBitmapBox()        -- how big the bitmap must be
  --
  --    Character advance/positioning
  --            stbtt_GetCodepointHMetrics()
  --            stbtt_GetFontVMetrics()
  --            stbtt_GetFontVMetricsOS2()
  --            stbtt_GetCodepointKernAdvance()
  --
  --    Starting with version 1.06, the rasterizer was replaced with a new,
  --    faster and generally-more-precise rasterizer. The new rasterizer more
  --    accurately measures pixel coverage for anti-aliasing, except in the case
  --    where multiple shapes overlap, in which case it overestimates the AA pixel
  --    coverage. Thus, anti-aliasing of intersecting shapes may look wrong. If
  --    this turns out to be a problem, you can re-enable the old rasterizer with
  --         #define STBTT_RASTERIZER_VERSION 1
  --    which will incur about a 15% speed hit.
  --
  --  ADDITIONAL DOCUMENTATION
  --
  --    Immediately after this block comment are a series of sample programs.
  --
  --    After the sample programs is the "header file" section. This section
  --    includes documentation for each API function.
  --
  --    Some important concepts to understand to use this library:
  --
  --       Codepoint
  --          Characters are defined by unicode codepoints, e.g. 65 is
  --          uppercase A, 231 is lowercase c with a cedilla, 0x7e30 is
  --          the hiragana for "ma".
  --
  --       Glyph
  --          A visual character shape (every codepoint is rendered as
  --          some glyph)
  --
  --       Glyph index
  --          A font-specific integer ID representing a glyph
  --
  --       Baseline
  --          Glyph shapes are defined relative to a baseline, which is the
  --          bottom of uppercase characters. Characters extend both above
  --          and below the baseline.
  --
  --       Current Point
  --          As you draw text to the screen, you keep track of a "current point"
  --          which is the origin of each character. The current point's vertical
  --          position is the baseline. Even "baked fonts" use this model.
  --
  --       Vertical Font Metrics
  --          The vertical qualities of the font, used to vertically position
  --          and space the characters. See docs for stbtt_GetFontVMetrics.
  --
  --       Font Size in Pixels or Points
  --          The preferred interface for specifying font sizes in stb_truetype
  --          is to specify how tall the font's vertical extent should be in pixels.
  --          If that sounds good enough, skip the next paragraph.
  --
  --          Most font APIs instead use "points", which are a common typographic
  --          measurement for describing font size, defined as 72 points per inch.
  --          stb_truetype provides a point API for compatibility. However, true
  --          "per inch" conventions don't make much sense on computer displays
  --          since different monitors have different number of pixels per
  --          inch. For example, Windows traditionally uses a convention that
  --          there are 96 pixels per inch, thus making 'inch' measurements have
  --          nothing to do with inches, and thus effectively defining a point to
  --          be 1.333 pixels. Additionally, the TrueType font data provides
  --          an explicit scale factor to scale a given font's glyphs to points,
  --          but the author has observed that this scale factor is often wrong
  --          for non-commercial fonts, thus making fonts scaled in points
  --          according to the TrueType spec incoherently sized in practice.
  --
  --  DETAILED USAGE:
  --
  --   Scale:
  --     Select how high you want the font to be, in points or pixels.
  --     Call ScaleForPixelHeight or ScaleForMappingEmToPixels to compute
  --     a scale factor SF that will be used by all other functions.
  --
  --   Baseline:
  --     You need to select a y-coordinate that is the baseline of where
  --     your text will appear. Call GetFontBoundingBox to get the baseline-relative
  --     bounding box for all characters. SF*-y0 will be the distance in pixels
  --     that the worst-case character could extend above the baseline, so if
  --     you want the top edge of characters to appear at the top of the
  --     screen where y=0, then you would set the baseline to SF*-y0.
  --
  --   Current point:
  --     Set the current point where the first character will appear. The
  --     first character could extend left of the current point; this is font
  --     dependent. You can either choose a current point that is the leftmost
  --     point and hope, or add some padding, or check the bounding box or
  --     left-side-bearing of the first character to be displayed and set
  --     the current point based on that.
  --
  --   Displaying a character:
  --     Compute the bounding box of the character. It will contain signed values
  --     relative to <current_point, baseline>. I.e. if it returns x0,y0,x1,y1,
  --     then the character should be displayed in the rectangle from
  --     <current_point+SF*x0, baseline+SF*y0> to <current_point+SF*x1,baseline+SF*y1).
  --
  --   Advancing for the next character:
  --     Call GlyphHMetrics, and compute 'current_point += SF * advance'.
  --
  --
  --  ADVANCED USAGE
  --
  --    Quality:
  --
  --     - Use the functions with Subpixel at the end to allow your characters
  --       to have subpixel positioning. Since the font is anti-aliased, not
  --       hinted, this is very import for quality. (This is not possible with
  --       baked fonts.)
  --
  --     - Kerning is now supported, and if you're supporting subpixel rendering
  --       then kerning is worth using to give your text a polished look.
  --
  --    Performance:
  --
  --     - Convert Unicode codepoints to glyph indexes and operate on the glyphs;
  --       if you don't do this, stb_truetype is forced to do the conversion on
  --       every call.
  --
  --     - There are a lot of memory allocations. We should modify it to take
  --       a temp buffer and allocate from the temp buffer (without freeing),
  --       should help performance a lot.
  --
  --  NOTES
  --
  --    The system uses the raw data found in the .ttf file without changing it
  --    and without building auxiliary data structures. This is a bit inefficient
  --    on little-endian systems (the data is big-endian), but assuming you're
  --    caching the bitmaps or glyph shapes this shouldn't be a big deal.
  --
  --    It appears to be very hard to programmatically determine what font a
  --    given file is in a general way. I provide an API for this, but I don't
  --    recommend it.
  --
  --
  --  PERFORMANCE MEASUREMENTS FOR 1.06:
  --
  --                       32-bit     64-bit
  --    Previous release:  8.83 s     7.68 s
  --    Pool allocations:  7.72 s     6.34 s
  --    Inline sort     :  6.54 s     5.65 s
  --    New rasterizer  :  5.63 s     5.00 s
  -- ////////////////////////////////////////////////////////////////////////////
  -- ////////////////////////////////////////////////////////////////////////////
  -- //
  -- //  SAMPLE PROGRAMS
  -- //
  --
  --   Incomplete text-in-3d-api example, which draws quads properly aligned to be lossless.
  --   See "tests/truetype_demo_win32.c" for a complete version.
  --  ASCII 32..126 is 95 glyphs
  --  no guarantee this fits!
  --  can free ttf_buffer at this point
  --  can free temp_bitmap at this point
  --  assume orthographic projection with units = screen pixels, origin at top left
  -- 1=opengl & d3d10+,0=d3d9
  --
  --
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  Complete program (this compiles): get a single bitmap, print as ASCII art
  --
  --
  --  Output:
  --
  --      .ii.
  --     @@@@@@.
  --    V@Mio@@o
  --    :i.  V@V
  --      :oM@@M
  --    :@@@MM@M
  --    @@o  o@M
  --   :@@.  M@M
  --    @@@o@@@@
  --    :M@@V:@@.
  --
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  Complete program: print "Hello World!" banner, with bugs
  --
  --  leave a little padding in case the character extends left
  --  intentionally misspelled to show 'lj' brokenness
  --  note that this stomps the old data, so where character boxes overlap (e.g. 'lj') it's wrong
  --  because this API is really for baking character bitmaps into textures. if you want to render
  --  a sequence of characters, you really need to render each bitmap to a temp buffer, then
  --  "alpha blend" that into the working buffer
  -- ////////////////////////////////////////////////////////////////////////////
  -- ////////////////////////////////////////////////////////////////////////////
  -- //
  -- //   INTEGRATION WITH YOUR CODEBASE
  -- //
  -- //   The following sections allow you to supply alternate definitions
  -- //   of C library functions used by stb_truetype, e.g. if you don't
  -- //   link with the C runtime library.
  --  #define your own (u)stbtt_int8/16/32 before including to override this
  --  e.g. #define your own STBTT_ifloor/STBTT_iceil() to avoid math.h
  --  #define your own functions "STBTT_malloc" / "STBTT_free" to avoid malloc.h
  -- /////////////////////////////////////////////////////////////////////////////
  -- /////////////////////////////////////////////////////////////////////////////
  -- //
  -- //   INTERFACE
  -- //
  -- //
  --  private structure
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  TEXTURE BAKING API
  --
  --  If you use this API, you only have to call two functions ever.
  --
  --  coordinates of bbox in bitmap
  --  font location (use offset=0 for plain .ttf)
  --  height of font in pixels
  --  bitmap to be filled in
  --  characters to bake
  --  you allocate this, it's num_chars long
  --  if return is positive, the first unused row of the bitmap
  --  if return is negative, returns the negative of the number of characters that fit
  --  if return is 0, no characters fit and no rows were used
  --  This uses a very crappy packing.
  --  top-left
  --  bottom-right
  --  same data as above
  --  character to display
  --  pointers to current position in screen pixel space
  --  output: quad to draw
  --  true if opengl fill rule; false if DX9 or earlier
  --  Call GetBakedQuad with char_index = 'character - first_char', and it
  --  creates the quad you need to draw and advances the current position.
  --
  --  The coordinate system used assumes y increases downwards.
  --
  --  Characters will extend both above and below the current position;
  --  see discussion of "BASELINE" above.
  --
  --  It's inefficient; you might want to c&p it and optimize it.
  --  Query the font vertical metrics without having to create a font first.
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  NEW TEXTURE BAKING API
  --
  --  This provides options for packing multiple fonts into one atlas, not
  --  perfectly but better than nothing.
  --  coordinates of bbox in bitmap
  --  Initializes a packing context stored in the passed-in stbtt_pack_context.
  --  Future calls using this context will pack characters into the bitmap passed
  --  in here: a 1-channel bitmap that is width * height. stride_in_bytes is
  --  the distance from one row to the next (or 0 to mean they are packed tightly
  --  together). "padding" is the amount of padding to leave between each
  --  character (normally you want '1' for bitmaps you'll use as textures with
  --  bilinear filtering).
  --
  --  Returns 0 on failure, 1 on success.
  --  Cleans up the packing context and frees all memory.
  --  Creates character bitmaps from the font_index'th font found in fontdata (use
  --  font_index=0 if you don't know what that is). It creates num_chars_in_range
  --  bitmaps for characters with unicode values starting at first_unicode_char_in_range
  --  and increasing. Data for how to render them is stored in chardata_for_range;
  --  pass these to stbtt_GetPackedQuad to get back renderable quads.
  --
  --  font_size is the full height of the character from ascender to descender,
  --  as computed by stbtt_ScaleForPixelHeight. To use a point size as computed
  --  by stbtt_ScaleForMappingEmToPixels, wrap the point size in STBTT_POINT_SIZE()
  --  and pass that result as 'font_size':
  --        ...,                  20 , ... // font max minus min y is 20 pixels tall
  --        ..., STBTT_POINT_SIZE(20), ... // 'M' is 20 pixels tall
  --  if non-zero, then the chars are continuous, and this is the first codepoint
  --  if non-zero, then this is an array of unicode codepoints
  --  output
  --  don't set these, they're used internally
  --  Creates character bitmaps from multiple ranges of characters stored in
  --  ranges. This will usually create a better-packed bitmap than multiple
  --  calls to stbtt_PackFontRange. Note that you can call this multiple
  --  times within a single PackBegin/PackEnd.
  --  Oversampling a font increases the quality by allowing higher-quality subpixel
  --  positioning, and is especially valuable at smaller text sizes.
  --
  --  This function sets the amount of oversampling for all following calls to
  --  stbtt_PackFontRange(s) or stbtt_PackFontRangesGatherRects for a given
  --  pack context. The default (no oversampling) is achieved by h_oversample=1
  --  and v_oversample=1. The total number of pixels required is
  --  h_oversample*v_oversample larger than the default; for example, 2x2
  --  oversampling requires 4x the storage of 1x1. For best results, render
  --  oversampled textures with bilinear filtering. Look at the readme in
  --  stb/tests/oversample for information about oversampled fonts
  --
  --  To use with PackFontRangesGather etc., you must set it before calls
  --  call to PackFontRangesGatherRects.
  --  If skip != 0, this tells stb_truetype to skip any codepoints for which
  --  there is no corresponding glyph. If skip=0, which is the default, then
  --  codepoints without a glyph recived the font's "missing character" glyph,
  --  typically an empty box by convention.
  --  same data as above
  --  character to display
  --  pointers to current position in screen pixel space
  --  output: quad to draw
  --  Calling these functions in sequence is roughly equivalent to calling
  --  stbtt_PackFontRanges(). If you more control over the packing of multiple
  --  fonts, or if you want to pack custom data into a font texture, take a look
  --  at the source to of stbtt_PackFontRanges() and create a custom version
  --  using these functions, e.g. call GatherRects multiple times,
  --  building up a single array of rects, then call PackRects once,
  --  then call RenderIntoRects repeatedly. This may result in a
  --  better packing than calling PackFontRanges multiple times
  --  (or it may not).
  --  this is an opaque structure that you shouldn't mess with which holds
  --  all the context needed from PackBegin to PackEnd.
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  FONT LOADING
  --
  --
  --  This function will determine the number of fonts in a font file.  TrueType
  --  collection (.ttc) files may contain multiple fonts, while TrueType font
  --  (.ttf) files only contain one font. The number of fonts can be used for
  --  indexing with the previous function where the index is between zero and one
  --  less than the total fonts. If an error occurs, -1 is returned.
  --  Each .ttf/.ttc file may have more than one font. Each font has a sequential
  --  index number starting from 0. Call this function to get the font offset for
  --  a given index; it returns -1 if the index is out of range. A regular .ttf
  --  file will only define one font and it always be at offset 0, so it will
  --  return '0' for index 0, and -1 for all other indices.
  --  The following structure is defined publicly so you can declare one on
  --  the stack or as a global or etc, but you should treat it as opaque.
  --  pointer to .ttf file
  --  offset of start of font
  --  number of glyphs, needed for range checking
  --  table locations as offset from start of .ttf
  --  a cmap mapping for our chosen character encoding
  --  format needed to map from glyph index to glyph
  --  cff font data
  --  the charstring index
  --  global charstring subroutines index
  --  private charstring subroutines index
  --  array of font dicts
  --  map from glyph to fontdict
  --  Given an offset into the file that defines a font, this function builds
  --  the necessary cached info for the rest of the system. You must allocate
  --  the stbtt_fontinfo yourself, and stbtt_InitFont will fill it out. You don't
  --  need to do anything special to free it, because the contents are pure
  --  value data with no additional data structures. Returns 0 on failure.
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  CHARACTER TO GLYPH-INDEX CONVERSIOn
  --  If you're going to perform multiple operations on the same character
  --  and you want a speed-up, call this function with the character you're
  --  going to process, then use glyph-based functions instead of the
  --  codepoint-based functions.
  --  Returns 0 if the character codepoint is not defined in the font.
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  CHARACTER PROPERTIES
  --
  --  computes a scale factor to produce a font whose "height" is 'pixels' tall.
  --  Height is measured as the distance from the highest ascender to the lowest
  --  descender; in other words, it's equivalent to calling stbtt_GetFontVMetrics
  --  and computing:
  --        scale = pixels / (ascent - descent)
  --  so if you prefer to measure height by the ascent only, use a similar calculation.
  --  computes a scale factor to produce a font whose EM size is mapped to
  --  'pixels' tall. This is probably what traditional APIs compute, but
  --  I'm not positive.
  --  ascent is the coordinate above the baseline the font extends; descent
  --  is the coordinate below the baseline the font extends (i.e. it is typically negative)
  --  lineGap is the spacing between one row's descent and the next row's ascent...
  --  so you should advance the vertical position by "*ascent - *descent + *lineGap"
  --    these are expressed in unscaled coordinates, so you must multiply by
  --    the scale factor for a given size
  --  analogous to GetFontVMetrics, but returns the "typographic" values from the OS/2
  --  table (specific to MS/Windows TTF files).
  --
  --  Returns 1 on success (table present), 0 on failure.
  --  the bounding box around all possible characters
  --  leftSideBearing is the offset from the current horizontal position to the left edge of the character
  --  advanceWidth is the offset from the current horizontal position to the next horizontal position
  --    these are expressed in unscaled coordinates
  --  an additional amount to add to the 'advance' value between ch1 and ch2
  --  Gets the bounding box of the visible part of the glyph, in unscaled coordinates
  --  as above, but takes one or more glyph indices for greater efficiency
  --  use stbtt_FindGlyphIndex
  --  Retrieves a complete list of all of the kerning pairs provided by the font
  --  stbtt_GetKerningTable never writes more than table_length entries and returns how many entries it did write.
  --  The table will be sorted by (a.glyph1 == b.glyph1)?(a.glyph2 < b.glyph2):(a.glyph1 < b.glyph1)
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  GLYPH SHAPES (you probably don't need these, but they have to go before
  --  the bitmaps for C declaration-order reasons)
  --
  --  (we share this with other code at RAD)
  --  returns non-zero if nothing is drawn for this glyph
  --  returns # of vertices and fills *vertices with the pointer to them
  --    these are expressed in "unscaled" coordinates
  --
  --  The shape is a series of contours. Each one starts with
  --  a STBTT_moveto, then consists of a series of mixed
  --  STBTT_lineto and STBTT_curveto segments. A lineto
  --  draws a line from previous endpoint to its x,y; a curveto
  --  draws a quadratic bezier from previous endpoint to
  --  its x,y, using cx,cy as the bezier control point.
  --  frees the data allocated above
  --  fills svg with the character's SVG data.
  --  returns data size or 0 if SVG not found.
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  BITMAP RENDERING
  --
  --  frees the bitmap allocated below
  --  allocates a large-enough single-channel 8bpp bitmap and renders the
  --  specified character/glyph at the specified scale into it, with
  --  antialiasing. 0 is no coverage (transparent), 255 is fully covered (opaque).
  --  *width & *height are filled out with the width & height of the bitmap,
  --  which is stored left-to-right, top-to-bottom.
  --
  --  xoff/yoff are the offset it pixel space from the glyph origin to the top-left of the bitmap
  --  the same as stbtt_GetCodepoitnBitmap, but you can specify a subpixel
  --  shift for the character
  --  the same as stbtt_GetCodepointBitmap, but you pass in storage for the bitmap
  --  in the form of 'output', with row spacing of 'out_stride' bytes. the bitmap
  --  is clipped to out_w/out_h bytes. Call stbtt_GetCodepointBitmapBox to get the
  --  width and height and positioning info for it first.
  --  same as stbtt_MakeCodepointBitmap, but you can specify a subpixel
  --  shift for the character
  --  same as stbtt_MakeCodepointBitmapSubpixel, but prefiltering
  --  is performed (see stbtt_PackSetOversampling)
  --  get the bbox of the bitmap centered around the glyph origin; so the
  --  bitmap width is ix1-ix0, height is iy1-iy0, and location to place
  --  the bitmap top left is (leftSideBearing*scale,iy0).
  --  (Note that the bitmap uses y-increases-down, but the shape uses
  --  y-increases-up, so CodepointBitmapBox and CodepointBox are inverted.)
  --  same as stbtt_GetCodepointBitmapBox, but you can specify a subpixel
  --  shift for the character
  --  the following functions are equivalent to the above functions, but operate
  --  on glyph indices instead of Unicode codepoints (for efficiency)
  --  @TODO: don't expose this structure
  --  rasterize a shape with quadratic beziers into a bitmap
  --  1-channel bitmap to draw into
  --  allowable error of curve in pixels
  --  array of vertices defining shape
  --  number of vertices in above array
  --  scale applied to input vertices
  --  translation applied to input vertices
  --  another translation applied to input
  --  if non-zero, vertically flip shape
  --  context for to STBTT_MALLOC
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  Signed Distance Function (or Field) rendering
  --  frees the SDF bitmap allocated below
  --  These functions compute a discretized SDF field for a single character, suitable for storing
  --  in a single-channel texture, sampling with bilinear filtering, and testing against
  --  larger than some threshold to produce scalable fonts.
  --         info              --  the font
  --         scale             --  controls the size of the resulting SDF bitmap, same as it would be creating a regular bitmap
  --         glyph/codepoint   --  the character to generate the SDF for
  --         padding           --  extra "pixels" around the character which are filled with the distance to the character (not 0),
  --                                  which allows effects like bit outlines
  --         onedge_value      --  value 0-255 to test the SDF against to reconstruct the character (i.e. the isocontour of the character)
  --         pixel_dist_scale  --  what value the SDF should increase by when moving one SDF "pixel" away from the edge (on the 0..255 scale)
  --                                  if positive, > onedge_value is inside; if negative, < onedge_value is inside
  --         width,height      --  output height & width of the SDF bitmap (including padding)
  --         xoff,yoff         --  output origin of the character
  --         return value      --  a 2D array of bytes 0..255, width*height in size
  --
  --  pixel_dist_scale & onedge_value are a scale & bias that allows you to make
  --  optimal use of the limited 0..255 for your application, trading off precision
  --  and special effects. SDF values outside the range 0..255 are clamped to 0..255.
  --
  --  Example:
  --       scale = stbtt_ScaleForPixelHeight(22)
  --       padding = 5
  --       onedge_value = 180
  --       pixel_dist_scale = 180/5.0 = 36.0
  --
  --       This will create an SDF bitmap in which the character is about 22 pixels
  --       high but the whole bitmap is about 22+5+5=32 pixels high. To produce a filled
  --       shape, sample the SDF at each pixel and fill the pixel if the SDF value
  --       is greater than or equal to 180/255. (You'll actually want to antialias,
  --       which is beyond the scope of this example.) Additionally, you can compute
  --       offset outlines (e.g. to stroke the character border inside & outside,
  --       or only outside). For example, to fill outside the character up to 3 SDF
  --       pixels, you would compare against (180-36.0*3)/255 = 72/255. The above
  --       choice of variables maps a range from 5 pixels outside the shape to
  --       2 pixels inside the shape to 0..255; this is intended primarily for apply
  --       outside effects only (the interior range is needed to allow proper
  --       antialiasing of the font at *smaller* sizes)
  --
  --  The function computes the SDF analytically at each SDF pixel, not by e.g.
  --  building a higher-res bitmap and approximating it. In theory the quality
  --  should be as high as possible for an SDF of this size & representation, but
  --  unclear if this is true in practice (perhaps building a higher-res bitmap
  --  and computing from that can allow drop-out prevention).
  --
  --  The algorithm has not been optimized at all, so expect it to be slow
  --  if computing lots of characters or very large sizes.
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  Finding the right font...
  --
  --  You should really just solve this offline, keep your own tables
  --  of what font is what, and don't try to get it out of the .ttf file.
  --  That's because getting it out of the .ttf file is really hard, because
  --  the names in the file can appear in many possible encodings, in many
  --  possible languages, and e.g. if you need a case-insensitive comparison,
  --  the details of that depend on the encoding & language in a complex way
  --  (actually underspecified in truetype, but also gigantic).
  --
  --  But you can use the provided functions in two possible ways:
  --      stbtt_FindMatchingFont() will use *case-sensitive* comparisons on
  --              unicode-encoded names to try to find the font you want;
  --              you can run this before calling stbtt_InitFont()
  --
  --      stbtt_GetFontNameString() lets you get any of the various strings
  --              from the file yourself and do your own comparisons on them.
  --              You have to have called stbtt_InitFont() first.
  --  returns the offset (not index) of the font that matches, or -1 if none
  --    if you use STBTT_MACSTYLE_DONTCARE, use a font name like "Arial Bold".
  --    if you use any other flag, use a font name like "Arial"; this checks
  --      the 'macStyle' header field; i don't know if fonts set this consistently
  --  returns 1/0 whether the first string interpreted as utf8 is identical to
  --  the second string interpreted as big-endian utf16... useful for strings from next func
  --  returns the string (which may be big-endian double byte, e.g. for unicode)
  --  and puts the length in bytes in *length.
  --
  --  some of the values for the IDs are below; for more see the truetype spec:
  --      http://developer.apple.com/textfonts/TTRefMan/RM06/Chap6name.html
  --      http://www.microsoft.com/typography/otspec/name.htm
  --  platformID
  --  encodingID for STBTT_PLATFORM_ID_UNICODE
  --  encodingID for STBTT_PLATFORM_ID_MICROSOFT
  --  encodingID for STBTT_PLATFORM_ID_MAC; same as Script Manager codes
  --  languageID for STBTT_PLATFORM_ID_MICROSOFT; same as LCID...
  --  problematic because there are e.g. 16 english LCIDs and 16 arabic LCIDs
  --  languageID for STBTT_PLATFORM_ID_MAC
  -- /////////////////////////////////////////////////////////////////////////////
  -- /////////////////////////////////////////////////////////////////////////////
  -- //
  -- //   IMPLEMENTATION
  -- //
  -- //
  -- ////////////////////////////////////////////////////////////////////////
  --
  --  stbtt__buf helpers to parse data from file
  --
  -- ////////////////////////////////////////////////////////////////////////
  --
  --  accessors to parse data from file
  --
  --  on platforms that don't allow misaligned reads, if we want to allow
  --  truetype fonts that aren't padded to alignment, define ALLOW_UNALIGNED_TRUETYPE
  --  check the version number
  --  TrueType 1
  --  TrueType with type 1 font -- we don't support this!
  --  OpenType with CFF
  --  OpenType 1.0
  --  Apple specification for TrueType fonts
  --  @OPTIMIZE: binary search
  --  if it's just a font, there's only one valid index
  --  check if it's a TTC
  --  version 1?
  --  if it's just a font, there's only one valid font
  --  check if it's a TTC
  --  version 1?
  --  since most people won't use this, find this table the first time it's needed
  --  required
  --  required
  --  required
  --  required
  --  required
  --  required
  --  not required
  --  not required
  --  required for truetype
  --  initialization for CFF / Type2 fonts (OTF)
  --  @TODO this should use size from table (not 512MB)
  --  read the header
  --  hdrsize
  --  @TODO the name INDEX could list multiple fonts,
  --  but we just use the first one.
  --  name INDEX
  --  string INDEX
  --  we only support Type 2 charstrings
  --  looks like a CID font
  --  find a cmap encoding table we understand *now* to avoid searching
  --  later. (todo: could make this installable)
  --  the same regardless of glyph.
  --  find an encoding we understand:
  --  MS/Unicode
  --  Mac/iOS has these
  --  all the encodingIDs are unicode, so we don't bother to check it
  --  apple byte encoding
  --  @TODO: high-byte mapping for japanese/chinese/korean
  --  standard mapping for windows fonts: binary search collection of ranges
  --  do a binary search of the segments
  --  they lie from endCount .. endCount + segCount
  --  but searchRange is the nearest power of two, so...
  --  now decrement to bias correctly to find smallest
  --  Binary search the right group.
  --  rounds down, so low <= mid < high
  --  format == 13
  --  not found
  --  @TODO
  --  glyph index out of range
  --  unknown index->glyph map format
  --  if length is 0, return -1
  --  a loose bound on how many vertices we might need
  --  in first pass, we load uninterpreted data into the allocated array
  --  above, shifted to the end of the array so we won't overwrite it when
  --  we create our final data starting from the front
  --  starting offset for uninterpreted data, regardless of how m ends up being calculated
  --  first load flags
  --  now load x coordinates
  --  ???
  --  now load y coordinates
  --  ???
  --  now convert them to our format
  --  now start the new one
  --  if we start off with an off-curve point, then when we need to find a point on the curve
  --  where we can start, and we need to save some state for when we wraparound.
  --  next point is also a curve point, so interpolate an on-point curve
  --  otherwise just use the next point as our start point
  --  we're using point i+1 as the starting point, so skip it
  --  if it's a curve
  --  two off-curve control points in a row means interpolate an on-curve midpoint
  --  Compound shapes.
  --  XY values
  --  shorts
  --  @TODO handle matching point
  --  WE_HAVE_A_SCALE
  --  WE_HAVE_AN_X_AND_YSCALE
  --  WE_HAVE_A_TWO_BY_TWO
  --  Find transformation scales.
  --  Get indexed glyph.
  --  Transform vertices.
  --  Append vertices.
  --  More components ?
  --  numberOfCounters == 0, do nothing
  --  untested
  --  this currently ignores the initial width value, which isn't needed if we have hmtx
  --  @TODO implement hinting
  --  hintmask
  --  cntrmask
  --  implicit "vstem"
  --  hstem
  --  vstem
  --  hstemhm
  --  vstemhm
  --  rmoveto
  --  vmoveto
  --  hmoveto
  --  rlineto
  --  hlineto/vlineto and vhcurveto/hvcurveto alternate horizontal and vertical
  --  starting from a different place.
  --  vlineto
  --  hlineto
  --  hvcurveto
  --  vhcurveto
  --  rrcurveto
  --  rcurveline
  --  rlinecurve
  --  vvcurveto
  --  hhcurveto
  --  callsubr
  --  FALLTHROUGH
  --  callgsubr
  --  return
  --  endchar
  --  two-byte escape
  --  @TODO These "flex" implementations ignore the flex-depth and resolution,
  --  and always draw beziers.
  --  hflex
  --  flex
  -- fd is s[12]
  --  hflex1
  --  flex1
  --  push immediate
  --  runs the charstring twice, once to count and once to output (to avoid realloc)
  --  we only look at the first table. it must be 'horizontal' and format 0.
  --  number of tables, need at least 1
  --  horizontal flag must be set in format
  --  we only look at the first table. it must be 'horizontal' and format 0.
  --  number of tables, need at least 1
  --  horizontal flag must be set in format
  --  we only look at the first table. it must be 'horizontal' and format 0.
  --  number of tables, need at least 1
  --  horizontal flag must be set in format
  --  note: unaligned read
  --  Binary search.
  --  Binary search.
  --  unsupported
  --  Binary search.
  --  Unsupported definition type, return an error.
  --  "All glyphs not assigned to a class fall into class 0". (OpenType spec)
  --  Define to STBTT_assert(x) if you want to break on unimplemented formats.
  --  Major version 1
  --  Minor version 0
  --  Pair Adjustment Positioning Subtable
  --  Support more formats?
  --  Binary search.
  --  Support more formats?
  --  malformed
  --  malformed
  --  Unsupported position format
  --  if no kerning table, don't waste time looking up both codepoint->glyphs
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  antialiasing software rasterizer
  --
  --  =0 suppresses compiler warning
  --  e.g. space character
  --  move to integral bboxes (treating pixels as little squares, what pixels get touched)?
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --   Rasterizer
  --  round dx down to avoid overshooting
  --  use z->dx so when we offset later it's by the same amount
  -- STBTT_assert(e->y0 <= start_point);
  --  note: this routine clips fills that extend off the edges... ideally this
  --  wouldn't happen, but it could happen if the truetype glyph bounding boxes
  --  are wrong, or if the user supplies a too-small bitmap
  --  non-zero winding fill
  --  if we're currently at zero, we need to record the edge start point
  --  if we went to zero, we need to draw
  --  x0,x1 are the same pixel, so compute combined coverage
  --  add antialiasing for x0
  --  clip
  --  add antialiasing for x1
  --  clip
  --  fill pixels between x0 and x1
  --  weight per vertical scanline
  --  vertical subsample index
  --  find center of pixel for this scanline
  --  update all active edges;
  --  remove all active edges that terminate before the center of this scanline
  --  delete from list
  --  advance to position for current scanline
  --  advance through list
  --  resort the list if needed
  --  insert all edges that start before the center of this scanline -- omit ones that also end on this scanline
  --  find insertion point
  --  insert at front
  --  find thing to insert AFTER
  --  at this point, p->next->x is NOT < z->x
  --  now process all active edges in XOR fashion
  --  the edge passed in here does not cross the vertical line at x or the vertical line at x+1
  --  (i.e. it has already been clipped to those)
  --  coverage = 1 - average x position
  --  brute force every pixel
  --  compute intersection points with top & bottom
  --  compute endpoints of line segment clipped to this scanline (if the
  --  line segment starts on this scanline. x0 is the intersection of the
  --  line with y_top, but that may be off the line segment.
  --  from here on, we don't have to range check x values
  --  simple case, only spans one pixel
  --  everything right of this pixel is filled
  --  covers 2+ pixels
  --  flip scanline vertically; signed area is the same
  --  compute intersection with y axis at x1+1
  --  compute intersection with y axis at x2
  --            x1    x_top                            x2    x_bottom
  --      y_top  +------|-----+------------+------------+--------|---+------------+
  --             |            |            |            |            |            |
  --             |            |            |            |            |            |
  --        sy0  |      Txxxxx|............|............|............|............|
  --  y_crossing |            *xxxxx.......|............|............|............|
  --             |            |     xxxxx..|............|............|............|
  --             |            |     /-   xx*xxxx........|............|............|
  --             |            | dy <       |    xxxxxx..|............|............|
  --    y_final  |            |     \-     |          xx*xxx.........|............|
  --        sy1  |            |            |            |   xxxxxB...|............|
  --             |            |            |            |            |            |
  --             |            |            |            |            |            |
  --   y_bottom  +------------+------------+------------+------------+------------+
  --
  --  goal is to measure the area covered by '.' in each pixel
  --  if x2 is right at the right edge of x1, y_crossing can blow up, github #1057
  --  @TODO: maybe test against sy1 rather than y_bottom?
  --  area of the rectangle covered from sy0..y_crossing
  --  area of the triangle (x_top,sy0), (x1+1,sy0), (x1+1,y_crossing)
  --  check if final y_crossing is blown up; no test case for this
  --  if denom=0, y_final = y_crossing, so y_final <= y_bottom
  --  in second pixel, area covered by line segment found in first pixel
  --  is always a rectangle 1 wide * the height of that line segment; this
  --  is exactly what the variable 'area' stores. it also gets a contribution
  --  from the line segment within it. the THIRD pixel will get the first
  --  pixel's rectangle contribution, the second pixel's rectangle contribution,
  --  and its own contribution. the 'own contribution' is the same in every pixel except
  --  the leftmost and rightmost, a trapezoid that slides down in each pixel.
  --  the second pixel's contribution to the third pixel will be the
  --  rectangle 1 wide times the height change in the second pixel, which is dy.
  --  dy is dy/dx, change in y for every 1 change in x,
  --  which multiplied by 1-pixel-width is how much pixel area changes for each step in x
  --  so the area advances by 'step' every time
  --  area of trapezoid is 1*step/2
  --  accumulated error from area += step unless we round step down
  --  area covered in the last pixel is the rectangle from all the pixels to the left,
  --  plus the trapezoid filled by the line segment in this pixel all the way to the right edge
  --  the rest of the line is filled based on the total height of the line segment in this pixel
  --  if edge goes outside of box we're drawing, we require
  --  clipping logic. since this does not match the intended use
  --  of this library, we use a different, very slow brute
  --  force implementation
  --  note though that this does happen some of the time because
  --  x_top and x_bottom can be extrapolated at the top & bottom of
  --  the shape and actually lie outside the bounding box
  --  cases:
  --
  --  there can be up to two intersections with the pixel. any intersection
  --  with left or right edges can be handled by splitting into two (or three)
  --  regions. intersections with top & bottom do not necessitate case-wise logic.
  --
  --  the old way of doing this found the intersections with the left & right edges,
  --  then used some simple logic to produce up to three segments in sorted order
  --  from top-to-bottom. however, this had a problem: if an x edge was epsilon
  --  across the x border, then the corresponding y position might not be distinct
  --  from the other y segment, and it might ignored as an empty segment. to avoid
  --  that, we need to explicitly produce segments based on x positions.
  --  rename variables to clearly-defined pairs
  --  x = e->x + e->dx * (y-y_top)
  --  (y-y_top) = (x - e->x) / e->dx
  --  y = (x - e->x) / e->dx + y_top
  --  three segments descending down-right
  --  three segments descending down-left
  --  two segments across x, down-right
  --  two segments across x, down-left
  --  two segments across x+1, down-right
  --  two segments across x+1, down-left
  --  one segment
  --  directly AA rasterize edges w/o supersampling
  --  find center of pixel for this scanline
  --  update all active edges;
  --  remove all active edges that terminate before the top of this scanline
  --  delete from list
  --  advance through list
  --  insert all edges that start before the bottom of this scanline
  --  this can happen due to subpixel positioning and some kind of fp rounding error i think
  --  if we get really unlucky a tiny bit of an edge can be out of bounds
  --  insert at front
  --  now process all active edges
  --  advance all the edges
  --  advance to position for current scanline
  --  advance through list
  -- threshold for transitioning to insertion sort
  -- compute median of three
  -- if 0 >= mid >= end, or 0 < mid < end, then use mid
  -- otherwise, we'll need to swap something else to middle
  -- 0>mid && mid<n:  0>n => n; 0<n => 0
  -- 0<mid && mid>n:  0>n => 0; 0<n => n
  -- now p[m] is the median-of-three
  -- swap it to the beginning so it won't move around
  -- partition loop
  -- handling of equality is crucial here
  -- for sentinels & efficiency with duplicates
  -- make sure we haven't crossed
  -- recurse on smaller side, iterate on larger
  --  vsubsample should divide 255 evenly; otherwise we won't reach full opacity
  --  now we have to blow out the windings into explicit edge lists
  --  add an extra one as a sentinel
  --  skip the edge if horizontal
  --  add edge from j to k to the list
  --  now sort the edges by their highest point (should snap to integer, and then by x)
  -- STBTT_sort(e, n, sizeof(e[0]), stbtt__edge_compare);
  --  now, traverse the scanlines and find the intersections on each scanline, use xor winding rule
  --  during first pass, it's unallocated
  --  tessellate until threshold p is happy... @TODO warped to compensate for non-linear stretching
  --  midpoint
  --  versus directly drawn line
  --  65536 segments on one curve better be enough!
  --  half-pixel error allowed... need to be smaller if AA
  --  @TODO this "flatness" calculation is just made-up nonsense that seems to work well enough
  --  65536 segments on one curve better be enough!
  --  returns number of contours
  --  count how many "moves" there are to get the contour count
  --  make two passes through the points so we don't need to realloc
  --  start the next contour
  --  now we get the size
  --  in case we error
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  bitmap baking
  --
  --  This is SUPER-CRAPPY packing to keep source code small
  --  font location (use offset=0 for plain .ttf)
  --  height of font in pixels
  --  bitmap to be filled in
  --  characters to bake
  --  background of 0 around pixels
  --  advance to next row
  --  check if it fits vertically AFTER potentially moving to next row
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  rectangle packing replacement routines if you don't have stb_rect_pack.h
  --
  -- //////////////////////////////////////////////////////////////////////////////////
  --                                                                                 //
  --                                                                                 //
  --  COMPILER WARNING ?!?!?                                                         //
  --                                                                                 //
  --                                                                                 //
  --  if you get a compile warning due to these symbols being defined more than      //
  --  once, move #include "stb_rect_pack.h" before #include "stb_truetype.h"         //
  --                                                                                 //
  -- //////////////////////////////////////////////////////////////////////////////////
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  bitmap baking
  --
  --  This is SUPER-AWESOME (tm Ryan Gordon) packing using stb_rect_pack.h. If
  --  stb_rect_pack.h isn't available, it uses the BakeFontBitmap strategy.
  --  background of 0 around pixels
  --  suppress bogus warning from VS2013 -analyze
  --  make kernel_width a constant in common cases so compiler can optimize out the divide
  --  suppress bogus warning from VS2013 -analyze
  --  make kernel_width a constant in common cases so compiler can optimize out the divide
  --  The prefilter is a box filter of width "oversample",
  --  which shifts phase by (oversample - 1)/2 pixels in
  --  oversampled space. We want to shift in the opposite
  --  direction to counter this.
  --  rects array must be big enough to accommodate all characters in the given ranges
  --  rects array must be big enough to accommodate all characters in the given ranges
  --  save current values
  --  pad on left and top
  --  if any fail, report failure
  --  restore original values
  -- stbrp_context *context = (stbrp_context *) spc->pack_info;
  --  flag all characters as NOT packed
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  sdf computation
  --
  --  2*b*s + c = 0
  --  s = -c / (2*b)
  --  make sure y never passes through a vertex of the shape
  --  test a ray from (-infinity,y) to (x,y)
  --  x^3 + a*x^2 + b*x + c = 0
  --  p3 must be negative, since d is negative
  -- STBTT_assert( STBTT_fabs(((r[0]+a)*r[0]+b)*r[0]+c) < 0.05f);  // these asserts may not be safe at all scales, though they're in bezier t parameter units so maybe?
  -- STBTT_assert( STBTT_fabs(((r[1]+a)*r[1]+b)*r[1]+c) < 0.05f);
  -- STBTT_assert( STBTT_fabs(((r[2]+a)*r[2]+b)*r[2]+c) < 0.05f);
  --  if empty, return NULL
  --  invert for y-downwards bitmaps
  --  @OPTIMIZE: this could just be a rasterization, but needs to be line vs. non-tesselated curves so a new path
  --  coarse culling against bbox
  -- if (sx > STBTT_min(x0,x1)-min_dist && sx < STBTT_max(x0,x1)+min_dist &&
  --     sy > STBTT_min(y0,y1)-min_dist && sy < STBTT_max(y0,y1)+min_dist)
  --  check position along line
  --  x' = x0 + t*(x1-x0), y' = y0 + t*(y1-y0)
  --  minimize (x'-sx)*(x'-sx)+(y'-sy)*(y'-sy)
  --  minimize (px+t*dx)^2 + (py+t*dy)^2 = px*px + 2*px*dx*t + t^2*dx*dx + py*py + 2*py*dy*t + t^2*dy*dy
  --  derivative: 2*px*dx + 2*py*dy + (2*dx*dx+2*dy*dy)*t, set to 0 and solve
  --  coarse culling against bbox to avoid computing cubic unnecessarily
  --  if a_inv is 0, it's 2nd degree so use quadratic formula
  --  if a is 0, it's linear
  --  don't bother distinguishing 1-solution case, as code below will still work
  --  could precompute this as it doesn't depend on sample point
  --  if outside the shape, value is negative
  -- ////////////////////////////////////////////////////////////////////////////
  --
  --  font name matching -- recommended not to use this
  --
  --  check if a utf8 string contains a prefix which is the utf16 string; if so return length of matching utf8 string
  --  convert utf16 to utf8 and compare the results while converting
  --  plus another 2 below
  --  returns results in whatever encoding you request... but note that 2-byte encodings
  --  will be BIG-ENDIAN... use stbtt_CompareUTF8toUTF16_bigendian() to compare
  --  find the encoding
  --  is this a Unicode encoding?
  --  check if there's a prefix match
  --  check for target_id+1 immediately following, with same encoding & language
  --  if nothing immediately following
  --  @TODO handle other encodings
  --  check italics/bold/underline flags in macStyle...
  --  if we checked the macStyle flags, then just check the family and ignore the subfamily
  --  FULL VERSION HISTORY
  --
  --    1.25 (2021-07-11) many fixes
  --    1.24 (2020-02-05) fix warning
  --    1.23 (2020-02-02) query SVG data for glyphs; query whole kerning table (but only kern not GPOS)
  --    1.22 (2019-08-11) minimize missing-glyph duplication; fix kerning if both 'GPOS' and 'kern' are defined
  --    1.21 (2019-02-25) fix warning
  --    1.20 (2019-02-07) PackFontRange skips missing codepoints; GetScaleFontVMetrics()
  --    1.19 (2018-02-11) OpenType GPOS kerning (horizontal only), STBTT_fmod
  --    1.18 (2018-01-29) add missing function
  --    1.17 (2017-07-23) make more arguments const; doc fix
  --    1.16 (2017-07-12) SDF support
  --    1.15 (2017-03-03) make more arguments const
  --    1.14 (2017-01-16) num-fonts-in-TTC function
  --    1.13 (2017-01-02) support OpenType fonts, certain Apple fonts
  --    1.12 (2016-10-25) suppress warnings about casting away const with -Wcast-qual
  --    1.11 (2016-04-02) fix unused-variable warning
  --    1.10 (2016-04-02) allow user-defined fabs() replacement
  --                      fix memory leak if fontsize=0.0
  --                      fix warning from duplicate typedef
  --    1.09 (2016-01-16) warning fix; avoid crash on outofmem; use alloc userdata for PackFontRanges
  --    1.08 (2015-09-13) document stbtt_Rasterize(); fixes for vertical & horizontal edges
  --    1.07 (2015-08-01) allow PackFontRanges to accept arrays of sparse codepoints;
  --                      allow PackFontRanges to pack and render in separate phases;
  --                      fix stbtt_GetFontOFfsetForIndex (never worked for non-0 input?);
  --                      fixed an assert() bug in the new rasterizer
  --                      replace assert() with STBTT_assert() in new rasterizer
  --    1.06 (2015-07-14) performance improvements (~35% faster on x86 and x64 on test machine)
  --                      also more precise AA rasterizer, except if shapes overlap
  --                      remove need for STBTT_sort
  --    1.05 (2015-04-15) fix misplaced definitions for STBTT_STATIC
  --    1.04 (2015-04-15) typo in example
  --    1.03 (2015-04-12) STBTT_STATIC, fix memory leak in new packing, various fixes
  --    1.02 (2014-12-10) fix various warnings & compile issues w/ stb_rect_pack, C++
  --    1.01 (2014-12-08) fix subpixel position when oversampling to exactly match
  --                         non-oversampled; STBTT_POINT_SIZE for packed case only
  --    1.00 (2014-12-06) add new PackBegin etc. API, w/ support for oversampling
  --    0.99 (2014-09-18) fix multiple bugs with subpixel rendering (ryg)
  --    0.9  (2014-08-07) support certain mac/iOS fonts without an MS platformID
  --    0.8b (2014-07-07) fix a warning
  --    0.8  (2014-05-25) fix a few more warnings
  --    0.7  (2013-09-25) bugfix: subpixel glyph bug fixed in 0.5 had come back
  --    0.6c (2012-07-24) improve documentation
  --    0.6b (2012-07-20) fix a few more warnings
  --    0.6  (2012-07-17) fix warnings; added stbtt_ScaleForMappingEmToPixels,
  --                         stbtt_GetFontBoundingBox, stbtt_IsGlyphEmpty
  --    0.5  (2011-12-09) bugfixes:
  --                         subpixel glyph renderer computed wrong bounding box
  --                         first vertex of shape can be off-curve (FreeSans)
  --    0.4b (2011-12-03) fixed an error in the font baking example
  --    0.4  (2011-12-01) kerning, subpixel rendering (tor)
  --                     bugfixes for:
  --                         codepoint-to-glyph conversion using table fmt=12
  --                         codepoint-to-glyph conversion using table fmt=4
  --                         stbtt_GetBakedQuad with non-square texture (Zer)
  --                     updated Hello World! sample to use kerning and subpixel
  --                     fixed some warnings
  --    0.3  (2009-06-24) cmap fmt=12, compound shapes (MM)
  --                     userdata, malloc-from-userdata, non-zero fill (stb)
  --    0.2  (2009-03-11) Fix unsigned/signed char warnings
  --    0.1  (2009-03-09) First public release
  --
  --------------------------------------------------------------------------------
  --This software is available under 2 licenses -- choose whichever you prefer.
  --------------------------------------------------------------------------------
  --ALTERNATIVE A - MIT License
  --Copyright (c) 2017 Sean Barrett
  --Permission is hereby granted, free of charge, to any person obtaining a copy of
  --this software and associated documentation files (the "Software"), to deal in
  --the Software without restriction, including without limitation the rights to
  --use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
  --of the Software, and to permit persons to whom the Software is furnished to do
  --so, subject to the following conditions:
  --The above copyright notice and this permission notice shall be included in all
  --copies or substantial portions of the Software.
  --THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  --IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  --FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  --AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  --LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  --OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  --SOFTWARE.
  --------------------------------------------------------------------------------
  --ALTERNATIVE B - Public Domain (www.unlicense.org)
  --This is free and unencumbered software released into the public domain.
  --Anyone is free to copy, modify, publish, use, compile, sell, or distribute this
  --software, either in source code form or as a compiled binary, for any purpose,
  --commercial or non-commercial, and by any means.
  --In jurisdictions that recognize copyright laws, the author or authors of this
  --software dedicate any and all copyright interest in the software to the public
  --domain. We make this dedication for the benefit of the public at large and to
  --the detriment of our heirs and successors. We intend this dedication to be an
  --overt act of relinquishment in perpetuity of all present and future rights to
  --this software under copyright law.
  --THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  --IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  --FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  --AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
  --ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
  --WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
  --------------------------------------------------------------------------------
  --

  -- -------------------------------------------------------------
  -- *
  -- *                          RECT PACK
  -- *
  -- * --------------------------------------------------------------

  -- * ==============================================================
  -- *
  -- *                          TRUETYPE
  -- *
  -- * ===============================================================
  --

  -- -------------------------------------------------------------
  -- *
  -- *                          FONT BAKING
  -- *
  -- * --------------------------------------------------------------

  -- setup baker inside a memory block
  -- setup font baker from temporary memory
  -- pack custom user data first so it will be in the upper left corner
  -- first font pass: pack all glyphs
  -- count glyphs + ranges in current font
  -- setup ranges
  -- pack
  -- texture height
  -- second font pass: render glyphs
  -- third pass: setup font and glyphs
  -- fill baked font
  --                    Need to zero this, or it will carry over from a previous
  --                    bake, and cause a segfault when accessing glyphs[].
  --

  -- fill own baked font glyph array
  -- query glyph bounds from stb_truetype
  -- fill own glyph type with data
  -- -------------------------------------------------------------
  -- *
  -- *                          FONT
  -- *
  -- * --------------------------------------------------------------

  -- query currently drawn glyph information
  -- offset next glyph
  -- ---------------------------------------------------------------------------
  -- *
  -- *                          DEFAULT FONT
  -- *
  -- * ProggyClean.ttf
  -- * Copyright (c) 2004, 2005 Tristan Grimmer
  -- * MIT license (see License.txt in http://www.upperbounds.net/download/ProggyClean.ttf.zip)
  -- * Download and more information at http://upperbounds.net
  -- *-----------------------------------------------------------------------------

  -- INVERSE of memmove... write each byte before copying the next...
  -- use fewer if's for cases that expand small
  -- *i >= 0x20
  -- more ifs for cases that expand large, since overhead is amortized
  -- error! stream is > 4GB
  -- NOTREACHED
  -- we can't assume little-endianess.
  -- -------------------------------------------------------------
  -- *
  -- *                          FONT ATLAS
  -- *
  -- * --------------------------------------------------------------

  -- allocate font config
  -- insert font config into list
  -- allocate new font
  -- insert font into list
  -- extend previously added font
  -- create own copy of .TTF font blob
  -- no font added so just use default font
  -- allocate temporary baker memory required for the baking process
  -- allocate glyph memory for all fonts
  -- pack all glyphs into a tight fit space
  -- allocate memory for the baked image font atlas
  -- bake glyphs and custom white pixel into image
  -- convert alpha8 image into rgba32 image
  -- initialize each font
  -- initialize each cursor
  -- Pos      Size        Offset
  -- free temporary memory
  -- error so cleanup all memory
  -- ===============================================================
  -- *
  -- *                          INPUT
  -- *
  -- * ===============================================================

  -- Fix Click-Drag for touch events.
  -- ===============================================================
  -- *
  -- *                              STYLE
  -- *
  -- * ===============================================================

  -- default text
  -- default button
  -- contextual button
  -- menu button
  -- checkbox toggle
  -- option toggle
  -- selectable
  -- slider
  -- slider buttons
  -- progressbar
  -- scrollbars
  -- scrollbars buttons
  -- edit
  -- property
  -- property buttons
  -- property edit
  -- chart
  -- combo
  -- combo button
  -- tab
  -- tab button
  -- node button
  -- window header
  -- window header close button
  -- window header minimize button
  -- window
  -- ==============================================================
  -- *
  -- *                          CONTEXT
  -- *
  -- * ===============================================================

  -- take memory from buffer and alloc fixed pool
  -- create dynamic pool from buffer allocator
  -- garbage collector
  -- make sure valid minimized windows do not get removed
  -- remove hotness from hidden or closed windows
  -- free unused popup windows
  -- remove unused window state tables
  -- window itself is not used anymore so free
  -- save buffer fill state for popup
  -- draw cursor overlay
  -- build one big draw command list out of all window buffers
  -- skip empty command buffers
  -- append all popup draw commands into lists
  -- append overlay commands
  -- ===============================================================
  -- *
  -- *                              POOL
  -- *
  -- * ===============================================================

  -- first nk_page_element is embedded in nk_page, additional elements follow in adjacent space
  -- allocate new page
  -- ===============================================================
  -- *
  -- *                          PAGE ELEMENT
  -- *
  -- * ===============================================================

  -- unlink page element from free list
  -- allocate page element from memory pool
  -- allocate new page element from back of fixed size memory buffer
  -- link table into freelist
  -- we have a pool so just add to free list
  -- if possible remove last element from back of fixed memory buffer
  -- ===============================================================
  -- *
  -- *                              TABLE
  -- *
  -- * ===============================================================

  -- ===============================================================
  -- *
  -- *                              PANEL
  -- *
  -- * ===============================================================

  -- pull state into local stack
  -- pull style configuration into local stack
  -- window movement
  -- calculate draggable window space
  -- window movement by dragging
  -- setup panel
  -- panel header
  -- calculate header bounds
  -- shrink panel by header
  -- select correct header background and text color
  -- draw header background
  -- window close button
  -- window minimize button
  -- window header title
  -- draw window background
  -- set clipping rectangle
  -- cache configuration data
  -- update the current cursor Y-position to point over the last added widget
  -- dynamic panels
  -- update panel height to fit dynamic growth
  -- fill top empty space
  -- fill left empty space
  -- fill right empty space
  -- fill bottom empty space
  -- scrollbars
  -- mouse wheel scrolling
  -- sub-window mouse wheel scrolling
  -- only allow scrolling if parent window is active
  -- and panel is being hovered and inside clip rect
  -- deactivate all parent scrolling
  -- window mouse wheel scrolling
  -- vertical scrollbar
  -- horizontal scrollbar
  -- hide scroll if no user input
  -- window border
  -- scaler
  -- calculate scaler bounds
  -- draw scaler
  -- do window scaling
  -- dragging in x-direction
  -- dragging in y-direction (only possible if static window)
  -- window is hidden so clear command buffer
  -- window is visible and not tab
  -- WINDOW_REMOVE_ROM flag was set so remove NK_WINDOW_ROM
  -- property garbage collector
  -- edit garbage collector
  -- contextual garbage collector
  -- helper to make sure you have a 'nk_tree_push' for every 'nk_tree_pop'
  -- ===============================================================
  -- *
  -- *                              WINDOW
  -- *
  -- * ===============================================================

  -- unlink windows from list
  --free window state tables
  -- link windows into freelist
  --ctx->end->flags |= WINDOW_ROM;
  -- find or create window
  -- create new window
  -- update window
  -- If this assert triggers you either:
  --         *
  --         * I.) Have more than one window with the same name or
  --         * II.) You forgot to actually draw the window.
  --         *      More specific you did not call `nk_clear` (nk_clear will be
  --         *      automatically called for you if you are using one of the
  --         *      provided demo backends).

  -- window overlapping
  -- activate window if hovered and no other window is overlapping this window
  -- activate window if clicked
  -- try to find a panel with higher priority in the same position
  -- current window is active in that position so transfer to top
  --                 * at the highest priority in stack

  -- current window is active in that position so transfer to top
  --                     * at the highest priority in stack

  -- check if window is being hovered
  -- check if window popup is being hovered
  -- ===============================================================
  -- *
  -- *                              POPUP
  -- *
  -- * ===============================================================

  -- make sure we have correct popup
  -- popup position is local to window
  -- setup popup data
  -- popup is running therefore invalidate parent panels
  -- popup was closed/is invalid so cleanup
  -- popups cannot have popups
  -- create window for nonblocking popup
  -- close the popup if user pressed outside or in the header
  -- remove read only mode from all parent panels
  -- set read only mode to all parent panels
  -- ==============================================================
  -- *
  -- *                          CONTEXTUAL
  -- *
  -- * ===============================================================

  -- check if currently active contextual is active
  -- calculate contextual position on click
  -- start nonblocking contextual popup
  -- Close behavior
  --        This is a bit of a hack solution since we do not know before we end our popup
  --        how big it will be. We therefore do not directly know when a
  --        click outside the non-blocking popup must close it at that direct frame.
  --        Instead it will be closed in the next frame.

  -- ===============================================================
  -- *
  -- *                              MENU
  -- *
  -- * ===============================================================

  -- if this assert triggers you allocated space between nk_begin and nk_menubar_begin.
  --    If you want a menubar the first nuklear function after `nk_begin` has to be a
  --    `nk_menubar_begin` call. Inside the menubar you then have to allocate space for
  --    widgets (also supports multiple rows).
  --    Example:
  --        if (nk_begin(...)) {
  --            nk_menubar_begin(...);
  --                nk_layout_xxxx(...);
  --                nk_button(...);
  --                nk_layout_xxxx(...);
  --                nk_button(...);
  --            nk_menubar_end(...);
  --        }
  --        nk_end(...);
  --

  -- ===============================================================
  -- *
  -- *                          LAYOUT
  -- *
  -- * ===============================================================

  -- calculate the usable panel space
  -- prefetch some configuration data
  --  if one of these triggers you forgot to add an `if` condition around either
  --        a window, group, popup, combobox or contextual menu `begin` and `end` block.
  --        Example:
  --            if (nk_begin(...) {...} nk_end(...); or
  --            if (nk_group_begin(...) { nk_group_end(...);}

  -- update the current row and set the current row layout
  -- draw background for dynamic panels
  -- update the current row and set the current row layout
  -- calculate width of undefined widget ratios
  -- calculate the width of one item inside the current layout space
  -- scaling fixed size widgets item width
  -- scaling single ratio widget width
  -- panel width depended free widget placing
  -- scaling arrays of panel width ratios for every widget
  -- non-scaling fixed widgets item width
  -- scaling single ratio widget width
  -- free widget placing
  -- non-scaling array of panel pixel width for every widget
  -- stretchy row layout with combined dynamic/static widget width
  -- set the bounds of the newly allocated widget
  -- check if the end of the row has been hit and begin new row if so
  -- calculate widget position and size
  -- ===============================================================
  -- *
  -- *                              TREE
  -- *
  -- * ===============================================================

  -- cache some data
  -- calculate header bounds and draw background
  -- update node state
  -- select correct button style
  -- draw triangle button
  -- draw optional image icon
  -- draw label
  -- increase x-axis cursor widget position pointer
  -- retrieve tree state from internal widget state tables
  -- cache some data
  -- calculate header bounds and draw background
  -- select correct button style
  -- draw triangle button
  -- draw label
  -- calculate size of the text and tooltip
  -- increase x-axis cursor widget position pointer
  -- retrieve tree state from internal widget state tables
  -- ===============================================================
  -- *
  -- *                          GROUP
  -- *
  -- * ===============================================================

  -- initialize a fake window to create the panel from
  -- make sure nk_group_begin was called correctly
  -- dummy window
  -- make sure group has correct clipping rectangle
  -- find persistent group scrollbar value
  -- find persistent group scrollbar value
  -- find persistent group scrollbar value
  -- ===============================================================
  -- *
  -- *                          LIST VIEW
  -- *
  -- * ===============================================================

  -- find persistent list view scrollbar offset
  -- ===============================================================
  -- *
  -- *                              WIDGET
  -- *
  -- * ===============================================================

  -- allocate space and check if the widget needs to be updated and drawn
  --  if one of these triggers you forgot to add an `if` condition around either
  --        a window, group, popup, combobox or contextual menu `begin` and `end` block.
  --        Example:
  --            if (nk_begin(...) {...} nk_end(...); or
  --            if (nk_group_begin(...) { nk_group_end(...);}

  -- need to convert to int here to remove floating point errors
  -- update the bounds to stand without padding
  -- spacing over row boundaries
  -- non table layout need to allocate space
  -- ===============================================================
  -- *
  -- *                              TEXT
  -- *
  -- * ===============================================================

  -- align in x-axis
  -- align in y-axis
  -- ===============================================================
  -- *
  -- *                          IMAGE
  -- *
  -- * ===============================================================

  -- ===============================================================
  -- *
  -- *                          9-SLICE
  -- *
  -- * ===============================================================

  -- ==============================================================
  -- *
  -- *                          BUTTON
  -- *
  -- * ===============================================================

  -- single character text symbol
  -- simple empty/filled shapes
  -- calculate button content space
  -- execute button behavior
  -- select correct colors/images
  -- select correct colors/images
  -- select correct background colors/images
  -- select correct text colors
  -- draw button
  -- select correct colors
  -- ===============================================================
  -- *
  -- *                              TOGGLE
  -- *
  -- * ===============================================================

  -- select correct colors/images
  -- draw background and cursor
  -- select correct colors/images
  -- draw background and cursor
  -- add additional touch padding for touch screen devices
  -- calculate the selector space
  -- label in front of the selector
  -- label in front of selector
  -- Default: WIDGET_ALIGN_LEFT
  -- label behind the selector
  -- Default: WIDGET_ALIGN_MIDDLE
  -- calculate the bounds of the cursor inside the selector
  -- update selector
  -- draw selector
  ------------------------------------------------------------------
  -- *
  -- *                          CHECKBOX
  -- *
  -- * --------------------------------------------------------------

  ------------------------------------------------------------------
  -- *
  -- *                          OPTION
  -- *
  -- * --------------------------------------------------------------

  -- ===============================================================
  -- *
  -- *                              SELECTABLE
  -- *
  -- * ===============================================================

  -- select correct colors/images
  -- draw selectable background and text
  -- remove padding
  -- update button
  -- draw selectable
  -- toggle behavior
  -- draw selectable
  -- toggle behavior
  -- draw selectable
  -- ===============================================================
  -- *
  -- *                              SLIDER
  -- *
  -- * ===============================================================

  -- check if visual cursor is being dragged
  -- only update value if the next slider step is reached
  -- slider widget state
  -- select correct slider images/colors
  -- calculate slider background bar
  -- filled background bar style
  -- draw background
  -- draw slider bar
  -- draw cursor
  -- remove padding from slider bounds
  -- optional buttons
  -- decrement button
  -- increment button
  -- remove one cursor size to support visual cursor
  -- make sure the provided values are correct
  -- calculate cursor
  --    Basically you have two cursors. One for visual representation and interaction
  --    and one for updating the actual cursor value.

  -- draw slider
  --state == WIDGET_ROM ||
  -- ===============================================================
  -- *
  -- *                          PROGRESS
  -- *
  -- * ===============================================================

  -- set progressbar widget state
  -- select correct colors/images to draw
  -- draw background
  -- draw cursor
  -- calculate progressbar cursor
  -- update progressbar
  -- draw progressbar
  -- ===============================================================
  -- *
  -- *                              SCROLLBAR
  -- *
  -- * ===============================================================

  -- update cursor by mouse dragging
  -- scroll page up by click on empty space or shortcut
  -- scroll page down by click on empty space or shortcut
  -- update cursor by mouse scrolling
  -- update cursor to the beginning
  -- update cursor to the end
  -- select correct colors/images to draw
  -- draw background
  -- draw cursor
  -- optional scrollbar buttons
  -- decrement button
  -- increment button
  -- calculate scrollbar constants
  -- calculate scrollbar cursor bounds
  -- calculate empty space around cursor
  -- update scrollbar
  -- draw scrollbar
  -- scrollbar background
  -- optional scrollbar buttons
  -- decrement button
  -- increment button
  -- calculate scrollbar constants
  -- calculate cursor bounds
  -- calculate empty space around cursor
  -- update scrollbar
  -- draw scrollbar
  -- ===============================================================
  -- *
  -- *                          TEXT EDITOR
  -- *
  -- * ===============================================================

  -- stb_textedit.h - v1.8  - public domain - Sean Barrett
  -- position of n'th character
  -- height of line
  -- first char of row, and length
  --_ first char of previous row
  -- starting x location, end x location (allows for align=right, etc)
  -- position of baseline relative to previous row's baseline
  -- height of row above and below baseline
  -- forward declarations
  -- search rows to find one that straddles 'y'
  -- below all text, return 'after' last character
  -- check if it's before the beginning of the line
  -- check if it's before the end of the line
  -- search characters in row for one that straddles 'x'
  -- shouldn't happen, but if it does, fall through to end-of-line case
  -- if the last character is a newline, return that.
  --     * otherwise return 'after' the last character

  -- API click: on mouse down, move the cursor to the clicked location,
  --     * and reset the selection

  -- API drag: on mouse drag, move the cursor and selection endpoint
  --     * to the clicked location

  -- find the x/y location of a character, and remember info about the previous
  --     * row in case we get a move-up event (for page up, we'll have to rescan)

  -- if it's at the end, then find the last line -- simpler than trying to
  --        explicitly handle this case in the regular code

  -- search rows to find the one that straddles character n
  -- now scan to find xpos
  -- make the selection/cursor state valid if client altered the string
  -- if clamping forced them to be equal, move the cursor to match
  -- delete characters while updating undo
  -- delete the section
  -- canonicalize the selection so start <= end
  -- move cursor to first character of selection
  -- move cursor to last character of selection
  -- update selection and cursor to match each other
  -- API cut: delete selection
  -- implicitly clamps
  -- API paste: replace existing selection with passed-in text
  -- if there's a selection, the paste should delete it
  -- try to insert the characters
  -- remove the undo since we didn't actually insert the characters
  -- don't insert a backward delete, just process the event
  -- can't add newline in single-line mode
  -- filter incoming text
  -- implicitly clamps
  -- move selection left
  -- if currently there's a selection,
  --             * move cursor to start of selection

  -- move selection right
  -- if currently there's a selection,
  --             * move cursor to end of selection

  -- on windows, up&down in single-line behave like left&right
  -- compute current position of cursor point
  -- now find character position down a row
  -- on windows, up&down become left&right
  -- compute current position of cursor point
  -- can only go up if there's a previous row
  -- now find character position up a row
  -- discard the oldest entry in the undo list
  -- if the 0th undo state has characters, clean those up
  -- delete n characters from all other records
  --  discard the oldest entry in the redo list--it's bad if this
  --    ever happens, but because undo & redo have to store the actual
  --    characters in different cases, the redo character buffer can
  --    fill up even though the undo buffer didn't

  -- if the k'th undo state has characters, clean those up
  -- delete n characters from all other records
  -- any time we create a new undo record, we discard redo
  -- if we have no free records, we have to make room,
  --     * by sliding the existing records down

  -- if the characters to store won't possibly fit in the buffer,
  --     * we can't undo

  -- if we don't have enough free characters in the buffer,
  --     * we have to make room

  -- we need to do two things: apply the undo record, and create a redo record
  --   if the undo record says to delete characters, then the redo record will
  --            need to re-insert the characters that get deleted, so we need to store
  --            them.
  --            there are three cases:
  --                - there's enough room to store the characters
  --                - characters stored for *redoing* don't leave room for redo
  --                - characters stored for *undoing* don't leave room for redo
  --            if the last is true, we have to bail

  -- the undo records take up too much character space; there's no space
  --            * to store the redo characters

  -- there's definitely room to store the characters eventually
  -- there's currently not enough room, so discard a redo record
  -- should never happen:
  -- now save the characters
  -- now we can carry out the deletion
  -- check type of recorded action:
  -- easy case: was a deletion, so we need to insert n characters
  -- we need to do two things: apply the redo record, and create an undo record
  -- we KNOW there must be room for the undo record, because the redo record
  --    was derived from an undo record

  -- the redo record requires us to delete characters, so the undo record
  --        needs to store the characters

  -- now save the characters
  -- easy case: need to insert n characters
  -- reset the state to default
  -- ===============================================================
  -- *
  -- *                          FILTER
  -- *
  -- * ===============================================================

  -- ===============================================================
  -- *
  -- *                          EDIT
  -- *
  -- * ===============================================================

  -- new line separator so draw previous line
  -- selection needs to draw different background color
  -- draw last line
  -- visible text area calculation
  -- calculate clipping rectangle
  -- update edit state
  -- (de)activate text editor
  -- keep scroll position when re-activating edit widget
  -- handle user input
  -- mouse click handler
  -- keyboard input
  -- special case
  -- text input
  -- enter key handler
  -- cut & copy handler
  -- paste handler
  -- tab handler
  -- set widget state
  -- DRAW EDIT
  -- select background colors/images
  -- draw background frame
  -- text pointer positions
  -- 2D pixel positions
  -- calculate total line count + total space + cursor/selection position
  -- utf8 encoding
  -- iterate all lines
  -- set cursor 2D position and line
  -- calculate 2d position
  -- set start selection 2D position and line
  -- calculate 2d position
  -- set end selection 2D position and line
  -- calculate 2d position
  -- handle case when cursor is at end of text buffer
  -- scrollbar
  -- update scrollbar to follow cursor
  -- horizontal scroll
  -- vertical scroll
  -- scrollbar widget
  -- draw text
  -- select correct colors to draw
  -- no selection so just draw the complete text
  -- edit has selection so draw 1-3 text chunks
  -- draw unselected text before selection
  -- draw selected text
  -- draw unselected text after selected text
  -- cursor
  -- draw cursor at end of line
  -- draw cursor inside text
  -- not active so just draw text
  -- make sure correct values
  -- check if edit is currently hot item
  -- current edit is now hot
  -- current edit is now cold
  -- ===============================================================
  -- *
  -- *                              PROPERTY
  -- *
  -- * ===============================================================

  -- select correct background and text color
  -- draw background
  -- draw label
  -- left decrement button
  -- text label
  -- right increment button
  -- edit
  -- empty left space activator
  -- update property
  -- draw property
  -- execute right button
  -- execute left button
  -- property has been activated so setup buffer
  -- execute and run text edit field
  -- property is now not active so convert edit text to value
  -- calculate hash from name
  -- special number hash
  -- check if property is currently hot item
  -- execute property widget
  -- current property is now hot
  -- check if previously active property is now inactive
  -- ==============================================================
  -- *
  -- *                          CHART
  -- *
  -- * ===============================================================

  -- setup basic generic chart
  -- add first slot into chart
  -- draw chart background
  -- add another slot into the graph
  -- first data point does not have a connection
  -- draw a line between the last data point and the new one
  -- user selection of current data point
  -- save current data point position
  -- calculate bounds of current bar chart entry
  -- user chart bar selection
  -- ==============================================================
  -- *
  -- *                          COLOR PICKER
  -- *
  -- * ===============================================================

  -- color matrix
  -- hue bar
  -- alpha bar
  -- set color picker widget state
  -- draw hue bar
  -- draw alpha bar
  -- draw color matrix
  -- draw cross-hair
  -- ==============================================================
  -- *
  -- *                          COMBO
  -- *
  -- * ===============================================================

  -- draw combo box header background and border
  -- print currently selected text item
  -- represents whether or not the combo's button symbol should be drawn
  -- calculate button
  -- draw selected label
  -- draw open/close button
  -- draw combo box header background and border
  -- represents whether or not the combo's button symbol should be drawn
  -- calculate button
  -- draw color
  -- draw open/close button
  -- draw combo box header background and border
  -- calculate button
  -- draw symbol
  -- draw open/close button
  -- draw combo box header background and border
  -- calculate button
  -- draw symbol
  -- draw label
  -- draw combo box header background and border
  -- represents whether or not the combo's button symbol should be drawn
  -- calculate button
  -- draw image
  -- draw open/close button
  -- draw combo box header background and border
  -- represents whether or not the combo's button symbol should be drawn
  -- calculate button
  -- draw image
  -- draw label
  -- calculate popup window
  -- find selected item
  -- calculate popup window
  -- ===============================================================
  -- *
  -- *                              TOOLTIP
  -- *
  -- * ===============================================================

  -- make sure that no nonblocking popup is currently active
  -- fetch configuration data
  -- calculate size of the text and tooltip
  -- execute tooltip and fill with text
  --/// ## License
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~none
  --///    ------------------------------------------------------------------------------
  --///    This software is available under 2 licenses -- choose whichever you prefer.
  --///    ------------------------------------------------------------------------------
  --///    ALTERNATIVE A - MIT License
  --///    Copyright (c) 2016-2018 Micha Mettke
  --///    Permission is hereby granted, free of charge, to any person obtaining a copy of
  --///    this software and associated documentation files (the "Software"), to deal in
  --///    the Software without restriction, including without limitation the rights to
  --///    use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
  --///    of the Software, and to permit persons to whom the Software is furnished to do
  --///    so, subject to the following conditions:
  --///    The above copyright notice and this permission notice shall be included in all
  --///    copies or substantial portions of the Software.
  --///    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  --///    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  --///    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  --///    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  --///    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  --///    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  --///    SOFTWARE.
  --///    ------------------------------------------------------------------------------
  --///    ALTERNATIVE B - Public Domain (www.unlicense.org)
  --///    This is free and unencumbered software released into the public domain.
  --///    Anyone is free to copy, modify, publish, use, compile, sell, or distribute this
  --///    software, either in source code form or as a compiled binary, for any purpose,
  --///    commercial or non-commercial, and by any means.
  --///    In jurisdictions that recognize copyright laws, the author or authors of this
  --///    software dedicate any and all copyright interest in the software to the public
  --///    domain. We make this dedication for the benefit of the public at large and to
  --///    the detriment of our heirs and successors. We intend this dedication to be an
  --///    overt act of relinquishment in perpetuity of all present and future rights to
  --///    this software under copyright law.
  --///    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  --///    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  --///    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  --///    AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
  --///    ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
  --///    WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
  --///    ------------------------------------------------------------------------------
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --/// ## Changelog
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~none
  --/// [date] ([x.y.z]) - [description]
  --/// - [date]: date on which the change has been pushed
  --/// - [x.y.z]: Version string, represented in Semantic Versioning format
  --///   - [x]: Major version with API and library breaking changes
  --///   - [y]: Minor version with non-breaking API and library changes
  --///   - [z]: Patch version with no direct changes to the API
  --///
  --/// - 2023/11/26 (4.12.0) - Added an alignment option to checkboxes and radio buttons.
  --/// - 2023/10/11 (4.11.0) - Added nk_widget_disable_begin() and nk_widget_disable_end()
  --/// - 2022/12/23 (4.10.6) - Fix incorrect glyph index in nk_font_bake()
  --/// - 2022/12/17 (4.10.5) - Fix nk_font_bake_pack() using TTC font offset incorrectly
  --/// - 2022/10/24 (4.10.4) - Fix nk_str_{append,insert}_str_utf8 always returning 0
  --/// - 2022/09/03 (4.10.3) - Renamed the `null` texture variable to `tex_null`
  --/// - 2022/08/01 (4.10.2) - Fix Apple Silicon with incorrect SITE_TYPE and NK_POINTER_TYPE
  --/// - 2022/08/01 (4.10.1) - Fix cursor jumping back to beginning of text when typing more than
  --///                         nk_edit_xxx limit
  --/// - 2022/05/27 (4.10.0) - Add nk_input_has_mouse_click_in_button_rect() to fix window move bug
  --/// - 2022/04/19 (4.9.8)  - Added nk_rule_horizontal() widget
  --/// - 2022/04/18 (4.9.7)  - Change button behavior when BUTTON_TRIGGER_ON_RELEASE is defined to
  --///                         only trigger when the mouse position was inside the same button on down
  --/// - 2022/02/03 (4.9.6)  - Allow overriding the INV_SQRT function, similar to NK_SIN and NK_COS
  --/// - 2021/12/22 (4.9.5)  - Revert layout bounds not accounting for padding due to regressions
  --/// - 2021/12/22 (4.9.4)  - Fix checking hovering when window is minimized
  --/// - 2021/12/22 (4.09.3) - Fix layout bounds not accounting for padding
  --/// - 2021/12/19 (4.09.2) - Update to stb_rect_pack.h v1.01 and stb_truetype.h v1.26
  --/// - 2021/12/16 (4.09.1) - Fix the majority of GCC warnings
  --/// - 2021/10/16 (4.09.0) - Added nk_spacer() widget
  --/// - 2021/09/22 (4.08.6) - Fix "may be used uninitialized" warnings in nk_widget
  --/// - 2021/09/22 (4.08.5) - GCC __builtin_offsetof only exists in version 4 and later
  --/// - 2021/09/15 (4.08.4) - Fix "'num_len' may be used uninitialized" in nk_do_property
  --/// - 2021/09/15 (4.08.3) - Fix "Templates cannot be declared to have 'C' Linkage"
  --/// - 2021/09/08 (4.08.2) - Fix warnings in C89 builds
  --/// - 2021/09/08 (4.08.1) - Use compiler builtins for OFFSETOF when possible
  --/// - 2021/08/17 (4.08.0) - Implemented 9-slice scaling support for widget styles
  --/// - 2021/08/16 (4.07.5) - Replace usage of memset in nk_font_atlas_bake with MEMSET
  --/// - 2021/08/15 (4.07.4) - Fix conversion and sign conversion warnings
  --/// - 2021/08/08 (4.07.3) - Fix crash when baking merged fonts
  --/// - 2021/08/08 (4.07.2) - Fix Multiline Edit wrong offset
  --/// - 2021/03/17 (4.07.1) - Fix warning about unused parameter
  --/// - 2021/03/17 (4.07.0) - Fix nk_property hover bug
  --/// - 2021/03/15 (4.06.4) - Change nk_propertyi back to int
  --/// - 2021/03/15 (4.06.3) - Update documentation for functions that now return nk_bool
  --/// - 2020/12/19 (4.06.2) - Fix additional C++ style comments which are not allowed in ISO C90.
  --/// - 2020/10/11 (4.06.1) - Fix C++ style comments which are not allowed in ISO C90.
  --/// - 2020/10/07 (4.06.0) - Fix nk_combo return type wrongly changed to nk_bool
  --/// - 2020/09/05 (4.05.0) - Use the nk_font_atlas allocator for stb_truetype memory management.
  --/// - 2020/09/04 (4.04.1) - Replace every boolean int by nk_bool
  --/// - 2020/09/04 (4.04.0) - Add nk_bool with INCLUDE_STANDARD_BOOL
  --/// - 2020/06/13 (4.03.1) - Fix nk_pool allocation sizes.
  --/// - 2020/06/04 (4.03.0) - Made nk_combo header symbols optional.
  --/// - 2020/05/27 (4.02.5) - Fix nk_do_edit: Keep scroll position when re-activating edit widget.
  --/// - 2020/05/09 (4.02.4) - Fix nk_menubar height calculation bug
  --/// - 2020/05/08 (4.02.3) - Fix missing stdarg.h with INCLUDE_STANDARD_VARARGS
  --/// - 2020/04/30 (4.02.2) - Fix nk_edit border drawing bug
  --/// - 2020/04/09 (4.02.1) - Removed unused nk_sqrt function to fix compiler warnings
  --///                       - Fixed compiler warnings if you bring your own methods for
  --///                        nk_cos/nk_sin/nk_strtod/nk_memset/nk_memcopy/nk_dtoa
  --/// - 2020/04/06 (4.01.10) - Fix bug: Do not use pool before checking for NULL
  --/// - 2020/03/22 (4.01.9) - Fix bug where layout state wasn't restored correctly after
  --///                        popping a tree.
  --/// - 2020/03/11 (4.01.8) - Fix bug where padding is subtracted from widget
  --/// - 2020/03/06 (4.01.7) - Fix bug where width padding was applied twice
  --/// - 2020/02/06 (4.01.6) - Update stb_truetype.h and stb_rect_pack.h and separate them
  --/// - 2019/12/10 (4.01.5) - Fix off-by-one error in INTERSECT
  --/// - 2019/10/09 (4.01.4) - Fix bug for autoscrolling in nk_do_edit
  --/// - 2019/09/20 (4.01.3) - Fixed a bug wherein combobox cannot be closed by clicking the header
  --///                        when BUTTON_TRIGGER_ON_RELEASE is defined.
  --/// - 2019/09/10 (4.01.2) - Fixed the nk_cos function, which deviated significantly.
  --/// - 2019/09/08 (4.01.1) - Fixed a bug wherein re-baking of fonts caused a segmentation
  --///                        fault due to dst_font->glyph_count not being zeroed on subsequent
  --///                        bakes of the same set of fonts.
  --/// - 2019/06/23 (4.01.0) - Added nk_***_get_scroll and nk_***_set_scroll for groups, windows, and popups.
  --/// - 2019/06/12 (4.00.3) - Fix panel background drawing bug.
  --/// - 2018/10/31 (4.00.2) - Added KEYSTATE_BASED_INPUT to "fix" state based backends
  --///                        like GLFW without breaking key repeat behavior on event based.
  --/// - 2018/04/01 (4.00.1) - Fixed calling `nk_convert` multiple time per single frame.
  --/// - 2018/04/01 (4.00.0) - BREAKING CHANGE: nk_draw_list_clear no longer tries to
  --///                        clear provided buffers. So make sure to either free
  --///                        or clear each passed buffer after calling nk_convert.
  --/// - 2018/02/23 (3.00.6) - Fixed slider dragging behavior.
  --/// - 2018/01/31 (3.00.5) - Fixed overcalculation of cursor data in font baking process.
  --/// - 2018/01/31 (3.00.4) - Removed name collision with stb_truetype.
  --/// - 2018/01/28 (3.00.3) - Fixed panel window border drawing bug.
  --/// - 2018/01/12 (3.00.2) - Added `nk_group_begin_titled` for separated group identifier and title.
  --/// - 2018/01/07 (3.00.1) - Started to change documentation style.
  --/// - 2018/01/05 (3.00.0) - BREAKING CHANGE: The previous color picker API was broken
  --///                        because of conversions between float and byte color representation.
  --///                        Color pickers now use floating point values to represent
  --///                        HSV values. To get back the old behavior I added some additional
  --///                        color conversion functions to cast between nk_color and
  --///                        nk_colorf.
  --/// - 2017/12/23 (2.00.7) - Fixed small warning.
  --/// - 2017/12/23 (2.00.7) - Fixed `nk_edit_buffer` behavior if activated to allow input.
  --/// - 2017/12/23 (2.00.7) - Fixed modifyable progressbar dragging visuals and input behavior.
  --/// - 2017/12/04 (2.00.6) - Added formatted string tooltip widget.
  --/// - 2017/11/18 (2.00.5) - Fixed window becoming hidden with flag `WINDOW_NO_INPUT`.
  --/// - 2017/11/15 (2.00.4) - Fixed font merging.
  --/// - 2017/11/07 (2.00.3) - Fixed window size and position modifier functions.
  --/// - 2017/09/14 (2.00.2) - Fixed `nk_edit_buffer` and `nk_edit_focus` behavior.
  --/// - 2017/09/14 (2.00.1) - Fixed window closing behavior.
  --/// - 2017/09/14 (2.00.0) - BREAKING CHANGE: Modifying window position and size functions now
  --///                        require the name of the window and must happen outside the window
  --///                        building process (between function call nk_begin and nk_end).
  --/// - 2017/09/11 (1.40.9) - Fixed window background flag if background window is declared last.
  --/// - 2017/08/27 (1.40.8) - Fixed `nk_item_is_any_active` for hidden windows.
  --/// - 2017/08/27 (1.40.7) - Fixed window background flag.
  --/// - 2017/07/07 (1.40.6) - Fixed missing clipping rect check for hovering/clicked
  --///                        query for widgets.
  --/// - 2017/07/07 (1.40.5) - Fixed drawing bug for vertex output for lines and stroked
  --///                        and filled rectangles.
  --/// - 2017/07/07 (1.40.4) - Fixed bug in nk_convert trying to add windows that are in
  --///                        process of being destroyed.
  --/// - 2017/07/07 (1.40.3) - Fixed table internal bug caused by storing table size in
  --///                        window instead of directly in table.
  --/// - 2017/06/30 (1.40.2) - Removed unneeded semicolon in C++ ALIGNOF macro.
  --/// - 2017/06/30 (1.40.1) - Fixed drawing lines smaller or equal zero.
  --/// - 2017/06/08 (1.40.0) - Removed the breaking part of last commit. Auto layout now only
  --///                        comes in effect if you pass in zero was row height argument.
  --/// - 2017/06/08 (1.40.0) - BREAKING CHANGE: while not directly API breaking it will change
  --///                        how layouting works. From now there will be an internal minimum
  --///                        row height derived from font height. If you need a row smaller than
  --///                        that you can directly set it by `nk_layout_set_min_row_height` and
  --///                        reset the value back by calling `nk_layout_reset_min_row_height.
  --/// - 2017/06/08 (1.39.1) - Fixed property text edit handling bug caused by past `nk_widget` fix.
  --/// - 2017/06/08 (1.39.0) - Added function to retrieve window space without calling a `nk_layout_xxx` function.
  --/// - 2017/06/06 (1.38.5) - Fixed `nk_convert` return flag for command buffer.
  --/// - 2017/05/23 (1.38.4) - Fixed activation behavior for widgets partially clipped.
  --/// - 2017/05/10 (1.38.3) - Fixed wrong min window size mouse scaling over boundaries.
  --/// - 2017/05/09 (1.38.2) - Fixed vertical scrollbar drawing with not enough space.
  --/// - 2017/05/09 (1.38.1) - Fixed scaler dragging behavior if window size hits minimum size.
  --/// - 2017/05/06 (1.38.0) - Added platform double-click support.
  --/// - 2017/04/20 (1.37.1) - Fixed key repeat found inside glfw demo backends.
  --/// - 2017/04/20 (1.37.0) - Extended properties with selection and clipboard support.
  --/// - 2017/04/20 (1.36.2) - Fixed #405 overlapping rows with zero padding and spacing.
  --/// - 2017/04/09 (1.36.1) - Fixed #403 with another widget float error.
  --/// - 2017/04/09 (1.36.0) - Added window `WINDOW_NO_INPUT` and `NK_WINDOW_NOT_INTERACTIVE` flags.
  --/// - 2017/04/09 (1.35.3) - Fixed buffer heap corruption.
  --/// - 2017/03/25 (1.35.2) - Fixed popup overlapping for `WINDOW_BACKGROUND` windows.
  --/// - 2017/03/25 (1.35.1) - Fixed windows closing behavior.
  --/// - 2017/03/18 (1.35.0) - Added horizontal scroll requested in #377.
  --/// - 2017/03/18 (1.34.3) - Fixed long window header titles.
  --/// - 2017/03/04 (1.34.2) - Fixed text edit filtering.
  --/// - 2017/03/04 (1.34.1) - Fixed group closable flag.
  --/// - 2017/02/25 (1.34.0) - Added custom draw command for better language binding support.
  --/// - 2017/01/24 (1.33.0) - Added programmatic way to remove edit focus.
  --/// - 2017/01/24 (1.32.3) - Fixed wrong define for basic type definitions for windows.
  --/// - 2017/01/21 (1.32.2) - Fixed input capture from hidden or closed windows.
  --/// - 2017/01/21 (1.32.1) - Fixed slider behavior and drawing.
  --/// - 2017/01/13 (1.32.0) - Added flag to put scaler into the bottom left corner.
  --/// - 2017/01/13 (1.31.0) - Added additional row layouting method to combine both
  --///                        dynamic and static widgets.
  --/// - 2016/12/31 (1.30.0) - Extended scrollbar offset from 16-bit to 32-bit.
  --/// - 2016/12/31 (1.29.2) - Fixed closing window bug of minimized windows.
  --/// - 2016/12/03 (1.29.1) - Fixed wrapped text with no seperator and C89 error.
  --/// - 2016/12/03 (1.29.0) - Changed text wrapping to process words not characters.
  --/// - 2016/11/22 (1.28.6) - Fixed window minimized closing bug.
  --/// - 2016/11/19 (1.28.5) - Fixed abstract combo box closing behavior.
  --/// - 2016/11/19 (1.28.4) - Fixed tooltip flickering.
  --/// - 2016/11/19 (1.28.3) - Fixed memory leak caused by popup repeated closing.
  --/// - 2016/11/18 (1.28.2) - Fixed memory leak caused by popup panel allocation.
  --/// - 2016/11/10 (1.28.1) - Fixed some warnings and C++ error.
  --/// - 2016/11/10 (1.28.0) - Added additional `nk_button` versions which allows to directly
  --///                        pass in a style struct to change buttons visual.
  --/// - 2016/11/10 (1.27.0) - Added additional `nk_tree` versions to support external state
  --///                        storage. Just like last the `nk_group` commit the main
  --///                        advantage is that you optionally can minimize nuklears runtime
  --///                        memory consumption or handle hash collisions.
  --/// - 2016/11/09 (1.26.0) - Added additional `nk_group` version to support external scrollbar
  --///                        offset storage. Main advantage is that you can externalize
  --///                        the memory management for the offset. It could also be helpful
  --///                        if you have a hash collision in `nk_group_begin` but really
  --///                        want the name. In addition I added `nk_list_view` which allows
  --///                        to draw big lists inside a group without actually having to
  --///                        commit the whole list to nuklear (issue #269).
  --/// - 2016/10/30 (1.25.1) - Fixed clipping rectangle bug inside `nk_draw_list`.
  --/// - 2016/10/29 (1.25.0) - Pulled `nk_panel` memory management into nuklear and out of
  --///                        the hands of the user. From now on users don't have to care
  --///                        about panels unless they care about some information. If you
  --///                        still need the panel just call `nk_window_get_panel`.
  --/// - 2016/10/21 (1.24.0) - Changed widget border drawing to stroked rectangle from filled
  --///                        rectangle for less overdraw and widget background transparency.
  --/// - 2016/10/18 (1.23.0) - Added `nk_edit_focus` for manually edit widget focus control.
  --/// - 2016/09/29 (1.22.7) - Fixed deduction of basic type in non `<stdint.h>` compilation.
  --/// - 2016/09/29 (1.22.6) - Fixed edit widget UTF-8 text cursor drawing bug.
  --/// - 2016/09/28 (1.22.5) - Fixed edit widget UTF-8 text appending/inserting/removing.
  --/// - 2016/09/28 (1.22.4) - Fixed drawing bug inside edit widgets which offset all text
  --///                        text in every edit widget if one of them is scrolled.
  --/// - 2016/09/28 (1.22.3) - Fixed small bug in edit widgets if not active. The wrong
  --///                        text length is passed. It should have been in bytes but
  --///                        was passed as glyphs.
  --/// - 2016/09/20 (1.22.2) - Fixed color button size calculation.
  --/// - 2016/09/20 (1.22.1) - Fixed some `nk_vsnprintf` behavior bugs and removed `<stdio.h>`
  --///                        again from `INCLUDE_STANDARD_VARARGS`.
  --/// - 2016/09/18 (1.22.0) - C89 does not support vsnprintf only C99 and newer as well
  --///                        as C++11 and newer. In addition to use vsnprintf you have
  --///                        to include <stdio.h>. So just defining `INCLUDE_STD_VAR_ARGS`
  --///                        is not enough. That behavior is now fixed. By default if
  --///                        both varargs as well as stdio is selected I try to use
  --///                        vsnprintf if not possible I will revert to vsprintf. If
  --///                        varargs but not stdio was defined I will use my own function.
  --/// - 2016/09/15 (1.21.2) - Fixed panel `close` behavior for deeper panel levels.
  --/// - 2016/09/15 (1.21.1) - Fixed C++ errors and wrong argument to `nk_panel_get_xxxx`.
  --/// - 2016/09/13 (1.21.0) - !BREAKING! Fixed nonblocking popup behavior in menu, combo,
  --///                        and contextual which prevented closing in y-direction if
  --///                        popup did not reach max height.
  --///                        In addition the height parameter was changed into vec2
  --///                        for width and height to have more control over the popup size.
  --/// - 2016/09/13 (1.20.3) - Cleaned up and extended type selection.
  --/// - 2016/09/13 (1.20.2) - Fixed slider behavior hopefully for the last time. This time
  --///                        all calculation are correct so no more hackery.
  --/// - 2016/09/13 (1.20.1) - Internal change to divide window/panel flags into panel flags and types.
  --///                        Suprisinly spend years in C and still happened to confuse types
  --///                        with flags. Probably something to take note.
  --/// - 2016/09/08 (1.20.0) - Added additional helper function to make it easier to just
  --///                        take the produced buffers from `nk_convert` and unplug the
  --///                        iteration process from `nk_context`. So now you can
  --///                        just use the vertex,element and command buffer + two pointer
  --///                        inside the command buffer retrieved by calls `nk__draw_begin`
  --///                        and `nk__draw_end` and macro `nk_draw_foreach_bounded`.
  --/// - 2016/09/08 (1.19.0) - Added additional asserts to make sure every `nk_xxx_begin` call
  --///                        for windows, popups, combobox, menu and contextual is guarded by
  --///                        `if` condition and does not produce false drawing output.
  --/// - 2016/09/08 (1.18.0) - Changed confusing name for `SYMBOL_RECT_FILLED`, `NK_SYMBOL_RECT`
  --///                        to hopefully easier to understand `SYMBOL_RECT_FILLED` and
  --///                        `SYMBOL_RECT_OUTLINE`.
  --/// - 2016/09/08 (1.17.0) - Changed confusing name for `SYMBOL_CIRLCE_FILLED`, `NK_SYMBOL_CIRCLE`
  --///                        to hopefully easier to understand `SYMBOL_CIRCLE_FILLED` and
  --///                        `SYMBOL_CIRCLE_OUTLINE`.
  --/// - 2016/09/08 (1.16.0) - Added additional checks to select correct types if `INCLUDE_FIXED_TYPES`
  --///                        is not defined by supporting the biggest compiler GCC, clang and MSVC.
  --/// - 2016/09/07 (1.15.3) - Fixed `INCLUDE_COMMAND_USERDATA` define to not cause an error.
  --/// - 2016/09/04 (1.15.2) - Fixed wrong combobox height calculation.
  --/// - 2016/09/03 (1.15.1) - Fixed gaps inside combo boxes in OpenGL.
  --/// - 2016/09/02 (1.15.0) - Changed nuklear to not have any default vertex layout and
  --///                        instead made it user provided. The range of types to convert
  --///                        to is quite limited at the moment, but I would be more than
  --///                        happy to accept PRs to add additional.
  --/// - 2016/08/30 (1.14.2) - Removed unused variables.
  --/// - 2016/08/30 (1.14.1) - Fixed C++ build errors.
  --/// - 2016/08/30 (1.14.0) - Removed mouse dragging from SDL demo since it does not work correctly.
  --/// - 2016/08/30 (1.13.4) - Tweaked some default styling variables.
  --/// - 2016/08/30 (1.13.3) - Hopefully fixed drawing bug in slider, in general I would
  --///                        refrain from using slider with a big number of steps.
  --/// - 2016/08/30 (1.13.2) - Fixed close and minimize button which would fire even if the
  --///                        window was in Read Only Mode.
  --/// - 2016/08/30 (1.13.1) - Fixed popup panel padding handling which was previously just
  --///                        a hack for combo box and menu.
  --/// - 2016/08/30 (1.13.0) - Removed `WINDOW_DYNAMIC` flag from public API since
  --///                        it is bugged and causes issues in window selection.
  --/// - 2016/08/30 (1.12.0) - Removed scaler size. The size of the scaler is now
  --///                        determined by the scrollbar size.
  --/// - 2016/08/30 (1.11.2) - Fixed some drawing bugs caused by changes from 1.11.0.
  --/// - 2016/08/30 (1.11.1) - Fixed overlapping minimized window selection.
  --/// - 2016/08/30 (1.11.0) - Removed some internal complexity and overly complex code
  --///                        handling panel padding and panel border.
  --/// - 2016/08/29 (1.10.0) - Added additional height parameter to `nk_combobox_xxx`.
  --/// - 2016/08/29 (1.10.0) - Fixed drawing bug in dynamic popups.
  --/// - 2016/08/29 (1.10.0) - Added experimental mouse scrolling to popups, menus and comboboxes.
  --/// - 2016/08/26 (1.10.0) - Added window name string prepresentation to account for
  --///                        hash collisions. Currently limited to `WINDOW_MAX_NAME`
  --///                        which in term can be redefined if not big enough.
  --/// - 2016/08/26 (1.10.0) - Added stacks for temporary style/UI changes in code.
  --/// - 2016/08/25 (1.10.0) - Changed `nk_input_is_key_pressed` and 'nk_input_is_key_released'
  --///                        to account for key press and release happening in one frame.
  --/// - 2016/08/25 (1.10.0) - Added additional nk_edit flag to directly jump to the end on activate.
  --/// - 2016/08/17 (1.09.6) - Removed invalid check for value zero in `nk_propertyx`.
  --/// - 2016/08/16 (1.09.5) - Fixed ROM mode for deeper levels of popup windows parents.
  --/// - 2016/08/15 (1.09.4) - Editbox are now still active if enter was pressed with flag
  --///                        `EDIT_SIG_ENTER`. Main reasoning is to be able to keep
  --///                        typing after committing.
  --/// - 2016/08/15 (1.09.4) - Removed redundant code.
  --/// - 2016/08/15 (1.09.4) - Fixed negative numbers in `nk_strtoi` and remove unused variable.
  --/// - 2016/08/15 (1.09.3) - Fixed `WINDOW_BACKGROUND` flag behavior to select a background
  --///                        window only as selected by hovering and not by clicking.
  --/// - 2016/08/14 (1.09.2) - Fixed a bug in font atlas which caused wrong loading
  --///                        of glyphs for font with multiple ranges.
  --/// - 2016/08/12 (1.09.1) - Added additional function to check if window is currently
  --///                        hidden and therefore not visible.
  --/// - 2016/08/12 (1.09.1) - nk_window_is_closed now queries the correct flag `WINDOW_CLOSED`
  --///                        instead of the old flag `WINDOW_HIDDEN`.
  --/// - 2016/08/09 (1.09.0) - Added additional double version to nk_property and changed
  --///                        the underlying implementation to not cast to float and instead
  --///                        work directly on the given values.
  --/// - 2016/08/09 (1.08.0) - Added additional define to overwrite library internal
  --///                        floating pointer number to string conversion for additional
  --///                        precision.
  --/// - 2016/08/09 (1.08.0) - Added additional define to overwrite library internal
  --///                        string to floating point number conversion for additional
  --///                        precision.
  --/// - 2016/08/08 (1.07.2) - Fixed compiling error without define `INCLUDE_FIXED_TYPE`.
  --/// - 2016/08/08 (1.07.1) - Fixed possible floating point error inside `nk_widget` leading
  --///                        to wrong wiget width calculation which results in widgets falsely
  --///                        becoming tagged as not inside window and cannot be accessed.
  --/// - 2016/08/08 (1.07.0) - Nuklear now differentiates between hiding a window (WINDOW_HIDDEN) and
  --///                        closing a window (WINDOW_CLOSED). A window can be hidden/shown
  --///                        by using `nk_window_show` and closed by either clicking the close
  --///                        icon in a window or by calling `nk_window_close`. Only closed
  --///                        windows get removed at the end of the frame while hidden windows
  --///                        remain.
  --/// - 2016/08/08 (1.06.0) - Added `nk_edit_string_zero_terminated` as a second option to
  --///                        `nk_edit_string` which takes, edits and outputs a '\0' terminated string.
  --/// - 2016/08/08 (1.05.4) - Fixed scrollbar auto hiding behavior.
  --/// - 2016/08/08 (1.05.3) - Fixed wrong panel padding selection in `nk_layout_widget_space`.
  --/// - 2016/08/07 (1.05.2) - Fixed old bug in dynamic immediate mode layout API, calculating
  --///                        wrong item spacing and panel width.
  --/// - 2016/08/07 (1.05.1) - Hopefully finally fixed combobox popup drawing bug.
  --/// - 2016/08/07 (1.05.0) - Split varargs away from `INCLUDE_STANDARD_IO` into own
  --///                        define `INCLUDE_STANDARD_VARARGS` to allow more fine
  --///                        grained controlled over library includes.
  --/// - 2016/08/06 (1.04.5) - Changed memset calls to `MEMSET`.
  --/// - 2016/08/04 (1.04.4) - Fixed fast window scaling behavior.
  --/// - 2016/08/04 (1.04.3) - Fixed window scaling, movement bug which appears if you
  --///                        move/scale a window and another window is behind it.
  --///                        If you are fast enough then the window behind gets activated
  --///                        and the operation is blocked. I now require activating
  --///                        by hovering only if mouse is not pressed.
  --/// - 2016/08/04 (1.04.2) - Fixed changing fonts.
  --/// - 2016/08/03 (1.04.1) - Fixed `WINDOW_BACKGROUND` behavior.
  --/// - 2016/08/03 (1.04.0) - Added color parameter to `nk_draw_image`.
  --/// - 2016/08/03 (1.04.0) - Added additional window padding style attributes for
  --///                        sub windows (combo, menu, ...).
  --/// - 2016/08/03 (1.04.0) - Added functions to show/hide software cursor.
  --/// - 2016/08/03 (1.04.0) - Added `WINDOW_BACKGROUND` flag to force a window
  --///                        to be always in the background of the screen.
  --/// - 2016/08/03 (1.03.2) - Removed invalid assert macro for RGB color picker.
  --/// - 2016/08/01 (1.03.1) - Added helper macros into header include guard.
  --/// - 2016/07/29 (1.03.0) - Moved the window/table pool into the header part to
  --///                        simplify memory management by removing the need to
  --///                        allocate the pool.
  --/// - 2016/07/29 (1.02.0) - Added auto scrollbar hiding window flag which if enabled
  --///                        will hide the window scrollbar after SCROLLBAR_HIDING_TIMEOUT
  --///                        seconds without window interaction. To make it work
  --///                        you have to also set a delta time inside the `nk_context`.
  --/// - 2016/07/25 (1.01.1) - Fixed small panel and panel border drawing bugs.
  --/// - 2016/07/15 (1.01.0) - Added software cursor to `nk_style` and `nk_context`.
  --/// - 2016/07/15 (1.01.0) - Added const correctness to `nk_buffer_push' data argument.
  --/// - 2016/07/15 (1.01.0) - Removed internal font baking API and simplified
  --///                        font atlas memory management by converting pointer
  --///                        arrays for fonts and font configurations to lists.
  --/// - 2016/07/15 (1.00.0) - Changed button API to use context dependent button
  --///                        behavior instead of passing it for every function call.
  --/// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --/// ## Gallery
  --/// ![Figure [blue]: Feature overview with blue color styling](https://cloud.githubusercontent.com/assets/8057201/13538240/acd96876-e249-11e5-9547-5ac0b19667a0.png)
  --/// ![Figure [red]: Feature overview with red color styling](https://cloud.githubusercontent.com/assets/8057201/13538243/b04acd4c-e249-11e5-8fd2-ad7744a5b446.png)
  --/// ![Figure [widgets]: Widget overview](https://cloud.githubusercontent.com/assets/8057201/11282359/3325e3c6-8eff-11e5-86cb-cf02b0596087.png)
  --/// ![Figure [blackwhite]: Black and white](https://cloud.githubusercontent.com/assets/8057201/11033668/59ab5d04-86e5-11e5-8091-c56f16411565.png)
  --/// ![Figure [filexp]: File explorer](https://cloud.githubusercontent.com/assets/8057201/10718115/02a9ba08-7b6b-11e5-950f-adacdd637739.png)
  --/// ![Figure [opengl]: OpenGL Editor](https://cloud.githubusercontent.com/assets/8057201/12779619/2a20d72c-ca69-11e5-95fe-4edecf820d5c.png)
  --/// ![Figure [nodedit]: Node Editor](https://cloud.githubusercontent.com/assets/8057201/9976995/e81ac04a-5ef7-11e5-872b-acd54fbeee03.gif)
  --/// ![Figure [skinning]: Using skinning in Nuklear](https://cloud.githubusercontent.com/assets/8057201/15991632/76494854-30b8-11e6-9555-a69840d0d50b.png)
  --/// ![Figure [bf]: Heavy modified version](https://cloud.githubusercontent.com/assets/8057201/14902576/339926a8-0d9c-11e6-9fee-a8b73af04473.png)
  --///
  --/// ## Credits
  --/// Developed by Micha Mettke and every direct or indirect github contributor. <br /><br />
  --///
  --/// Embeds [stb_texedit](https://github.com/nothings/stb/blob/master/stb_textedit.h), [stb_truetype](https://github.com/nothings/stb/blob/master/stb_truetype.h) and [stb_rectpack](https://github.com/nothings/stb/blob/master/stb_rect_pack.h) by Sean Barret (public domain) <br />
  --/// Uses [stddoc.c](https://github.com/r-lyeh/stddoc.c) from r-lyeh@github.com for documentation generation <br /><br />
  --/// Embeds ProggyClean.ttf font by Tristan Grimmer (MIT license). <br />
  --///
  --/// Big thank you to Omar Cornut (ocornut@github) for his [imgui library](https://github.com/ocornut/imgui) and
  --/// giving me the inspiration for this library, Casey Muratori for handmade hero
  --/// and his original immediate mode graphical user interface idea and Sean
  --/// Barret for his amazing single header libraries which restored my faith
  --/// in libraries and brought me to create some of my own. Finally Apoorva Joshi
  --/// for his single header file packer.
  --

end Nuklear;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
