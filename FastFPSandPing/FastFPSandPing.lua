-- FastFPSandPing.lua (TWW-ready options + account/char gold switch)
-- SavedVariables: FastFPSandPingDB

-- -------------------------
-- Localization
-- -------------------------
local L = {}
L["enUS"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "Ping",
    goldText = "Gold",
    goldMode = "Gold mode",
    goldModeAccount = "Account",
    goldModeChar = "Character",

    clearMemoryButton = "Clear Memory",
    memoryClearedMessage = "|cFFFF0000Memory cleared|r",

    optionsTitle = "Options",
    showFrame = "Show window",
    showFPS = "Show FPS",
    showPing = "Show Ping",
    showGold = "Show gold",
    fadeWhileMoving = "Fade while moving",
    showMinimapButton = "Show minimap button",
    resetPosition = "Reset window position",
    tipGold = "Shows gold and lets you switch between Account and Character (account total stored locally).",
}
L["deDE"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "Ping",
    goldText = "Gold",
    goldMode = "Gold-Modus",
    goldModeAccount = "Account",
    goldModeChar = "Charakter",

    clearMemoryButton = "Speicher leeren",
    memoryClearedMessage = "|cFFFF0000Speicher geleert|r",

    optionsTitle = "Optionen",
    showFrame = "Fenster anzeigen",
    showFPS = "FPS anzeigen",
    showPing = "Ping anzeigen",
    showGold = "Gold anzeigen",
    fadeWhileMoving = "Beim Bewegen ausblenden",
    showMinimapButton = "Minikarten-Button anzeigen",
    resetPosition = "Fensterposition zurücksetzen",
    tipGold = "Zeigt Gold an und erlaubt das Umschalten zwischen Account & Charakter (Account-Summe lokal gespeichert).",
}

L["frFR"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "Ping",
    goldText = "Or",
    goldMode = "Mode d’or",
    goldModeAccount = "Compte",
    goldModeChar = "Personnage",

    clearMemoryButton = "Effacer la mémoire",
    memoryClearedMessage = "|cFFFF0000Mémoire effacée|r",
    optionsTitle = "Options",
    showFrame = "Afficher la fenêtre",
    showFPS = "Afficher les FPS",
    showPing = "Afficher le ping",
    showGold = "Afficher l’or",
    fadeWhileMoving = "Atténuer en déplacement",
    showMinimapButton = "Afficher le bouton de la mini-carte",
    resetPosition = "Réinitialiser la position",
    tipGold = "Affiche l’or et permet de basculer entre Compte et Personnage (total du compte stocké localement).",
}

L["esES"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "Ping",
    goldText = "Oro",
    goldMode = "Modo de oro",
    goldModeAccount = "Cuenta",
    goldModeChar = "Personaje",

    clearMemoryButton = "Borrar memoria",
    memoryClearedMessage = "|cFFFF0000Memoria borrada|r",
    optionsTitle = "Opciones",
    showFrame = "Mostrar ventana",
    showFPS = "Mostrar FPS",
    showPing = "Mostrar ping",
    showGold = "Mostrar oro",
    fadeWhileMoving = "Atenuar al moverte",
    showMinimapButton = "Mostrar botón del minimapa",
    resetPosition = "Restablecer posición",
    tipGold = "Muestra el oro y permite cambiar entre Cuenta y Personaje (total de cuenta guardado localmente).",
}

L["itIT"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "Ping",
    goldText = "Oro",
    goldMode = "Modalità oro",
    goldModeAccount = "Account",
    goldModeChar = "Personaggio",

    clearMemoryButton = "Cancella memoria",
    memoryClearedMessage = "|cFFFF0000Memoria cancellata|r",
    optionsTitle = "Opzioni",
    showFrame = "Mostra finestra",
    showFPS = "Mostra FPS",
    showPing = "Mostra ping",
    showGold = "Mostra oro",
    fadeWhileMoving = "Dissolvi mentre ti muovi",
    showMinimapButton = "Mostra pulsante minimappa",
    resetPosition = "Reimposta posizione",
    tipGold = "Mostra l’oro e permette di passare tra Account e Personaggio (totale account salvato localmente).",
}

