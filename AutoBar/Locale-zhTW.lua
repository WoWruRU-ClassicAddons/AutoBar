﻿--
-- AutoBar
-- http://www.curse-gaming.com/en/wow/addons-4430-1-autobar-toadkiller.html
--

local AceLocale = AceLibrary("AceLocale-2.1");

AceLocale:RegisterTranslation("AutoBar", "zhTW", function()
    return {
        ["AUTOBAR"] = "消耗品助手",
        ["CONFIG_WINDOW"] = "設置視窗",
        ["SLASHCMD_LONG"] = "/autobar",
        ["SLASHCMD_SHORT"] = "/atb",
        ["BUTTON"] = "按鈕",
        ["EDITSLOT"] = "編輯按鈕",
        ["VIEWSLOT"] = "檢視按鈕",

		--  AutoBar_Config.lua
		["EMPTY"] = "空";
		["AUTOBAR_CONFIG_SMARTSELFCAST"] = "智能自我施法";
		["AUTOBAR_CONFIG_REMOVECAT"] = "移除目前類型";
		["AUTOBAR_CONFIG_ROW"] = "行";
		["AUTOBAR_CONFIG_COLUMN"] = "列";
		["AUTOBAR_CONFIG_GAPPING"] = "圖標間隔";
		["AUTOBAR_CONFIG_ALPHA"] = "圖標透明度";
		["AUTOBAR_CONFIG_BUTTONWIDTH"] = "按鈕寬度";
		["AUTOBAR_CONFIG_BUTTONHEIGHT"] = "按鈕高度";
		["AUTOBAR_CONFIG_DOCKSHIFTX"] = "調整左右依附距離";
		["AUTOBAR_CONFIG_DOCKSHIFTY"] = "調整上下依附距離";
		["AUTOBAR_CONFIG_WIDTHHEIGHTUNLOCKED"] = "不鎖定按鈕長寬比";
		["AUTOBAR_CONFIG_HIDEKEYBINDING"] = "隱藏快捷鍵顯示";
		["AUTOBAR_CONFIG_HIDECOUNT"] = "隱藏數量顯示";
		["AUTOBAR_CONFIG_SHOWEMPTY"] = "顯示空按鈕";
		["AUTOBAR_CONFIG_SHOWCATEGORYICON"] = "顯示物品類型圖示";
		["AUTOBAR_CONFIG_HIDETOOLTIP"] = "隱藏提示訊息";
		["AUTOBAR_CONFIG_POPUPDIRECTION"] = "按鈕\n彈出\n方向";
		["AUTOBAR_CONFIG_POPUPDISABLE"] = "關閉彈出按鈕";
		["AUTOBAR_CONFIG_POPUPONSHIFT"] = "按 Shift 彈出按鈕";
		["AUTOBAR_CONFIG_HIDEDRAGHANDLE"] = "隱藏拖曳點";
		["AUTOBAR_CONFIG_PLAINBUTTONS"] = "隱藏按鈕邊框";
		["AUTOBAR_CONFIG_NOPOPUP"] = "不彈出";
		["AUTOBAR_CONFIG_ARRANGEONUSE"] = "使用後重新排列順序";
		["AUTOBAR_CONFIG_RIGHTCLICKTARGETSPET"] = "右鍵目標寵物";
		["AUTOBAR_CONFIG_DOCKTONONE"] = "無";
		["AUTOBAR_CONFIG_DOCKTOGBARS"] = "Gbars 第二工作列";
		["AUTOBAR_CONFIG_DOCKTOMAIN"] = "主目錄";
		["AUTOBAR_CONFIG_DOCKTOCHATFRAME"] = "對話框架";
		["AUTOBAR_CONFIG_DOCKTOCHATFRAMEMENU"] = "對話框架選單";
		["AUTOBAR_CONFIG_DOCKTOACTIONBAR"] = "動作條";
		["AUTOBAR_CONFIG_DOCKTOMENUBUTTONS"] = "選單按鈕";
		["AUTOBAR_CONFIG_ALIGN"] = "按鈕排列方向";
    }
end);


if (GetLocale()=="zhTW") then

AUTOBAR_CHAT_MESSAGE1 = "保存的配置是舊的版本, 已被清除.  不支援配置的升級.";
AUTOBAR_CHAT_MESSAGE2 = "更新同一類型物品按鈕 #%d 物品 #%d, 使用物品ID替換物品名稱.";
AUTOBAR_CHAT_MESSAGE3 = "更新單一類型物品按鈕 #%d, 使用物品ID替換物品名稱.";

