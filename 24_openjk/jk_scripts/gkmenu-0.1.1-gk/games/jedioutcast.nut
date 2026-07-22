dofile("game.nut");

local ret = game("Jedi Knight 2 - Jedi Outcast", "");
ret.fname <- "/JediOutcast/openjo_sp.arm64";
ret.cwd <- "/JediOutcast";

ret.params <- [
    "+set", "fs_basepath", "/JediOutcast"
];

ret.screen_w <- 800;
ret.screen_h <- 480;
ret.screen_pf <- GK_PIXELFORMAT_RGB565;
ret.screen_overwritten_each_frame <- true;

ret.left_stick <- GK_STICK_JOY0;
ret.right_stick <- GK_STICK_JOY1;

ret.touch_is_mouse <- true;

ret.keymap <-
{
    [GK_KEYLEFT] = GK_SCANCODE_LEFT,        // menu + next weapon
    [GK_KEYRIGHT] = GK_SCANCODE_RIGHT,      // menu + next force
    [GK_KEYUP] = GK_SCANCODE_UP,            // menu + saber stance
    [GK_KEYDOWN] = GK_SCANCODE_DOWN,        // menu + use force
    [GK_KEYJOYDIGILEFT] = 0,
    [GK_KEYJOYDIGIRIGHT] = 0,
    [GK_KEYJOYDIGIUP] = 0,
    [GK_KEYJOYDIGIDOWN] = 0,
    [GK_KEYJOYBDIGILEFT] = 0,
    [GK_KEYJOYBDIGIRIGHT] = 0,
    [GK_KEYJOYBDIGIUP] = 0,
    [GK_KEYJOYBDIGIDOWN] = 0,
    [GK_KEYRT] = GK_SCANCODE_LCTRL,         // fire
    [GK_KEYLT] = GK_SCANCODE_LALT,          // alt fire
    [GK_KEYRB] = GK_SCANCODE_F1,            // force push
    [GK_KEYLB] = GK_SCANCODE_F2,            // force pull
    [GK_KEYSTART] = GK_SCANCODE_RETURN,     // menu + use environment
    [GK_KEYSELECT] = GK_SCANCODE_ESCAPE,
    [GK_KEYA] = GK_SCANCODE_SPACE,          // jump
    [GK_KEYB] = GK_SCANCODE_C,              // crouch    
    [GK_KEYY] = GK_SCANCODE_F7,             // use item
    [GK_KEYX] = GK_SCANCODE_F6,             // next item
};

ret.cpu_freq <- 2000000000;

games.append(ret);
