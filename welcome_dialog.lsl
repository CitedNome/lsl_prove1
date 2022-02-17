//Script che apre un menu a più opzioni
//Questo script fa uso del canale 797, nel caso fosse già utilizzato da qualsiasi altro script è caldamente consigliato sostituirlo con un altro

integer dialogListener;
default
{
    state_entry()
    {
        
    }
    touch_end(integer num_detected)
    {
        dialogListener = llListen(797, "", "", "");
        llDialog(llDetectedKey(0), "Welcome to our Island!\nHere you can get more information about this project!\nYou can also pick some snacks or drinks to eat during the tour!", ["More Infos", "Soda", "Sundae"], 797);
    }
    listen(integer channel, string name, key id, string message)
    {
        if(channel == 797)
        {
            if(message == "More Infos")
            {
                llRegionSayTo(id, 0, "Insert the additional infos");
            }
            else if(message == "Soda")
            {
                llRegionSayTo(id, 0, "{Give Soda}");
            }
            else if(message == "Sundae")
            {
                llRegionSayTo(id, 0, "{Give Sundae}")    
            }
            llListenRemove(dialogListener);
        }
    }

}
//Code by Zoldan Carlo ~ GitHub: CitedNome - Discord: Zoldie#4848