---------------------------------------
--  AutoBar_Config.xml
---------------------------------------
AUTOBAR_CONFIG_VIEWTEXT = "要編輯按鈕請選擇欄位分頁下方的欄位進行編輯。";
AUTOBAR_CONFIG_SLOTVIEWTEXT = "檢視綜合欄位 (無法編輯)";
AUTOBAR_CONFIG_RESET = "重置";
AUTOBAR_CONFIG_REVERT = "復原";
AUTOBAR_CONFIG_DONE = "完成";
AUTOBAR_CONFIG_DETAIL_CATEGORIES = "(Shift+點擊進入詳細分類)";
AUTOBAR_CONFIG_DRAGHANDLE = "滑鼠左鍵拖曳移動 AutoBar\n左鍵鎖定 / 解鎖\n右鍵顯示功能選項";
AUTOBAR_CONFIG_EMPTYSLOT = "空欄位";
AUTOBAR_CONFIG_CLEARSLOT = "清除欄位";
AUTOBAR_CONFIG_SETSHARED = "共用設定：";
AUTOBAR_CONFIG_SETSHAREDTIP = "選擇使用共用，將會把共用的設定值套用到所有的角色。";

AUTOBAR_CONFIG_TAB_SLOTS = "欄位";
AUTOBAR_CONFIG_TAB_BAR = "動作條";
AUTOBAR_CONFIG_TAB_BUTTONS = "按鈕";
AUTOBAR_CONFIG_TAB_POPUP = "彈出";
AUTOBAR_CONFIG_TAB_PROFILE = "專案設定";

AUTOBAR_TOOLTIP1 = " (數量: ";
AUTOBAR_TOOLTIP2 = " [自定義物品]";
AUTOBAR_TOOLTIP3 = " [僅用於戰鬥狀態]";
AUTOBAR_TOOLTIP4 = " [僅用於戰場]";
AUTOBAR_TOOLTIP5 = " [僅用於非戰鬥狀態]";
AUTOBAR_TOOLTIP6 = " [使用條件限制]";
AUTOBAR_TOOLTIP7 = " [使用後需冷卻]";
AUTOBAR_TOOLTIP8 = "\n(左鍵用於主手武器\n右鍵用於副手武器)";


---------------------------------------
--  AutoBar_Config.lua
---------------------------------------

