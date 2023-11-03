function is_palindrome(n)
    str = string(n)
    return str == reverse(str)
end

function find_largest_palindrome_product()
    largest_palindrome = 0

    for i in 999:-1:100
        for j in 999:-1:100
            product = i * j
            if is_palindrome(product) && product > largest_palindrome
                largest_palindrome = product
            end
        end
    end

    return largest_palindrome
end

