#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushGLTexture.rb
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
#%Header } p8fMYjW3s0cDa/sAdyjJNg
# $Id: MushGLTexture.rb,v 1.4 2006/08/01 17:21:12 southa Exp $
# $Log: MushGLTexture.rb,v $
# Revision 1.4  2006/08/01 17:21:12  southa
# River demo
#
# Revision 1.3  2006/08/01 13:41:07  southa
# Pre-release updates
#

class MushGLTexture
# Class: MushGLTexture
#
# Description:
#
# This object contains and generates texture maps.
#
# Method: cDefine
#
# Defines a new texture.  
#
# Parameters:
#
# Parameters common to all texture types.
# 
# name - Name used to refer to the texture
# type - String that determines the class used to handle the texture, and thereby the
# parameters that can be used
# size - size of the texture in pixels
# storagetype - use "U8" if the texture is to be used for palette lookup, otherwise "GL" (the default)
# cache - Whether the texture should be cached or not.  Default is sensible for the type.
#
# Parameters for all skin textures.
#
# meshname - name of the mesh to be skinned
# palette - name of a texture to be used as a colour palette
# palettestart - start uv coordinates for palette lookup
# palettevector - uv vector defining the range of the palette
# scale - vector multiplier used to scale the 4D position before passing the skin function
# offset - vector offset added to the 4D position before passing to the skin function
#
# Parameters for CellNoise types.
#
# numoctaves - Number of octaves of noise, typically 4 to 12
# octaveratio - Amplitude multiplier between octaves, typically 0.5
#
# Parameters for Grid types.
#
# gridratio - vector defining the width 0.0 - 1.0 of the grid lines in each direction
# gridsharpness - vector defining the sharpness 0.0 - 1.0 of the grid lines in each direction
#
# Parameters for Radial types.
#
# Returns:
#
# None.
#
# Example:
#
# (example)
# MushGLTexture::cDefine(
#   :name          => 'attendant-tex',
#   :type          => 'CellNoise',
#   :meshname      => 'attendant',
#   :size          => [512, 512],
#   :palette       => 'palette1',
#   :palettestart  => [0,0.5],
#   :palettevector => [0.99,0],
#   :scale         => [0.1, 0.1, 0.1, 0.1],
#   :numoctaves    => 8,
#   :octaveratio   => 0.5)
# (end)
#
# Method: cPrecache
#
# Loads a texture into memory.  Usually, textures will load when they are first
# used.  This function loads the names textured immediately, prevently a delay
# during gameplay as the texture is loaded or generated.
#
# Parameters:
#
# name - name of the texture as passed to cDefine
#
# Returns:
#
# None.
#
# Example:
#
# (example)
# MushGLTexture::cPrecache('attendant-tex')
# (end)
#
# Group: Links
#- Implemetation file:doxygen/class_mush_g_l_texture.html

  def self.cDefine(paramHash)
    cRubyDefine(paramHash);
  end

  def self.cPrecache(texName)
    cRubyPrecache(texName);
  end
end
