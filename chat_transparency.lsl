// Change transparency by chat
// Created by Tomi Eiren  

default
{
    state_entry()
    {
        llListen(0,"","","");
    }
    listen(integer channel, string name, key id, string message)
    {
        if(llToLower(message) == "on" && llGetOwnerKey(id) == llGetOwner())
        {
            llSetLinkPrimitiveParamsFast(LINK_SET,[PRIM_COLOR,ALL_SIDES,<1,1,1>,1.0]);
          
        }
        else if(llToLower(message) == "off" && llGetOwnerKey(id) == llGetOwner())
        {
            llSetLinkPrimitiveParamsFast(LINK_SET,[PRIM_COLOR,ALL_SIDES,<1,1,1>,0.0]);
        }
    }
}

