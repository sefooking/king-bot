do 
local function sefoo(msg,matches) 
 if is_sudo(msg) then 
   local sudo = "اهلا عزيزي👋 💋 "..msg.from.first_name.."\n" 
   .."🆔ايديك :("..msg.from.id..")\n" 
   .."🆔ايدي الكروب :("..msg.to.id..")\n" 
   .."🛃معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."🛃رقمك :("..(msg.from.phone or " لا يوجد")..")\n" 
   .."انته مطور مح 👾 " 
return reply_msg(msg.id, sudo, ok_cb, true) 
 end 
 if is_owner(msg) then 
 local owner = "اهلا عزيزي👋 💋 "..msg.from.first_name.."\n" 
   .."🔻اسمك:: "..msg.from.first_name.."\n" 
   .."🔻ايديك :("..msg.from.id..")\n" 
   .."🔻معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."انته مدير مح 😎»" 
return reply_msg(msg.id, owner, ok_cb, true) 
 end 
 if is_momod(msg) then 
      local admin = "اهلا عزيزي👋 💋 "..msg.from.first_name.."\n" 
   .."🔻اسمك:: "..msg.from.first_name.."\n" 
   .."🔻ايديك :("..msg.from.id..")\n" 
   .."🔻معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."انته ادمن مح 🎩" 
return reply_msg(msg.id, admin, ok_cb, true) 
 end 
 if not is_member(msg) then 
      local member = "اهلا عزيزي👋 💋 "
   .."🔻اسمك:: "..msg.from.first_name.."\n" 
   .."🔻ايديك :("..msg.from.id..")\n" 
   .."🔻معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."انته مجرد عضو مح 🚹» " 
return reply_msg(msg.id, member, ok_cb, true) 
 end 
end 

return { 
  patterns = {
       "^(موقعي)$", 
  }, 
  run = sefoo, 
} 
end