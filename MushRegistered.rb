#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushRegistered.rb
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
#%Header } 5nHchgIAeHRwZS80wnsxrA

module MushRegistered
  def mushRegistered_install
    class_eval(<<-EOS, __FILE__, __LINE__+1)
      @@registeredObjects = {}
      def self.cRegisteredCreate(params=nil)
        object = params ? new(params) : new
        
        if @@registeredObjects.has_key?(object_id)
          puts "Attempt to register object twice \#{object.object_id} => \#{object.inspect}"
        end
        
        @@registeredObjects[object.object_id] = object
        #puts "Registering \#{object.object_id}"
        object
      end
  
      def mRegisteredDestroy
        #puts "Unregistering \#{self.object_id}"
        unless @@registeredObjects.has_key?(object_id)
          raise RuntimeError, "Attempt to destroy unregistered object \#{self.object_id} => \#{self.inspect}"
        end
        @@registeredObjects.delete object_id
        # GC.start if $MUSHCONFIG['DEBUG']
      end
    EOS
  end
end

