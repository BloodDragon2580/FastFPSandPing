local AceGUI = LibStub("AceGUI-3.0")

-- Lokalisierte Texte für verschiedene Sprachen
local localizedTexts = {
    enUS = {
        FFPSLinks = "Click left to open the FPS and Ping display.",
        FFPSRechts = "Hold right-click to move the Minimap button.",
    },
    deDE = {
        FFPSLinks = "Zum Öffnen der FPS- und Ping-Anzeige links klicken.",
        FFPSRechts = "Rechtsklick halten, um den Minikarten-Button zu verschieben.",
    },
    frFR = {
        FFPSLinks = "Cliquez à gauche pour ouvrir l'affichage FPS et Ping.",
        FFPSRechts = "Maintenez le clic droit pour déplacer le bouton de la Minimap.",
    },
    esES = {
        FFPSLinks = "Haz clic a la izquierda para abrir la visualización de FPS et Ping.",
        FFPSRechts = "Mantén presionado el botón derecho para mover el botón del minimapa.",
    },
    itIT = {
        FFPSLinks = "Clicca a sinistra per aprire la visualizzazione di FPS e Ping.",
        FFPSRechts = "Tieni premuto il tasto destro per spostare il pulsante della minimappa.",
    },
    ruRU = {
        FFPSLinks = "Щелкните левой кнопкой, чтобы открыть отображение FPS и Ping.",
        FFPSRechts = "Удерживайте правую кнопку мыши, чтобы переместить кнопку миникарты.",
    },
    zhCN = {
        FFPSLinks = "点击左侧以打开FPS和Ping显示。",
        FFPSRechts = "按住右键以移动小地图按钮。",
    },
    zhTW = {
        FFPSLinks = "點擊左側以打開FPS和Ping顯示。",
        FFPSRechts = "按住右鍵以移動小地圖按鈕。",
    },
    koKR = {
        FFPSLinks = "왼쪽 클릭하여 FPS 및 핑 표시를 엽니다.",
        FFPSRechts = "오른쪽 클릭을 유지하여 미니맵 버튼을 이동합니다.",
    },
    ptBR = {
        FFPSLinks = "Clique à esquerda para abrir a exibição de FPS e Ping.",
        FFPSRechts = "Mantenha o clique direito para mover o botão do minimapa.",
    },
    -- Weitere Sprachen können hier hinzugefügt werden
}

-- Bestimme die aktuelle Sprache
local locale = GetLocale()

-- Debug-Ausgaben für die Sprache
print("Current Locale:", locale)

-- Setze die Standardwerte, falls die Sprache nicht definiert ist
_G["FFPSlinksText"] = localizedTexts[locale] and localizedTexts[locale].FFPSLinks or "Click left to open the FPS and Ping display."
_G["FFPSrechtsText"] = localizedTexts[locale] and localizedTexts[locale].FFPSRechts or "Hold right-click to move the Minimap button."

-- Debug-Ausgaben für die Textwerte
print("FFPSLinksText:", _G["FFPSlinksText"])
print("FFPSRechtsText:", _G["FFPSrechtsText"])

FastFPSandPing_Settings = {
	MinimapPos = 45
}

function FastFPSandPing_MinimapButton_Reposition()
	FastFPSandPing_MinimapButton:SetPoint("TOPLEFT","Minimap","TOPLEFT",52-(80*cos(FastFPSandPing_Settings.MinimapPos)),(80*sin(FastFPSandPing_Settings.MinimapPos))-52)
end

function FastFPSandPing_MinimapButton_DraggingFrame_OnUpdate()

	local xpos,ypos = GetCursorPosition()
	local xmin,ymin = Minimap:GetLeft(), Minimap:GetBottom()

	xpos = xmin-xpos/UIParent:GetScale()+70
	ypos = ypos/UIParent:GetScale()-ymin-70

	FastFPSandPing_Settings.MinimapPos = math.deg(math.atan2(ypos,xpos))
	FastFPSandPing_MinimapButton_Reposition()
end

function FastFPSandPing_MinimapButton_OnClick()
	DEFAULT_CHAT_FRAME.editBox:SetText("/ffap") 
	ChatEdit_SendText(DEFAULT_CHAT_FRAME.editBox, 0)
end
