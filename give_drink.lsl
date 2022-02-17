default
{
    touch_end(integer num_detected)
    {
        key toucher = llDetectedKey(0);
        llOwnerSay("Qualcuno ha toccato il robot");
        llGiveInventory(toucher, "drink");
    }
}