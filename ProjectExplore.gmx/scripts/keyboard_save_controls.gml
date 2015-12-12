/// keyboard_save_controls(key_name,MainKey,NewKey)
switch(argument0)
{
    case "Move Up":
    {
    ini_open("settings.ini");
    if ( argument1 == 0 )
    {ini_write_real("controls","MAIN_UP",real(argument2));}
    else
    {ini_write_real("controls","ALT_UP",real(argument2));}
    ini_close();
    break;
    }
    case "Move Down":
    {
    ini_open("settings.ini");
    if ( argument1 == 0 )
    {ini_write_real("controls","MAIN_DOWN",real(argument2));}
    else
    {ini_write_real("controls","ALT_DOWN",real(argument2));}
    ini_close();
    break;
    }
    case "Move Left":
    {
    ini_open("settings.ini");
    if ( argument1 == 0 )
    {ini_write_real("controls","MAIN_LEFT",real(argument2));}
    else
    {ini_write_real("controls","ALT_LEFT",real(argument2));}
    ini_close();
    break;
    }
    case "Move Right":
    {
    ini_open("settings.ini");
    if ( argument1 == 0 )
    {ini_write_real("controls","MAIN_RIGHT",real(argument2));}
    else
    {ini_write_real("controls","ALT_RIGHT",real(argument2));}
    ini_close();
    break;
    }
    case "Inventory":
    {
    ini_open("settings.ini");
    if ( argument1 == 0 )
    {ini_write_real("controls","MAIN_INVENTORY",real(argument2));}
    else
    {ini_write_real("controls","ALT_INVENTORY",real(argument2));}
    ini_close();
    break;
    }
    case "Walk":
    {
    ini_open("settings.ini");
    if ( argument1 == 0 )
    {ini_write_real("controls","MAIN_WALK",real(argument2));}
    else
    {ini_write_real("controls","ALT_WALK",real(argument2));}
    ini_close();
    break;
    }
    case "Interact":
    {
    ini_open("settings.ini");
    if ( argument1 == 0 )
    {ini_write_real("controls","MAIN_INTERACT",real(argument2));}
    else
    {ini_write_real("controls","ALT_INTERACT",real(argument2));}
    ini_close();
    break;
    }
}
