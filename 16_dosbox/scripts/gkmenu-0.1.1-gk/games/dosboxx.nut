dofile("game.nut");

local ret = game("DosBox-X", "For setup etc");
ret.fname <- "/dosboxx-gkv4/bin/dosbox-x";
ret.cwd <- "/dosboxx-gkv4";

ret.screen_w <- 720;
ret.screen_h <- 480;
ret.screen_pf <- GK_PIXELFORMAT_ARGB8888;
ret.screen_update_method <- ::GK_SCREEN_UPDATE_PARTIAL_NOREADBACK;

ret.cpu_freq <- 2000000000;

games.append(ret);
