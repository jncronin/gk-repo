dofile("game.nut");

local ret = game("Quake 2", "");
ret.fname <- "/quake2sdl-0.17-gk/bin/quake2";
ret.cwd <- "/quake2sdl-0.17-gk";

games.append(ret);
