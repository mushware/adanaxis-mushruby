#%Header {
##############################################################################
#
# File: data-adanaxis/mushruby/MushGame.rb
#
# Author: Andy Southgate 2006
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
#%Header } 1MZt9XG7+fmqyI3xCEKfoA
# $Id$
# $Log$

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
# Group: Links
#- Wrapper file:doxygen/class_mush_game_ruby.html
end
