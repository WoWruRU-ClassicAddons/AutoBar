--
-- AutoBar
-- http://www.curse-gaming.com/en/wow/addons-4430-1-autobar-toadkiller.html
--
-- Version : Russian ( by Maus ) 
--


local AceLocale = AceLibrary("AceLocale-2.1");

AceLocale:RegisterTranslation("AutoBar", "ruRU", function()
    return {
		["AUTOBAR"] = "АвтоПанель",
		["CONFIG_WINDOW"] = "Окно настроек",
		["SLASHCMD_LONG"] = "/autobar",
		["SLASHCMD_SHORT"] = "/atb",
		["BUTTON"] = "Кнопка",
		["EDITSLOT"] = "Редактировать слот",
		["VIEWSLOT"] = "Просмотреть слот",

		--  AutoBarConfig.lua
		["EMPTY"] = "Пустой"; --AUTOBAR_CONFIG_EMPTY
		["AUTOBAR_CONFIG_SMARTSELFCAST"] = "Умное чтение на себя";
		["AUTOBAR_CONFIG_REMOVECAT"] = "Удалить текущую категорию";
		["AUTOBAR_CONFIG_ROW"] = "Ряды";
		["AUTOBAR_CONFIG_COLUMN"] = "Колонок";
		["AUTOBAR_CONFIG_GAPPING"] = "Зазор иконки";
		["AUTOBAR_CONFIG_ALPHA"] = "Прозрачность иконки";
		["AUTOBAR_CONFIG_BUTTONWIDTH"] = "Ширина кнопок";
		["AUTOBAR_CONFIG_BUTTONHEIGHT"] = "Высота кнопок";
		["AUTOBAR_CONFIG_DOCKSHIFTX"] = "Сдвигать стыки в Лево/Право";
		["AUTOBAR_CONFIG_DOCKSHIFTY"] = "Сдвигать стыки в Верх/Низ";
		["AUTOBAR_CONFIG_WIDTHHEIGHTUNLOCKED"] = "Высота и Ширина\nНезапертых Кнопок";
		["AUTOBAR_CONFIG_HIDEKEYBINDING"] = "Скрыть текст сочет. клавиш";
		["AUTOBAR_CONFIG_HIDECOUNT"] = "Скрыть текст количества";
		["AUTOBAR_CONFIG_SHOWEMPTY"] = "Показ пустых кнопок";
		["AUTOBAR_CONFIG_SHOWCATEGORYICON"] = "Показать иконки категорий";
		["AUTOBAR_CONFIG_HIDETOOLTIP"] = "Скрыть всплывающие подсказки";
		["AUTOBAR_CONFIG_POPUPDIRECTION"] = "Всплывающее\nКнопки\nНаправление";
		["AUTOBAR_CONFIG_POPUPDISABLE"] = "Отключить всплывания";
		["AUTOBAR_CONFIG_POPUPONSHIFT"] = "Всплывать на клавишу Shift";
		["AUTOBAR_CONFIG_HIDEDRAGHANDLE"] = "Скрыть ручку перетаскивания";
		["AUTOBAR_CONFIG_PLAINBUTTONS"] = "Обычные кнопки";
		["AUTOBAR_CONFIG_NOPOPUP"] = "Не Всплывать";
		["AUTOBAR_CONFIG_ARRANGEONUSE"] = "Переставлять порядок исп.";
		["AUTOBAR_CONFIG_RIGHTCLICKTARGETSPET"] = "ПКМ - целевой объект питомец";
		["AUTOBAR_CONFIG_DOCKTONONE"] = "нету";
		["AUTOBAR_CONFIG_DOCKTOGBARS"] = "Gпанели Вторая Панель";
		["AUTOBAR_CONFIG_DOCKTOMAIN"] = "Главное Меню";
		["AUTOBAR_CONFIG_DOCKTOCHATFRAME"] = "Окно Чата";
		["AUTOBAR_CONFIG_DOCKTOCHATFRAMEMENU"] = "Меню Окна Чата";
		["AUTOBAR_CONFIG_DOCKTOACTIONBAR"] = "Панели Команд";
		["AUTOBAR_CONFIG_DOCKTOMENUBUTTONS"] = "Меню Кнопок";
		["AUTOBAR_CONFIG_ALIGN"] = "Выравнять кнопки";
    }
end);


