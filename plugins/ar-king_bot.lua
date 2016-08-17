do

function run(msg, matches)
local reply_id = msg['id']
  local S = '🔶   السورس 🛢 king bot 📁\n🔶   الاصدار 📋 V1\n🔶  الموقع 💻\n \n https://github.com/sefooking/king_bot\n🔶    المطور : @O_o_king \n🔶   بوت_المطور :  @O_o_1bot \n 🔶   قناة_البوت :  @freedom1234 '
reply_msg(reply_id, S, ok_cb, false)
end

return {
  patterns = {
"^(الاصدار)$",
  }, 
  run = run 
}

end
-- arabic : @O_o_king