def merge_sort(x)
  if x.length == 1
    x
  else
    sorted = []
    left = merge_sort(x.slice!(0,x.length/2))
    right = merge_sort(x)
    until left.empty? || right.empty?
        left.first <= right.first ? sorted.push(left.shift) : sorted.push(right.shift)
    end
    left.empty? ? sorted += right : sorted += left
  end
end

p merge_sort([5,8,1,0,3,9,2])