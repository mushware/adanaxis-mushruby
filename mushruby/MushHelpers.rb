#%Header {
##############################################################################
#
# File adanaxis-mushruby/MushHelpers.rb
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
#%Header } oA6jBdWDv/3Sto5MY1MH9Q
# $Id: MushHelpers.rb,v 1.4 2006/11/03 18:46:30 southa Exp $
# $Log: MushHelpers.rb,v $
# Revision 1.4  2006/11/03 18:46:30  southa
# Damage effectors
#
# Revision 1.3  2006/08/01 17:21:12  southa
# River demo
#
# Revision 1.2  2006/08/01 13:41:07  southa
# Pre-release updates
#

# Format to strings for printing
class Array
  def cToPrint
    '['+join(', ')+']'
  end
end

class Numeric
  def mClamp(inMin, inMax)
    return inMin if self < inMin
    return inMax if self > inMax
    return self
  end
end