L["ptBR"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "Ping",
    goldText = "Ouro",
    goldMode = "Modo de ouro",
    goldModeAccount = "Conta",
    goldModeChar = "Personagem",

    clearMemoryButton = "Limpar memória",
    memoryClearedMessage = "|cFFFF0000Memória limpa|r",
    optionsTitle = "Opções",
    showFrame = "Mostrar janela",
    showFPS = "Mostrar FPS",
    showPing = "Mostrar ping",
    showGold = "Mostrar ouro",
    fadeWhileMoving = "Esmaecer ao mover",
    showMinimapButton = "Mostrar botão do minimapa",
    resetPosition = "Redefinir posição",
    tipGold = "Mostra o ouro e permite alternar entre Conta e Personagem (total da conta salvo localmente).",
}

L["ruRU"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "Пинг",
    goldText = "Золото",
    goldMode = "Режим золота",
    goldModeAccount = "Аккаунт",
    goldModeChar = "Персонаж",

    clearMemoryButton = "Очистить память",
    memoryClearedMessage = "|cFFFF0000Память очищена|r",
    optionsTitle = "Настройки",
    showFrame = "Показывать окно",
    showFPS = "Показывать FPS",
    showPing = "Показывать пинг",
    showGold = "Показывать золото",
    fadeWhileMoving = "Скрывать при движении",
    showMinimapButton = "Показывать кнопку на миникарте",
    resetPosition = "Сбросить позицию",
    tipGold = "Показывает золото и позволяет переключаться между Аккаунтом и Персонажем (сумма аккаунта хранится локально).",
}

L["koKR"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "핑",
    goldText = "골드",
    goldMode = "골드 모드",
    goldModeAccount = "계정",
    goldModeChar = "캐릭터",

    clearMemoryButton = "기록 초기화",
    memoryClearedMessage = "|cFFFF0000기록이 초기화되었습니다|r",
    optionsTitle = "옵션",
    showFrame = "창 표시",
    showFPS = "FPS 표시",
    showPing = "핑 표시",
    showGold = "골드 표시",
    fadeWhileMoving = "이동 중 흐리게",
    showMinimapButton = "미니맵 버튼 표시",
    resetPosition = "위치 초기화",
    tipGold = "골드를 표시하고 계정/캐릭터 사이를 전환합니다 (계정 합계는 로컬 저장).",
}

L["zhCN"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "延迟",
    goldText = "金币",
    goldMode = "金币模式",
    goldModeAccount = "账号",
    goldModeChar = "角色",

    clearMemoryButton = "清空记录",
    memoryClearedMessage = "|cFFFF0000记录已清空|r",
    optionsTitle = "选项",
    showFrame = "显示窗口",
    showFPS = "显示FPS",
    showPing = "显示延迟",
    showGold = "显示金币",
    fadeWhileMoving = "移动时淡出",
    showMinimapButton = "显示小地图按钮",
    resetPosition = "重置位置",
    tipGold = "显示金币并可在账号/角色之间切换（账号总额本地保存）。",
}

L["zhTW"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "延遲",
    goldText = "金幣",
    goldMode = "金幣模式",
    goldModeAccount = "帳號",
    goldModeChar = "角色",

    clearMemoryButton = "清除記錄",
    memoryClearedMessage = "|cFFFF0000記錄已清除|r",
    optionsTitle = "選項",
    showFrame = "顯示視窗",
    showFPS = "顯示FPS",
    showPing = "顯示延遲",
    showGold = "顯示金幣",
    fadeWhileMoving = "移動時淡出",
    showMinimapButton = "顯示小地圖按鈕",
    resetPosition = "重置位置",
    tipGold = "顯示金幣並可在帳號/角色之間切換（帳號總額本機儲存）。",
}

-- Locale aliases
L["enGB"] = L["enUS"]
L["esMX"] = L["esES"]

local locale = GetLocale()
local text = L[locale] or L["enUS"]

-- -------------------------
-- Addon + DB Defaults
-- -------------------------
local addonName = "FastFPSandPing"
local FastFPSandPing = CreateFrame("Frame", addonName, UIParent)

FastFPSandPingDB = FastFPSandPingDB or {}

local DEFAULTS = {
    isFrameShown = true,
    showFPS = true,
    showPing = true,
    showGold = true,
    goldMode = "ACCOUNT", -- NEW: "ACCOUNT" or "CHAR"
    fadeWhileMoving = true,
    showMinimapButton = true,
    minimapPos = 45, -- used by minimap button lua/xml
    goldPerChar = {}, -- [realm] = { [name] = copper }
}

