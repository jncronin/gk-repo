dofile("game.nut");

local ret = game("DosBox", "For setup etc");
ret.fname <- "/dosbox-staging-0.83.0-gk/bin/dosbox";
ret.cwd <- "/dosbox-staging-0.83.0-gk";

ret.screen_w <- 720;
ret.screen_h <- 400;
ret.screen_pf <- GK_PIXELFORMAT_ARGB8888;
ret.screen_overwritten_each_frame <- true;

ret.cpu_freq <- 2000000000;

games.append(ret);
