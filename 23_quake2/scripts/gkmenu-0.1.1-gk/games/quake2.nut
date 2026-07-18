dofile("game.nut");

local ret = game("Quake 2", "");
ret.fname <- "/quake2sdl-0.17-gk/bin/quake2";
ret.cwd <- "/quake2sdl-0.17-gk";

ret.screen_w <- 800;
ret.screen_h <- 480;
ret.screen_pf <- GK_PIXELFORMAT_RGB565;

ret.left_stick <- GK_STICK_JOY0;
ret.right_stick <- GK_STICK_JOY1;

ret.keymap <-
{
    [GK_KEYLEFT] = GK_SCANCODE_LEFT,        // menu + prev weapon
    [GK_KEYRIGHT] = GK_SCANCODE_RIGHT,      // menu + next weapon
    [GK_KEYUP] = GK_SCANCODE_UP,            // menu + show objectives
    [GK_KEYDOWN] = GK_SCANCODE_DOWN,
    [GK_KEYJOYDIGILEFT] = 0,
    [GK_KEYJOYDIGIRIGHT] = 0,
    [GK_KEYJOYDIGIUP] = 0,
    [GK_KEYJOYDIGIDOWN] = 0,
    [GK_KEYJOYBDIGILEFT] = 0,
    [GK_KEYJOYBDIGIRIGHT] = 0,
    [GK_KEYJOYBDIGIUP] = 0,
    [GK_KEYJOYBDIGIDOWN] = 0,
    [GK_KEYRT] = GK_SCANCODE_LCTRL,
    [GK_KEYLT] = 0,
    [GK_KEYSTART] = GK_SCANCODE_RETURN,
    [GK_KEYSELECT] = GK_SCANCODE_ESCAPE,
    [GK_KEYA] = GK_SCANCODE_SPACE,          // jump
    [GK_KEYB] = GK_SCANCODE_C,              // crouch    
    [GK_KEYY] = GK_SCANCODE_RETURN,         // use item
    [GK_KEYX] = GK_SCANCODE_RIGHTBRACKET,   // next item
};

ret.cpu_freq <- 2000000000;

games.append(ret);
