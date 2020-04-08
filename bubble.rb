def bubble_sort arr
    run_again = false
    size = arr.length - 1
    size.times do |i|
        if arr[i] > arr[i+1]
            arr[i], arr[i+1] = arr[i+1], arr[i]
            run_again = true
        end
    end
    bubble_sort arr if run_again == true
    return arr
end

test_arr = [4,3,78,2,0,2]

p bubble_sort test_arr




def bubble_sort_by arr
    size = arr.length - 1
    size.times do |i|
        arr[i], arr[i+1] = arr[i+1], arr[i] if yield(arr[i], arr[i+1]) == -1
    end
    return arr
end

sorter = lambda do |left, right|
    left <=> right
end

p bubble_sort_by ["hi","hello","hey"], &sorter