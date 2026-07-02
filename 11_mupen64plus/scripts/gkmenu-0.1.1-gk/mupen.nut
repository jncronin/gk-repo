dofile("game.nut");

function mupen(ret)
{
	ret.fname <- "/mupen64p-0.1.1-gk/bin/mupen64plus";
	ret.cwd <- "/mupen64p-0.1.1-gk/bin";
	ret.screen_w <- 320;
	ret.screen_h <- 240;
	ret.screen_pf <- GK_PIXELFORMAT_ARGB8888;
	ret.keymap <- {
		[GK_KEYLEFT] = GK_SCANCODE_A,	
		[GK_KEYRIGHT] = GK_SCANCODE_D,
		[GK_KEYUP] = GK_SCANCODE_W,
		[GK_KEYDOWN] = GK_SCANCODE_S,
		[GK_KEYA] = GK_SCANCODE_LSHIFT,
		[GK_KEYB] = GK_SCANCODE_LCTRL,
		[GK_KEYX] = 0,
		[GK_KEYY] = 0,
		[GK_KEYLB] = GK_SCANCODE_X,
		[GK_KEYRB] = GK_SCANCODE_C,
		[GK_KEYRT] = GK_SCANCODE_Z,
		[GK_KEYLT] = 0,
		[GK_KEYJOYBDIGILEFT] = GK_SCANCODE_J,
		[GK_KEYJOYBDIGIRIGHT] = GK_SCANCODE_L,
		[GK_KEYJOYBDIGIUP] = GK_SCANCODE_I,
		[GK_KEYJOYBDIGIDOWN] = GK_SCANCODE_K,
		[GK_KEYSTART] = GK_SCANCODE_RETURN,
	};

	ret.gamepad_is_joystick <- false;
	ret.gamepad_is_keyboard <- true;
	ret.gamepad_is_mouse <- false;
	ret.screen_overwritten_each_frame <- true;

	if(!("params" in ret))
	{
		ret.params <- [];
	}
	ret.params.extend([
		"--resolution", "320x250",
		"--set", "Core[R4300Emulator]=2",
		"--set", "Audio-SDL[RESAMPLE]=trivial",
		"--set", "Video-Rice[SkipFrame]=0",
		"--set", "Video-Rice[ScreenUpdateSetting]=7",
		"--set", "Video-Rice[Mipmapping]=2",
		"--set", "Video-Rice[FogMethod]=1",
		"--set", "Video-Rice[ForceTextureFilter]=0",
		"--set", "Video-Rice[FastTextureLoading]=TRUE",
		"--set", "Video-Rice[FrameBufferSetting]=0",
		"--set", "Video-Rice[RenderToTexture]=2",
		"--set", "Video-Rice[FrameBufferWriteBackControl]=0",
		"--set", "Video-Rice[EnableHacks]=TRUE",
		"--set", "Video-Rice[InN64Resolution]=FALSE",
		"--set", "Video-Rice[DefaultCombinerDisable]=FALSE",
		"--set", "Video-Rice[ColorQuality]=0",
		"--set", "Audio-SDL[AUDIO_SYNC]=0",
		"--set", "Input-SDL-Control1[mode]=2",
		"--set", "Input-SDL-Control1[plugges]=TRUE",
		"--set", "Input-SDL-Control2[device]=-1",
		"--set", "Input-SDL-Control2[plugged]=FALSE",
		"--set", "Core[CountPerOp]=0"
	]);

	ret.left_stick <- GK_STICK_JOY0;
	ret.right_stick <- GK_STICK_DIGITAL | GK_STICK_4WAY;

	ret.cpu_freq <- 2000000000;

	ret.img <- "img/n64.png";
	ret.osd <- "osd/mupen64-osd.nut";

	return ret;
}

function mupen64_righthand(ret)
{
	mupen(ret);

    ret.keymap <- {
        [GK_KEYLEFT] = GK_SCANCODE_A,
        [GK_KEYRIGHT] = GK_SCANCODE_D,
        [GK_KEYUP] = GK_SCANCODE_W,
        [GK_KEYDOWN] = GK_SCANCODE_S,
        [GK_KEYA] = GK_SCANCODE_LSHIFT,
        [GK_KEYB] = GK_SCANCODE_LCTRL,
        [GK_KEYX] = 0,
        [GK_KEYY] = 0,
        [GK_KEYLB] = GK_SCANCODE_X,
        [GK_KEYRB] = 0,
        [GK_KEYRT] = GK_SCANCODE_C,
        [GK_KEYLT] = GK_SCANCODE_Z,
        [GK_KEYJOYBDIGILEFT] = GK_SCANCODE_J,
        [GK_KEYJOYBDIGIRIGHT] = GK_SCANCODE_L,
        [GK_KEYJOYBDIGIUP] = GK_SCANCODE_I,
        [GK_KEYJOYBDIGIDOWN] = GK_SCANCODE_K,
        [GK_KEYSTART] = GK_SCANCODE_RETURN,
    };

	ret.osd <- "osd/mupen64-righthand-osd.nut";

	return ret;
}

