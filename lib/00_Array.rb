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
    dim = rows.first.count
    cols = Array.new(dim) {Array.new(dim)}

    dim.times do |i|
        dim.times do |j|
            cols[j][i] = rows[i][j]
        end
    end
    cols
end

def stock_picker(prices)
    best_pair = nil
    best_profit = 0

    prices.each_index do |buy_date|
        prices.each_index do |sell_date|
            # can't sell before you buy
            next if sell_date < buy_date

            profit = prices[sell_date] - prices[buy_date]
            if profit > best_profit
                best_pair, best_profit = [buy_date, sell_date], profit
            end
        end
    end
    best_pair
end