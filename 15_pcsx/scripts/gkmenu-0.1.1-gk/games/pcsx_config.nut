dofile("game.nut");

local ret = game("PCSX", "For configuration");

ret.fname <- "/pcsx_rearmed-gk/bin/pcsx";
ret.cwd <- "/pcsx_rearmed-gk/bin";

games.append(ret);
