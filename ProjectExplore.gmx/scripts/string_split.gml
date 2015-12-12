/// string_split(string,width)
/*
Splits a string's width.
Return[0] = "String"
Return[1] = Toallines
Don't forget to set the font beforehand!
*/

//Grab
var TheString = argument0;
var TheMaxWidth = argument1;

var CheckString = "";
var CheckChar = "";
var LastSpace = 0;
var TotalLines = 1;
var ReturnString = "";
var Do = 1; var Break = 0; var DoLoop = 1;
do
    {
    if CheckChar = " " LastSpace = DoLoop-1; //It's -1, because it's last loops char
    CheckChar = string_char_at(TheString,Do);
    
    if string_width(CheckString + CheckChar) > TheMaxWidth
        {
        if LastSpace > 0
            {
            if CheckChar = " "
                {
                //show_debug_message("The broken off char is actually a space lol");
                ReturnString += CheckString + "#";TotalLines++; //NEWLINE!!
                DoLoop = 1;
                LastSpace = 0;
                CheckString = "";
                Do++;
                }
            else
                {
                //show_debug_message("We have a space to go back to!");
                //show_debug_message("Space at: " + string(LastSpace));
                var StringCopy = string_copy(CheckString,1,LastSpace-1); //-1 because we don't want the space
                //show_debug_message("Leaving us with: " + string(StringCopy) + ".");
                ReturnString += StringCopy + "#";TotalLines++; //NEW LINE!
                var CopyLength = string_length(StringCopy);
                var TakeAway = string_length(CheckString)-(CopyLength+1); //+1 to avoid the space
                Do -= TakeAway;
                CheckString = "";
                LastSpace = 0;
                DoLoop = 1;
                }
            }
        else
            {
            if CheckChar = " "
                {
                //show_debug_message("The broken off char is actually a space lol");
                ReturnString += CheckString + "#";TotalLines++; //NEWLINE!!
                DoLoop = 1;
                LastSpace = 0;
                CheckString = "";
                Do++;
                }
            else
                {
                //show_debug_message("No space to go to :(");
                ReturnString += CheckString + "#";TotalLines++; //NEWLINE!!
                DoLoop = 1;
                LastSpace = 0;
                CheckString = "";
                //Not Do++ because otherwise we lose a char (that got disgarded due to length)
                }
            }
        
        }
    else
        {
        CheckString += CheckChar;
        //show_debug_message(CheckString);
        Do++;DoLoop++;
        }
    if CheckChar = ""
        {
        ReturnString += CheckString;
        Break = 1;
        }
    }
until Break = 1;
//show_debug_message(ReturnString);

return ReturnString;

