-------
### About Lilidog:

Lilidog is a lightweight Linux distro based on Debian.  Lilidog uses the
Openbox window manager with tint2, Thunar, and xfce4-terminal.

Other window managers are also made available through the Lilidog
installers. These are Awesome, dwm, i3, jwm, and sowm.

### Available Versions:

There are currently 3 builds available: Lilidog, Beardog, and Waydog.  

- Lilidog - Comes with most everything necessary to get started. This
includes Firefox, LibreOffice, Geany, Thunar, xfce4-terminal, Pragha,
Gpicview, Fastfetch, Jgmenu, and inxi among others.

- Beardog - The 'bare' version of Lilidog. Beardog starts without a 
display manager on login, though two different Lightdm versions can
be installed from the initial welcome script.

- Waydog - A version based on Wayland instead of X11. This version has
Labwc and Sway compositors installed, with Waybar for the panel and 
Waypaper to provide wallpapers.  Fully customized Niri and Wayfire
WMs are available from the Waydog installers.

### NOTE - The DOWNLOAD button defaults to the full Openbox version.
## Click on FILES, and then RELEASES to access the other builds.

<a href="https://sourceforge.net/projects/lilidog/files/latest/download"><img alt="Download Lilidog" src="https://a.fsdn.com/con/app/sf-download-button" width=276 height=48 srcset="https://a.fsdn.com/con/app/sf-download-button?button_size=2x 2x"></a>

### Current Releases:

The version number is the date of the release beginning with the year,
followed by the month, and then the day.  So as an example, release
23.12.21 stands for the 21st of Dec, 2023.  One way to see this after
a Lilidog installation is to look at the Install Date Conky for the
installation and build date.  Another way is to open a terminal and:

`cat /usr/share/lilidog/GPL/current-build`

Lilidog uses the 'stable' version of Debian, which is currently Trixie,
and updates to most of the packages can be had with a quick:

`sudo apt update && sudo apt upgrade`

to bring everything up to date. 

### Directions For Installation:

Probably the easiest way to use Lilidog is to put it on a USB stick.

One easy way is to grab the live-usb-maker app: https://github.com/MX-Linux/lum-qt-appimage/releases/tag/19.11.02  
Download the AppImage.tar.gz and open a terminal: 

`tar -xaf live-usb-maker-qt-19.11.02.x86_64.AppImage.tar.gz`
Then:
`sudo ./live-usb-maker-qt-19.11.02.x86_64.AppImage`

Use "image mode" in the live-usb maker when burning the image.

The boot screen for Lilidog gives a choice of using as a Live session 
or installing if you like what you see.

### Navigating Lilidog:

After boot you have the option to install, or try out Lilidog live.
The Live username is 'user' and the Live password is 'live'
Once in a session, there are a few items that can shape your experience.
Look in the "paw" icon in the tint2 panel for theming options.

Look in the "Toggles" section of the menu for some other useful options,
and look in the "Install Extras" portion of the menu for extra programs
you may want.  Look around.  There's more to see as well.

### Some Of The Basic Features:

- Based on Debian with contrib and non-free sources enabled by default.

- The welcome script in installation allows for the addition of
backports and other useful options. 

- These are 'no --recommends' builds. This means only the required
dependencies are included during package install. This leaves out any
recommended or suggested packages, allowing for complete control over
package installation. No unwanted packages will be installed by default.

- Tint2 is the panel by default.  See the wrench and screwdriver icon in
the tint2 panel for some other nifty tint2 options, including toggles
for the position (top or bottom), autohide, Tint2 time format (12/24H),
and on/off, and theming options. 

- Jgmenu is the menu for Lilidog and Beardog. Many customizations are
available. Go to menu -> configuration -> jgmenu.conf for how to change
and add items.

- Wallpapers are handled by Feh. Place any image you would like to use
as a wallpaper in ~/Pictures/wallpapers. Go to Menu -> Configuration ->
Wallpaper Chooser to change wallpapers. You can also right-click on any
image you choose from the file manager to set as background wallpaper.
Other right-click options for images include rotation and copying to
~/Pictures/wallpapers. A random wallpaper toggle is included.

