do

local function run(msg, matches)
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'م1' then
local S = [[ ✍🏿  📍💭 اوامر حماية المجموعه 🀄️

😃 رفع ادمن :↭↜ ( لرفع ادمن في المجموعه )
😟 تنزيل ادمن : ↭↜ ( لتنزيل ادمن في المجموعه )
😎 الادمنيه : ↭↜ ( لعرض قائمة الادمنيه)
ـ🔹🔸🔹🔸🔹🔸🔹🔸🔻

📍💭 اوامر تخص الادمنيه 🀄️

🕹حظر : ↭↜( لحظر وطرد عضو من المجموعه )
🕹الغاء الحظر : ↭↜ ( لالغاء الحظر عن عضو )
🕹منع : ↭↜ ( لمنع كلمه داخل المجموعه )
🕹الغاء منع : ↭↜ ( لالغاء منع كلمه داخل المجموعه )
🕹قائمه المنع:↭↜ (لعرض الكلمات الممنوعه)
🕹تنظيف قائمه المنع:↭↜ (لمسح الكلمات الممنوعه)
🔹🔸🔹🔸🔹🔸🔹🔸🔻

🕹كتم بالرد : ↭↜ ( لكتم عضو بواسطة الرد )
🕹ايدي : ↭↜ ( لعرض ايدي المجموعه )
🕹ايدي بالرد : ↭↜ ( لعرض ايدي العضو )
 🔹🔸🔹🔸🔹🔸🔹🔸🔻
📱-Đєⱴ🤖: @O_o_king
📱-Đєⱴ ฿๏ͳ🤖: @O_o_1bot
📱-Đєⱴ Ϲḫ₳ͷͷєℓ🤖: @freedom1234
]]
reply_msg(reply_id, S, ok_cb, false) 
end

if not is_momod(msg) then
local S = "ليش اصير دوده😎🖕🏿"
reply_msg(reply_id, S, ok_cb, false)
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(م1)$",
},
run = run 
}
end
-- arabic : @O_o_king