local function CopyDefaults(dst, src)
    for k, v in pairs(src) do
        if type(v) == "table" then
            dst[k] = dst[k] or {}
            CopyDefaults(dst[k], v)
        elseif dst[k] == nil then
            dst[k] = v
        end
    end
end

-- -------------------------
-- Helpers (Gold formatting)
-- -------------------------
local function FormatGold(copper)
    copper = tonumber(copper) or 0
    local gold = math.floor(copper / 10000)
    local silver = math.floor((copper % 10000) / 100)
    local cop = copper % 100

    if gold > 0 then
        return string.format("%dg %ds %dc", gold, silver, cop)
    elseif silver > 0 then
        return string.format("%ds %dc", silver, cop)
    else
        return string.format("%dc", cop)
    end
end

local function GetAccountGoldTotal()
    local total = 0
    local t = FastFPSandPingDB.goldPerChar
    if type(t) ~= "table" then return 0 end
    for _, realmTbl in pairs(t) do
        if type(realmTbl) == "table" then
            for _, money in pairs(realmTbl) do
                total = total + (tonumber(money) or 0)
            end
        end
    end
    return total
end

-- NEW: use selected mode (Account or Character)
local function GetSelectedGold()
    if FastFPSandPingDB.goldMode == "CHAR" then
        return GetMoney() or 0
    end
    return GetAccountGoldTotal()
end

-- NEW: Tausenderpunkt + Split in g/s/c
local function FormatThousandsDot(num)
    local s = tostring(num or 0)
    while true do
        local n
        s, n = s:gsub("^(-?%d+)(%d%d%d)", "%1.%2")
        if n == 0 then break end
    end
    return s
end

local function SplitMoney(copper)
    copper = tonumber(copper) or 0
    local g = math.floor(copper / 10000)
    local s = math.floor((copper % 10000) / 100)
    local c = copper % 100
    return g, s, c
end

-- -------------------------
-- Main Frame (existing UI)
-- -------------------------
local FastFPSandPingFrame = CreateFrame("Frame", "FastFPSandPingFrame", UIParent)
FastFPSandPingFrame:SetSize(260, 130) -- a bit taller for gold line
FastFPSandPingFrame:SetPoint("CENTER")
FastFPSandPingFrame:SetMovable(true)
FastFPSandPingFrame:EnableMouse(true)
FastFPSandPingFrame:RegisterForDrag("LeftButton")
FastFPSandPingFrame:SetClampedToScreen(true)
FastFPSandPingFrame:SetFrameStrata("MEDIUM")

FastFPSandPingFrame:SetScript("OnDragStart", FastFPSandPingFrame.StartMoving)
FastFPSandPingFrame:SetScript("OnDragStop", function(self)
    self:StopMovingOrSizing()
    local point, _, relativePoint, xOfs, yOfs = self:GetPoint()
    FastFPSandPingDB.point = point
    FastFPSandPingDB.relativePoint = relativePoint
    FastFPSandPingDB.xOfs = xOfs
    FastFPSandPingDB.yOfs = yOfs
end)

-- Background
local bg = FastFPSandPingFrame:CreateTexture(nil, "BACKGROUND")
bg:SetAllPoints()
bg:SetColorTexture(0.08, 0.09, 0.10, 0.95)

-- Border
local innerBorder = CreateFrame("Frame", nil, FastFPSandPingFrame, BackdropTemplateMixin and "BackdropTemplate" or nil)
innerBorder:SetPoint("TOPLEFT", 1, -1)
innerBorder:SetPoint("BOTTOMRIGHT", -1, 1)
innerBorder:SetBackdrop({ edgeFile = "Interface\\Buttons\\WHITE8x8", edgeSize = 1 })
innerBorder:SetBackdropBorderColor(0, 0, 0, 1)

-- Shadow
local shadow = FastFPSandPingFrame:CreateTexture(nil, "BACKGROUND", nil, -1)
shadow:SetPoint("TOPLEFT", -6, 6)
shadow:SetPoint("BOTTOMRIGHT", 6, -6)
shadow:SetTexture("Interface\\Buttons\\WHITE8x8")
shadow:SetVertexColor(0, 0, 0, 0.35)

