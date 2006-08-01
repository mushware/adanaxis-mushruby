#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushMesh.rb
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
#%Header } rgDp43nH+M8aNq9yI8rD9Q
# $Id: MushMesh.rb,v 1.3 2006/08/01 13:41:08 southa Exp $
# $Log: MushMesh.rb,v $
# Revision 1.3  2006/08/01 13:41:08  southa
# Pre-release updates
#

class MushMesh
# Class: MushMesh
#
# Description:
#
# This object contains a 4D mesh definition, including vertices, faces, facets,
# together with objects which define how the mesh is generated.
#
# Example:
#
# (example)
# mesh = MushMesh.new('mymesh')
# mesh.mAddBase(MushBasePrism.new( ... ))
# mesh.mAddBaseDisplacement(MushDisplacement.new( ... ))
# mesh.mAddExtruder(MushExtruder.new( ... ))
# mesh.mAddExtruder(MushExtruder.new( ... ))
# mesh.mAddMaterial('material1')
# mesh.mMake
# (end)
#
# Method: new
#
# Creates a new, empty mesh object.  
#
# Parameters:
#
# Mesh name.
#
# Returns:
#
# New MushMesh object.
#
# Default:
#
# The default constructor creates an empty mesh.
#
# Method: mMake
#
# Creates the mesh, based on the base and extruders, etc. added.  Must be called
# before the mesh can be used.
#
# Parameters:
#
# None
#
# Method: mAddBase
#
# Adds a MushBase object to the mesh.  This is used as the base object.  Typically
# the base object is simple and its faces are extruded to produce a more complex mesh.
#
# Parameters:
#
# object - Subclass of <MushBase>
#
# Method: mAddBaseDisplacement
#
# Adds a MushDisplacement object to the mesh.  This is applied to the base object
# to position and scale it.
#
# Parameters:
#
# object - <MushDisplacement>
#
# Method: mAddExtruder
#
# Adds a <MushExtruder> object to the mesh.  Extrusions will be applied in the
# order in which they are added.
#
# Parameters:
#
# object - <MushExtruder>
#
# Method: mAddMaterial
#
# Adds a <MushMaterial> reference to the mesh.  Materials define the material (textures,
# lighting, etc) to be used when the mesh is rendered.
#
# Parameters:
#
# name - Name of the material to be added, previously created using <MushMaterial.cDefine>
#
# Method: mBillboardSet
#
# Sets the billboard flag for the mesh.  If true, the mesh will always be rendered
# with the xy plane facing the camera.
#
# Parameters:
#
# billboard - true or false
#
# Group: Links
#- Wrapper file:doxygen/class_mush_mesh_ruby_mesh.html
#- Implemetation file:doxygen/class_mush_mesh4_mesh.html
end
