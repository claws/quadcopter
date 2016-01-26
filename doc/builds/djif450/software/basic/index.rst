Basic
=====

This section of the documentation covers how I configured settings in the
Basic panel of the DJI NAZA-M LITE Assistant application.

.. toctree::
    :maxdepth: 1


Aircraft
--------

I selected the QuadRotorX configuration which was the second option.

.. code-block:: console

    M2  M1
     \ /
      X
     / \
    M3  M4


Mounting
--------

In the hardware section I mentioned that I had set up the MC in the centre
of the bottom plate with the line on the MC pointing out the nose of the
multi-rotor. This is my best attempt at guessing the quadcopters centre of
gravity.

I have the GPS unit mounted which requires knowledge of its offset from the
centre of gravity to perform correctly.

I originally had the GPS puck mounted on the carbon rod which set it up
about 6cm from the top plate. After some early acrobatitcs trials it had
been easily ripped off from a hard crash. I have since discarded the
carbon rod and now mount it on the rear right strut using double sided tape.
This reduces the likelyhood of damage to the GPS unit.

The offset measurements I'm using for the GPS unit are:

======  =====
Co-ord  Dist
======  =====
X       -8 cm
Y        8 cm
Z       -4 cm
======  =====


RC
---

I set the Receiver Type to Traditional.

When the transmitter has been successfully bound to the receiver then moving
the control sticks will result in the sliders moving in the Command Sticks
Calibration area.

I chose to leave the REV/NORM settings set to NORM and made an reversing
changes on the transmitter.

.. note::

    If you modify and channel settings (especially the throttle) you should
    re-bind the receiver so that the failsafe throttle setting is properly
    set.


Gain
----

The default gain settings seem to work fine for my setup. I did briefly mess
around with them but reverted back to the default values.

=========  =====
Basic      Value
=========  =====
Pitch      145%
Roll       145%
Yaw        150%
Vertical   130%
=========  =====

=========  =====
Attitude   Value
=========  =====
Pitch      130%
Roll       130%
=========  =====
