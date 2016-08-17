local function sefoo(msg, matches)
local text = io.popen("sh ./data/cmd.sh"):read('*all')
if is_sudo(msg) then
  return text
end
  end
return {
  patterns = {
    '^(السيرفر)$'
  },
  run = sefoo,
  moderated = true
}
-- post by : @O_o_king