require 'three/three'
#
# describe Three::Datastructures::MaxHeap do
#
# 	it 'builds heap!' do
#
# 	end
#
# end

heap = Three::Datastructures::Heap.build_heap([1,4,2,5,6,7,8], :max)
puts heap.data.inspect

puts heap.extract

puts heap.data.inspect

heap = Three::Datastructures::Heap.build_heap([1,4,2,5,6,7,8], :min)
puts heap.data.inspect


