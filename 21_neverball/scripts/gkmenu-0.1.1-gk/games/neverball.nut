dofile("game.nut");

local ret = game("Neverball", "");
ret.fname <- "/neverball-0.1.1-gk/bin/neverball";
ret.cwd <- "/neverball-0.1.1";

ret.params <- [
    "--data", "/neverball-0.1.1-gk/data"
];

ret.screen_w <- 800;
ret.screen_h <- 480;
ret.screen_pf <- GK_PIXELFORMAT_RGB565;

ret.cpu_freq <- 2000000000;

ret.touch_is_mouse <- true;
ret.screen_overwritten_each_frame <- true;

games.append(ret);