AUTOBAR_CONFIG_NOTFOUND = "(未發現: 物品 ";
AUTOBAR_CONFIG_DOCKTO = "依附於:";
AUTOBAR_CONFIG_SLOTEDITTEXT = " 欄位 (左鍵編輯)";
AUTOBAR_CONFIG_CHARACTER = "角色";
AUTOBAR_CONFIG_SHARED = "共用";
AUTOBAR_CONFIG_CLASS = "職業";
AUTOBAR_CONFIG_BASIC = "基本";
AUTOBAR_CONFIG_USECHARACTER = "使用角色";
AUTOBAR_CONFIG_USESHARED = "使用共用";
AUTOBAR_CONFIG_USECLASS = "使用職業";
AUTOBAR_CONFIG_USEBASIC = "使用基本";
AUTOBAR_CONFIG_USECHARACTERTIP = "角色欄位的物品只適用於這個角色。";
AUTOBAR_CONFIG_USESHAREDTIP = "共用欄位的物品適用於其他角色使用相同的物品。\n共用項目可由專案分頁中選擇。";
AUTOBAR_CONFIG_USECLASSTIP = "職業欄位的物品適用於所有相同職業的角色。";
AUTOBAR_CONFIG_USEBASICTIP = "基本欄位的物品適用於所有角色可用的基本物品。";
AUTOBAR_CONFIG_HIDECONFIGTOOLTIPS = "隱藏設定提示訊息";
AUTOBAR_CONFIG_OSKIN = "使用 oSkin";
AUTOBAR_CONFIG_CHARACTERLAYOUT = "設定為角色專用";
AUTOBAR_CONFIG_SHAREDLAYOUT = "設定為共用";
AUTOBAR_CONFIG_CHARACTERLAYOUTTIP = "改變可見的欄位只作用於這個角色。";
AUTOBAR_CONFIG_SHAREDLAYOUTTIP = "改變可見的欄位可作用於所有角色使用相同的共用設定。";
AUTOBAR_CONFIG_SHARED1 = "共用 1";
AUTOBAR_CONFIG_SHARED2 = "共用 2";
AUTOBAR_CONFIG_SHARED3 = "共用 3";
AUTOBAR_CONFIG_SHARED4 = "共用 4";
AUTOBAR_CONFIG_TIPOVERRIDE = "Items in a slot on this layer override items in that slot on lower layers.\n";
AUTOBAR_CONFIG_TIPOVERRIDDEN = "Items in a slot on this layer are overidden by items on higher layers.\n";
AUTOBAR_CONFIG_TIPAFFECTSCHARACTER = "變動只作用於這個角色。";
AUTOBAR_CONFIG_TIPAFFECTSALL = "變動作用於所有角色。";
AUTOBAR_CONFIG_EDITCHARACTER = "編輯角色的欄位";
AUTOBAR_CONFIG_EDITSHARED = "編輯共用的欄位";
AUTOBAR_CONFIG_EDITCLASS = "編輯職業的欄位";
AUTOBAR_CONFIG_EDITBASIC = "編輯基本的欄位";
AUTOBAR_CONFIG_SETUPSINGLE = "單一設定";
AUTOBAR_CONFIG_SETUPSHARED = "共用設定";
AUTOBAR_CONFIG_SETUPSTANDARD = "標準設定";
AUTOBAR_CONFIG_SETUPBLANKSLATE = "清空欄位";
AUTOBAR_CONFIG_SETUPSINGLETIP = "左鍵將設定單一角色為職業的 AutoBar。";
AUTOBAR_CONFIG_SETUPSHAREDTIP = "左鍵為共用設定\n開啟角色專用以及共用欄位。";
AUTOBAR_CONFIG_SETUPSTANDARDTIP = "開啟編輯並使用所有欄位。";
AUTOBAR_CONFIG_SETUPBLANKSLATETIP = "清除所有角色和共用的按鈕。";
AUTOBAR_CONFIG_RESETSINGLETIP = "左鍵將重置為單一角色設定的預設值。";
AUTOBAR_CONFIG_RESETSHAREDTIP = "左鍵將重置為角色共用設定的預設值。\n職業專用按鈕會複製到角色欄位。\n預設按鈕將複製到共用的欄位。";
AUTOBAR_CONFIG_RESETSTANDARDTIP = "左鍵將重置為標準預設值。\n職業專用按鈕會在職業欄位中。\n預設按鈕在基本欄位中。\n共用和角色欄位將會清除。";

AUTOBAR_TOOLTIP9 = "同類物品按鈕\n";
AUTOBAR_TOOLTIP10 = " (按物品ID定制)";
AUTOBAR_TOOLTIP11 = "\n(物品ID未經過驗證)";
AUTOBAR_TOOLTIP12 = " (按物品名稱定制)";
AUTOBAR_TOOLTIP13 = "單一物品按鈕\n\n";
AUTOBAR_TOOLTIP14 = "\n不能直接使用.";
AUTOBAR_TOOLTIP15 = "\n武器目標\n(左鍵用於主手武器\n右鍵用於副手武器.)";
AUTOBAR_TOOLTIP16 = "\n需目標.";
AUTOBAR_TOOLTIP17 = "\n僅用於非戰鬥狀態.";
AUTOBAR_TOOLTIP18 = "\n僅用於戰鬥狀態.";
AUTOBAR_TOOLTIP19 = "\n使用地點: ";
AUTOBAR_TOOLTIP20 = "\n使用條件限制: ";
AUTOBAR_TOOLTIP21 = "所需恢復生命";
AUTOBAR_TOOLTIP22 = "所需恢復法力";
AUTOBAR_TOOLTIP23 = "單一物品按鈕\n\n";


---------------------------------------
--  AutoBar_ItemList.lua
---------------------------------------
AUTOBAR_ALTERACVALLEY = "奧特蘭克山谷";
AUTOBAR_WARSONGGULCH = "戰歌峽谷";
AUTOBAR_ARATHIBASIN = "阿拉希盆地";
AUTOBAR_AHN_QIRAJ = "安其拉";
AUTOBAR_BWL = "黑翼之巢";

AUTOBAR_CLASS_CUSTOM = "自訂";
AUTOBAR_CLASS_CLEAR = "清除欄位";
AUTOBAR_CLASS_BANDAGES = "繃帶";
AUTOBAR_CLASS_ALTERAC_BANDAGE = "奧特蘭克繃帶";
AUTOBAR_CLASS_WARSONG_BANDAGE = "戰歌繃帶";
AUTOBAR_CLASS_ARATHI_BANDAGE = "阿拉希繃帶";
AUTOBAR_CLASS_UNGORORESTORE = "安戈洛: 恢復水晶";

