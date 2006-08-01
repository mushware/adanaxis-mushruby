#%Header {
##############################################################################
#
# File: data-adanaxis/mushruby/MushExtruder.rb
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
#%Header } 6516ycM1nUZfIXeTu6yMPw
# $Id$
# $Log$

# Other methods provided by MushMeshRubyExtruder.cpp
class MushExtruder

# Class: MushExtruder
#
# Description:
#
# This object specifies an extrusion.  An extrusion is an operation on an object
# that takes one face and creates a 'tube' based on that face.  To use, the
# extruder should be added to a <MushMesh> object.
#
# Method: new
#
# Creates an extruder object, ready to add to a mesh.  
#
# Parameters:
#
# sourceface - Number of the face used for the base of this extrusion
# displacement - <MushDisplacement> applied to the source face to generate the extruded face
# displacement_velocity - <MushDisplacement> applied to displacement after each extrusion
# num_iterations - Number of times to copy and displace the face
# to_point - Whether the final step extrudes to a point
#
# Returns:
#
# New MushExtruder object
#
# Default:
#
# The default constructor creates an extrusion with which has no effect.
#
# Example:
#
# (example)
#   extruder1 = MushExtruder.new(
#     :sourceface => 0,
#     :displacement => MushDisplacement.new(
#       :offset => MushVector.new(1,0,0,0),
#       :rotation => MushTools.sRotationInZWPlane(Math::PI/2),
#       :scale => 1.0),
#     :displacement_velocity => MushDisplacement.new(MushVector.new(1,0,0,0), MushRotation.new, 0.5)
#     :num_iterations => 3,
#     :to_point => true
#   )
# (end)
#
# Group: Links
#- Wrapper file:doxygen/class_mush_mesh_ruby_extruder.html
#- Implemetation file:doxygen/class_mush_mesh_library_extruder.html

end
