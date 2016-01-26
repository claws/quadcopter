Flight Controller
=================

This section contains information on flight controllers.


Modes
-----

Flight Controllers typically provide a few different modes of operation. These
have different names; some of the common names are manual, acro, angle,
horizon, rate, etc.

Lets use the Naze32 as the reference. It provides 3 different operating modes;
Angle, Horizon and Rate. If you are intending to flying a quad for acrobatics
you will want to be flying in Rate mode.


Rate Mode
+++++++++


This is the default mode that the Naze32 operates in. This mode is also
commonly referred to as Manual Mode or Acro Mode. Rate mode uses the input
from the gyro sensor along with the stick inputs and translates it into the
rate at which the quad rotates on that particular axis.

This mode provides pilots with fine control over the motion of the quad
allowing the pilot to perform banked turns and precise corrections needed to
get through small gaps.


Angle Mode
++++++++++

Angle mode provides attitude control preventing your quad from exceeding 50
degrees in any direction. It uses the accelerometer and the gyroscope to keep
the quad levelled.

Once you learn how to fly a quad you may only ever use this mode in an
emergency if you lose orientation. Beyond that it is quite limiting for flying
anything exciting.

Other flight controllers, such as DJI's NAZA, calls this mode Attitude Mode.
DJI's NAZA also provides another similar mode, GPS Attitude, which uses the
GPS position as another input to the levelling function.


Horizon Mode
++++++++++++

Horizon mode provides an operating mode between Angle mode and Rate mode. It
provides levelling stabilization while the pitch/roll stick is near center,
then rate mode at its endpoints.

This mode provides pilots with a stabilized flight but still perform rolls
and flips when really pushing on the pitch/roll stick.
