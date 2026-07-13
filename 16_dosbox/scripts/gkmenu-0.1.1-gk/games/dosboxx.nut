dofile("dosbox.nut");

local ret = game("DosBox-X", "For setup etc", dosboxx,
	[
		"-c", "MOUNT s /share/dosbox",
		"-c", "s:"
	]);

games.append(ret);
