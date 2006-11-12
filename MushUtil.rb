#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushUtil.rb
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
#%Header } G8/i/is1oqNZv+h/MjwG7A
# $Id: MushUtil.rb,v 1.3 2006/11/01 13:04:20 southa Exp $
# $Log: MushUtil.rb,v $
# Revision 1.3  2006/11/01 13:04:20  southa
# Initial weapon handling
#
# Revision 1.2  2006/10/13 14:21:25  southa
# Collision handling
#
# Revision 1.1  2006/09/30 13:46:32  southa
# Seek and patrol
#

class MushUtil < MushObject
# Class: MushUtil
#
# Description:
#
# Provides a number of utilities for <MushVector> and <MushRotation>
# manipulation.  It supplies only singleton methods.
#
# Method: cRotateAndSeek
#
# Rotates and moves and object's <MushPost> to point at and move
# toward a point.  
#
# Parameters:
#
# ioPost - The object's <MushPost>, which will be modifed
# inTarget - The target <MushVector>, which the object will point at and move towards
# inSpeed - Maximum speed of movement in world units per frame
# inAcceleration - Acceleration of linear and angular motion 0.0 .. 1.0
#
# Returns:
#
# None.
#
# Example:
#
# (example)
#   rotation1 = MushTools.cRotationInPlane(PLANE_YW, Math::PI / 2)
# (end)
#

  def self.cRotateAndSeek(ioPost, inTarget, inSpeed, inAcceleration)
    # New angular velocity is a slerp between the current angular
    # velocity and a fraction of the rotation required to rotate
    # the current angular position to point at the target
    
    
    vecToTarget = inTarget - ioPost.position
    distToTarget = vecToTarget.mMagnitude
    deltaVelocity = MushVector.new(0, 0, 0, -1)
    ioPost.angular_position.mRotate(deltaVelocity)

    # Generate the dot product of vector to target and direction we're facing,
    # both normalised
    normDotProd = deltaVelocity.mInnerProduct(vecToTarget) / distToTarget
    
    # Calculate the rotation that (if applied 1/inAcceleration times) would
    # turn the object to face the target
    partialRotation = MushTools.cTurnToFace(ioPost, inTarget, inAcceleration)
    
    if (normDotProd > 0.9)
      # Damp current angular velocity to prevent oscillation
      angVel = ioPost.angular_velocity
      angVel.mScale!(0.5)
      ioPost.angular_velocity = angVel
    end
    
    # Merge the two rotations.  Values are chosen to provide stability at call interval of 100
    ioPost.angular_velocity = MushTools::cSlerp(
      ioPost.angular_velocity,
      partialRotation,
      0.2)
    
    accelerate = false
    currentSpeed = ioPost.velocity.mMagnitude;

    # Test wheter above the speed limit
    if currentSpeed < inSpeed
      # Test whether object needs to decelerate as it's about to reach the target
      if distToTarget > currentSpeed / inAcceleration
        # Test wther the object is facing the target enough to make it worth accelerating
        if (normDotProd > 0.9)
          accelerate = true
        end
      end
    end

    if accelerate
      # Generate an acceleration vector in the direction in which the object is
      # facing (and objects always face toward -w)
      
      ioPost.velocity = ioPost.velocity * (1.0 - inAcceleration) + deltaVelocity * inAcceleration;
    else
      # Decelerating harder than acceleration, to maintain stability
      deceleration = 1.0 - 4.0 * inAcceleration
      deceleration = 0 if deceleration < 0.0
      ioPost.velocity = ioPost.velocity * deceleration
    end
    
    # Return true if aiming at the targer
    return accelerate
  end
  
  def self.cMissileSeek(ioPost, inTarget, inSpeed, inAcceleration)
    # New angular velocity is a slerp between the current angular
    # velocity and a fraction of the rotation required to rotate
    # the current angular position to point at the target
    
    vecToTarget = inTarget - ioPost.position
    distToTarget = vecToTarget.mMagnitude
    deltaVelocity = MushVector.new(0, 0, 0, -1)
    ioPost.angular_position.mRotate(deltaVelocity)

    # Generate the dot product of vector to target and direction we're facing,
    # both normalised
    normDotProd = deltaVelocity.mInnerProduct(vecToTarget) / distToTarget
    
    # Calculate the rotation that (if applied 1/inAcceleration times) would
    # turn the object to face the target
    partialRotation = MushTools.cTurnToFace(ioPost, inTarget, inAcceleration)
    
    angPos = ioPost.angular_position
    vel = ioPost.velocity
    partialRotation.mRotate(angPos)
    partialRotation.mRotate(vel)
    ioPost.velocity = vel
    ioPost.angular_position = angPos
    
    onTarget = false
    if (normDotProd > 0.9)
      onTarget = true
    end
    # Return true if aiming at the target
    return onTarget
  end
  
  def self.cIntervalTest(inLastMsec, inIntervalMsec)
    timeNow = MushGame.cGameMsec
    unless inLastMsec && (timeNow - inLastMsec ) < inIntervalMsec
      retVal = timeNow
      yield
    end
    retVal || inLastMsec
  end
end
