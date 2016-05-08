# ArcBall
ArcBall functionality for processing (ruby versions) as gem

### Example Usage 
The sketch class need to to inherit from PApplet to work and self should return such an instance. The following is a ruby-processing example, which currently supplies arcball via a library, but gem distribution has its attractions. Drag mouse to rotate. Hold down 'x', 'y' or 'z' keys to constrain axis of rotation, mouse-wheel to zoom.

```ruby
require 'arcball'

def setup
  size(600, 600, P3D)
  smooth(8)
  Processing::ArcBall.init(self, 300, 300)
  fill 180
end

def draw
  background(50)  
  box(300, 300, 300)
end
```
Since version 0.0.2, you can also fix rotation to one axis

```ruby
require 'arcball'

def setup
  size(600, 600, P3D)
  smooth(8)
  Processing::ArcBall.constrain self #, :zaxis # default constrains to y-axis
  fill 180
end

def draw
  background(50)  
  box(300, 300, 300)
end
```