if (GetLocale() == "ruRU") then

AUTOBAR_CHAT_MESSAGE1 = "Конфигурация для этого персонажа является старой версией. Никаких попыток по обновлению, не ведется.";
AUTOBAR_CHAT_MESSAGE2 = "Обновление кнопки мульти-предмета #%d предмет #%d использует ID вместо имени.";
AUTOBAR_CHAT_MESSAGE3 = "Обновление одной кнопки предмета #%d использует ID предмета вместо его имени.";

---------------------------------------
--  AutoBar_Config.xml
---------------------------------------
AUTOBAR_CONFIG_VIEWTEXT = "Для редактирование ячейки, выберите ее из раздела редактирования ячейки\nв нижней части вкладки ячейки.";
AUTOBAR_CONFIG_SLOTVIEWTEXT = "Просмотреть комбинирование слоя (не редактируется)";
AUTOBAR_CONFIG_RESET = "Сброс";
AUTOBAR_CONFIG_REVERT = "Возвратить";
AUTOBAR_CONFIG_DONE = "Готово";
AUTOBAR_CONFIG_DETAIL_CATEGORIES = "(Нажмите Shift-Клик чтобы осмотреть категорию)";
AUTOBAR_CONFIG_DRAGHANDLE = "Зажмите ЛКМ для перемещения  AutoBar\nНажмите ЛКМ чтобы заблокировать/разблокировать\nНажмите ПКМ чтобы войти в меню опций.";
AUTOBAR_CONFIG_EMPTYSLOT = "Пустой слот";
AUTOBAR_CONFIG_CLEARSLOT = "Очистить слот";
AUTOBAR_CONFIG_SETSHARED = "Общий профиль:";
AUTOBAR_CONFIG_SETSHAREDTIP = "Выберите общий профиль для использования на этим персонажем.\nИзменения в этом профиле приведут к изменениями на всех персонажах.";

AUTOBAR_CONFIG_TAB_SLOTS = "Ячейки";
AUTOBAR_CONFIG_TAB_BAR = "Полоса";
AUTOBAR_CONFIG_TAB_BUTTONS = "Кнопки";
AUTOBAR_CONFIG_TAB_POPUP = "Всплывающее";
AUTOBAR_CONFIG_TAB_PROFILE = "Профиль";

AUTOBAR_TOOLTIP1 = " (Кол-во: ";
AUTOBAR_TOOLTIP2 = " [Пользовательский предмет]";
AUTOBAR_TOOLTIP3 = " [Только в бою]";
AUTOBAR_TOOLTIP4 = " [Только на полях боя]";
AUTOBAR_TOOLTIP5 = " [Только вне боя]";
AUTOBAR_TOOLTIP6 = " [Ограниченное использование]";
AUTOBAR_TOOLTIP7 = " [Восстановление]";
AUTOBAR_TOOLTIP8 = "\n(ЛКМ для применения на оружие основной руки\nПКМ для применения на орудие второй руки)";


---------------------------------------
--  AutoBarConfig.lua
---------------------------------------