-- Titlebar
local titlebar = FastFPSandPingFrame:CreateTexture(nil, "ARTWORK")
titlebar:SetPoint("TOPLEFT", 0, 0)
titlebar:SetPoint("TOPRIGHT", 0, 0)
titlebar:SetHeight(24)
titlebar:SetColorTexture(0.12, 0.14, 0.18, 1)

-- Underline
local underline = FastFPSandPingFrame:CreateTexture(nil, "ARTWORK")
underline:SetPoint("TOPLEFT", 0, -24)
underline:SetPoint("TOPRIGHT", 0, -24)
underline:SetHeight(1)
underline:SetColorTexture(0, 0, 0, 1)

-- Title text
local titleFS = FastFPSandPingFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
titleFS:SetPoint("TOP", FastFPSandPingFrame, "TOP", 0, -5)
titleFS:SetText(text.title)
titleFS:SetJustifyH("CENTER")
titleFS:SetTextColor(1, 1, 1, 0.9)
titleFS:SetShadowColor(0, 0, 0, 1)
titleFS:SetShadowOffset(1, -1)

-- Close button
local closeBtn = CreateFrame("Button", nil, FastFPSandPingFrame, "UIPanelCloseButton")
closeBtn:SetPoint("TOPRIGHT", -3, -3)
closeBtn:SetScale(0.85)

-- Content
local content = CreateFrame("Frame", nil, FastFPSandPingFrame)
content:SetPoint("TOPLEFT", 12, -36)
content:SetPoint("BOTTOMRIGHT", -12, 12)

-- Divider line above buttons
local contentLine = content:CreateTexture(nil, "ARTWORK")
contentLine:SetPoint("BOTTOMLEFT", 0, 28)
contentLine:SetPoint("BOTTOMRIGHT", 0, 28)
contentLine:SetHeight(1)
contentLine:SetColorTexture(0, 0, 0, 1)

-- FPS / Ping
local fpsText = content:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
local pingText = content:CreateFontString(nil, "OVERLAY", "GameFontHighlight")

-- Gold line (3 FontStrings for real coloring)
local goldLabel  = content:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
local goldGold   = content:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
local goldSilver = content:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
local goldCopper = content:CreateFontString(nil, "OVERLAY", "GameFontHighlight")

-- fixed colors (WoW-like)
goldGold:SetTextColor(1.00, 0.84, 0.00)    -- gold
goldSilver:SetTextColor(0.78, 0.78, 0.81)  -- silver
goldCopper:SetTextColor(0.93, 0.65, 0.37)  -- copper

-- Button
local clearMemoryButton = CreateFrame("Button", nil, content, "UIPanelButtonTemplate")
clearMemoryButton:SetSize(180, 20)
clearMemoryButton:SetPoint("BOTTOM", 0, 2)
clearMemoryButton:SetText(text.clearMemoryButton)
clearMemoryButton:SetScript("OnClick", function()
    collectgarbage("collect")
    print(text.memoryClearedMessage)
end)

-- -------------------------
-- Layout (depending on toggles)
-- -------------------------
local function ApplyLayout()
    fpsText:ClearAllPoints()
    pingText:ClearAllPoints()
    goldLabel:ClearAllPoints()
    goldGold:ClearAllPoints()
    goldSilver:ClearAllPoints()
    goldCopper:ClearAllPoints()

    fpsText:Hide()
    pingText:Hide()
    goldLabel:Hide()
    goldGold:Hide()
    goldSilver:Hide()
    goldCopper:Hide()

    local y = 0

    if FastFPSandPingDB.showFPS then
        fpsText:SetPoint("TOPLEFT", 0, y)
        fpsText:Show()
    end

    if FastFPSandPingDB.showPing then
        pingText:SetPoint("TOPRIGHT", 0, y)
        pingText:Show()
    end

    if FastFPSandPingDB.showFPS or FastFPSandPingDB.showPing then
        y = y - 20
    end

    if FastFPSandPingDB.showGold then
        local modeLabel = (FastFPSandPingDB.goldMode == "CHAR")
            and (text.goldModeChar or "Character")
            or  (text.goldModeAccount or "Account")

        goldLabel:SetPoint("TOPLEFT", 0, y)
        goldLabel:SetText((text.goldText or "Gold") .. " (" .. modeLabel .. "):")
        goldLabel:Show()

        goldGold:SetPoint("LEFT", goldLabel, "RIGHT", 6, 0)
        goldGold:Show()

        goldSilver:SetPoint("LEFT", goldGold, "RIGHT", 10, 0)
        goldSilver:Show()

        goldCopper:SetPoint("LEFT", goldSilver, "RIGHT", 10, 0)
        goldCopper:Show()
    end
