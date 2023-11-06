function is_palindrome(n)

    str = string(n)
    return str == reverse(str)

end

function find_largest_palindrome_product(m)
    largest_palindrome = ()
    max = (10^m)-1
    min = 10^(m-1)

    for i in max:-1:min
        for j in max:-1:min
            product = i * j
            if is_palindrome(product) && product > largest_palindrome
                largest_palindrome = product

            end
        end
    end

    return largest_palindrome
end

