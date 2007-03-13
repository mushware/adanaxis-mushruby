#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/test/run_tests.rb
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
#%Header } T32HWhhyWJkyk0/28VUaMg
# $Id: run_tests.rb,v 1.3 2006/08/01 17:21:14 southa Exp $
# $Log: run_tests.rb,v $
# Revision 1.3  2006/08/01 17:21:14  southa
# River demo
#
# Revision 1.2  2006/08/01 13:41:09  southa
# Pre-release updates
#

require 'test/unit/ui/console/testrunner'
require 'test/unit/testsuite'

require 'Mushware.rb'
require 'Adanaxis.rb'

$testNames = %w(
  BasePrism
  Vector
  Displacement
  Extruder
  GLFont
  Material
  Mesh
  MeshLibrary
  Post
  Rotation
  Tools
  Vector
)

$testNames.each { |name|
  require "test/tc_Mush#{name}.rb"
}

class Tests
  def self.suite
    suite = Test::Unit::TestSuite.new
	
	$testNames.each { |name|
      suite << eval("TestMush#{name}.suite")
	}
	return suite
  end
end
    
Test::Unit::UI::Console::TestRunner.run(Tests)
