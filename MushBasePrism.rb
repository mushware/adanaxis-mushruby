#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushBasePrism.rb
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
#%Header } RKI6l8QOCkX3Pdj1iShVEw
# $Id: MushBasePrism.rb,v 1.2 2006/08/01 13:41:06 southa Exp $
# $Log: MushBasePrism.rb,v $
# Revision 1.2  2006/08/01 13:41:06  southa
# Pre-release updates
#

require 'MushBase.rb'

# Other methods provided by MushMeshRubyBasePrism.cpp
class MushBasePrism < MushBase
# Class: MushBasePrism
#
# Description:
#
# This object is used as a base shape for a <MushMesh> object, and provides a prism
# based on a regular polygon.  A 2D polygon is created with the requested number of sides,
# within a circle of radius 0.5.  This polygon is extruded to produce a 3D prism,
# and that 3D prism is again extruded to generate the 4D prism.
#
# Face numbering is as follows
#
# 0 - w = -0.5
# 1 - w = +0.5
# 2 - z = -0.5
# 3 - z = +0.5
# 4 - x = +k
# 5..(order+3) - rotating anticlockwise in the xy plane
#
# Example for order = 4
#
# 5 - y = +k
# 6 - x = -k
# 7 - y = -k
#
# where k becomes 0.5/sqrt(2) to contain the square within radius 0.5.
#
# Method: new
#
# Creates a BasePrism object, ready to add to a mesh.  
#
# Parameters:
#
# order - Number of sides of the initial polygon
#
# The parameter can be supplied as a single value or hash
#
# Returns:
#
# New MushBasePrism object
#
# Default:
#
# There is no default constructor.  The order parameter must be provided.
#
# Example:
#
# (example)
#   baseprism1 = MushBasePrism.new(5)
#   baseprism2 = MushBasePrism.new(:order => 5)
# (end)
#
# Group: Links
#- Wrapper file:doxygen/class_mush_mesh_ruby_base_prism.html
#- Implemetation file:doxygen/class_mush_mesh_library_prism.html

end
