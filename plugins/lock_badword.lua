local function run(msg, matches)
if msg.to.type == 'chat' then
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_badw'] then
                lock_adds = data[tostring(msg.to.id)]['settings']['lock_badw']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_adds == "yes" then
        send_large_msg(chat, 'Badwords is not allowed here!!')
        chat_del_user(chat, user, ok_cb, true)
    end
end
end
return {
  patterns = {
        "(ک*س)$",
        "کیر",
	"کص",
	"کــــــــــیر",
	"کــــــــــــــــــــــــــــــیر",
	"کـیـــــــــــــــــــــــــــــــــــــــــــــــــــر",
        "ک×یر",
	"ک÷یر",
	"ک*ص",
	"کــــــــــیرر",
        "عمه جنده",
	"کونی",
	"تخم لولو",
	"کیر تو کون شده",
	"کس نگو",
	"کص نگو",
	"کیرم دهنت",
	"خایم دهنت",
	"جقی",
	"کله کیری",
	"مادر پیاله",
	"گاییدی",
	"گاییدمت",
	"فاک",
	"فاکیو",
	"کسلیس",
	"کصلیص",
	"کصلیس",
	"کسلیص",
	"حرومی",
	"تخم سگ",
	"تخم جن",
	"فاکیو بچ کونی",
	"کیرمم نیستی",
	"به کیرم",
	"به چپم",
	"ب کیرم",
	"ب چپم",
	"کسشر نگو",
	"سکسی",
	"خایمال",
	"بیه",
	"بده بکنیم",
	"نگاییدم",
	"خارتو گاییدم",
	"مادرتو گاییدم",
	"پدر سگ ",
	"ننت زیرمه ",
	"کیری خان",
	"چاقال",
	"کس عمت",
	"کص عمت",
	"به تخمم",
	"سیکتیر",
	"نکنمت",
	"میکنمت",
	"کیر مایی",
	"سگی میکنمت",
	"کیر خر",
	"لاشی",
	"فاک اف",
	"بیلاح",
	"مادرجنده",
	"کسکش",
	"جنده"
  },
  run = run
}
