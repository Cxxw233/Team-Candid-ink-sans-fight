audio_stop_all()
visible = true
a = floor(random(8))
image_xscale = 2
image_yscale = 2
if (a==7)
{
    x = (room_width / 2)
    y = (room_height / 2)
    sprite_index = spr_toby_sleep
    mus=audio_play_sound(mus_sigh_of_dog,100,1)
    audio_sound_pitch(mus,(0.8 + random(0.2)))
    image_speed = 0.05
}
else
{
    x = ((room_width / 2) - (sprite_width / 2))
    y = ((room_height / 2) - (sprite_height / 2))
    mus=audio_play_sound(mus_dance_of_dog,100,1)
    audio_sound_pitch(mus,(0.95 + random(0.1)))
    image_speed = 0.15
}

 