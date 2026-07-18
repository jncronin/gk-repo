dofile("game.nut");

local ret = game("Quake 2", "");
ret.fname <- "/quake2sdl-0.17-gk/bin/quake2";
ret.cwd <- "/quake2sdl-0.17-gk";

ret.screen_w <- 800;
ret.screen_h <- 480;
ret.screen_pf <- GK_PIXELFORMAT_RGB565;

games.append(ret);
