#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushView.rb
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
#%Header } nXmgDDgoBfembW+lvwhm7g
# $Id: MushView.rb,v 1.1 2006/10/17 15:27:59 southa Exp $
# $Log: MushView.rb,v $
# Revision 1.1  2006/10/17 15:27:59  southa
# Player collisions
#

require 'MushObject.rb'
require 'MushDashboard.rb'

class MushView < MushObject
  def initialize(inParams = {})
    @m_dashboard = inParams[:dashboard] || MushDashboard.new
  end
  
  mush_accessor :m_dashboard
  
  def mDashboardRender(inParams = {})
    @m_dashboard.mRender(inParams)
  end
end
