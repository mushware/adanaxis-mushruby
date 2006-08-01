#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushGame.rb
#
# Author Andy Southgate 2006
#
# This file contains original work by Andy Southgate.  The author and his
# employer (Mushware Limited) irrevocably waive all of their copyright rights
# vested in this particular version of this file to the furthest extent
# permitted.  The author and Mushware Limited also irrevocably waive any and
# all of their intellectual property rights arising from said file and its
# creation that would otherwise restrict the rights of any party to use and/or
# distribute the use of, the techniques and methods used herein.  A written
# waiver can be obtained via http://www.mushware.com/.
#
# This software carries NO WARRANTY of any kind.
#
##############################################################################
#%Header } BE+JCzTHZq0IXlCcJa0Law
# $Id: MushGame.rb,v 1.3 2006/08/01 13:41:07 southa Exp $
# $Log: MushGame.rb,v $
# Revision 1.3  2006/08/01 13:41:07  southa
# Pre-release updates
#

class MushGame < MushObject
# Class: MushGame
#
# Description:
#
# This object supplies a number of utility functions used to control the underlying
# game.
#
# Method: cKeySymbolToName
#
# Provide the name string corresponding to a key value.  
#
# Parameters:
#
# key value - Key value - one of the key values from MushKeys.
#
# Returns:
#
# String containing a name for the key.
#
# Method: cGameModeEnter
#
# Exits menu mode and enters game mode.  Used to resume the game after using the menu.
#
# Parameters:
#
# None.
#
# Returns:
#
# None.
#
# Method: cNewGameEnter
#
# Exits menu mode and enters game mode, discarding the current game and creating a new one.
#
# Parameters:
#
# None.
#
# Returns:
#
# None.
#
# Method: cQuit
#
# Quits the application.
#
# Parameters:
#
# None.
#
# Returns:
#
# None.
#
# Method: cAxisKeySymbol
#
# Parameters:
#
# axis number - Axis key number.
#
# Returns:
#
# Key symbol value (a MushKeys constant) configured for that axis.
#
# Method: cAxisKeySet
#
# Sets the configured key for an axis.
#
# Parameters:
#
# key value - Key symbol value.
# axis number - Axis key number.
#
# Returns:
#
# None.
#
# Method: cAxisSymbol
#
# Returns the configured control axis (e.g. joystick x) for a player axis (e.g. left/right).
#
# Parameters:
#
# axis number - Axis number.
#
# Returns:
#
# Axis symbol value configured for the supplied axis number.
#
# Method: cAxisSet
#
# Sets the configured axis for an axis number.
#
# Parameters:
#
# axis symbol - Axis symbol value.
# axis number - Axis number.
#
# Returns:
#
# None.
#
# Method: cAxisName
#
# Returns the name for an axis symbol.
#
# Parameters:
#
# axis symbol - Axis symbol value.
#
# Returns:
#
# Name string for that axis.
#
# Method: cKeySymbol
#
# Returns the configured key value for a control key.
#
# Parameters:
#
# key number - Key number.
#
# Returns:
#
# Key symbol value configured for the supplied key number.
#
# Method: cKeySet
#
# Sets the configured key for a key control.
#
# Parameters:
#
# key symbol - Key symbol value.
# key number - Key number.
#
# Returns:
#
# None.
#
# Method: cNumJoysticks
#
# Returns the number of joysticks connected to the system.
#
# Parameters:
#
# None.
#
# Returns:
#
# Number of joysticks.
#
# Method: cControlsToDefaultSet
#
# Reloads the default control configuration.
#
# Parameters:
#
# None.
#
# Returns:
#
# None.
#
# Method: cDisplayModeString
#
# Returns a string describing the the current display mode.
#
# Parameters:
#
# None.
#
# Returns:
#
# A string usable to display the mode details, e.g. '640x480 window'.
#
# Method: cPreviousDisplayMode
#
# Change to the previous display mode number.
#
# Parameters:
#
# None.
#
# Returns:
#
# None.
#
# Method: cNextDisplayMode
#
# Change to the next display mode number.
#
# Parameters:
#
# None.
#
# Returns:
#
# None.
#
# Method: cDisplayReset
#
# Resets the display, using a newly configured mode if necessary.
#
# Parameters:
#
# None.
#
# Returns:
#
# None.
#
# Method: cAudioVolume
#
# Reader for the configured audio volume.
#
# Parameters:
#
# None.
#
# Returns:
#
# Volume, range 0..100.
#
# Method: cAudioVolumeSet
#
# Writer for the configured audio volume.
#
# Parameters:
#
# volume - New volume, range 0..100.
#
# Returns:
#
# None.
#
# Method: cMusicVolume
#
# Reader for the configured music volume.
#
# Parameters:
#
# None.
#
# Returns:
#
# Volume, range 0..100.
#
# Method: cMusicVolumeSet
#
# Writer for the configured music volume.
#
# Parameters:
#
# volume - New volume, range 0..100.
#
# Returns:
#
# None.
#
# Method: cTextureDetail
#
# Reader for the configured texture detail.
#
# Parameters:
#
# None.
#
# Returns:
#
# Texture detail, range 0..4.
#
# Method: cTextureDetailSet
#
# Writer for the configured texture detail.
#
# Parameters:
#
# detail - New texture detail, range 0..4
#
# Returns:
#
# None.
#
# Method: cMouseSensitivity
#
# Reader for the configured mouse sensitivity.
#
# Parameters:
#
# None.
#
# Returns:
#
# Configured mouse sensitivity., range -10.0 .. 10.0.
#
# Method: cMouseSensitivitySet
#
# Writer for the configured mouse sensitivity.
#
# Parameters:
#
# sensitivity - New texture detail, range -10.0 .. 10.0
#
# Returns:
#
# None.
#
# Method: cBrightness
#
# Reader for the configured brightness.
#
# Parameters:
#
# None.
#
# Returns:
#
# Configured brightness, range 0..2.0.
#
# Method: cBrightnessSet
#
# Writer for the configured brightness.
#
# Parameters:
#
# brightness - New brightness, range 0..2.0
#
# Returns:
#
# None.
#
# Method: cGameDialoguesLoad
#
# Loads a game dialogues file from the specified filename.
#
# Parameters:
#
# filename - full filename of game dialogues file
#
# Returns:
#
# None.
#
# Method: cNamedDialoguesAdd
#
# Adds named dialogues to thse currently showing.
#
# Parameters:
#
# names - regular expression used to select dialogues by name
#
# Returns:
#
# None.
#
# Method: cSoundDefine
#
# Associates a sound name with a filename.
#
# Parameters:
#
# name - name of sound
# filename - full filename of sound file (e.g. WAV)
#
# Returns:
#
# None.
#
# Method: cSoundStreamDefine
#
# Associates a sound stream name with a filename.
#
# Parameters:
#
# name - name of sound stream
# filename - full filename of streamable sound file (e.g. OGG)
#
# Returns:
#
# None.
#
# Method: cPackageID
#
# Returns the ID string of the package.
#
# Parameters:
#
# None.
#
# Returns:
#
# Package ID string.
#
# Group: Links
#- Wrapper file:doxygen/class_mush_game_ruby.html
end
