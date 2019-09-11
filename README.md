# My productivity i3-wm setup



## Introduction:

This is my custom **i3, Polybar, gnome-terminal, and Compton** setup designed for Ubuntu users "like myself" but will work anywhere for sure with some tweaks it was made to be a simple I3 with no fancy visual destructions everything is just tidy and in it's own place **(imo)**   

------

## Screenshot:

*<u>I DON'T OWN THIS WALLPAPER</u>*

[SOURCE](https://www.reddit.com/r/wallpaper/comments/a2ootu/retro_wave_pyramid_oc_3840x2160/?utm_source=ifttt)

![](https://imagizer.imageshack.com/img923/7331/VRAlO3.png)

------

## Getting started:

I've used 

* [i3](https://github.com/i3/i3)

* [polybar](https://github.com/polybar/polybar)

* [compton](https://github.com/chjj/compton)

* [gnome-terminal](https://packages.ubuntu.com/disco/gnome-terminal)

we can follow each one's manual to install them or you can just run **install.sh** *(Tested on PopOs 19 virtual  machine)* make sure that all the repo's files are in the same directory git will do that for you

------

## installation: 

As mentioned above you can install each one of these packages manually or you can just follow this:

### Ubuntu Users:

```
sudo ./install.sh <your-wallpaper-path>
```

### Others:

Comment out aptitude's lines then install **i3, polybar, compton, gnome-terminal**  

then

```
sudo ./install.sh <your-wallpaper-path>
```

*Optional:* you can **load my gnome-terminal profile** using **dconf** refering to [this article](https://gist.github.com/reavon/0bbe99150810baa5623e5f601aa93afc)

*Optional:* for those who use multible language layouts in my case arabic + english you can execute this command
```
echo "exec_always setxkbmap -model pc104 -layout us,ar -option <your-toggle-method>" >> $HOME/.config/i3/config
```
where your toggle method can be


| **Option**                    | **Description**                                              |      |
| ----------------------------- | ------------------------------------------------------------ | ---- |
| **grp:lswitch**               | Left Alt (while pressed)                                     |      |
| **grp:lwin_switch**           | Left Win (while pressed)                                     |      |
| **grp:rwin_switch**           | Left Win (while pressed)                                     |      |
| **grp:win_switch**            | Any Win (while pressed)                                      |      |
| **grp:menu_switch**           | Menu (while pressed), Shift+Menu for Menu                    |      |
| **grp:caps_switch**           | Caps Lock (while pressed), Alt+Caps Lock for the original Caps Lock action |      |
| **grp:rctrl_switch**          | Right Ctrl (while pressed)                                   |      |
| **grp:toggle**                | Right Alt                                                    |      |
| **grp:lalt_toggle**           | Left Alt                                                     |      |
| **grp:caps_toggle**           | Caps Lock                                                    |      |
| **grp:shift_caps_toggle**     | Shift+Caps Lock                                              |      |
| **grp:shift_caps_switch**     | Caps Lock to first layout; Shift+Caps Lock to last layout    |      |
| **grp:win_menu_switch**       | Left Win to first layout; Right Win/Menu to last layout      |      |
| **grp:lctrl_rctrl_switch**    | Left Ctrl to first layout; Right Ctrl to last layout         |      |
| **grp:alt_caps_toggle**       | Alt+Caps Lock                                                |      |
| **grp:shifts_toggle**         | Both Shift together                                          |      |
| **grp:alts_toggle**           | Both Alt together                                            |      |
| **grp:ctrls_toggle**          | Both Ctrl together                                           |      |
| **grp:ctrl_shift_toggle**     | Ctrl+Shift                                                   |      |
| **grp:lctrl_lshift_toggle**   | Left Ctrl+Left Shift                                         |      |
| **grp:rctrl_rshift_toggle**   | Right Ctrl+Right Shift                                       |      |
| **grp:ctrl_alt_toggle**       | Alt+Ctrl                                                     |      |
| **grp:alt_shift_toggle**      | Alt+Shift                                                    |      |
| **grp:lalt_lshift_toggle**    | Left Alt+Left Shift                                          |      |
| **grp:alt_space_toggle**      | Alt+Space                                                    |      |
| **grp:menu_toggle**           | Menu                                                         |      |
| **grp:lwin_toggle**           | Left Win                                                     |      |
| **grp:win_space_toggle**      | Win+Space                                                    |      |
| **grp:rwin_toggle**           | Right Win                                                    |      |
| **grp:lshift_toggle**         | Left Shift                                                   |      |
| **grp:rshift_toggle**         | Right Shift                                                  |      |
| **grp:lctrl_toggle**          | Left Ctrl                                                    |      |
| **grp:rctrl_toggle**          | Right Ctrl                                                   |      |
| **grp:sclk_toggle**           | Scroll Lock                                                  |      |
| **grp:lctrl_lwin_rctrl_menu** | Left Ctrl+Left Win to first layout; Right Ctrl+Menu to second layout |      |
| **grp:lctrl_lwin_toggle**     | Left Ctrl+Left Win                                           |      |
|                               |                                                              |      |

------

Thanks for passing by, any contribution or suggestions except gaps or transparencies **(remember it was made for productivity at the first place with no visual destruction (terminal is ok more than that is too much for me)** ) are more than welcomed.
