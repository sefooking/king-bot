local function sefoo (msg,matches)
 local receiver = get_receiver(msg)
 if matches[1] == "المشكلة" then
local text = "😁 #ارسلت الرسالة الئ المطور ".."\n".."\n".."📪 رسالت الملاحظة قد ارسلت".."\n".."\n".."📮معرفك :(@"..(msg.from.username or "لايوجد")..")\n"
.."🚀اسمك :("..msg.from.first_name..")\n"
.."🆔 معرف الكروب :("..msg.from.id..")\n"
.."📌 ايدي الكروب :("..msg.to.id..")\n"
.."💼اسم الكروب :("..(msg.to.title or "لايوجد")..")\n"
.."📝رسالتك هي \n \n"..matches[2].."\n" 
local sefoo = 1067144630 --put group id here for example 12345 with out "" or ''
send_large_msg("channel#id"..sefoo,text)
        local sajody = "😃 مرحبا "..msg.from.first_name.."📝 لقد ارسلت رسالتك المطور ✅ "
        return reply_msg(msg.id, sajody, ok_cb, false)
    end
    if matches[1] == "اجابة" and is_sudo(msg) then
   local xread = matches[3]
    local ipex = "👻 مرحبا "..matches[2].."\n".." 👾  رسالتك ارسلت الئ مطوري 💭 \n 📍تم ارسال رسالتك :( "..xread.." )\n"
send_large_msg("channel#id"..matches[2],ipex)
local wathiq = "😃 مطوري لقد استلم رسالتك ✅"
return reply_msg(msg.id, wathiq, ok_cb, false)
    end
    if matches[1] == "اجابة" and not is_sudo(msg) then
    local zeoone = "☺️ اسف "..msg.from.first_name.."\n".." 🙂 هذا الامر فقط للمشرفين 😓"
    return reply_msg(msg.id, zeoone, ok_cb, false)
    end
    end
    return { 
  patterns = { 
     "^(المشكلة) (.+)",
     "^(اجابة) (.+) (.+)",
  }, 
  run = sefoo, 
}