AUTOBAR_CONFIG_NOTFOUND = "(Не Найден: Предмет ";
AUTOBAR_CONFIG_DOCKTO = "Прикреплен к:";
AUTOBAR_CONFIG_SLOTEDITTEXT = " Слой (клик для правки)";
AUTOBAR_CONFIG_CHARACTER = "Персонаж";
AUTOBAR_CONFIG_SHARED = "Общий";
AUTOBAR_CONFIG_CLASS = "Классовый";
AUTOBAR_CONFIG_BASIC = "Основной";
AUTOBAR_CONFIG_USECHARACTER = "Исп. Слой Персонажа";
AUTOBAR_CONFIG_USESHARED = "Исп. Общий слой";
AUTOBAR_CONFIG_USECLASS = "Исп. Классовый Слой";
AUTOBAR_CONFIG_USEBASIC = "Исп. Основной слой";
AUTOBAR_CONFIG_USECHARACTERTIP = "Слой предметов является специфическим для этого персонажа.";
AUTOBAR_CONFIG_USESHAREDTIP = "Общие элементы слоя общие и для других персонажей, которые используют тот же общий слой.\nКонкретный слой можно выбрать на вкладке профиль.";
AUTOBAR_CONFIG_USECLASSTIP = "Классовый слой является общим для всех предметов того же класса, который использует классовый слой.";
AUTOBAR_CONFIG_USEBASICTIP = "Основной слой предметов является общим для всех персонажей использующие основной слой.";
AUTOBAR_CONFIG_HIDECONFIGTOOLTIPS = "Скрыть конфиг подсказок.";
AUTOBAR_CONFIG_OSKIN = "Исп. oШкурку";
AUTOBAR_CONFIG_CHARACTERLAYOUT = "Планировка Персонажа";
AUTOBAR_CONFIG_SHAREDLAYOUT = "Общий макет";
AUTOBAR_CONFIG_CHARACTERLAYOUTTIP = "Изменения в визуальной разметке влияют только на этого персонажа.";
AUTOBAR_CONFIG_SHAREDLAYOUTTIP = "Изменение в визуальной разметке влияют на всех персонажей использующих тот же профиль.";
AUTOBAR_CONFIG_SHARED1 = "Общий 1";
AUTOBAR_CONFIG_SHARED2 = "Общий 2";
AUTOBAR_CONFIG_SHARED3 = "Общий 3";
AUTOBAR_CONFIG_SHARED4 = "Общий 4";
AUTOBAR_CONFIG_TIPOVERRIDE = "Предметы в этом слое имеют высший приоритет над предметами в нижних слоях.\n";
AUTOBAR_CONFIG_TIPOVERRIDDEN = "Предметы в слотах на этом слое будут заменены на предметы на более высших слоях.\n";
AUTOBAR_CONFIG_TIPAFFECTSCHARACTER = "Изменения затрагивают только этого персонажа.";
AUTOBAR_CONFIG_TIPAFFECTSALL = "Изменения затронут всех персонажей.";
AUTOBAR_CONFIG_EDITCHARACTER = "Править Слой Персонажа";
AUTOBAR_CONFIG_EDITSHARED = "Править Общий слой";
AUTOBAR_CONFIG_EDITCLASS = "Править Классовый Слой";
AUTOBAR_CONFIG_EDITBASIC = "Править Основной Слой";
AUTOBAR_CONFIG_SETUPSINGLE = "Настройка по персонажу";
AUTOBAR_CONFIG_SETUPSHARED = "Общая настройка";
AUTOBAR_CONFIG_SETUPSTANDARD = "Стандартная настройка";
AUTOBAR_CONFIG_SETUPBLANKSLATE = "Чистый лист";
AUTOBAR_CONFIG_SETUPSINGLETIP = "Нажмите для настройки по персонажу подобно классическому AutoBar.";
AUTOBAR_CONFIG_SETUPSHAREDTIP = "Нажмите для общих настроек.";
AUTOBAR_CONFIG_SETUPSTANDARDTIP = "Включить редактирование и использование всех слоев.";
AUTOBAR_CONFIG_SETUPBLANKSLATETIP = "Очистить всех персонажей и общие слоты.";
AUTOBAR_CONFIG_RESETSINGLETIP = "Нажмите, чтобы сбросить настройки по персонажу по умолчанию.";
AUTOBAR_CONFIG_RESETSHAREDTIP = "Нажмите, чтобы сбросить \"общие\" по умолчанию.\nКонкретные класс слои копируются в слоя персонажа.\nСлои по умолчанию копируются в общие слои.";
AUTOBAR_CONFIG_RESETSTANDARDTIP = "Нажмите чтобы сбросить по умолчанию.\nКлассовые слои копируются в слоя персонажа.\nСлоты по умолчанию копируются с общие слоты.\nОбщие и слои персонажа очищаются.";

