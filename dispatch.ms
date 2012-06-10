proc(_ticket_dispatch, @input,
    assign(@match, reg_match('^\\s*([^ ]+)(\\s+(.*)\\s*)?$', @input))
    if(@match,
        assign(@first, to_lower(@match[1]))))
