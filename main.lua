local TextField = require("prettyui/text_field")
local KeybindField = require("prettyui/keybind_field")
local RibbonBar = require("prettyui/ribbon_bar")
local BuffBar = require("prettyui/buff_bar")
local TimeGraph = require("prettyui/time_graph")
local BarChart = require("prettyui/bar_chart")
local Histogram = require("prettyui/histogram")
local Dialog = require("prettyui/dialog")
local Confirm = require("prettyui/confirm")
local SelectionButtons = require("prettyui/selection_button")
local PrettyMiniMenu = require("prettyui/minimenu")
local OverheadBar = require("prettyui/overhead_bar")

local resources = Plugin.resources
TextField.SetDefaultSprite(resources and (resources.input_default or resources["input_default.png"]))

---@class prettyui
local PrettyUI = {
    AchievementPopup = require("prettyui/achievement_popup"),
    AnchoredTooltip = require("prettyui/anchored_tooltip"),
    BarChart = BarChart,
    BigSpinner = require("prettyui/big_spinner"),
    CheckboxButton = SelectionButtons.CheckboxButton,
    ColourPicker = require("prettyui/colour_picker"),
    ComboBox = require("prettyui/combo_box"),
    CollapseButton = require("prettyui/collapse_button"),
    Confirm = Confirm,
    Dialog = Dialog,
    Divider = require("prettyui/divider"),
    FancyButton = require("prettyui/fancy_button"),
    Histogram = Histogram,
    TimeGraph = TimeGraph,
    ItemSlot = require("prettyui/item_slot"),
    ItemGrid = require("prettyui/item_grid"),
    KeybindField = KeybindField,
    List = require("prettyui/list"),
    MiniMenu = PrettyMiniMenu,
    Panel = require("prettyui/panel"),
    OverheadBar = OverheadBar,
    Sprites = require("prettyui/core/sprites"),
    RibbonButton = require("prettyui/ribbon_button"),
    RibbonBar = RibbonBar,
    RadioButton = SelectionButtons.RadioButton,
    SimpleButton = require("prettyui/simple_button"),
    Slider = require("prettyui/slider"),
    Sprite = require("prettyui/sprite"),
    SpriteButton = require("prettyui/sprite_button"),
    Spinner = require("prettyui/spinner"),
    Tabs = require("prettyui/tabs"),
    Text = require("prettyui/text"),
    TextField = TextField,
    Tooltip = require("prettyui/tooltip"),
    Window = require("prettyui/window"),
    Scrollbar = require("prettyui/scrollbar"),
    SimpleView = require("prettyui/simple_view"),
    BuffBar = BuffBar,
}

PrettyUI.version = "1.3.0-beta"

RibbonBar.Start()
PrettyMiniMenu.Start()

function PluginShutdown()
    KeybindField.Shutdown()
    PrettyMiniMenu.Shutdown()
    Dialog.Shutdown()
    RibbonBar.Shutdown()
    BuffBar.Shutdown()
    TimeGraph.Shutdown()
    BarChart.Shutdown()
    Histogram.Shutdown()
    OverheadBar.Shutdown()
end

return PrettyUI
