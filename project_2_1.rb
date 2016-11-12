def bubble_sort(arr)
	f = arr.length-1
	arr.cycle(f) {
		i = 1
		arr.each do 
			left = arr[i-1].to_i
			right = arr[i].to_i
			if (left > right) && (i<arr.length)
				arr.insert(i, arr.delete_at((i-1))) 
				i += 1
			else
				if i>arr.length
					return
				end
				i += 1
			end
		end
	}
	arr
end


def bubble_sort_by(arr)
	f = arr.length-1
	arr.cycle(f) {
		i = 1
		arr.each do
			left = arr[i-1].to_s
			right = arr[i].to_s
			if ((yield left,right) > 0) && (i<arr.length)
				arr.insert(i, arr.delete_at((i-1)))
				i += 1
			else
				if i>arr.length
					return
				end
				i += 1
			end
		end
	}
	arr
end

bubble_sort_by(["hi","hello","hey","whatever","almost"]) do |left, right|
	left.length - right.length
end