end

-- -------------------------
-- Stats update
-- -------------------------
local function UpdateStats()
    if FastFPSandPingDB.showFPS then
        local fps = GetFramerate()
        local fpsColor
        if fps < 30 then fpsColor = {1, 0, 0}
        elseif fps < 60 then fpsColor = {1, 1, 0}
        else fpsColor = {0, 1, 0} end

        fpsText:SetText(string.format("%s: %.1f", text.fpsText, fps))
        fpsText:SetTextColor(unpack(fpsColor))
    end

    if FastFPSandPingDB.showPing then
        local _, _, latencyHome = GetNetStats()
        local pingColor
        if latencyHome > 150 then pingColor = {1, 0, 0}
        elseif latencyHome > 100 then pingColor = {1, 1, 0}
        else pingColor = {0, 1, 0} end

        pingText:SetText(string.format("%s: %d ms", text.pingText, latencyHome))
        pingText:SetTextColor(unpack(pingColor))
    end

    if FastFPSandPingDB.showGold then
        local amount = GetSelectedGold()
        local g, s, c = SplitMoney(amount)

        goldGold:SetText(FormatThousandsDot(g) .. "g")
        goldSilver:SetText(string.format("%02ds", s))
        goldCopper:SetText(string.format("%02dc", c))
    end
end

-- -------------------------
-- Minimap Button visibility (XML button)
-- -------------------------
local function ApplyMinimapButtonState()
    if _G.FastFPSandPing_MinimapButton then
        if FastFPSandPingDB.showMinimapButton then
            _G.FastFPSandPing_MinimapButton:Show()
        else
            _G.FastFPSandPing_MinimapButton:Hide()
        end
    end
end

-- -------------------------
-- Options UI (TWW / Dragonflight Settings)
-- -------------------------
local optionsPanel, settingsCategory

local function OpenOptions()
    if Settings and settingsCategory and Settings.OpenToCategory then
        Settings.OpenToCategory(settingsCategory:GetID())
        return
    end
    if InterfaceOptionsFrame_OpenToCategory and optionsPanel then
        InterfaceOptionsFrame_OpenToCategory(optionsPanel)
        InterfaceOptionsFrame_OpenToCategory(optionsPanel) -- called twice to reliably scroll
    end
end

local function CreateCheckbox(parent, label, tooltip, x, y, getFunc, setFunc)
    local cb = CreateFrame("CheckButton", nil, parent, "UICheckButtonTemplate")
    cb:SetPoint("TOPLEFT", x, y)
    cb.Text:SetText(label)
    if tooltip then
        cb.tooltipText = label
        cb.tooltipRequirement = tooltip
    end
    cb:SetScript("OnClick", function(self)
        local val = self:GetChecked() and true or false
        setFunc(val)
        PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
    end)
    cb.Refresh = function()
        cb:SetChecked(getFunc() and true or false)
    end
    return cb
end

local function CreateButton(parent, label, x, y, onClick)
    local btn = CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")
    btn:SetSize(200, 22)
    btn:SetPoint("TOPLEFT", x, y)
    btn:SetText(label)
    btn:SetScript("OnClick", onClick)
    return btn
end

