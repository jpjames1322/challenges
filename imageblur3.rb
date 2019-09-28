class Image
  attr_accessor :image
  def initialize (image)
    self.image = image
  end

  def output_image
    image.each do |rows|
      puts rows.join("")
    end
  end

def blur(distance)      
  distance.times do
    numbers
  end
end
private 
def numbers
  numbers = []
    image.each_with_index do |row, i|
      row.each_with_index do |j, row_i|
        if j == 1
        numbers << [i, row_i] 
        end 
        end 
      end


 numbers.each do |number|
    image[number[0]][number[1] + 1] = 1 if number[1] - 1 <= image.length - 1
    image[number[0]][number[1] - 1] = 1 if number[1] - 1 >= 0
    image[number[0] + 1][number[1]] = 1 if number[0] + 1 <= image.length - 1
    image[number[0] - 1][number[1]] = 1 if number[0] - 1 >= 0

        end
      end
end


image = Image.new([
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 1, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 1, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
])

image.blur(3)
image.output_image
