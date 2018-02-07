
function getchars(num)
    val::Int = 0
    if num/1000 > 0 
        val += length("thousand")
        t = round(num/1000)
        @match c begin
            1 => length("one")
            2 => length("two")
            3 => length("three")
            4 => length("four")
            5 => length("five")
            6 => length("six")
            7 => length("seven")
            8 => length("eight")
            9 => length("nine")
            _ => 0
        end
