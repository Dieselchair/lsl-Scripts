// change transparency with chat command with lighting
// created from chat_transparency 

default
{
    state_entry()
    {
        llListen(2,"","","");
    }
    listen(integer channel, string name, key id, string message)
    {
        if(llToLower(message) == "show" && llGetOwnerKey(id) == llGetOwner())
        {
            llSetLinkPrimitiveParamsFast(LINK_SET,[PRIM_COLOR,ALL_SIDES,<1,1,1>,0.5]);
            llSetPrimitiveParams([PRIM_GLOW, ALL_SIDES, .1 ]);
          
        }
        else if(llToLower(message) == "hide" && llGetOwnerKey(id) == llGetOwner())
        {
            llSetLinkPrimitiveParamsFast(LINK_SET,[PRIM_COLOR,ALL_SIDES,<1,1,1>,0.0]);
            llSetPrimitiveParams([PRIM_GLOW, ALL_SIDES, .0 ]);
        }
    }
}

