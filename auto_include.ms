proc(_CHticket_perm, @perm,
    assign(@perms, 'chticket.'.@perm)
    if(player() == '~console',return(true))
    if(pisop(), return(true))
        if(has_permission(@perms),return(true),
            if(!reg_match('vip', @perm),
                console(player() 'Tried permission' @perms '- denied', false)
            )
            return(false)
        )
)
