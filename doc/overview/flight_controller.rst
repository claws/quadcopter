Flight Controller
=================

This section contains information on flight controllers.



Buzzer
------

Fitting a buzzer is useful for a number of reasons. A buzzer provides a
simple mechanism to warn you of low battery. Just fly it past you every so
often. This is especially useful if you don't have an OSD.

When a buzzer is connected, three beeps immediately after powering the board
means that the gyroscope calibration has completed successfully.

If you arm/disarm via the control stick, holding the stick in the disarm
position will sound a repeating tone. This can be used as a lost-model locator
so long as the quad still has a functioning receiver.


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
commonly referred to as `Manual` or `Acro` mode. Rate mode uses the input
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


Super Expo Mode
+++++++++++++++

This setting was intially called `acro plus` but that term has since been
deprecated in favour of `super expo`.

At high stick inputs the flight controller applies a proportion of the
requested stick input.This mode is used in conjunction with a configuration
setting called acro_factor. If `acro_plus` factor is 50, then at full stick
deflection the PID authority is reduced by 50% and input control is switched
directly to the gyros. This results in fast rolls and importantly, just as
much control at all other times.

.. code-block:: console

    set super_expo_factor = 50


PIDS
----

PID stands for Proportion, Integrate, Derivative control system approach.

PID 1
+++++

This is the 32bit rewrite of the original MultiWii 8bit flight control
algorithm.

PID 2
+++++

This PID setting is called LuxFloat.
