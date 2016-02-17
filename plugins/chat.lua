local function run(msg)
if msg.text == "سلام" then
	return "سلام"
end
if msg.text == "خوبی" then
	return "بخوبیت  تو خوبی ؟"
end
if msg.text == "مرسی" then
	return "😊"
end
if msg.text == "روح سوار" then
	return "بله"
end
if msg.text == "عرفان" then
	return "دستمالی ممنوع"
end
if msg.text == "بای روح سوار" then
	return "بای عسیسم"
end
if msg.text == "سلام روح سوار" then
	return "سلام به روی ماهت"
end
if msg.text == "slm" then
	return "درست سلام بده تا جوابتو بدممم"

end
if msg.text == "خوابم میاد" then
	return "برو بکپ"
	
end
if msg.text == "من رفتم بای" then
	return "برو گمشو پس"
	
end
if msg.text == "" then
	return ""
	
end
if msg.text == "" then
	return ""
	
end
if msg.text == "" then
	return ""
	
end
if msg.text == "bye" then
	return "Bye Bye"
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
		"^سلام$",
		"^من رفتم$",
		"^روح سوار$",
		"^خوبی$",
		"^عرفان$",
		"^مرسی$",
		"^bye$",
		"^بای روح سوار$",
		"^سلام روح سوار$",
		"^slm",
		"^خوابم میاد",
		"^من رفتم بای",
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}
