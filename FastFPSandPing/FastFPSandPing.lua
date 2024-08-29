-- Addon Name
local addonName = "FastFPSandPing"
local FastFPSandPing = CreateFrame("Frame", addonName, UIParent)

-- Variables for SavedVariables
FastFPSandPingDB = FastFPSandPingDB or {}

-- Create the main frame
local FastFPSandPingFrame = CreateFrame("Frame", "FastFPSandPingFrame", UIParent)
FastFPSandPingFrame:SetSize(200, 50)  -- Frame size

-- Setting up the background manually
local bg = FastFPSandPingFrame:CreateTexture(nil, "BACKGROUND")
bg:SetAllPoints(FastFPSandPingFrame)
bg:SetColorTexture(0, 0, 0, 0.5)  -- Semi-transparent black background

local border = CreateFrame("Frame", nil, FastFPSandPingFrame, BackdropTemplateMixin and "BackdropTemplate")
border:SetPoint("TOPLEFT", FastFPSandPingFrame, "TOPLEFT", -8, 8)
border:SetPoint("BOTTOMRIGHT", FastFPSandPingFrame, "BOTTOMRIGHT", 8, -8)
border:SetBackdrop({
    edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
    edgeSize = 16,
})
border:SetBackdropBorderColor(1, 1, 1, 1)

FastFPSandPingFrame:EnableMouse(true)
FastFPSandPingFrame:SetMovable(true)
FastFPSandPingFrame:RegisterForDrag("LeftButton")
FastFPSandPingFrame:SetScript("OnDragStart", FastFPSandPingFrame.StartMoving)
FastFPSandPingFrame:SetScript("OnDragStop", function(self)
    self:StopMovingOrSizing()
    local point, _, relativePoint, xOfs, yOfs = self:GetPoint()
    FastFPSandPingDB.point = point
    FastFPSandPingDB.relativePoint = relativePoint
    FastFPSandPingDB.xOfs = xOfs
    FastFPSandPingDB.yOfs = yOfs
end)

-- Title Text
local title = FastFPSandPingFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
title:SetPoint("TOP", FastFPSandPingFrame, "TOP", 0, -5)
title:SetText("Fast FPS and Ping")

-- FPS Text
local fpsText = FastFPSandPingFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
fpsText:SetPoint("TOPLEFT", FastFPSandPingFrame, "TOPLEFT", 10, -25)  -- Positioned with some padding

-- Server Ping Text
local pingText = FastFPSandPingFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
pingText:SetPoint("TOPRIGHT", FastFPSandPingFrame, "TOPRIGHT", -10, -25)  -- Positioned with some padding

-- Slash command to toggle the frame
SLASH_FASTFPSANDPING1 = "/ffap"
SlashCmdList["FASTFPSANDPING"] = function(msg)
    if FastFPSandPingFrame:IsShown() then
        FastFPSandPingFrame:Hide()
        FastFPSandPingDB.isFrameShown = false
    else
        FastFPSandPingFrame:Show()
        FastFPSandPingDB.isFrameShown = true
    end
end

-- Update function to refresh FPS and Ping
local function UpdateStats()
    local fps = GetFramerate()
    local _, _, latencyHome = GetNetStats()

    -- FPS Color
    local fpsColor
    if fps < 30 then
        fpsColor = {1, 0, 0}  -- Rot für FPS unter 30
    elseif fps < 60 then
        fpsColor = {1, 1, 0}  -- Gelb für FPS zwischen 30 und 60
    else
        fpsColor = {0, 1, 0}  -- Grün für FPS über 60
    end

    -- Ping Color
    local pingColor
    if latencyHome > 150 then
        pingColor = {1, 0, 0}  -- Rot für Ping über 150 ms
    elseif latencyHome > 100 then
        pingColor = {1, 1, 0}  -- Gelb für Ping zwischen 100 und 150 ms
    else
        pingColor = {0, 1, 0}  -- Grün für Ping unter 100 ms
    end

    -- Set FPS text
    fpsText:SetText(string.format("FPS: %.1f", fps))
    fpsText:SetTextColor(unpack(fpsColor))  -- Setze die Farbe basierend auf fpsColor

    -- Set Ping text
    pingText:SetText(string.format("Ping: %d ms", latencyHome))
    pingText:SetTextColor(unpack(pingColor))  -- Setze die Farbe basierend auf pingColor
end

-- Update the frame every second
FastFPSandPingFrame:SetScript("OnUpdate", function(self, elapsed)
    self.timeSinceLastUpdate = (self.timeSinceLastUpdate or 0) + elapsed
    if self.timeSinceLastUpdate >= 1 then
        UpdateStats()
        self.timeSinceLastUpdate = 0
    end
end)

-- Event handling
FastFPSandPing:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LOGIN" then
        -- Restore the frame's visibility state
        if FastFPSandPingDB.isFrameShown then
            FastFPSandPingFrame:Show()
        else
            FastFPSandPingFrame:Hide()
        end

        -- Restore the frame's position
        if FastFPSandPingDB.point then
            FastFPSandPingFrame:SetPoint(FastFPSandPingDB.point, UIParent, FastFPSandPingDB.relativePoint, FastFPSandPingDB.xOfs, FastFPSandPingDB.yOfs)
        else
            FastFPSandPingFrame:SetPoint("CENTER")
        end
    end
end)

FastFPSandPing:RegisterEvent("PLAYER_LOGIN")