AUTOBAR_TOOLTIP9 = "Кнопка мульти-категории\n";
AUTOBAR_TOOLTIP10 = " (Собственные предметы по ID)";
AUTOBAR_TOOLTIP11 = "\n(ID предмета не распознается)";
AUTOBAR_TOOLTIP12 = " (Собственные предметы по имени)";
AUTOBAR_TOOLTIP13 = "Кнопка одиночной категории\n\n";
AUTOBAR_TOOLTIP14 = "\nНе использовать на прямую.";
AUTOBAR_TOOLTIP15 = "\nОружие\n(ЛКМ основное оружие\nПКМ оружие левой руки)";
AUTOBAR_TOOLTIP16 = "\nНацеленный.";
AUTOBAR_TOOLTIP17 = "\nТолько в не боя.";
AUTOBAR_TOOLTIP18 = "\nТолько в бою.";
AUTOBAR_TOOLTIP19 = "\nРасположение: ";
AUTOBAR_TOOLTIP20 = "\nЛимит использования: "
AUTOBAR_TOOLTIP21 = "Требует вост. ЗД";
AUTOBAR_TOOLTIP22 = "Требует вост. мана";
AUTOBAR_TOOLTIP23 = "Кнопка одиночного предмета\n\n";


---------------------------------------
--  AutoBarItemList.lua
---------------------------------------
AUTOBAR_ALTERACVALLEY = "Альтеракская долина";
AUTOBAR_WARSONGGULCH = "Ущелье Песни Войны";
AUTOBAR_ARATHIBASIN = "Низина Арати";
AUTOBAR_AHN_QIRAJ = "Ан'Кираж";
AUTOBAR_BWL = "Логово Крыла Тьмы";

AUTOBAR_CLASS_CUSTOM = "Свои";
AUTOBAR_CLASS_CLEAR = "Очистить этот слот";
AUTOBAR_CLASS_BANDAGES = "Бинты";
AUTOBAR_CLASS_ALTERAC_BANDAGE = "Бинты Альтерака";
AUTOBAR_CLASS_WARSONG_BANDAGE = "Бинты Песни Войны";
AUTOBAR_CLASS_ARATHI_BANDAGE = "Бинты Арати";
AUTOBAR_CLASS_UNGORORESTORE = "Ун'Горо: Кристалл восстановления";

AUTOBAR_CLASS_ANTIVENOM = "Противоядие";
AUTOBAR_CLASS_AGILITYPOTIONS = "Зелья ловкости";
AUTOBAR_CLASS_STRENGTHPOTIONS = "Зелья силы";
AUTOBAR_CLASS_FORTITUDEPOTIONS = "Зелья стойкости";
AUTOBAR_CLASS_INTELLECTPOTIONS = "Зелья интеллекта";
AUTOBAR_CLASS_WISDOMPOTIONS = "Зелья мудрости";
AUTOBAR_CLASS_DEFENSEPOTIONS = "Зелья защиты";
AUTOBAR_CLASS_TROLLBLOODPOTIONS = "Зелья троллей крови";
AUTOBAR_CLASS_SCROLLOFAGILITY = "Свиток ловкости";
AUTOBAR_CLASS_SCROLLOFINTELLECT = "Свиток интеллекта";
AUTOBAR_CLASS_SCROLLOFPROTECTION = "Свиток защиты";
AUTOBAR_CLASS_SCROLLOFSPIRIT = "Свиток духа";
AUTOBAR_CLASS_SCROLLOFSTAMINA = "Свиток выносливости";
AUTOBAR_CLASS_SCROLLOFSTRENGTH = "Свиток силы";
AUTOBAR_CLASS_BUFF_ATTACKPOWER = "Бафф: сила атаки";
AUTOBAR_CLASS_BUFF_ATTACKSPEED = "Бафф: скорость атаки";
AUTOBAR_CLASS_BUFF_DODGE = "Бафф: уклон";
AUTOBAR_CLASS_BUFF_FROST = "Бафф: сопротивление магии льда";
AUTOBAR_CLASS_BUFF_FIRE = "Бафф: сопротивление огню";

