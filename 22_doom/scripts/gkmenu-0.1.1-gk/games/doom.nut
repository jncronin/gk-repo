dofile("game.nut");

local ret = game("Doom", "The Ultimate Doom\n(Chocolate Doom)");
ret.fname <- "/Chocolate Doom-3.1.1-gk/bin/chocolate-doom";
ret.cwd <- "/Chocolate Doom-3.1.1-gk";

ret.params <- [
    "-iwad", "/share/doom/DOOM.WAD"
];

ret.screen_w <- 320;
ret.screen_h <- 240;
ret.screen_pf <- GK_PIXELFORMAT_RGB565;

ret.screen_overwritten_each_frame <- true;

games.append(ret);

