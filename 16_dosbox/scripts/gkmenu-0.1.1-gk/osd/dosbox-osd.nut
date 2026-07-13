dosboxhostpress <- function(x)
{
	sendkeyevent(GK_SCANCODE_F12, 1);
	sendkeyevent(x, 1);
	sendkeyevent(x, 0);
	sendkeyevent(GK_SCANCODE_F12, 0);
}

dosbox_is_paused <- false;
dosbox_toggle_pause <- function() { dosboxhostpress(GK_SCANCODE_PAUSE); dosbox_is_paused = !dosbox_is_paused; }

pause <- function() { if(!dosbox_is_paused) { dosbox_toggle_pause(); } dosbox_is_paused <- true; }
unpause <- function() { if(dosbox_is_paused) { dosbox_toggle_pause(); } dosbox_is_paused <- false; }

/* dosbox-x only responds to commands when unpaused.  The screen is paused when the supervisor is displayed.
    Therefore, unpause, send the key, repause (because close() calls resume()),
        delay a bit (dosbox-x doesn't respond to two key presses in such quick succession),
        then finally close() the supervisor
*/
dosboxpressclose <- function(x)
{
    unpause();
    sendkeypress(x);
    pause();
    delay(5);
    close();
}
