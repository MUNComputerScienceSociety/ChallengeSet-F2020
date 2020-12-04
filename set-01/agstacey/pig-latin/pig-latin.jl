for line in readlines()
    parts = split(line, " ");

    let
        full = "";
        vowels = ["a", "e", "i", "o", "u", "y"];

        for part in parts
            first = string(part[begin]);

            if first in vowels
                part = string(part, "yay");
            else
                i = 0;

                for (index, char) in enumerate(split(part, ""))
                    if char in vowels
                        i = index;
                        break;
                    end
                end

                first = string(part[begin:i-1]);
                rest = string(part[i:end]);
                part = string(rest, first, "ay");
            end

            if full == ""
                full = part;
            else
                full = string(full, " ", part);
            end
        end

        println(full);
    end
end
