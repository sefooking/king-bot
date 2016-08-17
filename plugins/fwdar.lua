 
do 

local function pre_process(msg) 
    --Checking mute 
    local hash = 'mate:'..msg.to.id 
    if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg) and not is_admin1(msg)  then 
            delete_msg(msg.id, ok_cb, true) 
            send_large_msg(get_receiver(msg), 'عزيزي '..msg.from.first_name..'\nممنوع عمل اعادة توجيه من القنوات هنا التزم بقوانين المجموعة 👋👮\n#username @'..msg.from.username) 
            return "done" 
        end 
        return msg 
    end 

local function sefoo(msg, matches) 
    chat_id =  msg.to.id 
    if is_momod(msg) and matches[1] == 'قفل اعاده توجيه' then 
                    local hash = 'mate:'..msg.to.id 
                    redis:set(hash, true) 
                    return "تم قفل التوجيه"
  elseif is_momod(msg) and matches[1] == 'فتح اعاده توجيه' then 
                    local hash = 'mate:'..msg.to.id 
                    redis:del(hash) 
                    return "تم فتح التوجيه♥" 
end 

end 

return { 
    patterns = { 
        '^(قفل اعاده توجيه)$', 
        '^(فتح اعاده توجيه)$' 
    }, 
    run = sefoo, 
    pre_process = pre_process 
} 
end 
