#define cheat
///cheat step
if cheatTimer > 0 {
    cheatTimer --
    //check the cheats
    //banana cheat
    if cheatCheck("banana"){
        var a = floatyCreate(sBanana);        
    }
    
}
else {
    cheatString = ""
}

#define cheatInit
///cheatInit()
cheatTimer = 0
cheatString = "herpderp"
cheatMaxLength = 100

#define cheatImput
var a = keyboard_string,
    b = string_length(a)

a = string_copy(a, b, 1);

cheatString += a

if string_length(cheatString) > cheatMaxLength {
    cheatString = ""
}

#define cheatCheck
///check if the code is in
var a = argument0,
    b = string_count(a, cheatString)
    
if b >= 1 {
    /*clearing the string so it doesn't trigger more than once
    this is okay for now, but kinda limiting since I can't use, for ex, apple and then applepie,
    unless i check for applepie first, because if I do it will never trigger
    */
    cheatString = ""
    return true
}
else {
    return false
}

#define floatyCreate
//floatyCreate(floaty to create)

var a = argument0,
    b = instance_create(random(room_width),random(room_height), oFloaty),
    c = random_range(1,4)
    ;
with b {
    sprite_index = a
    image_xscale = c
    image_yscale = c
}