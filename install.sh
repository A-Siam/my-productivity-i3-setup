#!/bin/bash
	
	# this is a helper installer installs all the requirements
	# for my productive i3 setup

	##################################################
	# Downloading/pre-installation Section############
	##################################################
	
	# Download req deps 
	apt-get build-essential clang-7.0 git cmake cmake-data pkg-config python3-sphinx
	
	# this will install every i3 related package 
	apt-get install i3*
	
	# compton installer for the transparent terminal
	apt-get install compton
	
	# download nitrogen
	apt-get install nitrogen
	
	# pre polybar deps
	apt install build-essential git cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev 
	
	# clone polybar
	git clone https://github.com/polybar/polybar
	# now this directory should have folder named "./polybar" contains polybar
	
	#building polybar
	cd ./polybar
	./build.sh
	cd ./build
	make userconfig
	
	##################################################
	# Configuration Section###########################
	##################################################
	
	mkdir -p $HOME/.config/i3
	
	# the config file data
	
	printf "# It will not be overwritten, so edit it as you like. \n\
	# \n\
	# Should you change your keyboard layout some time, delete \n\
	# this file and re-run i3-config-wizard(1). \n\
	# \n\
	 \n\
	# i3 config file (v4) \n\
	# \n\
	# Please see https://i3wm.org/docs/userguide.html for a complete reference! \n\
	 \n\
	set \$mod Mod1 \n\
	 \n\
	# Font for window titles. Will also be used by the bar unless a different font \n\
	# is used in the bar {} block below. \n\
	font pango:monospace 8 \n\
	 \n\
	# This font is widely installed, provides lots of unicode glyphs, right-to-left \n\
	 \n\
	# text rendering and scalability on retina/hidpi displays (thanks to pango). \n\
	#font pango:DejaVu Sans Mono 8 \n\
	 \n\
	#enable numlock \n\
	exec_always --no-startup-id numlockx on \n\
	 \n\
	#set background \n\
	exec_always nitrogen --set-auto $1 \n\
	 \n\
	#transparent terminal \n\
	exec_always compton --shadow-blue 0.1 --shadow-red 0.02 --shadow-green 0.01 --opacity-rule \"90:class_g = 'Gnome-terminal'\" \n\
	 \n\
	#open terminal and firefox when you start \n\
	exec gnome-terminal \n\
	exec firefox \n\
	 \n\
	# Before i3 v4.8, we used to recommend this one as the default: \n\
	# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1 \n\
	# The font above is very space-efficient, that is, it looks good, sharp and \n\
	# clear in small sizes. However, its unicode glyph coverage is limited, the old \n\
	# X core fonts rendering does not support right-to-left and this being a bitmap \n\
	# font, it doesn’t scale on retina/hidpi displays. \n\
	 \n\
	# Use Mouse+\$mod to drag floating windows to their wanted position \n\
	floating_modifier \$mod \n\
	 \n\
	# start a terminal \n\
	bindsym \$mod+Return exec gnome-terminal  \n\
	 \n\
	bindsym \$mod+Shift+x exec deepin-screenshot \n\
	# start gnome settings \n\
	 \n\
	bindsym \$mod+Shift+s exec env XDG_CURRENT_DESKTOP=GNOME gnome-control-center \n\
	 \n\
	# kill focused window \n\
	bindsym \$mod+Shift+q kill \n\
	 \n\
	# start dmenu (a program launcher) \n\
	bindsym \$mod+d exec \"dmenu_run -b -sf '#000000' -sb '#f23c78'\" \n\
	# There also is the (new) i3-dmenu-desktop which only displays applications \n\
	# shipping a .desktop file. It is a wrapper around dmenu, so you need that \n\
	# installed. \n\
	# bindsym \$mod+d exec --no-startup-id i3-dmenu-desktop \n\
	 \n\
	# change focus \n\
	bindsym \$mod+h focus left \n\
	bindsym \$mod+j focus down \n\
	bindsym \$mod+k focus up \n\
	bindsym \$mod+l focus right \n\
	 \n\
	# alternatively, you can use the cursor keys: \n\
	bindsym \$mod+Left focus left \n\
	bindsym \$mod+Down focus down \n\
	bindsym \$mod+Up focus up \n\
	bindsym \$mod+Right focus right \n\
	 \n\
	# move focused window \n\
	bindsym \$mod+Shift+H move left \n\
	bindsym \$mod+Shift+J move down \n\
	bindsym \$mod+Shift+K move up \n\
	bindsym \$mod+Shift+L move right \n\
	 \n\
	# alternatively, you can use the cursor keys: \n\
	bindsym \$mod+Shift+Left move left \n\
	bindsym \$mod+Shift+Down move down \n\
	bindsym \$mod+Shift+Up move up \n\
	bindsym \$mod+Shift+Right move right \n\
	 \n\
	# split in horizontal orientation \n\
	bindsym \$mod+control+H split h \n\
	 \n\
	# split in vertical orientation \n\
	bindsym \$mod+control+V split v \n\
	 \n\
	# enter fullscreen mode for the focused container \n\
	bindsym \$mod+f fullscreen toggle \n\
	 \n\
	# change container layout (stacked, tabbed, toggle split) \n\
	bindsym \$mod+s layout stacking \n\
	bindsym \$mod+w layout tabbed \n\
	bindsym \$mod+e layout toggle split \n\
	 \n\
	# toggle tiling / floating \n\
	bindsym \$mod+Shift+space floating toggle \n\
	 \n\
	# change focus between tiling / floating windows \n\
	bindsym \$mod+space focus mode_toggle \n\
	 \n\
	# focus the parent container \n\
	bindsym \$mod+a focus parent \n\
	 \n\
	# focus the child container \n\
	#bindsym \$mod+d focus child \n\
	 \n\
	# open eclipse <3 \n\
	bindsym \$mod+control+e exec /media/myfiles/Eclipse\ for\ java\ EE/eclipse/eclipse  \n\
	 \n\
	# Define names for default workspaces for which we configure key bindings later on. \n\
	# We use variables to avoid repeating the names in multiple places. \n\
	set \$ws1 \"1: Terminal\" \n\
	set \$ws2 \"2: Browser-Education\" \n\
	set \$ws3 \"3: Browser-Music\" \n\
	set \$ws4 \"4: Browser-Social-media\" \n\
	set \$ws5 \"5: E-Book\" \n\
	set \$ws6 \"6:Programming\" \n\
	set \$ws7 \"7\" \n\
	set \$ws8 \"8\" \n\
	set \$ws9 \"9\" \n\
	set \$ws10 \"10\" \n\
	 \n\
	# switch to workspace \n\
	bindsym \$mod+1 workspace \$ws1 \n\
	bindsym \$mod+2 workspace \$ws2 \n\
	bindsym \$mod+3 workspace \$ws3 \n\
	bindsym \$mod+4 workspace \$ws4 \n\
	bindsym \$mod+5 workspace \$ws5 \n\
	bindsym \$mod+6 workspace \$ws6 \n\
	bindsym \$mod+7 workspace \$ws7 \n\
	bindsym \$mod+8 workspace \$ws8 \n\
	bindsym \$mod+9 workspace \$ws9 \n\
	bindsym \$mod+0 workspace \$ws10 \n\
	 \n\
	# move focused container to workspace \n\
	bindsym \$mod+Shift+1 move container to workspace \$ws1 \n\
	bindsym \$mod+Shift+2 move container to workspace \$ws2 \n\
	bindsym \$mod+Shift+3 move container to workspace \$ws3 \n\
	bindsym \$mod+Shift+4 move container to workspace \$ws4 \n\
	bindsym \$mod+Shift+5 move container to workspace \$ws5 \n\
	bindsym \$mod+Shift+6 move container to workspace \$ws6 \n\
	bindsym \$mod+Shift+7 move container to workspace \$ws7 \n\
	bindsym \$mod+Shift+8 move container to workspace \$ws8 \n\
	bindsym \$mod+Shift+9 move container to workspace \$ws9 \n\
	bindsym \$mod+Shift+0 move container to workspace \$ws10 \n\
	 \n\
	assign [class=\"Firefox\"] \$ws2 \n\
	assign [class=\"Gnome-terminal\"] \$ws1 \n\
	assign [class=\"Eclipse\"] \$ws6 \n\
	 \n\
	# reload the configuration file \n\
	bindsym \$mod+Shift+c reload \n\
	# restart i3 inplace (preserves your layout/session, can be used to upgrade i3) \n\
	bindsym \$mod+Shift+r restart \n\
	# exit i3 (logs you out of your X session) \n\
	bindsym \$mod+Shift+e exec \"i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'\" \n\
	#colors: \n\
	# class                 border  backgr. text    indicator child_border \n\
	client.focused          #30223f #0b0313 #f23c78 #0b0313   #0b0313 \n\
	client.focused_inactive #111111 #111111 #afffff #484e50   #5f676a \n\
	client.unfocused        #222222 #222222 #888888 #292d2e   #222222 \n\
	client.urgent           #2f343a #900000 #ffffff #900000   #900000 \n\
	client.placeholder      #000000 #0c0c0c #ffffff #000000   #0c0c0c \n\
	 \n\
	client.background       #ffffff \n\
	# resize window (you can also use the mouse for that) \n\
	mode \"resize\" { \n\
	        # These bindings trigger as soon as you enter the resize mode \n\
	 \n\
	        # Pressing left will shrink the window’s width. \n\
	        # Pressing right will grow the window’s width. \n\
	        # Pressing up will shrink the window’s height. \n\
	        # Pressing down will grow the window’s height. \n\
	        bindsym H resize shrink width 10 px or 10 ppt \n\
	        bindsym J resize grow height 10 px or 10 ppt \n\
	        bindsym K resize shrink height 10 px or 10 ppt \n\
	        bindsym L resize grow width 10 px or 10 ppt \n\
	 \n\
	        # same bindings, but for the arrow keys \n\
	        bindsym Left resize shrink width 10 px or 10 ppt \n\
	        bindsym Down resize grow height 10 px or 10 ppt \n\
	        bindsym Up resize shrink height 10 px or 10 ppt \n\
	        bindsym Right resize grow width 10 px or 10 ppt \n\
	 \n\
	        # back to normal: Enter or Escape or \$mod+r \n\
	        bindsym Return mode \"default\" \n\
	        bindsym Escape mode \"default\" \n\
	        bindsym \$mod+r mode \"default\" \n\
	} \n\
	bindsym \$mod+r mode \"resize\" \n\
	 \n\
	# Start i3bar to display a workspace bar (plus the system information i3status \n\
	# finds out, if available) \n\
	#bar { \n\
	#        status_command i3status \n\
	#} \n\
	 \n\
	# Pulse Audio controls \n\
	bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume 0 +5% #increase sound volume \n\
	bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume 0 -5% #decrease sound volume \n\
	bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute 0 toggle # mute sound \n\
	 \n\
	# Sreen brightness controls \n\
	bindsym XF86MonBrightnessUp exec xbacklight -inc 20 # increase screen brightness \n\
	bindsym XF86MonBrightnessDown exec xbacklight -dec 20 # decrease screen brightness \n\
	 \n\
	# Media player controls \n\
	bindsym XF86AudioPlay exec playerctl play \n\
	bindsym XF86AudioPause exec playerctl pause \n\
	bindsym XF86AudioNext exec playerctl next \n\
	bindsym XF86AudioPrev exec playerctl previous \n\
	 \n\
	exec --no-startup-id polybar example" > $HOME/.config/i3/config
	
	#add polybar config
	chmod 777 $HOME/.config/ploybar/config
	mv -f ../../config $HOME/.config/ploybar/
	
	# Done <3
	# @A-Siam
