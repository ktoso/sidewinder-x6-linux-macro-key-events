Sidewinder X6 - Linux Macro Key Events
======================================
This is both a simple reverse engineered doc of the Sidewinder X6 Keyboard (the macro key codes),
as well as an "event machine" which triggers **XEvent**s when a keystroke on such button is detected.

<img src="https://github.com/ktoso/sidewinder-x6-linux-macro-key-events/raw/master/sidewinder-x6-macro-keys.jpg" alt="keyboard marco keys"/>

Pro Tip: Go and clone Wattos/LinuxSidewinderX6 for full Sidewinder support!
===========================================================================
I just got a quick heads up Filip who reverse engineered the whole Sidewinder protocol and made it available on his github:

**https://github.com/Wattos/LinuxSidewinderX6**

Be sure to check it out, as **it's a complete, fully working SidewinderX6 driver** for our GNU/Linux OSes!
I highly recommend it and started using it myself too. *Kudos to this man! :-)*


What does it do?
-------------
The event-gen collects data from `usbmon` and `grep`s it for patterns such as:

<pre>
3269b9c0 0.353844 C Ii:2:005:2 0:1 5 = 08000000 00
3269b9c0 0.353951 S Ii:2:005:2 -:1 8 &lt;
3269b9c0 0.428809 C Ii:2:005:2 0:1 5 = 08010000 00
3269b9c0 0.428913 S Ii:2:005:2 -:1 8 &lt;
</pre>

Which would mean "S01" was pressed. Then it launches the bash script contained in `actions/S01.sh`.
In it we define what we want to happen on this macro-key-press. 

In my opinion it's best to map these keys to `ctrl+shift+F1` and such, so it's easy to map them into any app 
that supports keyboard shortcuts - I do this with *IntelliJ IDEA* and KDE (for automating )indow management).

How to run it?
--------------
You'll need to install some dependencies first. For Fedora for example you'd need to do:

```
sudo yum install usbmon xdotool
```
To use the mapper you need to run (running it in the background is fine too!):

```
sudo ./run.sh &
```

Then just check out the `actions/` folder and add scripts you'd like to be fired on each keystroke.



Supported keys
--------------
For now only keys **S01** to **S12** are supported. That's because the other keys need to get some info from the PC driver,
that "we're going into game mode". I have not yet figured out what I should send to the keyboard in order to enable this mode.
I'll do some reverse engineering of the windows driver maybe - it should help.

Kudos
-----
Thanks a lot to Bill and some other users of this keyboard - it's really great and I'm happy others think so too.

Some opinions from happy users :-)

```
[...]
Amazing! It works smoothly and it is not difficult to set it up to everybody's needs!
Since I'm using a lot of command line I'm remaping the keys with: xdotool type 'foo' and I'm already loving it!
```

Let's hack the planet! *(s/planet/keyboard/g)*

Resources
---------

* http://www.mjmwired.net/kernel/Documentation/usb/usbmon.txt
* http://readthedocs.org/docs/pvdevtools_doc/en/latest/devel/drivers/usb/usb_tools/linux/usbmon_helper/usbmon.html

