
# mednafen style OSD

local parent = TabViewPage();

local l_save = Label(parent);
l_save.x = 50;
l_save.y = 32;
l_save.w = 80;
l_save.h = 48;
l_save.text = "Save";

for(local i = 1; i <= 10; i++)
{
    local curval = i;
    local curkey = GK_SCANCODE_1 + i - 1;
    if(curval == 10)
    {
        curval = 0;
    }

    local cbtn = Button(parent);
    cbtn.x = 122 + (i - 1) * 64;
    cbtn.y = 22;
    cbtn.w = 52;
    cbtn.h = 48;
    cbtn.text = curval.tostring();
    cbtn.onclick = function(b)
    {
        dialog("Are you sure you want to save state " + curval.tostring(),
        [
            { text = "OK", onclick = function(b) { sendkeypress(curkey); sendkeypress(GK_SCANCODE_F1); } },
            { text = "Cancel" }
        ]
        );
    };
}

local l_load = Label(parent);
l_load.x = 50;
l_load.y = 90;
l_load.w = 80;
l_load.h = 48;
l_load.text = "Load";

for(local i = 1; i <= 10; i++)
{
    local curval = i;
    local curkey = GK_SCANCODE_1 + i - 1;
    if(curval == 10)
    {
        curval = 0;
    }

    local cbtn = Button(parent);
    cbtn.x = 122 + (i - 1) * 64;
    cbtn.y = 80;
    cbtn.w = 52;
    cbtn.h = 48;
    cbtn.text = curval.tostring();
    cbtn.onclick = function(b)
    {
        dialog("Are you sure you want to load state " + curval.tostring(),
        [
            { text = "OK", onclick = function(b) { sendkeypress(curkey); sendkeypress(GK_SCANCODE_F2); } },
            { text = "Cancel" }
        ]
        );
    };
}

local pcsx_is_paused = false;
pause <- function() { sendkeypress(GK_SCANCODE_P); pcsx_is_paused = true; }
unpause <- function() { sendkeypress(GK_SCANCODE_O); pcsx_is_paused = false; }

local b_pause = Button(parent);
b_pause.x = 295;
b_pause.y = 138;
b_pause.w = 100;
b_pause.h = 48;
b_pause.text = "Pause";
b_pause.onclick = function(b) {
    if(pcsx_is_paused)
    {
        unpause();
    }
    else
    {
        pause();
    }
};

local b_quit = Button(parent);
b_quit.x = 405;
b_quit.y = 138;
b_quit.w = 100;
b_quit.h = 48;
b_quit.text = "Quit";
b_quit.onclick = function(b) { delaykill(0); };
