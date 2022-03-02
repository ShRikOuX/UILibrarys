local UI = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ShRikOuX/UILibrarys/main/Evov2System""))()
local Library = UI.library
local Main = Library.new("Main")

local Tab = Main:AddTab("Name", "Description", 0) -- Put a image link where the 0 is if you want a icon.
Main:AddProfile()
local Status = false
local BoxText = ""
local Value = 0
local Unused = 0
Tab:AddLabel("Label", "Gotham") --  You can change the font if you want, or you can leave it blank for a default of Gotham
Tab:AddStatusLabel("Status Label", Status)
Tab:AddClipboardLabel("Copy my name to your clipboard", "SyndiCat")
Tab:AddToggle(
    "Toggle",
    function(state)
        Status = state
    end
)
Tab:AddSlider(
    "Slider",
    function(a)
        Value = a
    end
)
Tab:AddBox(
    "Textbox",
    function(a)
        BoxText = a
    end
)
Tab:AddButton(
    "Print Textbox/Slider",
    function(a)
        print("Textbox: " .. BoxText)
        print("Slider: " .. Value)
    end
)
Tab:AddDropdown(
    "Dropdown",
    function(a)
        Unused = a
    end,
    {items = {1, 2, 3, 4, 5}}
)