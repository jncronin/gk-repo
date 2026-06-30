dofile("game.nut");

local ret = game("Joystick Calibration", "");
ret.fname <- "/gkjoy-0.1.1-gk/bin/gkjoy";
ret.cwd <- "/gkjoy-0.1.1-gk";
ret.screen_w <- 320;
ret.screen_h <- 240;
ret.screen_pf <- GK_PIXELFORMAT_RGB565;

ret.left_stick <- GK_STICK_JOY0;
ret.right_stick <- GK_STICK_JOY1;
ret.tilt_stick <- GK_STICK_JOY2;
ret.throttle_stick <- GK_STICK_JOY3;

ret.keymap <- 
{
	[::GK_KEYA] = ::GK_GAMEPAD_BUTTON + 0,
	[::GK_KEYB] = ::GK_GAMEPAD_BUTTON + 1,
	[::GK_KEYX] = ::GK_GAMEPAD_BUTTON + 2,
	[::GK_KEYY] = ::GK_GAMEPAD_BUTTON + 3,
	[::GK_KEYSTART] = ::GK_SCANCODE_ESCAPE,
	[::GK_KEYSELECT] = ::GK_SCANCODE_ESCAPE
};

games.append(ret);