- Icons - Currently, the Obsidian icon theme is default. Papirus, Gnome,
and other icon sets are readily available.  

- Grub background changer opens a window to choose your own images.
Lilidog ships with six to give you an initial choice before finding
your own to add to the collection.

- There are shortcuts for xfce4-power-manager in the battery icon. Hover
over the icons to see what they are.  

- Rofi and Dmenu for alternate menu sources. - ALT + F5 pulls the full
Dmenu up, while ALT + F3 pulls up a customized Rofi 'drun' menu.

- Thunar is the default file manager.  Custom right-click options are
already added as well. These include everything from "Open as Root", to
different rotations and sizing of pics, to comparisons of files using
Meld. And more.

- Custom Lilidog Openbox and GTK themes, and matching themes for Geany
and Xfce4-terminal.

- The fonts are Noto Sans for the windows and JetBrains Mono for the
xfce4-terminal. The exceptions are urxvt and Conky where DejaVu is used.

- Xfce4-terminal is default terminal, with urxvt included. 

- The Conky Chooser in the toggles section of the menu contains toggles
for ten different Conkys and the time format shown. All of the Conkys
contain relevant info. These include a Clock, Full Info, Fortunes,
Shortcuts, Worldclock, and Tao quotes. Everything Conky is located in
~/.config/conky, including the Conky Chooser script.

- Custom colors can be chosen for three of the GTK themes, tint2, and
Conky. This allows the user to design their desktop that much easier.

- Picom Composite Manager with transparency enabled.  Look in
~/.config/picom.conf to change transparency, shadows, and more.

- Gammy screen color and lightness control located in Toggles, and from
the keybind "Super + g". This will allow you to change and set the gamma
and brightness of your screen for different times of your choice, or
simply as a toggle when desired.

- Newsboat RSS reader with a custom configuration already in place and
ready for new RSS feeds.

- System notifications through Dunst with options for sound effects.

- Menu Extras - Install menu with options for Liquorix kernel, Qemu,
VirtualBox, Steam, Etcher, and more.

- ld-hotcorners - Each corner of the screen responds to a command.
Turn it on with the button in the lower left corner or under Toggles in
the menu. Change the corners in ~/.config/ld-hotcorners. Clockwise from
top left: file manager, toggle Picom, exit menu, and terminal.

### Theme changes: 
The easiest way to change themes is with the 'Quick Theme Changer'
located in the menu under Configuration. This changes the GTK theme,
Openbox theme, Geany theme, LightDM, wallpaper, menu, and terminal
theme all on the fly.

### Building Lilidog:
No need to wait for a new release if wanting to keep up with the latest.
In fact, this is a great way to make personal changes, and to help with
testing new features.

How to build Lilidog, Beardog, or Waydog on your system.

Go to https://github.com/sleekmason to select the Trixie version you
would like to build. Here, I am using the Waydog-Trixie release:

1. `sudo apt install -y git live-build`
2. `git clone https://github.com/sleekmason/Waydog-Trixie.git`
3. `cd Waydog-Trixie`
4. `sudo lb build`

Wait for the build to finish and look for the ISO in the top folder.

To make it your own:  
Change stuff!

Then:  
`lb clean`  (cleans the configuration for the next build)  
`lb build`

Items to possibly change:  
Waydog-Trixie/config/package-lists/my.list.chroot  (package list)  
Waydog-Trixie/config/includes.chroot_after_packages/ (main files)

Of course there are other files that can also be changed in the build,
but maybe keep it simple for a run or two. 

Note * Change 'waydog-trixie' to whichever build you selected.

Github: https://github.com/sleekmason/Lilidog

#### Lilidog
[![Lili.png](https://i.postimg.cc/hjy8qYS8/Lili.png)](https://postimg.cc/5YzQBnQj)
