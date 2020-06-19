#%Header {
##############################################################################
#
# File adanaxis-mushruby/MushConfig.rb
#
# Copyright: Andy Southgate 2002-2007, 2020
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.
#
##############################################################################
#%Header } iMbX9bi75ryqf92V7rX0Tw
# $Id: MushConfig.rb,v 1.5 2006/11/06 12:56:31 southa Exp $
# $Log: MushConfig.rb,v $
# Revision 1.5  2006/11/06 12:56:31  southa
# MushFile work
#
# Revision 1.4  2006/08/01 17:21:11  southa
# River demo
#
# Revision 1.3  2006/08/01 13:41:06  southa
# Pre-release updates
#

class MushConfig
  def initialize
  end

  def self.cResourcesPath
    $MUSHCONFIG['RESOURCES_PATH']
  end
  def self.cGlobalMushPath
    $MUSHCONFIG['RESOURCES_PATH']+"/mush"
  end
  def self.cGlobalPixelsPath
    $MUSHCONFIG['RESOURCES_PATH']+"/pixels"
  end
  def self.cGlobalSpacesPath
    $MUSHCONFIG['RESOURCES_PATH']+"/spaces"
  end
  def self.cGlobalWavesPath
    $MUSHCONFIG['RESOURCES_PATH']+"/waves"
  end

end
