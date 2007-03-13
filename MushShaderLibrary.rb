#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushShaderLibrary.rb
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
#%Header } gw5NodI1qjHLm6c8kWJMrA
# $Id: MushShaderLibrary.rb,v 1.1 2006/09/10 10:30:51 southa Exp $
# $Log

class MushShaderLibrary < MushObject

#
# Default 4D vertex shader
#
  def self.cVertex4D
    <<EOS
// Standard 4D vertex shader

uniform vec4 mush_ProjectionOffset;
uniform vec4 mush_ModelViewOffset;
uniform vec4 mush_ModelViewProjectionOffset;
uniform float mush_FValue;

varying float mush_ZDiscrim;

void main(void)
{
    gl_TexCoord[0] = gl_MultiTexCoord0;
    
    vec4 eyePos = mush_ModelViewOffset + gl_ModelViewMatrix * gl_Vertex;
    
    if (eyePos.w >= 0.0)
    {
        mush_ZDiscrim = -eyePos.z * mush_FValue / eyePos.w;
    }
    else
    {
        mush_ZDiscrim = eyePos.z * mush_FValue / eyePos.w;
    }
    
    gl_Position = mush_ModelViewProjectionOffset + gl_ModelViewProjectionMatrix * gl_Vertex;
}
EOS
  end

#
# Default 4D fragment shader
#
  def self.cFragment4D
    <<EOS
// Standard 4D fragment shader

uniform vec4 mush_Colour0;
uniform vec4 mush_Colour1;
uniform vec4 mush_Colour2;

varying float mush_ZDiscrim;

uniform sampler2D tex;

void main(void)
{
    vec4 texColor = texture2D(tex, gl_TexCoord[0].st);
    vec4 hintColour;    
    if (mush_ZDiscrim < 0.0)
    {
        hintColour = mix(mush_Colour1, mush_Colour0, -mush_ZDiscrim);
    }
    else
    {
        hintColour = mix(mush_Colour1, mush_Colour2, mush_ZDiscrim);
    }
    gl_FragColor = texColor * hintColour;
}

EOS
  end
  
  
  #
# Standard shader definitions
#
  def self.cStandardCreate
    # Standard OpenGL pipeline
    MushGLShader.new(
      :name => 'standard'
    )
    
    shader = MushGLShader.new(
      :name => 'project4d',
      :vertex_shader => cVertex4D,
      :fragment_shader => cFragment4D
    )
  end
  
  def self.cCreate
    cStandardCreate
  end
end
