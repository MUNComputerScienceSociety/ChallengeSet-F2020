n = readline();

string = readline();
nums = split(string, " ");

total = 0;

for number in nums
    parsed = parse(Int, number);

    if parsed < 0
        global total = total + abs(parsed);
    end
end

println(total);
