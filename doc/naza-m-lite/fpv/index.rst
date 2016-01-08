FPV
===

This section covers how I added a First Person View (FPV) capability to
my quadcopter.


Equipment
---------

- ImmersionRC 25mW 5.8GHz Video Transmitter
- HS1177 1/3 Sony Super HAD II CCD, format: PAL, TV Lines: 600, Lens: 2.8mm, Power 5-22V
- Mini S-OSD On-Screen Display (OSD)
- FatShark Attitude V3 Goggles.


Video Transmitter
-----------------

I am using an ImmersionRC 25mW 5.8GHz Video Transmitter. The dip switches
were covered by the clear heat shrink so I used a craft knife to gently
trim it away so I could change the switch settings when needed.

Switch 4 is unused. The dip switch to channel mapping is as follows:

=======  ===============  === === === ===
Channel  Frequency (GHz)  1   2   3   4
=======  ===============  === === === ===
1        5.74             On  On  On  X
2        5.76             Off On  On  X
3        5.78             On  Off On  X
4        5.80             Off Off On  X
5        5.82             On  On  Off X
6        5.84             Off On  Off X
7        5.86             On  Off Off X
=======  ===============  === === === ===

This particular 25mW unit does not quite allow me to get down to the end of
the local park so I am ordering a 200mW unit.



FPV Camera
----------

I am using the Sony HS1177 Super HAD II CCD camera. It supports power from
5-22V and has a 2.8mm lens which provides approximately 130 degree field of
view.  I chose it because it seems to have a good reputation in the FPV
community.

I had a number of choices for powering the camera. I could connect it directly
from the main battery or from the 5V output from the Video Transmitter or even
from the balance plug on the battery.

To avoid any potential interference from the ESC on the main power bus I
decided to power the camera from the 5V regulated supply provided by the
video transmitter.


Camera Setup
++++++++++++

The HS1177 FPV camera I'm using came with a short On-Screen Display (OSD)
controller cable with some connectors on the end. These connectors are
common for security cameras and can be `confusing <http://paulnurkkala.com/surveilzone-hs1177-sony-600tvl-tuning-cable-modifications/>`_ for the lay-person from the
quadcopter community.

I had a BNC to RCA adapter laying around from an old security camera setup.
This converts the video signal onto a connector style that I can more
easily connect to other equipment such as a TV. I also had a reconfigurable
wall-wart power adapter that had the appropriate barrel power connector.

The only modification I made to the camera was to set the Wide Dynamic
Range setting to ON as this prevents very bright objects (such as clouds)
from causing other areas (e.g. the ground) in the view from becoming very
dark.

.. code-block:: console

    Exposure -> DWDR --> ON


.. _mini-s-osd-label:

On Screen Display (OSD)
-----------------------

An on screen display overlays various bits of information, such as the
battery voltage, onto the video image that provides additional situational
awareness.

After spending some time searching around on the Internet for an OSD that
would work well with the NAZA Lite I ended up purchasing a Mini-S OSD from
gadgetextreme on eBay.

The Mini-S OSD provides other useful information onto the video display too
such as GPS position, artificial horizon, etc. The status LED connected to
the NAZA already provides a low battery status but when flying FPV I can't
see that.

I found that someone had posted a useful installation guide on Youtube which
made my installation pretty straight forward.

.. raw:: html

    <iframe width="560" height="315" src="https://www.youtube.com/embed/kSIJSbcyrLw" frameborder="0" allowfullscreen></iframe>

Disconnect the NAZA LED cable from the NAZA Lite and connect it to the mini-S
LED input. Use one of the supplied cables to connect from the mini-S LED output
back to the NAZA's LED input. The connector is not quite the same as the
standard DJI connector but it fits in. Keep the black wire to the left when
connecting it back to the NAZA. This cable allows the mini-S to obtain
the Voltage and perhaps the mode (Manual, Attitude, GPS).

Disconnect the NAZA GPS cable from the NAZA Lite and connect it to the mini-S
GPS input. Use one of the supplied cables to connect from the mini-S GPS
output back to the NAZA's EXP input. Again, the connector is not quite the
same as the  standard DJI connector but it fits in. Keep the black wire to the
left when connecting it back to the NAZA.This cable allows the mini-S to
obtain the latitude and longitude.

Connect the camera's video signal to the mini-S VIDEO connector. The cable
looms are all common so the colors are not representative of function. In this
case the red wire is ground and the black wire should be connected to the
camera's video signal.

Connect the Mini-S video out to the Video Tranmitter's video input.

The mini-S has a connector labelled TEST. Use one of the cable looms to
connect from the TEST connector to the battery. Again, the cable looms are all
common so the colors are not representative of function. In this case yellow
is ground and white should connect to the battery positive.

There should now be one cable loom remaining which has green, orange, white,
yellow, red and black wires. Connect this to the remaining connector on the
mini-S.

To get the artificial horizon to work connect the NAZA's F1 and F2 to the
mini-S using the red and black wires. The red wire connects to the NAZA's
F1 and the black goes tothe NAZA's F2.

The white and yellow wires connect to the throttle so it can be shown on the
OSD. This seemed a little redundant (my fingers are on the throttle) so I am
not using these wires.

The orange wire can be connected to a spare channel on the receiver to change
the OSD display theme. I only have a 6 channel receiver so will not be using
this wire. Also, it is unlikely I would ever want to change the theme. I will
just set one up that I like and use it.

The green wire can be connected to the RSSI output of the receiver however my
receiver does not support this so I am not using this wire.

A FTDI connection can be made if the headers are soldered on. I have not yet
needed to make any changes so these remain untouched.

Once it was all wired up I tested it out and it mostly worked fine though I
had forgotten to enable the Gimbal F1 and F2 servo channels so the artificial
horizon was not working. Once I fixed that by enabling the Gimbal control via
the Naza Software Assistant it was all working as expected.

.. note::

    Remember to enable the Gimbal outputs in the NAZA Software Assistant so
    that the Mini-S OSD can project the artifical horizon. The values may
    also need some minor tweaks to ensure the horizon line is perfectly
    flat.

One thing I noted was that the OSD connectors that take the LED and GPS inputs
are quite loose. These will likely require some hot glue to tack them in more
securely.


FPV Goggles
-----------

I have the FatShark Attitude V3 Goggles. These googles are light weight,
support adjustable inter pupil distance (IPD) and come with some accessories
such as:

 - a 7.4V battery,
 - a charging cable,
 - a Spironet right hand polarised antenna,
 - an AV cable,
 - a modular 5.8GHz receiver supporting ImmersionRC/Fatshark, A, E and
   Race bands.

It also has a built in head tracker that I'll never use and is capable of
showing a 3D video.

Using the dip switches on the receiver the various bands can be selected.

======  ====  =====================  ====  ====  ====  ====  ====  ====  ====  ====
Switch  Band  Name                   CH1   CH2   CH3   CH4   CH5   CH6   CH7   CH8
======  ====  =====================  ====  ====  ====  ====  ====  ====  ====  ====
0-0     1     Fat Shark/ImmersionRC  5740  5760  5780  5800  5820  5840  5860  5880
0-1     2     Band E                 5705  5685  5665  5645  5885  5905  5925  5945
1-0     3     Band A                 5865  5845  5825  5805  5785  5765  5745  5725
1-1     4     RaceBand               5658  5695  5732  5769  5806  5843  5880  5917
======  ====  =====================  ====  ====  ====  ====  ====  ====  ====  ====

