-- Localization table
local L = {}
L["enUS"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "Ping",
    clearMemoryButton = "Clear Memory",
    memoryClearedMessage = "|cFFFF0000Memory cleared|r"
}
L["deDE"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "Ping",
    clearMemoryButton = "Speicher leeren",
    memoryClearedMessage = "|cFFFF0000Speicher geleert|r"
}
L["frFR"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "Ping",
    clearMemoryButton = "Vider la mémoire",
    memoryClearedMessage = "|cFFFF0000Mémoire vidée|r"
}
L["esES"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "Ping",
    clearMemoryButton = "Limpiar memoria",
    memoryClearedMessage = "|cFFFF0000Memoria limpiada|r"
}
L["itIT"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "Ping",
    clearMemoryButton = "Pulisci memoria",
    memoryClearedMessage = "|cFFFF0000Memoria pulita|r"
}
L["ptBR"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "Ping",
    clearMemoryButton = "Limpar memória",
    memoryClearedMessage = "|cFFFF0000Memória limpa|r"
}
L["ruRU"] = {
    title = "Fast FPS and Ping",
    fpsText = "FPS",
    pingText = "Пинг",
    clearMemoryButton = "Очистить память",
    memoryClearedMessage = "|cFFFF0000Память очищена|r"
}

local locale = GetLocale()
local text = L[locale] or L["enUS"]

local addonName = "FastFPSandPing"
local FastFPSandPing = CreateFrame("Frame", addonName, UIParent)
FastFPSandPingDB = FastFPSandPingDB or {}

local FADE_WHILE_MOVING = true

-- Hauptframe
local FastFPSandPingFrame = CreateFrame("Frame", "FastFPSandPingFrame", UIParent)
FastFPSandPingFrame:SetSize(260, 110)
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

-- Hintergrund
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

-- Dünnere Titlebar
local titlebar = FastFPSandPingFrame:CreateTexture(nil, "ARTWORK")
titlebar:SetPoint("TOPLEFT", 0, 0)
titlebar:SetPoint("TOPRIGHT", 0, 0)
titlebar:SetHeight(24)
titlebar:SetColorTexture(0.12, 0.14, 0.18, 1)

-- Linie unter Titlebar
local underline = FastFPSandPingFrame:CreateTexture(nil, "ARTWORK")
underline:SetPoint("TOPLEFT", 0, -24)
underline:SetPoint("TOPRIGHT", 0, -24)
underline:SetHeight(1)
underline:SetColorTexture(0, 0, 0, 1)

-- Titeltext (kleiner & dezent)
local titleFS = FastFPSandPingFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
titleFS:SetPoint("TOP", FastFPSandPingFrame, "TOP", 0, -5)
titleFS:SetText(text.title)
titleFS:SetJustifyH("CENTER")
titleFS:SetTextColor(1, 1, 1, 0.9)
titleFS:SetShadowColor(0, 0, 0, 1)
titleFS:SetShadowOffset(1, -1)

-- Close-Button (etwas tiefer und nach links)
local closeBtn = CreateFrame("Button", nil, FastFPSandPingFrame, "UIPanelCloseButton")
closeBtn:SetPoint("TOPRIGHT", -3, -3)  -- vorher (2,1)
closeBtn:SetScale(0.85)

-- Inhalt
local content = CreateFrame("Frame", nil, FastFPSandPingFrame)
content:SetPoint("TOPLEFT", 12, -36)
content:SetPoint("BOTTOMRIGHT", -12, 12)

-- Linie über Buttonbereich
local contentLine = content:CreateTexture(nil, "ARTWORK")
contentLine:SetPoint("BOTTOMLEFT", 0, 28)
contentLine:SetPoint("BOTTOMRIGHT", 0, 28)
contentLine:SetHeight(1)
contentLine:SetColorTexture(0, 0, 0, 1)

-- FPS links
local fpsText = content:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
fpsText:SetPoint("TOPLEFT", 0, 0)
fpsText:SetTextColor(0.9, 0.9, 0.9, 1)

-- Ping rechts
local pingText = content:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
pingText:SetPoint("TOPRIGHT", 0, 0)
pingText:SetTextColor(0.9, 0.9, 0.9, 1)

-- Button
local clearMemoryButton = CreateFrame("Button", nil, content, "UIPanelButtonTemplate")
clearMemoryButton:SetSize(180, 20)
clearMemoryButton:SetPoint("BOTTOM", 0, 2)
clearMemoryButton:SetText(text.clearMemoryButton)

clearMemoryButton:SetScript("OnClick", function()
    collectgarbage("collect")
    print(text.memoryClearedMessage)
end)

-- Slash command
SLASH_FASTFPSANDPING1 = "/ffap"
SlashCmdList["FASTFPSANDPING"] = function()
    if FastFPSandPingFrame:IsShown() then
        FastFPSandPingFrame:Hide()
        FastFPSandPingDB.isFrameShown = false
    else
        FastFPSandPingFrame:Show()
        FastFPSandPingDB.isFrameShown = true
    end
end

-- Update FPS/Ping
local function UpdateStats()
    local fps = GetFramerate()
    local _, _, latencyHome = GetNetStats()

    local fpsColor
    if fps < 30 then fpsColor = {1, 0, 0}
    elseif fps < 60 then fpsColor = {1, 1, 0}
    else fpsColor = {0, 1, 0} end

    local pingColor
    if latencyHome > 150 then pingColor = {1, 0, 0}
    elseif latencyHome > 100 then pingColor = {1, 1, 0}
    else pingColor = {0, 1, 0} end

    fpsText:SetText(string.format("%s: %.1f", text.fpsText, fps))
    fpsText:SetTextColor(unpack(fpsColor))
    pingText:SetText(string.format("%s: %d ms", text.pingText, latencyHome))
    pingText:SetTextColor(unpack(pingColor))
end

-- OnUpdate: Fading & Refresh
FastFPSandPingFrame:SetScript("OnUpdate", function(self, elapsed)
    if FADE_WHILE_MOVING then
        local alpha = (IsPlayerMoving() and not self:IsMouseOver()) and 0.5 or 1.0
        if self:GetAlpha() ~= alpha then
            self:SetAlpha(alpha)
        end
    end

    self.timeSinceLastUpdate = (self.timeSinceLastUpdate or 0) + elapsed
    if self.timeSinceLastUpdate >= 1 then
        UpdateStats()
        self.timeSinceLastUpdate = 0
    end
end)

-- Events
FastFPSandPing:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_LOGIN" then
        if FastFPSandPingDB.isFrameShown == nil then
            FastFPSandPingDB.isFrameShown = true
        end
        if FastFPSandPingDB.isFrameShown then
            FastFPSandPingFrame:Show()
        else
            FastFPSandPingFrame:Hide()
        end

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
    end
end)

FastFPSandPing:RegisterEvent("PLAYER_LOGIN")
