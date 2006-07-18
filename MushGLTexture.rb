
class MushGLTexture
# Class: MushGLTexture
#
# Description:
#
# This object contains and generates texture maps.
#
# Method: new
#
# Creates a new MushGLTexture object.  
#
# Parameters:
#
# Parameters common to all texture types.
# 
# name - Name used to refer to the texture
# type - String that determines the class used to handle the texture, and thereby the
# parameters that can be used
# size - [x, y] determines the size of the texture
# storagetype - use "U8" if the texture is to be used for palette lookup, otherwise "GL" (the default)
# cache - Whether the texture should be cached (true) or not.  Default depends on the type.
#
# Parameters must be supplied as a hash.
#
# Returns:
#
# New MushGLTexture object
#
# Default:
#
# The default constructor creates an object with zero-values positions and velocities.
#
# Example:
#
# (example)
# GLTexture1 = MushGLTexture.new
# GLTexture2 = MushGLTexture.new(
#   :position => MushVector.new(1,2,3,4),
#   :angular_position => MushTools.cRotationInXYPlane(Math::PI/2),
#   :velocity => MushVector.new(0,0,0,-0.3),
#   :angular_velocity => MushTools.cRotationInZWPlane(Math::PI/20)
# )
# GLTexture3 = MushGLTexture.new(
#   MushVector.new(1,2,3,4),
#   MushVector.new(0,0,0,-0.3),
#   MushTools.cRotationInZWPlane(Math::PI/2),
#   MushTools.cRotationInZWPlane(Math::PI/20)
# )
# (end)
#
# Method: position
#
# Returns:
#
# Position <MushVector>
#
# Method: velocity
#
# Returns:
#
# Velocity <MushVector>
#
# Method: angular_position
#
# Returns:
#
# Angular position <MushRotation>
#
# Method: angular_velocity
#
# Returns:
#
# Angular velocity <MushRotation>
#
# Method: position=
#
# Sets the position vector.
#
# Parameter:
#
# Position <MushVector>
# 
# Method: velocity=
#
# Sets the velocity vector.
#
# Parameter:
#
# Velocity <MushVector>
# 
# Method: angular_position=
#
# Sets the angular position element.
#
# Parameter:
#
# Angular position <MushRotation>
# 
# Method: angular_velocity=
#
# Sets the angular velocity element.
#
# Parameter:
#
# Angular velocity <MushRotation>
#
# Group: Links
#- Wrapper file:doxygen/class_mush_mesh_ruby_GLTexture.html
#- Implemetation file:doxygen/class_mush_mesh_GLTextureicity.html

  def self.cDefine(paramHash)
    cRubyDefine(paramHash);
  end

  def self.cPreCache(texName)
    cRubyPreCache(texName);
  end
end
