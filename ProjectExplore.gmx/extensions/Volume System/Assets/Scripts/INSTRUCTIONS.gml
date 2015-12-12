
/* CREATED BY: FRANCIS CLASE. Owner of CLAVOS STUDIOS and indie developer (Please give credit in your projects)

It's very easy to use!, "oVolume", in the CREATE event, the object creates multiple ds_lists,
which are which will contain the list of sounds to be controlled in such a list (each list represents a volume bar),
This means that each volume bar is guided from a list of sounds to control (ds_list),
the "ds_list_add ()" function which is called in the CREATE event of the "oVolume" object is used to add sound to a "ds_list"
(Set in as used with example sounds that come with this editable)

FOR EXAMPLE:

//LIST of music
list_music = ds_list_create ();
ds_list_add (list_music, sound1, sound2, sound3);


* In the code above you were sounds: sound1, sound2 and sound3; to the volume bar that controls the music
("Ds_list_add ()" function only supports 16 arguments, so you should call it again (how many times you need it) If you need to add more than 16 sounds)


******************************************************************************************************************
|==============================| MODES (major upgrade added in version 2.1.0) |===================================
******************************************************************************************************************

We have now added a boolean variable called "mode", which controls the state of the object "oVolume" when this variable is set to zero (0), 
the system volume control is normal, but when this variable is given a value of one (1) a "stealth mode" 
that will allow volume control disappears and make the necessary processes to control the volume set throughout the game without open volume control is activated. 
So you can adjust the volume control to your game very easily without using many resources. 
to prove this we have added a "oButton_mode" object that serves as a button to toggle this mode. 
This means that to control the sound volume without having the system volume on the screen, 
you must give the value of one (1) to the variable "mode" and leave the persistent object throughout your game. 
IMPORTANT: You should review the left Pressed event within the object "oButton_mode" and read the comments and code that is there (Because each time you put the variable "mode" value of one (1), 
you must delete the text fonts from memory. As well as the variable "mode" has a value of zero (0), 
you must create the appropriate sources to be drawn) 
iS VERY IMPORTANT, AS FAILURE TO DO SO wILL bE UNNECESSARY OCCUPYING SPACE IN MEMORY AND MORE overload YOUR GAME

******************************************************************************************************************
|===================================| (TEST SOUND added in version 2.2.0) |=======================================
******************************************************************************************************************

To remove the test sound that sounds when you release the left mouse button,
simply remove these lines of code in the step event (that is from line 186):
        //************|Sound Test|************
            if(a0){audio_sound_gain(soundTest,pm,0); audio_play_sound(soundTest,0,0);}
            if(a1){audio_sound_gain(soundTest,p,0); audio_play_sound(soundTest,0,0);}
            if(a2){audio_sound_gain(soundTest,p2,0); audio_play_sound(soundTest,0,0);}
            if(a3){audio_sound_gain(soundTest,p3,0); audio_play_sound(soundTest,0,0);}
            
******************************************************************************************************************
|================================================| IMPORTANT |====================================================
******************************************************************************************************************

If you move the object "oVolume" of place, will need to adjust the coordinates of the buttons by code
(The code is super commented and contains variables to control easily the coordinates of the buttons)
OJO!, this does not mean that you don't have to make a little effort to adapt to your tastes

* If you like listening, please do not hesitate to support their composers, by clicking on the buttons that are on the left next to the volume bars
