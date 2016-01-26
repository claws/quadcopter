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

With this quad setup I am using the :ref:`25mw-immersionrc-video-transmitter-label`.


FPV Camera
----------

With this quad setup I am using the :ref:`hs1177-fpv-camera-label`.

To avoid any potential interference from the ESC on the main power bus I
decided to power the camera from the 5V regulated supply provided by the
video transmitter.


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

With this quad setup I am using the :ref:`fatshark-attitude-v3-goggles-label`.


