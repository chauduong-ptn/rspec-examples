# This class allows drawing onto a 2D array.
# Only support black (0) and white (1)
class TurtleGraphics
  # `canvas` is a 2D array with canvas[y][x] is the point (x,y)
  def initialize(canvas)
    @x = @y = 0
    @canvas = canvas
  end

  # Draw a horizontal line from current position to the point
  # having the specified X coordinate
  def horizontal_line_to(target_x)
    old_x = @x
    @x = target_x
    low_x, high_x = [old_x, @x].minmax
    low_x.upto(high_x) do |x|
      @canvas[@y][x] = 1
    end
  end
end
