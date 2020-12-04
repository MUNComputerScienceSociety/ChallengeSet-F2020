function solve(stack, turn)
    if stack[1] % stack[2] == 0
        if turn
            return "win";
        else
            return "lose";
        end
    end

    min = minimum(stack);
    max = maximum(stack);

    if max >= 2*min
        if turn
            return "win";
        else
            return "lose";
        end
    end

    return solve([max % min, min], !turn);
end

in = readline();

stack = [parse(Int, x) for x in split(in, " ")];
turn = true;

println(solve(stack, true));
