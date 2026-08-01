local t1 = TabViewPage({ layout = lv.LV_LAYOUT_FLEX, flex_flow = lv.LV_FLEX_FLOW_ROW_WRAP,
    flex_align = [ lv.LV_FLEX_ALIGN_SPACE_EVENLY, lv.LV_FLEX_ALIGN_CENTER, lv.LV_FLEX_ALIGN_CENTER ]
});

Button(t1, {
    text = "Show Briefing",
    onclick = function(b)
    {
        sendkeypress(GK_SCANCODE_TAB);
        close();
    }
});

Button(t1, {
    text = "Quick Save",
    onclick = function(b)
    {
        dialog("Are you sure you want to quick save?",
        [
            { text = "OK", onclick = function(b) { sendkeypress(GK_SCANCODE_F12); close(); } },
            { text = "Cancel" }
        ]);
    }
});

Button(t1, {
    text = "Quick Load",
    onclick = function(b)
    {
        dialog("Are you sure you want to quick load?",
        [
            { text = "OK", onclick = function(b) { sendkeypress(GK_SCANCODE_F9); close(); } },
            { text = "Cancel" }
        ]);
    }
});

Button(t1, {
    text = "Quit",
    onclick = function(b)
    {
        dialog("Are you sure you want to quit?",
            [
                { text = "OK", onclick = function(b) { delaykill(0); } },
                { text = "Cancel" }
            ]
        );
    }
});

addimagepage("img/openjk_controls.png");
