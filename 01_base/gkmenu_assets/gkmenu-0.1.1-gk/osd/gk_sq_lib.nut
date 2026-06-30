# some utility functions that are always loaded by the customosd_sq code

sendkeypress <- function(key)
{
    sendkeyevent(key, 1);
    sendkeyevent(key, 0);
}

addimagepage <- function(image_fname)
{
    local p_img = TabViewPage({ layout = lv.LV_LAYOUT_FLEX, flex_flow = lv.LV_FLEX_FLOW_ROW,
        flex_align = [ lv.LV_FLEX_ALIGN_CENTER, lv.LV_FLEX_ALIGN_CENTER, lv.LV_FLEX_ALIGN_CENTER ],
        pad = [ 0, 0, 0, 0 ],
        internal_pad = [ 2, 2 ] });
    Image(p_img, { img = image_fname } );
    return p_img;
}
