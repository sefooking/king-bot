do

local function run(msg, matches)
local reply_id = msg['id']
if is_sudo(msg) and matches[1]== "م المطور" then
local S = [[ 👑اوامر المطورين 👑

🔸🔹🔸🔹🔸🔹🔸🔹🔻ـ

 ✅تفعيل  : ↝↜
 {لتفعيل البوت ب المجموعه}
 ❎تعطيل : ↝↜
 {لتعطيل البوت ب المجموعه}
 📡اذاعه : ↝↜
 {لنشر كلمه ب جميع مجموعات البوت}
 ▶️تشغيل البوت : ↝↜
{ لتشغيل البوت ب المجموعه معينه}
 ⏹اطفاء البوت : ↝↜(لاطفاء البوت في المجموعه)
👞طرد البوت : ↝↜
{ لطرد البوت من المجموعه}
 🔬جلب ملف : ↝↜
{ لجلب الملف من السيرفر}
 ⏳صنع مجموعه : ↝↜
{لصنع مجموعه من البوت}

🔸➖🔹➖🔸➖🔹➖
📱-Đєⱴ🤖: @O_o_king
📱-Đєⱴ ฿๏ͳ🤖: @O_o_1bot
📱-Đєⱴ Ϲḫ₳ͷͷєℓ🤖: @freedom1234
]]
reply_msg(reply_id, S, ok_cb, false)
end

if not is_sudo(msg) then
local S = "ليش تبحبش😎🖕🏿"
reply_msg(reply_id, S, ok_cb, false)
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(م المطور)$",
},
run = run 
}
end
-- arabic : @O_o_king