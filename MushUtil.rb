#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushUtil.rb
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
#%Header } hcqafjSrDMKP6ZqY94zgCw
# $Id: MushUtil.rb,v 1.8 2007/05/09 19:24:42 southa Exp $
# $Log: MushUtil.rb,v $
# Revision 1.8  2007/05/09 19:24:42  southa
# Level 14
#
# Revision 1.7  2007/03/28 14:45:45  southa
# Level and AI standoff
#
# Revision 1.6  2007/03/21 11:56:05  southa
# Rail effects and damage icons
#
# Revision 1.5  2007/03/13 21:45:03  southa
# Release process
#
# Revision 1.4  2006/11/12 20:09:54  southa
# Missile guidance
#
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

  def self.cRotateAndSeek(ioPost, inTarget, inSpeed, inAcceleration, inStandOff = 0)
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
    
    accelerate = 0.0
    currentSpeed = ioPost.velocity.mMagnitude;

    # Test wheter above the speed limit
    if currentSpeed < inSpeed
      if distToTarget < inStandOff / 2
        # Way too close so back off
        accelerate = -0.25
      elsif distToTarget < inStandOff
        # About right so stop.  Leave as 0.0
      elsif distToTarget > currentSpeed / inAcceleration
        # Object needs to decelerate as it's about to reach the target
        # Test whether the object is facing the target enough to make it worth accelerating
        if (normDotProd > 0.9)
          accelerate = 1.0
        end
      end
    end
    if accelerate != 0.0
      # Generate an acceleration vector in the direction in which the object is
      # facing (and objects always face toward -w)
      if inSpeed <= 1.0
        # Faulty algorithm - never takes speed above 1.0 - but levels assume it
        ioPost.velocity = ioPost.velocity * (1.0 - inAcceleration) + deltaVelocity * inAcceleration * accelerate;
      else
        # Use this to get to higher speeds
        ioPost.velocity = ioPost.velocity + deltaVelocity * inAcceleration * accelerate;
      end
    else
      # Decelerating harder than acceleration, to maintain stability
      deceleration = 1.0 - 4.0 * inAcceleration
      deceleration = 0 if deceleration < 0.0
      ioPost.velocity = ioPost.velocity * deceleration
    end
    
    # Return true if aiming at the target
    return (normDotProd > 0.9)
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
    angPos.mNormalise!
    ioPost.angular_position = angPos
    # Angular velocity must be zero, but gets set on creation
    # ioPost.angular_velocity = MushRotation.new
    
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
  
  def self.cRandomValInRange(inParam)
    if inParam.kind_of?(Range)
      retVal = inParam.begin + rand * (inParam.end - inParam.begin)
    else
      retVal = inParam
    end
    retVal
  end
  
  def self.cClamped(inVal, inMin, inMax)
    return inMin if inVal < inMin
    return inMax if inVal > inMax
    return inVal
  end
end