-- NEW: Dropdown for gold mode (Account/Character)
local function CreateGoldModeDropdown(parent, x, y)
    local label = parent:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    label:SetPoint("TOPLEFT", x, y)
    label:SetText((text.goldMode or "Gold mode") .. ":")

    local dd = CreateFrame("Frame", nil, parent, "UIDropDownMenuTemplate")
    dd:SetPoint("TOPLEFT", label, "BOTTOMLEFT", -16, -2) -- -16 padding for template

    local function UpdateLabel()
        if FastFPSandPingDB.goldMode == "CHAR" then
            UIDropDownMenu_SetText(dd, text.goldModeChar or "Character")
        else
            UIDropDownMenu_SetText(dd, text.goldModeAccount or "Account")
        end
    end

    UIDropDownMenu_Initialize(dd, function(self, level)
        local info = UIDropDownMenu_CreateInfo()

        info.text = text.goldModeAccount or "Account"
        info.checked = (FastFPSandPingDB.goldMode ~= "CHAR")
        info.func = function()
            FastFPSandPingDB.goldMode = "ACCOUNT"
            UpdateLabel()
            ApplyLayout()
            UpdateStats()
        end
        UIDropDownMenu_AddButton(info, level)

        info = UIDropDownMenu_CreateInfo()
        info.text = text.goldModeChar or "Character"
        info.checked = (FastFPSandPingDB.goldMode == "CHAR")
        info.func = function()
            FastFPSandPingDB.goldMode = "CHAR"
            UpdateLabel()
            ApplyLayout()
            UpdateStats()
        end
        UIDropDownMenu_AddButton(info, level)
    end)

    dd.Refresh = function()
        UpdateLabel()
    end

    UpdateLabel()
    return dd
end

local function CreateOptionsPanel()
    optionsPanel = CreateFrame("Frame", "FastFPSandPingOptionsPanel", UIParent)
    optionsPanel.name = text.title

    local header = optionsPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    header:SetPoint("TOPLEFT", 16, -16)
    header:SetText(text.title .. " - " .. text.optionsTitle)

    local sub = optionsPanel:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    sub:SetPoint("TOPLEFT", header, "BOTTOMLEFT", 0, -6)
    sub:SetText("/ffap = Toggle window   |   /ffap options = Open settings")

    local y = -60

    local cbShowFrame = CreateCheckbox(optionsPanel, text.showFrame, nil, 16, y,
        function() return FastFPSandPingDB.isFrameShown end,
        function(v)
            FastFPSandPingDB.isFrameShown = v
            if v then FastFPSandPingFrame:Show() else FastFPSandPingFrame:Hide() end
        end
    ); y = y - 28

    local cbFPS = CreateCheckbox(optionsPanel, text.showFPS, nil, 16, y,
        function() return FastFPSandPingDB.showFPS end,
        function(v)
            FastFPSandPingDB.showFPS = v
            ApplyLayout()
            UpdateStats()
        end
    ); y = y - 28

    local cbPing = CreateCheckbox(optionsPanel, text.showPing, nil, 16, y,
        function() return FastFPSandPingDB.showPing end,
        function(v)
            FastFPSandPingDB.showPing = v
            ApplyLayout()
            UpdateStats()
        end
    ); y = y - 28

    local cbGold = CreateCheckbox(optionsPanel, text.showGold, text.tipGold, 16, y,
        function() return FastFPSandPingDB.showGold end,
        function(v)
            FastFPSandPingDB.showGold = v
            ApplyLayout()
            UpdateStats()
        end
    ); y = y - 28

    -- NEW: Gold mode dropdown under the gold checkbox
    local ddGoldMode = CreateGoldModeDropdown(optionsPanel, 16, y)
    y = y - 56

    local cbFade = CreateCheckbox(optionsPanel, text.fadeWhileMoving, nil, 16, y,
        function() return FastFPSandPingDB.fadeWhileMoving end,
        function(v)
            FastFPSandPingDB.fadeWhileMoving = v
        end
    ); y = y - 28

    local cbMini = CreateCheckbox(optionsPanel, text.showMinimapButton, nil, 16, y,
        function() return FastFPSandPingDB.showMinimapButton end,
        function(v)
            FastFPSandPingDB.showMinimapButton = v
            ApplyMinimapButtonState()
        end
    ); y = y - 36

    CreateButton(optionsPanel, text.resetPosition, 16, y, function()
        FastFPSandPingDB.point, FastFPSandPingDB.relativePoint, FastFPSandPingDB.xOfs, FastFPSandPingDB.yOfs = nil, nil, nil, nil
        FastFPSandPingFrame:ClearAllPoints()
        FastFPSandPingFrame:SetPoint("CENTER")
    end)

    optionsPanel.Refresh = function()
        cbShowFrame.Refresh(); cbFPS.Refresh(); cbPing.Refresh(); cbGold.Refresh(); cbFade.Refresh(); cbMini.Refresh()
        if ddGoldMode and ddGoldMode.Refresh then ddGoldMode.Refresh() end
    end

    -- Register in modern Settings UI if available, else classic InterfaceOptions
    if Settings and Settings.RegisterCanvasLayoutCategory and Settings.RegisterAddOnCategory then
        settingsCategory = Settings.RegisterCanvasLayoutCategory(optionsPanel, text.title)
        Settings.RegisterAddOnCategory(settingsCategory)
    elseif InterfaceOptions_AddCategory then
        InterfaceOptions_AddCategory(optionsPanel)
    end
