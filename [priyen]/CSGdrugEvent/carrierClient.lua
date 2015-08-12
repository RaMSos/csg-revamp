local resX, resY = guiGetScreenSize()

function createGUI(thePlayer)
	cWindow = 	guiCreateWindow((resX/2)-315,(resY/2)-100,629,200,"Cargo Ship Controls",false)
	buttonSAC =	guiCreateButton(0.3418,0.485,0.0668,0.195,"Stop",true,cWindow)
	NW = 		guiCreateButton(0.2655,0.255,0.0668,0.195,"NW",true,cWindow)
	N = 		guiCreateButton(0.3418,0.255,0.0668,0.195,"N",true,cWindow)
	NE = 		guiCreateButton(0.4213,0.26,0.0668,0.195,"NE",true,cWindow)
	W = 		guiCreateButton(0.2671,0.485,0.0668,0.195,"W",true,cWindow)
	E = 		guiCreateButton(0.4213,0.49,0.0668,0.195,"E",true,cWindow)
	SW = 		guiCreateButton(0.2671,0.73,0.0668,0.195,"SW",true,cWindow)
	S = 		guiCreateButton(0.3434,0.73,0.0668,0.195,"S",true,cWindow)
	SE = 		guiCreateButton(0.4213,0.725,0.0668,0.195,"SE",true,cWindow)
	NWr = 		guiCreateButton(0.5119,0.26,0.0668,0.195,"45",true,cWindow)
	GoUp = 		guiCreateButton(0.5919,0.26,0.0668,0.195,"Up",true,cWindow)
	resetH = 	guiCreateButton(0.6750,0.12,0.0600,0.1,"Reset",true,cWindow)
	NEr = 		guiCreateButton(0.6693,0.26,0.0668,0.195,"45",true,cWindow)
	Wr = 		guiCreateButton(0.5119,0.49,0.0668,0.195,"90",true,cWindow)
	GoDn = 		guiCreateButton(0.5919,0.49,0.0668,0.195,"Down",true,cWindow)
	Er = 		guiCreateButton(0.6693,0.495,0.0668,0.195,"90",true,cWindow)
	button1 = 	guiCreateButton(0.7663,0.2,0.213,0.150,"Move To LS",true,cWindow)
	button2 = 	guiCreateButton(0.7663,0.4,0.213,0.150,"Move To SF",true,cWindow)
	button3 = 	guiCreateButton(0.7663,0.6,0.213,0.150,"Move To LV",true,cWindow)
	button4 =   guiCreateButton(0.7663,0.8,0.213,0.150,"Move To Base",true,cWindow)
	button5 = 	guiCreateButton(0.5175,0.725,0.213,0.195,"Close",true,cWindow)
	GUIEditor_Label1 = guiCreateLabel(0.2766,0.125,0.2051,0.075, "Movement Controls",true,cWindow)
	guiLabelSetColor(GUIEditor_Label1,255,255,255)
	guiLabelSetVerticalAlign(GUIEditor_Label1,"top")
	guiLabelSetHorizontalAlign(GUIEditor_Label1,"left",false)
	GUIEditor_Label2 = guiCreateLabel(0.5158,0.125,0.1781,0.08,"Rotation Controls",true,cWindow)
	guiLabelSetColor(GUIEditor_Label2,255,255,255)
	guiLabelSetVerticalAlign(GUIEditor_Label2,"top")
	guiLabelSetHorizontalAlign(GUIEditor_Label2,"left",false)
	GUIEditor_Label3 = guiCreateLabel(0.806,0.125,0.1669,0.0739,"Warp Controls",true,cWindow)
	guiLabelSetColor(GUIEditor_Label3,255,255,255)
	guiLabelSetVerticalAlign(GUIEditor_Label3,"top")
	guiLabelSetHorizontalAlign(GUIEditor_Label3,"left",false)

	addEventHandler("onClientGUIClick", GoUp, function() triggerServerEvent("cargoHeight", root, 3) end, false)
	addEventHandler("onClientGUIClick", GoDn, function() triggerServerEvent("cargoHeight", root, -3) end, false)
	addEventHandler("onClientGUIClick", resetH, function() triggerServerEvent("cargoHeight", root, 5.5) end, false)

	addEventHandler("onClientGUIClick", buttonSAC, function() triggerServerEvent("stopCargo", root) end, false)
	addEventHandler("onClientGUIClick", button1, function() triggerServerEvent("moveToBut", root, 835.6, -2086, 5) end, false)
	addEventHandler("onClientGUIClick", button2, function() triggerServerEvent("moveToBut", root, -1357.7, 532.4, 5.5) end, false)
	addEventHandler("onClientGUIClick", button3, function() triggerServerEvent("moveToBut", root, 2415, 507, 5) end, false)
	addEventHandler("onClientGUIClick", button4, function() triggerServerEvent("moveToBut", root, 1186, 3774, 9) end, false)
	addEventHandler("onClientGUIClick", button5, closeCgui, false)
	addEventHandler("onClientGUIClick", NW, function() triggerServerEvent("cargoMoveEvent", root, -160, 160, 0) end, false)
	addEventHandler("onClientGUIClick", N, function() triggerServerEvent("cargoMoveEvent", root, 0, 160, 0) end, false)
	addEventHandler("onClientGUIClick", NE, function() triggerServerEvent("cargoMoveEvent", root, 160, 160, 0) end, false)
	addEventHandler("onClientGUIClick", E, function() triggerServerEvent("cargoMoveEvent", root, 160, 0, 0) end, false)
	addEventHandler("onClientGUIClick", SE, function() triggerServerEvent("cargoMoveEvent", root, 160, -160, 0) end, false)
	addEventHandler("onClientGUIClick", S, function() triggerServerEvent("cargoMoveEvent", root, 0, -160, 0) end, false)
	addEventHandler("onClientGUIClick", SW, function() triggerServerEvent("cargoMoveEvent", root, -160, -160, 0) end, false)
	addEventHandler("onClientGUIClick", W, function() triggerServerEvent("cargoMoveEvent", root, -160, 0, 0) end, false)
	addEventHandler("onClientGUIClick", NWr, function() triggerServerEvent("cargoRotate", root, 0, 0, 45) end, false)
	addEventHandler("onClientGUIClick", NEr, function() triggerServerEvent("cargoRotate", root, 0, 0, -45) end, false)
	addEventHandler("onClientGUIClick", Er, function() triggerServerEvent("cargoRotate", root, 0, 0, -90) end, false)
	addEventHandler("onClientGUIClick", Wr, function() triggerServerEvent("cargoRotate", root, 0, 0, 90) end, false)
	guiSetVisible (cWindow, false)
end
addEventHandler("onClientResourceStart",getResourceRootElement(getThisResource()),createGUI)

function openGUI(thePlayer)
	if (cWindow ~= nil) then
		guiSetVisible(cWindow, true)
		showCursor(true)
	end
end
addEvent("makeGUI", true)
addEventHandler("makeGUI", getLocalPlayer(), openGUI)

function closeCgui()
	guiSetVisible (cWindow, false)
	showCursor(false)
end