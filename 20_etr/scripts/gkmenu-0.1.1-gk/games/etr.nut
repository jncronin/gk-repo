dofile("game.nut");

local ret = game("Tuxracer", "Extreme tuxracer");
ret.fname <- "/etr-gk/bin/etr";
ret.cwd <- "/etr-gk";

ret.screen_w <- 800;
ret.screen_h <- 480;
ret.screen_pf <- GK_PIXELFORMAT_ARGB8888;

ret.img <- "img/tuxracer.png";
ret.cpu_freq <- 1800000000;

ret.touch_is_mouse <- true;
ret.screen_overwritten_each_frame <- true;

games.append(ret);