AUTOBAR_CLASS_ANTIVENOM = "抗毒藥劑";
AUTOBAR_CLASS_AGILITYPOTIONS = "敏捷藥劑";
AUTOBAR_CLASS_STRENGTHPOTIONS = "力量藥劑";
AUTOBAR_CLASS_FORTITUDEPOTIONS = "堅韌藥劑";
AUTOBAR_CLASS_INTELLECTPOTIONS = "聰穎藥劑";
AUTOBAR_CLASS_WISDOMPOTIONS = "智慧藥劑";
AUTOBAR_CLASS_DEFENSEPOTIONS = "防禦藥劑";
AUTOBAR_CLASS_TROLLBLOODPOTIONS = "食人妖之血藥水";
AUTOBAR_CLASS_SCROLLOFAGILITY = "敏捷卷軸";
AUTOBAR_CLASS_SCROLLOFINTELLECT = "智力卷軸";
AUTOBAR_CLASS_SCROLLOFPROTECTION = "保護卷軸";
AUTOBAR_CLASS_SCROLLOFSPIRIT = "精神卷軸";
AUTOBAR_CLASS_SCROLLOFSTAMINA = "耐力卷軸";
AUTOBAR_CLASS_SCROLLOFSTRENGTH = "力量卷軸";
AUTOBAR_CLASS_BUFF_ATTACKPOWER = "提高攻擊強度";
AUTOBAR_CLASS_BUFF_ATTACKSPEED = "提高攻擊速度";
AUTOBAR_CLASS_BUFF_DODGE = "提高閃躲機率";
AUTOBAR_CLASS_BUFF_FROST = "提高冰霜抗性";
AUTOBAR_CLASS_BUFF_FIRE = "提高火焰抗性";

AUTOBAR_CLASS_HEALPOTIONS = "治療藥水";
AUTOBAR_CLASS_PVP6HEALPOTIONS = "PVP 等級 6 - 治療藥水";
AUTOBAR_CLASS_HEALTHSTONE = "治療石";
AUTOBAR_CLASS_WHIPPER_ROOT = "鞭根塊莖";
AUTOBAR_CLASS_BATTLEGROUNDHEALPOTIONS = "戰場治療藥水";
AUTOBAR_CLASS_MANAPOTIONS = "法力藥水";
AUTOBAR_CLASS_PVP6MANAPOTIONS = "PVP 等級 6 - 法力藥水";
AUTOBAR_CLASS_MANASTONE = "法力寶石";
AUTOBAR_CLASS_BATTLEGROUNDMANAPOTIONS = "戰場法力藥水";
AUTOBAR_CLASS_DREAMLESS_SLEEP = "昏睡藥水";
AUTOBAR_CLASS_NIGHT_DRAGONS_BREATH = "夜龍之息";
AUTOBAR_CLASS_REJUVENATION_POTIONS = "恢復藥水";

AUTOBAR_CLASS_BATTLESTANDARD = "戰場軍旗";
AUTOBAR_CLASS_BATTLESTANDARDAV = "奧特蘭克山谷軍旗";
AUTOBAR_CLASS_DEMONIC_DARK_RUNES = "惡魔和黑暗符文";
AUTOBAR_CLASS_ARCANE_PROTECTION = "祕法防護藥水";
AUTOBAR_CLASS_FIRE_PROTECTION = "火焰防護藥水";
AUTOBAR_CLASS_FROST_PROTECTION = "冰霜防護藥水";
AUTOBAR_CLASS_NATURE_PROTECTION = "自然防護藥水";
AUTOBAR_CLASS_SHADOW_PROTECTION = "暗影防護藥水";
AUTOBAR_CLASS_SPELL_PROTECTION = "法術反彈";
AUTOBAR_CLASS_HOLY_PROTECTION = "神聖防護藥水";
AUTOBAR_CLASS_INVULNERABILITY_POTIONS = "有限無敵藥水";
AUTOBAR_CLASS_FREE_ACTION_POTION = "自由行動藥水";

