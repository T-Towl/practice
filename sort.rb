
def bubble_sort(data)
  data.length.times do |i|
      (data.length-(i+1)).times do |j|
          if data[j] > data[j+1]
              data[j],data[j+1] = data[j+1],data[j]
          end
      end
  end
end

data=[10,42,50,83,23,71,1,6,32]
bubble_sort(data)
puts(data.join(" "))