AUTOBAR_CLASS_HEALPOTIONS = "Зелья исцеления";
AUTOBAR_CLASS_PVP6HEALPOTIONS = "ПвП  Ранг 6 - Зелье исцеления";
AUTOBAR_CLASS_HEALTHSTONE = "Камень здоровья";
AUTOBAR_CLASS_WHIPPER_ROOT = "Кнутокорень";
AUTOBAR_CLASS_BATTLEGROUNDHEALPOTIONS = "Зелье исцеления поля боя";
AUTOBAR_CLASS_MANAPOTIONS = "Залье маны";
AUTOBAR_CLASS_PVP6MANAPOTIONS = "ПвП Ранг 6 - Зелье маны";
AUTOBAR_CLASS_MANASTONE = "Камни маны";
AUTOBAR_CLASS_BATTLEGROUNDMANAPOTIONS = "Зелья маны поле боя";
AUTOBAR_CLASS_DREAMLESS_SLEEP = "Мирный сон";
AUTOBAR_CLASS_NIGHT_DRAGONS_BREATH = "Дыхание ночного дракона";
AUTOBAR_CLASS_REJUVENATION_POTIONS = "Зелья Омоложения";

AUTOBAR_CLASS_BATTLESTANDARD = "Боевые Стандарты";
AUTOBAR_CLASS_BATTLESTANDARDAV = "Боевые Стандарты АД";
AUTOBAR_CLASS_DEMONIC_DARK_RUNES = "Демоническая и Темная руны";
AUTOBAR_CLASS_ARCANE_PROTECTION = "Защита от теневой магии";
AUTOBAR_CLASS_FIRE_PROTECTION = "Защита от огня";
AUTOBAR_CLASS_FROST_PROTECTION = "Защита от холода";
AUTOBAR_CLASS_NATURE_PROTECTION = "Защита от природы";
AUTOBAR_CLASS_SHADOW_PROTECTION = "Защита от тёмной магии";
AUTOBAR_CLASS_SPELL_PROTECTION = "Защита от заклинаний";
AUTOBAR_CLASS_HOLY_PROTECTION = "Защита света";
AUTOBAR_CLASS_INVULNERABILITY_POTIONS = "Зелья неуязвимости";
AUTOBAR_CLASS_FREE_ACTION_POTION = "Зелья свободные команды";

