#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushDisplacement.rb
#
# Author Andy Southgate 2006-2007
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
#%Header } uJU47stnqblaC6/+wVEgSw
# $Id: MushDisplacement.rb,v 1.3 2006/08/01 17:21:11 southa Exp $
# $Log: MushDisplacement.rb,v $
# Revision 1.3  2006/08/01 17:21:11  southa
# River demo
#
# Revision 1.2  2006/08/01 13:41:06  southa
# Pre-release updates
#

class MushDisplacement
# Class: MushDisplacement
#
# Description:
#
# This object contains an offset vector, a rotation and a scale vector.
# When the displacement is applied to a vertex, the vertex becomes:
#: offset + rotation applied-to (vertex elementwise-multiplied-by scale)
#
# 
# Method: new
#
# Creates a MushDisplacement object
#
# Parameters:
#
# offset - <MushVector> offset
# rotation - <MushRotation> rotation
# scale - either a <MushVector> or single value (which is converted to <MushVector.new>(value,value,value,value)
#
# Parameters may be supplied as a hash or parameter list.
#
# Returns:
#
# New MushDisplacement object
#
# Default:
#
# The default constructor creates the identity, i.e. a displacement which has no effect.
#
# Example:
#
# (example)
#   disp1 = MushDisplacement.new()
#
#	disp2 = MushDisplacement.new(
#     :offset => MushVector.new(1,0,0,0),
#     :rotation => MushTools.sRotationInZWPlane(Math::PI/2),
#     :scale => 0.3)
#
#	disp3 = MushDisplacement.new(
#     :scale => MushVector.new(0.5,1,1,1))
# (end)
#
# Group: Links
#- Wrapper file:doxygen/class_mush_mesh_ruby_displacement.html
#- Implemetation file:doxygen/class_mush_mesh_displacement.html

end

