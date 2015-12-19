Transmitter
===========

In this section I describe how I configured the Spektrum DX6i to
control the NAZA-M LITE on my DJI F-450 multi-rotor drone.

The first step is to create a profile in one of the 9 available slots
in the DX6i's model memory.

Initial Setup
-------------

#. Power on the transmitter.
#. Press the Scroll button to bring up the ADJUST LIST menu.
#. Scroll to select the MODEL SELECT option and select a free slot.
#. Once the profile has loaded scroll to the end of the list of options and
   select SETUP LIST.
#. Set MODEL TYPE to ACRO.
#. Scroll back to List to go back to the previous menu.
#. Select MODEL NAME and give the model a description. I named mine ``DJI-F450``.

Now that we have a dedicated profile in the transmitter we can bind the receiver
to this transmitter.


.. _binding-receiver-label:

Binding Receiver
----------------

Insert the Bind plug into the BIND/BATT port of the AR610 receiver. Power up
the receiver. I powered it up using the throttle cable from the MC and
connected a battery to the MC via the VU device. The receiver starts to flash
with its orange LED. While holding the Trainer switch on I then powered on the
transmitter. The transmitter starts in binding mode and after a short while
the receiver stopped flashing and then the orange LED came on steady on the
receiver. This indicates that it has successfully bound with the transmitter.
Take power away from the receiver and then turn off the transmitter.

It is recommended that you bind the receiver twice. The binding procedure
locks in the throttle level setting that will be applied in the case that the
transmitter signal is lost.

The first bind establishes the communication channel from the transmitter
to the receiver so you can begin configuring your device. After you play
around with the various settings you may end up reversing one or more of the
channels. This may reverse the original throttle setting saved during the
initial bind. It is important to re-bind to ensure that the correct throttle
signal will be applied if the transmitter signal is lost.


Configure Transmitter
---------------------

It is best to connect the NAZA Assistant software while performing this
configuration step so that the results are immediately visible. So, connect
the MC with the NAZA Assistant software by plugging a USB cable from the PC
to the LED device. Power on the transmitter and check that the transmitter
stick controls move the channel sliders on the NAZA Assistant's Basic -> RC
display.

Control Sticks
++++++++++++++

Moving the Aileron and Rudder control sticks on the transmitter resulted in
the opposite action happening at the MC. This can be resolved by reversing the
direction in the NAZA Assistant software or on the transmitter. I made a
choice to keep the software assistant channel settings in the NORM mode so I
reversed the AILE and RUDD channels on the transmitter.

#. Enter the ADJUST LIST menu by clicking the scroll button.
#. Enter the SETUP LIST menu.
#. Enter the REVERSE menu.
#. Reverse the AILE channel.
#. Reverse the RUDD channel.
#. Exit the REVERSE menu.
#. Exit the SETUP LIST menu.

Control Modes
+++++++++++++

Now we come to configuring the MC Control Mode. The DX6i has a number of 2
position switches but the Control Mode has 3 states so really requires a 3
position switch to move between Manual, Atti and GPS attitude control modes.

We will have to use more than one switch on the transmitter to create a
three position effect.

The configuration that we're aiming for is to be in GPS Attitude mode when all
the switches are off. Flipping the GEAR switch on will move the Control Mode
into the Manual mode. So, when all switches are off we can use the GEAR switch
to move between GPS and Manual. If we now switch the MIX switch on we can use
the GEAR switch to move between GPS and Attitude. Turning the ELEV D/R switch
on in any of the modes will move the Control Mode into the Failsafe mode.

Assuming the transmitter is on and the correct profile is loaded, let's get
going...

#. Enter the ADJUST LIST menu by clicking the scroll button.
#. Enter the SETUP LIST menu.
#. Enter the REVERSE menu.
#. Reverse the GEAR channel.
#. Exit the REVERSE menu.
#. Scroll to the end and select ADJUST LIST menu.
#. Enter TRAVEL ADJ menu.
#. Ensure that the GEAR switch on the transmitter is off.
#. Monitor the NAZA Assistant's Basic -> RC -> Control Mode Switch display
   and modify the GEAR Travel Adjust to move the Control Mode selection to GPS
   (the GPS item will be highlighted blue). I ended up using +85%.

    .. code-block:: console

        TRAVEL ADJ

        THROv100% AILE>100%
        ELEV^100% RUDD>100%
        GEAR^ 85% FLAP^100%

