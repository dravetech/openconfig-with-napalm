
tell application id "com.omnigroup.OmniGraffle6"
    activate
	make new document with properties {name:"person-extensionperson"}
    set bounds of window 1 to {50, 50, 1200, 800}
	tell first canvas of document "person-extensionperson"
        set canvasSize to {600, 600}
		set name to "YANG Model"
		set adjusts pages to true

		make new shape at end of graphics with properties {fill: no fill, draws stroke: false, draws shadow: false, autosizing: full, size: {32.000000, 20.000000}, text: {size: 8, alignment: center, font: "HelveticaNeue", text: "leafref"}, origin: {2403.202333, 169.219094}}
		make new line at end of graphics with properties {point list: {{2513.245592418806, 185.5962102698529}, {2373.745592418806, 185.3149602698529}}, draws shadow: false, head type: "FilledArrow"}
		make new shape at end of graphics with properties {fill: no fill, draws stroke: false, draws shadow: false, autosizing: full, size: {105.000000, 20.000000}, text: {size: 8, alignment: center, font: "HelveticaNeue", text: "Schema tree, containment"}, origin: {2397.741930, 138.863190}}
		make new line at end of graphics with properties {point list: {{2374.993645107464, 154.4881903780727}, {2514.493645107464, 154.4881903780727}}, draws shadow: false, tail type: "FilledDiamond"}
		make new shape at end of graphics with properties {autosizing: vertically only, size: {139.500000, 14.000000}, text: {alignment: center, font: "Helvetica-Bold", text: "Legend"}, text placement: top, origin: {2366.929155, 43.937008}, vertical padding: 0}
		make new shape at end of graphics with properties {autosizing: vertically only, size: {139.500000, 56.000000}, text: {{color: {0.600000, 0.152941, 0.152941}, text: "Mandatory config
"}, {color: {0.129412, 0.501961, 0.254902}, text: "Optional config
"}, {color: {0.129412, 0.501961, 0.254902}, text: "Key leaf", underlined: true}, {color: {0.129412, 0.501961, 0.254902}, text: "
"}, {color: {0.549020, 0.486275, 0.133333}, text: "Not config"}}, text placement: top, origin: {2366.929155, 57.937008}, vertical padding: 0}
		assemble graphics -2 through -1 table shape { 2, 1 }
		assemble graphics -5 through -1

    make new shape at end of graphics with properties {fill: no fill, draws stroke: false, draws shadow: false, autosizing: full, size: {57.000000, 30.000000}, text: {size: 16, alignment: center, font: "HelveticaNeue", text: "person-extension"}, origin: {100, 4.500000}}
make new shape at end of graphics with properties {autosizing: full, size: {187.500000, 14.000000}, text: {{alignment: center, font: "Helvetica-Bold", text: "augment "}, {alignment: center, color: {0.113725, 0.352941, 0.670588}, font: "Helvetica-Bold", text: "/person:Person "}}, text placement: top, origin: {150.000000, 11.500000}, vertical padding: 0}
make new shape at end of graphics with properties {autosizing:full, size:{187.5, 28.0}, text:{{font: "Helvetica-Oblique", color:  {0.129412, 0.501961, 0.254902}, text: "gender? (rw) identityref
"}}, text placement:top, origin:{150.0, 25.5}, vertical padding:0}
local person_Person
set person_Person to assemble ( graphics -2 through -1 ) table shape {2, 1}
make new shape at end of graphics with properties {fill: no fill, draws stroke: false, draws shadow: false, autosizing: full, size: {57.000000, 30.000000}, text: {size: 16, alignment: center, font: "HelveticaNeue", text: "person"}, origin: {100, 4.500000}}
make new shape at end of graphics with properties {autosizing: full, size: {187.500000, 14.000000}, text: {{alignment: center, font: "Helvetica-Bold", text: "container "}, {alignment: center, color: {0.113725, 0.352941, 0.670588}, font: "Helvetica-Bold", text: "Person "}}, text placement: top, origin: {150.000000, 11.500000}, vertical padding: 0}
make new shape at end of graphics with properties {autosizing:full, size:{187.5, 28.0}, text:{{font: "Helvetica-Oblique", color:  {0.129412, 0.501961, 0.254902}, text: "name? (rw) string
"}, {font: "Helvetica-Oblique", color:  {0.129412, 0.501961, 0.254902}, text: "age? (rw) uint16
"}, {font: "Helvetica-Oblique", color:  {0.129412, 0.501961, 0.254902}, text: "gender? (rw) identityref
"}}, text placement:top, origin:{150.0, 25.5}, vertical padding:0}
local person_Person
set person_Person to assemble ( graphics -2 through -1 ) table shape {2, 1}

    layout
    end tell
end tell
