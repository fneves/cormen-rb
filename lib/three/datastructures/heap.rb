module Three
	module Datastructures
		module Heap 
			attr_accessor :heap_size, :data

			def initialize(size)
				@heap_size = size
				@data = Array.new(size)
			end

			def parent(i)	
				i > 0 ? i/2 : -1				
			end

			def left(i)
				i*2		
			end

			def right(i)				
				i * 2 + 1 
			end

			def has_elements?
				@data.length > 0
			end

			def in_limits?(i)
				i >= 0 and i < @data.length
			end

			def Heap.build_heap(array, type)
				heap = heap_class(type).new(array.length)
				for i in array.length .. 0
					heap.heapify(array, i)
				end
				heap.heap_size = array
				heap.data = array
				heap
			end			

			def elem(i)
				@data[i] if has_elements? and in_limits?(i) and @data.length > index
			end

			def extract
				@data.shift if has_elements?
				@data = heapify(@data, 0)
			end

			def swap(i1, i2)
				temp = @data[i2]
				@data[i2] = @data[i1]
				@data[i1] = temp
			end

			def add(elem)				
				@data.push(elem)				
				throw "Heap size exceeded!" if @data.length > heap_size
				heapify(@data, @data.length - 1)
			end

			def Heap.heap_class(type)
				Kernel.const_get("Three::Datastructures::Heap::#{type.to_s.capitalize}Heap")
			end

		end

		class MaxHeap
			include Heap

			def heapify(array, i)
				l = left(i)
				r = right(i)
				largest = i
				largest = l if l < heap_size and elem(l) > elem(i)
				largest = r if r < heap_size and elem(r) > elem(largest)
				swap(i,largest)
				heapify(array, largest)
				array
			end			
		end

		class MinHeap
			include Heap

			def heapify(array, i)
				l = left(i)
				r = right(i)
				smallest = i
				smallest = l if l < heap_size and elem(l) < elem(i)
				smallest = r if r < heap_size and elem(r) < elem(smallest)
				swap(i,smallest)
				heapify(array, smallest)
				array
			end

		end	

	end
end