end

-- -------------------------
-- Slash Command (toggle + options)
-- -------------------------
SLASH_FASTFPSANDPING1 = "/ffap"
SlashCmdList["FASTFPSANDPING"] = function(msg)
    msg = (msg or ""):lower():gsub("^%s+", ""):gsub("%s+$", "")
    if msg == "options" or msg == "option" or msg == "config" or msg == "settings" then
        OpenOptions()
        return
    end

    if FastFPSandPingFrame:IsShown() then
        FastFPSandPingFrame:Hide()
        FastFPSandPingDB.isFrameShown = false
    else
        FastFPSandPingFrame:Show()
        FastFPSandPingDB.isFrameShown = true
    end
end

-- -------------------------
-- OnUpdate: Fade + refresh
-- -------------------------
FastFPSandPingFrame:SetScript("OnUpdate", function(self, elapsed)
    if FastFPSandPingDB.fadeWhileMoving then
        local alpha = (IsPlayerMoving() and not self:IsMouseOver()) and 0.5 or 1.0
        if self:GetAlpha() ~= alpha then
            self:SetAlpha(alpha)
        end
    else
        if self:GetAlpha() ~= 1.0 then self:SetAlpha(1.0) end
    end

    self.timeSinceLastUpdate = (self.timeSinceLastUpdate or 0) + elapsed
    if self.timeSinceLastUpdate >= 1 then
        UpdateStats()
        self.timeSinceLastUpdate = 0
    end
end)

-- -------------------------
-- Events
-- -------------------------
FastFPSandPing:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_LOGIN" then
        CopyDefaults(FastFPSandPingDB, DEFAULTS)

        -- ensure options exist
        if not optionsPanel then
            CreateOptionsPanel()
        end
        if optionsPanel.Refresh then optionsPanel.Refresh() end

        -- Window shown?
        if FastFPSandPingDB.isFrameShown then
            FastFPSandPingFrame:Show()
        else
            FastFPSandPingFrame:Hide()
        end

        -- Restore position
        if FastFPSandPingDB.point then
            FastFPSandPingFrame:ClearAllPoints()
            FastFPSandPingFrame:SetPoint(
                FastFPSandPingDB.point,
                UIParent,
                FastFPSandPingDB.relativePoint,
                FastFPSandPingDB.xOfs,
                FastFPSandPingDB.yOfs
            )
        else
            FastFPSandPingFrame:ClearAllPoints()
            FastFPSandPingFrame:SetPoint("CENTER")
        end

        -- Store current char gold
        local realm = GetRealmName() or "UnknownRealm"
        local name = UnitName("player") or "Unknown"
        FastFPSandPingDB.goldPerChar[realm] = FastFPSandPingDB.goldPerChar[realm] or {}
        FastFPSandPingDB.goldPerChar[realm][name] = GetMoney() or 0

        ApplyLayout()
        ApplyMinimapButtonState()
        UpdateStats()

    elseif event == "PLAYER_MONEY" then
        -- Update saved gold and refresh total
        if type(FastFPSandPingDB.goldPerChar) ~= "table" then
            FastFPSandPingDB.goldPerChar = {}
        end
        local realm = GetRealmName() or "UnknownRealm"
        local name = UnitName("player") or "Unknown"
        FastFPSandPingDB.goldPerChar[realm] = FastFPSandPingDB.goldPerChar[realm] or {}
        FastFPSandPingDB.goldPerChar[realm][name] = GetMoney() or 0

        if FastFPSandPingDB.showGold then
            UpdateStats()
        end
    end
end)

FastFPSandPing:RegisterEvent("PLAYER_LOGIN")
FastFPSandPing:RegisterEvent("PLAYER_MONEY")
