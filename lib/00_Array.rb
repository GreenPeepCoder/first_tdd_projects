def my_uniq(arr)
    uniq_arr = []
    arr.each do |ele|
        uniq_arr << ele unless uniq_arr.include?(ele)
    end 
    uniq_arr
end

def two_sum(arr)
    pairs = []
    arr.count.times do |i1|
        (i1 + 1).upto(arr.count - 1) do |i2|
            pairs << [i1, i2] if arr[i1] + arr[i2] == 0
        end
    end
    pairs
end

def my_transpose(rows)
end

def stock_picker(prices)
end