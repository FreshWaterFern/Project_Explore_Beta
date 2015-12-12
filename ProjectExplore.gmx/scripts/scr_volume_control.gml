
//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
if(mode == 0){ //If mode is normal
//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

// ================================================ === | Colision mouse with buttons | ====================================
  // --- | Buttons volume bars |

    // Check if the mouse is over the button [MASTER Volume]
    colli_button0=point_in_rectangle(mouse_x,mouse_y,xm-sprite_get_xoffset(sBoton),ym-sprite_get_yoffset(sBoton),xm+sprite_get_xoffset(sBoton),ym+sprite_get_yoffset(sBoton));

    // Check if the mouse is over the button [Music]
    colli_button1=point_in_rectangle(mouse_x,mouse_y,x1-sprite_get_xoffset(sBoton),y1-sprite_get_yoffset(sBoton),x1+sprite_get_xoffset(sBoton),y1+sprite_get_yoffset(sBoton));

    // Check if the mouse is over the button [Sound]
    colli_button2=point_in_rectangle(mouse_x,mouse_y,x2-sprite_get_xoffset(sBoton),y2-sprite_get_yoffset(sBoton),x2+sprite_get_xoffset(sBoton),y2+sprite_get_yoffset(sBoton));

    // Check if the mouse is over the button [Voices]
    colli_button3=point_in_rectangle(mouse_x,mouse_y,x3-sprite_get_xoffset(sBoton),y3-sprite_get_yoffset(sBoton),x3+sprite_get_xoffset(sBoton),y3+sprite_get_yoffset(sBoton));


    // --- | Buttons "ON-OFF" |

    // Check if the mouse is over the button [ON-OFF MASTER Volume]
    colli_on_off0=point_in_rectangle(mouse_x,mouse_y,xof-sprite_get_xoffset(sOn_Off_Master),ym-sprite_get_yoffset(sOn_Off_Master),xof+sprite_get_xoffset(sOn_Off_Master),ym+sprite_get_yoffset(sOn_Off_Master));

    // Check if the mouse is over the button [ON-OFF Music]
    colli_on_off1=point_in_rectangle(mouse_x,mouse_y,xof-sprite_get_xoffset(sOn_Off),y1-sprite_get_yoffset(sOn_Off),xof+sprite_get_xoffset(sOn_Off),y1+sprite_get_yoffset(sOn_Off));

    // Check if the mouse is over the button [ON-OFF Sound]
    colli_on_off2=point_in_rectangle(mouse_x,mouse_y,xof-sprite_get_xoffset(sOn_Off),y2-sprite_get_yoffset(sOn_Off),xof+sprite_get_xoffset(sOn_Off),y2+sprite_get_yoffset(sOn_Off));

    // Check if the mouse is over the button [ON-OFF Voices]
    colli_on_off3=point_in_rectangle(mouse_x,mouse_y,xof-sprite_get_xoffset(sOn_Off),y3-sprite_get_yoffset(sOn_Off),xof+sprite_get_xoffset(sOn_Off),y3+sprite_get_yoffset(sOn_Off));


// ================ | Colision mouse area with sliding buttons volume bars | ============== ====

    // Check if the mouse is over the button sliding area [MASTER Volume]
    colli_area0 = point_in_rectangle(mouse_x, mouse_y, x-50, ym-10, x + 70, ym + 10)

    // Check if the mouse is over the button sliding area [Music]
    colli_area1 = point_in_rectangle(mouse_x, mouse_y, x-50, y1-10, x + 70, y1 + 10)

    // Check if the mouse is over the button sliding area [Sound]
    colli_area2 = point_in_rectangle(mouse_x, mouse_y, x-50, y2-10, x + 70, y2 + 10)

    // Check if the mouse is over the button sliding area [Voices]
    colli_area3 = point_in_rectangle(mouse_x, mouse_y, x-50, y3-10, x + 70, y3 + 10)



// ====================================== | Activation and deactivation of each button "ON -OFF "| ================================

    if(colli_on_off0 && mouse_check_button_pressed(mb_left)){
     on_off0=!on_off0
       // If the "On-Off" button is in "ON", assigned to the variables of the "On-Off" button the value recorded the last time the Button "On-Off" MASTER Volume was deactivated
      if(on_off0==true){
       ini_open(working_directory + "volume.vol")
        on_off1=ini_read_real("Volume","on_off1",true) //Button[Music]
        on_off2=ini_read_real("Volume","on_off2",true) //Button[Sound]
        on_off3=ini_read_real("Volume","on_off3",true) //Button[Voices]
       ini_close()

         // If all the "On-Off" buttons were disabled ... when you turn the master volume all activated
        if(on_off1==false && on_off2==false && on_off3==false){
         on_off1=true
         on_off2=true
         on_off3=true
        }

       } else {
        // The state of each button "On-Off" is recorded and then deactivated
       ini_open(working_directory + "volume.vol")
        ini_write_real("Volume","on_off1",on_off1) //Button[Music]
        ini_write_real("Volume","on_off2",on_off2) //Button[Sound]
        ini_write_real("Volume","on_off3",on_off3) //Button[Voices]
       ini_close()

       on_off1=false;
       on_off2=false;
       on_off3=false;
      }
    }

     // If the "On-Off" button MASTER Volume is equal to "ON" / true ....
     if(colli_on_off1 && mouse_check_button_pressed(mb_left)){on_off1=!on_off1;}
     if(colli_on_off2 && mouse_check_button_pressed(mb_left)){on_off2=!on_off2;}
     if(colli_on_off3 && mouse_check_button_pressed(mb_left)){on_off3=!on_off3;}
      


//==========================================================|CONDITION|=======================================================

        /* If the "On-Off" button will MASTER Volume is equal to "ON" / true and the other buttons "On-Off" is equal to "Off" / false
         then the current state of each button "On-Off" is saved and then the MASTER Volume is disabled */
         if (on_off0 == true && (on_off1 && on_off2 && on_off3) == false) {
           ini_open (working_directory + "volume.vol")
           ini_write_real ("Volume", "on_off1", on_off1) // Button [Music]
           ini_write_real ("Volume", "on_off2", on_off2) // Button [Sound]
           ini_write_real ("Volume", "on_off3", on_off3) // Button [Voices]
         ini_close ()

          on_off0 = false
         }

         // If the "On-Off" button MASTER Volume is equal to "Off" / false and activate one of the other buttons, the MASTER Volume is activated
         if (on_off0 == false && (on_off1 || on_off2 || on_off3) == true) {
          on_off0 = true
         }


// ============================= | Activation Glide each button of the volume bar | ====== ======================

    // Activation button [MASTER Volume]
    if(on_off0==true){// Only check if you can turn the volume bar button when the button "ON-OFF" is set to "ON" / true and the other toolbar buttons are disabled volume
     if(a1==false && a2==false && a3==false){ 
      if( (mouse_check_button(mb_left) && colli_button0) || (mouse_check_button_pressed(mb_left) && colli_area0)){a0=true;}
     }
   }
    
    // Activation button [Music]
    if (on_off1 == true) {// Only check if you can turn the volume bar button when the button "ON-OFF" is set to "ON" / true and the other toolbar buttons are disabled volume
    if(a0==false && a2==false && a3==false){ 
     if( (mouse_check_button(mb_left) && colli_button1) || (mouse_check_button_pressed(mb_left) && colli_area1)){a1=true;}
    }
   }
    

    // Activation button [Sound]
    if (on_off2 == true) {// Only check if you can turn the volume bar button when the button "ON-OFF" is set to "ON" / true and the other toolbar buttons are disabled volume
    if(a0==false && a1==false && a3==false){ 
     if( (mouse_check_button(mb_left) && colli_button2) || (mouse_check_button_pressed(mb_left) && colli_area2)){a2=true;}
    }
   }

    // Activation button [Voices]
    if (on_off3 == true) {// Only check if you can turn the volume bar button when the button "ON-OFF" is set to "ON" / true and the other toolbar buttons are disabled volume
    if(a0==false && a1==false && a2==false){ 
     if( (mouse_check_button(mb_left) && colli_button3) || (mouse_check_button_pressed(mb_left) && colli_area3)){a3=true;}
    }
   }

   
// =========================================== | Deactivation Glide each button | ==================================

    //Deactivation  buttons [MASTER, Music, Sound and Voices]
    if(mouse_check_button_released(mb_left)){
        //************|Sound Test|************
            if(a0){audio_sound_gain(snd_wood_chop,pm,0); audio_play_sound(snd_wood_chop,0,0);}
            if(a1){audio_sound_gain(snd_wood_chop,p,0); audio_play_sound(snd_wood_chop,0,0);}
            if(a2){audio_sound_gain(snd_wood_chop,p2,0); audio_play_sound(snd_wood_chop,0,0);}
            if(a3){audio_sound_gain(snd_wood_chop,p3,0); audio_play_sound(snd_wood_chop,0,0);}

             a0=false;
             a1=false;
             a2=false;
             a3=false;
    }

// =========================================== | Slip algithm for each button | ======================================

    if (mouse_x = clamp (mouse_x, x-50, x + 70)) {// This proves that this mouse positioned in X, a minimum of: x-50, and as a maximum in x + 70, and if so , the button follows the X axis of the mouse
       if (a0 == true) {xm = mouse_x;}
       if (a1 == true) {x1 = mouse_x;}
       if (a2 == true) {x2 = mouse_x;}
       if (a3 == true) {x3 = mouse_x;}

     } else {// If the variable activation of the button equals true, but the mouse is greater than the maximum limit mentioned in the function "clamp" top (x + 70), then the button takes as its maximum position: x + 70

      if (mouse_x> x + 70) {
        if (a0 == true) {xm = x + 70;}
        if (a1 == true) {x1 = x + 70;}
        if (a2 == true) {x2 = x + 70;}
        if (a3 == true) {x3 = x + 70;}
      } else {// If the variable activation of the button equals true, but the mouse is below the minimum limit mentioned in the function "clamp" top (x-50), then the button takes as its maximum position: x- 50
        if (mouse_x <x-50) {
         if (a0 == true) {xm = x-50;}
         if (a1 == true) {x1 = x-50;}
         if (a2 == true) {x2 = x-50;}
         if (a3 == true) {x3 = x-50;}
       }
      }
     }

// =================== | Formula to obtain the percentage shift buttons on the bars | ========================

     /* Formula to calculate the percentage Travel button: (x- (Location minima)) / (minimum value location + Width)
     With that percentage is obtained in decimals * 0 to 1 * to control the volume
     */

         pm = (xm - (x-50)) / (50 + 70) // Formula [MASTER VOLUME]
         p = (x1 - (x-50)) / (50 + 70) // Formula [Music]
         p2 = (x2 - (x-50)) / (50 + 70) // Formula [sound]
         p3 = (x3 - (x-50)) / (50 + 70) // Formula [Voices]
         

// =========================== | Store the largest among all lists in a variable | ======== =========================

 size_list=max(ds_list_size(list_music),ds_list_size(list_sounds),ds_list_size(list_ambience))


// ======================= | Browse each list and control the volume of the audio contained therein | ========== ===============

for(i=0; i < size_list; i++){

 if(i < ds_list_size(list_music)){
  music[i]=ds_list_find_value(list_music,i)
   if(audio_is_playing(music[i])){
    if(on_off1==true){audio_sound_gain(music[i],p,0);}else{audio_sound_gain(music[i],0,0)} //Volume music
   }
 }

 if(i < ds_list_size(list_sounds)){
  sounds[i]=ds_list_find_value(list_sounds,i)
  if(audio_is_playing(sounds[i])){
   if(on_off2==true){audio_sound_gain(sounds[i],p2,0)}else{audio_sound_gain(sounds[i],0,0)} //Volume sounds
  } 
 }

 if(i < ds_list_size(list_ambience)){
  ambience[i]=ds_list_find_value(list_ambience,i)
  if(audio_is_playing(ambience[i])){
   if(on_off3==true){audio_sound_gain(ambience[i],p3,0)}else{audio_sound_gain(ambience[i],0,0)}//Volume ambience
  } 
 } 
}

// ================================================ ========== | Master Volume | ==================================== ================


  if (on_off0 == true) {audio_master_gain(pm)} else {audio_master_gain (0)} // MASTER Volume

//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
}else{ //If mode is Invisible
//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

// =================== | Formula to obtain the percentage shift buttons on the bars | ========================

     /* Formula to calculate the percentage Travel button: (x- (Location minima)) / (minimum value location + Width)
     With that percentage is obtained in decimals * 0 to 1 * to control the volume
     */

         pm = (xm - (x-50)) / (50 + 70) // Formula [MASTER VOLUME]
         p = (x1 - (x-50)) / (50 + 70) // Formula [Music]
         p2 = (x2 - (x-50)) / (50 + 70) // Formula [sound]
         p3 = (x3 - (x-50)) / (50 + 70) // Formula [Voices]
         

// =========================== | Store the largest among all lists in a variable | ======== =========================

 size_list=max(ds_list_size(list_music),ds_list_size(list_sounds),ds_list_size(list_ambience))


// ======================= | Browse each list and control the volume of the audio contained therein | ========== ===============

for(i=0; i < size_list; i++){

 if(i < ds_list_size(list_music)){
  music[i]=ds_list_find_value(list_music,i)
   if(audio_is_playing(music[i])){
    if(on_off1==true){audio_sound_gain(music[i],p,0);}else{audio_sound_gain(music[i],0,0)} //Volume music
   }
 }

 if(i < ds_list_size(list_sounds)){
  sounds[i]=ds_list_find_value(list_sounds,i)
  if(audio_is_playing(sounds[i])){
   if(on_off2==true){audio_sound_gain(sounds[i],p2,0)}else{audio_sound_gain(sounds[i],0,0)} //Volume sounds
  } 
 }

 if(i < ds_list_size(list_ambience)){
  ambience[i]=ds_list_find_value(list_ambience,i)
  if(audio_is_playing(ambience[i])){
   if(on_off3==true){audio_sound_gain(ambience[i],p3,0)}else{audio_sound_gain(ambience[i],0,0)}//Volume ambience
  } 
 } 
}

// ================================================ ========== | Master Volume | ==================================== ================

  if (on_off0 == true) {audio_master_gain(pm)} else {audio_master_gain (0)} // MASTER Volume

//
}
