ZMR250
======

While building up my first multirotor (a DJI F450) I learned a lot about
quadcopters. I was making a list of the various components and was planning
on buying all the parts individually when a ZMR250 came up for sale from
an aquantence from the local FPV community. I jumped at the chance to grab
it; it was just the kind of vehicle that I needed as a total FPV noob. It was
also significantly built up already. I just needed to get batteries, a FPV
camera and a video transmitter.

The flight controller is a Naze32 Rev5 clone flashed with the latest
Cleanflight firmware. The ESC's are Afro 12A flashed with BLHeli firmware.
The motors are Dys BE1806-2300KV with Gemfan 5030 propellors.


The ZMR uses an X configuration and when combined with the Naze32 software
the motor numbering is as follows:

.. code-block:: console

    4   2
     \ /
      X
     / \
    3   1


=====  =========
Motor  Direction
=====  =========
1      CW
2      CCW
3      CCW
4      CW
=====  =========


Adjust sub-trim in Transmitter so that Roll, Pitch and Yaw are centered
around 1500.

Reverse Aileron and Rudder in Transmitter so that right on transmitter moves
the channel slider right.

I had a problem arming motors with the initial configuration. This was because
the lowest that the trottle would go was still above the lowest motor value
configured in the Cleanflight config app.

I used sub-trim on the throttle to bring the lowest value under the
value set in the Cleanflight config app (i.e. to about 1030 which is below the
1060) minimum set in Cleanflight.

Arm: min throttle and yaw right.
Disarm: min throttle and yaw left.


Receiver
--------

I am using a :ref:`s603-receiver-label`


Video Transmitter
-----------------

I am using the :ref:`200mw-immersionrc-video-transmitter-label`.


FPV Goggles
-----------

I am using the :ref:`fatshark-attitude-v3-goggles-label`.


Problems
--------

This quad was really problematic. After lots of investigation I finally
determined that the cause was the 5V BEC unit soldered to the ZMR V2 PDB.

After some period of normal (beginner) flight time the quad would keel over
as if the motor 1 had stopped. At the time I thought there was something
wrong with the quad but I was also pretty new to flying them so it might
have just been my noob skillz.

This resulted in two 2 Naze32 boards were destroyed. It was a weird problem.
After the crashes the Flight Controller board would not power up at all.
Then by the time I walked home to investigate further it would power up.

However, while I could arm and disarm the quad, the throttle would not work.
Also, when I tried to plug it into Cleanflight I found that the USB interface
was not functional. This exact same sequence happended to two Naze32's.

While flying Line of sight with a third Naze32 I observed it keel over and
fall to the ground again. This time the flight controller was never able to
be powered up even after waiting a while. However this board could still
communicate with Cleanflight when I plugged it in.

Pulling the quad apart I finally found that the 5V BEC was not functioning
anymore. Perhaps it was getting hot after a length of flight. Perhaps it
was just flaky right from the start. At this point I am assuming that as
it was degrading it probably fed 12V to the 5V output intermittantly, which
consequently damaged the first two flight controllers.

I am going to replace the integrated PDB with a very simple stackable unit.


Rebuild
-------

I sourced a stackable PDB from a fellow quad flyer and commenced the
rebuild. It took a solid weekend. The motor connections to the ESC's
remained the same but everything from the other side of the ESC needed
to be re-wired.

Once the rebuild was complete I attempted to connect it to Cleanflight
but could not for some reason. I assumed that maybe there was nothing
loaded on the Naze32 by default so I attempted to flash a new version
of betaflight

I went to the Silabs.com site the to their `Interface and Drivers`
page to find the CP21XX driver package for OSX. This was called
`CP210x USB to UART Bridge Drivers`. Silicon Labs >> Products >>
MCUs >> USB to UART Bridge VCP Drivers.
Once I had updated the driver I was able to successfully flash the
Naze with both Cleanflight and Betaflight. I left the Naze with Betaflight.

Use transmitter sub-trim to adjust mid-point of roll, pitch and yaw to
around 1500. Then use travel adjust to attempt to get range from 1000
to 2000. Typically I can get it to about 1030 - 2000.

For some reason I was having trouble disarming. This was because I could
only get the yaw down to about 1055 but the min_check was set to 1040.

To fix this I used the CLI to set the following:

.. code-block:: console

    set min_check = 1065


I originally had wired the power input for the video transmitter to
the 12V BEC output. However, the power demands from the video
transmitter must have been to much for the BEC to handle. Without the
video transmitter connected the 12V output was just over 12V but when
I connected the vide transitter it went down to 5V. I'm guessing that
the video transmitter draws a lot of current that in turn drops the
voltage.

I have since connected the video transmitter directly to the battery
power input on the power distribution board.

After a crash I broke one of the arms on the ZMR. After replacing the arm
I found that the motor on that arm no longer worked. I first spent some
time replacing the ESC thinking that the problem was in the ESC but after
swapping in a good ESC the motor still would not spin properly. I'm
guessing that one of the phases on the motor was burnt out.

I didn't have a spare 1806 2300KV so I order some DYS 2205 2100 thinking
that they should be fine on the ZMR. I'll replace the Afro 12A ESC's with
FVT 20A eventually.

After fixing all these problems the ZMR still intermittently keels over just
like it used to before. I've got new motors, new flight controller, new
power distribution board which leaves just the ESC as the culprit. I am
guessing that they fail when they get hot. It is very hard to replicate.


