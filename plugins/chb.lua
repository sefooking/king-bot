do 

local function run(msg, matches) 
if is_sudo(msg) and matches[1]== "انجب" then 
return [[ 
اوك بعد ما اعيدهة😂💔
]] 
end 

if not is_momod(msg) then 
return "مراح اعلق حفاظا على مشاعرك 😂💔" 

end 

end 
return { 
description = "chab", 
usage = "chab", 
patterns = { 
"(انجب)" 
}, 
run = run 
} 
end