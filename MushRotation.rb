#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushRotation.rb
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
#%Header } K9QqjlsCJmTDxUcQyNrKaw
# $Id: MushRotation.rb,v 1.3 2006/08/01 13:41:08 southa Exp $
# $Log: MushRotation.rb,v $
# Revision 1.3  2006/08/01 13:41:08  southa
# Pre-release updates
#

class MushRotation
# Class: MushRotation
#
# Description:
#
# This object contains a 4D rotation, which can be used to rotate vectors or other rotations.
#
# Method: new
#
# Creates a new MushRotation object.
#
# Parameters:
#
# None.
#
# Returns:
#
# New MushRotation object.
#
# Default:
#
# The MushRotation object returned by new is the identity i.e. provides zero rotation.
# Non-zero rotations can be obtained from the <MushTools> object.
#
# Example:
#
# (example)
# rotation1 = MushTools.cRotationInXYPlane(Math::PI/2)
# (end)
#
# Method: mRotate
#
# Applies the rotation to another object.
#
# Returns:
#
# None.
#
# Paramaters:
#
# This method takes either a vector or another rotation as a parameter.  If the parameter
# is a <MushVector>, it rotates the vector.  If another <MushRotation>, the parameter
# is set to a combination of the original rotation followed by this rotation.
#
# Example:
#
# (example)
# vec1 = MushVector.new(1,0,0,0)
# rot1 = MushTools.cRotationInXYPlane(Math::PI/2)
# rot1.mRotate(vec1)
# # vec1 is now (0,1,0,0)
#
# vec1 = MushVector.new(1,0,0,0)
# rot1 = MushTools.cRotationInXYPlane(Math::PI/2)
# rot2 = MushTools.cRotationInYZPlane(Math::PI/2)
# rot2.mRotate(rot1)
# # rot1 is now a rotation that applies the original rot1 then rot2
# rot1.mRotate(vec1)
# # vec1 is now (0,0,1,0)
# (end)
#
# Method: ==
#
# Tests whether two rotations are equal.
#
# Returns:
#
# Boolean.
#
# Group: Links
#- Wrapper file:doxygen/class_mush_mesh_ruby_rotation.html
#- Implemetation file:doxygen/class_mush_mesh_quaternion_pair.html
end
