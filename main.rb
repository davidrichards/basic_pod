class BasicPod < PodAgent::DSL

  name "A Basic Pod"

  description "A very good test for whether the Ubalo environment is working.  This shouldn't work in the wild, btw."
  
  def initialize(*args)
  end
  
  def snap
    puts Math.cos(1.3 * Math::PI)
  end
  
end