AUTOBAR_CLASS_HEARTHSTONE = "Камень возвращения";
AUTOBAR_CLASS_WATER = "Вода";
AUTOBAR_CLASS_WATER_PERCENT = "Вода: % получение маны";
AUTOBAR_CLASS_WATER_CONJURED = "Вода: Сотворенная Магом";
AUTOBAR_CLASS_WATER_SPIRIT = "Вода: Бонус к духу";
AUTOBAR_CLASS_RAGEPOTIONS = "Зелья ярости";
AUTOBAR_CLASS_ENERGYPOTIONS = "Зелья энергии";
AUTOBAR_CLASS_SWIFTNESSPOTIONS = "Зелье скорости";
AUTOBAR_CLASS_SOULSHARDS = "Осколки души";
AUTOBAR_CLASS_ARROWS = "Стрелы";
AUTOBAR_CLASS_BULLETS = "Пули";
AUTOBAR_CLASS_THROWNWEAPON = "Метательное Оружие";
AUTOBAR_CLASS_FOOD = "Еда: Без бонуса";
AUTOBAR_CLASS_FOOD_PERCENT = "Еда: % получения здоровья";
AUTOBAR_CLASS_FOOD_PET_BREAD = "Еда: Пит Хлеб";
AUTOBAR_CLASS_FOOD_PET_CHEESE = "Еда: Пит Сыр";
AUTOBAR_CLASS_FOOD_PET_FISH = "Еда: Пит Рыба";
AUTOBAR_CLASS_FOOD_PET_FRUIT = "Еда: Пит Фрукты";
AUTOBAR_CLASS_FOOD_PET_FUNGUS = "Еда: Пит Грибы";
AUTOBAR_CLASS_FOOD_PET_MEAT = "Еда: Пит Мясо";
AUTOBAR_CLASS_FOOD_COMBO= "Еда & Вода сочетание";
AUTOBAR_CLASS_FOOD_CONJURED = "Еда: Сотворенная Магом";
AUTOBAR_CLASS_FOOD_STAMINA = "Еда: Бонус к выносливости";
AUTOBAR_CLASS_FOOD_AGILITY = "Еда: Бонус к ловкости";
AUTOBAR_CLASS_FOOD_MANAREGEN = "Еда: Бонус к регену маны";
AUTOBAR_CLASS_FOOD_HPREGEN = "Еда: Бонус к регену ЗД";
AUTOBAR_CLASS_FOOD_STRENGTH = "Еда: Бонус к силе";
AUTOBAR_CLASS_FOOD_INTELLIGENCE = "Еда: Бонус к интеллекту";
AUTOBAR_CLASS_FOOD_ARATHI = "Еда: Низина Арати";
AUTOBAR_CLASS_FOOD_WARSONG = "Еда: Ущелье Песни Войны";
AUTOBAR_CLASS_SHARPENINGSTONES = "Кузнечное дело: Точило";
AUTOBAR_CLASS_WEIGHTSTONE = "Кузнечное дело: Грузило";
AUTOBAR_CLASS_POISON_CRIPPLING = "Калечащий яд";
AUTOBAR_CLASS_POISON_DEADLY = "Смертельный яд";
AUTOBAR_CLASS_POISON_INSTANT = "Быстродействующий яд";
AUTOBAR_CLASS_POISON_MINDNUMBING = "Дурманящий яд";
AUTOBAR_CLASS_POISON_WOUND = "Нейтрализующий яд";
AUTOBAR_CLASS_EXPLOSIVES = "Взрывчатка";
AUTOBAR_CLASS_MOUNTS_TROLL = "Ездовое животное: Тролль – Ящер";
AUTOBAR_CLASS_MOUNTS_ORC = "Ездовое животное: Орк - Волк";
AUTOBAR_CLASS_MOUNTS_UNDEAD = "Ездовое животное: Нежить - Конь-Скелет";
AUTOBAR_CLASS_MOUNTS_TAUREN = "Ездовое животное: Таурен - Кодо";
AUTOBAR_CLASS_MOUNTS_HUMAN = "Ездовое животное: Человек - Лошадь";
AUTOBAR_CLASS_MOUNTS_NIGHTELF = "Ездовое животное: Ночной эльф - Тигр";
AUTOBAR_CLASS_MOUNTS_DWARF = "Ездовое животное: Дворф - Баран";
AUTOBAR_CLASS_MOUNTS_GNOME = "Ездовое животное: Гном - Долгоног";
AUTOBAR_CLASS_MOUNTS_SPECIAL = "Ездовое животное: Особый";
AUTOBAR_CLASS_MOUNTS_QIRAJI = "Ездовое животное: Киражский";
AUTOBAR_CLASS_MANA_OIL = "Волшебное масло: Восполнение маны";
AUTOBAR_CLASS_WIZARD_OIL = "Волшебное масло: Бонус к урону/исцелению";
AUTOBAR_CLASS_FISHINGITEMS = "Предметы рыбалки";

end