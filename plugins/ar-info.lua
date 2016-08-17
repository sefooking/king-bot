local function sefoo(msg, matches) 
local sefoo = '💭ايدي ماتك :'..msg.from.id..'\n' 
..'👤معرفك :(@'..msg.from.username..')\n' 
..'👤اسمك الاول  :'..(msg.from.first_name or '')..'\n' 
..'🔆اسمك الاخير  :'..(msg.from.lastname or '')..'\n' 
..'💡ايدي الكروب :('..msg.to.id..')\n' 
..'📜اسم الكروب  :('..msg.to.title..')\n' 
..'📞رقمك :+'..(msg.from.phone or "لا يوجد رقاتف"..')\n' 
..'✉️Msg Text :('..msg.text..')\n' 
..'👥You are in :(' ..msg.to.type..')\n' 
..'🕚الوقت : '..os.date(' %T', os.time()))..'\n' 
..'📅التاريخ : '.. os.date('!%A %B:%d:%Y\n', timestamp)..'\n' 
..'👤رابطك : telegram.me/'..msg.from.username..'\n' 
reply_msg(msg.id, omar, ok_cb, false) 
end 
return { 
patterns = { 
"^(معلوماتي)$" 

}, 
run = sefoo 
} 
