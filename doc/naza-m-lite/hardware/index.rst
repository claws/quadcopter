Hardware
========

This section of the documentation covers how I installed the MC and the
associated GPS receiver, LED status device and connected the Spektrum AR610
receiver that came with the Spektrum DX6i transmitter.


VU
---

The VU device monitors the battery Voltage and provides a regulated power
feed to the MC.

The VU device can be connected to a variety of batteries from a 2S (7.2V) to
a 6S (26.0V). I have a 2200mAh 3S battery.

The VU module connects to the X3 port on the MC.


MC
---

The Main Controller (MC) is the brains of the flight system. The MC connects
to the motor controllers (ESC) and the remote control receiver.

The MC has a built-in Inertial Measurement Unit (IMU) that consists of one
3-axis accelerometer, one 3-axis gyroscope and a barometer for sensing the
attitude and altitude.

The MC should be placed as close as possible to the center of the frame. The
line on the top of the MC should be aligned with the center line of the craft
and should be pointing to the nose. This will result in the motor ports facing
the front of the craft.

The MC came with lots of 3M double sided tape strips which I used to stick it
in place to the F450 base plate. I connected the motor wires before sticking
the MC in place.

GPS
---

The GPS/Compass module provides the MC with position and direction information.

The NAZA logo marked on the module should face the sky and the orientation
arrow should point forward.

The GPS/Compass module came with a little carbon rod and two end pieces. I
glued the end pieces to the carbon rod and stuck the GPS/Compass module to the
top using a piece of 3M double sided tape. I then secured the base to one of
the rear facing motor struts using the strut screws. This placed it towards
the back of the craft close to the EXP port on the MC that it plugs in to. All
the loose cable was secured with cable ties to make it tidy.


Binding
-------

Follow the bind procedure detailed in the section :ref:`binding-receiver-label`.

Now that the receiver is bound the actions on the transimtter will be relayed
to the receiver and passed on to the MC. We can now start configuring the
transmitter settings.


Receiver Connection Configuration
---------------------------------

==========  =============
MC Channel  AR610 Channel
==========  =============
A           AILE
E           ELEV
T           THRO
R           RUDD
U           GEAR
X1
X2          AUX1
X3
==========  =============

My F450 came with red and white motor struts. There was no instruction about
which color should be used for the front and the rear and I didn't find any
common convention from some brief internet searches. I used the white struts
for the two front motors and the red struts for the two rear motors.

Propellers
----------

The F450 is a QuadRotorX configuration and when coupled with the NAZA M the
motor numbering is as follows:

.. code-block:: console

    2   1
     \ /
      X
     / \
    3   4


=====  =========  ==========
Motor  Direction  Prop Color
=====  =========  ==========
1      CCW        Silver
2      CW         Black
3      CCW        Silver
4      CW         Black
=====  =========  ==========

Discuss how to check the motors are turning the correct way using a small
piece of paper. Switch two of the ESC wires to alter the direction if
necessary.


Battery Charger
---------------

I have purchased a Casal C66 battery charger. This takes a DC input anywhere
from 11 - 30V. I can easily use this charger at home and, more importantly,
I can take this charger along with a small 12V battery to the park so I can
charge a battery while I'm flying with the other one.

I cut the end off the fly-lead and soldered on a connector matching my
batteries.
