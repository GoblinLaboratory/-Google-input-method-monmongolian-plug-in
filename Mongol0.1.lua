-- encoding: UTF-8
 
------------------------------------------------
-- 谷歌拼音蒙古语输入扩展
-- 版本: 0.1
-- 作者：森 （青骑)
-- 
-- 此扩展遵循GPLv3发布
function Mongol_Yi(input)
  if #input<1 then
    return "-- 请输入蒙古语拼音，如 aray --"
  else
    local metatables = {}
    --if  _Mongol_Yi_Mapping[input] then
      --table.insert(metatables,  _Mongol_Yi_Mapping[input])
    --end
    for i = 1, #input, 1 do 
	    local Str = string.sub(input, i, i)
	    for k, v in pairs( _Mongol_Yi_Mapping) do
            if k == Str then
                table.insert(metatables, v)		              
            end
        end
	end
	local st = table.concat(metatables, nil)
	local me = "蒙古青旗语言文化班,qq群：255572432"
	local metatablesre = {}
	table.insert(metatablesre, st)	
	table.insert(metatablesre, me)
    return metatablesre
  end
end
 

 _Mongol_Yi_Mapping = {["a"]="ᠠ",["b"]="ᠪ",["c"]="ᠼ",["d"]="ᠳ",["e"]="ᠡ",["f"]="ᠹ",["g"]="ᠭ",["h"]="ᠬ",["i"]="ᠢ",["j"]="ᠵ",["k"]="ᠺ",["l"]="ᠯ",["m"]="ᠮ",["n"]="ᠨ",["o"]="ᠥ",["p"]="ᠫ",["q"]="ᠴ",["r"]="ᠷ",["s"]="ᠰ",["t"]="ᠲ",["u"]="ᠦ",["v"]="ᠤ",["w"]="ᠣ",["x"]="ᠱ",["y"]="ᠶ",["z"]="ᠽ",[","]="  " }
------------
 
ime.register_command("my", "Mongol_Yi", "蒙古语","number","输入蒙古拼音，如aray")
--ime.register_converter(“Mongol_Yi”, “Mongol”iag)