#. Now flip the GEAR switch on. The goal here is to adjust the GEAR settings
   so that the Control Mode goes into Manual mode. I ended up using -75%.

    .. code-block:: console

        TRAVEL ADJ

        THRO^100% AILE>100%
        ELEV^100% RUDD>100%
        GEARv 75% FLAP^100%

#. Exit the TRAVEL ADJ menu.
#. Enter the MIX1 menu. The goal here is to alter the settings such that
   when the MIX switch is off the GEAR switch moves between GPS and Manual
   and when the MIX switch is on the GEAR switch moves between GPS and
   Attitude modes. Flip the MIX and GEAR switch on and modify the settings
   until the Attitude mode is selected.

    .. code-block:: console

             MIX1

        GEAR>   GEAR ACT
        Rate D    0% U -106%
        SW MIX      TRIM INH

#. Exit the MIX1 menu.
#. Enter the MIX2 menu. The goal here is to configure the settings such that
   the Failsafe mode is selected irrespective of whether the Control Mode was
   GPS, Attitude or Manual.

    .. code-block:: console

             MIX2

        GEAR -> GEAR ACT
        Rate D - 50% U - 53%
        SW ELE D/R  TRIM INH

#. Exit the MIX2 menu.

For reference, I found the following video helpful for configuring parts of
my system though I managed to simplify it a little by not needing any sub-trim
modifications. This video did not cover setting the IOC configuration.

.. raw:: html

    <iframe width="560" height="315" src="https://www.youtube.com/embed/Obewk3RnPs0" frameborder="0" allowfullscreen></iframe>


Intelligent Orientation Control
+++++++++++++++++++++++++++++++

I used the flaps channel to configure the IOC settings.
The IOC settings supports 3 modes; Home Lock, Course Lock and Off. Once
again the DX6i only has 2 position switches so I'll be using the FLAP switch
to alternate between Off and Home Lock. I can't really see me using the
Course Lock option so this is not a great loss.

#. Enter the ADJUST LIST menu by clicking the scroll button.
#. Enter FLAPS menu.

    .. code-block:: console

             FLAPS

              FLAP  ELEV
        NORM  v 86      0
        LAND  ^ 80      0


Test Configuration
------------------

With all the transmitter switches off, power on the transmitter and connect
the MC to the NAZA Assistant software using the USB cable so we can verify the
correct Control Modes are being used.

Monitor the NAZA Assistant's Basic -> RC display. By default, with the GEAR
switch in the off position, the Control Mode should indicate GPS mode. Flip
the ELEV D/R switch and the Control Mode should move to Failsafe. Turn the
ELEV D/R switch off, the mode should return to GPS.

Turning the GEAR switch to on should move the Control Mode to Manual. Flip the
ELEV D/R switch and the Control Mode should move to Failsafe. Turn the ELEV
D/R switch off, the mode should return to Manual.

Turn the Gear switch off again to return to GPS.

Now Flip the Mix switch on. The Control Mode should remain in GPS Mode.

Flip the GEAR switch on and the mode should now change to Attitude Mode. Flip
the ELEV D/R switch and the Control Mode should move to Failsafe. Turn the
ELEV D/R switch off, the mode should return to Attitude.

With this test we can see how to change into any of the Control Modes and how
the ELEV D/R switch changes MC into Failsafe mode from any of the GPS, ATTI or
Manual control modes.

In summary:

.. code-block:: console

    GPS:      GEAR 0  MIX:0
    Manual:   GEAR 1  MIX:0
    GPS:      GEAR 0  MIX:1
    Attitude: GEAR 1  MIX:1
    Failsafe: ELEV D/R


Now move to the NAZA Assistant's Advanced -> IOC display. With the FLAP switch
in the off position the IOC mode should show that it is in the Off mode. Flip
the FLAP switch and the IOC mode should change to the Home Lock mode.


Configure Receiver Failsafe Settings
------------------------------------

The failsafe settings will be applied when the receiver loses connection with
the transmitter.

With the transmitter turned off set the throttle level to about 30-40%. This
throttle level will become the failsafe setting applied by the receiver when
it detects a loss of connection with the transmitter.

The Spektrum AR610 receiver that I'm using apparently only supports failsafe
settings on the throttle channel. Other devices can support other channels.

Follow the bind procedure detailed in the section :ref:`binding-receiver-label`.
