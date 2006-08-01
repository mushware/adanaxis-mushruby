#%Header {
##############################################################################
#
# File: data-adanaxis/mushruby/test/run_tests.rb
#
# Author: Andy Southgate 2006
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
#%Header } rPAe5Kuut6MruD9lSdryWw
# $Id$
# $Log$

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
