-- FastFPSandPing minimap button via LibDataBroker + LibDBIcon

local localizedTexts = {
    enUS = {
        left = "Left-click to show or hide the FPS and Ping window.",
        right = "Right-click to open the options.",
        drag = "Drag to move the minimap button.",
        title = "Fast FPS and Ping",
    },
    deDE = {
        left = "Linksklick zeigt oder versteckt das FPS- und Ping-Fenster.",
        right = "Rechtsklick öffnet die Optionen.",
        drag = "Zum Verschieben den Minikarten-Button ziehen.",
        title = "Fast FPS and Ping",
    },
    frFR = {
        left = "Clic gauche pour afficher ou masquer la fenêtre FPS et Ping.",
        right = "Clic droit pour ouvrir les options.",
        drag = "Faites glisser pour déplacer le bouton de la mini-carte.",
        title = "Fast FPS and Ping",
    },
    esES = {
        left = "Haz clic izquierdo para mostrar u ocultar la ventana de FPS y Ping.",
        right = "Haz clic derecho para abrir las opciones.",
        drag = "Arrastra para mover el botón del minimapa.",
        title = "Fast FPS and Ping",
    },
    itIT = {
        left = "Clic sinistro per mostrare o nascondere la finestra FPS e Ping.",
        right = "Clic destro per aprire le opzioni.",
        drag = "Trascina per spostare il pulsante della minimappa.",
        title = "Fast FPS and Ping",
    },
    ptBR = {
        left = "Clique esquerdo para mostrar ou ocultar a janela de FPS e Ping.",
        right = "Clique direito para abrir as opções.",
        drag = "Arraste para mover o botão do minimapa.",
        title = "Fast FPS and Ping",
    },
    ruRU = {
        left = "Левый клик показывает или скрывает окно FPS и пинга.",
        right = "Правый клик открывает настройки.",
        drag = "Перетащите, чтобы переместить кнопку миникарты.",
        title = "Fast FPS and Ping",
    },
    koKR = {
        left = "왼쪽 클릭으로 FPS 및 핑 창을 표시하거나 숨깁니다.",
        right = "오른쪽 클릭으로 옵션을 엽니다.",
        drag = "드래그하여 미니맵 버튼을 이동합니다.",
        title = "Fast FPS and Ping",
    },
    zhCN = {
        left = "左键点击可显示或隐藏 FPS 和延迟窗口。",
        right = "右键点击可打开选项。",
        drag = "拖动以移动小地图按钮。",
        title = "Fast FPS and Ping",
    },
    zhTW = {
        left = "左鍵點擊可顯示或隱藏 FPS 與延遲視窗。",
        right = "右鍵點擊可開啟選項。",
        drag = "拖曳以移動小地圖按鈕。",
        title = "Fast FPS and Ping",
    },
}

local locale = GetLocale()
local text = localizedTexts[locale] or localizedTexts.enUS

local ADDON_NAME = "FastFPSandPing"
local ICON_PATH = "Interface\\Icons\\INV_Misc_Wrench_01"

local LibStub = _G.LibStub
local LDB = LibStub and LibStub("LibDataBroker-1.1", true)
local LDBIcon = LibStub and LibStub("LibDBIcon-1.0", true)

local dataObject
local isRegistered = false

local function EnsureMinimapDB()
    FastFPSandPingDB = FastFPSandPingDB or {}

    if type(FastFPSandPingDB.minimap) ~= "table" then
        FastFPSandPingDB.minimap = {}
    end

    if FastFPSandPingDB.minimap.minimapPos == nil then
        FastFPSandPingDB.minimap.minimapPos = FastFPSandPingDB.minimapPos or 45
    end

    if FastFPSandPingDB.showMinimapButton == nil then
        FastFPSandPingDB.showMinimapButton = true
    end

    if FastFPSandPingDB.minimap.hide == nil then
        FastFPSandPingDB.minimap.hide = not FastFPSandPingDB.showMinimapButton
    end
end

local function ToggleMainWindow()
    local frame = _G.FastFPSandPingFrame
    if not frame then return end

    if frame:IsShown() then
        frame:Hide()
        FastFPSandPingDB.isFrameShown = false
    else
        frame:Show()
        FastFPSandPingDB.isFrameShown = true
    end
end

local function OpenOptions()
    if SlashCmdList and SlashCmdList["FASTFPSANDPING"] then
        SlashCmdList["FASTFPSANDPING"]("options")
    end
end

local function EnsureDataObject()
    if dataObject or not LDB then return end

    dataObject = LDB:NewDataObject(ADDON_NAME, {
        type = "launcher",
        icon = ICON_PATH,
        label = text.title,
        OnClick = function(_, button)
            if button == "RightButton" then
                OpenOptions()
            else
                ToggleMainWindow()
            end
        end,
        OnTooltipShow = function(tooltip)
            if not tooltip or not tooltip.AddLine then return end
            tooltip:AddLine(text.title)
            tooltip:AddLine(text.left, 1, 1, 1)
            tooltip:AddLine(text.right, 1, 1, 1)
            tooltip:AddLine(text.drag, 0.8, 0.8, 0.8)
        end,
    })
end

function FastFPSandPing_RegisterMinimapButton()
    if not (LDB and LDBIcon) then return end

    EnsureMinimapDB()
    EnsureDataObject()

    if not isRegistered then
        LDBIcon:Register(ADDON_NAME, dataObject, FastFPSandPingDB.minimap)
        isRegistered = true
    end
end

function FastFPSandPing_ApplyMinimapButtonState()
    if not (LDB and LDBIcon) then return end

    EnsureMinimapDB()
    FastFPSandPing_RegisterMinimapButton()

    FastFPSandPingDB.minimap.hide = not FastFPSandPingDB.showMinimapButton

    if FastFPSandPingDB.showMinimapButton then
        LDBIcon:Show(ADDON_NAME)
    else
        LDBIcon:Hide(ADDON_NAME)
    end
end