AUTOBAR_CLASS_HEARTHSTONE = "爐石";
AUTOBAR_CLASS_WATER = "水";
AUTOBAR_CLASS_WATER_PERCENT = "Water: % mana gain";
AUTOBAR_CLASS_WATER_CONJURED = "水: 法師制造物";
AUTOBAR_CLASS_WATER_SPIRIT = "水: 提昇精神";
AUTOBAR_CLASS_RAGEPOTIONS = "怒氣藥水";
AUTOBAR_CLASS_ENERGYPOTIONS = "能量藥水";
AUTOBAR_CLASS_SWIFTNESSPOTIONS = "迅捷藥劑";
AUTOBAR_CLASS_SOULSHARDS = "靈魂碎片";
AUTOBAR_CLASS_ARROWS = "箭";
AUTOBAR_CLASS_BULLETS = "子彈";
AUTOBAR_CLASS_THROWNWEAPON = "投擲武器";
AUTOBAR_CLASS_FOOD = "食物: 無附加效果";
AUTOBAR_CLASS_FOOD_PERCENT = "Food: % health gain";
AUTOBAR_CLASS_FOOD_PET_BREAD = "食物: 寵物麵包";
AUTOBAR_CLASS_FOOD_PET_CHEESE = "食物: 寵物乳酪";
AUTOBAR_CLASS_FOOD_PET_FISH = "食物: 寵物魚類";
AUTOBAR_CLASS_FOOD_PET_FRUIT = "食物: 寵物水果";
AUTOBAR_CLASS_FOOD_PET_FUNGUS = "食物: 寵物菌類";
AUTOBAR_CLASS_FOOD_PET_MEAT = "食物: 寵物肉類";
AUTOBAR_CLASS_FOOD_COMBO= "食物: 有喝水效果";
AUTOBAR_CLASS_FOOD_CONJURED = "食物: 法師制造物";
AUTOBAR_CLASS_FOOD_STAMINA = "食物: 提升耐力";
AUTOBAR_CLASS_FOOD_AGILITY = "食物: 提升敏捷";
AUTOBAR_CLASS_FOOD_MANAREGEN= "食物: 提升法力恢復";
AUTOBAR_CLASS_FOOD_HPREGEN= "食物: 提升生命恢復";
AUTOBAR_CLASS_FOOD_STRENGTH= "食物: 提升力量";
AUTOBAR_CLASS_FOOD_INTELLIGENCE= "食物: 提升智力";
AUTOBAR_CLASS_FOOD_ARATHI= "食物: 阿拉希盆地";
AUTOBAR_CLASS_FOOD_WARSONG= "食物: 戰歌峽谷";
AUTOBAR_CLASS_SHARPENINGSTONES = "磨刀石";
AUTOBAR_CLASS_WEIGHTSTONE = "平衡石";
AUTOBAR_CLASS_POISON_CRIPPLING = "致殘毒藥";
AUTOBAR_CLASS_POISON_DEADLY = "致命毒藥";
AUTOBAR_CLASS_POISON_INSTANT = "速效毒藥";
AUTOBAR_CLASS_POISON_MINDNUMBING = "麻痹毒藥";
AUTOBAR_CLASS_POISON_WOUND = "致傷毒藥";
AUTOBAR_CLASS_EXPLOSIVES = "工程學爆炸物";
AUTOBAR_CLASS_MOUNTS_TROLL = "騎乘: 食人妖 - 迅猛龍";
AUTOBAR_CLASS_MOUNTS_ORC = "騎乘: 獸人 - 狼";
AUTOBAR_CLASS_MOUNTS_UNDEAD = "騎乘: 不死族- 骸骨馬";
AUTOBAR_CLASS_MOUNTS_TAUREN = "騎乘: 牛頭人 - 科多獸";
AUTOBAR_CLASS_MOUNTS_HUMAN = "騎乘: 人類 - 馬";
AUTOBAR_CLASS_MOUNTS_NIGHTELF = "騎乘: 夜精靈 - 夜刃豹";
AUTOBAR_CLASS_MOUNTS_DWARF = "騎乘: 矮人 - 羊";
AUTOBAR_CLASS_MOUNTS_GNOME = "騎乘: 地精 - 機械鳥";
AUTOBAR_CLASS_MOUNTS_SPECIAL = "騎乘: 特殊";
AUTOBAR_CLASS_MOUNTS_QIRAJI = "騎乘: 其拉甲蟲";
AUTOBAR_CLASS_MANA_OIL = "魔油: 提高法力恢復";
AUTOBAR_CLASS_WIZARD_OIL = "魔油: 增加 傷害/治療";
AUTOBAR_CLASS_FISHINGITEMS = "釣魚物品";

end