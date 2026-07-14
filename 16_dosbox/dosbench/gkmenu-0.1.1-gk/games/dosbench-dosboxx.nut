dofile("dosbox.nut");

local ret = game("DosBox-X DOSBENCH", "", dosboxx,
[
    "-c", "mount s /share/dosbox",
    "-c", "s:",
    "-c", "cd dosbench",
    "-c", "DOSBENCH.BAT",
    "--exit"
]);

games.append(ret);
