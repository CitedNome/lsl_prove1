default
{
    state_entry()
    {
        key owner = llGetOwner();
        key touchAvatar = llDetectedKey(0);
        llWhisper(0, "Accendo il blocco");
        if (owner == touchAvatar)
            llOwnerSay("Hai acceso il blocco");
            llSetColor(<1.0, 0.0, 0.0>, ALL_SIDES);
        else
            llOwnerSay("Qualcuno ha acceso il blocco");
            llSetColor(<1.0, 1.0, 1.0>, ALL_SIDES);
    }
    touch_end(integer num_detected)
    {
        state off;
    }
}

state off
{
    state_entry()
    {
        key owner = llGetOwner();
        key touchAvatar = llDetectedKey(0);
        llWhisper(0, "Spengo il blocco");
        if (owner == touchAvatar)
            llOwnerSay("Hai spento il blocco");
            llSetColor(<1.0, 0.0, 0.0>, ALL_SIDES);
        else
            llOwnerSay("Qualcuno ha spento il blocco");
            llSetColor(<0.0, 0.0, 0.0>, ALL_SIDES);
    }
    touch_end(integer num_detected)
    {
        state default;
    }
}
