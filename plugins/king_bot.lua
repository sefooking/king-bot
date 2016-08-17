do 

local function run(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

return "للتحدث مع المطور اضغط على المعرف التالي \n @O_o_king \n او اذا محظور اضغط هنا \n @O_o_1bot\n قنأة البوت \n @freedom1234🔶 "     
  end 
   
end 

-- @O_o_king

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = run, 
} 

end 
-- by : @O_o_king
