#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushObject.rb
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
#%Header } SJ9+G4oCDgIWjjo6kieD0g
# $Id: MushObject.rb,v 1.1 2006/10/14 16:59:43 southa Exp $
# $Log: MushObject.rb,v $
# Revision 1.1  2006/10/14 16:59:43  southa
# Ruby Deco objects
#

class MushObject
  def self.mush_reader(*inArgs)
    inArgs.each do |arg|
      argName = arg.to_s
      
      if argName.sub!(/^m_/, "m")
        argName[1, 1] = argName[1, 1].upcase
      end
      class_eval(<<-EOS, __FILE__, __LINE__+1)
        def #{argName}
          @#{arg}
        end
EOS
    end
  end

  def self.mush_writer(*inArgs)
    inArgs.each do |arg|
      argName = arg.to_s
      
      if argName.sub!(/^m_/, "m")
        argName[1, 1] = argName[1, 1].upcase
      end
      class_eval(<<-EOS, __FILE__, __LINE__+1)
        def #{argName}Set(inParam)
          @#{arg} = inParam
        end
EOS
    end
  end
  
  def self.mush_accessor(*inArgs)
    mush_reader(*inArgs)
    mush_writer(*inArgs)
  end
end
