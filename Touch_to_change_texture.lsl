// Touch to change texture
// Created by Tomi Eiren

integer choice;
integer number;

default
{
    touch_start(integer total_number)
    {
        if(llDetectedKey(0) == llGetOwner())
        {
            integer number = llGetInventoryNumber(INVENTORY_TEXTURE);
            choice = ++choice%number;
            string name = llGetInventoryName(INVENTORY_TEXTURE, choice);
            if (name != "")
            {
                llSetTexture(name, ALL_SIDES);
            }
        }
        else
        {
            llInstantMessage(llDetectedKey(0), "Hands Off!");
        }
    }

}