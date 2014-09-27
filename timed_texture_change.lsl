// changes texture at a set time

integer sec = 15;// change this to how fast you whant it to change in secounds


integer choice;
integer number;

default
{
    state_entry()
    {
        llSetTimerEvent(sec);
        number = llGetInventoryNumber(INVENTORY_TEXTURE);
        choice = 1;
        string name = llGetInventoryName(INVENTORY_TEXTURE, choice);
        llSetTexture(name, ALL_SIDES);
    }

    timer()
    {
        if (choice>=number)
        {
           choice =0;
        }

      string name = llGetInventoryName(INVENTORY_TEXTURE, choice);
        if (name != "")
        {
            llSetTexture(name, ALL_SIDES);
            choice+=1;  
        }
    }
}

