---@meta
-- Generated with emmyfall
---@alias hooks
---| '"OnPhysgunPickup"' #  Called when a player has successfully picked up an entity with their Physics Gun.  Not to be confused with PhysgunPickup which is a predicted hook
---| '"setupskyboxfog"' #  Called when skybox fog is drawn.
---| '"PlayerEnteredVehicle"' #  Called when a players enters a vehicle
---| '"OnPlayerPhysicsPickup"' #  Called when an entity is being picked up by +use
---| '"postdrawhud"' #  Called after drawing HUD (2D Context)
---| '"writecell"' #  Called when a high speed device writes to a wired SF chip
---| '"remote"' #  Remote hook.  This hook can be called from other instances
---| '"EntityRemoved"' #  Called when an entity is removed
---| '"addLaw"' #  Called when a law is added. DarkRP only.
---| '"hudshoulddraw"' #  Called when a hud element is attempting to be drawn
---| '"onLockpickCompleted"' #  Called when a player has finished picking a lock, successfully or otherwise. DarkRP only.  Will only be called if the lockpicker is the owner of the chip, or if the chip is running in superuser mode.
---| '"renderoffscreen"' #  Called when a frame is requested to be drawn. Doesn't require a screen or HUD but only works on rendertargets. (2D Context)
---| '"PlayerStartVoice"' #  Called when a player starts using voice chat.
---| '"VRPreRenderRight"' #  Called before rendering the right eye. This along with the previous hook can be used to render different things in different eyes. HUD is required.
---| '"KeyRelease"' #  Called when a player releases a key
---| '"PhysgunPickup"' #  Called when an entity gets picked up by a physgun  This hook is predicted.
---| '"PlayerAmmoChanged"' #  Called when a player's reserve ammo count changes.
---| '"StartChat"' #  Called when the local player opens their chat window.
---| '"lockpickStarted"' #  Called when a player is about to pick a lock. DarkRP only.  Will only be called if the lockpicker is the owner of the chip, or if the chip is running in superuser mode.
---| '"FinishChat"' #  Called when the local player closes their chat window.
---| '"moneyPrinterPrintMoney"' #  Called when a money printer is about to print money. DarkRP only.  Not guaranteed to work for non-vanilla money printers.  You should use moneyPrinterPrinted instead, as the printer is not guaranteed to print money even if this hook is called.  Only works if the owner of the chip also owns the money printer, or if the chip is running in superuser mode.
---| '"Removed"' #  Called when the starfall chip is removed
---| '"xinputPressed"' #  Called when a controller button has been pressed. Client must have XInput Lua binary installed.
---| '"DupeFinished"' #  Called after the starfall chip is duplicated and the duplication is finished.
---| '"PlayerHurt"' #  Called when a player gets hurt, uses the player_hurt game event clientside.
---| '"VRStart"' #  Called when a player enters VR
---| '"PlayerSwitchWeapon"' #  Called when a player switches their weapon
---| '"think"' #  Think hook. Called each frame on the client and each game tick on the server.
---| '"OnPhysgunFreeze"' #  Called when an entity is being frozen  Note this is not called for players or NPCs held with the physgun (bug)
---| '"EntityFireBullets"' #  Called every time a bullet is fired from an entity
---| '"PlayerLeaveVehicle"' #  Called when a players leaves a vehicle
---| '"OnContextMenuOpen"' #  Called when the player opens the context menu
---| '"PlayerChat"' #  Called when a player's chat message is printed to the chat window
---| '"mouseWheeled"' #  Called when the mouse wheel is rotated
---| '"OnPlayerPhysicsDrop"' #  Called when an entity is being dropped or thrown by +use
---| '"mousemoved"' #  Called when the mouse is moved
---| '"GravGunPunt"' #  Called when a player punts with the gravity gun
---| '"input"' #  Called when an input on a wired SF chip is written to
---| '"GravGunOnPickedUp"' #  Called when an entity is being picked up by a gravity gun
---| '"inputPressed"' #  Called when a button is pressed
---| '"PlayerEndVoice"' #  Called when a player stops using voice chat.
---| '"OnEntityWaterLevelChanged"' #  Called when the Entity:getWaterLevel of an entity is changed.
---| '"PlayerNoClip"' #  Called when a player toggles noclip
---| '"xinputStick"' #  Called when a stick on the controller has moved. Client must have XInput Lua binary installed.
---| '"StartEntityDriving"' #  Called when a player starts driving an entity
---| '"xinputTrigger"' #  Called when a trigger on the controller has moved. Client must have XInput Lua binary installed.
---| '"NetworkEntityCreated"' #  Called when a clientside entity gets created or re-created via lag/PVS
---| '"ComponentLinked"' #  Called when a component is linked to the starfall
---| '"ComponentUnlinked"' #  Called when a component is unlinked to the starfall
---| '"xinputDisconnected"' #  Called when a controller has been disconnected. Client must have XInput Lua binary installed.
---| '"xinputConnected"' #  Called when a controller has been connected. Client must have XInput Lua binary installed.
---| '"PlayerSwitchFlashlight"' #  Called when a players turns their flashlight on or off
---| '"starfallUsed"' #  Called when a player uses the screen
---| '"render"' #  Called when a frame is requested to be drawn on screen. (2D/3D Context)
---| '"OnNPCKilled"' #  Called whenever an NPC is killed.
---| '"NotifyShouldTransmit"' #  Called when a clientside entity transmit state is changed. Usually when changing PVS  If you want clientside render changes to persist on an entity you have to re-apply them  each time it begins transmitting again
---| '"predrawskybox"' #  Called before the 3D skybox is drawn. This will not be called for maps with no 3D skybox, or when the 3d skybox is disabled
---| '"StarfallError"' #  Called when starfall chip errors
---| '"drawhud"' #  Called when a frame is requested to be drawn on hud. (2D Context)
---| '"predrawviewmodels"' #  Called before drawing the viewmodel rendergroup (3D Context)
---| '"predrawhud"' #  Called before drawing HUD (2D Context)
---| '"postdrawskybox"' #  Called after the 3D skybox is drawn. This will not be called if PreDrawSkyBox has prevented rendering of the skybox
---| '"removeLaw"' #  Called when a law is removed. DarkRP only. Not usually called when /resetlaws is used.
---| '"predrawtranslucentrenderables"' #  Called before translucent entities are drawn. (Only works with HUD) (3D context)
---| '"PhysgunDrop"' #  Called when an entity being held by a physgun gets dropped
---| '"PlayerInitialSpawn"' #  Called when a player spawns for the first time
---| '"postdrawopaquerenderables"' #  Called after opaque entities are drawn. (Only works with HUD) (3D context)
---| '"predrawopaquerenderables"' #  Called before opaque entities are drawn. (Only works with HUD) (3D context)
---| '"hologrammatrix"' #  Called before entities are drawn. You can't render anything, but you can edit hologram matrices before they are drawn.
---| '"tick"' #  Tick hook. Called each game tick on both the server and client.
---| '"KeyPress"' #  Called when a player presses a key
---| '"renderscene"' #  Called when a scene is requested to be drawn. This is used for the render.renderview function.
---| '"PropBreak"' #  Called when an entity is broken
---| '"net"' #  Called when a net message arrives
---| '"xinputReleased"' #  Called when a controller button has been released. Client must have XInput Lua binary installed.
---| '"VRInput"' #  This gets called every time a boolean controller input action changes state
---| '"VRExit"' #  Called when a player exits VR
---| '"PlayerConnect"' #  Called when a player connects to the server. (Game Event)
---| '"readcell"' #  Called when a high speed device reads from a wired SF chip
---| '"DoAnimationEvent"' #  Called when a player animation event occurs
---| '"inputReleased"' #  Called when a button is released
---| '"midi"' #  Event hook for midi devices.    Everytime a midi device outputs a signal, the callback function on the hook is called.  Read up on the MIDI protocol to make better sense of everything -> https://ccrma.stanford.edu/~craig/articles/linuxmidi/misc/essenmidi.html  Commands and their parameters:  0x80 NOTE_OFF              : param1 = key;                         param2 = velocity  0x90 NOTE_ON               : param1 = key;                         param2 = velocity  0xA0 AFTERTOUCH            : param1 = key;                         param2 = touch  0xB0 CONTINUOUS_CONTROLLER : param1 = button_number;               param2 = button_value  0xC0 PATCH_CHANGE          : param1 = patch number;  0xD0 CHANNEL_PRESSURE      : param1 = pressure;  0xE0 PITCH_BEND            : param1 = lsb(least signifigant bit);  param2 = msb(most signifigant bit)
---| '"lockdownEnded"' #  Called when a lockdown has ended. DarkRP only.
---| '"PlayerDisconnect"' #  Called when a player disconnects from the server. (Game Event)
---| '"hudconnected"' #  Called when the player connects to a HUD component linked to the Starfall Chip
---| '"huddisconnected"' #  Called when the player disconnects from a HUD component linked to the Starfall Chip
---| '"VRPreRender"' #  Called before rendering the game. Any code that you want to run once per frame should be put here. HUD is required.
---| '"EntityTakeDamage"' #  Called when an entity is damaged
---| '"setupworldfog"' #  Called when world fog is drawn.
---| '"postdrawtranslucentrenderables"' #  Called after translucent entities are drawn. (Only works with HUD) (3D context)
---| '"ChatTextChanged"' #  Called when the player's chat box text changes.  Requires the 'input' permission.
---| '"EndEntityDriving"' #  Called when a player stops driving an entity
---| '"moneyPrinterCatchFire"' #  Called when a money printer is about to catch fire. DarkRP only. Called between moneyPrinterPrintMoney and moneyPrinterPrinted.  Not guaranteed to work for non-vanilla money printers.  Only works if the owner of the chip also owns the money printer, or if the chip is running in superuser mode.
---| '"lockdownStarted"' #  Called when a lockdown has started. DarkRP only.
---| '"PlayerDeath"' #  Called when a player dies
---| '"resetLaws"' #  Called when laws are reset. DarkRP only. Usually the only hook called when /resetlaws is used.
---| '"PlayerUnfrozeObject"' #  Called when a player unfreezes an object
---| '"EntityEmitSound"' #  Called whenever a sound has been played. This will not be called clientside if the server played the sound without the client also calling Entity:EmitSound.
---| '"PlayerSpawn"' #  Called when a player spawns
---| '"PlayerDisconnected"' #  Called when a player disconnects
---| '"PlayerChangename"' #  Called when a player changes their Steam name. (Game Event)
---| '"playerWalletChanged"' #  Called when a player receives money. DarkRP only.  Will only be called if the recipient is the owner of the chip, or if the chip is running in superuser mode.
---| '"PlayerCanPickupWeapon"' #  Called when a wants to pick up a weapon
---| '"ClientInitialized"' #  Called after a client's starfall has initialized. Use this to know when it's safe to send net messages to the client.
---| '"PlayerChangedTeam"' #  Called when a player has changed team using Player:SetTeam
---| '"moneyPrinterPrinted"' #  Called after a money printer is has printed money. DarkRP only.  Not guaranteed to work for non-vanilla money printers.  Only works if the owner of the chip also owns the money printer, or if the chip is running in superuser mode.
---| '"OnPhysgunReload"' #  Called when a player reloads his physgun
---| '"calcview"' #  Called when the engine wants to calculate the player's view. Only works if connected to Starfall HUD
---| '"PlayerSay"' #  Called when a player sends a chat message
---| '"PlayerSpray"' #  Called when a players sprays his logo
---| '"OnContextMenuClose"' #  Called when the player closes the context menu
---| '"permissionrequest"' #  Called when local client changed instance permissions
---| '"PlayerUse"' #  Called when a player holds their use key and looks at an entity.  Will continuously run.
---| '"OnEntityCreated"' #  Called when an entity gets created
---| '"GravGunOnDropped"' #  Called when an entity is being dropped by a gravity gun
--- coroutine
---  Coroutine library
_G.coroutine = {}
	--- status - shared - libs_sh/coroutine.lua#L100
	---@param coroutine thread The coroutine
	---@return string undefined Either "suspended", "running", "normal" or "dead"
	function _G.coroutine.status(coroutine) end
	--- yield - shared - libs_sh/coroutine.lua#L88
	---@param Optional ... parameters that will be returned to the main thread
	---@return ... undefined Any values passed to the coroutine
	function _G.coroutine.yield(Optional) end
	--- running - shared - libs_sh/coroutine.lua#L108
	---@return thread undefined Currently running coroutine
	function _G.coroutine.running() end
	--- wrap - shared - libs_sh/coroutine.lua#L70
	---@param func function Function of the coroutine
	---@return function undefined A function that, when called, resumes the created coroutine. Any parameters to that function will be passed to the coroutine.
	function _G.coroutine.wrap(func) end
	--- wait - shared - libs_sh/coroutine.lua#L115
	---@param time number Time in seconds to suspend the coroutine
	function _G.coroutine.wait(time) end
	--- create - shared - libs_sh/coroutine.lua#L61
	---@param func function Function of the coroutine
	---@return thread undefined Created coroutine
	function _G.coroutine.create(func) end
	--- resume - shared - libs_sh/coroutine.lua#L79
	---@param coroutine thread to resume
	---@param args ... Optional parameters that will be passed to the coroutine
	---@return ... undefined Any values the coroutine is returning to the main thread
	function _G.coroutine.resume(coroutine, args) end
--- bass
---  `bass` library is intended to be used only on client side. It's good for streaming local and remote sound files and playing them directly in player's "2D" context.
_G.bass = {}
	--- loadURL - client - libs_cl/bass.lua#L97
	---@param path string URL path to play from.
	---@param flags string Flags for the sound (`3d`, `mono`, `noplay`, `noblock`). noblock will fail if the webserver doesn't provide file length.
	---@param callback fun(bass: Bass, errorNum: number, errorName: string) Function which is called when the sound channel is loaded. It'll get 3 arguments: `Bass` object, error number and name.
	function _G.bass.loadURL(path, flags, callback) end
	--- loadFile - client - libs_cl/bass.lua#L60
	---@param path string File path to play from.
	---@param flags string Flags for the sound (`3d`, `mono`, `noplay`, `noblock`).
	---@param callback fun(bass: Bass, errorNum: number, errorName: string) Function which is called when the sound channel is loaded. It'll get 3 arguments: `Bass` object, error number and name.
	function _G.bass.loadFile(path, flags, callback) end
	--- soundsLeft - client - libs_cl/bass.lua#L132
	---@return number undefined The number of sounds left
	function _G.bass.soundsLeft() end
--- hook
---  Deals with hooks
_G.hook = {}
	--- run - shared - libs_sh/hook.lua#L584
	---@param hookname string The hook name
	---@param arguments ... Arguments to pass to the hook
	---@return ... undefined returns Return result(s) of the hook ran
	function _G.hook.run(hookname, arguments) end
	--- add - shared - libs_sh/hook.lua#L564
	---@param hookname hooks Name of the event
	---@param name string Unique identifier
	---@param func function Function to run
	function _G.hook.add(hookname, name, func) end
	--- remove - shared - libs_sh/hook.lua#L653
	---@param hookname string The hook name
	---@param name string The unique name for this hook
	function _G.hook.remove(hookname, name) end
	--- runRemote - shared - libs_sh/hook.lua#L616
	---@param recipient Entity? Starfall entity to call the hook on. Nil to run on every starfall entity
	---@param payload ... Parameters that will be passed when calling hook functions
	---@return table undefined A list of the resultset of each called hook
	function _G.hook.runRemote(recipient, payload) end
--- material
---  `material` library is allows creating material objects which are used for controlling shaders in rendering.
_G.material = {}
	--- getFloat - client - libs_cl/material.lua#L423
	---@param path string The path of the material (don't include .vmt in the path)
	---@param key string The key to get the float from
	---@return number? undefined The float value or nil if it doesn't exist
	function _G.material.getFloat(path, key) end
	--- createFromImage - client - libs_cl/material.lua#L504
	---@param path string The path to the image file, must be a jpg or png image
	---@param params string The shader parameters to apply to the material. See https://wiki.facepunch.com/gmod/Material_Parameters
	---@return Material undefined The Material created.
	function _G.material.createFromImage(path, params) end
	--- create - client - libs_cl/material.lua#L483
	---@param shader string The shader of the material. Must be one of
	---@return Material undefined The Material created.
	function _G.material.create(shader) end
	--- getMatrix - client - libs_cl/material.lua#L443
	---@param path string The path of the material (don't include .vmt in the path)
	---@param key string The key to get the matrix from
	---@return VMatrix? undefined The matrix value or nil if it doesn't exist
	function _G.material.getMatrix(path, key) end
	--- getVectorLinear - client - libs_cl/material.lua#L473
	---@param path string The path of the material (don't include .vmt in the path)
	---@param key string The key to get the vector from
	---@return Vector? undefined The vector value or nil if it doesn't exist
	function _G.material.getVectorLinear(path, key) end
	--- getKeyValues - client - libs_cl/material.lua#L371
	---@param path string The path of the material (don't include .vmt in the path)
	---@return table undefined The table of keyvalues
	function _G.material.getKeyValues(path) end
	--- getColor - client - libs_cl/material.lua#L411
	---@param path string The path of the material (don't include .vmt in the path)
	---@param x number The x coordinate of the pixel
	---@param y number The y coordinate of the pixel
	---@return Color undefined The color value
	function _G.material.getColor(path, x, y) end
	--- getShader - client - libs_cl/material.lua#L387
	---@param path string The path of the material (don't include .vmt in the path)
	---@return string undefined The shader name of the material
	function _G.material.getShader(path) end
	--- getInt - client - libs_cl/material.lua#L433
	---@param path string The path of the material (don't include .vmt in the path)
	---@param key string The key to get the int from
	---@return number? undefined The int value or nil if it doesn't exist
	function _G.material.getInt(path, key) end
	--- load - client - libs_cl/material.lua#L346
	---@param path string The path of the material (don't include .vmt in the path)
	---@return Material undefined The material object. Can't be modified.
	function _G.material.load(path) end
	--- getTexture - client - libs_cl/material.lua#L360
	---@param path string The path of the material (don't include .vmt in the path)
	---@param texture string The texture key to get
	---@return string? undefined The texture's name or nil if texture key isn't found
	function _G.material.getTexture(path, texture) end
	--- getString - client - libs_cl/material.lua#L453
	---@param path string The path of the material (don't include .vmt in the path)
	---@param key string The key to get the string from
	---@return string? undefined The string value or nil if it doesn't exist
	function _G.material.getString(path, key) end
	--- getVector - client - libs_cl/material.lua#L463
	---@param path string The path of the material (don't include .vmt in the path)
	---@param key string The key to get the vector from
	---@return Vector? undefined The vector value or nil if it doesn't exist
	function _G.material.getVector(path, key) end
	--- getName - client - libs_cl/material.lua#L379
	---@param path string The path of the material (don't include .vmt in the path)
	---@return string undefined The name of a material. If this material is user created, add ! to the beginning of this to use it with entity.setMaterial
	function _G.material.getName(path) end
	--- getWidth - client - libs_cl/material.lua#L395
	---@param path string The path of the material (don't include .vmt in the path)
	---@return number undefined The basetexture's width
	function _G.material.getWidth(path) end
	--- getHeight - client - libs_cl/material.lua#L403
	---@param path string The path of the material (don't include .vmt in the path)
	---@return number undefined The basetexture's height
	function _G.material.getHeight(path) end
--- team
---  Library for retreiving information about teams
_G.team = {}
	--- getPlayers - shared - libs_sh/team.lua#L28
	---@param ind number Index of the team
	---@return table undefined Table of players
	function _G.team.getPlayers(ind) end
	--- getScore - shared - libs_sh/team.lua#L48
	---@param ind number Index of the team
	---@return number undefined Number score of the team
	function _G.team.getScore(ind) end
	--- getNumPlayers - shared - libs_sh/team.lua#L62
	---@param ind number Index of the team
	---@return number undefined Number of players on the team
	function _G.team.getNumPlayers(ind) end
	--- getName - shared - libs_sh/team.lua#L41
	---@param ind number Index of the team
	---@return string undefined String name of the team
	function _G.team.getName(ind) end
	--- getJoinable - shared - libs_sh/team.lua#L55
	---@param ind number Index of the team
	---@return boolean undefined Whether the team is joinable
	function _G.team.getJoinable(ind) end
	--- exists - shared - libs_sh/team.lua#L83
	---@param ind number Index of the team
	---@return boolean undefined Whether the team exists
	function _G.team.exists(ind) end
	--- getNumDeaths - shared - libs_sh/team.lua#L69
	---@param ind number Index of the team
	---@return number undefined Number of deaths
	function _G.team.getNumDeaths(ind) end
	--- getAllTeams - shared - libs_sh/team.lua#L15
	---@return table undefined Table containing team information
	function _G.team.getAllTeams() end
	--- getNumFrags - shared - libs_sh/team.lua#L76
	---@param ind number Index of the team
	---@return number undefined Number of frags
	function _G.team.getNumFrags(ind) end
	--- bestAutoJoinTeam - shared - libs_sh/team.lua#L35
	---@return number undefined Index of the best team to join
	function _G.team.bestAutoJoinTeam() end
	--- getColor - shared - libs_sh/team.lua#L21
	---@param ind number Index of the team
	---@return Color undefined Color of the team
	function _G.team.getColor(ind) end
--- http
---  Http library. Requests content from urls.
_G.http = {}
	--- base64Decode - shared - libs_sh/http.lua#L150
	---@param data string The data to convert
	---@return string undefined The converted data
	function _G.http.base64Decode(data) end
	--- getMaximumRequests - shared - libs_sh/http.lua#L44
	---@return number undefined Maximum amount of concurrent active HTTP get/post requests 
	function _G.http.getMaximumRequests() end
	--- urlDecode - shared - libs_sh/http.lua#L168
	---@param data string The data to convert
	---@return string undefined The converted data
	function _G.http.urlDecode(data) end
	--- urlGoogleDriveToRaw - shared - libs_sh/http.lua#L181
	---@param url string The url to convert
	---@return string undefined The converted url
	function _G.http.urlGoogleDriveToRaw(url) end
	--- getActiveRequests - shared - libs_sh/http.lua#L38
	---@return number undefined The current amount of active HTTP get/post requests
	function _G.http.getActiveRequests() end
	--- post - shared - libs_sh/http.lua#L76
	---@param url string Http target url
	---@param payload table? Optional POST payload to be sent, can be both table and string. When table is used, the request body is encoded as application/x-www-form-urlencoded
	---@param callbackSuccess function? Optional function to be called on request success, taking the arguments body (string), length (number), headers (table) and code (number)
	---@param callbackFail function? Optional function to be called on request fail, taking the failing reason as an argument
	---@param headers table? Optional POST headers to be sent
	function _G.http.post(url, payload, callbackSuccess, callbackFail, headers) end
	--- urlEncode - shared - libs_sh/http.lua#L157
	---@param data string The data to convert
	---@return string undefined The converted data
	function _G.http.urlEncode(data) end
	--- base64Encode - shared - libs_sh/http.lua#L140
	---@param data string The data to convert
	---@return string undefined The converted data
	function _G.http.base64Encode(data) end
	--- canRequest - shared - libs_sh/http.lua#L32
	---@return boolean undefined If an HTTP get/post request can be made
	function _G.http.canRequest() end
	--- get - shared - libs_sh/http.lua#L50
	---@param url string Http target url
	---@param callbackSuccess function The function to be called on request success, taking the arguments body (string), length (number), headers (table) and code (number)
	---@param callbackFail function? The function to be called on request fail, taking the failing reason as an argument
	---@param headers table? GET headers to be sent
	function _G.http.get(url, callbackSuccess, callbackFail, headers) end
--- particle
---  Particles library.
_G.particle = {}
	--- create - client - libs_cl/particle.lua#L51
	---@param position Vector The particle emitter's position
	---@param use3D boolean Create the emitter in 3D mode
	---@return ParticleEmitter undefined ParticleEmitter Object
	function _G.particle.create(position, use3D) end
	--- particleEmittersLeft - client - libs_cl/particle.lua#L64
	---@return number undefined Number of particle emitters left
	function _G.particle.particleEmittersLeft() end
--- file
---  File functions. Allows modification of files.
_G.file = {}
	--- exists - client - libs_cl/file.lua#L312
	---@param path string Filepath relative to data/sf_filedata/.
	---@return boolean? undefined True if exists, false if not, nil if error
	function _G.file.exists(path) end
	--- find - client - libs_cl/file.lua#L342
	---@param path string The folder to enumerate, relative to data/sf_filedata/.
	---@param sorting string? Optional sorting argument. Either nameasc, namedesc, dateasc, datedesc
	---@return table undefined Table of file names
	---@return table undefined Table of directory names
	function _G.file.find(path, sorting) end
	--- write - client - libs_cl/file.lua#L233
	---@param path string Filepath relative to data/sf_filedata/.
	---@param data string The data to write
	function _G.file.write(path, data) end
	--- readInGame - client - libs_cl/file.lua#L203
	---@param path string Filepath relative to GarrysMod/garrysmod/.
	---@return string? undefined Contents or nil if error
	function _G.file.readInGame(path) end
	--- read - client - libs_cl/file.lua#L194
	---@param path string Filepath relative to data/sf_filedata/.
	---@return string? undefined Contents, or nil if error
	function _G.file.read(path) end
	--- writeTemp - client - libs_cl/file.lua#L262
	---@param filename string The name to give the file. Must be only a file and not a path
	---@param data string The data to write
	---@return string undefined The generated path for your temp file
	function _G.file.writeTemp(filename, data) end
	--- existsTemp - client - libs_cl/file.lua#L282
	---@param filename string The temp file name. Must be only a file and not a path
	---@return string? undefined The path to the temp file or nil if it doesn't exist
	function _G.file.existsTemp(filename) end
	--- open - client - libs_cl/file.lua#L179
	---@param path string Filepath relative to data/sf_filedata/.
	---@param mode string The file mode to use. See lua manual for explanation
	---@return File? undefined File object or nil if it failed
	function _G.file.open(path, mode) end
	--- delete - client - libs_cl/file.lua#L321
	---@param path string Filepath relative to data/sf_filedata/.
	---@return boolean? undefined True if successful, nil if it wasn't found
	function _G.file.delete(path) end
	--- asyncRead - client - libs_cl/file.lua#L212
	---@param path string Filepath relative to data/sf_filedata/.
	---@param callback function A callback function for when the read operation finishes. It has 3 arguments: `filename` string, `status` number and `data` string
	function _G.file.asyncRead(path, callback) end
	--- time - client - libs_cl/file.lua#L366
	---@param path string Filepath relative to data/sf_filedata/.
	---@return number undefined Last modified time in Unix time
	function _G.file.time(path) end
	--- findInGame - client - libs_cl/file.lua#L354
	---@param path string The folder to enumerate, relative to garrysmod.
	---@param sorting string? Optional sorting argument. Either nameasc, namedesc, dateasc, datedesc
	---@return table undefined Table of file names
	---@return table undefined Table of directory names
	function _G.file.findInGame(path, sorting) end
	--- createDir - client - libs_cl/file.lua#L334
	---@param path string Filepath relative to data/sf_filedata/.
	function _G.file.createDir(path) end
	--- readTemp - client - libs_cl/file.lua#L249
	---@param filename string The temp file name. Must be only a file and not a path
	---@return string? undefined The data of the temp file or nil if it doesn't exist
	function _G.file.readTemp(filename) end
	--- append - client - libs_cl/file.lua#L298
	---@param path string Filepath relative to data/sf_filedata/.
	---@param data string String that will be appended to the file.
	function _G.file.append(path, data) end
--- constraint
---  Library for creating and manipulating constraints.
_G.constraint = {}
	--- rope - server - libs_sv/constraint.lua#L328
	---@param index number Index of the rope constraint
	---@param e1 Entity The first entity
	---@param e2 Entity The second entity
	---@param bone1 number? Number bone of the first entity. Default 0
	---@param bone2 number? Number bone of the second entity. Default 0
	---@param v1 Vector Position on the first entity, in its local space coordinates
	---@param v2 Vector Position on the second entity, in its local space coordinates
	---@param length number? Length of the created rope. Default 0
	---@param addlength number? Amount to add to the base length of the rope. Default 0
	---@param force_lim number? Amount of force until it breaks, 0 = Unbreakable. Default 0
	---@param width number? Width of the rope. Default 0
	---@param materialName string? Material of the rope
	---@param rigid boolean? Whether the rope is rigid. Default false
	---@param color Color? The color of the rope. Default white
	---@return Constraint undefined The constraint entity
	function _G.constraint.rope(index, e1, e2, bone1, bone2, v1, v2, length, addlength, force_lim, width, materialName, rigid, color) end
	--- setElasticLength - server - libs_sv/constraint.lua#L481
	---@param index number Index of the elastic constraint
	---@param e Entity Entity that has the constraint
	---@param length number New length of the constraint
	---@return Constraint undefined The constraint entity
	function _G.constraint.setElasticLength(index, e, length) end
	--- slider - server - libs_sv/constraint.lua#L386
	---@param e1 Entity The first entity
	---@param e2 Entity The second entity
	---@param bone1 number? Number bone of the first entity. Default 0
	---@param bone2 number? Number bone of the second entity. Default 0
	---@param v1 Vector Position on the first entity, in its local space coordinates
	---@param v2 Vector Position on the second entity, in its local space coordinates
	---@param width number? Width of the slider. Default 0
	---@return Constraint undefined The constraint entity
	function _G.constraint.slider(e1, e2, bone1, bone2, v1, v2, width) end
	--- setConstraintClean - server - libs_sv/constraint.lua#L579
	---@param on boolean Whether the constraints should be cleaned or not
	function _G.constraint.setConstraintClean(on) end
	--- ballsocketadv - server - libs_sv/constraint.lua#L225
	---@param e1 Entity The first entity
	---@param e2 Entity The second entity
	---@param bone1 number? Number bone of the first entity. Default 0
	---@param bone2 number? Number bone of the second entity. Default 0
	---@param v1 Vector Position on the first entity, in its local space coordinates
	---@param v2 Vector Position on the second entity, in its local space coordinates
	---@param force_lim number? Amount of force until it breaks, 0 = Unbreakable. Default 0
	---@param torque_lim number? Amount of torque until it breaks, 0 = Unbreakable. Default 0
	---@param minv Vector? Vector defining minimum rotation angle based on world axes. Default Vec(0)
	---@param maxv Vector? Vector defining maximum rotation angle based on world axes. Default Vec(0)
	---@param frictionv Vector? Vector defining rotational friction, local to the constraint. Default Vec(0)
	---@param rotateonly boolean? If True, ballsocket will only affect the rotation allowing for free movement, otherwise it will limit both - rotation and movement. Default false
	---@param nocollide boolean? Bool whether or not to nocollide the two entities. Default false
	---@return Constraint undefined The constraint entity
	function _G.constraint.ballsocketadv(e1, e2, bone1, bone2, v1, v2, force_lim, torque_lim, minv, maxv, frictionv, rotateonly, nocollide) end
	--- breakType - server - libs_sv/constraint.lua#L557
	---@param e Entity Entity to be affected
	---@param typename string Name of the constraint type, ie. Weld, Elastic, NoCollide, etc.
	function _G.constraint.breakType(e, typename) end
	--- keepupright - server - libs_sv/constraint.lua#L453
	---@param e Entity The entity
	---@param ang Angle The upright angle
	---@param bone number Number bone of the entity. Default 0
	---@param lim number The strength of the constraint. Default 5000
	---@return Constraint undefined The constraint entity
	function _G.constraint.keepupright(e, ang, bone, lim) end
	--- nocollide - server - libs_sv/constraint.lua#L423
	---@param e1 Entity The first entity
	---@param e2 Entity The second entity
	---@param bone1 number? Number bone of the first entity. Default 0
	---@param bone2 number? Number bone of the second entity. Default 0
	---@return Constraint undefined The constraint entity
	function _G.constraint.nocollide(e1, e2, bone1, bone2) end
	--- getTable - server - libs_sv/constraint.lua#L572
	---@param ent Entity The entity
	---@return table undefined Table of tables containing constraint information
	function _G.constraint.getTable(ent) end
	--- ballsocket - server - libs_sv/constraint.lua#L186
	---@param e1 Entity The first entity
	---@param e2 Entity The second entity
	---@param bone1 number? Number bone of the first entity. Default 0
	---@param bone2 number? Number bone of the second entity. Default 0
	---@param pos Vector Position of the joint, relative to the second entity
	---@param force_lim number? Amount of force until it breaks, 0 = Unbreakable. Default 0
	---@param torque_lim number? Amount of torque until it breaks, 0 = Unbreakable. Default 0
	---@param nocollide boolean? Bool whether or not to nocollide the two entities. Default false
	---@return Constraint undefined The constraint entity
	function _G.constraint.ballsocket(e1, e2, bone1, bone2, pos, force_lim, torque_lim, nocollide) end
	--- removeAll - server - libs_sv/constraint.lua#L77
	function _G.constraint.removeAll() end
	--- constraintsLeft - server - libs_sv/constraint.lua#L585
	---@return number undefined Number of constraints able to be spawned
	function _G.constraint.constraintsLeft() end
	--- setElasticDamping - server - libs_sv/constraint.lua#L503
	---@param index number Index of the elastic constraint
	---@param e Entity Entity that has the elastic
	---@param damping number New Damping value of the elastic
	---@return Constraint undefined The constraint entity
	function _G.constraint.setElasticDamping(index, e, damping) end
	--- breakAll - server - libs_sv/constraint.lua#L547
	---@param e Entity Entity to remove the constraints from
	function _G.constraint.breakAll(e) end
	--- axis - server - libs_sv/constraint.lua#L140
	---@param e1 Entity The first entity
	---@param e2 Entity The second entity
	---@param bone1 number? Number bone of the first entity. Default 0
	---@param bone2 number? Number bone of the second entity. Default 0
	---@param v1 Vector Position to center the axis, local to e1's space coordinates
	---@param v2 Vector The second position defining the axis, local to e2's space coordinates. The laxis may be specified instead which is local to e1's space coordinates
	---@param force_lim number? Amount of force until it breaks, 0 = Unbreakable. Default 0
	---@param torque_lim number? Amount of torque until it breaks, 0 = Unbreakable. Default 0
	---@param friction number? Friction of the constraint. Default 0
	---@param nocollide boolean? Bool whether or not to nocollide the two entities. Default false
	---@param laxis Vector? Optional second position of the constraint, same as v2 but local to e1
	---@return Constraint undefined The constraint entity
	function _G.constraint.axis(e1, e2, bone1, bone2, v1, v2, force_lim, torque_lim, friction, nocollide, laxis) end
	--- weld - server - libs_sv/constraint.lua#L106
	---@param e1 Entity The first entity
	---@param e2 Entity The second entity
	---@param bone1 number? Number bone of the first entity. Default 0
	---@param bone2 number? Number bone of the second entity. Default 0
	---@param force_lim number? Max force the weld can take before breaking. Default 0
	---@param nocollide boolean? Bool whether or not to nocollide the two entities. Default false
	---@return Constraint undefined The constraint entity
	function _G.constraint.weld(e1, e2, bone1, bone2, force_lim, nocollide) end
	--- setElasticConstant - server - libs_sv/constraint.lua#L525
	---@param index number Index of the elastic constraint
	---@param e Entity Entity that has the elastic
	---@param constant number New constant value of the elastic
	---@return Constraint undefined The constraint entity
	function _G.constraint.setElasticConstant(index, e, constant) end
	--- elastic - server - libs_sv/constraint.lua#L274
	---@param index number Index of the elastic constraint
	---@param e1 Entity The first entity
	---@param e2 Entity The second entity
	---@param bone1 number? Number bone of the first entity. Default 0
	---@param bone2 number? Number bone of the second entity. Default 0
	---@param v1 Vector Position on the first entity, in its local space coordinates
	---@param v2 Vector Position on the second entity, in its local space coordinates
	---@param const number? Constant of the constraint. Default 1000
	---@param damp number? Damping of the constraint. Default 100
	---@param rdamp number? Rotational damping of the constraint. Default 0
	---@param width number? Width of the created constraint. Default 0
	---@param stretch boolean? True to mark as stretch-only. Default false
	---@return Constraint undefined The constraint entity
	function _G.constraint.elastic(index, e1, e2, bone1, bone2, v1, v2, const, damp, rdamp, width, stretch) end
--- game
---  Game functions
_G.game = {}
	--- getAmmoData - shared - libs_sh/game.lua#L80
	---@param id number See https://wiki.facepunch.com/gmod/Default_Ammo_Types
	---@return table undefined AmmoData, see https://wiki.facepunch.com/gmod/Structures/AmmoData
	function _G.game.getAmmoData(id) end
	--- getTickInterval - shared - libs_sh/game.lua#L68
	---@return number undefined Interval
	function _G.game.getTickInterval() end
	--- steamIDTo64 - shared - libs_sh/game.lua#L118
	---@param id string The STEAM_0 style id
	---@return string undefined 64bit Steam ID
	function _G.game.steamIDTo64(id) end
	--- serverFrameTime - client - libs_sh/game.lua#L163
	---@return number undefined Server frametime
	---@return number undefined Server frametime standard deviation
	function _G.game.serverFrameTime() end
	--- blastDamage - server - libs_sh/game.lua#L127
	---@param damageOrigin Vector The center of the explosion
	---@param damageRadius number The radius in which entities will be damaged (0 - 1500)
	---@param damage number The amount of damage to be applied
	function _G.game.blastDamage(damageOrigin, damageRadius, damage) end
	--- getHostname - shared - libs_sh/game.lua#L25
	---@return string undefined The hostname of the server
	function _G.game.getHostname() end
	--- getPlayerModels - shared - libs_sh/game.lua#L100
	---@return table undefined List of valid playermodels
	function _G.game.getPlayerModels() end
	--- getAmmoMax - shared - libs_sh/game.lua#L87
	---@param id number See https://wiki.facepunch.com/gmod/Default_Ammo_Types
	---@return number undefined The maximum amount of reserve ammo a player can hold of this ammo type
	function _G.game.getAmmoMax(id) end
	--- steamIDFrom64 - shared - libs_sh/game.lua#L111
	---@param id string The 64 bit Steam ID
	---@return string undefined STEAM_0 style Steam ID
	function _G.game.steamIDFrom64(id) end
	--- isDedicated - shared - libs_sh/game.lua#L43
	---@return boolean undefined True if the game is a dedicated server
	function _G.game.isDedicated() end
	--- isLan - shared - libs_sh/game.lua#L31
	---@return boolean undefined True if the game is a lan game
	function _G.game.isLan() end
	--- getTimeScale - shared - libs_sh/game.lua#L62
	---@return number undefined Time scale
	function _G.game.getTimeScale() end
	--- isSkyboxVisibleFromPoint - client - libs_sh/game.lua#L155
	---@param position Vector The position to check the skybox visibility from
	---@return boolean undefined Whether the skybox is visible from the position
	function _G.game.isSkyboxVisibleFromPoint(position) end
	--- getTickCount - shared - libs_sh/game.lua#L74
	---@return number undefined Ticks
	function _G.game.getTickCount() end
	--- getSunInfo - client - libs_sh/game.lua#L146
	---@return Vector undefined The direction of the sun
	---@return number undefined How obstructed the sun is 0 to 1.
	function _G.game.getSunInfo() end
	--- getWorld - shared - libs_sh/game.lua#L94
	---@return Entity undefined Worldspawn
	function _G.game.getWorld() end
	--- getMap - shared - libs_sh/game.lua#L19
	---@return string undefined The name of the current map
	function _G.game.getMap() end
	--- isSinglePlayer - shared - libs_sh/game.lua#L37
	---@return boolean undefined True if the game is singleplayer
	function _G.game.isSinglePlayer() end
	--- getMaxPlayers - shared - libs_sh/game.lua#L49
	---@return number undefined The max players allowed by the server
	function _G.game.getMaxPlayers() end
	--- isMounted - shared - libs_sh/game.lua#L55
	---@param str string String identifier of the game, eg. 'cstrike'
	---@return boolean undefined True if the game is mounted
	function _G.game.isMounted(str) end
	--- hasFocus - client - libs_sh/game.lua#L139
	---@return boolean undefined True if the game is focused
	function _G.game.hasFocus() end
--- xinput
---  A simpler, hook-based, and more-powerful controller input library. Inputs are not lost between rendered frames, and there is support for rumble. Note: the client must have the XInput lua binary module installed in order to access this library. See more at https://github.com/mitterdoo/garrysmod-xinput
_G.xinput = {}
	--- setRumble - client - libs_cl/xinput.lua#L133
	---@param id number Controller number. Starts at 0
	---@param softPercent number A number between 0.0-1.0 for how much the soft rumble motor should vibrate.
	---@param hardPercent number A number between 0.0-1.0 for how much the hard rumble motor should vibrate.
	function _G.xinput.setRumble(id, softPercent, hardPercent) end
	--- getTrigger - client - libs_cl/xinput.lua#L102
	---@param id number Controller number. Starts at 0
	---@param trigger number Which trigger to use. 0 is left
	---@return number undefined 0-255 inclusive
	function _G.xinput.getTrigger(id, trigger) end
	--- getStick - client - libs_cl/xinput.lua#L110
	---@param id number Controller number. Starts at 0
	---@param stick number Which stick to use. 0 is left
	---@return number undefined X Coordinate, Between -32768 - 32767 inclusive
	---@return number undefined Y Coordinate, Between -32768 - 32767 inclusive
	function _G.xinput.getStick(id, stick) end
	--- getBatteryLevel - client - libs_cl/xinput.lua#L119
	---@param id number Controller number. Starts at 0
	---@return number|boolean undefined If successful: a number between 0.0-1.0 inclusive.
	---@return string? undefined If last return was a false boolean (errored), this will be the error message.
	function _G.xinput.getBatteryLevel(id) end
	--- getState - client - libs_cl/xinput.lua#L87
	---@param id number Controller number. Starts at 0
	---@return table undefined Table containing all input data of the controller, or false if the controller is not connected. The table uses this struct: https://github.com/mitterdoo/garrysmod-xinput#xinput_gamepad
	function _G.xinput.getState(id) end
	--- getButton - client - libs_cl/xinput.lua#L94
	---@param id number Controller number. Starts at 0
	---@param button number The button to check for. See https://github.com/mitterdoo/garrysmod-xinput#xinput_gamepad_
	---@return boolean undefined 
	function _G.xinput.getButton(id, button) end
	--- getControllers - client - libs_cl/xinput.lua#L127
	---@return table undefined A table where each key is the ID of the controller that is connected. Disconnected controllers are not placed in the table.
	function _G.xinput.getControllers() end
--- bit
---  Bit library http://wiki.facepunch.com/gmod/Category:bit
_G.bit = {}
	--- rol - shared - libs_sh/bit.lua#L610
	---@param value number The value to be manipulated.
	---@param shiftCount number Amounts of bits to rotate left by.
	---@return number undefined Left rotated value
	function _G.bit.rol(value, shiftCount) end
	--- arshift - shared - libs_sh/bit.lua#L563
	---@param value number The value to be manipulated.
	---@param shiftCount number Amount of bits to shift
	---@return number undefined shiftedValue
	function _G.bit.arshift(value, shiftCount) end
	--- compress - shared - libs_sh/bit.lua#L679
	---@param s string String to compress
	---@return string? undefined Compressed string, or nil if compression failed
	function _G.bit.compress(s) end
	--- bnot - shared - libs_sh/bit.lua#L577
	---@param value number The value to be inverted.
	---@return number undefined Return value of bitwise not operation
	function _G.bit.bnot(value) end
	--- lshift - shared - libs_sh/bit.lua#L603
	---@param value number The value to be manipulated.
	---@param shiftCount number Amounts of bits to shift left by.
	---@return number undefined Return of bitwise lshift operation
	function _G.bit.lshift(value, shiftCount) end
	--- stringstream - shared - libs_sh/bit.lua#L645
	---@param stream string String to set the initial buffer to (default "")
	---@param i number The initial buffer pointer (default 1)
	---@param endian string The endianness of number types. "big" or "little" (default "little")
	---@return StringStream undefined StringStream object
	function _G.bit.stringstream(stream, i, endian) end
	--- sha256 - shared - libs_sh/bit.lua#L726
	---@param s string The string to calculate the checksum of.
	---@return string undefined The SHA-256 hex string of the checksum.
	function _G.bit.sha256(s) end
	--- stringToTable - shared - libs_sh/bit.lua#L671
	---@param s string The serialized string data
	---@return table undefined The deserialized table
	function _G.bit.stringToTable(s) end
	--- sha1 - shared - libs_sh/bit.lua#L737
	---@param s string The string to calculate the checksum of.
	---@return string undefined The SHA-1 hex string of the checksum.
	function _G.bit.sha1(s) end
	--- bor - shared - libs_sh/bit.lua#L583
	---@param value1 number The first value.
	---@param Extra ...number values to be evaluated. (must all be numbers)
	---@return number undefined The bitwise OR result between all numbers.
	function _G.bit.bor(value1, Extra) end
	--- md5 - shared - libs_sh/bit.lua#L715
	---@param s string The string to calculate the checksum of.
	---@return string undefined The MD5 hex string of the checksum.
	function _G.bit.md5(s) end
	--- bswap - shared - libs_sh/bit.lua#L590
	---@param value number The value to be byte swapped.
	---@return number undefined Bit swapped value
	function _G.bit.bswap(value) end
	--- tableToString - shared - libs_sh/bit.lua#L663
	---@param t table The table to serialize
	---@return string undefined Serialized data
	function _G.bit.tableToString(t) end
	--- ror - shared - libs_sh/bit.lua#L617
	---@param value number The value to be manipulated.
	---@param shiftCount number Amounts of bits to rotate right by.
	---@return number undefined Right rotated value
	function _G.bit.ror(value, shiftCount) end
	--- rshift - shared - libs_sh/bit.lua#L624
	---@param value number The value to be manipulated.
	---@param shiftCount number Amounts of bits to shift right by.
	---@return number undefined Right shifted value
	function _G.bit.rshift(value, shiftCount) end
	--- bxor - shared - libs_sh/bit.lua#L596
	---@param value number The value to be manipulated.
	---@param otherValues ...number Values to bit xor with. Optional.
	---@return number undefined Return value of bitwiseXOr operation
	function _G.bit.bxor(value, otherValues) end
	--- tobit - shared - libs_sh/bit.lua#L631
	---@param value number The value to be normalized.
	---@return number undefined Bit swapped value
	function _G.bit.tobit(value) end
	--- tohex - shared - libs_sh/bit.lua#L637
	---@param value number The value to be normalized.
	---@param digits number? The number of digits. Optional. (default 8)
	---@return string undefined Hex string.
	function _G.bit.tohex(value, digits) end
	--- decompress - shared - libs_sh/bit.lua#L690
	---@param s string String to decompress
	---@param maxSize number? Maximum allowed size of decompressed data
	---@return string? undefined Decompressed string, or nil if decompression failed
	function _G.bit.decompress(s, maxSize) end
	--- band - shared - libs_sh/bit.lua#L570
	---@param value number The value to be manipulated.
	---@param otherValues ...number Values bit to perform bitwise "and" with. Optional.
	---@return number undefined Result of bitwise "and" operation.
	function _G.bit.band(value, otherValues) end
--- trace
---  Provides functions for doing line/AABB traces
_G.trace = {}
	--- line - shared - libs_sh/trace.lua#L55
	---@param start Vector Start position
	---@param endpos Vector End position
	---@param filter Entity|table|function|nil Entity/array of entities to filter, or a function callback with an entity argument that returns whether the trace should hit
	---@param mask number? Trace mask
	---@param colgroup number? The collision group of the trace
	---@param ignworld boolean? Whether the trace should ignore world
	---@return table undefined Result of the trace https://wiki.facepunch.com/gmod/Structures/TraceResult
	function _G.trace.line(start, endpos, filter, mask, colgroup, ignworld) end
	--- aimVector - shared - libs_sh/trace.lua#L177
	---@param viewAngles Angle View angles
	---@param viewFOV number View field of view
	---@param x number X position on the screen
	---@param y number Y position on the screen
	---@param screenWidth number Screen width
	---@param screenHeight number Screen height
	---@return Vector undefined The aim vector
	function _G.trace.aimVector(viewAngles, viewFOV, x, y, screenWidth, screenHeight) end
	--- pointContents - shared - libs_sh/trace.lua#L170
	---@param position Vector The position to get the CONTENTS of
	---@return number undefined Contents bitflag, see the CONTENTS enums
	function _G.trace.pointContents(position) end
	--- intersectRayWithOBB - shared - libs_sh/trace.lua#L125
	---@param rayStart Vector The origin of the ray
	---@param rayDelta Vector The direction and length of the ray
	---@param boxOrigin Vector The origin of the box
	---@param boxAngles Angle The box's angles
	---@param boxMins Vector The box min bounding vector
	---@param boxMaxs Vector The box max bounding vector
	---@return Vector? undefined Hit position or nil if not hit
	---@return Vector? undefined Hit normal or nil if not hit
	---@return number? undefined Hit fraction or nil if not hit
	function _G.trace.intersectRayWithOBB(rayStart, rayDelta, boxOrigin, boxAngles, boxMins, boxMaxs) end
	--- intersectRayWithPlane - shared - libs_sh/trace.lua#L140
	---@param rayStart Vector The origin of the ray
	---@param rayDelta Vector The direction and length of the ray
	---@param planeOrigin Vector The origin of the plane
	---@param planeNormal Vector The normal of the plane
	---@return Vector? undefined Hit position or nil if not hit
	function _G.trace.intersectRayWithPlane(rayStart, rayDelta, planeOrigin, planeNormal) end
	--- hull - shared - libs_sh/trace.lua#L87
	---@param start Vector Start position
	---@param endpos Vector End position
	---@param minbox Vector Lower box corner
	---@param maxbox Vector Upper box corner
	---@param filter Entity|table|function|nil Entity/array of entities to filter, or a function callback with an entity argument that returns whether the trace should hit
	---@param mask number? Trace mask
	---@param colgroup number? The collision group of the trace
	---@param ignworld boolean? Whether the trace should ignore world
	---@return table undefined Result of the trace https://wiki.facepunch.com/gmod/Structures/TraceResult
	function _G.trace.hull(start, endpos, minbox, maxbox, filter, mask, colgroup, ignworld) end
	--- decal - shared - libs_sh/trace.lua#L151
	---@param name string The decal name, see https://wiki.facepunch.com/gmod/util.Decal
	---@param start Vector Start position
	---@param endpos Vector End position
	---@param filter Entity|table|nil (Optional) Entity/array of entities to filter
	function _G.trace.decal(name, start, endpos, filter) end
--- navmesh
---  Library for navmesh navigation with the NavArea type
_G.navmesh = {}
--- NAV_MESH - shared
---  ENUMs used by NavArea:getAttributes and NavArea:hasAttributes
_G.navmesh.NAV_MESH = {
	---@type any
	--- The nav area is invalid.
	["INVALID"] = nil,
	---@type any
	--- Must crouch to use this node/area
	["CROUCH"] = nil,
	---@type any
	--- Must jump to traverse this area (only used during generation)
	["JUMP"] = nil,
	---@type any
	--- Do not adjust for obstacles, just move along area
	["PRECISE"] = nil,
	---@type any
	--- Inhibit discontinuity jumping
	["NO_JUMP"] = nil,
	---@type any
	--- Must stop when entering this area
	["STOP"] = nil,
	---@type any
	--- Must run to traverse this area
	["RUN"] = nil,
	---@type any
	--- Must walk to traverse this area
	["WALK"] = nil,
	---@type any
	--- Avoid this area unless alternatives are too dangerous
	["AVOID"] = nil,
	---@type any
	--- Area may become blocked, and should be periodically checked
	["TRANSIENT"] = nil,
	---@type any
	--- Area should not be considered for hiding spot generation
	["DONT_HIDE"] = nil,
	---@type any
	--- Bots hiding in this area should stand
	["STAND"] = nil,
	---@type any
	--- Hostages shouldn't use this area
	["NO_HOSTAGES"] = nil,
	---@type any
	--- This area represents stairs, do not attempt to climb or jump them - just walk up
	["STAIRS"] = nil,
	---@type any
	--- Don't merge this area with adjacent areas
	["NO_MERGE"] = nil,
	---@type any
	--- This nav area is the climb point on the tip of an obstacle
	["OBSTACLE_TOP"] = nil,
	---@type any
	--- This nav area is adjacent to a drop of at least CliffHeight
	["CLIFF"] = nil,
	---@type any
	--- Area has designer specified cost controlled by func_nav_cost entities
	["FUNC_COST"] = nil,
	---@type any
	--- Area is in an elevator's path
	["HAS_ELEVATOR"] = nil,
	---@type any
	--- -2147483648
	["NAV_BLOCKER"] = nil,
}
--- NAV_CORNER - shared
---  ENUMs used by NavArea methods. These Enums correspond to each corner of a CNavArea
_G.navmesh.NAV_CORNER = {
	---@type any
	--- 0
	["NORTH_WEST"] = nil,
	---@type any
	--- 1
	["NORTH_EAST"] = nil,
	---@type any
	--- 2
	["SOUTH_EAST"] = nil,
	---@type any
	--- 3
	["SOUTH_WEST"] = nil,
	---@type any
	--- Represents all corners, only applicable to certain functions, such as NavArea:placeOnGround.
	["NUM_CORNERS"] = nil,
}
--- NAV_DIR - shared
---  NavArea direction ENUMs
_G.navmesh.NAV_DIR = {
	---@type any
	--- 0
	["NORTH"] = nil,
	---@type any
	--- 1
	["SOUTH"] = nil,
	---@type any
	--- 2
	["EAST"] = nil,
	---@type any
	--- 3
	["WEST"] = nil,
}
--- NAV_TRAVERSE_TYPE - shared
---  ENUMs used by NavArea:getParentHow.
_G.navmesh.NAV_TRAVERSE_TYPE = {
	---@type any
	--- 0
	["GO_NORTH"] = nil,
	---@type any
	--- 1
	["GO_EAST"] = nil,
	---@type any
	--- 2
	["GO_SOUTH"] = nil,
	---@type any
	--- 3
	["GO_WEST"] = nil,
	---@type any
	--- 4
	["GO_LADDER_UP"] = nil,
	---@type any
	--- 5
	["GO_LADDER_DOWN"] = nil,
	---@type any
	--- 6
	["GO_JUMP"] = nil,
	---@type any
	--- 7
	["GO_ELEVATOR_UP"] = nil,
	---@type any
	--- 8
	["GO_ELEVATOR_DOWN"] = nil,
}
	--- clearWalkableSeeds - server - libs_sv/navmesh.lua#L108
	function _G.navmesh.clearWalkableSeeds() end
	--- find - server - libs_sv/navmesh.lua#L175
	---@param pos Vector The position to search around
	---@param radius number Radius to search within (max 100000)
	---@param stepdown number Maximum fall distance allowed (max 50000)
	---@param stepup number Maximum jump height allowed (max 50000)
	---@return table undefined A table of immutable `NavArea`s
	function _G.navmesh.find(pos, radius, stepdown, stepup) end
	--- setMarkedArea - server - libs_sv/navmesh.lua#L127
	---@param area NavArea The CNavArea to set as the marked area.
	function _G.navmesh.setMarkedArea(area) end
	--- isLoaded - server - libs_sv/navmesh.lua#L72
	---@return boolean undefined Whether a navmesh has been loaded when loading the map.
	function _G.navmesh.isLoaded() end
	--- save - server - libs_sv/navmesh.lua#L92
	function _G.navmesh.save() end
	--- getNavAreaCount - server - libs_sv/navmesh.lua#L197
	---@return number undefined The highest ID of all nav areas on the map.
	function _G.navmesh.getNavAreaCount() end
	--- reset - server - libs_sv/navmesh.lua#L85
	function _G.navmesh.reset() end
	--- getGetEditCursorPosition - server - libs_sv/navmesh.lua#L233
	---@return Vector undefined The position of the edit cursor.
	function _G.navmesh.getGetEditCursorPosition() end
	--- getNearestNavArea - server - libs_sv/navmesh.lua#L221
	---@param pos Vector The position to look from
	---@param maxDist number Maximum distance from the given position that the function will look for a CNavArea (Default 10000)
	---@param checkLOS boolean If this is set to true then the function will internally do a trace from the starting position to each potential CNavArea with a MASK_NPCSOLID_BRUSHONLY. If the trace fails then the CNavArea is ignored. If this is set to false then the function will find the closest CNavArea through anything, including the world. (Default false)
	---@param checkGround boolean If checkGround is true then this function will internally call navmesh.getNavArea to check if there is a CNavArea directly below the position, and return it if so, before checking anywhere else. (Default true)
	---@return NavArea undefined The closest NavArea found with the given parameters, or a NULL NavArea if one was not found.
	function _G.navmesh.getNearestNavArea(pos, maxDist, checkLOS, checkGround) end
	--- getPlayerSpawnName - server - libs_sv/navmesh.lua#L121
	---@return string undefined The classname of the spawn point entity. By default returns "info_player_start"
	function _G.navmesh.getPlayerSpawnName() end
	--- getMarkedArea - server - libs_sv/navmesh.lua#L115
	---@return NavArea undefined The currently marked NavArea.
	function _G.navmesh.getMarkedArea() end
	--- isGenerating - server - libs_sv/navmesh.lua#L66
	---@return boolean undefined Whether we're generating a nav mesh or not.
	function _G.navmesh.isGenerating() end
	--- getNavAreaByID - server - libs_sv/navmesh.lua#L204
	---@param id number ID of the NavArea to get. Starts with 1.
	---@return NavArea undefined The NavArea with given ID.
	function _G.navmesh.getNavAreaByID(id) end
	--- load - server - libs_sv/navmesh.lua#L78
	function _G.navmesh.load() end
	--- beginGeneration - server - libs_sv/navmesh.lua#L60
	function _G.navmesh.beginGeneration() end
	--- getNavArea - server - libs_sv/navmesh.lua#L212
	---@param pos Vector The position to search for.
	---@param limit number The elevation limit at which the NavArea will be searched.
	---@return NavArea undefined The NavArea.
	function _G.navmesh.getNavArea(pos, limit) end
	--- addWalkableSeed - server - libs_sv/navmesh.lua#L99
	---@param pos Vector The terrain position.
	---@param normal Vector The terrain normal.
	function _G.navmesh.addWalkableSeed(pos, normal) end
	--- setPlayerSpawnName - server - libs_sv/navmesh.lua#L135
	---@param spawnPointClass string The classname of what the player uses to spawn, automatically adds it to the walkable positions during map generation.
	function _G.navmesh.setPlayerSpawnName(spawnPointClass) end
	--- createNavArea - server - libs_sv/navmesh.lua#L143
	---@param corner Vector The first corner of the new NavArea
	---@param opposite_corner Vector The opposite (diagonally) corner of the new NavArea
	---@return NavArea? undefined The new NavArea or nil if we failed for some reason
	function _G.navmesh.createNavArea(corner, opposite_corner) end
	--- getAllNavAreas - server - libs_sv/navmesh.lua#L163
	---@return table undefined A table of all the `NavArea`s on the current map
	function _G.navmesh.getAllNavAreas() end
--- von
---  vON Library
_G.von = {}
	--- serialize - shared - libs_sh/von.lua#L817
	---@param tbl table Table to serialize
	---@param checkRecursive boolean? Enable checking for table recursion (default: false)
	---@return string undefined String encoded from the table
	function _G.von.serialize(tbl, checkRecursive) end
	--- deserialize - shared - libs_sh/von.lua#L808
	---@param str string String to deserialize
	---@return table undefined Table
	function _G.von.deserialize(str) end
--- nextbot
---  Library for spawning NextBots.
_G.nextbot = {}
	--- canSpawn - server - libs_sv/nextbot.lua#L115
	---@return boolean undefined True if user can spawn nextbots, False if not.
	function _G.nextbot.canSpawn() end
	--- create - server - libs_sv/nextbot.lua#L80
	---@param spawnpos Vector The position the nextbot will be spawned at.
	---@param model string The model the nextbot will use.
	---@return NextBot undefined The nextbot.
	function _G.nextbot.create(spawnpos, model) end
	--- remove - server - libs_sv/nextbot.lua#L108
	function _G.nextbot.remove() end
--- particleEffect
---  ParticleEffect library.
_G.particleEffect = {}
	--- attach - client - libs_cl/particle_effect.lua#L62
	---@param entity Entity Entity to attach to
	---@param name string Name of the particle effect
	---@param pattach number PATTACH enum
	---@param options table Table of options
	---@return ParticleEffect undefined ParticleEffect type.
	function _G.particleEffect.attach(entity, name, pattach, options) end
--- convar
---  ConVar library https://wiki.facepunch.com/gmod/ConVar
_G.convar = {}
	--- exists - client - libs_cl/convar.lua#L29
	---@param name string Name of the ConVar
	---@return boolean undefined True if exists
	function _G.convar.exists(name) end
	--- hasFlag - client - libs_cl/convar.lua#L97
	---@param name string Name of the ConVar
	---@param flag number Convar Flag, see https://wiki.facepunch.com/gmod/Enums/FCVAR
	---@return boolean undefined Whether the flag is set
	function _G.convar.hasFlag(name, flag) end
	--- getInt - client - libs_cl/convar.lua#L67
	---@param name string Name of the ConVar
	---@return number undefined The integer value or 0 if converting fails
	function _G.convar.getInt(name) end
	--- getMax - client - libs_cl/convar.lua#L52
	---@param name string Name of the ConVar
	---@return number? undefined The maximum value or nil if not specified
	function _G.convar.getMax(name) end
	--- getString - client - libs_cl/convar.lua#L82
	---@param name string Name of the ConVar
	---@return string undefined Value as a string
	function _G.convar.getString(name) end
	--- getFlags - client - libs_cl/convar.lua#L89
	---@param name string Name of the ConVar
	---@return number undefined Number consisting of flag values
	function _G.convar.getFlags(name) end
	--- getMin - client - libs_cl/convar.lua#L45
	---@param name string Name of the ConVar
	---@return number undefined The minimum value or nil if not specified
	function _G.convar.getMin(name) end
	--- getDefault - client - libs_cl/convar.lua#L38
	---@param name string Name of the ConVar
	---@return string undefined Default value as a string
	function _G.convar.getDefault(name) end
	--- getFloat - client - libs_cl/convar.lua#L75
	---@param name string Name of the ConVar
	---@return number undefined The float value or 0 if converting fails
	function _G.convar.getFloat(name) end
	--- getBool - client - libs_cl/convar.lua#L59
	---@param name string Name of the ConVar
	---@return boolean undefined The boolean value
	function _G.convar.getBool(name) end
--- builtins
---  Built in values. These don't need to be loaded; they are in the default builtins_library.
_G = {}
--- FSASYNC - shared
---  file.asyncRead ENUMs
_G.FSASYNC = {
	---@type any
	["ERR_NOT_MINE"] = nil,
	---@type any
	["ERR_RETRY_LATER"] = nil,
	---@type any
	["ERR_ALIGNMENT"] = nil,
	---@type any
	["ERR_FAILURE"] = nil,
	---@type any
	["ERR_READING"] = nil,
	---@type any
	["ERR_NOMEMORY"] = nil,
	---@type any
	["ERR_UNKNOWNID"] = nil,
	---@type any
	["ERR_FILEOPEN"] = nil,
	---@type any
	["OK"] = nil,
	---@type any
	["STATUS_PENDING"] = nil,
	---@type any
	["STATUS_INPROGRESS"] = nil,
	---@type any
	["STATUS_ABORTED"] = nil,
	---@type any
	["STATUS_UNSERVICED"] = nil,
}
--- TEXT_ALIGN - shared
---  Align enum for drawing text
_G.TEXT_ALIGN = {
	---@type any
	--- Align the text on the left
	["LEFT"] = nil,
	---@type any
	--- Align the text in center
	["CENTER"] = nil,
	---@type any
	--- Align the text on the right
	["RIGHT"] = nil,
	---@type any
	--- Align the text on the top
	["TOP"] = nil,
	---@type any
	--- Align the text on the bottom
	["BOTTOM"] = nil,
}
--- MASK - shared
---  ENUMs used as trace masks in the trace library. These are simply combinations of the CONTENTS enums.
_G.MASK = {
	---@type any
	["OPAQUE_AND_NPCS"] = nil,
	---@type any
	["SOLID"] = nil,
	---@type any
	["OPAQUE"] = nil,
	---@type any
	["PLAYERSOLID_BRUSHONLY"] = nil,
	---@type any
	["BLOCKLOS"] = nil,
	---@type any
	["SHOT_HULL"] = nil,
	---@type any
	["ALL"] = nil,
	---@type any
	["VISIBLE"] = nil,
	---@type any
	["NPCWORLDSTATIC"] = nil,
	---@type any
	["DEADSOLID"] = nil,
	---@type any
	["SPLITAREAPORTAL"] = nil,
	---@type any
	["CURRENT"] = nil,
	---@type any
	["BLOCKLOS_AND_NPCS"] = nil,
	---@type any
	["SHOT"] = nil,
	---@type any
	["NPCSOLID"] = nil,
	---@type any
	["SOLID_BRUSHONLY"] = nil,
	---@type any
	["VISIBLE_AND_NPCS"] = nil,
	---@type any
	["NPCSOLID_BRUSHONLY"] = nil,
	---@type any
	["SHOT_PORTAL"] = nil,
	---@type any
	["WATER"] = nil,
	---@type any
	["PLAYERSOLID"] = nil,
}
--- EF - shared
---  ENUMs of ef for use with hologram:addEffects hologram:removeEffects entity:isEffectActive
_G.EF = {
	---@type any
	["BONEMERGE"] = nil,
	---@type any
	["BONEMERGE_FASTCULL"] = nil,
	---@type any
	["BRIGHTLIGHT"] = nil,
	---@type any
	["DIMLIGHT"] = nil,
	---@type any
	["NOINTERP"] = nil,
	---@type any
	["NOSHADOW"] = nil,
	---@type any
	["NODRAW"] = nil,
	---@type any
	["NORECEIVESHADOW"] = nil,
	---@type any
	["ITEM_BLINK"] = nil,
	---@type any
	["PARENT_ANIMATES"] = nil,
	---@type any
	["FOLLOWBONE"] = nil,
}
--- FVPHYSICS - shared
---  ENUMs of physics object flags
_G.FVPHYSICS = {
	---@type any
	["CONSTRAINT_STATIC"] = nil,
	---@type any
	["DMG_DISSOLVE"] = nil,
	---@type any
	["DMG_SLICE"] = nil,
	---@type any
	["HEAVY_OBJECT"] = nil,
	---@type any
	["MULTIOBJECT_ENTITY"] = nil,
	---@type any
	["NO_IMPACT_DMG"] = nil,
	---@type any
	["NO_NPC_IMPACT_DMG"] = nil,
	---@type any
	["NO_PLAYER_PICKUP"] = nil,
	---@type any
	["NO_SELF_COLLISIONS"] = nil,
	---@type any
	["PART_OF_RAGDOLL"] = nil,
	---@type any
	["PENETRATING"] = nil,
	---@type any
	["PLAYER_HELD"] = nil,
	---@type any
	["WAS_THROWN"] = nil,
}
--- GESTURE_SLOT - shared
---  ENUMs of gesture_slot for use with player:playGesture player:resetGesture
_G.GESTURE_SLOT = {
	---@type any
	["ATTACK_AND_RELOAD"] = nil,
	---@type any
	["GRENADE"] = nil,
	---@type any
	["JUMP"] = nil,
	---@type any
	["SWIM"] = nil,
	---@type any
	["FLINCH"] = nil,
	---@type any
	["VCD"] = nil,
	---@type any
	["CUSTOM"] = nil,
}
--- PATTACH - shared
---  PATTACH enum for particle library
_G.PATTACH = {
	---@type any
	["ABSORIGIN"] = nil,
	---@type any
	["ABSORIGIN_FOLLOW"] = nil,
	---@type any
	["CUSTOMORIGIN"] = nil,
	---@type any
	["POINT"] = nil,
	---@type any
	["POINT_FOLLOW"] = nil,
	---@type any
	["WORLDORIGIN"] = nil,
}
--- RENDERFX - shared
---  ENUMs of entity renderfx to be used with Entity.setRenderFX
_G.RENDERFX = {
	---@type any
	["NONE"] = nil,
	---@type any
	["PULSESLOW"] = nil,
	---@type any
	["PULSEFAST"] = nil,
	---@type any
	["PULSESLOWWIDE"] = nil,
	---@type any
	["PULSEFASTWIDE"] = nil,
	---@type any
	["FADESLOW"] = nil,
	---@type any
	["FADEFAST"] = nil,
	---@type any
	["SOLIDSLOW"] = nil,
	---@type any
	["SOLIDFAST"] = nil,
	---@type any
	["STROBESLOW"] = nil,
	---@type any
	["STROBEFAST"] = nil,
	---@type any
	["STROBEFASTER"] = nil,
	---@type any
	["FLICKERSLOW"] = nil,
	---@type any
	["FLICKERFAST"] = nil,
	---@type any
	["NODISSIPATION"] = nil,
	---@type any
	["DISTORT"] = nil,
	---@type any
	["HOLOGRAM"] = nil,
	---@type any
	["EXPLODE"] = nil,
	---@type any
	["GLOWSHELL"] = nil,
	---@type any
	["CLAMPMINSCALE"] = nil,
	---@type any
	["RAIN"] = nil,
	---@type any
	["SNOW"] = nil,
	---@type any
	["SPOTLIGHT"] = nil,
	---@type any
	["RAGDOLL"] = nil,
	---@type any
	["PULSEFASTWIDER"] = nil,
}
--- SOLID - shared
---  ENUMs of solid for use with entity:getSolid
_G.SOLID = {
	---@type any
	["NONE"] = nil,
	---@type any
	["BSP"] = nil,
	---@type any
	["BBOX"] = nil,
	---@type any
	["OBB"] = nil,
	---@type any
	["OBB_YAW"] = nil,
	---@type any
	["CUSTOM"] = nil,
	---@type any
	["VPHYSICS"] = nil,
}
--- CONTENTS - shared
---  ENUMs used as masks in the trace library.
_G.CONTENTS = {
	---@type any
	["CURRENT_270"] = nil,
	---@type any
	["DETAIL"] = nil,
	---@type any
	["IGNORE_NODRAW_OPAQUE"] = nil,
	---@type any
	["BLOCKLOS"] = nil,
	---@type any
	["GRATE"] = nil,
	---@type any
	["CURRENT_0"] = nil,
	---@type any
	["AREAPORTAL"] = nil,
	---@type any
	["DEBRIS"] = nil,
	---@type any
	["MONSTERCLIP"] = nil,
	---@type any
	["SLIME"] = nil,
	---@type any
	["WINDOW"] = nil,
	---@type any
	["LADDER"] = nil,
	---@type any
	["CURRENT_180"] = nil,
	---@type any
	["TRANSLUCENT"] = nil,
	---@type any
	["EMPTY"] = nil,
	---@type any
	["TEAM2"] = nil,
	---@type any
	["CURRENT_UP"] = nil,
	---@type any
	["TESTFOGVOLUME"] = nil,
	---@type any
	["TEAM1"] = nil,
	---@type any
	["AUX"] = nil,
	---@type any
	["CURRENT_DOWN"] = nil,
	---@type any
	["ORIGIN"] = nil,
	---@type any
	["TEAM3"] = nil,
	---@type any
	["MOVEABLE"] = nil,
	---@type any
	["PLAYERCLIP"] = nil,
	---@type any
	["SOLID"] = nil,
	---@type any
	["TEAM4"] = nil,
	---@type any
	["MONSTER"] = nil,
	---@type any
	["HITBOX"] = nil,
	---@type any
	["CURRENT_90"] = nil,
	---@type any
	["OPAQUE"] = nil,
	---@type any
	["WATER"] = nil,
}
--- MATERIAL_FOG - shared
---  ENUMs of fog modes to use with render.setFogMode.
_G.MATERIAL_FOG = {
	---@type any
	["NONE"] = nil,
	---@type any
	["LINEAR"] = nil,
	---@type any
	["LINEAR_BELOW_FOG_Z"] = nil,
}
--- MAT - shared
---  ENUMs describing surface material. Used in TraceResult
_G.MAT = {
	---@type any
	["ANTLION"] = nil,
	---@type any
	["BLOODYFLESH"] = nil,
	---@type any
	["CONCRETE"] = nil,
	---@type any
	["DIRT"] = nil,
	---@type any
	["EGGSHELL"] = nil,
	---@type any
	["FLESH"] = nil,
	---@type any
	["GRATE"] = nil,
	---@type any
	["ALIENFLESH"] = nil,
	---@type any
	["CLIP"] = nil,
	---@type any
	["SNOW"] = nil,
	---@type any
	["PLASTIC"] = nil,
	---@type any
	["METAL"] = nil,
	---@type any
	["SAND"] = nil,
	---@type any
	["FOLIAGE"] = nil,
	---@type any
	["COMPUTER"] = nil,
	---@type any
	["SLOSH"] = nil,
	---@type any
	["TILE"] = nil,
	---@type any
	["GRASS"] = nil,
	---@type any
	["VENT"] = nil,
	---@type any
	["WOOD"] = nil,
	---@type any
	["DEFAULT"] = nil,
	---@type any
	["GLASS"] = nil,
	---@type any
	["WARPSHIELD"] = nil,
}
--- RENDERMODE - shared
---  ENUMs of entity render modes to be used with Entity.setRenderMode
_G.RENDERMODE = {
	---@type any
	["NORMAL"] = nil,
	---@type any
	["TRANSCOLOR"] = nil,
	---@type any
	["TRANSTEXTURE"] = nil,
	---@type any
	["GLOW"] = nil,
	---@type any
	["TRANSALPHA"] = nil,
	---@type any
	["TRANSADD"] = nil,
	---@type any
	["ENVIROMENTAL"] = nil,
	---@type any
	["TRANSADDFRAMEBLEND"] = nil,
	---@type any
	["TRANSALPHADD"] = nil,
	---@type any
	["WORLDGLOW"] = nil,
	---@type any
	["NONE"] = nil,
}
--- NOTIFY - shared
---  Notification library enums
_G.NOTIFY = {
	---@type any
	["GENERIC"] = nil,
	---@type any
	["ERROR"] = nil,
	---@type any
	["UNDO"] = nil,
	---@type any
	["HINT"] = nil,
	---@type any
	["CLEANUP"] = nil,
}
--- BLENDFUNC - shared
---  ENUMs of blend modes
_G.BLENDFUNC = {
	---@type any
	["ADD"] = nil,
	---@type any
	["SUBTRACT"] = nil,
	---@type any
	["REVERSE_SUBTRACT"] = nil,
	---@type any
	["MIN"] = nil,
	---@type any
	["MAX"] = nil,
}
--- HITGROUP - shared
---  Player and NPC hitgroup ENUMs
_G.HITGROUP = {
	---@type any
	["GENERIC"] = nil,
	---@type any
	["HEAD"] = nil,
	---@type any
	["CHEST"] = nil,
	---@type any
	["STOMACH"] = nil,
	---@type any
	["LEFTARM"] = nil,
	---@type any
	["RIGHTARM"] = nil,
	---@type any
	["LEFTLEG"] = nil,
	---@type any
	["RIGHTLEG"] = nil,
	---@type any
	["GEAR"] = nil,
}
--- BLEND - shared
---  ENUMs of blend functions
_G.BLEND = {
	---@type any
	["ZERO"] = nil,
	---@type any
	["ONE"] = nil,
	---@type any
	["DST_COLOR"] = nil,
	---@type any
	["ONE_MINUS_DST_COLOR"] = nil,
	---@type any
	["SRC_ALPHA"] = nil,
	---@type any
	["ONE_MINUS_SRC_ALPHA"] = nil,
	---@type any
	["DST_ALPHA"] = nil,
	---@type any
	["ONE_MINUS_DST_ALPHA"] = nil,
	---@type any
	["SRC_ALPHA_SATURATE"] = nil,
	---@type any
	["SRC_COLOR"] = nil,
	---@type any
	["ONE_MINUS_SRC_COLOR"] = nil,
}
--- KEY - shared
---  ENUMs of keyboard keys for use with input library
_G.KEY = {
	---@type any
	["FIRST"] = nil,
	---@type any
	["NONE"] = nil,
	---@type any
	["0"] = nil,
	---@type any
	["KEY0"] = nil,
	---@type any
	["1"] = nil,
	---@type any
	["KEY1"] = nil,
	---@type any
	["2"] = nil,
	---@type any
	["KEY2"] = nil,
	---@type any
	["3"] = nil,
	---@type any
	["KEY3"] = nil,
	---@type any
	["4"] = nil,
	---@type any
	["KEY4"] = nil,
	---@type any
	["5"] = nil,
	---@type any
	["KEY5"] = nil,
	---@type any
	["6"] = nil,
	---@type any
	["KEY6"] = nil,
	---@type any
	["7"] = nil,
	---@type any
	["KEY7"] = nil,
	---@type any
	["8"] = nil,
	---@type any
	["KEY8"] = nil,
	---@type any
	["9"] = nil,
	---@type any
	["KEY9"] = nil,
	---@type any
	["A"] = nil,
	---@type any
	["B"] = nil,
	---@type any
	["C"] = nil,
	---@type any
	["D"] = nil,
	---@type any
	["E"] = nil,
	---@type any
	["F"] = nil,
	---@type any
	["G"] = nil,
	---@type any
	["H"] = nil,
	---@type any
	["I"] = nil,
	---@type any
	["J"] = nil,
	---@type any
	["K"] = nil,
	---@type any
	["L"] = nil,
	---@type any
	["M"] = nil,
	---@type any
	["N"] = nil,
	---@type any
	["O"] = nil,
	---@type any
	["P"] = nil,
	---@type any
	["Q"] = nil,
	---@type any
	["R"] = nil,
	---@type any
	["S"] = nil,
	---@type any
	["T"] = nil,
	---@type any
	["U"] = nil,
	---@type any
	["V"] = nil,
	---@type any
	["W"] = nil,
	---@type any
	["X"] = nil,
	---@type any
	["Y"] = nil,
	---@type any
	["Z"] = nil,
	---@type any
	["KP_INS"] = nil,
	---@type any
	["PAD_0"] = nil,
	---@type any
	["KP_END"] = nil,
	---@type any
	["PAD_1"] = nil,
	---@type any
	["KP_DOWNARROW"] = nil,
	---@type any
	["PAD_2"] = nil,
	---@type any
	["KP_PGDN"] = nil,
	---@type any
	["PAD_3"] = nil,
	---@type any
	["KP_LEFTARROW"] = nil,
	---@type any
	["PAD_4"] = nil,
	---@type any
	["KP_5"] = nil,
	---@type any
	["PAD_5"] = nil,
	---@type any
	["KP_RIGHTARROW"] = nil,
	---@type any
	["PAD_6"] = nil,
	---@type any
	["KP_HOME"] = nil,
	---@type any
	["PAD_7"] = nil,
	---@type any
	["KP_UPARROW"] = nil,
	---@type any
	["PAD_8"] = nil,
	---@type any
	["KP_PGUP"] = nil,
	---@type any
	["PAD_9"] = nil,
	---@type any
	["PAD_DIVIDE"] = nil,
	---@type any
	["KP_SLASH"] = nil,
	---@type any
	["KP_MULTIPLY"] = nil,
	---@type any
	["PAD_MULTIPLY"] = nil,
	---@type any
	["KP_MINUS"] = nil,
	---@type any
	["PAD_MINUS"] = nil,
	---@type any
	["KP_PLUS"] = nil,
	---@type any
	["PAD_PLUS"] = nil,
	---@type any
	["KP_ENTER"] = nil,
	---@type any
	["PAD_ENTER"] = nil,
	---@type any
	["KP_DEL"] = nil,
	---@type any
	["PAD_DECIMAL"] = nil,
	---@type any
	["LBRACKET"] = nil,
	---@type any
	["RBRACKET"] = nil,
	---@type any
	["SEMICOLON"] = nil,
	---@type any
	["APOSTROPHE"] = nil,
	---@type any
	["BACKQUOTE"] = nil,
	---@type any
	["COMMA"] = nil,
	---@type any
	["PERIOD"] = nil,
	---@type any
	["SLASH"] = nil,
	---@type any
	["BACKSLASH"] = nil,
	---@type any
	["MINUS"] = nil,
	---@type any
	["EQUAL"] = nil,
	---@type any
	["ENTER"] = nil,
	---@type any
	["SPACE"] = nil,
	---@type any
	["BACKSPACE"] = nil,
	---@type any
	["TAB"] = nil,
	---@type any
	["CAPSLOCK"] = nil,
	---@type any
	["NUMLOCK"] = nil,
	---@type any
	["ESCAPE"] = nil,
	---@type any
	["SCROLLLOCK"] = nil,
	---@type any
	["INS"] = nil,
	---@type any
	["INSERT"] = nil,
	---@type any
	["DEL"] = nil,
	---@type any
	["DELETE"] = nil,
	---@type any
	["HOME"] = nil,
	---@type any
	["END"] = nil,
	---@type any
	["PGUP"] = nil,
	---@type any
	["PAGEUP"] = nil,
	---@type any
	["PGDN"] = nil,
	---@type any
	["PAGEDOWN"] = nil,
	---@type any
	["PAUSE"] = nil,
	---@type any
	["BREAK"] = nil,
	---@type any
	["SHIFT"] = nil,
	---@type any
	["LSHIFT"] = nil,
	---@type any
	["RSHIFT"] = nil,
	---@type any
	["ALT"] = nil,
	---@type any
	["LALT"] = nil,
	---@type any
	["RALT"] = nil,
	---@type any
	["CTRL"] = nil,
	---@type any
	["LCONTROL"] = nil,
	---@type any
	["RCTRL"] = nil,
	---@type any
	["RCONTROL"] = nil,
	---@type any
	["LWIN"] = nil,
	---@type any
	["RWIN"] = nil,
	---@type any
	["APP"] = nil,
	---@type any
	["UPARROW"] = nil,
	---@type any
	["UP"] = nil,
	---@type any
	["LEFTARROW"] = nil,
	---@type any
	["LEFT"] = nil,
	---@type any
	["DOWNARROW"] = nil,
	---@type any
	["DOWN"] = nil,
	---@type any
	["RIGHTARROW"] = nil,
	---@type any
	["RIGHT"] = nil,
	---@type any
	["F1"] = nil,
	---@type any
	["F2"] = nil,
	---@type any
	["F3"] = nil,
	---@type any
	["F4"] = nil,
	---@type any
	["F5"] = nil,
	---@type any
	["F6"] = nil,
	---@type any
	["F7"] = nil,
	---@type any
	["F8"] = nil,
	---@type any
	["F9"] = nil,
	---@type any
	["F10"] = nil,
	---@type any
	["F11"] = nil,
	---@type any
	["F12"] = nil,
	---@type any
	["CAPSLOCKTOGGLE"] = nil,
	---@type any
	["NUMLOCKTOGGLE"] = nil,
	---@type any
	["SCROLLLOCKTOGGLE"] = nil,
	---@type any
	["LAST"] = nil,
	---@type any
	["COUNT"] = nil,
}
--- BOX - shared
---  ENUMs used by render.SetModelLighting
_G.BOX = {
	---@type any
	["FRONT"] = nil,
	---@type any
	["BACK"] = nil,
	---@type any
	["RIGHT"] = nil,
	---@type any
	["LEFT"] = nil,
	---@type any
	["TOP"] = nil,
	---@type any
	["BOTTOM"] = nil,
}
--- STENCIL - shared
---  ENUMs of stencil comparisons and operations
_G.STENCIL = {
	---@type any
	["NEVER"] = nil,
	---@type any
	["LESS"] = nil,
	---@type any
	["EQUAL"] = nil,
	---@type any
	["LESSEQUAL"] = nil,
	---@type any
	["GREATER"] = nil,
	---@type any
	["NOTEQUAL"] = nil,
	---@type any
	["GREATEREQUAL"] = nil,
	---@type any
	["ALWAYS"] = nil,
	---@type any
	["KEEP"] = nil,
	---@type any
	["ZERO"] = nil,
	---@type any
	["REPLACE"] = nil,
	---@type any
	["INCRSAT"] = nil,
	---@type any
	["DECRSAT"] = nil,
	---@type any
	["INVERT"] = nil,
	---@type any
	["INCR"] = nil,
	---@type any
	["DECR"] = nil,
}
--- MOVETYPE - shared
---  ENUMs of entity move types
_G.MOVETYPE = {
	---@type any
	["NONE"] = nil,
	---@type any
	["ISOMETRIC"] = nil,
	---@type any
	["WALK"] = nil,
	---@type any
	["STEP"] = nil,
	---@type any
	["FLY"] = nil,
	---@type any
	["FLYGRAVITY"] = nil,
	---@type any
	["VPHYSICS"] = nil,
	---@type any
	["PUSH"] = nil,
	---@type any
	["NOCLIP"] = nil,
	---@type any
	["LADDER"] = nil,
	---@type any
	["OBSERVER"] = nil,
	---@type any
	["CUSTOM"] = nil,
}
--- IN_KEY - shared
---  ENUMs of in_keys for use with player:keyDown
_G.IN_KEY = {
	---@type any
	["ALT1"] = nil,
	---@type any
	["ALT2"] = nil,
	---@type any
	["ATTACK"] = nil,
	---@type any
	["ATTACK2"] = nil,
	---@type any
	["BACK"] = nil,
	---@type any
	["DUCK"] = nil,
	---@type any
	["FORWARD"] = nil,
	---@type any
	["JUMP"] = nil,
	---@type any
	["LEFT"] = nil,
	---@type any
	["MOVELEFT"] = nil,
	---@type any
	["MOVERIGHT"] = nil,
	---@type any
	["RELOAD"] = nil,
	---@type any
	["RIGHT"] = nil,
	---@type any
	["SCORE"] = nil,
	---@type any
	["SPEED"] = nil,
	---@type any
	["USE"] = nil,
	---@type any
	["WALK"] = nil,
	---@type any
	["ZOOM"] = nil,
	---@type any
	["GRENADE1"] = nil,
	---@type any
	["GRENADE2"] = nil,
	---@type any
	["WEAPON1"] = nil,
	---@type any
	["WEAPON2"] = nil,
	---@type any
	["BULLRUSH"] = nil,
	---@type any
	["CANCEL"] = nil,
	---@type any
	["RUN"] = nil,
}
--- TEXFILTER - shared
---  ENUMs of texture filtering modes
_G.TEXFILTER = {
	---@type any
	["NONE"] = nil,
	---@type any
	["POINT"] = nil,
	---@type any
	["LINEAR"] = nil,
	---@type any
	["ANISOTROPIC"] = nil,
}
--- COLLISION_GROUP - shared
---  ENUMs of collision groups for use with entity:setCollisionGroup
_G.COLLISION_GROUP = {
	---@type any
	["NONE"] = nil,
	---@type any
	["DEBRIS"] = nil,
	---@type any
	["DEBRIS_TRIGGER"] = nil,
	---@type any
	["INTERACTIVE_DEBRIS"] = nil,
	---@type any
	["INTERACTIVE"] = nil,
	---@type any
	["PLAYER"] = nil,
	---@type any
	["BREAKABLE_GLASS"] = nil,
	---@type any
	["VEHICLE"] = nil,
	---@type any
	["PLAYER_MOVEMENT"] = nil,
	---@type any
	["NPC"] = nil,
	---@type any
	["IN_VEHICLE"] = nil,
	---@type any
	["WEAPON"] = nil,
	---@type any
	["VEHICLE_CLIP"] = nil,
	---@type any
	["PROJECTILE"] = nil,
	---@type any
	["DOOR_BLOCKER"] = nil,
	---@type any
	["PASSABLE_DOOR"] = nil,
	---@type any
	["DISSOLVING"] = nil,
	---@type any
	["PUSHAWAY"] = nil,
	---@type any
	["NPC_ACTOR"] = nil,
	---@type any
	["NPC_SCRIPTED"] = nil,
	---@type any
	["WORLD"] = nil,
}
--- MATERIAL - shared
---  ENUMs of mesh types. To be used with mesh.generate.
_G.MATERIAL = {
	---@type any
	["LINES"] = nil,
	---@type any
	["LINE_LOOP"] = nil,
	---@type any
	["LINE_STRIP"] = nil,
	---@type any
	["POINTS"] = nil,
	---@type any
	["POLYGON"] = nil,
	---@type any
	["QUADS"] = nil,
	---@type any
	["TRIANGLES"] = nil,
	---@type any
	["TRIANGLE_STRIP"] = nil,
}
--- MOUSE - shared
---  ENUMs of mouse buttons for use with input library
_G.MOUSE = {
	---@type any
	["MOUSE1"] = nil,
	---@type any
	["LEFT"] = nil,
	---@type any
	["MOUSE2"] = nil,
	---@type any
	["RIGHT"] = nil,
	---@type any
	["MOUSE3"] = nil,
	---@type any
	["MIDDLE"] = nil,
	---@type any
	["MOUSE4"] = nil,
	---@type any
	["4"] = nil,
	---@type any
	["MOUSE5"] = nil,
	---@type any
	["5"] = nil,
	---@type any
	["MWHEELUP"] = nil,
	---@type any
	["WHEEL_UP"] = nil,
	---@type any
	["MWHEELDOWN"] = nil,
	---@type any
	["WHEEL_DOWN"] = nil,
	---@type any
	["COUNT"] = nil,
	---@type any
	["FIRST"] = nil,
	---@type any
	["LAST"] = nil,
}
--- FSOLID - shared
---  ENUMs of solid flags for use with entity:getSolidFlags
_G.FSOLID = {
	---@type any
	["CUSTOMRAYTEST"] = nil,
	---@type any
	["CUSTOMBOXTEST"] = nil,
	---@type any
	["NOT_SOLID"] = nil,
	---@type any
	["TRIGGER"] = nil,
	---@type any
	["NOT_STANDABLE"] = nil,
	---@type any
	["VOLUME_CONTENTS"] = nil,
	---@type any
	["FORCE_WORLD_ALIGNED"] = nil,
	---@type any
	["USE_TRIGGER_BOUNDS"] = nil,
	---@type any
	["ROOT_PARENT_ALIGNED"] = nil,
	---@type any
	["TRIGGER_TOUCH_DEBRIS"] = nil,
}
---  Constant that denotes whether the code is executed on the server
---@type any
_G["SERVER"] = nil
---  Constant that denotes whether the code is executed on the client
---@type any
_G["CLIENT"] = nil
	--- localToWorld - shared - libs_sh/builtins.lua#L1142
	---@param localPos Vector The position vector that should be translated to world coordinates
	---@param localAng Angle The angle that should be converted to a world angle
	---@param originPos Vector The origin point of the source coordinate system, in world coordinates
	---@param originAngle Angle The angles of the source coordinate system, as a world angle
	---@return Vector undefined worldPos
	---@return Angle undefined worldAngles
	function _G.localToWorld(localPos, localAng, originPos, originAngle) end
	--- version - shared - libs_sh/builtins.lua#L261
	---@return string undefined Starfall version
	function _G.version() end
	--- assert - shared - libs_sh/builtins.lua#L1103
	---@param expression any Anything that will be evaluated to be true or false
	---@param msg string? Error message. Default "assertion failed!"
	---@param args ... Any arguments to return if the assertion is successful
	function _G.assert(expression, msg, args) end
	--- tostring - shared - libs_sh/builtins.lua#L96
	---@param obj any Object to turn into a string
	---@return string undefined Object as a string
	function _G.tostring(obj) end
	--- crc - shared - libs_sh/builtins.lua#L206
	---@param stringToHash string The string to calculate the checksum of
	---@return string undefined The unsigned 32 bit checksum as a string
	function _G.crc(stringToHash) end
	--- tonumber - shared - libs_sh/builtins.lua#L103
	---@param obj any Object to turn into a number
	---@return number? undefined The object as a number or nil if it couldn't be converted
	function _G.tonumber(obj) end
	--- throw - shared - libs_sh/builtins.lua#L1086
	---@param msg string Message string
	---@param level number? Which level in the stacktrace to blame. Defaults to 1
	---@param uncatchable boolean? Makes this exception uncatchable
	function _G.throw(msg, level, uncatchable) end
	--- rawget - shared - libs_sh/builtins.lua#L434
	---@param table table The table to get the value from
	---@param key any The index of the table
	---@return any undefined The value of the index
	function _G.rawget(table, key) end
	--- ramUsed - shared - libs_sh/builtins.lua#L243
	---@return number undefined The ram used in kilobytes
	function _G.ramUsed() end
	--- Quaternion - shared - libs_sh/quaternion.lua#L191
	---@param r number? R (real) component
	---@param i number? I component
	---@param j number? J component
	---@param k number? K component
	---@return Quaternion undefined Quaternion object
	function _G.Quaternion(r, i, j, k) end
	--- isFirstTimePredicted - shared - libs_sh/builtins.lua#L223
	---@return boolean undefined Whether this is the first time this hook was predicted
	function _G.isFirstTimePredicted() end
	--- ipairs - shared - libs_sh/builtins.lua#L110
	---@param tbl table Table to iterate over
	---@return function undefined Iterator function
	---@return table undefined Table being iterated over
	---@return number undefined Origin index. Equals 0.
	function _G.ipairs(tbl) end
	--- cpuUsed - shared - libs_sh/builtins.lua#L229
	---@return number undefined Current cpu time used this Think
	function _G.cpuUsed() end
	--- print - shared - libs_sh/builtins.lua#L523
	---@param printArgs ... Values to print. Colors before text will set the text color
	function _G.print(printArgs) end
	--- pcall - shared - libs_sh/builtins.lua#L1008
	---@param func function Function to be executed and of which the errors should be caught of
	---@param arguments ... Arguments to call the function with.
	---@return boolean undefined If the function had no errors occur within it.
	---@return ... undefined If an error occurred, this will be a string containing the error message. Otherwise, this will be the return values of the function passed in.
	function _G.pcall(func, arguments) end
	--- getScript - shared - libs_sh/builtins.lua#L689
	---@param path string Path of file. Can be absolute or relative to calling file. Must be '--@include'-ed.
	---@return string? undefined Source code, or nil if could not be found
	---@return function? undefined Compiled function, or nil if could not be found
	function _G.getScript(path) end
	--- isValid - shared - libs_sh/builtins.lua#L1111
	---@param object any Table to check
	---@return boolean undefined If it is valid
	function _G.isValid(object) end
	--- getScripts - shared - libs_sh/builtins.lua#L702
	---@param ent Entity? Optional target entity. Default: chip()
	---@return table undefined Table where keys are paths and values are strings
	---@return table? undefined Table where keys are paths and values are functions, or nil if another chip was specified
	function _G.getScripts(ent) end
	--- rawset - shared - libs_sh/builtins.lua#L425
	---@param tbl table The table to modify
	---@param key any The index of the table
	---@param value any The value to set the index equal to
	function _G.rawset(tbl, key, value) end
	--- Vector - shared - libs_sh/vectors.lua#L40
	---@param x number? X value
	---@param y number? Y value
	---@param z number? Z value
	---@return Vector undefined Vector
	function _G.Vector(x, y, z) end
	--- setUserdata - server - libs_sh/builtins.lua#L579
	---@param str string String data
	function _G.setUserdata(str) end
	--- setClipboardText - client - libs_sh/builtins.lua#L609
	---@param txt string Text to set to the clipboard
	function _G.setClipboardText(txt) end
	--- cpuAverage - shared - libs_sh/builtins.lua#L237
	---@return number undefined Average CPU Time of the buffer.
	function _G.cpuAverage() end
	--- next - shared - libs_sh/builtins.lua#L137
	---@param tbl table Table to get the next key-value pair of
	---@param k any Previous key (can be nil)
	---@return any undefined Key or nil
	---@return any undefined Value or nil
	function _G.next(tbl, k) end
	--- requiredir - shared - libs_sh/builtins.lua#L748
	---@param path string The directory to include. Make sure to --@includedir it
	---@param loadpriority table Table of files that should be loaded before any others in the directory
	---@return table undefined Table of return values of the scripts
	function _G.requiredir(path, loadpriority) end
	--- sendPermissionRequest - client - libs_sh/builtins.lua#L363
	function _G.sendPermissionRequest() end
	--- setName - client - libs_sh/builtins.lua#L598
	---@param name string Name to set the chip's name to
	function _G.setName(name) end
	--- type - shared - libs_sh/builtins.lua#L128
	---@param obj any Object to get type of
	---@return string undefined The name of the object's type.
	function _G.type(obj) end
	--- eyePos - client - libs_sh/builtins.lua#L674
	---@return Vector undefined The local player's camera position
	function _G.eyePos() end
	--- isnumber - shared - libs_sh/builtins.lua#L163
	---@param x any Input to check
	---@return boolean undefined If the object is a number or not
	function _G.isnumber(x) end
	--- Matrix - shared - libs_sh/vmatrix.lua#L25
	---@param t table|Angle|nil Optional data or rotation angle to initialize the Matrix with.
	---@param v Vector? Optional translation to initialize the Matrix with.
	---@return VMatrix undefined New VMatrix
	function _G.Matrix(t, v) end
	--- permissionRequestSatisfied - client - libs_sh/builtins.lua#L355
	---@return boolean undefined Whether the client gave all permissions specified in last request or not.
	function _G.permissionRequestSatisfied() end
	--- shareScripts - shared - libs_sh/builtins.lua#L726
	---@param enable boolean If true, allow sharing scripts
	function _G.shareScripts(enable) end
	--- ramAverage - shared - libs_sh/builtins.lua#L249
	---@return number undefined The ram used in kilobytes
	function _G.ramAverage() end
	--- xpcall - shared - libs_sh/builtins.lua#L1037
	---@param func function The function to call initially.
	---@param callback function The function to be called if execution of the first fails; the error message and stack trace are passed.
	---@param passArgs ... Varargs to pass to the initial function.
	---@return boolean undefined Status of the execution; true for success, false for failure.
	---@return ... undefined The returns of the first function if execution succeeded, otherwise the return values of the error callback.
	function _G.xpcall(func, callback, passArgs) end
	--- isbool - shared - libs_sh/builtins.lua#L184
	---@param x any Input to check
	---@return boolean undefined If the object is a boolean or not
	function _G.isbool(x) end
	--- class - shared - libs_sh/builtins.lua#L1181
	---@param name string The string name of the class
	---@param super table? The (optional) parent class to inherit from
	function _G.class(name, super) end
	--- enableHud - shared - libs_sh/builtins.lua#L1161
	---@param ply Player The player to enable the hud on. If CLIENT, will be forced to player()
	---@param active boolean Whether hud hooks should be active. true to force on, false to force off.
	function _G.enableHud(ply, active) end
	--- worldToLocal - shared - libs_sh/builtins.lua#L1123
	---@param pos Vector The position that should be translated from the current to the new system
	---@param ang Angle The angles that should be translated from the current to the new system
	---@param newSystemOrigin Vector The origin of the system to translate to
	---@param newSystemAngles Angle The angles of the system to translate to
	---@return Vector undefined localPos
	---@return Angle undefined localAngles
	function _G.worldToLocal(pos, ang, newSystemOrigin, newSystemAngles) end
	--- chip - shared - libs_sh/builtins.lua#L54
	---@return Entity undefined Starfall chip entity
	function _G.chip() end
	--- error - shared - libs_sh/builtins.lua#L1094
	---@param msg string Message string
	---@param level number? Which level in the stacktrace to blame. Defaults to 1. 0 for no stacktrace.
	function _G.error(msg, level) end
	--- dodir - shared - libs_sh/builtins.lua#L807
	---@param path string The directory to include. Make sure to --@includedir it
	---@param loadpriority table Table of files that should be loaded before any others in the directory
	---@return table undefined Table of return values of the scripts
	function _G.dodir(path, loadpriority) end
	--- try - shared - libs_sh/builtins.lua#L1065
	---@param func function Function to execute
	---@param catch function? Optional function to execute in case func fails
	function _G.try(func, catch) end
	--- getMethods - shared - libs_sh/builtins.lua#L928
	---@param sfType string Name of SF type
	---@return table undefined Table of the type's methods which can be edited or iterated
	function _G.getMethods(sfType) end
	--- Color - shared - libs_sh/color.lua#L60
	---@param r number Red or string hexadecimal color
	---@param g number Green
	---@param b number Blue
	---@param a number Alpha
	---@return Color undefined New color
	function _G.Color(r, g, b, a) end
	--- loadstring - shared - libs_sh/builtins.lua#L856
	---@param code string String to compile
	---@param identifier string? Name of compiled function
	---@param env table? Environment of compiled function
	---@return function? undefined Compiled function, or nil if failed to compile
	---@return string? undefined Error string, or nil if successfully compiled
	function _G.loadstring(code, identifier, env) end
	--- getfenv - shared - libs_sh/builtins.lua#L909
	---@param funcOrStackLevel function|number Function or stack level to get the environment of
	---@return table? undefined Environment table (or nil, if restricted)
	function _G.getfenv(funcOrStackLevel) end
	--- Angle - shared - libs_sh/angles.lua#L30
	---@param p number? Pitch
	---@param y number? Yaw
	---@param r number? Roll
	---@return Angle undefined Angle struct
	function _G.Angle(p, y, r) end
	--- concmd - shared - libs_sh/builtins.lua#L568
	---@param cmd string Command to execute
	function _G.concmd(cmd) end
	--- setfenv - shared - libs_sh/builtins.lua#L888
	---@param funcOrStackLevel function|number Function or stack level to set the environment of
	---@param tbl table New environment
	---@return function undefined Function with environment set to tbl
	function _G.setfenv(funcOrStackLevel, tbl) end
	--- eyeVector - client - libs_sh/builtins.lua#L681
	---@return Vector undefined The local player's camera forward vector
	function _G.eyeVector() end
	--- isfunction - shared - libs_sh/builtins.lua#L191
	---@param x any Input to check
	---@return boolean undefined If the object is a function or not
	function _G.isfunction(x) end
	--- pairs - shared - libs_sh/builtins.lua#L119
	---@param tbl table Table to iterate over
	---@return function undefined Iterator function
	---@return table undefined Table being iterated over
	---@return any undefined Nil as current index (for the constructor)
	function _G.pairs(tbl) end
	--- getLibraries - shared - libs_sh/builtins.lua#L419
	---@return table undefined Table where each key is the library name and value is table of the library
	function _G.getLibraries() end
	--- printHud - shared - libs_sh/builtins.lua#L541
	---@param ply Player The target player. If in CLIENT, then ply is the client player and this param is omitted
	---@param printArgs ... Values to print. Colors before text will set the text color
	function _G.printHud(ply, printArgs) end
	--- isstring - shared - libs_sh/builtins.lua#L170
	---@param x any Input to check
	---@return boolean undefined If the object is a string or not
	function _G.isstring(x) end
	--- player - shared - libs_sh/builtins.lua#L66
	---@param num number? UserID to get the player with.
	---@return Player undefined Returns player with given UserID or if none specified then returns either the owner (server) or the local player (client)
	function _G.player(num) end
	--- setSoftQuota - shared - libs_sh/builtins.lua#L298
	---@param quota number The threshold where the soft error will be thrown. Ratio of current cpu to the max cpu usage. 0.5 is 50%
	function _G.setSoftQuota(quota) end
	--- cpuMax - shared - libs_sh/builtins.lua#L291
	---@return number undefined Max SysTime allowed to take for execution of the chip in a Think.
	function _G.cpuMax() end
	--- dofile - shared - libs_sh/builtins.lua#L792
	---@param path string The file path to include. Make sure to --@include it
	---@return ... undefined Return value(s) of the script
	function _G.dofile(path) end
	--- getmetatable - shared - libs_sh/builtins.lua#L198
	---@param tbl table Table to get metatable of
	---@return table undefined The metatable of tbl
	function _G.getmetatable(tbl) end
	--- printTable - shared - libs_sh/builtins.lua#L561
	---@param tbl table Table to print
	function _G.printTable(tbl) end
	--- unpack - shared - libs_sh/builtins.lua#L146
	---@param tbl table Table to get elements out of
	---@param startIndex number? Which index to start from (default 1)
	---@param endIndex number? Which index to end at (default #tbl)
	---@return ... undefined Elements of tbl
	function _G.unpack(tbl, startIndex, endIndex) end
	--- ramMax - shared - libs_sh/builtins.lua#L255
	---@return number undefined The max ram usage in kilobytes
	function _G.ramMax() end
	--- WebSocket - client - libs_cl/websocket.lua#L112
	---@param domain string Domain of the websocket server.
	---@param port number? Port of the websocket server. (Default 443)
	---@param secure boolean? Whether to use secure connection (wss). (Default false)
	---@param path string? Optional path of the websocket.
	---@return WebSocket undefined The websocket object. Use WebSocket:connect() to connect.
	function _G.WebSocket(domain, port, secure, path) end
	--- printConsole - shared - libs_sh/builtins.lua#L532
	---@param printArgs ... Values to print. Colors before text will set the text color
	function _G.printConsole(printArgs) end
	--- istable - shared - libs_sh/builtins.lua#L177
	---@param x any Input to check
	---@return boolean undefined If the object is a table or not
	function _G.istable(x) end
	--- owner - shared - libs_sh/builtins.lua#L60
	---@return Player undefined Owner of the chip
	function _G.owner() end
	--- entity - shared - libs_sh/builtins.lua#L79
	---@param num number Entity index
	---@return Entity undefined Entity at the index
	function _G.entity(num) end
	--- setupPermissionRequest - client - libs_sh/builtins.lua#L322
	---@param perms table Table of overridable permissions' names.
	---@param desc string Description attached to request.
	---@param showOnUse boolean Whether request will popup when player uses chip or linked screen.
	function _G.setupPermissionRequest(perms, desc, showOnUse) end
	--- cpuTotalAverage - shared - libs_sh/builtins.lua#L281
	---@return number undefined Total average CPU Time of all your chips.
	function _G.cpuTotalAverage() end
	--- hasPermission - shared - libs_sh/builtins.lua#L305
	---@param perm string The permission id to check
	---@param obj any Optional object to pass to the permission system.
	---@return boolean undefined Whether the client has granted the specified permission.
	function _G.hasPermission(perm, obj) end
	--- cpuTotalUsed - shared - libs_sh/builtins.lua#L271
	---@return number undefined Total used CPU time of all your chips.
	function _G.cpuTotalUsed() end
	--- setmetatable - shared - libs_sh/builtins.lua#L155
	---@param tbl table The table to set the metatable of
	---@param meta table The metatable to use
	---@return table undefined tbl with metatable set to meta
	function _G.setmetatable(tbl, meta) end
	--- select - shared - libs_sh/builtins.lua#L88
	---@param parameter any 
	---@param vararg ... Args to select from
	---@return any undefined Returns a number or vararg, depending on the select method.
	function _G.select(parameter, vararg) end
	--- Vector2 - server - libs_sv/wire.lua#L163
	---@param x number? X value
	---@param y number? Y value
	---@return Vector2 undefined Vector2
	function _G.Vector2(x, y) end
	--- getUserdata - server - libs_sh/builtins.lua#L591
	---@return string undefined String data
	function _G.getUserdata() end
	--- require - shared - libs_sh/builtins.lua#L732
	---@param path string The file path to include. Make sure to --@include it
	---@return ... undefined Return value(s) of the script
	function _G.require(path) end
	--- eyeAngles - client - libs_sh/builtins.lua#L667
	---@return Angle undefined The local player's camera angles
	function _G.eyeAngles() end
	--- printMessage - client - libs_sh/builtins.lua#L618
	---@param mtype number How the message should be displayed. See http://wiki.facepunch.com/gmod/Enums/HUD
	---@param text string The message text.
	function _G.printMessage(mtype, text) end
--- debug
---  Lua debug library https://wiki.garrysmod.com/page/Category:debug
_G.debug = {}
	--- traceback - shared - libs_sh/builtins.lua#L942
	---@param A thread? thread to get the stack trace of. If nil, this argument will be used as the message and the current thread becomes the target.
	---@param message string? A message to be included at the beginning of the stack trace. Default: ""
	---@param stacklevel number? Which position in the execution stack to start the traceback at. Default: 1
	---@return string undefined A dump of the execution stack.
	function _G.debug.traceback(A, message, stacklevel) end
	--- getlocal - shared - libs_sh/builtins.lua#L985
	---@param funcOrStackLevel function|number Function or stack level to get info about. Defaults to stack level 0.
	---@param index number The index of the local to get
	---@return string undefined The name of the local
	function _G.debug.getlocal(funcOrStackLevel, index) end
	--- getinfo - shared - libs_sh/builtins.lua#L969
	---@param funcOrStackLevel function|number Function or stack level to get info about. Defaults to stack level 0.
	---@param fields string? A string that specifies the information to be retrieved. Defaults to all (flnSu).
	---@return table undefined DebugInfo table
	function _G.debug.getinfo(funcOrStackLevel, fields) end
--- table
---  Lua table library https://wiki.garrysmod.com/page/Category:table
_G.table = {}
	--- maxn - shared - libs_sh/table.lua#L141
	---@param tbl table The table to search
	---@return number undefined The highest numerical key
	function _G.table.maxn(tbl) end
	--- hasValue - shared - libs_sh/table.lua#L87
	---@param tbl table Table to check
	---@param val any Value to search for
	---@return boolean undefined Returns true if the table has that value, false otherwise
	function _G.table.hasValue(tbl, val) end
	--- collapseKeyValue - shared - libs_sh/table.lua#L36
	---@param tbl table The input table
	---@return table undefined Output table
	function _G.table.collapseKeyValue(tbl) end
	--- merge - shared - libs_sh/table.lua#L236
	---@param dest table The table you want the source table to merge with
	---@param source table The table you want to merge with the destination table
	---@return table undefined Destination table
	function _G.table.merge(dest, source) end
	--- isSequential - shared - libs_sh/table.lua#L115
	---@param tbl table Table to check
	---@return boolean undefined True if sequential
	function _G.table.isSequential(tbl) end
	--- inherit - shared - libs_sh/table.lua#L100
	---@param target table Table to copy data to
	---@param base table Table to copy data from
	---@return table undefined The target table
	function _G.table.inherit(target, base) end
	--- reverse - shared - libs_sh/table.lua#L168
	---@param tbl table Table to reverse
	---@return table undefined A reversed copy of the table
	function _G.table.reverse(tbl) end
	--- toString - shared - libs_sh/table.lua#L202
	---@param tbl table The table to iterate over
	---@param displayName string? Optional name for the table
	---@param niceFormatting boolean? Optional, adds new lines and tabs to the string. Defaults to false
	function _G.table.toString(tbl, displayName, niceFormatting) end
	--- sortDesc - shared - libs_sh/table.lua#L196
	---@param tbl table The table to sort in descending order
	---@return table undefined Sorted table
	function _G.table.sortDesc(tbl) end
	--- sort - shared - libs_sh/table.lua#L174
	---@param tbl table The table to sort
	---@param sorter function? If specified, the function will be called with 2 parameters each. Return true in this function if you want the first parameter to come first in the sorted array
	function _G.table.sort(tbl, sorter) end
	--- copyFromTo - shared - libs_sh/table.lua#L51
	---@param source table The table to copy from
	---@param target table The table to write to
	function _G.table.copyFromTo(source, target) end
	--- getKeys - shared - libs_sh/table.lua#L75
	---@param tbl table The table to get keys of
	---@return table undefined Table of keys
	function _G.table.getKeys(tbl) end
	--- add - shared - libs_sh/table.lua#L14
	---@param target table The table to insert the new values into
	---@param source table The table to retrieve the values from
	---@return table undefined The target table
	function _G.table.add(target, source) end
	--- sortByKey - shared - libs_sh/table.lua#L183
	---@param tbl table Table to sort. All values of this table must be of same type
	---@param descending boolean? Optional, should the order be descending? Defaults to false
	function _G.table.sortByKey(tbl, descending) end
	--- insert - shared - libs_sh/table.lua#L107
	---@param tbl table The table to insert the variable into
	---@param pos any The position in the table to insert the variable. If the third argument is not provided, this argument becomes the value to insert at the end of given table
	---@param val any The variable to insert into the table
	---@return number undefined The index the variable was placed at.
	function _G.table.insert(tbl, pos, val) end
	--- keysFromValue - shared - libs_sh/table.lua#L128
	---@param tbl table Table to search
	---@param val any Value to search for
	---@return table undefined Table of keys
	function _G.table.keysFromValue(tbl, val) end
	--- sortByMember - shared - libs_sh/table.lua#L189
	---@param tbl table Table to sort
	---@param member any The key used to identify the member
	---@param ascending boolean? Optional, should be ascending? Defaults to false
	function _G.table.sortByMember(tbl, member, ascending) end
	--- isEmpty - shared - libs_sh/table.lua#L94
	---@param tbl table Table to check
	---@return boolean undefined Returns true if the table contains any value, false otherwise
	function _G.table.isEmpty(tbl) end
	--- copy - shared - libs_sh/table.lua#L209
	---@param tbl table The table to be copied
	---@return table undefined A deep copy of the original table
	function _G.table.copy(tbl) end
	--- forceInsert - shared - libs_sh/table.lua#L68
	---@param tbl table Table to insert value in to. If not supplied, will create a table
	---@param val any Value to insert
	---@return table undefined The supplied or created table
	function _G.table.forceInsert(tbl, val) end
	--- removeByValue - shared - libs_sh/table.lua#L161
	---@param tbl table The table that will be searched
	---@param val any The value to find within the table
	---@return any undefined The key at which the value was found, or false if the value was not found
	function _G.table.removeByValue(tbl, val) end
	--- getWinningKey - shared - libs_sh/table.lua#L81
	---@param tbl table The table to search in
	---@return any undefined Winning key
	function _G.table.getWinningKey(tbl) end
	--- empty - shared - libs_sh/table.lua#L63
	---@param tbl table The table to empty
	function _G.table.empty(tbl) end
	--- address - shared - libs_sh/table.lua#L21
	---@param target table The target to get the address of
	---@return string undefined The table's string address
	function _G.table.address(target) end
	--- lowerKeyNames - shared - libs_sh/table.lua#L135
	---@param tbl table Table to convert
	---@return table undefined New converted table
	function _G.table.lowerKeyNames(tbl) end
	--- remove - shared - libs_sh/table.lua#L154
	---@param tbl table The table to remove the value from
	---@param index number? Optional index of the value to remove. Defaults to #tbl
	---@return any undefined The value that was removed
	function _G.table.remove(tbl, index) end
	--- clearKeys - shared - libs_sh/table.lua#L29
	---@param tbl table The original table to modify
	---@param saveKeys boolean? Optional save the keys within each member table. This will insert a new field __key into each value, and should not be used if the table contains non-table values. Defaults to false
	---@return table undefined Table with integer keys
	function _G.table.clearKeys(tbl, saveKeys) end
	--- random - shared - libs_sh/table.lua#L147
	---@param tbl table The table to choose from
	---@return any undefined A random value from the table
	---@return any undefined The key associated with the random value
	function _G.table.random(tbl) end
	--- count - shared - libs_sh/table.lua#L57
	---@param tbl table The table to count the keys of
	---@return number undefined The number of keyvalue pairs
	function _G.table.count(tbl) end
	--- concat - shared - libs_sh/table.lua#L42
	---@param tbl table The table to concatenate
	---@param concatenator string A seperator to insert between each string
	---@param startPos number? Optional key to start at. Defaults to 1
	---@param endPos number? Optional key to end at. Defaults to #tbl
	---@return string undefined Concatenated string
	function _G.table.concat(tbl, concatenator, startPos, endPos) end
	--- keyFromValue - shared - libs_sh/table.lua#L121
	---@param tbl table Table to search
	---@param val any Value to search for
	---@return any undefined Found key
	function _G.table.keyFromValue(tbl, val) end
--- physenv
---  Physenv functions
_G.physenv = {}
	--- getAirDensity - shared - libs_sh/physenv.lua#L15
	---@return number undefined Air Density
	function _G.physenv.getAirDensity() end
	--- getPerformanceSettings - shared - libs_sh/physenv.lua#L27
	---@return table undefined Performance Settings Table.
	function _G.physenv.getPerformanceSettings() end
	--- getGravity - shared - libs_sh/physenv.lua#L21
	---@return Vector undefined Gravity Vector ( eg Vector(0,0,-600) )
	function _G.physenv.getGravity() end
--- mesh
---  Mesh library.
_G.mesh = {}
	--- generate - client - libs_sh/mesh.lua#L1003
	---@param mesh_obj Mesh? Optional Mesh object, mesh to build. (default: nil)
	---@param prim_type number Int, primitive type, see MATERIAL
	---@param prim_count number Int, the amount of primitives
	---@param func function The function provided that will generate the mesh vertices
	function _G.mesh.generate(mesh_obj, prim_type, prim_count, func) end
	--- parseObj - shared - libs_sh/mesh.lua#L705
	---@param obj string The obj data
	---@param threaded boolean? Optional bool, use threading object that can be used to load the mesh over time to prevent hitting quota limit
	---@param triangulate boolean? Whether to triangulate the faces
	---@return table undefined Table of Mesh tables. The keys correspond to the objs object names, and the values are tables of vertices that can be passed to mesh.createFromTable
	---@return table undefined Table of Mesh data. {positions = positionData, normals = normalData, texturecoords = texturecoordData, faces = faceData}
	function _G.mesh.parseObj(obj, threaded, triangulate) end
	--- writeNormal - client - libs_sh/mesh.lua#L1063
	---@param normal Vector Normal
	function _G.mesh.writeNormal(normal) end
	--- writeUV - client - libs_sh/mesh.lua#L1077
	---@param stage number Stage of the texture coordinate
	---@param u number U coordinate
	---@param v number V coordinate
	function _G.mesh.writeUV(stage, u, v) end
	--- getModelMeshes - client - libs_sh/mesh.lua#L941
	---@param model string The full path to a model to get the visual meshes of.
	---@param lod number? The lod of the model to use. Default 0.
	---@param bodygroupMask number? The bodygroupMask of the model to use. Default 0.
	---@return table undefined A table of tables with the following format:  string material - The material of the specific mesh table triangles - A table of MeshVertex structures ready to be fed into IMesh:BuildFromTriangles table verticies - A table of MeshVertex structures representing all the vertexes of the mesh. This table is used internally to generate the "triangles" table. Each MeshVertex structure returned also has an extra table of tables field called "weights" with the following data:  number boneID - The bone this vertex is attached to number weight - How "strong" this vertex is attached to the bone. A vertex can be attached to multiple bones at once.
	---@return table undefined A table of tables with bone id keys with the following format:  number parent - The parent bone id Matrix matrix - pretransformed bone matrix
	function _G.mesh.getModelMeshes(model, lod, bodygroupMask) end
	--- trianglesLeft - client - libs_sh/mesh.lua#L977
	---@return number undefined Number of triangles that can be created
	function _G.mesh.trianglesLeft() end
	--- writeColor - client - libs_sh/mesh.lua#L1053
	---@param r number Number, red value
	---@param g number Number, green value
	---@param b number Number, blue value
	---@param a number Number, alpha value
	function _G.mesh.writeColor(r, g, b, a) end
	--- writePosition - client - libs_sh/mesh.lua#L1070
	---@param position Vector Position
	function _G.mesh.writePosition(position) end
	--- trianglesLeftRender - client - libs_sh/mesh.lua#L984
	---@return number undefined Number of triangles that can be rendered
	function _G.mesh.trianglesLeftRender() end
	--- createFromObj - client - libs_sh/mesh.lua#L885
	---@param obj string The obj file data
	---@param threaded boolean? Optional bool, use threading object that can be used to load the mesh over time to prevent hitting quota limit
	---@param triangulate boolean? Whether to triangulate faces. (Consumes more CPU)
	---@return table undefined Table of Mesh objects. The keys correspond to the objs object names
	function _G.mesh.createFromObj(obj, threaded, triangulate) end
	--- generateNormals - shared - libs_sh/mesh.lua#L719
	---@param vertices table The table of vertices
	---@param inverted boolean? Optional bool, invert the normal
	---@param smooth_limit number? Optional number, smooths the normal based on the limit in radians
	function _G.mesh.generateNormals(vertices, inverted, smooth_limit) end
	--- advanceVertex - client - libs_sh/mesh.lua#L1116
	function _G.mesh.advanceVertex() end
	--- writeQuadEasy - client - libs_sh/mesh.lua#L1106
	---@param position Vector 
	---@param normal Vector 
	---@param w number 
	---@param h number 
	function _G.mesh.writeQuadEasy(position, normal, w, h) end
	--- writeQuad - client - libs_sh/mesh.lua#L1096
	---@param v1 Vector Vertex1 position
	---@param v2 Vector Vertex2 position
	---@param v3 Vector Vertex3 position
	---@param v4 Vector Vertex4 position
	function _G.mesh.writeQuad(v1, v2, v3, v4) end
	--- generateTangents - shared - libs_sh/mesh.lua#L745
	---@param vertices table The table of vertices
	function _G.mesh.generateTangents(vertices) end
	--- generateUV - shared - libs_sh/mesh.lua#L733
	---@param vertices table The table of vertices
	---@param scale number The scale of the uvs
	function _G.mesh.generateUV(vertices, scale) end
	--- createEmpty - client - libs_sh/mesh.lua#L914
	---@return Mesh undefined Mesh object
	function _G.mesh.createEmpty() end
	--- createFromTable - client - libs_sh/mesh.lua#L844
	---@param vertices table Table containing vertex data. http://wiki.facepunch.com/gmod/Structures/MeshVertex
	---@param threaded boolean? Optional bool, use threading object that can be used to load the mesh over time to prevent hitting quota limit. The thread will yield with number of vertices remaining to be processed. After 0 is yielded, the final expensive phase starts.
	---@return Mesh undefined Mesh object
	function _G.mesh.createFromTable(vertices, threaded) end
	--- findConvexHull - shared - libs_sh/mesh.lua#L755
	---@param vertices table The table of vertices (vectors) or vertex data (http://wiki.facepunch.com/gmod/Structures/MeshVertex)
	---@param threaded boolean? Optional bool, use threading object that can be used to run algorithm over time to prevent hitting quota limit
	---@return table undefined The mesh table which can be passed to mesh.createFromTable
	---@return table undefined The table of vertices which can be passed to prop.createCustom
	function _G.mesh.findConvexHull(vertices, threaded) end
	--- writeUserData - client - libs_sh/mesh.lua#L1086
	---@param x number x
	---@param y number y
	---@param z number z
	---@param handedness number 
	function _G.mesh.writeUserData(x, y, z, handedness) end
--- input
---  Input library.
_G.input = {}
	--- isControlLocked - client - libs_sh/input.lua#L362
	---@return boolean undefined Whether the player's control is locked
	function _G.input.isControlLocked() end
	--- isKeyDown - client - libs_sh/input.lua#L229
	---@param key number The key id, see input
	---@return boolean undefined True if the key is down
	function _G.input.isKeyDown(key) end
	--- getCursorPos - client - libs_sh/input.lua#L284
	---@return number undefined The x position of the mouse
	---@return number undefined The y position of the mouse
	function _G.input.getCursorPos() end
	--- enableCursor - client - libs_sh/input.lua#L315
	---@param enabled boolean Whether or not the cursor should be enabled
	function _G.input.enableCursor(enabled) end
	--- lookupKeyBinding - client - libs_sh/input.lua#L219
	---@param key number The key id, see input
	---@return string undefined The command bound to the key
	function _G.input.lookupKeyBinding(key) end
	--- lockControls - client - libs_sh/input.lua#L340
	---@param enabled boolean Whether to lock or unlock the controls
	function _G.input.lockControls(enabled) end
	--- screenToVector - client - libs_sh/input.lua#L303
	---@param x number X coordinate on the screen
	---@param y number Y coordinate on the screen
	---@return Vector undefined Aim vector
	function _G.input.screenToVector(x, y) end
	--- getKeyName - client - libs_sh/input.lua#L254
	---@param key number The key id, see input
	---@return string undefined The name of the key
	function _G.input.getKeyName(key) end
	--- isShiftDown - client - libs_sh/input.lua#L266
	---@return boolean undefined True if the shift key is down
	function _G.input.isShiftDown() end
	--- getCursorVisible - client - libs_sh/input.lua#L294
	---@return boolean undefined The cursor's visibility
	function _G.input.getCursorVisible() end
	--- canLockControls - client - libs_sh/input.lua#L369
	---@return boolean undefined Whether the player's control can be locked
	function _G.input.canLockControls() end
	--- isMouseDown - client - libs_sh/input.lua#L242
	---@param key number The mouse button id, see input
	---@return boolean undefined True if the key is down
	function _G.input.isMouseDown(key) end
	--- selectWeapon - client - libs_sh/input.lua#L330
	---@param weapon Weapon The weapon entity to select
	function _G.input.selectWeapon(weapon) end
	--- isControlDown - client - libs_sh/input.lua#L275
	---@return boolean undefined True if the control key is down
	function _G.input.isControlDown() end
	--- lookupBinding - client - libs_sh/input.lua#L201
	---@param binding string The name of the bind
	---@return number undefined The id of the first key bound
	---@return string undefined The name of the first key bound
	function _G.input.lookupBinding(binding) end
--- find
---  Find library. Finds entities in various shapes.
_G.find = {}
	--- byName - shared - libs_sh/find.lua#L119
	---@param name string The targetname
	---@param filter function? Optional function to filter results
	---@return table undefined An array of found entities
	function _G.find.byName(name, filter) end
	--- inSphere - shared - libs_sh/find.lua#L56
	---@param center Vector Center of the sphere
	---@param radius number Sphere radius
	---@param filter function? Optional function to filter results
	---@return table undefined An array of found entities
	function _G.find.inSphere(center, radius, filter) end
	--- inRay - shared - libs_sh/find.lua#L87
	---@param startpos Vector The ray start
	---@param endpos Vector The ray end
	---@param mins Vector? If not nil, will define a lower bound of the ray's hull
	---@param maxs Vector? If not nil, will define a upper bound of the ray's hull
	---@param filter function? Optional function to filter results
	---@return table undefined An array of found entities
	function _G.find.inRay(startpos, endpos, mins, maxs, filter) end
	--- inCone - shared - libs_sh/find.lua#L70
	---@param pos Vector The cone vertex position
	---@param dir Vector The direction to project the cone
	---@param distance number The length to project the cone
	---@param radius number The cosine of angle of the cone. 1 makes a 0° cone, 0.707 makes approximately 90°, 0 makes 180°, and so on.
	---@param filter function? Optional function to filter results
	---@return table undefined An array of found entities
	function _G.find.inCone(pos, dir, distance, radius, filter) end
	--- inPVS - server - libs_sh/find.lua#L142
	---@param pos Vector Vector view point
	---@param filter function? Optional function to filter results
	---@return table undefined An array of found entities
	function _G.find.inPVS(pos, filter) end
	--- inBox - shared - libs_sh/find.lua#L43
	---@param min Vector Bottom corner
	---@param max Vector Top corner
	---@param filter function? Optional function to filter results
	---@return table undefined An array of found entities
	function _G.find.inBox(min, max, filter) end
	--- sortByClosest - shared - libs_sh/find.lua#L191
	---@param ents table The array of entities
	---@param pos Vector The position
	---@param furthest boolean Whether to have the further entities first
	---@return table undefined A table of the closest entities
	function _G.find.sortByClosest(ents, pos, furthest) end
	--- closest - shared - libs_sh/find.lua#L172
	---@param ents table The array of entities
	---@param pos Vector The position
	---@return Entity undefined The closest entity
	function _G.find.closest(ents, pos) end
	--- all - shared - libs_sh/find.lua#L163
	---@param filter function? Optional function to filter results
	---@return table undefined An array of found entities
	function _G.find.all(filter) end
	--- byClass - shared - libs_sh/find.lua#L108
	---@param class string The class name
	---@param filter function? Optional function to filter results
	---@return table undefined An array of found entities
	function _G.find.byClass(class, filter) end
	--- byModel - shared - libs_sh/find.lua#L130
	---@param model string The model file
	---@param filter function? Optional function to filter results
	---@return table undefined An array of found entities
	function _G.find.byModel(model, filter) end
	--- allPlayers - shared - libs_sh/find.lua#L154
	---@param filter function? Optional function to filter results
	---@return table undefined An array of found entities
	function _G.find.allPlayers(filter) end
	--- playersByName - shared - libs_sh/find.lua#L215
	---@param name string Name to search for
	---@param casesensitive boolean? Boolean should the match be case sensitive?
	---@param exact boolean? Boolean should the name match exactly
	---@return table undefined Table of found players
	function _G.find.playersByName(name, casesensitive, exact) end
--- timer
---  Deals with time and timers.
_G.timer = {}
	--- exists - shared - libs_sh/timer.lua#L133
	---@param name string The timer name
	---@return boolean undefined if the timer exists
	function _G.timer.exists(name) end
	--- toggle - shared - libs_sh/timer.lua#L198
	---@param name string The timer name
	---@return boolean undefined Status of the timer.
	function _G.timer.toggle(name) end
	--- create - shared - libs_sh/timer.lua#L97
	---@param name string The timer name
	---@param delay number The time, in seconds, to set the timer to.
	---@param reps number The repetitions of the timer. 0 = infinite
	---@param func function The function to call when the timer is fired
	function _G.timer.create(name, delay, reps, func) end
	--- getTimersLeft - shared - libs_sh/timer.lua#L225
	---@return number undefined Number of available timers
	function _G.timer.getTimersLeft() end
	--- start - shared - libs_sh/timer.lua#L149
	---@param name string The timer name
	---@return boolean undefined True if the timer exists, false if it doesn't.
	function _G.timer.start(name) end
	--- timeleft - shared - libs_sh/timer.lua#L207
	---@param name string The timer name
	---@return number undefined The amount of time left (in seconds). If the timer is paused, the amount will be negative. Nil if timer doesnt exist
	function _G.timer.timeleft(name) end
	--- frametime - shared - libs_sh/timer.lua#L51
	---@return number undefined The time between frames / ticks depending on realm
	function _G.timer.frametime() end
	--- adjust - shared - libs_sh/timer.lua#L158
	---@param name string The timer name
	---@param delay number The time, in seconds, to set the timer to.
	---@param reps number? (Optional) The repetitions of the timer. 0 = infinite, nil = 1
	---@param func function? (Optional) The function to call when the timer is fired
	---@return boolean undefined True if succeeded
	function _G.timer.adjust(name, delay, reps, func) end
	--- pause - shared - libs_sh/timer.lua#L180
	---@param name string The timer name
	---@return boolean undefined false if the timer didn't exist or was already paused, true otherwise.
	function _G.timer.pause(name) end
	--- systime - shared - libs_sh/timer.lua#L45
	---@return number undefined The time in seconds since start up
	function _G.timer.systime() end
	--- repsleft - shared - libs_sh/timer.lua#L216
	---@param name string The timer name
	---@return number undefined The amount of executions left. Nil if timer doesnt exist
	function _G.timer.repsleft(name) end
	--- remove - shared - libs_sh/timer.lua#L120
	---@param name string The timer name
	function _G.timer.remove(name) end
	--- realtime - shared - libs_sh/timer.lua#L38
	---@return number undefined Realtime in seconds
	function _G.timer.realtime() end
	--- stop - shared - libs_sh/timer.lua#L141
	---@param name string The timer name
	---@return boolean undefined False if the timer didn't exist or was already stopped, true otherwise.
	function _G.timer.stop(name) end
	--- curtime - shared - libs_sh/timer.lua#L31
	---@return number undefined Curtime in seconds
	function _G.timer.curtime() end
	--- simple - shared - libs_sh/timer.lua#L111
	---@param delay number The time, in second, to set the timer to
	---@param func function The function to call when the timer is fired
	function _G.timer.simple(delay, func) end
	--- unpause - shared - libs_sh/timer.lua#L189
	---@param name string The timer name
	---@return boolean undefined false if the timer didn't exist or was already running, true otherwise.
	function _G.timer.unpause(name) end
--- light
---  Light library.
_G.light = {}
	--- create - client - libs_cl/light.lua#L107
	---@param pos Vector The position of the light
	---@param size number The size of the light. Must be lower than sf_light_maxsize
	---@param brightness number The brightness of the light
	---@param color Color The color of the light
	---@return Light undefined Dynamic light
	function _G.light.create(pos, size, brightness, color) end
--- effect
---  Effects library.
_G.effect = {}
	--- canCreate - shared - libs_sh/effect.lua#L57
	---@return boolean undefined If an effect can be played
	function _G.effect.canCreate() end
	--- create - shared - libs_sh/effect.lua#L45
	---@return Effect undefined Effect Object
	function _G.effect.create() end
	--- effectsLeft - shared - libs_sh/effect.lua#L51
	---@return number undefined Number of effects able to be created
	function _G.effect.effectsLeft() end
--- net
---  Net message library. Used for sending data from the server to the client and back
_G.net = {}
	--- readVector - shared - libs_sh/net.lua#L407
	---@return Vector undefined The vector that was read
	function _G.net.readVector() end
	--- writeUInt - shared - libs_sh/net.lua#L285
	---@param t number The integer to be written
	---@param n number The amount of bits the integer consists of. Should not be greater than 32
	function _G.net.writeUInt(t, n) end
	--- send - shared - libs_sh/net.lua#L79
	---@param target Entity|table|nil Optional target location to send the net message. Entity or table of targets. If nil, sends to server on client
	---@param unreliable boolean? Optional choose whether it's more important for the message to actually reach its destination (false) or reach it as fast as possible (true).
	function _G.net.send(target, unreliable) end
	--- readInt - shared - libs_sh/net.lua#L276
	---@param n number The amount of bits to read
	---@return number undefined The integer that was read
	function _G.net.readInt(n) end
	--- readString - shared - libs_sh/net.lua#L184
	---@return string undefined The string that was read
	function _G.net.readString() end
	--- readMatrix - shared - libs_sh/net.lua#L425
	---@return VMatrix undefined The matrix that was read
	function _G.net.readMatrix() end
	--- writeDouble - shared - libs_sh/net.lua#L344
	---@param t number The double to be written
	function _G.net.writeDouble(t) end
	--- readTable - shared - libs_sh/net.lua#L165
	---@return table undefined The table
	function _G.net.readTable() end
	--- readBool - shared - libs_sh/net.lua#L337
	---@return boolean undefined The boolean that was read.
	function _G.net.readBool() end
	--- writeData - shared - libs_sh/net.lua#L191
	---@param t string The string to be written
	---@param n number How much of the string to write
	function _G.net.writeData(t, n) end
	--- readUInt - shared - libs_sh/net.lua#L299
	---@param n number The amount of bits to read
	---@return number undefined The unsigned integer that was read
	function _G.net.readUInt(n) end
	--- readData - shared - libs_sh/net.lua#L205
	---@param n number How many characters are in the data
	---@return string undefined The string that was read
	function _G.net.readData(n) end
	--- writeTable - shared - libs_sh/net.lua#L153
	---@param v table The table to write
	function _G.net.writeTable(v) end
	--- getStreamProgress - shared - libs_sh/net.lua#L254
	---@return number undefined The progress ratio 0-1
	function _G.net.getStreamProgress() end
	--- readDouble - shared - libs_sh/net.lua#L355
	---@return number undefined The double that was read
	function _G.net.readDouble() end
	--- getBitsLeft - shared - libs_sh/net.lua#L490
	---@return number undefined Number of bits that can be sent
	function _G.net.getBitsLeft() end
	--- writeString - shared - libs_sh/net.lua#L173
	---@param t string The string to be written
	function _G.net.writeString(t) end
	--- readBit - shared - libs_sh/net.lua#L319
	---@return number undefined The bit that was read. (0 for false, 1 for true)
	function _G.net.readBit() end
	--- writeEntity - shared - libs_sh/net.lua#L449
	---@param t Entity The entity to be written
	function _G.net.writeEntity(t) end
	--- writeInt - shared - libs_sh/net.lua#L262
	---@param t number The integer to be written
	---@param n number The amount of bits the integer consists of
	function _G.net.writeInt(t, n) end
	--- writeFloat - shared - libs_sh/net.lua#L362
	---@param t number The float to be written
	function _G.net.writeFloat(t) end
	--- writeVector - shared - libs_sh/net.lua#L397
	---@param t Vector The vector to be written
	function _G.net.writeVector(t) end
	--- readType - shared - libs_sh/net.lua#L145
	---@return any undefined The object
	function _G.net.readType() end
	--- start - shared - libs_sh/net.lua#L65
	---@param name string The message name
	function _G.net.start(name) end
	--- readAngle - shared - libs_sh/net.lua#L390
	---@return Angle undefined The angle that was read
	function _G.net.readAngle() end
	--- cancelStream - shared - libs_sh/net.lua#L247
	function _G.net.cancelStream() end
	--- readFloat - shared - libs_sh/net.lua#L373
	---@return number undefined The float that was read
	function _G.net.readFloat() end
	--- getBytesLeft - shared - libs_sh/net.lua#L484
	---@return number undefined Number of bytes that can be sent
	function _G.net.getBytesLeft() end
	--- receive - shared - libs_sh/net.lua#L474
	---@param name string The name of the net message
	---@param func function The callback or nil to remove callback. (len - length of the net message, ply - player that sent it or nil if clientside)
	function _G.net.receive(name, func) end
	--- readEntity - shared - libs_sh/net.lua#L457
	---@param callback function? (Client only) optional callback to be ran whenever the entity becomes valid; returns nothing if this is used. The callback passes the entity if it succeeds or nil if it fails.
	---@return Entity undefined The entity that was read
	function _G.net.readEntity(callback) end
	--- readColor - shared - libs_sh/net.lua#L442
	---@return Color undefined The color that was read
	function _G.net.readColor() end
	--- writeAngle - shared - libs_sh/net.lua#L380
	---@param t Angle The angle to be written
	function _G.net.writeAngle(t) end
	--- writeStream - shared - libs_sh/net.lua#L215
	---@param str string The string to be written
	---@param compress boolean? Compress the data. True by default
	function _G.net.writeStream(str, compress) end
	--- writeColor - shared - libs_sh/net.lua#L434
	---@param t Color The color to be written
	function _G.net.writeColor(t) end
	--- readStream - shared - libs_sh/net.lua#L226
	---@param cb function Callback to run when the stream is finished. The first parameter in the callback is the data. Will be nil if transfer fails or is cancelled
	function _G.net.readStream(cb) end
	--- writeBit - shared - libs_sh/net.lua#L308
	---@param t number The bit to be written. (0 for false, 1 (or anything) for true)
	function _G.net.writeBit(t) end
	--- isStreaming - shared - libs_sh/net.lua#L496
	---@return boolean undefined Whether we're currently reading data from a stream
	function _G.net.isStreaming() end
	--- writeType - shared - libs_sh/net.lua#L134
	---@param v any The object to write
	function _G.net.writeType(v) end
	--- writeBool - shared - libs_sh/net.lua#L326
	---@param t boolean The bit to be written.
	function _G.net.writeBool(t) end
	--- writeMatrix - shared - libs_sh/net.lua#L414
	---@param t VMatrix The matrix to be written
	function _G.net.writeMatrix(t) end
--- hologram
---  Library for creating and manipulating physics-less models AKA "Holograms".
_G.hologram = {}
	--- removeAll - shared - libs_sh/hologram.lua#L477
	function _G.hologram.removeAll() end
	--- canSpawn - shared - libs_sh/hologram.lua#L156
	---@return boolean undefined True if user can spawn holograms, False if not.
	function _G.hologram.canSpawn() end
	--- create - shared - libs_sh/hologram.lua#L96
	---@param pos Vector The position to create the hologram
	---@param ang Angle The angle to create the hologram
	---@param model string The model to give the hologram
	---@param scale Vector? (Optional) The scale to give the hologram
	---@return Hologram undefined The hologram object
	function _G.hologram.create(pos, ang, model, scale) end
	--- hologramsLeft - shared - libs_sh/hologram.lua#L163
	---@return number undefined Number of holograms able to be spawned
	function _G.hologram.hologramsLeft() end
--- prop
---  Library for creating and manipulating physics-less models AKA "Props".
_G.prop = {}
--- SENT_Data_Structures - server
--- 
---  
--- 
---  > gmod_balloon
--- 
---  number b = 255
--- 
---  number force
--- 
---  number g = 255
--- 
---  string Model = "models/maxofs2d/balloon_classic.mdl"
--- 
---  number r = 255
--- 
---  
--- 
---  > gmod_button
--- 
---  string description = ""
--- 
---  number key
--- 
---  string Model = "models/maxofs2d/button_05.mdl"
--- 
---  boolean toggle = true
--- 
---  
--- 
---  > gmod_cameraprop
--- 
---  number controlkey
--- 
---  boolean locked = false
--- 
---  string Model = "models/dav0r/camera.mdl"
--- 
---  boolean toggle = true
--- 
---  
--- 
---  > gmod_dynamite
--- 
---  number Damage = 200
--- 
---  number delay = 0
--- 
---  number key
--- 
---  string Model = "models/dav0r/tnt/tnt.mdl"
--- 
---  boolean remove = false
--- 
---  
--- 
---  > gmod_emitter
--- 
---  number delay = 0
--- 
---  string effect
--- 
---  number key
--- 
---  string Model = "models/props_lab/tpplug.mdl"
--- 
---  number scale = 1
--- 
---  boolean starton = false
--- 
---  boolean toggle = true
--- 
---  
--- 
---  > gmod_hoverball
--- 
---  number key_d = -1
--- 
---  number key_u = -1
--- 
---  string Model = "models/dav0r/hoverball.mdl"
--- 
---  number resistance = 0
--- 
---  number speed = 1
--- 
---  number strength = 1
--- 
---  
--- 
---  > gmod_lamp
--- 
---  number b = 255
--- 
---  number brightness = 4
--- 
---  number distance = 1024
--- 
---  number fov = 90
--- 
---  number g = 255
--- 
---  number KeyDown = -1
--- 
---  string Model = "models/lamps/torch.mdl"
--- 
---  boolean on = false
--- 
---  number r = 255
--- 
---  string Texture = "effects/flashlight001"
--- 
---  boolean toggle = true
--- 
---  
--- 
---  > gmod_light
--- 
---  number Brightness = 2
--- 
---  number KeyDown = -1
--- 
---  number lightb = 255
--- 
---  number lightg = 255
--- 
---  number lightr = 255
--- 
---  string Model = "models/maxofs2d/light_tubular.mdl"
--- 
---  boolean on = false
--- 
---  number Size = 256
--- 
---  boolean toggle = true
--- 
---  
--- 
---  > gmod_thruster
--- 
---  boolean damageable = false
--- 
---  string effect = "fire"
--- 
---  number force = 1500
--- 
---  number key = -1
--- 
---  number key_bck = -1
--- 
---  string Model = "models/props_phx2/garbage_metalcan001a.mdl"
--- 
---  string soundname = "PhysicsCannister.ThrusterLoop"
--- 
---  boolean toggle = false
--- 
---  
--- 
---  > gmod_wire_addressbus
--- 
---  number Mem1st = 0
--- 
---  number Mem1sz = 0
--- 
---  number Mem2st = 0
--- 
---  number Mem2sz = 0
--- 
---  number Mem3st = 0
--- 
---  number Mem3sz = 0
--- 
---  number Mem4st = 0
--- 
---  number Mem4sz = 0
--- 
---  string Model = "models/jaanus/wiretool/wiretool_gate.mdl"
--- 
---  
--- 
---  > gmod_wire_adv_emarker
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  
--- 
---  > gmod_wire_adv_input
--- 
---  number keyless = 1
--- 
---  number keymore = 3
--- 
---  string Model = "models/beer/wiremod/numpad.mdl"
--- 
---  number speed = 1
--- 
---  boolean toggle = false
--- 
---  number value_max = 10
--- 
---  number value_min = 0
--- 
---  number value_start = 5
--- 
---  
--- 
---  > gmod_wire_button
--- 
---  string description = ""
--- 
---  boolean entityout = false
--- 
---  string Model = "models/props_c17/clock01.mdl"
--- 
---  boolean toggle = false
--- 
---  number value_off = 0
--- 
---  number value_on = 1
--- 
---  
--- 
---  > gmod_wire_cameracontroller
--- 
---  boolean AllowZoom = false
--- 
---  boolean AutoMove = false
--- 
---  boolean AutoUnclip = false
--- 
---  boolean AutoUnclip_IgnoreWater = false
--- 
---  boolean DrawParent = true
--- 
---  boolean DrawPlayer = true
--- 
---  boolean FreeMove = false
--- 
---  boolean LocalMove = false
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  boolean ParentLocal = false
--- 
---  
--- 
---  > gmod_wire_cd_disk
--- 
---  number IRadius = 10
--- 
---  string Model = "models/venompapa/wirecd_medium.mdl"
--- 
---  number Precision = 4
--- 
---  number Skin = 0
--- 
---  
--- 
---  > gmod_wire_cd_ray
--- 
---  boolean DefaultZero = false
--- 
---  string Model = "models/jaanus/wiretool/wiretool_beamcaster.mdl"
--- 
---  number Range = 64
--- 
---  
--- 
---  > gmod_wire_clutch
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  
--- 
---  > gmod_wire_colorer
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  boolean outColor = false
--- 
---  number Range = 2000
--- 
---  
--- 
---  > gmod_wire_consolescreen
--- 
---  string Model = "models/props_lab/monitor01b.mdl"
--- 
---  
--- 
---  > gmod_wire_damage_detector
--- 
---  boolean includeconstrained = false
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  
--- 
---  > gmod_wire_data_satellitedish
--- 
---  string Model = "models/props_wasteland/prison_lamp001c.mdl"
--- 
---  
--- 
---  > gmod_wire_data_store
--- 
---  string Model = "models/jaanus/wiretool/wiretool_range.mdl"
--- 
---  
--- 
---  > gmod_wire_data_transferer
--- 
---  boolean DefaultZero = false
--- 
---  boolean IgnoreZero = false
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  number Range = 25000
--- 
---  
--- 
---  > gmod_wire_dataport
--- 
---  string Model = "models/jaanus/wiretool/wiretool_gate.mdl"
--- 
---  
--- 
---  > gmod_wire_datarate
--- 
---  string Model = "models/jaanus/wiretool/wiretool_gate.mdl"
--- 
---  
--- 
---  > gmod_wire_datasocket
--- 
---  number AttachRange = 5
--- 
---  string Model = "models/hammy/pci_slot.mdl"
--- 
---  number WeldForce = 5000
--- 
---  
--- 
---  > gmod_wire_detonator
--- 
---  number damage = 1
--- 
---  string Model = "models/props_combine/breenclock.mdl"
--- 
---  
--- 
---  > gmod_wire_dhdd
--- 
---  string Model
--- 
---  
--- 
---  > gmod_wire_digitalscreen
--- 
---  string Model = "models/props_lab/monitor01b.mdl"
--- 
---  number ScreenHeight = 32
--- 
---  number ScreenWidth = 32
--- 
---  
--- 
---  > gmod_wire_dual_input
--- 
---  number keygroup = 7
--- 
---  number keygroup2 = 4
--- 
---  string Model = "models/beer/wiremod/numpad.mdl"
--- 
---  boolean toggle = false
--- 
---  number value_off = 0
--- 
---  number value_on = 1
--- 
---  number value_on2 = -1
--- 
---  
--- 
---  > gmod_wire_dynamic_button
--- 
---  string description = ""
--- 
---  boolean entityout = false
--- 
---  string material_off = "bull/dynamic_button_0"
--- 
---  string material_on = "bull/dynamic_button_1"
--- 
---  string Model = "models/bull/ranger.mdl"
--- 
---  number off_b = 255
--- 
---  number off_g = 255
--- 
---  number off_r = 255
--- 
---  number on_b = 255
--- 
---  number on_g = 255
--- 
---  number on_r = 255
--- 
---  boolean toggle = false
--- 
---  number value_off = 0
--- 
---  number value_on = 1
--- 
---  
--- 
---  > gmod_wire_egp
--- 
---  string Model = "models/kobilica/wiremonitorbig.mdl"
--- 
---  
--- 
---  > gmod_wire_egp_emitter
--- 
---  string Model = "models/bull/dynamicbutton.mdl"
--- 
---  
--- 
---  > gmod_wire_egp_hud
--- 
---  string Model = "models/bull/dynamicbutton.mdl"
--- 
---  
--- 
---  > gmod_wire_emarker
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  
--- 
---  > gmod_wire_exit_point
--- 
---  string Model = "models/jaanus/wiretool/wiretool_range.mdl"
--- 
---  
--- 
---  > gmod_wire_explosive
--- 
---  boolean affectother = false
--- 
---  boolean bulletproof = false
--- 
---  boolean coloreffect = true
--- 
---  number damage = 200
--- 
---  number delayreloadtime = 0
--- 
---  number delaytime = 0
--- 
---  boolean explodeatzero = true
--- 
---  boolean explosionproof = false
--- 
---  boolean fallproof = false
--- 
---  boolean fireeffect = true
--- 
---  boolean invisibleatzero = false
--- 
---  number key = 1
--- 
---  number maxhealth = 100
--- 
---  string Model = "models/props_c17/oildrum001_explosive.mdl"
--- 
---  boolean notaffected = false
--- 
---  number radius = 300
--- 
---  boolean removeafter = false
--- 
---  boolean resetatexplode = true
--- 
---  
--- 
---  > gmod_wire_expression2
--- 
---  string _name = "Generic"
--- 
---  string _original = "print("Hello World!")"
--- 
---  table inc_files = {}
--- 
---  string Model = "models/beer/wiremod/gate_e2.mdl"
--- 
---  
--- 
---  > gmod_wire_extbus
--- 
---  string Model = "models/jaanus/wiretool/wiretool_gate.mdl"
--- 
---  
--- 
---  > gmod_wire_eyepod
--- 
---  number ClampX = 0
--- 
---  number ClampXMax = 0
--- 
---  number ClampXMin = 0
--- 
---  number ClampY = 0
--- 
---  number ClampYMax = 0
--- 
---  number ClampYMin = 0
--- 
---  number DefaultToZero = 1
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  number ShowRateOfChange = 1
--- 
---  
--- 
---  > gmod_wire_forcer
--- 
---  number Force = 1
--- 
---  number Length = 100
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  boolean Reaction = false
--- 
---  boolean ShowBeam = true
--- 
---  
--- 
---  > gmod_wire_freezer
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  
--- 
---  > gmod_wire_friendslist
--- 
---  string Model = "models/kobilica/value.mdl"
--- 
---  boolean save_on_entity = false
--- 
---  table steamids = {}
--- 
---  
--- 
---  > gmod_wire_fx_emitter
--- 
---  number delay = 0.07
--- 
---  string effect = "sparks"
--- 
---  string Model = "models/props_lab/tpplug.mdl"
--- 
---  
--- 
---  > gmod_wire_gate
--- 
---  string action = "+"
--- 
---  string Model = "models/jaanus/wiretool/wiretool_gate.mdl"
--- 
---  
--- 
---  > gmod_wire_gimbal
--- 
---  string Model = "models/props_c17/canister01a.mdl"
--- 
---  
--- 
---  > gmod_wire_gps
--- 
---  string Model = "models/beer/wiremod/gps.mdl"
--- 
---  
--- 
---  > gmod_wire_gpulib_controller
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  
--- 
---  > gmod_wire_grabber
--- 
---  boolean Gravity = true
--- 
---  string Model = "models/jaanus/wiretool/wiretool_range.mdl"
--- 
---  number Range = 100
--- 
---  
--- 
---  > gmod_wire_graphics_tablet
--- 
---  boolean draw_background = true
--- 
---  boolean gmode = false
--- 
---  string Model = "models/kobilica/wiremonitorbig.mdl"
--- 
---  
--- 
---  > gmod_wire_gyroscope
--- 
---  string Model = "models/bull/various/gyroscope.mdl"
--- 
---  boolean out180 = false
--- 
---  
--- 
---  > gmod_wire_hdd
--- 
---  number DriveCap = 128
--- 
---  number DriveID = 0
--- 
---  string Model = "models/jaanus/wiretool/wiretool_gate.mdl"
--- 
---  
--- 
---  > gmod_wire_holoemitter
--- 
---  string Model = "models/jaanus/wiretool/wiretool_range.mdl"
--- 
---  
--- 
---  > gmod_wire_hologrid
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  boolean usegps = false
--- 
---  
--- 
---  > gmod_wire_hoverball
--- 
---  string Model = "models/dav0r/hoverball.mdl"
--- 
---  number resistance = 0
--- 
---  number speed = 1
--- 
---  boolean starton = true
--- 
---  number strength = 1
--- 
---  
--- 
---  > gmod_wire_hudindicator
--- 
---  number a = 0
--- 
---  number aa = 255
--- 
---  number ab = 0
--- 
---  number ag = 0
--- 
---  boolean allowhook = true
--- 
---  number ar = 255
--- 
---  number b = 1
--- 
---  number ba = 255
--- 
---  number bb = 0
--- 
---  number bg = 255
--- 
---  number br = 0
--- 
---  number fullcircleangle = 0
--- 
---  boolean hudaddname = false
--- 
---  string huddesc = ""
--- 
---  number hudshowvalue = 0
--- 
---  number hudstyle = 0
--- 
---  string material = "models/debug/debugwhite"
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  boolean showinhud = false
--- 
---  
--- 
---  > gmod_wire_hydraulic
--- 
---  number Bone1 = 0
--- 
---  number Bone2 = 0
--- 
---  Entity Ent1
--- 
---  Entity Ent2
--- 
---  number fixed = 0
--- 
---  Vector LPos1 = Vector(0, 0, 0)
--- 
---  Vector LPos2 = Vector(0, 0, 0)
--- 
---  string material = "cable/rope"
--- 
---  string Model = "models/beer/wiremod/hydraulic.mdl"
--- 
---  number speed = 16
--- 
---  boolean stretchonly = false
--- 
---  number width = 3
--- 
---  
--- 
---  > gmod_wire_igniter
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  number Range = 2048
--- 
---  boolean TargetPlayers = false
--- 
---  
--- 
---  > gmod_wire_indicator
--- 
---  number a = 0
--- 
---  number aa = 255
--- 
---  number ab = 0
--- 
---  number ag = 0
--- 
---  number ar = 255
--- 
---  number b = 1
--- 
---  number ba = 255
--- 
---  number bb = 0
--- 
---  number bg = 255
--- 
---  number br = 0
--- 
---  string Model = "models/segment.mdl"
--- 
---  
--- 
---  > gmod_wire_input
--- 
---  number keygroup = 7
--- 
---  string Model = "models/beer/wiremod/numpad.mdl"
--- 
---  boolean toggle = false
--- 
---  number value_off = 0
--- 
---  number value_on = 1
--- 
---  
--- 
---  > gmod_wire_keyboard
--- 
---  boolean AutoBuffer = true
--- 
---  boolean EnterKeyAscii = true
--- 
---  string Model = "models/jaanus/wiretool/wiretool_input.mdl"
--- 
---  boolean Synchronous = true
--- 
---  
--- 
---  > gmod_wire_keypad
--- 
---  string Model = "models/props_lab/keypad.mdl"
--- 
---  string Password
--- 
---  boolean Secure
--- 
---  
--- 
---  > gmod_wire_lamp
--- 
---  number b = 255
--- 
---  number Brightness = 8
--- 
---  number Dist = 1024
--- 
---  number FOV = 90
--- 
---  number g = 255
--- 
---  string Model = "models/lamps/torch.mdl"
--- 
---  boolean on = false
--- 
---  number r = 255
--- 
---  string Texture = "effects/flashlight001"
--- 
---  
--- 
---  > gmod_wire_las_receiver
--- 
---  string Model = "models/jaanus/wiretool/wiretool_range.mdl"
--- 
---  
--- 
---  > gmod_wire_latch
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  
--- 
---  > gmod_wire_lever
--- 
---  number Max = 1
--- 
---  number Min = 0
--- 
---  
--- 
---  > gmod_wire_light
--- 
---  number B = 255
--- 
---  number brightness = 2
--- 
---  boolean directional = false
--- 
---  number G = 255
--- 
---  boolean glow = false
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  number R = 255
--- 
---  boolean radiant = false
--- 
---  number size = 256
--- 
---  
--- 
---  > gmod_wire_locator
--- 
---  string Model = "models/props_lab/powerbox02d.mdl"
--- 
---  
--- 
---  > gmod_wire_motor
--- 
---  number Bone1 = 0
--- 
---  number Bone2 = 0
--- 
---  Entity Ent1
--- 
---  Entity Ent2
--- 
---  number forcelimit = 0
--- 
---  number friction = 1
--- 
---  Vector LPos1 = Vector(0, 0, 0)
--- 
---  Vector LPos2 = Vector(0, 0, 0)
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  number torque = 500
--- 
---  
--- 
---  > gmod_wire_nailer
--- 
---  number Flim = 0
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  number Range = 100
--- 
---  boolean ShowBeam = true
--- 
---  
--- 
---  > gmod_wire_numpad
--- 
---  string Model = "models/beer/wiremod/numpad.mdl"
--- 
---  boolean toggle = false
--- 
---  number value_off = 0
--- 
---  number value_on = 0
--- 
---  
--- 
---  > gmod_wire_oscilloscope
--- 
---  string Model = "models/props_lab/monitor01b.mdl"
--- 
---  
--- 
---  > gmod_wire_output
--- 
---  number key = 1
--- 
---  string Model = "models/beer/wiremod/numpad.mdl"
--- 
---  
--- 
---  > gmod_wire_pixel
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  
--- 
---  > gmod_wire_pod
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  
--- 
---  > gmod_wire_radio
--- 
---  string Channel = "1"
--- 
---  string Model = "models/props_lab/binderblue.mdl"
--- 
---  boolean Secure = false
--- 
---  number values = 4
--- 
---  
--- 
---  > gmod_wire_ranger
--- 
---  boolean default_zero = true
--- 
---  boolean hires = false
--- 
---  boolean ignore_world = false
--- 
---  string Model = "models/jaanus/wiretool/wiretool_range.mdl"
--- 
---  boolean out_ang = false
--- 
---  boolean out_col = false
--- 
---  boolean out_dist = true
--- 
---  boolean out_eid = false
--- 
---  boolean out_hnrm = false
--- 
---  boolean out_pos = false
--- 
---  boolean out_sid = false
--- 
---  boolean out_uid = false
--- 
---  boolean out_val = false
--- 
---  boolean out_vel = false
--- 
---  number range = 1500
--- 
---  boolean show_beam = true
--- 
---  boolean trace_water = false
--- 
---  
--- 
---  > gmod_wire_relay
--- 
---  number keygroup1 = 1
--- 
---  number keygroup2 = 2
--- 
---  number keygroup3 = 3
--- 
---  number keygroup4 = 4
--- 
---  number keygroup5 = 5
--- 
---  number keygroupoff = 0
--- 
---  string Model = "models/kobilica/relay.mdl"
--- 
---  boolean nokey = false
--- 
---  number normclose = 0
--- 
---  number poles = 1
--- 
---  number throws = 2
--- 
---  boolean toggle = true
--- 
---  
--- 
---  > gmod_wire_screen
--- 
---  boolean Floor = false
--- 
---  boolean FormatNumber = false
--- 
---  boolean FormatTime = false
--- 
---  boolean LeftAlign = false
--- 
---  string Model = "models/props_lab/monitor01b.mdl"
--- 
---  boolean SingleBigFont = true
--- 
---  boolean SingleValue = false
--- 
---  string TextA = "Value A"
--- 
---  string TextB = "Value B"
--- 
---  
--- 
---  > gmod_wire_sensor
--- 
---  boolean direction_normalized = false
--- 
---  boolean direction_vector = false
--- 
---  boolean gpscord = false
--- 
---  string Model
--- 
---  boolean outbrng = false
--- 
---  boolean outdist = true
--- 
---  boolean target_velocity = false
--- 
---  boolean velocity_normalized = false
--- 
---  boolean xyz_mode = false
--- 
---  
--- 
---  > gmod_wire_simple_explosive
--- 
---  number damage = 200
--- 
---  number key = 1
--- 
---  string Model = "models/props_c17/oildrum001_explosive.mdl"
--- 
---  number radius = 300
--- 
---  boolean removeafter = false
--- 
---  
--- 
---  > gmod_wire_socket
--- 
---  boolean ArrayInput = false
--- 
---  number AttachRange = 5
--- 
---  string Model = "models/props_lab/tpplugholder_single.mdl"
--- 
---  number WeldForce = 5000
--- 
---  
--- 
---  > gmod_wire_soundemitter
--- 
---  string Model = "models/cheeze/wires/speaker.mdl"
--- 
---  string sound = "synth/square.wav"
--- 
---  
--- 
---  > gmod_wire_spawner
--- 
---  number a = 255
--- 
---  number b = 255
--- 
---  number delay = 0
--- 
---  number g = 255
--- 
---  string mat = ""
--- 
---  string Model
--- 
---  number r = 255
--- 
---  number skin = 0
--- 
---  number spawn_effect = 0
--- 
---  number undo_delay = 0
--- 
---  
--- 
---  > gmod_wire_speedometer
--- 
---  boolean AngVel = false
--- 
---  string Model
--- 
---  boolean z_only = false
--- 
---  
--- 
---  > gmod_wire_target_finder
--- 
---  boolean beacons = false
--- 
---  boolean casesen = false
--- 
---  boolean checkbuddylist = false
--- 
---  boolean colorcheck = false
--- 
---  boolean colortarget = false
--- 
---  string entity = ""
--- 
---  boolean hoverballs = false
--- 
---  number maxbogeys = 1
--- 
---  number maxtargets = 1
--- 
---  number minrange = 1
--- 
---  string Model = "models/beer/wiremod/targetfinder.mdl"
--- 
---  boolean notargetowner = false
--- 
---  boolean notownersstuff = false
--- 
---  string npcname = ""
--- 
---  boolean npcs = true
--- 
---  boolean onbuddylist = false
--- 
---  boolean painttarget = true
--- 
---  number pcolA = 255
--- 
---  number pcolB = 255
--- 
---  number pcolG = 255
--- 
---  number pcolR = 255
--- 
---  string playername = ""
--- 
---  boolean players = false
--- 
---  string propmodel = ""
--- 
---  boolean props = false
--- 
---  number range = 1000
--- 
---  boolean rpgs = false
--- 
---  string steamname = ""
--- 
---  boolean thrusters = false
--- 
---  boolean vehicles = false
--- 
---  
--- 
---  > gmod_wire_teleporter
--- 
---  string Model = "models/props_c17/utilityconducter001.mdl"
--- 
---  boolean UseEffects = true
--- 
---  boolean UseSounds = true
--- 
---  
--- 
---  > gmod_wire_textentry
--- 
---  string Model = "models/beer/wiremod/keyboard.mdl"
--- 
---  
--- 
---  > gmod_wire_textreceiver
--- 
---  boolean CaseInsensitive = true
--- 
---  table Matches
--- 
---  string Model = "models/jaanus/wiretool/wiretool_range.mdl"
--- 
---  boolean UseLuaPatterns = false
--- 
---  
--- 
---  > gmod_wire_textscreen
--- 
---  Color bgcolor = Color(0, 0, 0)
--- 
---  number chrPerLine = 6
--- 
---  Color fgcolor = Color(255, 255, 255)
--- 
---  string Model = "models/kobilica/wiremonitorbig.mdl"
--- 
---  string text = ""
--- 
---  number textJust = 1
--- 
---  string tfont = "Arial"
--- 
---  number valign = 0
--- 
---  
--- 
---  > gmod_wire_thruster
--- 
---  boolean bidir = true
--- 
---  number force = 1500
--- 
---  number force_max = 10000
--- 
---  number force_min = 0
--- 
---  string Model = "models/props_c17/lampShade001a.mdl"
--- 
---  boolean owater = true
--- 
---  string oweffect = "fire"
--- 
---  string soundname = ""
--- 
---  boolean uwater = true
--- 
---  string uweffect = "same"
--- 
---  
--- 
---  > gmod_wire_trail
--- 
---  Color Color = Color(255, 255, 255)
--- 
---  number EndSize = 0
--- 
---  number Length = 5
--- 
---  string Material = "trails/lol"
--- 
---  number StartSize = 32
--- 
---  
--- 
---  > gmod_wire_trigger
--- 
---  number filter = 0
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  number offsetx = 0
--- 
---  number offsety = 0
--- 
---  number offsetz = 0
--- 
---  boolean owneronly = false
--- 
---  number sizex = 64
--- 
---  number sizey = 64
--- 
---  number sizez = 64
--- 
---  
--- 
---  > gmod_wire_turret
--- 
---  number damage = 10
--- 
---  number delay = 0.05
--- 
---  number force = 1
--- 
---  string Model = "models/weapons/w_smg1.mdl"
--- 
---  number numbullets = 1
--- 
---  string sound = "0"
--- 
---  number spread = 0
--- 
---  string tracer = "Tracer"
--- 
---  number tracernum = 1
--- 
---  
--- 
---  > gmod_wire_twoway_radio
--- 
---  string Model = "models/props_lab/binderblue.mdl"
--- 
---  
--- 
---  > gmod_wire_user
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  number Range = 200
--- 
---  
--- 
---  > gmod_wire_value
--- 
---  string Model = "models/kobilica/value.mdl"
--- 
---  table value
--- 
---  
--- 
---  > gmod_wire_vectorthruster
--- 
---  boolean angleinputs = false
--- 
---  boolean bidir = true
--- 
---  number force = 1500
--- 
---  number force_max = 10000
--- 
---  number force_min = 0
--- 
---  boolean lengthismul = false
--- 
---  number mode = 0
--- 
---  string Model = "models/jaanus/wiretool/wiretool_speed.mdl"
--- 
---  boolean owater = true
--- 
---  string oweffect = "fire"
--- 
---  string soundname = ""
--- 
---  boolean uwater = true
--- 
---  string uweffect = "same"
--- 
---  
--- 
---  > gmod_wire_vehicle
--- 
---  string Model = "models/jaanus/wiretool/wiretool_siren.mdl"
--- 
---  
--- 
---  > gmod_wire_watersensor
--- 
---  string Model = "models/beer/wiremod/watersensor.mdl"
--- 
---  
--- 
---  > gmod_wire_waypoint
--- 
---  string Model = "models/props_lab/powerbox02d.mdl"
--- 
---  number range = 150
--- 
---  
--- 
---  > gmod_wire_weight
--- 
---  string Model = "models/props_interiors/pot01a.mdl"
--- 
---  
--- 
---  > gmod_wire_wheel
--- 
---  Entity Base
--- 
---  number BaseTorque = 3000
--- 
---  number bck = -1
--- 
---  number Bone = 0
--- 
---  number forcelimit = 0
--- 
---  number friction = 1
--- 
---  number fwd = 1
--- 
---  Vector LAxis = Vector(0, 1, 0)
--- 
---  Vector LPos = Vector(0, 0, 0)
--- 
---  string Model = "models/props_vehicles/carparts_wheel01a.mdl"
--- 
---  number stop = 0
--- 
---  
_G.prop.SENT_Data_Structures = {
}	--- spawnRate - server - libs_sv/prop.lua#L680
	---@return number undefined Number of props per second the user can spawn
	function _G.prop.spawnRate() end
	--- setPropUndo - server - libs_sv/prop.lua#L693
	---@param on boolean Whether the props should be undo-able
	function _G.prop.setPropUndo(on) end
	--- createSent - server - libs_sv/prop.lua#L397
	---@param pos Vector Position of created sent
	---@param ang Angle Angle of created sent
	---@param class string Class of created sent
	---@param frozen boolean True to spawn frozen
	---@param data table? Optional table, additional entity data to be supplied to certain SENTs. See prop.SENT_Data_Structures table in Docs for list of SENTs
	---@return Entity undefined The sent object
	function _G.prop.createSent(pos, ang, class, frozen, data) end
	--- create - server - libs_sv/prop.lua#L44
	---@param pos Vector Initial entity position
	---@param ang Angle Initial entity angles
	---@param model string Model path
	---@param frozen boolean? True to spawn the entity in a frozen state. Default = False
	---@return Entity undefined The prop object
	function _G.prop.create(pos, ang, model, frozen) end
	--- createComponent - server - libs_sv/prop.lua#L245
	---@param pos Vector Position of created component
	---@param ang Angle Angle of created component
	---@param class string Class of created component
	---@param model string Model of created component
	---@param frozen boolean True to spawn frozen
	---@return Entity undefined Component entity
	function _G.prop.createComponent(pos, ang, class, model, frozen) end
	--- createSeat - server - libs_sv/prop.lua#L339
	---@param pos Vector Position of created seat
	---@param ang Angle Angle of created seat
	---@param model string Model of created seat
	---@param frozen boolean True to spawn frozen
	---@return Entity undefined The seat object
	function _G.prop.createSeat(pos, ang, model, frozen) end
	--- propsLeft - server - libs_sv/prop.lua#L672
	---@return number undefined Number of props able to be spawned
	function _G.prop.propsLeft() end
	--- createCustom - server - libs_sv/prop.lua#L148
	---@param pos Vector The position to spawn the prop
	---@param ang Angle The angles to spawn the prop
	---@param vertices table The table of tables of vertices that make up the physics mesh {{v1,v2,...},{v1,v2,...},...}
	---@param frozen boolean Whether the prop starts frozen
	---@return Entity undefined The prop object
	function _G.prop.createCustom(pos, ang, vertices, frozen) end
	--- setPropClean - server - libs_sv/prop.lua#L687
	---@param on boolean Whether the props should be cleaned or not
	function _G.prop.setPropClean(on) end
	--- canSpawn - server - libs_sv/prop.lua#L664
	---@return boolean undefined True if user can spawn props, False if not.
	function _G.prop.canSpawn() end
	--- getSpawnableSents - server - libs_sv/prop.lua#L308
	---@param categorized boolean? True to get an categorized list
	---@return table undefined The table
	function _G.prop.getSpawnableSents(categorized) end
	--- createRagdoll - server - libs_sv/prop.lua#L99
	---@param model string Model path
	---@param frozen boolean? True to spawn the entity in a frozen state. Default = False
	---@return Entity undefined The ragdoll entity
	function _G.prop.createRagdoll(model, frozen) end
--- sql
---  SQL library.
_G.sql = {}
	--- query - client - libs_cl/sql.lua#L17
	---@param query string The query to execute.
	---@return table? undefined Query results as a table, nil if the query returned no data.
	function _G.sql.query(query) end
	--- SQLStr - client - libs_cl/sql.lua#L54
	---@param str string The string to be escaped.
	---@param bNoQuotes boolean Set this as true, and the function will not wrap the input string in apostrophes.
	---@return string undefined The escaped input.
	function _G.sql.SQLStr(str, bNoQuotes) end
	--- tableExists - client - libs_cl/sql.lua#L32
	---@param tabname string The table to check for.
	---@return boolean undefined False if the table does not exist, true if it does.
	function _G.sql.tableExists(tabname) end
	--- tableRemove - client - libs_cl/sql.lua#L42
	---@param tabname string The table to remove.
	---@return boolean undefined True if the table was successfully removed, false if not.
	function _G.sql.tableRemove(tabname) end
--- json
---  JSON library
_G.json = {}
	--- decode - shared - libs_sh/json.lua#L23
	---@param s string String to decode
	---@return table undefined Table representing the JSON object
	function _G.json.decode(s) end
	--- encode - shared - libs_sh/json.lua#L14
	---@param tbl table Table to encode
	---@param prettyPrint boolean? Optional. If true, formats and indents the resulting JSON
	---@return string undefined JSON encoded string representation of the table
	function _G.json.encode(tbl, prettyPrint) end
--- joystick
---  Joystick library.
_G.joystick = {}
	--- numJoysticks - client - libs_cl/joystick.lua#L60
	---@return number undefined Number of joysticks
	function _G.joystick.numJoysticks() end
	--- numButtons - client - libs_cl/joystick.lua#L82
	---@param enum number Joystick number. Starts at 0
	---@return number undefined Number of buttons
	function _G.joystick.numButtons(enum) end
	--- numPovs - client - libs_cl/joystick.lua#L74
	---@param enum number Joystick number. Starts at 0
	---@return number undefined Number of povs
	function _G.joystick.numPovs(enum) end
	--- numAxes - client - libs_cl/joystick.lua#L66
	---@param enum number Joystick number. Starts at 0
	---@return number undefined Number of axes
	function _G.joystick.numAxes(enum) end
	--- getAxis - client - libs_cl/joystick.lua#L25
	---@param enum number Joystick number. Starts at 0
	---@param axis number Joystick axis number. Ranges from 0 to 7.
	---@return number undefined 0 - 65535 where 32767 is the middle.
	function _G.joystick.getAxis(enum, axis) end
	--- getButton - client - libs_cl/joystick.lua#L43
	---@param enum number Joystick number. Starts at 0
	---@param button number Joystick button number. Starts at 0
	---@return number undefined 0 or 1
	function _G.joystick.getButton(enum, button) end
	--- getName - client - libs_cl/joystick.lua#L52
	---@param enum number Joystick number. Starts at 0
	---@return string undefined Name of the device
	function _G.joystick.getName(enum) end
	--- getPov - client - libs_cl/joystick.lua#L34
	---@param enum number Joystick number. Starts at 0
	---@param pov number Joystick pov number. Ranges from 0 to 7.
	---@return number undefined 0 - 65535 where 32767 is the middle.
	function _G.joystick.getPov(enum, pov) end
--- notification
---  Notification library. Allows the user to display hints on the bottom right of their screen
_G.notification = {}
	--- addProgress - client - libs_cl/notification.lua#L51
	---@param id string String index of the notification
	---@param text string The text to display
	function _G.notification.addProgress(id, text) end
	--- kill - client - libs_cl/notification.lua#L79
	---@param id string String index of the notification to kill
	function _G.notification.kill(id) end
	--- addLegacy - client - libs_cl/notification.lua#L28
	---@param text string The text to display
	---@param type number Determines the notification method.
	---@param length number Time in seconds to display the notification (Max length of 30)
	function _G.notification.addLegacy(text, type, length) end
--- math
---  Lua math library https://wiki.garrysmod.com/page/Category:math
_G.math = {}
	--- ceil - shared - libs_sh/math.lua#L96
	---@param n number Number to be rounded
	---@return number undefined Rounded number
	function _G.math.ceil(n) end
	--- tan - shared - libs_sh/math.lua#L290
	---@param ang number Angle in radians
	---@return number undefined The tangent of the given angle
	function _G.math.tan(ang) end
	--- lerp - shared - libs_sh/math.lua#L327
	---@param t number The fraction for finding the result. This number is clamped between 0 and 1
	---@param from number The starting number. The result will be equal to this if value t is 0
	---@param to number The ending number. The result will be equal to this if value t is 1
	---@return number undefined The result of the linear interpolation, (1 - t) * from + t * to
	function _G.math.lerp(t, from, to) end
	--- sinh - shared - libs_sh/math.lua#L278
	---@param ang number Angle in radians
	---@return number undefined The hyperbolic sine of the given angle
	function _G.math.sinh(ang) end
	--- approach - shared - libs_sh/math.lua#L46
	---@param current number The value we're currently at
	---@param target number The target value. This function will never overshoot this value
	---@param change number The amount that the current value is allowed to change by to approach the target (positive or negative)
	---@return number undefined New current value, closer to the target than it was previously
	function _G.math.approach(current, target, change) end
	--- distance - shared - libs_sh/math.lua#L128
	---@param x1 number X position of first point
	---@param y1 number Y position of first point
	---@param x2 number X position of second point
	---@param y2 number Y position of second point
	---@return number undefined Distance between the two points
	function _G.math.distance(x1, y1, x2, y2) end
	--- truncate - shared - libs_sh/math.lua#L310
	---@param val number The number to truncate
	---@param digits number? The amount of digits to keep after the point. Default 0
	---@return number undefined Rounded number
	function _G.math.truncate(val, digits) end
	--- easeInOutBack - shared - libs_sh/math.lua#L440
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInOutBack(fraction) end
	--- easeInExpo - shared - libs_sh/math.lua#L434
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInExpo(fraction) end
	--- min - shared - libs_sh/math.lua#L206
	---@param numbers ...number Any amount of number values
	---@return number undefined The smallest number
	function _G.math.min(numbers) end
	--- frexp - shared - libs_sh/math.lua#L164
	---@param x number The value to get the normalized fraction and the exponent from
	---@return number undefined Multiplier between 0.5 and 1
	---@return number undefined Exponent integer
	function _G.math.frexp(x) end
	--- easeInOutExpo - shared - libs_sh/math.lua#L470
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInOutExpo(fraction) end
	--- easeInOutCubic - shared - libs_sh/math.lua#L458
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInOutCubic(fraction) end
	--- sin - shared - libs_sh/math.lua#L272
	---@param ang number Angle in radians
	---@return number undefined Sine for given angle
	function _G.math.sin(ang) end
	--- easeInBack - shared - libs_sh/math.lua#L404
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInBack(fraction) end
	--- lerpVector - shared - libs_sh/math.lua#L351
	---@param ratio number Ratio of progress through values
	---@param from Vector Vector to begin from
	---@param Vector Vector to end at
	---@return Vector undefined The interpolated vector
	function _G.math.lerpVector(ratio, from, Vector) end
	--- easeInBounce - shared - libs_sh/math.lua#L410
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInBounce(fraction) end
	--- bSplinePoint - shared - libs_sh/math.lua#L317
	---@param tDiff number From 0 to tMax, where alongside the spline the point will be
	---@param tPoints number A table of Vectors. The amount cannot be less than 4
	---@param tMax number Dictates maximum value for tDiff
	---@return number undefined Point on Bezier curve, related to tDiff
	function _G.math.bSplinePoint(tDiff, tPoints, tMax) end
	--- easeInQuint - shared - libs_sh/math.lua#L512
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInQuint(fraction) end
	--- easeInCirc - shared - libs_sh/math.lua#L416
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInCirc(fraction) end
	--- tanh - shared - libs_sh/math.lua#L296
	---@param ang number Angle in radians
	---@return number undefined The hyperbolic tangent of the given angle
	function _G.math.tanh(ang) end
	--- easeInQuart - shared - libs_sh/math.lua#L506
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInQuart(fraction) end
	--- atan - shared - libs_sh/math.lua#L68
	---@param tan number Tangent value
	---@return number undefined Angle in radians
	function _G.math.atan(tan) end
	--- easeInOutSine - shared - libs_sh/math.lua#L494
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInOutSine(fraction) end
	--- acos - shared - libs_sh/math.lua#L33
	---@param cos number Cosine value in range of -1 to 1
	---@return number undefined Angle in radians or nothing if the argument is out of range
	function _G.math.acos(cos) end
	--- distanceToLine - shared - libs_sh/math.lua#L362
	---@param lineStart Vector Start of the line
	---@param lineEnd Vector End of the line
	---@param pointPos Vector Position of the point
	---@return number undefined Distance from line
	---@return Vector undefined Nearest point on line
	---@return number undefined Distance along line from start
	function _G.math.distanceToLine(lineStart, lineEnd, pointPos) end
	--- normalizeAngle - shared - libs_sh/math.lua#L219
	---@param ang number The angle in degrees
	---@return number undefined The normalized angle
	function _G.math.normalizeAngle(ang) end
	--- easeInOut - shared - libs_sh/math.lua#L137
	---@param progress number Fraction of the progress to ease
	---@param easeIn number Fraction of how much easing to begin with
	---@param easeOut number Fraction of how much easing to end with
	---@return number undefined Eased value
	function _G.math.easeInOut(progress, easeIn, easeOut) end
	--- log10 - shared - libs_sh/math.lua#L194
	---@param x number The value to get the base from exponent from
	---@return number undefined Logarithm of x to the base 10
	function _G.math.log10(x) end
	--- sign - shared - libs_sh/math.lua#L25
	---@param x number The number to get the sign of
	---@return number undefined -1 if negative, 1 if positive, 0 if 0
	function _G.math.sign(x) end
	--- easeInOutCirc - shared - libs_sh/math.lua#L452
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInOutCirc(fraction) end
	--- round - shared - libs_sh/math.lua#L266
	---@param value number The number to be rounded
	---@param decimals number? Optional decimal places to round to. Defaults to 0
	function _G.math.round(value, decimals) end
	--- easeInOutQuint - shared - libs_sh/math.lua#L488
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInOutQuint(fraction) end
	--- ldexp - shared - libs_sh/math.lua#L179
	---@param normalizedFraction number The value to get the normalized fraction and the exponent from
	---@param exponent number The value to get the normalized fraction and the exponent from
	---@return number undefined Floating point reperesentation
	function _G.math.ldexp(normalizedFraction, exponent) end
	--- deg - shared - libs_sh/math.lua#L122
	---@param rad number Angle in radians to be converted
	---@return number undefined Angle in degrees
	function _G.math.deg(rad) end
	--- intToBin - shared - libs_sh/math.lua#L173
	---@param int number Number to be converted
	---@return string undefined Binary number string. The length of this will always be a multiple of 3
	function _G.math.intToBin(int) end
	--- easeOutElastic - shared - libs_sh/math.lua#L548
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeOutElastic(fraction) end
	--- cosh - shared - libs_sh/math.lua#L116
	---@param angle number Angle in radians
	---@return number undefined The hyperbolic cosine of the angle
	function _G.math.cosh(angle) end
	--- easeOutQuint - shared - libs_sh/math.lua#L560
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeOutQuint(fraction) end
	--- lerpAngle - shared - libs_sh/math.lua#L340
	---@param ratio number Ratio of progress through values
	---@param from number Angle to begin from
	---@param to number Angle to end at
	---@return number undefined The interpolated angle
	function _G.math.lerpAngle(ratio, from, to) end
	--- calcBSplineN - shared - libs_sh/math.lua#L87
	---@param i number 
	---@param k number 
	---@param t number 
	---@param tinc number 
	---@return number undefined Number value
	function _G.math.calcBSplineN(i, k, t, tinc) end
	--- slerpQuaternion - shared - libs_sh/quaternion.lua#L838
	---@param quat1 Quaternion Quaternion to start with
	---@param quat2 Quaternion Quaternion to end with
	---@param t number Ratio, 0 = quat1; 1 = quat2
	---@return Quaternion undefined Interpolated quaternion
	function _G.math.slerpQuaternion(quat1, quat2, t) end
	--- easeOutSine - shared - libs_sh/math.lua#L566
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeOutSine(fraction) end
	--- easeInOutElastic - shared - libs_sh/math.lua#L464
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInOutElastic(fraction) end
	--- random - shared - libs_sh/math.lua#L247
	---@param m number? Optional integer value. If n is not provided - upper limit; if n is provided - lower limit
	---@param n number? Optional integer value. Upper value
	---@return number undefined Random value
	function _G.math.random(m, n) end
	--- timeFraction - shared - libs_sh/math.lua#L302
	---@param start number Start time in seconds
	---@param _end number End time in seconds
	---@param current number Current time in seconds
	---@return number undefined The time fraction
	function _G.math.timeFraction(start, _end, current) end
	--- exp - shared - libs_sh/math.lua#L145
	---@param x number The exponent of the function
	---@return number undefined e to the specific power
	function _G.math.exp(x) end
	--- easeOutBounce - shared - libs_sh/math.lua#L530
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeOutBounce(fraction) end
	--- sharedRandom - shared - libs_sh/math.lua#L392
	---@param uniqueName string The seed for the random value
	---@param Min number The minimum value of the random range
	---@param Max number The maximum value of the random range
	---@param additionalSeed number? The additional seed. Default 0
	---@return number undefined The random float value
	function _G.math.sharedRandom(uniqueName, Min, Max, additionalSeed) end
	--- easeOutBack - shared - libs_sh/math.lua#L524
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeOutBack(fraction) end
	--- easeInSine - shared - libs_sh/math.lua#L518
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInSine(fraction) end
	--- easeInQuad - shared - libs_sh/math.lua#L500
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInQuad(fraction) end
	--- sqrt - shared - libs_sh/math.lua#L284
	---@param value number The value to get the square root of
	---@return number undefined Square root of the provided value
	function _G.math.sqrt(value) end
	--- angleDifference - shared - libs_sh/math.lua#L39
	---@param a number The first angle
	---@param b number The second angle
	---@return number undefined The difference between the angles between -180 and 180
	function _G.math.angleDifference(a, b) end
	--- cos - shared - libs_sh/math.lua#L110
	---@param angle number Angle in radians
	---@return number undefined Cosine of the angle
	function _G.math.cos(angle) end
	--- easeInCubic - shared - libs_sh/math.lua#L422
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInCubic(fraction) end
	--- easeInOutQuart - shared - libs_sh/math.lua#L482
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInOutQuart(fraction) end
	--- easeOutQuart - shared - libs_sh/math.lua#L554
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeOutQuart(fraction) end
	--- easeOutCirc - shared - libs_sh/math.lua#L536
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeOutCirc(fraction) end
	--- binToInt - shared - libs_sh/math.lua#L81
	---@param str string Binary string to convert
	---@return number undefined Base 10 number
	function _G.math.binToInt(str) end
	--- atan2 - shared - libs_sh/math.lua#L74
	---@param y number The Y coordinate
	---@param x number The X coordinate
	---@return number undefined Angle of the line from (0, 0) to (x, y) in radians, in the range -pi to pi
	function _G.math.atan2(y, x) end
	--- modf - shared - libs_sh/math.lua#L212
	---@param base number The base value
	---@return number undefined The integral component
	---@return number undefined The fractional component
	function _G.math.modf(base) end
	--- asin - shared - libs_sh/math.lua#L62
	---@param sin number Sine value in the range of -1 to 1
	---@return number undefined Angle in radians or nothing if the argument is out of range
	function _G.math.asin(sin) end
	--- pow - shared - libs_sh/math.lua#L227
	---@param base number The Base number
	---@param exp number The Exponent
	---@return number undefined Exponent power of base
	function _G.math.pow(base, exp) end
	--- max - shared - libs_sh/math.lua#L200
	---@param numbers ...number Any amount of number values
	---@return number undefined The largest number
	function _G.math.max(numbers) end
	--- floor - shared - libs_sh/math.lua#L151
	---@param n number Number to be rounded
	---@return number undefined Rounded number
	function _G.math.floor(n) end
	--- approachAngle - shared - libs_sh/math.lua#L54
	---@param currentAngle number The current angle to increase
	---@param targetAngle number The angle to increase towards
	---@param rate number The amount to approach the target angle by
	---@return number undefined Modified angle
	function _G.math.approachAngle(currentAngle, targetAngle, rate) end
	--- rand - shared - libs_sh/math.lua#L240
	---@param min number The minimum value
	---@param max number The maximum value
	---@return number undefined Random float between min and max
	function _G.math.rand(min, max) end
	--- easeInOutQuad - shared - libs_sh/math.lua#L476
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInOutQuad(fraction) end
	--- abs - shared - libs_sh/math.lua#L19
	---@param x number The number to get the absolute value of
	---@return number undefined Absolute value
	function _G.math.abs(x) end
	--- easeOutCubic - shared - libs_sh/math.lua#L542
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeOutCubic(fraction) end
	--- clamp - shared - libs_sh/math.lua#L102
	---@param current number Input number
	---@param min number Minimum value
	---@param max number Maximum value
	---@return number undefined Clamped number
	function _G.math.clamp(current, min, max) end
	--- log - shared - libs_sh/math.lua#L186
	---@param x number The value to get the base from exponent from
	---@param base number? Optional logarithmic base. Default 'e'
	---@return number undefined Logarithm of x to the given base
	function _G.math.log(x, base) end
	--- nlerpQuaternion - shared - libs_sh/quaternion.lua#L866
	---@param quat1 Quaternion Quaternion to start with
	---@param quat2 Quaternion Quaternion to end with
	---@param t number Ratio, 0 = quat1; 1 = quat2
	---@return Quaternion undefined Interpolated quaternion
	function _G.math.nlerpQuaternion(quat1, quat2, t) end
	--- rad - shared - libs_sh/math.lua#L234
	---@param deg number Angle in degrees
	---@return number undefined Angle in radians
	function _G.math.rad(deg) end
	--- fmod - shared - libs_sh/math.lua#L157
	---@param base number The base value
	---@param mod number The modulator
	---@return number undefined The calculated modulus
	function _G.math.fmod(base, mod) end
	--- easeInOutBounce - shared - libs_sh/math.lua#L446
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInOutBounce(fraction) end
	--- bezierVector - shared - libs_sh/math.lua#L374
	---@param ratio number Number representing how far along the curve, 0-1.
	---@param start Vector The start position of the curve.
	---@param middle Vector The middle position of the curve.
	---@param _end Vector The end position of the curve.
	---@return Vector undefined Vector representing the point along the curve.
	function _G.math.bezierVector(ratio, start, middle, _end) end
	--- remap - shared - libs_sh/math.lua#L256
	---@param value number The number value
	---@param inMin number The minimum of the initial range
	---@param inMax number The maximum of the initial range
	---@param outMin number The minimum of new range
	---@param outMax number The maximum of new range
	---@return number undefined The number in the new range
	function _G.math.remap(value, inMin, inMax, outMin, outMax) end
	--- easeInElastic - shared - libs_sh/math.lua#L428
	---@param fraction number Fraction of the progress to ease, from 0 to 1
	---@return number undefined "Eased" Value
	function _G.math.easeInElastic(fraction) end
--- midi
--- 
---  Midi Library
--- 
---  Polls midi event information from midi devices.
--- 
---  Requires a custom binary -> https://github.com/FPtje/gmcl_midi/releases/tag/v0.2.0
--- 
---  GNU/Linux and MacOS users will have to compile their own binaries.
--- 
---  Instructions here -> https://github.com/FPtje/gmcl_midi/blob/master/Compiling.md
_G.midi = {}
--- MIDI - shared
---  Midi Command ENUMS
_G.midi.MIDI = {
	---@type any
	["NOTE_OFF"] = nil,
	---@type any
	["NOTE_ON"] = nil,
	---@type any
	["AFTERTOUCH"] = nil,
	---@type any
	["CONTINUOUS_CONTROLLER"] = nil,
	---@type any
	["PATCH_CHANGE"] = nil,
	---@type any
	["CHANNEL_PRESSURE"] = nil,
	---@type any
	["PITCH_BEND"] = nil,
}
	--- closePort - client - libs_cl/midi.lua#L80
	---@param port number the midi port to close.
	---@return string undefined the name of the midi device closed at the given port.
	function _G.midi.closePort(port) end
	--- getCode - client - libs_cl/midi.lua#L87
	---@param command number the command
	---@return number undefined the command code
	function _G.midi.getCode(command) end
	--- openPort - client - libs_cl/midi.lua#L48
	---@param port number the midi port to open. Passing nothing defaults to 0.
	---@return string undefined the name of the midi device opened at the given port.
	function _G.midi.openPort(port) end
	--- isPortOpen - client - libs_cl/midi.lua#L59
	---@return boolean undefined if the port is open
	function _G.midi.isPortOpen() end
	--- getPorts - client - libs_cl/midi.lua#L74
	---@return table undefined the table of midi ports.  Starts at index 0
	function _G.midi.getPorts() end
	--- getChannel - client - libs_cl/midi.lua#L94
	---@param command number the command
	---@return number undefined the midi channel
	function _G.midi.getChannel(command) end
	--- getName - client - libs_cl/midi.lua#L101
	---@param command number the command
	---@return string undefined command name
	function _G.midi.getName(command) end
	--- closeAllPorts - client - libs_cl/midi.lua#L66
	function _G.midi.closeAllPorts() end
--- os
---  Lua os library https://wiki.garrysmod.com/page/Category:os
_G.os = {}
	--- date - shared - libs_sh/builtins.lua#L389
	---@param format string The format string. If starts with an '!', it will use UTC timezone rather than the local timezone
	---@param time number? Time to use for the format. Default os.time()
	---@return string|table undefined If format is equal to '*t' or '!*t' then it will return a table with DateData structure, otherwise a string
	function _G.os.date(format, time) end
	--- time - shared - libs_sh/builtins.lua#L409
	---@param dateData table? Optional table to generate the time from. This table's data is interpreted as being in the local timezone
	---@return number undefined Seconds passed since Unix epoch
	function _G.os.time(dateData) end
	--- clock - shared - libs_sh/builtins.lua#L383
	---@return number undefined The runtime
	function _G.os.clock() end
	--- difftime - shared - libs_sh/builtins.lua#L402
	---@param timeA number The first value
	---@param timeB number The value to subtract
	---@return number undefined Time difference
	function _G.os.difftime(timeA, timeB) end
--- vr
--- 
---  VRMod Library
--- 
---  Addon and module: https://steamcommunity.com/sharedfiles/filedetails/?id=1678408548
--- 
---  Follow install instructions on the addon's page.
_G.vr = {}
--- VR - client
---  VRmod library enums
_G.vr.VR = {
	---@type any
	["BOOLEAN_PRIMARYFIRE"] = nil,
	---@type any
	["VECTOR1_PRIMARYFIRE"] = nil,
	---@type any
	["BOOLEAN_SECONDARYFIRE"] = nil,
	---@type any
	["BOOLEAN_CHANGEWEAPON"] = nil,
	---@type any
	["BOOLEAN_USE"] = nil,
	---@type any
	["BOOLEAN_SPAWNMENU"] = nil,
	---@type any
	["VECTOR2_WALKDIRECTION"] = nil,
	---@type any
	["BOOLEAN_WALK"] = nil,
	---@type any
	["BOOLEAN_FLASHLIGHT"] = nil,
	---@type any
	["BOOLEAN_TURNLEFT"] = nil,
	---@type any
	["BOOLEAN_TURNRIGHT"] = nil,
	---@type any
	["VECTOR2_SMOOTHTURN"] = nil,
	---@type any
	["BOOLEAN_CHAT"] = nil,
	---@type any
	["BOOLEAN_RELOAD"] = nil,
	---@type any
	["BOOLEAN_JUMP"] = nil,
	---@type any
	["BOOLEAN_LEFT_PICKUP"] = nil,
	---@type any
	["BOOLEAN_RIGHT_PICKUP"] = nil,
	---@type any
	["BOOLEAN_UNDO"] = nil,
	---@type any
	["BOOLEAN_SPRINT"] = nil,
	---@type any
	["VECTOR1_FORWARD"] = nil,
	---@type any
	["VECTOR1_REVERSE"] = nil,
	---@type any
	["BOOLEAN_TURBO"] = nil,
	---@type any
	["VECTOR2_STEER"] = nil,
	---@type any
	["BOOLEAN_HANDBRAKE"] = nil,
	---@type any
	["BOOLEAN_EXIT"] = nil,
	---@type any
	["BOOLEAN_TURRET"] = nil,
}
	--- getHMDAng - shared - libs_sh/vr.lua#L98
	---@param target Player Player to get the HMD angles from
	---@return Angle undefined HMD Angles
	function _G.vr.getHMDAng(target) end
	--- isPlayerInVR - shared - libs_sh/vr.lua#L75
	---@param target Player Player to check
	---@return boolean undefined True if player is in VR
	function _G.vr.isPlayerInVR(target) end
	--- getHMDVelocities - client - libs_sh/vr.lua#L199
	---@return Vector undefined Velocity
	---@return Vector undefined Angular velocity
	function _G.vr.getHMDVelocities() end
	--- getOrigin - client - libs_sh/vr.lua#L281
	---@return Vector undefined Position
	---@return Angle undefined Angles
	function _G.vr.getOrigin() end
	--- getHMDPos - shared - libs_sh/vr.lua#L91
	---@param target Player Player to get the HMD position from
	---@return Vector undefined HMD Position
	function _G.vr.getHMDPos(target) end
	--- getHMDVelocity - client - libs_sh/vr.lua#L185
	---@return Vector undefined HMD Velocity
	function _G.vr.getHMDVelocity() end
	--- getRightEyePos - client - libs_sh/vr.lua#L306
	---@return Vector undefined Position
	function _G.vr.getRightEyePos() end
	--- getHMDPose - shared - libs_sh/vr.lua#L105
	---@param target Player Player to get the HMD pose from
	---@return Vector undefined HMD Position
	---@return Angle undefined HMD Angles
	function _G.vr.getHMDPose(target) end
	--- getLeftEyePos - client - libs_sh/vr.lua#L299
	---@return Vector undefined Position
	function _G.vr.getLeftEyePos() end
	--- getEyePos - client - libs_sh/vr.lua#L292
	---@return Vector undefined Position
	function _G.vr.getEyePos() end
	--- getLeftHandPos - shared - libs_sh/vr.lua#L116
	---@param target Player Player to get the left hand position from
	---@return Vector undefined Position
	function _G.vr.getLeftHandPos(target) end
	--- getOriginPos - client - libs_sh/vr.lua#L267
	---@return Vector undefined Position
	function _G.vr.getOriginPos() end
	--- getLeftHandVelocities - client - libs_sh/vr.lua#L224
	---@return Vector undefined Velocity
	---@return Vector undefined Angular velocity
	function _G.vr.getLeftHandVelocities() end
	--- getRightHandAng - shared - libs_sh/vr.lua#L148
	---@param target Player Player to get the right hand angles from
	---@return Angle undefined Angles
	function _G.vr.getRightHandAng(target) end
	--- getLeftHandAng - shared - libs_sh/vr.lua#L123
	---@param target Player Player to get the left hand angles from
	---@return Angle undefined Angles
	function _G.vr.getLeftHandAng(target) end
	--- usingEmptyHands - shared - libs_sh/vr.lua#L82
	---@param target Player Player to check
	---@return boolean undefined True if player is using empty hands
	function _G.vr.usingEmptyHands(target) end
	--- getRightHandAngularVelocity - client - libs_sh/vr.lua#L242
	---@return Vector undefined Angular velocity
	function _G.vr.getRightHandAngularVelocity() end
	--- getLeftHandPose - shared - libs_sh/vr.lua#L130
	---@param target Player Player to get the left hand pose from
	---@return Vector undefined Position
	---@return Angle undefined Angles
	function _G.vr.getLeftHandPose(target) end
	--- getRightHandVelocity - client - libs_sh/vr.lua#L235
	---@return Vector undefined Velocity
	function _G.vr.getRightHandVelocity() end
	--- getRightHandPose - shared - libs_sh/vr.lua#L155
	---@param target Player Player to get the right hand pose from
	---@return Vector undefined Position
	---@return Angle undefined Angles
	function _G.vr.getRightHandPose(target) end
	--- getRightHandVelocities - client - libs_sh/vr.lua#L249
	---@return Vector undefined Velocity
	---@return Vector undefined Angular velocity
	function _G.vr.getRightHandVelocities() end
	--- getLeftHandAngularVelocity - client - libs_sh/vr.lua#L217
	---@return Vector undefined Angular velocity
	function _G.vr.getLeftHandAngularVelocity() end
	--- getInput - client - libs_sh/vr.lua#L166
	---@param actionname string ActionName to check control of, see the VR enums
	---@return boolean|Vector|number undefined Boolean, Vector or Number of input
	function _G.vr.getInput(actionname) end
	--- getRightHandPos - shared - libs_sh/vr.lua#L141
	---@param target Player Player to get the right hand position from
	---@return Vector undefined Position
	function _G.vr.getRightHandPos(target) end
	--- getHMDAngularVelocity - client - libs_sh/vr.lua#L192
	---@return Vector undefined Angular velocity
	function _G.vr.getHMDAngularVelocity() end
	--- getLeftHandVelocity - client - libs_sh/vr.lua#L210
	---@return Vector undefined Velocity
	function _G.vr.getLeftHandVelocity() end
	--- getOriginAng - client - libs_sh/vr.lua#L274
	---@return Angle undefined Angles
	function _G.vr.getOriginAng() end
--- darkrp
---  Functions relating to DarkRP. These functions WILL NOT EXIST if DarkRP is not in use.
_G.darkrp = {}
	--- openF1Menu - client - libs_sh/darkrp2.lua#L754
	function _G.darkrp.openF1Menu() end
	--- doorIndexToEnt - server - libs_sh/darkrp2.lua#L641
	---@param doorIndex number The door index
	---@return Entity? undefined The door entity, or nil if the index is invalid or the door was removed.
	function _G.darkrp.doorIndexToEnt(doorIndex) end
	--- canMakeMoneyRequest - server - libs_sh/darkrp2.lua#L725
	---@param sender Player? Player you intend to ask for money from later (if nil, will only check your money request rate)
	---@return boolean undefined If you can make another money request
	function _G.darkrp.canMakeMoneyRequest(sender) end
	--- canGiveMoney - server - libs_sh/darkrp2.lua#L747
	---@return boolean undefined If you can give someone money
	function _G.darkrp.canGiveMoney() end
	--- closeF4Menu - client - libs_sh/darkrp2.lua#L778
	function _G.darkrp.closeF4Menu() end
	--- getFoodItems - shared - libs_sh/darkrp2.lua#L613
	---@return table? undefined Table with food items, or nil if there are none.
	function _G.darkrp.getFoodItems() end
	--- requestMoney - server - libs_sh/darkrp2.lua#L682
	---@param sender Player The player who may or may not send the money.
	---@param amount number The amount of money to ask for.
	---@param message string? An optional custom message that will be shown in the money request prompt. May not exceed 60 bytes in length.
	---@param callbackSuccess function? Optional function to call if request succeeds. Args (string: The request message, player: The money sender, number: The amount)
	---@param callbackFailure function? Optional function to call if request fails. Args (string: why it failed)
	---@param receiver Player? The player who may or may not receive the money, or the owner of the chip if not specified. Superuser only.
	function _G.darkrp.requestMoney(sender, amount, message, callbackSuccess, callbackFailure, receiver) end
	--- moneyRequestsLeft - server - libs_sh/darkrp2.lua#L716
	---@return number undefined Number of money requests able to be created. This could be a decimal, so floor it first
	function _G.darkrp.moneyRequestsLeft() end
	--- openPocketMenu - client - libs_sh/darkrp2.lua#L802
	function _G.darkrp.openPocketMenu() end
	--- payPlayer - server - libs_sh/darkrp2.lua#L660
	---@param sender Player The player who gives the money.
	---@param receiver Player The player who receives the money.
	---@param amount number The amount of money.
	function _G.darkrp.payPlayer(sender, receiver, amount) end
	--- formatMoney - shared - libs_sh/darkrp2.lua#L593
	---@param amount number The money to format, e.g. 100000.
	---@return string undefined The money as a nice string, e.g. "$100,000".
	function _G.darkrp.formatMoney(amount) end
	--- isDarkRPVarBlacklisted - shared - libs_sh/darkrp2.lua#L632
	---@param var string The name of the variable
	---@return boolean undefined If the variable is blacklisted
	function _G.darkrp.isDarkRPVarBlacklisted(var) end
	--- moneyGivingsLeft - server - libs_sh/darkrp2.lua#L738
	---@return number undefined Number of money requests able to be created. This could be a decimal, so floor it first
	function _G.darkrp.moneyGivingsLeft() end
	--- toggleF4Menu - client - libs_sh/darkrp2.lua#L786
	function _G.darkrp.toggleF4Menu() end
	--- openF4Menu - client - libs_sh/darkrp2.lua#L770
	function _G.darkrp.openF4Menu() end
	--- getLaws - shared - libs_sh/darkrp2.lua#L620
	---@return table undefined A table of all current laws.
	function _G.darkrp.getLaws() end
	--- getAvailableVehicles - shared - libs_sh/darkrp2.lua#L601
	---@return table undefined Names, models and classnames of all supported vehicles.
	function _G.darkrp.getAvailableVehicles() end
	--- getCategories - shared - libs_sh/darkrp2.lua#L607
	---@return table undefined All categories.
	function _G.darkrp.getCategories() end
	--- closeF1Menu - client - libs_sh/darkrp2.lua#L762
	function _G.darkrp.closeF1Menu() end
	--- getCustomShipments - shared - libs_sh/darkrp2.lua#L626
	---@return table? undefined A table with the contents of the GLua global "CustomShipments", or nil if it doesn't exist.
	function _G.darkrp.getCustomShipments() end
	--- openKeysMenu - client - libs_sh/darkrp2.lua#L794
	function _G.darkrp.openKeysMenu() end
	--- jailPosCount - server - libs_sh/darkrp2.lua#L653
	---@return number undefined The number of jail positions in the current map.
	function _G.darkrp.jailPosCount() end
--- string
---  Lua string library https://wiki.garrysmod.com/page/Category:string
_G.string = {}
	--- getPathFromFilename - shared - libs_sh/string.lua#L113
	---@param str string File-path to get the file extensions from
	---@return string undefined The path
	function _G.string.getPathFromFilename(str) end
	--- format - shared - libs_sh/string.lua#L86
	---@param str string The string to be formatted
	---@param params ... Vararg values to be formatted into the string
	---@return string undefined The formatted string
	function _G.string.format(str, params) end
	--- len - shared - libs_sh/string.lua#L149
	---@param str string The string to find the length of
	---@return number undefined Length of the string
	function _G.string.len(str) end
	--- comma - shared - libs_sh/string.lua#L47
	---@param num number The number to be separated by commas
	---@return string undefined String with commas inserted
	function _G.string.comma(num) end
	--- javascriptSafe - shared - libs_sh/string.lua#L136
	---@param str string The string that should be escaped
	---@return string undefined The safe string
	function _G.string.javascriptSafe(str) end
	--- left - shared - libs_sh/string.lua#L142
	---@param str string The string to extract from
	---@param num number Amount of chars relative to the beginning (starting from 1)
	---@return string undefined Returns a string containing a specified number of characters from the left side of a string
	function _G.string.left(str, num) end
	--- replace - shared - libs_sh/string.lua#L203
	---@param str string The string we are seeking to replace an occurrence(s)
	---@param find string What we are seeking to replace
	---@param replace string What to replace find with
	---@return string undefined String with parts replaced
	function _G.string.replace(str, find, replace) end
	--- formattedTime - shared - libs_sh/string.lua#L93
	---@param time number The time in seconds to format
	---@param format string? An optional formatting to use. If no format it specified, a table will be returned instead
	---@return string|table undefined Formatted string or a table
	function _G.string.formattedTime(time, format) end
	--- char - shared - libs_sh/string.lua#L41
	---@param bytes ... The bytes to create the string from
	---@return string undefined String built from given bytes
	function _G.string.char(bytes) end
	--- toHoursMinutesSeconds - shared - libs_sh/string.lua#L273
	---@param time number Time in seconds
	---@return string undefined Given time in "HH:MM:SS" format
	function _G.string.toHoursMinutesSeconds(time) end
	--- setChar - shared - libs_sh/string.lua#L224
	---@param str string The input string
	---@param index number The character index, 1 is the first from left
	---@param replacement string String to replace with
	---@return string undefined Modified string
	function _G.string.setChar(str, index, replacement) end
	--- split - shared - libs_sh/string.lua#L232
	---@param str string String to split
	---@param separator string Character(s) to split with
	---@return table undefined Table with the separated strings in numerical sequential order
	function _G.string.split(str, separator) end
	--- escapeMarkup - shared - libs_sh/string.lua#L187
	---@param str string Text to sanitize
	---@return string undefined Sanitized text
	function _G.string.escapeMarkup(str) end
	--- getFileFromFilename - shared - libs_sh/string.lua#L107
	---@param str string File-path to get the file extensions from
	---@return string undefined The filename along with it's extension
	function _G.string.getFileFromFilename(str) end
	--- rep - shared - libs_sh/string.lua#L195
	---@param str string The string to repeat
	---@param rep number Number of times to repeat the string
	---@param sep string? (Optional) seperator string between each repeated string
	---@return string undefined String result
	function _G.string.rep(str, rep, sep) end
	--- utf8force - shared - libs_sh/string.lua#L357
	---@param str string The string that will become a valid UTF-8 string
	---@return string undefined The UTF-8 string
	function _G.string.utf8force(str) end
	--- gmatch - shared - libs_sh/string.lua#L119
	---@param data string The string to search in
	---@param pattern string The pattern to search for
	---@return function undefined The iterator function that can be used in a for-in loop
	function _G.string.gmatch(data, pattern) end
	--- reverse - shared - libs_sh/string.lua#L211
	---@param str string String to be reversed
	---@return string undefined Reversed string
	function _G.string.reverse(str) end
	--- toMinutesSecondsMilliseconds - shared - libs_sh/string.lua#L267
	---@param time number Time in seconds
	---@return string undefined Returns given time in "MM:SS:MS" format
	function _G.string.toMinutesSecondsMilliseconds(time) end
	--- right - shared - libs_sh/string.lua#L217
	---@param str string The string to extract from
	---@param num number Amount of chars relative to the end (starting from 1)
	---@return string undefined String containing a specified number of characters from the right side of a string
	function _G.string.right(str, num) end
	--- fromColor - shared - libs_sh/string.lua#L17
	---@param col Color The color to put in the string
	---@return string undefined String with the color RGBA values separated by spaces
	function _G.string.fromColor(col) end
	--- utf8offset - shared - libs_sh/string.lua#L373
	---@param str string The string that you will get the byte position from
	---@param n number The position to get the beginning byte position from
	---@param startPos number? The offset for n. Defaults to 1 if n >= 0, otherwise -1
	---@return number undefined Starting byte-index of the given position
	function _G.string.utf8offset(str, n, startPos) end
	--- utf8len - shared - libs_sh/string.lua#L363
	---@param str string The string to calculate the length of
	---@param startPos number? The starting position to get the length from
	---@param endPos number? The ending position to get the length from
	---@return number|boolean undefined The number of UTF-8 characters in the string. If there are invalid bytes, this will be false
	---@return number? undefined The position of the first invalid byte. If there were no invalid bytes, this will be nil
	function _G.string.utf8len(str, startPos, endPos) end
	--- utf8codes - shared - libs_sh/string.lua#L350
	---@param str string The string that you will get the codes from
	---@return function undefined The iterator (to be used in a for loop)
	function _G.string.utf8codes(str) end
	--- utf8codepoint - shared - libs_sh/string.lua#L341
	---@param str string The string that you will get the code(s) from
	---@param startPos number? The starting byte of the string to get the codepoint of
	---@param endPos number? The ending byte of the string to get the codepoint of
	---@return ... undefined The codepoint number(s)
	function _G.string.utf8codepoint(str, startPos, endPos) end
	--- toMinutesSeconds - shared - libs_sh/string.lua#L261
	---@param time number Time in seconds
	---@return string undefined Given time in "MM:SS" format
	function _G.string.toMinutesSeconds(time) end
	--- utf8char - shared - libs_sh/string.lua#L334
	---@param codepoints ... Unicode code points to be converted in to a UTF-8 string
	---@return string undefined UTF-8 string generated from given arguments
	function _G.string.utf8char(codepoints) end
	--- niceTime - shared - libs_sh/string.lua#L175
	---@param time number The number to format, in seconds
	---@return string undefined A nicely formatted time string
	function _G.string.niceTime(time) end
	--- upper - shared - libs_sh/string.lua#L320
	---@param str string The string to convert
	---@return string undefined String with all letters upper case
	function _G.string.upper(str) end
	--- sub - shared - libs_sh/string.lua#L252
	---@param str string The string you'll take a sub-string out of
	---@param startPos number The position of the first character that will be included in the sub-string
	---@param endPos number? The position of the last character to be included in the sub-string. It can be negative to count from the end
	function _G.string.sub(str, startPos, endPos) end
	--- normalizePath - shared - libs_sh/string.lua#L326
	---@param str string Path
	---@return string undefined Path with all .. replaced
	function _G.string.normalizePath(str) end
	--- trimRight - shared - libs_sh/string.lua#L313
	---@param str string The string to trim
	---@param char string Optional character to be trimmed. Defaults to space character
	---@return string undefined Trimmed string
	function _G.string.trimRight(str, char) end
	--- trimLeft - shared - libs_sh/string.lua#L306
	---@param str string The string to trim
	---@param char string? Optional character to be trimmed. Defaults to space character
	---@return string undefined Trimmed string
	function _G.string.trimLeft(str, char) end
	--- patternSafe - shared - libs_sh/string.lua#L181
	---@param str string The string to be sanitized
	---@return string undefined The sanitized string
	function _G.string.patternSafe(str) end
	--- trim - shared - libs_sh/string.lua#L299
	---@param str string The string to trim
	---@param char string? Optional character to be trimmed. Defaults to space character
	---@return string undefined Trimmed string
	function _G.string.trim(str, char) end
	--- endsWith - shared - libs_sh/string.lua#L60
	---@param str string The string whose end is to be checked
	---@param _end string The string to be matched with the end of the first
	---@return boolean undefined True if the first string ends with the second, or the second is empty
	function _G.string.endsWith(str, _end) end
	--- gsub - shared - libs_sh/string.lua#L126
	---@param str string String which should be modified.
	---@param pattern string The pattern that defines what should be matched and eventually be replaced.
	---@param replacement string|table|function If string: matched sequence will be replaced with it; If table: matched sequence will be used as key; If function: matches will be passed as parameters to the function (return to replace)
	---@param max number? Optional maximum number of replacements to be made
	---@return string undefined String with replaced parts
	---@return number undefined Replacements count
	function _G.string.gsub(str, pattern, replacement, max) end
	--- stripExtension - shared - libs_sh/string.lua#L246
	---@param path string The file-path to change
	---@return string undefined Path without the extension
	function _G.string.stripExtension(path) end
	--- toColor - shared - libs_sh/string.lua#L25
	---@param str string The string to convert from
	---@return Color undefined The color object
	function _G.string.toColor(str) end
	--- startWith - shared - libs_sh/string.lua#L239
	---@param str string String to be checked
	---@param start string String to check with
	---@return boolean undefined True if the first string starts with the second
	function _G.string.startWith(str, start) end
	--- lower - shared - libs_sh/string.lua#L155
	---@param str string The string to convert
	---@return string undefined String with all uppercase letters replaced with their lowercase variants
	function _G.string.lower(str) end
	--- dump - shared - libs_sh/string.lua#L53
	---@param func function The function to get the bytecode of
	---@param strip boolean? True to strip the debug data, false to keep it. Defaults to false
	---@return string undefined The bytecode
	function _G.string.dump(func, strip) end
	--- getExtensionFromFilename - shared - libs_sh/string.lua#L101
	---@param str string File-path to get the file extensions from
	---@return string undefined The extension
	function _G.string.getExtensionFromFilename(str) end
	--- find - shared - libs_sh/string.lua#L75
	---@param haystack string The string to search in
	---@param needle string The string to find, can contain patterns if enabled
	---@param start number The position to start the search from, negative start position will be relative to the end position
	---@param noPatterns boolean? Disable patterns. Defaults to false
	---@return number? undefined Starting position of the found text, or nil if the text wasn't found
	---@return number? undefined Ending position of found text, or nil if the text wasn't found
	---@return string? undefined Matched text for each group if patterns are enabled and used, or nil if the text wasn't found
	function _G.string.find(haystack, needle, start, noPatterns) end
	--- explode - shared - libs_sh/string.lua#L67
	---@param separator string The separator that will split the string
	---@param str string The string to split up
	---@param patterns boolean? Set this to true if your separator is a pattern. Defaults to false
	---@return table undefined Table with the separated strings in numerical sequential order
	function _G.string.explode(separator, str, patterns) end
	--- byte - shared - libs_sh/string.lua#L33
	---@param str string The string to get the chars from
	---@param start number The first character of the string to get the byte of
	---@param _end number The last character of the string to get the byte of
	---@return ... undefined Vararg numerical bytes
	function _G.string.byte(str, start, _end) end
	--- toTable - shared - libs_sh/string.lua#L291
	---@param str string The string to turn into a table
	---@return table undefined A sequential table where each value is a character from the given string
	function _G.string.toTable(str) end
	--- toHoursMinutesSecondsMilliseconds - shared - libs_sh/string.lua#L282
	---@param time number Time in seconds
	---@return string undefined Returns given time in "HH:MM:SS.MS" format
	function _G.string.toHoursMinutesSecondsMilliseconds(time) end
	--- match - shared - libs_sh/string.lua#L161
	---@param str string String which should be searched in for matches
	---@param pattern string The pattern that defines what should be matched
	---@param start number? The start index to start the matching from, negative to start the match from a position relative to the end. Default 1
	---@return ... undefined Vararg matched string(s)
	function _G.string.match(str, pattern, start) end
	--- niceSize - shared - libs_sh/string.lua#L169
	---@param size number The filesize in bytes
	---@return string undefined The human-readable filesize, in Bytes/KB/MB/GB (whichever is appropriate)
	function _G.string.niceSize(size) end
--- sound
---  Sound library.
_G.sound = {}
	--- soundsLeft - shared - libs_sh/sound.lua#L102
	---@return number undefined The number of sounds left
	function _G.sound.soundsLeft() end
	--- duration - shared - libs_sh/sound.lua#L108
	---@param path string String path to the sound file
	---@return number undefined Number duration in seconds
	function _G.sound.duration(path) end
	--- create - shared - libs_sh/sound.lua#L61
	---@param ent Entity Entity to attach sound to.
	---@param path string Filepath to the sound file.
	---@param nofilter boolean? (Optional) Boolean Make the sound play for everyone regardless of range or location. Only affects Server-side sounds.
	---@return Sound undefined Sound Object
	function _G.sound.create(ent, path, nofilter) end
	--- canCreate - shared - libs_sh/sound.lua#L96
	---@return boolean undefined If it is possible to make a sound
	function _G.sound.canCreate() end
--- wire
---  Wire library. Handles wire inputs/outputs, wirelinks, etc.
_G.wire = {}
--- ports - server
--- 
---  Ports table. Reads from this table will read from the wire input
--- 
---  of the same name. Writes will write to the wire output of the same name.
_G.wire.ports = {
}	--- self - server - libs_sv/wire.lua#L458
	---@return Wirelink undefined Wirelink representing this entity
	function _G.wire.self() end
	--- getWirelink - server - libs_sv/wire.lua#L579
	---@param ent Entity Wire entity
	---@return Wirelink undefined Wirelink of the entity
	function _G.wire.getWirelink(ent) end
	--- adjustInputs - server - libs_sv/wire.lua#L345
	---@param names table An array of input names. May be modified by the function.
	---@param types table An array of input types. Can be shortcuts. May be modified by the function.
	function _G.wire.adjustInputs(names, types) end
	--- create - server - libs_sv/wire.lua#L473
	---@param entI Entity Entity with input
	---@param entO Entity Entity with output
	---@param inputname string Input to be wired
	---@param outputname string Output to be wired
	---@param width number? Width of the wire(optional)
	---@param color Color? Color of the wire(optional)
	---@param materialName string? Material of the wire(optional), Valid materials are cable/rope, cable/cable2, cable/xbeam, cable/redlaser, cable/blue_elec, cable/physbeam, cable/hydra, arrowire/arrowire, arrowire/arrowire2
	function _G.wire.create(entI, entO, inputname, outputname, width, color, materialName) end
	--- serverUUID - server - libs_sv/wire.lua#L466
	---@return string undefined Server UUID
	function _G.wire.serverUUID() end
	--- delete - server - libs_sv/wire.lua#L525
	---@param entI Entity Entity with input
	---@param inputname string Input to be un-wired
	function _G.wire.delete(entI, inputname) end
	--- getOutputs - server - libs_sv/wire.lua#L571
	---@param entO Entity Entity with output(s)
	---@return table undefined Table of entity's output names
	---@return table undefined Table of entity's output types
	function _G.wire.getOutputs(entO) end
	--- adjustPorts - server - libs_sv/wire.lua#L412
	---@param inputs table? (Optional) A key-value table with input port names as keys and types as values. e.g. {MyInput="number"} or {MyInput={type="number"}}. If nil, input ports won't be changed.
	---@param outputs table? (Optional) A key-value table with output port names as keys and types as values. e.g. {MyOutput="number"} or {MyOutput={type="number"}}. If nil, output ports won't be changed.
	function _G.wire.adjustPorts(inputs, outputs) end
	--- getInputs - server - libs_sv/wire.lua#L563
	---@param entI Entity Entity with input(s)
	---@return table undefined Table of entity's input names
	---@return table undefined Table of entity's input types
	function _G.wire.getInputs(entI) end
	--- adjustOutputs - server - libs_sv/wire.lua#L373
	---@param names table An array of output names. May be modified by the function.
	---@param types table An array of output types. Can be shortcuts. May be modified by the function.
	function _G.wire.adjustOutputs(names, types) end
--- render
--- 
---  Render library. Screens are 512x512 units. Most functions require
--- 
---  that you be in the rendering hook to call, otherwise an error is
--- 
---  thrown. +x is right, +y is down
_G.render = {}
--- Screen - client
--- 
_G.render.Screen = {
	---@type any
	--- Pretty name of model
	["Name"] = nil,
	---@type any
	--- Offset of screen from prop
	["offset"] = nil,
	---@type any
	--- Resolution/scale
	["RS"] = nil,
	---@type any
	--- Inverted Aspect ratio (height divided by width)
	["RatioX"] = nil,
	---@type any
	--- Corner of screen in local coordinates (relative to offset?)
	["x1"] = nil,
	---@type any
	--- Corner of screen in local coordinates (relative to offset?)
	["x2"] = nil,
	---@type any
	--- Corner of screen in local coordinates (relative to offset?)
	["y1"] = nil,
	---@type any
	--- Corner of screen in local coordinates (relative to offset?)
	["y2"] = nil,
	---@type any
	--- Screen plane offset in local coordinates (relative to offset?)
	["z"] = nil,
	---@type any
	--- Screen rotation
	["rot"] = nil,
}
--- Vertex - client
---  Vertex format
_G.render.Vertex = {
	---@type any
	--- X coordinate
	["x"] = nil,
	---@type any
	--- Y coordinate
	["y"] = nil,
	---@type any
	--- U coordinate (optional, default is 0)
	["u"] = nil,
	---@type any
	--- V coordinate (optional, default is 0)
	["v"] = nil,
}
	--- setRenderTargetTexture - client - libs_cl/render.lua#L1114
	---@param name string? Name of the render target to use
	function _G.render.setRenderTargetTexture(name) end
	--- getScreenEntity - client - libs_cl/render.lua#L1943
	---@return Entity undefined Entity of the screen or hud being rendered
	function _G.render.getScreenEntity() end
	--- setStencilCompareFunction - client - libs_cl/render.lua#L596
	---@param compareFunction number 
	function _G.render.setStencilCompareFunction(compareFunction) end
	--- enableScissorRect - client - libs_cl/render.lua#L693
	---@param startX number X start coordinate of the scissor rect.
	---@param startY number Y start coordinate of the scissor rect.
	---@param endX number X end coordinate of the scissor rect.
	---@param endY number Y end coordinate of the scissor rect.
	function _G.render.enableScissorRect(startX, startY, endX, endY) end
	--- getAngles - client - libs_cl/render.lua#L522
	function _G.render.getAngles() end
	--- setRGBA - client - libs_cl/render.lua#L825
	---@param r number Number, red value
	---@param g number Number, green value
	---@param b number Number, blue value
	---@param a number Number, alpha value
	function _G.render.setRGBA(r, g, b, a) end
	--- setFilterMag - client - libs_cl/render.lua#L1154
	---@param val number The filter function to use http://wiki.facepunch.com/gmod/Enums/TEXFILTER
	function _G.render.setFilterMag(val) end
	--- clearBuffersObeyStencil - client - libs_cl/render.lua#L572
	---@param r number Value of the red channel to clear the current rt with.
	---@param g number Value of the green channel to clear the current rt with.
	---@param b number Value of the blue channel to clear the current rt with.
	---@param a number Value of the alpha channel to clear the current rt with.
	---@param Clear boolean the depth buffer.
	function _G.render.clearBuffersObeyStencil(r, g, b, a, Clear) end
	--- renderViewsLeft - client - libs_cl/render.lua#L2155
	---@return number undefined How many render.renderView calls are left
	function _G.render.renderViewsLeft() end
	--- isInRenderView - client - libs_cl/render.lua#L2149
	---@return boolean undefined Whether render.renderView is being executed
	function _G.render.isInRenderView() end
	--- setLightingMode - client - libs_cl/render.lua#L809
	---@param mode number The lighting mode. 0 - Default, 1 - Fullbright, 2 - Increased Fullbright
	function _G.render.setLightingMode(mode) end
	--- popViewMatrix - client - libs_cl/render.lua#L772
	function _G.render.popViewMatrix() end
	--- overrideBlend - client - libs_cl/render.lua#L1725
	---@param on boolean Whether to control the blend mode of upcoming rendering
	---@param srcBlend number http://wiki.facepunch.com/gmod/Enums/BLEND
	---@param destBlend number 
	---@param blendFunc number http://wiki.facepunch.com/gmod/Enums/BLENDFUNC
	---@param srcBlendAlpha number? http://wiki.facepunch.com/gmod/Enums/BLEND
	---@param destBlendAlpha number? 
	---@param blendFuncAlpha number? http://wiki.facepunch.com/gmod/Enums/BLENDFUNC
	function _G.render.overrideBlend(on, srcBlend, destBlend, blendFunc, srcBlendAlpha, destBlendAlpha, blendFuncAlpha) end
	--- setFogHeight - client - libs_cl/render.lua#L2276
	---@param height number The fog height
	function _G.render.setFogHeight(height) end
	--- drawCircle - client - libs_cl/render.lua#L1270
	---@param x number Center x coordinate
	---@param y number Center y coordinate
	---@param r number Radius
	function _G.render.drawCircle(x, y, r) end
	--- drawPixelsSubrectRGBA - client - libs_cl/render.lua#L1498
	---@param dstX number Destination x coordinate
	---@param dstY number Destination y coordinate
	---@param srcX number Source x coordinate
	---@param srcY number Source y coordinate
	---@param srcW number Source original width
	---@param srcH number Source original height
	---@param subrectW number Width of subrect
	---@param subrectH number Height of subrect
	---@param dataR table Red channel data.
	---@param dataG table Green channel data.
	---@param dataB table Blue channel data.
	---@param dataA table Alpha channel data.
	function _G.render.drawPixelsSubrectRGBA(dstX, dstY, srcX, srcY, srcW, srcH, subrectW, subrectH, dataR, dataG, dataB, dataA) end
	--- draw3DSprite - client - libs_cl/render.lua#L1752
	---@param pos Vector Position of the sprite.
	---@param width number Width of the sprite.
	---@param height number Height of the sprite.
	---@param Color Color? tint to give the sprite. Default: white
	function _G.render.draw3DSprite(pos, width, height, Color) end
	--- drawTexturedRectRotatedFast - client - libs_cl/render.lua#L1402
	---@param x number X coordinate of center of rect
	---@param y number Y coordinate of center of rect
	---@param w number Width
	---@param h number Height
	---@param rot number Rotation in degrees
	function _G.render.drawTexturedRectRotatedFast(x, y, w, h, rot) end
	--- getDefaultFont - client - libs_cl/render.lua#L1638
	---@return string undefined Default font
	function _G.render.getDefaultFont() end
	--- setFilterMin - client - libs_cl/render.lua#L1165
	---@param val number The filter function to use http://wiki.facepunch.com/gmod/Enums/TEXFILTER
	function _G.render.setFilterMin(val) end
	--- drawPixelsRGBA - client - libs_cl/render.lua#L1459
	---@param w number Width of image to be drawn.
	---@param h number Height of image to be drawn.
	---@param dataR table Red channel data.
	---@param dataG table Green channel data.
	---@param dataB table Blue channel data.
	---@param dataA table Alpha channel data.
	function _G.render.drawPixelsRGBA(w, h, dataR, dataG, dataB, dataA) end
	--- drawText - client - libs_cl/render.lua#L1644
	---@param x number X coordinate
	---@param y number Y coordinate
	---@param text string Text to draw
	---@param alignment number Horizontal text alignment. Default TEXT_ALIGN.LEFT
	function _G.render.drawText(x, y, text, alignment) end
	--- drawRoundedBox - client - libs_cl/render.lua#L1198
	---@param r number The corner radius
	---@param x number Top left corner x coordinate
	---@param y number Top left corner y coordinate
	---@param w number Width
	---@param h number Height
	function _G.render.drawRoundedBox(r, x, y, w, h) end
	--- depthRange - client - libs_cl/render.lua#L2341
	---@param min number The minimum depth of the upcoming render. 0.0 = render normally; 1.0 = render nothing.
	---@param max number The maximum depth of the upcoming render. 0.0 = render everything (through walls); 1.0 = render normally.
	function _G.render.depthRange(min, max) end
	--- setMaterial - client - libs_cl/render.lua#L863
	---@param mat Material The material object
	function _G.render.setMaterial(mat) end
	--- enableClipping - client - libs_cl/render.lua#L2161
	---@param state boolean New clipping state.
	---@return boolean undefined Previous clipping state.
	function _G.render.enableClipping(state) end
	--- drawSimpleText - client - libs_cl/render.lua#L1657
	---@param x number X coordinate
	---@param y number Y coordinate
	---@param text string Text to draw
	---@param xalign number? Horizontal text alignment. Default TEXT_ALIGN.LEFT
	---@param yalign number? Vertical text alignment. Default TEXT_ALIGN.TOP
	---@return number undefined Width of the drawn text. Same as calling render.getTextSize
	---@return number undefined Height of the drawn text. Same as calling render.getTextSize
	function _G.render.drawSimpleText(x, y, text, xalign, yalign) end
	--- draw3DBox - client - libs_cl/render.lua#L1799
	---@param origin Vector Origin of the box.
	---@param angle Angle Orientation of the box
	---@param mins Vector Start position of the box, relative to origin.
	---@param maxs Vector End position of the box, relative to origin.
	function _G.render.draw3DBox(origin, angle, mins, maxs) end
	--- screenShake - client - libs_cl/render.lua#L2332
	---@param amplitude number The strength of the effect
	---@param frequency number The frequency of the effect in hertz
	---@param duration number The duration of the effect in seconds, max 10.
	function _G.render.screenShake(amplitude, frequency, duration) end
	--- createMaterial - client - libs_cl/render.lua#L836
	---@param tx string Texture file path, a http url, or image data: https://en.wikipedia.org/wiki/Data_URI_scheme
	---@param cb function? An optional callback called when loading is done. Passes nil if it fails or Passes the material, url, width, height, and layout function which can be called with x, y, w, h to reposition the image in the texture.
	---@param done function? An optional callback called when the image is done loading. Passes the material, url
	---@return Material undefined The material. Use with render.setMaterial to draw with it.
	function _G.render.createMaterial(tx, cb, done) end
	--- createFont - client - libs_cl/render.lua#L1533
	---@param font string Base font to use
	---@param size number? Font size. Default 16
	---@param weight number? Font weight. Default 400
	---@param antialias boolean? Antialias font? Default false
	---@param additive boolean? If true, adds brightness to pixels behind it rather than drawing over them. Default false
	---@param shadow boolean? Enable drop shadow? Default false
	---@param outline boolean? Enable outline? Default false
	---@param blursize boolean? The size of the blur Default 0
	---@param extended boolean? Allows the font to display glyphs outside of Latin-1 range. Unicode code points above 0xFFFF are not supported. Required to use FontAwesome
	---@param scanlines number? Scanline interval. Must be greater than 1 to work. Shares uniqueness with blursize so you cannot create more than one scanline type of font with the same blursize. Default 0
	---@return string undefined The font name that can be used with the rest of the font functions.
	function _G.render.createFont(font, size, weight, antialias, additive, shadow, outline, blursize, extended, scanlines) end
	--- setChipOverlay - client - libs_cl/render.lua#L2294
	---@param name string? The name of the RT to use or nil to set it back to normal
	function _G.render.setChipOverlay(name) end
	--- drawRoundedBoxEx - client - libs_cl/render.lua#L1209
	---@param r number The corner radius
	---@param x number Top left corner x coordinate
	---@param y number Top left corner y coordinate
	---@param w number Width
	---@param h number Height
	---@param tl boolean? Top left corner. Default false
	---@param tr boolean? Top right corner. Default false
	---@param bl boolean? Bottom left corner. Default false
	---@param br boolean? Bottom right corner. Default false
	function _G.render.drawRoundedBoxEx(r, x, y, w, h, tl, tr, bl, br) end
	--- setFogEnd - client - libs_cl/render.lua#L2267
	---@param distance number End distance
	function _G.render.setFogEnd(distance) end
	--- setFogStart - client - libs_cl/render.lua#L2258
	---@param distance number Start distance
	function _G.render.setFogStart(distance) end
	--- setFogDensity - client - libs_cl/render.lua#L2249
	---@param density number Density between 0 and 1
	function _G.render.setFogDensity(density) end
	--- setFogColor - client - libs_cl/render.lua#L2239
	---@param col Color Color (alpha won't have any effect)
	function _G.render.setFogColor(col) end
	--- drawRectOutline - client - libs_cl/render.lua#L1259
	---@param x number Top left corner x integer coordinate
	---@param y number Top left corner y integer coordinate
	---@param w number Width
	---@param h number Height
	---@param thickness number? Optional inset border width
	function _G.render.drawRectOutline(x, y, w, h, thickness) end
	--- parseMarkup - client - libs_cl/render.lua#L1673
	---@param str string The markup string to parse
	---@param maxsize number? The max width of the markup. Default nil
	---@return Markup undefined The markup object. See https://wiki.facepunch.com/gmod/markup.Parse
	function _G.render.parseMarkup(str, maxsize) end
	--- setFogMode - client - libs_cl/render.lua#L2230
	---@param mode number Fog mode
	function _G.render.setFogMode(mode) end
	--- getAmbientLightColor - client - libs_cl/render.lua#L2224
	---@return Vector undefined Vector representing color of the light
	function _G.render.getAmbientLightColor() end
	--- drawTexturedRectUV - client - libs_cl/render.lua#L1355
	---@param x number Top left corner x
	---@param y number Top left corner y
	---@param w number Width
	---@param h number Height
	---@param startU number Texture mapping at rectangle origin
	---@param startV number Texture mapping at rectangle origin
	---@param endU number Texture mapping at rectangle end
	---@param endV number Texture mapping at rectangle end
	function _G.render.drawTexturedRectUV(x, y, w, h, startU, startV, endU, endV) end
	--- renderView - client - libs_cl/render.lua#L2013
	---@param tbl table view The view data to be used in the rendering. See http://wiki.facepunch.com/gmod/Structures/ViewData. There's an additional key drawviewer used to tell the engine whether the local player model should be rendered.
	function _G.render.renderView(tbl) end
	--- getResolution - client - libs_cl/render.lua#L1980
	---@return number undefined the X size of the current render context
	---@return number undefined the Y size of the current render context
	function _G.render.getResolution() end
	--- computeDynamicLighting - client - libs_cl/render.lua#L2209
	---@param pos Vector Vector position to sample from
	---@param normal Vector Normal vector of the surface
	---@return Vector undefined Vector representing color of the light
	function _G.render.computeDynamicLighting(pos, normal) end
	--- traceSurfaceColor - client - libs_cl/render.lua#L1999
	---@param vec1 Vector The starting vector
	---@param vec2 Vector The ending vector
	---@return Color undefined The color
	function _G.render.traceSurfaceColor(vec1, vec2) end
	--- drawPixelsSubrectRGB - client - libs_cl/render.lua#L1475
	---@param dstX number Destination x coordinate
	---@param dstY number Destination y coordinate
	---@param srcX number Source x coordinate
	---@param srcY number Source y coordinate
	---@param srcW number Source original width
	---@param srcH number Source original height
	---@param subrectW number Width of subrect
	---@param subrectH number Height of subrect
	---@param dataR table Red channel data.
	---@param dataG table Green channel data.
	---@param dataB table Blue channel data.
	function _G.render.drawPixelsSubrectRGB(dstX, dstY, srcX, srcY, srcW, srcH, subrectW, subrectH, dataR, dataG, dataB) end
	--- drawTexturedRectRotated - client - libs_cl/render.lua#L1415
	---@param x number X coordinate of center of rect
	---@param y number Y coordinate of center of rect
	---@param w number Width
	---@param h number Height
	---@param rot number Rotation in degrees
	function _G.render.drawTexturedRectRotated(x, y, w, h, rot) end
	--- resetModelLighting - client - libs_cl/render.lua#L563
	---@param r number The red part of the color, 0-1
	---@param g number The green part of the color, 0-1
	---@param b number The blue part of the color, 0-1
	function _G.render.resetModelLighting(r, g, b) end
	--- clear - client - libs_cl/render.lua#L1184
	---@param clr Color? Color type to clear with
	---@param depth boolean? Boolean if should clear depth. Default false
	function _G.render.clear(clr, depth) end
	--- computeLighting - client - libs_cl/render.lua#L2201
	---@param pos Vector Vector position to sample from
	---@param normal Vector Normal vector of the surface
	---@return Vector undefined Vector representing color of the light
	function _G.render.computeLighting(pos, normal) end
	--- popCustomClipPlane - client - libs_cl/render.lua#L2191
	function _G.render.popCustomClipPlane() end
	--- setStencilReferenceValue - client - libs_cl/render.lua#L628
	---@param referenceValue number Reference value.
	function _G.render.setStencilReferenceValue(referenceValue) end
	--- draw3DLine - client - libs_cl/render.lua#L1788
	---@param startPos Vector Starting position
	---@param endPos Vector Ending position
	function _G.render.draw3DLine(startPos, endPos) end
	--- pushCustomClipPlane - client - libs_cl/render.lua#L2176
	---@param normal Vector The normal of the clipping plane.
	---@param distance number The normal of the clipping plane.
	function _G.render.pushCustomClipPlane(normal, distance) end
	--- setModelLighting - client - libs_cl/render.lua#L553
	---@param lightDirection number The light source to edit, builtins.BOX enumeration.
	---@param r number The red component of the light color.
	---@param g number The green component of the light color.
	---@param b number The blue component of the light color.
	function _G.render.setModelLighting(lightDirection, r, g, b) end
	--- getLightColor - client - libs_cl/render.lua#L2217
	---@param pos Vector Vector position to sample from
	---@return Vector undefined Vector representing color of the light
	function _G.render.getLightColor(pos) end
	--- isHUDActive - client - libs_cl/render.lua#L2007
	---@return boolean undefined Whether a hud component is connected to the SF Chip and active
	function _G.render.isHUDActive() end
	--- draw3DWireframeBox - client - libs_cl/render.lua#L1814
	---@param origin Vector Origin of the box.
	---@param angle Angle Orientation of the box
	---@param mins Vector Start position of the box, relative to origin.
	---@param maxs Vector End position of the box, relative to origin.
	function _G.render.draw3DWireframeBox(origin, angle, mins, maxs) end
	--- draw3DWireframeSphere - client - libs_cl/render.lua#L1775
	---@param pos Vector Position of the sphere
	---@param radius number Radius of the sphere
	---@param longitudeSteps number The amount of longitude steps. The larger this number is, the smoother the sphere is
	---@param latitudeSteps number The amount of latitude steps. The larger this number is, the smoother the sphere is
	function _G.render.draw3DWireframeSphere(pos, radius, longitudeSteps, latitudeSteps) end
	--- setFont - client - libs_cl/render.lua#L1607
	---@param font string The font to use
	function _G.render.setFont(font) end
	--- setMaterialEffectColorModify - client - libs_cl/render.lua#L975
	---@param mat Material The material object to use the texture of, or the name of a rendertarget to use instead.
	---@param cmStructure table A table where each key must be of "addr", "addg", "addb", "brightness", "color" or "colour", "contrast", "mulr", "mulg", and "mulb". All keys are optional.
	function _G.render.setMaterialEffectColorModify(mat, cmStructure) end
	--- resetStencil - client - libs_cl/render.lua#L652
	function _G.render.resetStencil() end
	--- drawTexturedRect - client - libs_cl/render.lua#L1320
	---@param x number Top left corner x
	---@param y number Top left corner y
	---@param w number Width
	---@param h number Height
	function _G.render.drawTexturedRect(x, y, w, h) end
	--- setScreenDimensions - client - libs_cl/render.lua#L2306
	---@param screen Entity The custom screen to be resized
	---@param x number The x offset of the screen
	---@param y number The y offset of the screen
	---@param w number The width of the screen
	---@param h number The height of the screen
	function _G.render.setScreenDimensions(screen, x, y, w, h) end
	--- getGameResolution - client - libs_cl/render.lua#L1991
	---@return number undefined the X size of the game window
	---@return number undefined the Y size of the game window
	function _G.render.getGameResolution() end
	--- draw3DQuad - client - libs_cl/render.lua#L1843
	---@param vert1 Vector First vertex.
	---@param vert2 Vector The second vertex.
	---@param vert3 Vector The third vertex.
	---@param vert4 Vector The fourth vertex.
	function _G.render.draw3DQuad(vert1, vert2, vert3, vert4) end
	--- getOrigin - client - libs_cl/render.lua#L517
	function _G.render.getOrigin() end
	--- cursorPos - client - libs_cl/render.lua#L1889
	---@param ply Player? player to get cursor position from. Default player()
	---@param screen Entity? An explicit screen to get the cursor pos of (default: The current rendering screen using 'render' hook)
	---@return number undefined X position
	---@return number undefined Y position
	function _G.render.cursorPos(ply, screen) end
	--- setColor - client - libs_cl/render.lua#L817
	---@param clr Color Color type
	function _G.render.setColor(clr) end
	--- setTextureFromScreen - client - libs_cl/render.lua#L1137
	---@param ent Entity Screen entity
	function _G.render.setTextureFromScreen(ent) end
	--- getScreenInfo - client - libs_cl/render.lua#L1933
	---@param e Entity The screen to get info from.
	---@return table undefined A table describing the screen.
	function _G.render.getScreenInfo(e) end
	--- setBackgroundColor - client - libs_cl/render.lua#L785
	---@param col Color Color of background
	---@param screen Entity? (Optional) entity of screen
	function _G.render.setBackgroundColor(col, screen) end
	--- setStencilZFailOperation - client - libs_cl/render.lua#L620
	---@param operation number 
	function _G.render.setStencilZFailOperation(operation) end
	--- capturePixels - client - libs_cl/render.lua#L1949
	function _G.render.capturePixels() end
	--- drawTexturedRectFast - client - libs_cl/render.lua#L1309
	---@param x number Top left corner x
	---@param y number Top left corner y
	---@param w number Width
	---@param h number Height
	function _G.render.drawTexturedRectFast(x, y, w, h) end
	--- setStencilPassOperation - client - libs_cl/render.lua#L612
	---@param operation number 
	function _G.render.setStencilPassOperation(operation) end
	--- draw3DBeam - client - libs_cl/render.lua#L1829
	---@param startPos Vector Beam start position.
	---@param endPos Vector Beam end position.
	---@param width number The width of the beam.
	---@param textureStart number The start coordinate of the texture used.
	---@param textureEnd number The end coordinate of the texture used.
	function _G.render.draw3DBeam(startPos, endPos, width, textureStart, textureEnd) end
	--- setMaterialEffectSub - client - libs_cl/render.lua#L902
	---@param mat Material The material object to use the texture of, or the name of a rendertarget to use instead.
	function _G.render.setMaterialEffectSub(mat) end
	--- drawBlurEffect - client - libs_cl/render.lua#L1008
	---@param blurx number The amount of horizontal blur to apply.
	---@param blury number The amount of vertical blur to apply.
	---@param passes number The number of times the blur effect is applied.
	function _G.render.drawBlurEffect(blurx, blury, passes) end
	--- setMaterialEffectDownsample - client - libs_cl/render.lua#L942
	---@param mat Material The material object to use the texture of, or the name of a rendertarget to use instead.
	---@param darken number The amount to darken the texture by. -1 to 1 inclusive.
	---@param multiply number The amount to multiply the pixel colors by. (0-1024)
	function _G.render.setMaterialEffectDownsample(mat, darken, multiply) end
	--- drawPoly - client - libs_cl/render.lua#L1712
	---@param poly table Table of polygon vertices. Texture coordinates are optional. {{x=x1, y=y1, u=u1, v=v1}, ... }
	function _G.render.drawPoly(poly) end
	--- captureImage - client - libs_cl/render.lua#L1956
	---@param captureData table Parameters of the capture. See https://wiki.facepunch.com/gmod/Structures/RenderCaptureData
	---@return string undefined Image binary data
	function _G.render.captureImage(captureData) end
	--- setCullMode - client - libs_cl/render.lua#L1176
	---@param mode number Cull mode. 0 for counter clock wise, 1 for clock wise
	function _G.render.setCullMode(mode) end
	--- drawRect - client - libs_cl/render.lua#L1247
	---@param x number Top left corner x
	---@param y number Top left corner y
	---@param w number Width
	---@param h number Height
	function _G.render.drawRect(x, y, w, h) end
	--- readPixel - client - libs_cl/render.lua#L1969
	---@param x number Pixel x-coordinate.
	---@param y number Pixel y-coordinate.
	---@return Color undefined Color object with ( r, g, b, a ) from the specified pixel.
	function _G.render.readPixel(x, y) end
	--- suppressEngineLighting - client - libs_cl/render.lua#L546
	---@param suppress boolean True to suppress false to enable.
	function _G.render.suppressEngineLighting(suppress) end
	--- pushMatrix - client - libs_cl/render.lua#L668
	---@param m VMatrix The matrix
	---@param world boolean? Should the transformation be relative to the screen or world?
	function _G.render.pushMatrix(m, world) end
	--- setStencilTestMask - client - libs_cl/render.lua#L636
	---@param mask number The mask bitflag.
	function _G.render.setStencilTestMask(mask) end
	--- destroyRenderTarget - client - libs_cl/render.lua#L1053
	---@param name string Rendertarget name
	function _G.render.destroyRenderTarget(name) end
	--- drawLine - client - libs_cl/render.lua#L1523
	---@param x1 number X start float coordinate
	---@param y1 number Y start float coordinate
	---@param x2 number X end float coordinate
	---@param y2 number Y end float coordinate
	function _G.render.drawLine(x1, y1, x2, y2) end
	--- pushViewMatrix - client - libs_cl/render.lua#L726
	---@param tbl table The view matrix data. See http://wiki.facepunch.com/gmod/Structures/RenderCamData
	function _G.render.pushViewMatrix(tbl) end
	--- drawPixelsRGB - client - libs_cl/render.lua#L1443
	---@param w number Width of image to be drawn.
	---@param h number Height of image to be drawn.
	---@param dataR table Red channel data.
	---@param dataG table Green channel data.
	---@param dataB table Blue channel data.
	function _G.render.drawPixelsRGB(w, h, dataR, dataG, dataB) end
	--- setStencilEnable - client - libs_cl/render.lua#L532
	---@param enable boolean True to enable, false to disable
	function _G.render.setStencilEnable(enable) end
	--- getTextSize - client - libs_cl/render.lua#L1598
	---@param text string Text to get the size of
	---@return number undefined width of the text
	---@return number undefined height of the text
	function _G.render.getTextSize(text) end
	--- drawFilledCircle - client - libs_cl/render.lua#L1279
	---@param x number Center x coordinate
	---@param y number Center y coordinate
	---@param r number Radius
	function _G.render.drawFilledCircle(x, y, r) end
	--- disableScissorRect - client - libs_cl/render.lua#L703
	function _G.render.disableScissorRect() end
	--- setMaterialEffectAdd - client - libs_cl/render.lua#L888
	---@param mat Material The material object to use the texture of, or the name of a rendertarget to use instead.
	function _G.render.setMaterialEffectAdd(mat) end
	--- draw3DSphere - client - libs_cl/render.lua#L1762
	---@param pos Vector Position of the sphere
	---@param radius number Radius of the sphere
	---@param longitudeSteps number The amount of longitude steps. The larger this number is, the smoother the sphere is
	---@param latitudeSteps number The amount of latitude steps. The larger this number is, the smoother the sphere is
	function _G.render.draw3DSphere(pos, radius, longitudeSteps, latitudeSteps) end
	--- createRenderTarget - client - libs_cl/render.lua#L1037
	---@param name string The name of the render target
	function _G.render.createRenderTarget(name) end
	--- clearDepth - client - libs_cl/render.lua#L1744
	function _G.render.clearDepth() end
	--- setStencilFailOperation - client - libs_cl/render.lua#L604
	---@param operation number 
	function _G.render.setStencilFailOperation(operation) end
	--- popMatrix - client - libs_cl/render.lua#L709
	function _G.render.popMatrix() end
	--- setMaterialEffectBloom - client - libs_cl/render.lua#L916
	---@param mat Material The material object to use the texture of, or the name of a rendertarget to use instead.
	---@param levelr number Multiplier for all red pixels. 1 = unchanged
	---@param levelg number Multiplier for all green pixels. 1 = unchanged
	---@param levelb number Multiplier for all blue pixels. 1 = unchanged
	---@param colormul number Multiplier for all three colors. 1 = unchanged
	function _G.render.setMaterialEffectBloom(mat, levelr, levelg, levelb, colormul) end
	--- destroyTexture - client - libs_cl/render.lua#L857
	---@param mat Material The material object
	function _G.render.destroyTexture(mat) end
	--- getEye - client - libs_cl/render.lua#L527
	function _G.render.getEye() end
	--- enableDepth - client - libs_cl/render.lua#L1718
	---@param enable boolean True to enable
	function _G.render.enableDepth(enable) end
	--- clearStencilBufferRectangle - client - libs_cl/render.lua#L584
	---@param originX number X origin of the rectangle.
	---@param originY number Y origin of the rectangle.
	---@param endX number The end X coordinate of the rectangle.
	---@param endY number The end Y coordinate of the rectangle.
	---@param stencilValue number Value to set cleared stencil buffer to.
	function _G.render.clearStencilBufferRectangle(originX, originY, endX, endY, stencilValue) end
	--- drawTexturedRectUVFast - client - libs_cl/render.lua#L1331
	---@param x number Top left corner x
	---@param y number Top left corner y
	---@param w number Width
	---@param h number Height
	---@param startU number Texture mapping at rectangle's origin U
	---@param startV number Texture mapping at rectangle's origin V
	---@param endU number Texture mapping at rectangle's end U
	---@param endV number Texture mapping at rectangle's end V
	---@param UVHack boolean? If enabled, will scale the UVs to compensate for internal bug. Should be true for user created materials.
	function _G.render.drawTexturedRectUVFast(x, y, w, h, startU, startV, endU, endV, UVHack) end
	--- clearStencil - client - libs_cl/render.lua#L540
	function _G.render.clearStencil() end
	--- selectRenderTarget - client - libs_cl/render.lua#L1066
	---@param name string? Name of the render target to use
	function _G.render.selectRenderTarget(name) end
	--- draw3DQuadUV - client - libs_cl/render.lua#L1859
	---@param vert1 Vector First vertex. {x, y, z, u, v}
	---@param vert2 Vector The second vertex.
	---@param vert3 Vector The third vertex.
	---@param vert4 Vector The fourth vertex.
	function _G.render.draw3DQuadUV(vert1, vert2, vert3, vert4) end
	--- drawRectFast - client - libs_cl/render.lua#L1236
	---@param x number Top left corner x
	---@param y number Top left corner y
	---@param w number Width
	---@param h number Height
	function _G.render.drawRectFast(x, y, w, h) end
	--- renderTargetExists - client - libs_cl/render.lua#L1030
	---@param name string The name of the render target
	function _G.render.renderTargetExists(name) end
	--- setStencilWriteMask - client - libs_cl/render.lua#L644
	---@param mask number The mask bitflag.
	function _G.render.setStencilWriteMask(mask) end
--- socket
--- 
---  Socket library. Only usable by owner of starfall.
--- 
---  See the WebSocket type for a version of this that doesn't require a DLL, and supports secure websockets (wss)
--- 
---  Beware "Blocking" functions; they will freeze the game. See http://w3.impa.br/~diego/software/luasocket/socket.html
--- 
---  Install the gmcl_socket.core_*.dll binary file to lua/bin and create a 'gm_socket_whitelist.txt' file in steamapps/common
--- 
---  Each line in the whitelist will allow luasocket to access the specified domain and port. They are formatted as 'domain:port' e.g. 'garrysmod.com:80', '*.com:80' '95.123.12.22:27015'
_G.socket = {}
	--- connect4 - client - libs_cl/socket.lua#L241
	---@param addr number Address to connect to
	---@param port number Port to connect to
	---@param laddr number? Local address to bind to
	---@param lport number? Local port to bind to
	---@return table undefined client TCPClient object. Nil if error
	---@return string? undefined error Error string if the previous return was nil, else nil
	function _G.socket.connect4(addr, port, laddr, lport) end
	--- tcp6 - client - libs_cl/socket.lua#L189
	---@return table undefined New IPv6 TCP Master Object, or nil if error
	---@return string? undefined The error message, or nil if no error
	function _G.socket.tcp6() end
	--- udp4 - client - libs_cl/socket.lua#L208
	---@return table undefined New IPv4 UDP master object, or nil in case of error.
	---@return string? undefined The error string if errored, else nil
	function _G.socket.udp4() end
	--- connect - client - libs_cl/socket.lua#L227
	---@param addr number Address to connect to
	---@param port number Port to connect to
	---@param laddr number? Local address to bind to
	---@param lport number? Local port to bind to
	---@param family string? Socket family, either "inet" or "inet6".
	---@return table undefined client TCPClient object. Nil if error
	---@return string? undefined error Error string if the previous return was nil, else nil
	function _G.socket.connect(addr, port, laddr, lport, family) end
	--- udp - client - libs_cl/socket.lua#L199
	---@return table undefined New IPv4 TCP master object, or nil in case of error.
	---@return string? undefined The error string if errored, else nil
	function _G.socket.udp() end
	--- tcp4 - client - libs_cl/socket.lua#L180
	---@return table undefined New IPv4 TCP Master Object, or nil if error
	---@return string? undefined The error message, or nil if no error
	function _G.socket.tcp4() end
	--- tcp - client - libs_cl/socket.lua#L171
	---@return table undefined New IPv4 TCP Master Object, or nil if error
	---@return string? undefined The error message, or nil if no error
	function _G.socket.tcp() end
	--- udp6 - client - libs_cl/socket.lua#L217
	---@return table undefined New IPv6 UDP master object, or nil in case of error.
	---@return string? undefined The error string if errored, else nil
	function _G.socket.udp6() end
	--- connect6 - client - libs_cl/socket.lua#L253
	---@param addr number Address to connect to
	---@param port number Port to connect to
	---@param laddr number? Local address to bind to
	---@param lport number? Local port to bind to
	---@return table undefined client TCPClient object. Nil if error
	---@return string? undefined error Error string if the previous return was nil, else nil
	function _G.socket.connect6(addr, port, laddr, lport) end
---  NavArea type, returned by navmesh library functions
---@class NavArea
_G.NavArea = {}
	--- getCenter - server - libs_sv/navmesh.lua#L390
	---@return Vector undefined The center vector.
	function _G.NavArea:getCenter() end
	--- getSizeX - server - libs_sv/navmesh.lua#L518
	---@return number undefined Width
	function _G.NavArea:getSizeX() end
	--- getAdjacentAreas - server - libs_sv/navmesh.lua#L337
	---@return table undefined A table of all CNavArea that have a ( one and two way ) connection from this CNavArea.
	function _G.NavArea:getAdjacentAreas() end
	--- isConnectedAtSide - server - libs_sv/navmesh.lua#L295
	---@param other NavArea The other NavArea to check for connection to.
	---@param navDirType number The direction, in which to look for the connection. See NAV_DIR enums
	---@return boolean undefined 
	function _G.NavArea:isConnectedAtSide(other, navDirType) end
	--- setParent - server - libs_sv/navmesh.lua#L689
	---@param parent NavArea The new parent to set
	---@param how number How we get from parent to us using NAV_TRAVERSE_TYPE
	function _G.NavArea:setParent(parent, how) end
	--- hasAttributes - server - libs_sv/navmesh.lua#L547
	---@param attributes number Attribute mask to check for, see NAV_MESH enums
	---@return boolean undefined True if the CNavArea matches the given mask. False otherwise.
	function _G.NavArea:hasAttributes(attributes) end
	--- getParentHow - server - libs_sv/navmesh.lua#L488
	---@return number undefined 
	function _G.NavArea:getParentHow() end
	--- getCorner - server - libs_sv/navmesh.lua#L405
	---@param cornerId number The target corner to get the position of, takes NAV_CORNER.
	---@return Vector undefined The vector position of the corner.
	function _G.NavArea:getCorner(cornerId) end
	--- computeGroundHeightChange - server - libs_sv/navmesh.lua#L321
	---@param other NavArea The nav area to test against.
	---@return number undefined 
	function _G.NavArea:computeGroundHeightChange(other) end
	--- clearSearchLists - server - libs_sv/navmesh.lua#L751
	function _G.NavArea:clearSearchLists() end
	--- isOpen - server - libs_sv/navmesh.lua#L239
	---@return boolean undefined Whether this area is in the Open List.
	function _G.NavArea:isOpen() end
	--- addToOpenList - server - libs_sv/navmesh.lua#L744
	function _G.NavArea:addToOpenList() end
	--- addToClosedList - server - libs_sv/navmesh.lua#L739
	function _G.NavArea:addToClosedList() end
	--- getClosestPointOnArea - server - libs_sv/navmesh.lua#L397
	---@param pos Vector The given position, can be outside of the NavArea bounds.
	---@return Vector undefined The closest point on the NavArea.
	function _G.NavArea:getClosestPointOnArea(pos) end
	--- addHidingSpot - server - libs_sv/navmesh.lua#L724
	---@param pos Vector The position of the hiding spot on the nav area
	---@param flags number Flags describing what kind of hiding spot this is.
	function _G.NavArea:addHidingSpot(pos, flags) end
	--- disconnect - server - libs_sv/navmesh.lua#L717
	---@param other NavArea The other NavArea to disconnect from.
	function _G.NavArea:disconnect(other) end
	--- updateOnOpenList - server - libs_sv/navmesh.lua#L712
	function _G.NavArea:updateOnOpenList() end
	--- getAttributes - server - libs_sv/navmesh.lua#L383
	---@return number undefined Attribute mask for this CNavArea, see NAV_MESH for the specific flags.
	function _G.NavArea:getAttributes() end
	--- setTotalCost - server - libs_sv/navmesh.lua#L705
	---@param cost number The total cost of the path to set. (>= 0)
	function _G.NavArea:setTotalCost(cost) end
	--- computeDirection - server - libs_sv/navmesh.lua#L313
	---@param pos Vector The position to compute direction towards.
	---@return number undefined The direction the vector is in relation to this NavArea. See NAV_DIR enums
	function _G.NavArea:computeDirection(pos) end
	--- getRandomPoint - server - libs_sv/navmesh.lua#L511
	---@return Vector undefined The random point on the nav area.
	function _G.NavArea:getRandomPoint() end
	--- placeOnGround - server - libs_sv/navmesh.lua#L636
	---@param corner number The corner(s) to drop, uses NAV_CORNER enums
	function _G.NavArea:placeOnGround(corner) end
	--- connectTo - server - libs_sv/navmesh.lua#L756
	---@param other NavArea The CNavArea this area leads to.
	function _G.NavArea:connectTo(other) end
	--- setPlace - server - libs_sv/navmesh.lua#L697
	---@param place string? Place to set. Leave as nil to remove place from NavArea
	---@return boolean undefined True if operation succeeded, false otherwise.
	function _G.NavArea:setPlace(place) end
	--- setCorner - server - libs_sv/navmesh.lua#L674
	---@param corner number The corner to set, uses NAV_CORNER enums
	---@param pos Vector The new position to set.
	function _G.NavArea:setCorner(corner, pos) end
	--- getIncomingConnections - server - libs_sv/navmesh.lua#L452
	---@return table undefined Table of all CNavAreas with one-way connection to this CNavArea.
	function _G.NavArea:getIncomingConnections() end
	--- isOpenListEmpty - server - libs_sv/navmesh.lua#L248
	---@return boolean undefined Whether the Open List is empty or not.
	function _G.NavArea:isOpenListEmpty() end
	--- getParent - server - libs_sv/navmesh.lua#L481
	---@return NavArea undefined The parent NavArea
	function _G.NavArea:getParent() end
	--- getIncomingConnectionsAtSide - server - libs_sv/navmesh.lua#L465
	---@param navDir number The direction, from which to look for CNavAreas, see NAV_DIR enums.
	---@return table undefined Table of all CNavAreas with one-way connection to this CNavArea from given direction.
	function _G.NavArea:getIncomingConnectionsAtSide(navDir) end
	--- isValid - server - libs_sv/navmesh.lua#L257
	---@return boolean undefined Whether this NavArea is valid or not
	function _G.NavArea:isValid() end
	--- isConnected - server - libs_sv/navmesh.lua#L286
	---@param other NavArea The other NavArea to check for connection to.
	---@return boolean undefined Whether this NavArea has an outgoing ( one or two way ) connection to given NavArea.
	function _G.NavArea:isConnected(other) end
	--- isFlat - server - libs_sv/navmesh.lua#L279
	---@return boolean undefined Whether this NavArea is mostly flat.
	function _G.NavArea:isFlat() end
	--- setCostSoFar - server - libs_sv/navmesh.lua#L682
	---@param cost number The cost so far
	function _G.NavArea:setCostSoFar(cost) end
	--- removeFromClosedList - server - libs_sv/navmesh.lua#L662
	function _G.NavArea:removeFromClosedList() end
	--- remove - server - libs_sv/navmesh.lua#L652
	function _G.NavArea:remove() end
	--- isCompletelyVisible - server - libs_sv/navmesh.lua#L575
	---@param area NavArea The area to test visibility with.
	---@return boolean undefined Whether this CNavArea can see the given CNavArea.
	function _G.NavArea:isCompletelyVisible(area) end
	--- getExtentInfo - server - libs_sv/navmesh.lua#L433
	---@return table undefined Struct containing the above keys
	function _G.NavArea:getExtentInfo() end
	--- popOpenList - server - libs_sv/navmesh.lua#L643
	---@return NavArea undefined The CNavArea from the Open List with the lowest cost to traverse to from the starting node.
	function _G.NavArea:popOpenList() end
	--- isVisible - server - libs_sv/navmesh.lua#L626
	---@param pos Vector The position to check.
	---@return boolean undefined Whether we can be seen or not.
	---@return Vector undefined If we can be seen, this is returned with either the center or one of the corners of the Nav Area.
	function _G.NavArea:isVisible(pos) end
	--- getID - server - libs_sv/navmesh.lua#L445
	---@return number undefined The unique ID.
	function _G.NavArea:getID() end
	--- isBlocked - server - libs_sv/navmesh.lua#L556
	---@param teamID number? The team ID to test, -2 = any team. Only 2 actual teams are available, 0 and 1. (Default -2)
	---@param ignoreNavBlockers boolean? Whether to ignore func_nav_blocker entities. (Default false)
	---@return boolean undefined Whether the area is blocked or not
	function _G.NavArea:isBlocked(teamID, ignoreNavBlockers) end
	--- isUnderwater - server - libs_sv/navmesh.lua#L264
	---@return boolean undefined Whether we're underwater or not.
	function _G.NavArea:isUnderwater() end
	--- isOverlappingArea - server - libs_sv/navmesh.lua#L594
	---@param area NavArea The area to test.
	---@return boolean undefined True if the given CNavArea overlaps this CNavArea at any point.
	function _G.NavArea:isOverlappingArea(area) end
	--- getExposedSpots - server - libs_sv/navmesh.lua#L421
	---@return table undefined A table of Vectors
	function _G.NavArea:getExposedSpots() end
	--- isPotentiallyVisible - server - libs_sv/navmesh.lua#L611
	---@param area NavArea The area to test.
	---@return boolean undefined Whether the given area is visible from this area
	function _G.NavArea:isPotentiallyVisible(area) end
	--- setAttributes - server - libs_sv/navmesh.lua#L667
	---@param attributes number The attribute bitflag. See NAV_MESH enums
	function _G.NavArea:setAttributes(attributes) end
	--- getRandomAdjacentAreaAtSide - server - libs_sv/navmesh.lua#L502
	---@param navDir number The direction, from which to look for CNavAreas, see NAV_DIR enums.
	---@return NavArea undefined The random CNavArea that has an outgoing ( one or two way ) connection from this CNavArea in given direction, if any.
	function _G.NavArea:getRandomAdjacentAreaAtSide(navDir) end
	--- isRoughlySquare - server - libs_sv/navmesh.lua#L619
	---@return boolean undefined If we're a square or not.
	function _G.NavArea:isRoughlySquare() end
	--- contains - server - libs_sv/navmesh.lua#L271
	---@param v Vector The position to check
	---@return boolean undefined If the vector is inside the area
	function _G.NavArea:contains(v) end
	--- getZ - server - libs_sv/navmesh.lua#L539
	---@param The Vector position to get the elevation from, the z value from this position is ignored and only the X and Y values are used to this task.
	---@return number undefined Elevation
	function _G.NavArea:getZ(The) end
	--- isCoplanar - server - libs_sv/navmesh.lua#L305
	---@param other NavArea The other NavArea to check against
	---@return boolean undefined Whether we're coplanar or not.
	function _G.NavArea:isCoplanar(other) end
	--- getAdjacentCount - server - libs_sv/navmesh.lua#L365
	---@return number undefined The amount of CNavAreas that have a connection ( one and two way ) from this CNavArea.
	function _G.NavArea:getAdjacentCount() end
	--- computeAdjacentConnectionHeightChange - server - libs_sv/navmesh.lua#L329
	---@param other NavArea The nav area to test against.
	---@return number undefined The height change
	function _G.NavArea:computeAdjacentConnectionHeightChange(other) end
	--- isOverlapping - server - libs_sv/navmesh.lua#L583
	---@param pos Vector The position to test.
	---@param tolerance number? The tolerance of the overlapping, set to 0 for no tolerance. (Default 0)
	---@return number undefined Whether the given position overlaps the NavArea or not.
	function _G.NavArea:isOverlapping(pos, tolerance) end
	--- isPartiallyVisible - server - libs_sv/navmesh.lua#L602
	---@param pos Vector The position to test.
	---@param ignoreEnt Entity? If set, the given entity will be ignored when doing LOS tests (Default NULL)
	---@return boolean undefined Whether the given position is visible from this area
	function _G.NavArea:isPartiallyVisible(pos, ignoreEnt) end
	--- getAdjacentAreasAtSide - server - libs_sv/navmesh.lua#L350
	---@param navDir number The direction, in which to look for CNavAreas, see NAV_DIR enums
	---@return table undefined A table of all CNavArea that have a ( one and two way ) connection from this CNavArea in given direction.
	function _G.NavArea:getAdjacentAreasAtSide(navDir) end
	--- getAdjacentCountAtSide - server - libs_sv/navmesh.lua#L373
	---@param The number direction, in which to look for CNavAreas, see NAV_DIR enums.
	---@return number undefined The amount of CNavAreas that have a connection ( one or two way ) from this CNavArea in given direction.
	function _G.NavArea:getAdjacentCountAtSide(The) end
	--- isClosed - server - libs_sv/navmesh.lua#L568
	---@return boolean undefined Whether this node is in the Closed List.
	function _G.NavArea:isClosed() end
	--- getTotalCost - server - libs_sv/navmesh.lua#L532
	---@return number undefined The total cost
	function _G.NavArea:getTotalCost() end
	--- getPlace - server - libs_sv/navmesh.lua#L495
	---@return string undefined The place of the nav area, or no value if it doesn't have a place set.
	function _G.NavArea:getPlace() end
	--- getSizeY - server - libs_sv/navmesh.lua#L525
	---@return number undefined Height
	function _G.NavArea:getSizeY() end
	--- getCostSoFar - server - libs_sv/navmesh.lua#L414
	---@return number undefined The cost so far.
	function _G.NavArea:getCostSoFar() end
---  NextBot type
---@class NextBot
_G.NextBot = {}
	--- removeApproachPos - server - libs_sv/nextbot.lua#L132
	function _G.NextBot:removeApproachPos() end
	--- setIdleAct - server - libs_sv/nextbot.lua#L207
	---@param runact number The activity the nextbot will use.
	function _G.NextBot:setIdleAct(runact) end
	--- setVelocity - server - libs_sv/nextbot.lua#L227
	---@param newvel Vector Velocity.
	function _G.NextBot:setVelocity(newvel) end
	--- setJumpGapsAllowed - server - libs_sv/nextbot.lua#L628
	---@param jumpgapsallowed boolean Whether this bot should be allowed to jump gaps.
	function _G.NextBot:setJumpGapsAllowed(jumpgapsallowed) end
	--- getRunAct - server - libs_sv/nextbot.lua#L199
	---@return number undefined The run activity.
	function _G.NextBot:getRunAct() end
	--- setStepHeight - server - libs_sv/nextbot.lua#L547
	---@param stepheight number Height (default is 18)
	function _G.NextBot:setStepHeight(stepheight) end
	--- setMoveSpeed - server - libs_sv/nextbot.lua#L438
	---@param newmovespeed number NB's new move speed. Default is 200.
	function _G.NextBot:setMoveSpeed(newmovespeed) end
	--- getMaxYawRate - server - libs_sv/nextbot.lua#L493
	---@param The number NextBot's max yaw rate.
	function _G.NextBot:getMaxYawRate(The) end
	--- getDeathDropHeight - server - libs_sv/nextbot.lua#L539
	---@return number undefined Height nextbot is afraid of.
	function _G.NextBot:getDeathDropHeight() end
	--- playSequence - server - libs_sv/nextbot.lua#L168
	---@param seqtoplay string The name of the sequence to play.
	function _G.NextBot:playSequence(seqtoplay) end
	--- removeDeathCallback - server - libs_sv/nextbot.lua#L286
	---@param callbackid string The unique ID of the callback to remove.
	function _G.NextBot:removeDeathCallback(callbackid) end
	--- setGravity - server - libs_sv/nextbot.lua#L519
	---@param newgravity number NB's new gravity. Default is 1000
	function _G.NextBot:setGravity(newgravity) end
	--- addLeaveGroundCallback - server - libs_sv/nextbot.lua#L340
	---@param callbackid string The unique ID this callback will use.
	---@param callback function The function to run when the NB leaves the ground. The arguments are: (The entity the NB "jumped" from.)
	function _G.NextBot:addLeaveGroundCallback(callbackid, callback) end
	--- addInjuredCallback - server - libs_sv/nextbot.lua#L296
	---@param callbackid string The unique ID this callback will use.
	---@param callback function The function to run when the NB gets injured. The arguments are: (Damage, Attacker, Inflictor, Damage Pos, Damage Force, Damage Type)
	function _G.NextBot:addInjuredCallback(callbackid, callback) end
	--- removeNavChangeCallback - server - libs_sv/nextbot.lua#L396
	---@param callbackid string The unique ID of the callback to remove.
	function _G.NextBot:removeNavChangeCallback(callbackid) end
	--- addDeathCallback - server - libs_sv/nextbot.lua#L274
	---@param callbackid string The unique ID this callback will use.
	---@param callback function The function to run when the NB dies. The arguments are: (Damage, Attacker, Inflictor, Damage Pos, Damage Force, Damage Type)
	function _G.NextBot:addDeathCallback(callbackid, callback) end
	--- addReachCallback - server - libs_sv/nextbot.lua#L252
	---@param callbackid string The unique ID this callback will use.
	---@param callback function The function to run when the NB reaches its destination.
	function _G.NextBot:addReachCallback(callbackid, callback) end
	--- jumpAcrossGap - server - libs_sv/nextbot.lua#L664
	---@param landGoal Vector The goal the nextbot should aim for.
	---@param landForward Vector Presumably the direction vector the entity should be aiming in when landing.
	function _G.NextBot:jumpAcrossGap(landGoal, landForward) end
	--- isAreaTraversable - server - libs_sv/nextbot.lua#L581
	---@param NavArea NavArea to check.
	---@return boolean undefined Whether this nextbot can traverse given NavArea.
	function _G.NextBot:isAreaTraversable(NavArea) end
	--- isOnGround - server - libs_sv/nextbot.lua#L573
	---@return boolean undefined Whether the nextbot is on ground or not.
	function _G.NextBot:isOnGround() end
	--- getGravity - server - libs_sv/nextbot.lua#L511
	---@return number undefined The nextbot's current gravity value.
	function _G.NextBot:getGravity() end
	--- getJumpGapsAllowed - server - libs_sv/nextbot.lua#L638
	---@return boolean undefined Whether this bot is allowed to jump gaps.
	function _G.NextBot:getJumpGapsAllowed() end
	--- setClimbAllowed - server - libs_sv/nextbot.lua#L610
	---@param climballowed boolean Whether this bot should be allowed to climb.
	function _G.NextBot:setClimbAllowed(climballowed) end
	--- setAvoidAllowed - server - libs_sv/nextbot.lua#L592
	---@param avoidallowed boolean Whether this bot should be allowed to try to avoid obstacles.
	function _G.NextBot:setAvoidAllowed(avoidallowed) end
	--- addLandCallback - server - libs_sv/nextbot.lua#L318
	---@param callbackid string The unique ID this callback will use.
	---@param callback function The function to run when the NB lands on the ground. The arguments are: (The entity the NB landed on.)
	function _G.NextBot:addLandCallback(callbackid, callback) end
	--- setJumpHeight - server - libs_sv/nextbot.lua#L646
	---@param jumpheight number Height (default is 58)
	function _G.NextBot:setJumpHeight(jumpheight) end
	--- getClimbAllowed - server - libs_sv/nextbot.lua#L620
	---@return boolean undefined Whether this bot is allowed to climb.
	function _G.NextBot:getClimbAllowed() end
	--- removeReachCallback - server - libs_sv/nextbot.lua#L264
	---@param callbackid string The unique ID of the callback to remove.
	function _G.NextBot:removeReachCallback(callbackid) end
	--- getAvoidAllowed - server - libs_sv/nextbot.lua#L602
	---@return boolean undefined Whether this bot is allowed to try to avoid obstacles.
	function _G.NextBot:getAvoidAllowed() end
	--- getJumpHeight - server - libs_sv/nextbot.lua#L656
	---@return number undefined Jump height
	function _G.NextBot:getJumpHeight() end
	--- getGroundMotionVector - server - libs_sv/nextbot.lua#L565
	---@return Vector undefined A vector representing the X and Y movement.
	function _G.NextBot:getGroundMotionVector() end
	--- addIgniteCallback - server - libs_sv/nextbot.lua#L362
	---@param callbackid string The unique ID this callback will use.
	---@param callback function The function to run when the NB gets ignited.
	function _G.NextBot:addIgniteCallback(callbackid, callback) end
	--- removeInjuredCallback - server - libs_sv/nextbot.lua#L308
	---@param callbackid string The unique ID of the callback to remove.
	function _G.NextBot:removeInjuredCallback(callbackid) end
	--- setDeathDropHeight - server - libs_sv/nextbot.lua#L529
	---@param newdeathdropheight number New height nextbot is afraid of. Default is 200.
	function _G.NextBot:setDeathDropHeight(newdeathdropheight) end
	--- setMaxYawRate - server - libs_sv/nextbot.lua#L501
	---@param newmaxyawrate number Desired new maximum yaw rate
	function _G.NextBot:setMaxYawRate(newmaxyawrate) end
	--- setDeceleration - server - libs_sv/nextbot.lua#L475
	---@param newaccel number NB's new deceleration. Default is 400
	function _G.NextBot:setDeceleration(newaccel) end
	--- getDeceleration - server - libs_sv/nextbot.lua#L485
	---@return number undefined NB's deceleration value.
	function _G.NextBot:getDeceleration() end
	--- getMoveSpeed - server - libs_sv/nextbot.lua#L449
	---@return number undefined NB's move speed.
	function _G.NextBot:getMoveSpeed() end
	--- removeGotoPos - server - libs_sv/nextbot.lua#L149
	function _G.NextBot:removeGotoPos() end
	--- getAcceleration - server - libs_sv/nextbot.lua#L467
	---@return number undefined NB's acceleration value.
	function _G.NextBot:getAcceleration() end
	--- faceTowards - server - libs_sv/nextbot.lua#L178
	---@param facepos Vector Position to face towards.
	function _G.NextBot:faceTowards(facepos) end
	--- removeIgniteCallback - server - libs_sv/nextbot.lua#L374
	---@param callbackid string The unique ID of the callback to remove.
	function _G.NextBot:removeIgniteCallback(callbackid) end
	--- jump - server - libs_sv/nextbot.lua#L244
	function _G.NextBot:jump() end
	--- setAcceleration - server - libs_sv/nextbot.lua#L457
	---@param newaccel number NB's new acceleration. Default is 400
	function _G.NextBot:setAcceleration(newaccel) end
	--- setApproachPos - server - libs_sv/nextbot.lua#L123
	---@param goal Vector The vector we want to get to.
	function _G.NextBot:setApproachPos(goal) end
	--- setRunAct - server - libs_sv/nextbot.lua#L187
	---@param runact number The activity the nextbot will use.
	function _G.NextBot:setRunAct(runact) end
	--- addContactCallback - server - libs_sv/nextbot.lua#L406
	---@param callbackid string The unique ID this callback will use.
	---@param callback fun(ent: Entity) The function to run when the NB touches another entity. The arguments are: (The entity the NB touched.)
	function _G.NextBot:addContactCallback(callbackid, callback) end
	--- removeContactCallback - server - libs_sv/nextbot.lua#L418
	---@param callbackid string The unique ID of the callback to remove.
	function _G.NextBot:removeContactCallback(callbackid) end
	--- getGotoPos - server - libs_sv/nextbot.lua#L157
	---@return Vector? undefined Where the nextbot is trying to go to if it exists, else returns nil.
	function _G.NextBot:getGotoPos() end
	--- getVelocity - server - libs_sv/nextbot.lua#L236
	---@return Vector undefined NB's velocity.
	function _G.NextBot:getVelocity() end
	--- removeLandCallback - server - libs_sv/nextbot.lua#L330
	---@param callbackid string The unique ID of the callback to remove.
	function _G.NextBot:removeLandCallback(callbackid) end
	--- setGotoPos - server - libs_sv/nextbot.lua#L140
	---@param gotopos Vector The position the nextbot will continuosly try to go to.
	function _G.NextBot:setGotoPos(gotopos) end
	--- getStepHeight - server - libs_sv/nextbot.lua#L557
	---@return number undefined The max height the bot can step up.
	function _G.NextBot:getStepHeight() end
	--- removeLeaveGroundCallback - server - libs_sv/nextbot.lua#L352
	---@param callbackid string The unique ID of the callback to remove.
	function _G.NextBot:removeLeaveGroundCallback(callbackid) end
	--- addNavChangeCallback - server - libs_sv/nextbot.lua#L384
	---@param callbackid string The unique ID this callback will use.
	---@param callback function The function to run when the NB enters a new nav area. The arguments are: (Old Nav Area, New Nav Area)
	function _G.NextBot:addNavChangeCallback(callbackid, callback) end
	--- getIdleAct - server - libs_sv/nextbot.lua#L219
	---@return number undefined The idle activity.
	function _G.NextBot:getIdleAct() end
	--- ragdollOnDeath - server - libs_sv/nextbot.lua#L428
	---@param ragdollondeath boolean Whether the nextbot should ragdoll on death.
	function _G.NextBot:ragdollOnDeath(ragdollondeath) end
---  Vector2 type for wire xv2
---@class Vector2
_G.Vector2 = {}
---  Player type
---@class Player
_G.Player = {}
	--- getVehicle - shared - libs_sh/players.lua#L263
	---@return Vehicle undefined Vehicle if player in vehicle or nil
	function _G.Player:getVehicle() end
	--- isNoclipped - shared - libs_sh/players.lua#L172
	---@return boolean undefined True if the player is noclipped
	function _G.Player:isNoclipped() end
	--- getSteamID - shared - libs_sh/players.lua#L320
	---@return string undefined SteamID
	function _G.Player:getSteamID() end
	--- isMuted - client - libs_sh/players.lua#L642
	---@return boolean undefined True if the player was muted
	function _G.Player:isMuted() end
	--- isCrouching - shared - libs_sh/players.lua#L151
	---@return boolean undefined True if player crouching
	function _G.Player:isCrouching() end
	--- isPlayingAnimation - client - libs_sh/players.lua#L904
	---@return boolean undefined If an animation is playing
	function _G.Player:isPlayingAnimation() end
	--- getMoney - shared - libs_sh/darkrp2.lua#L1075
	---@return number? undefined The amount of money, or nil if not accessible.
	function _G.Player:getMoney() end
	--- stripWeapon - server - libs_sh/players.lua#L498
	---@param weapon string The weapon class name of the weapon to strip
	function _G.Player:stripWeapon(weapon) end
	--- getAnimationProgress - client - libs_sh/players.lua#L912
	---@return number undefined Progress ranging 0-1
	function _G.Player:getAnimationProgress() end
	--- isHitman - shared - libs_sh/darkrp2.lua#L1051
	---@return boolean? undefined Whether this player is a hitman. May be nil instead of false.
	function _G.Player:isHitman() end
	--- getJobTable - shared - libs_sh/darkrp2.lua#L1002
	---@return table undefined Table with the job information.
	function _G.Player:getJobTable() end
	--- getWeaponColor - shared - libs_sh/players.lua#L404
	---@return Vector undefined The color
	function _G.Player:getWeaponColor() end
	--- getAnimationTime - client - libs_sh/players.lua#L923
	---@return number undefined Time in seconds
	function _G.Player:getAnimationTime() end
	--- getViewPunchAngles - shared - libs_sh/players.lua#L382
	---@return Angle undefined The angle of the view offset
	function _G.Player:getViewPunchAngles() end
	--- hasGodMode - server - libs_sh/players.lua#L471
	---@return boolean undefined True if the player has godmode
	function _G.Player:hasGodMode() end
	--- isSuperAdmin - shared - libs_sh/players.lua#L298
	---@return boolean undefined True if player is super admin
	function _G.Player:isSuperAdmin() end
	--- getUserID - shared - libs_sh/players.lua#L351
	---@return number undefined UserID
	function _G.Player:getUserID() end
	--- isConnected - shared - libs_sh/players.lua#L284
	---@return boolean undefined True if player is connected
	function _G.Player:isConnected() end
	--- isUserGroup - shared - libs_sh/players.lua#L305
	---@param groupName string Group to check against
	---@return boolean undefined True if player belongs to group
	function _G.Player:isUserGroup(groupName) end
	--- voiceVolume - client - libs_sh/players.lua#L656
	---@return number undefined Returns the players voice volume, how loud the player's voice communication currently is, as a normal number. Doesn't work on local player unless the voice_loopback convar is set to 1.
	function _G.Player:voiceVolume() end
	--- getDarkRPVar - shared - libs_sh/darkrp2.lua#L990
	---@param var string The name of the variable.
	---@return any undefined The value of the DarkRP var.
	function _G.Player:getDarkRPVar(var) end
	--- setAnimationRate - client - libs_sh/players.lua#L825
	---@param rate number The playback rate of the animation. Float
	function _G.Player:setAnimationRate(rate) end
	--- getTeamName - shared - libs_sh/players.lua#L344
	---@return string undefined Team Name
	function _G.Player:getTeamName() end
	--- isChief - shared - libs_sh/darkrp2.lua#L1033
	---@return boolean? undefined Whether this player is a Chief. May be nil instead of false.
	function _G.Player:isChief() end
	--- getEyeTrace - shared - libs_sh/players.lua#L358
	---@return table undefined Trace data https://wiki.facepunch.com/gmod/Structures/TraceResult
	function _G.Player:getEyeTrace() end
	--- isMedic - shared - libs_sh/darkrp2.lua#L1063
	---@return boolean? undefined Whether this player is a medic. May be nil instead of false.
	function _G.Player:isMedic() end
	--- getGroundEntity - shared - libs_sh/players.lua#L413
	---@return Entity undefined Ground entity
	function _G.Player:getGroundEntity() end
	--- setAnimationProgress - client - libs_sh/players.lua#L795
	---@param progress number The progress of the animation. Ranging from 0-1
	function _G.Player:setAnimationProgress(progress) end
	--- getMaxArmor - shared - libs_sh/players.lua#L144
	---@return number undefined Armor limit
	function _G.Player:getMaxArmor() end
	--- getViewModel - shared - libs_sh/players.lua#L374
	---@return Entity undefined Player's view model
	function _G.Player:getViewModel() end
	--- isFrozen - shared - libs_sh/players.lua#L291
	---@return boolean undefined True if player is frozen
	function _G.Player:isFrozen() end
	--- teamBanTimeLeft - server - libs_sh/darkrp2.lua#L915
	---@param team number? The number of the job (e.g. TEAM_MEDIC). Uses the player's team if nil.
	---@return number? undefined The time left on the team ban in seconds, or nil if not banned.
	function _G.Player:teamBanTimeLeft(team) end
	--- getMaxSpeed - shared - libs_sh/players.lua#L214
	---@return number undefined Maximum speed
	function _G.Player:getMaxSpeed() end
	--- setAnimationRange - client - libs_sh/players.lua#L885
	---@param min number Min. Ranging from 0-1
	---@param max number Max. Ranging from 0-1
	function _G.Player:setAnimationRange(min, max) end
	--- isSprinting - shared - libs_sh/players.lua#L437
	---@return boolean undefined Whether they are sprinting
	function _G.Player:isSprinting() end
	--- resetAnimation - client - libs_sh/players.lua#L767
	function _G.Player:resetAnimation() end
	--- getPing - shared - libs_sh/players.lua#L313
	---@return number undefined The player's ping
	function _G.Player:getPing() end
	--- setAnimationBounce - client - libs_sh/players.lua#L855
	---@param bounce boolean Should the animation bounce instead of loop?
	function _G.Player:setAnimationBounce(bounce) end
	--- setAnimationAutoAdvance - client - libs_sh/players.lua#L840
	---@param auto_advance boolean Should the animation handle advancing itself?
	function _G.Player:setAnimationAutoAdvance(auto_advance) end
	--- setAnimationTime - client - libs_sh/players.lua#L810
	---@param time number The time of the animation in seconds. Float
	function _G.Player:setAnimationTime(time) end
	--- stripWeapons - server - libs_sh/players.lua#L508
	function _G.Player:stripWeapons() end
	--- setAnimationActivity - client - libs_sh/players.lua#L776
	---@param activity number|string|nil Activity, nil to use the current animation sequence
	function _G.Player:setAnimationActivity(activity) end
	--- getJumpPower - shared - libs_sh/players.lua#L207
	---@return number undefined Jump power
	function _G.Player:getJumpPower() end
	--- dropWeapon - server - libs_sh/players.lua#L478
	---@param weapon Weapon|string The weapon instance or class name of the weapon to drop
	---@param target Vector? If set, launches the weapon at the given position
	---@param velocity Vector? If set and target is unset, launches the weapon with the given velocity
	function _G.Player:dropWeapon(weapon, target, velocity) end
	--- setAnimation - client - libs_sh/players.lua#L719
	---@param sequence number|string Sequence number or string name
	---@param progress number? Optional float (Default 0), the progress of the animation. Ranging from 0-1
	---@param rate number? Optional float (Default 1), the playback rate of the animation
	---@param loop boolean? Optional boolean (Default false), should the animation loop
	---@param auto_advance boolean? Optional boolean (Default true), should the animation handle advancing itself
	---@param string any |number|nil? act Optional number or string name (Default sequence value), the activity the player should use
	function _G.Player:setAnimation(sequence, progress, rate, loop, auto_advance, string) end
	--- isFlashlightOn - shared - libs_sh/players.lua#L165
	---@return boolean undefined True if player has flashlight on
	function _G.Player:isFlashlightOn() end
	--- getTeam - shared - libs_sh/players.lua#L337
	---@return number undefined Team Index, from TEAM enums or custom teams
	function _G.Player:getTeam() end
	--- isInRoom - client - libs_sh/darkrp2.lua#L958
	---@return boolean undefined Whether this player is in the same room.
	function _G.Player:isInRoom() end
	--- isTyping - shared - libs_sh/players.lua#L430
	---@return boolean undefined Whether they are typing in the chat
	function _G.Player:isTyping() end
	--- setAmmo - server - libs_sh/players.lua#L516
	---@param amount number The ammo value
	---@param ammoType number|string Ammo type id or name
	function _G.Player:setAmmo(amount, ammoType) end
	--- resetGesture - client - libs_sh/players.lua#L693
	---@param slot number? Optional int (Default GESTURE_SLOT.CUSTOM), the gesture slot to use. GESTURE_SLOT table values
	function _G.Player:resetGesture(slot) end
	--- getFrags - shared - libs_sh/players.lua#L179
	---@return number undefined Amount of kills
	function _G.Player:getFrags() end
	--- playGesture - client - libs_sh/players.lua#L663
	---@param animation string|number Sequence string or act number. https://wiki.facepunch.com/gmod/Enums/ACT
	---@param loop boolean? Optional boolean (Default true), should the gesture loop
	---@param slot number? Optional int (Default GESTURE_SLOT.CUSTOM), the gesture slot to use. GESTURE_SLOT table values
	---@param weight number? Optional float (Default 1), the weight of the gesture. Ranging from 0-1
	function _G.Player:playGesture(animation, loop, slot, weight) end
	--- keysUnOwnAll - server - libs_sh/darkrp2.lua#L906
	function _G.Player:keysUnOwnAll() end
	--- isSpeaking - client - libs_sh/players.lua#L649
	---@return boolean undefined Whether they are speaking and able to be heard by LocalPlayer
	function _G.Player:isSpeaking() end
	--- getWeapons - shared - libs_sh/players.lua#L388
	---@return table undefined Table of weapons
	function _G.Player:getWeapons() end
	--- getAmmoCount - shared - libs_sh/players.lua#L420
	---@param idOrName string|number The string ammo name or number id of the ammo
	---@return number undefined The amount of ammo player has in reserve.
	function _G.Player:getAmmoCount(idOrName) end
	--- getWeapon - shared - libs_sh/players.lua#L395
	---@param wep string Weapon class name
	---@return Weapon undefined Weapon
	function _G.Player:getWeapon(wep) end
	--- isWanted - shared - libs_sh/darkrp2.lua#L1069
	---@return boolean? undefined Whether this player is wanted. May be nil instead of false.
	function _G.Player:isWanted() end
	--- keyDown - shared - libs_sh/players.lua#L623
	---@param key number Key to check. IN_KEY table values
	---@return boolean undefined Whether they key is down
	function _G.Player:keyDown(key) end
	--- setMaxArmor - server - libs_sh/players.lua#L612
	---@param newmaxarmor number New max armor value.
	function _G.Player:setMaxArmor(newmaxarmor) end
	--- isAdmin - shared - libs_sh/players.lua#L270
	---@return boolean undefined True if player is admin
	function _G.Player:isAdmin() end
	--- getName - shared - libs_sh/players.lua#L221
	---@return string undefined Name
	function _G.Player:getName() end
	--- stripAmmo - server - libs_sh/players.lua#L532
	function _G.Player:stripAmmo() end
	--- say - server - libs_sh/players.lua#L587
	---@param text string The text to force the player to say
	---@param teamOnly boolean? Team chat only?, Defaults to false.
	function _G.Player:say(text, teamOnly) end
	--- isTimingOut - server - libs_sh/players.lua#L580
	---@return boolean undefined isTimingOut
	function _G.Player:isTimingOut() end
	--- getTimeoutSeconds - server - libs_sh/players.lua#L573
	---@return number undefined Timeout seconds
	function _G.Player:getTimeoutSeconds() end
	--- canAfford - shared - libs_sh/darkrp2.lua#L968
	---@param amount number The amount of money
	---@return boolean undefined Whether the player can afford it
	function _G.Player:canAfford(amount) end
	--- getPacketLoss - server - libs_sh/players.lua#L559
	---@return number undefined Packets lost
	function _G.Player:getPacketLoss() end
	--- getDeathRagdoll - shared - libs_sh/players.lua#L444
	---@return Entity? undefined The entity or nil if it doesn't exist
	function _G.Player:getDeathRagdoll() end
	--- setEyeAngles - server - libs_sh/players.lua#L547
	---@param ang Angle New angles
	function _G.Player:setEyeAngles(ang) end
	--- canKeysLock - shared - libs_sh/darkrp2.lua#L976
	---@param door Entity The door
	---@return boolean? undefined Whether the player is allowed to lock the door. May be nil instead of false.
	function _G.Player:canKeysLock(door) end
	--- getRunSpeed - shared - libs_sh/players.lua#L228
	---@return number undefined Running speed
	function _G.Player:getRunSpeed() end
	--- getViewEntity - shared - libs_sh/players.lua#L367
	---@return Entity undefined Player's current view entity
	function _G.Player:getViewEntity() end
	--- giveMoney - server - libs_sh/darkrp2.lua#L941
	---@param amount number The amount of money to give.
	function _G.Player:giveMoney(amount) end
	--- setAnimationLoop - client - libs_sh/players.lua#L870
	---@param loop boolean Should the animation loop?
	function _G.Player:setAnimationLoop(loop) end
	--- setArmor - server - libs_sh/players.lua#L602
	---@param newarmor number New armor value.
	function _G.Player:setArmor(newarmor) end
	--- setViewEntity - server - libs_sh/players.lua#L461
	---@param ent Entity Entity to set the player's view entity to, or nothing to reset it
	function _G.Player:setViewEntity(ent) end
	--- getFriendStatus - client - libs_sh/players.lua#L634
	---@return string undefined One of: "friend", "blocked", "none", "requested"
	function _G.Player:getFriendStatus() end
	--- lastHitGroup - server - libs_sh/players.lua#L540
	---@return number undefined Hitgroup, see https://wiki.facepunch.com/gmod/Enums/HITGROUP
	function _G.Player:lastHitGroup() end
	--- getSteamID64 - shared - libs_sh/players.lua#L327
	---@return string undefined SteamID64 aka Community ID
	function _G.Player:getSteamID64() end
	--- inVehicle - shared - libs_sh/players.lua#L256
	---@return boolean undefined True if player in vehicle
	function _G.Player:inVehicle() end
	--- isMayor - shared - libs_sh/darkrp2.lua#L1057
	---@return boolean? undefined Whether this player is the Mayor. May be nil instead of false.
	function _G.Player:isMayor() end
	--- isAlive - shared - libs_sh/players.lua#L130
	---@return boolean undefined True if player alive
	function _G.Player:isAlive() end
	--- hasDarkRPPrivilege - shared - libs_sh/darkrp2.lua#L1020
	---@return boolean undefined Whether the player has the privilege.
	function _G.Player:hasDarkRPPrivilege() end
	--- setModelScale - server - libs_sh/players.lua#L451
	---@param scale number The scale to apply (min 0.001, max 100)
	function _G.Player:setModelScale(scale) end
	--- isArrested - shared - libs_sh/darkrp2.lua#L1027
	---@return boolean? undefined Whether this player is arrested. May be nil instead of false.
	function _G.Player:isArrested() end
	--- isBot - shared - libs_sh/players.lua#L277
	---@return boolean undefined True if player is a bot
	function _G.Player:isBot() end
	--- getDeaths - shared - libs_sh/players.lua#L158
	---@return number undefined Amount of deaths
	function _G.Player:getDeaths() end
	--- getDuckSpeed - shared - libs_sh/players.lua#L235
	---@return number undefined Duck speed in seconds
	function _G.Player:getDuckSpeed() end
	--- getTimeConnected - server - libs_sh/players.lua#L566
	---@return number undefined Time connected
	function _G.Player:getTimeConnected() end
	--- getEntityInUse - shared - libs_sh/players.lua#L242
	---@return Entity undefined Entity
	function _G.Player:getEntityInUse() end
	--- getShootPos - shared - libs_sh/players.lua#L249
	---@return Vector undefined Shoot position
	function _G.Player:getShootPos() end
	--- getFOV - shared - libs_sh/players.lua#L200
	---@return number undefined Field of view as a float
	function _G.Player:getFOV() end
	--- getPocketItems - shared - libs_sh/darkrp2.lua#L1008
	---@return table undefined A table containing information about the items in the pocket.
	function _G.Player:getPocketItems() end
	--- getAimVector - shared - libs_sh/players.lua#L193
	---@return Vector undefined Aim vector
	function _G.Player:getAimVector() end
	--- getArmor - shared - libs_sh/players.lua#L137
	---@return number undefined Armor
	function _G.Player:getArmor() end
	--- requestMoney - server - libs_sh/darkrp2.lua#L928
	---@param message string? An optional custom message that will be shown in the money request prompt. May not exceed 60 bytes in length.
	---@param amount number The amount of money to ask for.
	---@param callbackSuccess function? Optional function to call if request succeeds.
	---@param callbackFailure function? Optional function to call if request fails.
	---@param receiver Player? The player who may or may not receive the money, or the owner of the chip if not specified. Superuser only.
	function _G.Player:requestMoney(message, amount, callbackSuccess, callbackFailure, receiver) end
	--- getWantedReason - shared - libs_sh/darkrp2.lua#L1014
	---@return string? undefined The reason, or nil if not wanted
	function _G.Player:getWantedReason() end
	--- canKeysUnlock - shared - libs_sh/darkrp2.lua#L983
	---@param door Entity The door
	---@return boolean? undefined Whether the player is allowed to unlock the door. May be nil instead of false.
	function _G.Player:canKeysUnlock(door) end
	--- isCP - shared - libs_sh/darkrp2.lua#L1045
	---@return boolean undefined Whether this player is a part of the police force.
	function _G.Player:isCP() end
	--- isCook - shared - libs_sh/darkrp2.lua#L1039
	---@return boolean? undefined Whether this player is a cook. May be nil instead of false.
	function _G.Player:isCook() end
	--- getActiveWeapon - shared - libs_sh/players.lua#L186
	---@return Weapon undefined The weapon
	function _G.Player:getActiveWeapon() end
	--- setGestureWeight - client - libs_sh/players.lua#L705
	---@param slot number? Optional int (Default GESTURE_SLOT.CUSTOM), the gesture slot to use. GESTURE_SLOT table values
	---@param weight number? Optional float (Default 1), the weight of the gesture. Ranging from 0-1
	function _G.Player:setGestureWeight(slot, weight) end
---  ParticleEmitter type
---@class ParticleEmitter
_G.ParticleEmitter = {}
	--- setBBox - client - libs_cl/particle.lua#L154
	---@param mins Vector Min vector
	---@param maxs Vector Max vector
	function _G.ParticleEmitter:setBBox(mins, maxs) end
	--- is3D - client - libs_cl/particle.lua#L142
	---@return boolean undefined If it's 3D
	function _G.ParticleEmitter:is3D() end
	--- getPos - client - libs_cl/particle.lua#L136
	---@return Vector undefined Position of the Emitter
	function _G.ParticleEmitter:getPos() end
	--- setPos - client - libs_cl/particle.lua#L186
	---@param position Vector The position
	function _G.ParticleEmitter:setPos(position) end
	--- getParticlesLeft - client - libs_cl/particle.lua#L130
	---@return number undefined Number of particles left
	function _G.ParticleEmitter:getParticlesLeft() end
	--- setParticleCullRadius - client - libs_cl/particle.lua#L177
	---@param radius number Particle radius
	function _G.ParticleEmitter:setParticleCullRadius(radius) end
	--- draw - client - libs_cl/particle.lua#L110
	function _G.ParticleEmitter:draw() end
	--- setNoDraw - client - libs_cl/particle.lua#L170
	---@param noDraw boolean Whether not to draw
	function _G.ParticleEmitter:setNoDraw(noDraw) end
	--- destroy - client - libs_cl/particle.lua#L116
	function _G.ParticleEmitter:destroy() end
	--- getNumActiveParticles - client - libs_cl/particle.lua#L124
	---@return number undefined Number of active particles
	function _G.ParticleEmitter:getNumActiveParticles() end
	--- add - client - libs_cl/particle.lua#L70
	---@param material Material The material object to set the particle
	---@param position Vector The position to create the particle
	---@param startSize number Sets the initial size value of the particle.
	---@param endSize number Sets the size of the particle that it will reach when it dies.
	---@param startLength number Sets the initial length value of the particle.
	---@param endLength number Sets the length of the particle that it will reach when it dies.
	---@param startAlpha number Sets the initial alpha value of the particle.
	---@param endAlpha number Sets the alpha value of the particle that it will reach when it dies.
	---@param dieTime number Sets the time where the particle will be removed. (0-60)
	---@return Particle undefined A Particle object
	function _G.ParticleEmitter:add(material, position, startSize, endSize, startLength, endLength, startAlpha, endAlpha, dieTime) end
	--- setNearClip - client - libs_cl/particle.lua#L161
	---@param distanceMin number 
	---@param distanceMax number 
	function _G.ParticleEmitter:setNearClip(distanceMin, distanceMax) end
	--- isValid - client - libs_cl/particle.lua#L148
	---@return boolean undefined If it's valid
	function _G.ParticleEmitter:isValid() end
---  Vector type
---@class Vector
---@operator mul(number|Vector):Vector
---@operator sub(Vector):Vector
---@operator unm:Vector
---@operator eq(Vector):boolean
---@operator div(number|Vector):Vector
---@operator index(number|string):number
---@operator tostring:string
---@operator add(Vector):Vector
_G.Vector = {}
	--- isEqualTol - shared - libs_sh/vectors.lua#L240
	---@param v Vector Second Vector
	---@param t number Tolerance number.
	---@return boolean undefined Whether the vector is equal to v within the tolerance.
	function _G.Vector:isEqualTol(v, t) end
	--- getQuaternion - shared - libs_sh/quaternion.lua#L771
	---@param up Vector Upward direction. If specified, the original vector will act like a forward pointing one
	---@return Quaternion undefined Quaternion from the given vector
	function _G.Vector:getQuaternion(up) end
	--- getLength2D - shared - libs_sh/vectors.lua#L268
	---@return number undefined Vector length
	function _G.Vector:getLength2D() end
	--- round - shared - libs_sh/vectors.lua#L438
	---@param idp number (Default 0) The integer decimal place to round to.
	function _G.Vector:round(idp) end
	--- getQuaternionFromRotation - shared - libs_sh/quaternion.lua#L809
	---@return Quaternion undefined Rotated quaternion
	function _G.Vector:getQuaternionFromRotation() end
	--- withinAABox - shared - libs_sh/vectors.lua#L474
	---@param v1 Vector Vector used to define AABox
	---@param v2 Vector Second Vector to define AABox
	---@return boolean undefined True/False.
	function _G.Vector:withinAABox(v1, v2) end
	--- getLength - shared - libs_sh/vectors.lua#L256
	---@return number undefined Length of the vector.
	function _G.Vector:getLength() end
	--- getLengthSqr - shared - libs_sh/vectors.lua#L262
	---@return number undefined length squared.
	function _G.Vector:getLengthSqr() end
	--- vdiv - shared - libs_sh/vectors.lua#L329
	---@param v Vector Vector to divide by
	function _G.Vector:vdiv(v) end
	--- mul - shared - libs_sh/vectors.lua#L298
	---@param n number Scalar to multiply with.
	function _G.Vector:mul(n) end
	--- rotate - shared - libs_sh/vectors.lua#L380
	---@param b Angle Angle to rotate by.
	function _G.Vector:rotate(b) end
	--- normalize - shared - libs_sh/vectors.lua#L370
	function _G.Vector:normalize() end
	--- getNormalized - shared - libs_sh/vectors.lua#L232
	---@return Vector undefined Normalized vector
	function _G.Vector:getNormalized() end
	--- getQuaternionFromAxis - shared - libs_sh/quaternion.lua#L798
	---@param ang number Number rotation angle
	---@return Quaternion undefined Rotated quaternion
	function _G.Vector:getQuaternionFromAxis(ang) end
	--- setX - shared - libs_sh/vectors.lua#L346
	---@param x number The x coordinate
	---@return Vector undefined Modified vector after setting X.
	function _G.Vector:setX(x) end
	--- setY - shared - libs_sh/vectors.lua#L354
	---@param y number The y coordinate
	---@return Vector undefined Modified vector after setting Y.
	function _G.Vector:setY(y) end
	--- getDistanceSqr - shared - libs_sh/vectors.lua#L218
	---@param v Vector Second Vector
	---@return number undefined Vector distance from v
	function _G.Vector:getDistanceSqr(v) end
	--- getColor - shared - libs_sh/vectors.lua#L468
	---@return Color undefined New color object
	function _G.Vector:getColor() end
	--- isInWorld - server - libs_sh/vectors.lua#L487
	---@return boolean undefined True/False.
	function _G.Vector:isInWorld() end
	--- cross - shared - libs_sh/vectors.lua#L202
	---@param v Vector Second Vector
	---@return Vector undefined Vector from cross product
	function _G.Vector:cross(v) end
	--- set - shared - libs_sh/vectors.lua#L453
	---@param v Vector Second Vector
	function _G.Vector:set(v) end
	--- setZ - shared - libs_sh/vectors.lua#L362
	---@param z number The z coordinate
	---@return Vector undefined Modified vector after setting Z.
	function _G.Vector:setZ(z) end
	--- sub - shared - libs_sh/vectors.lua#L289
	---@param v Vector Vector to subtract.
	function _G.Vector:sub(v) end
	--- add - shared - libs_sh/vectors.lua#L280
	---@param v Vector Vector to add
	function _G.Vector:add(v) end
	--- rotateAroundAxis - shared - libs_sh/vectors.lua#L415
	---@param axis Vector Axis the rotate around
	---@param degrees number? Angle to rotate by in degrees or nil if radians.
	---@param radians number? Angle to rotate by in radians or nil if degrees.
	---@return Vector undefined Rotated vector
	function _G.Vector:rotateAroundAxis(axis, degrees, radians) end
	--- dot - shared - libs_sh/vectors.lua#L225
	---@param v Vector Second Vector
	---@return number undefined Dot product result between the two vectors
	function _G.Vector:dot(v) end
	--- getRotated - shared - libs_sh/vectors.lua#L392
	---@param b Angle Angle to rotate by.
	---@return Vector undefined Rotated Vector
	function _G.Vector:getRotated(b) end
	--- getDistance - shared - libs_sh/vectors.lua#L211
	---@param v Vector Second Vector
	---@return number undefined Vector distance from v
	function _G.Vector:getDistance(v) end
	--- clone - shared - libs_sh/vectors.lua#L447
	---@return Vector undefined The copy of the vector
	function _G.Vector:clone() end
	--- getAngle - shared - libs_sh/vectors.lua#L189
	---@return Angle undefined Angle representing the vector
	function _G.Vector:getAngle() end
	--- vmul - shared - libs_sh/vectors.lua#L320
	---@param v Vector Vector to multiply with
	function _G.Vector:vmul(v) end
	--- isZero - shared - libs_sh/vectors.lua#L250
	---@return boolean undefined Whether all fields are zero
	function _G.Vector:isZero() end
	--- toScreen - shared - libs_sh/vectors.lua#L462
	---@return table undefined A table {x=screenx,y=screeny,visible=visible}
	function _G.Vector:toScreen() end
	--- div - shared - libs_sh/vectors.lua#L309
	---@param n number Scalar to divide by.
	function _G.Vector:div(n) end
	--- getLength2DSqr - shared - libs_sh/vectors.lua#L274
	---@return number undefined Length squared.
	function _G.Vector:getLength2DSqr() end
	--- getBasis - shared - libs_sh/vectors.lua#L402
	---@return number undefined Basis 1
	---@return number undefined Basis 2
	function _G.Vector:getBasis() end
	--- getAngleEx - shared - libs_sh/vectors.lua#L195
	---@param v Vector Second Vector
	---@return Angle undefined Angle
	function _G.Vector:getAngleEx(v) end
	--- setZero - shared - libs_sh/vectors.lua#L338
	function _G.Vector:setZero() end
---  Sound type
---@class Sound
_G.Sound = {}
	--- stop - shared - libs_sh/sound.lua#L123
	---@param fade number? Time in seconds to fade out, if nil or 0 the sound stops instantly.
	function _G.Sound:stop(fade) end
	--- setPitch - shared - libs_sh/sound.lua#L166
	---@param pitch number Pitch to set to, between 0 and 255.
	---@param fade number? Time in seconds to transition to this new pitch. Default 0
	function _G.Sound:setPitch(pitch, fade) end
	--- setDSP - shared - libs_sh/sound.lua#L202
	---@param dsp number (0 - 133) DSP values. List can be found here https://developer.valvesoftware.com/wiki/Dsp_presets
	function _G.Sound:setDSP(dsp) end
	--- setSoundLevel - shared - libs_sh/sound.lua#L189
	---@param level number dB level, for information on the value to use see https://developer.valvesoftware.com/wiki/Soundscripts#SoundLevel
	function _G.Sound:setSoundLevel(level) end
	--- isPlaying - shared - libs_sh/sound.lua#L183
	---@return boolean undefined Whether the sound is playing or not
	function _G.Sound:isPlaying() end
	--- getSoundLevel - shared - libs_sh/sound.lua#L196
	---@return number undefined Level in dB
	function _G.Sound:getSoundLevel() end
	--- getDSP - shared - libs_sh/sound.lua#L209
	---@return number undefined (0 - 133) DSP value.
	function _G.Sound:getDSP() end
	--- play - shared - libs_sh/sound.lua#L118
	function _G.Sound:play() end
	--- destroy - shared - libs_sh/sound.lua#L134
	function _G.Sound:destroy() end
	--- setVolume - shared - libs_sh/sound.lua#L149
	---@param vol number Volume to set to, between 0 and 1.
	---@param fade number? Time in seconds to transition to this new volume. Default 0
	function _G.Sound:setVolume(vol, fade) end
---  Hologram type
---@class Hologram
_G.Hologram = {}
	--- setAngVel - server - libs_sh/hologram.lua#L184
	---@param angvel Angle *Vector* angular velocity.
	function _G.Hologram:setAngVel(angvel) end
	--- setAnimation - shared - libs_sh/hologram.lua#L413
	---@param animation number|string Animation number or string name.
	---@param frame number? Optional int (Default 0) The starting frame number. Does nothing if nil
	---@param rate number? Optional float (Default 1) Frame speed. Does nothing if nil
	function _G.Hologram:setAnimation(animation, frame, rate) end
	--- setVel - server - libs_sh/hologram.lua#L171
	---@param vel Vector New velocity
	function _G.Hologram:setVel(vel) end
	--- setScale - shared - libs_sh/hologram.lua#L346
	---@param scale Vector Vector new scale
	function _G.Hologram:setScale(scale) end
	--- getScale - shared - libs_sh/hologram.lua#L372
	---@return Vector undefined Vector scale
	function _G.Hologram:getScale() end
	--- setSize - shared - libs_sh/hologram.lua#L358
	---@param size Vector Vector new size in game units
	function _G.Hologram:setSize(size) end
	--- setFilterMag - client - libs_sh/hologram.lua#L244
	---@param val number The filter function to use http://wiki.facepunch.com/gmod/Enums/TEXFILTER
	function _G.Hologram:setFilterMag(val) end
	--- addEffects - shared - libs_sh/hologram.lua#L442
	---@param effect number The effects to add. See EF Enums
	function _G.Hologram:addEffects(effect) end
	--- setRenderMatrix - client - libs_sh/hologram.lua#L276
	---@param mat VMatrix Starfall matrix to use
	function _G.Hologram:setRenderMatrix(mat) end
	--- setPos - shared - libs_sh/hologram.lua#L208
	---@param vec Vector New position
	function _G.Hologram:setPos(vec) end
	--- setAngles - shared - libs_sh/hologram.lua#L226
	---@param ang Angle New angles
	function _G.Hologram:setAngles(ang) end
	--- setMoveType - server - libs_sh/hologram.lua#L195
	---@param Movetype number to set, either MOVETYPE.NOCLIP (default) or MOVETYPE.NONE
	function _G.Hologram:setMoveType(Movetype) end
	--- setModel - shared - libs_sh/hologram.lua#L399
	---@param model string string model path
	function _G.Hologram:setModel(model) end
	--- getSuppressEngineLighting - shared - libs_sh/hologram.lua#L392
	---@return boolean undefined Whether engine lighting is suppressed
	function _G.Hologram:getSuppressEngineLighting() end
	--- removeEffects - shared - libs_sh/hologram.lua#L454
	---@param effect number The effects to remove. See EF Enums
	function _G.Hologram:removeEffects(effect) end
	--- remove - shared - libs_sh/hologram.lua#L466
	function _G.Hologram:remove() end
	--- suppressEngineLighting - shared - libs_sh/hologram.lua#L379
	---@param suppress boolean Boolean to represent if shading should be set or not.
	function _G.Hologram:suppressEngineLighting(suppress) end
	--- setClip - shared - libs_sh/hologram.lua#L310
	---@param index number Whatever number you want the clip to be
	---@param enabled boolean Whether the clip is enabled
	---@param origin Vector The center of the clip plane in world coordinates, or local to entity if it is specified
	---@param normal Vector The the direction of the clip plane in world coordinates, or local to entity if it is specified
	---@param entity Entity? (Optional) The entity to make coordinates local to, otherwise the world is used
	function _G.Hologram:setClip(index, enabled, origin, normal, entity) end
	--- draw - client - libs_sh/hologram.lua#L299
	function _G.Hologram:draw() end
	--- setFilterMin - client - libs_sh/hologram.lua#L260
	---@param val number The filter function to use http://wiki.facepunch.com/gmod/Enums/TEXFILTER
	function _G.Hologram:setFilterMin(val) end
---  Light type
---@class Light
_G.Light = {}
	--- setNoWorld - client - libs_cl/light.lua#L203
	---@param on boolean Whether the light shouldn't cast onto the world
	function _G.Light:setNoWorld(on) end
	--- setOuterAngle - client - libs_cl/light.lua#L189
	---@param ang number Outer angle of the light
	function _G.Light:setOuterAngle(ang) end
	--- setInnerAngle - client - libs_cl/light.lua#L182
	---@param ang number Inner angle of the light
	function _G.Light:setInnerAngle(ang) end
	--- setStyle - client - libs_cl/light.lua#L230
	---@param style number The number of the flicker style
	function _G.Light:setStyle(style) end
	--- setColor - client - libs_cl/light.lua#L237
	---@param col Color The color of the light
	function _G.Light:setColor(col) end
	--- setBrightness - client - libs_cl/light.lua#L155
	---@param brightness number The light's brightness
	function _G.Light:setBrightness(brightness) end
	--- setDieTime - client - libs_cl/light.lua#L169
	---@param dietime number The how long the light will stay alive after turning it off.
	function _G.Light:setDieTime(dietime) end
	--- draw - client - libs_cl/light.lua#L135
	function _G.Light:draw() end
	--- setSize - client - libs_cl/light.lua#L223
	---@param size number The size of the light
	function _G.Light:setSize(size) end
	--- setMinLight - client - libs_cl/light.lua#L196
	---@param min number The minimum light
	function _G.Light:setMinLight(min) end
	--- setDecay - client - libs_cl/light.lua#L162
	---@param decay number The light's decay speed
	function _G.Light:setDecay(decay) end
	--- setPos - client - libs_cl/light.lua#L217
	---@param pos Vector The position of the light
	function _G.Light:setPos(pos) end
	--- setNoModel - client - libs_cl/light.lua#L210
	---@param on boolean Whether the light shouldn't cast onto the models
	function _G.Light:setNoModel(on) end
	--- setDirection - client - libs_cl/light.lua#L176
	---@param dir Vector Direction of the light
	function _G.Light:setDirection(dir) end
---  ParticleEffect type
---@class ParticleEffect
_G.ParticleEffect = {}
	--- setSortOrigin - client - libs_cl/particle_effect.lua#L156
	---@param origin Vector Sort Origin
	function _G.ParticleEffect:setSortOrigin(origin) end
	--- restart - client - libs_cl/particle_effect.lua#L133
	function _G.ParticleEffect:restart() end
	--- stopEmission - client - libs_cl/particle_effect.lua#L114
	function _G.ParticleEffect:stopEmission() end
	--- setControlPointEntity - client - libs_cl/particle_effect.lua#L181
	---@param id number Child Control Point ID (0-63)
	---@param entity Entity Entity parent
	function _G.ParticleEffect:setControlPointEntity(id, entity) end
	--- isFinished - client - libs_cl/particle_effect.lua#L143
	---@return boolean undefined If the particle effect is finished
	function _G.ParticleEffect:isFinished() end
	--- setControlPointParent - client - libs_cl/particle_effect.lua#L238
	---@param id number Child Control Point ID (0-63)
	---@param parentid number Parent control point ID (0-63)
	function _G.ParticleEffect:setControlPointParent(id, parentid) end
	--- setControlPoint - client - libs_cl/particle_effect.lua#L167
	---@param id number Control Point ID (0-63)
	---@param value Vector Value
	function _G.ParticleEffect:setControlPoint(id, value) end
	--- setUpVector - client - libs_cl/particle_effect.lua#L223
	---@param id number Control Point ID (0-63)
	---@param up Vector Up vector
	function _G.ParticleEffect:setUpVector(id, up) end
	--- destroy - client - libs_cl/particle_effect.lua#L123
	function _G.ParticleEffect:destroy() end
	--- setForwardVector - client - libs_cl/particle_effect.lua#L196
	---@param id number Control Point ID (0-63)
	---@param fwd Vector Forward vector
	function _G.ParticleEffect:setForwardVector(id, fwd) end
	--- startEmission - client - libs_cl/particle_effect.lua#L104
	function _G.ParticleEffect:startEmission() end
	--- setRightVector - client - libs_cl/particle_effect.lua#L209
	---@param id number Control Point ID (0-63)
	---@param right Vector Right vector
	function _G.ParticleEffect:setRightVector(id, right) end
	--- isValid - client - libs_cl/particle_effect.lua#L96
	---@return boolean undefined Is valid or not
	function _G.ParticleEffect:isValid() end
---  For playing music there is `Bass` type. You can pause and set current playback time in it. If you're looking to apply DSP effects on present game sounds, use `Sound` instead.
---@class Bass
_G.Bass = {}
	--- stop - client - libs_cl/bass.lua#L145
	function _G.Bass:stop() end
	--- getBitsPerSample - client - libs_cl/bass.lua#L262
	---@return number undefined Floating point number of bits per sample, or 0 if unknown.
	function _G.Bass:getBitsPerSample() end
	--- setPitch - client - libs_cl/bass.lua#L169
	---@param pitch number Pitch to set to. (0-100) 1 is normal pitch.
	function _G.Bass:setPitch(pitch) end
	--- setLooping - client - libs_cl/bass.lua#L189
	---@param loop boolean Whether the sound channel should loop.
	function _G.Bass:setLooping(loop) end
	--- getLevels - client - libs_cl/bass.lua#L238
	---@return number undefined The left sound level, a value between 0 and 1.
	---@return number undefined The right sound level, a value between 0 and 1.
	function _G.Bass:getLevels() end
	--- setPos - client - libs_cl/bass.lua#L176
	---@param pos Vector Where to position the sound.
	function _G.Bass:setPos(pos) end
	--- isOnline - client - libs_cl/bass.lua#L224
	---@return boolean undefined Boolean of whether the sound channel is streamed online.
	function _G.Bass:isOnline() end
	--- setFade - client - libs_cl/bass.lua#L182
	---@param min number The channel's volume is at maximum when the listener is within this distance (50-1000)
	---@param max number The channel's volume stops decreasing when the listener is beyond this distance. (10,000-200,000)
	function _G.Bass:setFade(min, max) end
	--- getLength - client - libs_cl/bass.lua#L195
	---@return number undefined Sound channel length in seconds.
	function _G.Bass:getLength() end
	--- pause - client - libs_cl/bass.lua#L157
	function _G.Bass:pause() end
	--- getFFT - client - libs_cl/bass.lua#L215
	---@param n number Number of consecutive audio samples, between 0 and 7. Depending on this parameter you will get 256*2^n samples.
	---@return table undefined Table containing DFT magnitudes, each between 0 and 1.
	function _G.Bass:getFFT(n) end
	--- getAverageBitRate - client - libs_cl/bass.lua#L269
	---@return number undefined The average bit rate of the sound channel.
	function _G.Bass:getAverageBitRate() end
	--- setPan - client - libs_cl/bass.lua#L251
	---@param Relative number integer volume between the left and right channels. Values must be -1 to 1 for relative left to right
	function _G.Bass:setPan(Relative) end
	--- getPan - client - libs_cl/bass.lua#L245
	---@return number undefined The pan. -1 to 1 for relative left to right
	function _G.Bass:getPan() end
	--- play - client - libs_cl/bass.lua#L140
	function _G.Bass:play() end
	--- setTime - client - libs_cl/bass.lua#L201
	---@param time number Sound channel playback time in seconds.
	---@param dontDecode boolean? Skip decoding to set time, which is much faster but less accurate. True by default.
	function _G.Bass:setTime(time, dontDecode) end
	--- getTime - client - libs_cl/bass.lua#L209
	---@return number undefined Sound channel playback time in seconds.
	function _G.Bass:getTime() end
	--- setVolume - client - libs_cl/bass.lua#L162
	---@param vol number Volume multiplier (1 is normal), between 0x and 10x.
	function _G.Bass:setVolume(vol) end
	--- isValid - client - libs_cl/bass.lua#L230
	---@return boolean undefined Boolean of whether the bass is valid.
	function _G.Bass:isValid() end
---  File type
---@class File
_G.File = {}
	--- write - client - libs_cl/file.lua#L464
	---@param str string The data to write
	function _G.File:write(str) end
	--- read - client - libs_cl/file.lua#L415
	---@param n number The length to read
	---@return string undefined The data
	function _G.File:read(n) end
	--- writeFloat - client - libs_cl/file.lua#L492
	---@param x number The float to write
	function _G.File:writeFloat(x) end
	--- seek - client - libs_cl/file.lua#L388
	---@param n number The position to set it to
	function _G.File:seek(n) end
	--- writeLong - client - libs_cl/file.lua#L499
	---@param x number The long to write
	function _G.File:writeLong(x) end
	--- flush - client - libs_cl/file.lua#L376
	function _G.File:flush() end
	--- writeDouble - client - libs_cl/file.lua#L485
	---@param x number The double to write
	function _G.File:writeDouble(x) end
	--- readLine - client - libs_cl/file.lua#L446
	---@return string undefined Line contents
	function _G.File:readLine() end
	--- readBool - client - libs_cl/file.lua#L422
	---@return boolean undefined Boolean
	function _G.File:readBool() end
	--- writeBool - client - libs_cl/file.lua#L471
	---@param x boolean The boolean to write
	function _G.File:writeBool(x) end
	--- readByte - client - libs_cl/file.lua#L428
	---@return number undefined UInt8 number
	function _G.File:readByte() end
	--- readFloat - client - libs_cl/file.lua#L440
	---@return number undefined Float32 number
	function _G.File:readFloat() end
	--- writeByte - client - libs_cl/file.lua#L478
	---@param x number The byte to write
	function _G.File:writeByte(x) end
	--- readLong - client - libs_cl/file.lua#L452
	---@return number undefined Int32 number
	function _G.File:readLong() end
	--- readDouble - client - libs_cl/file.lua#L434
	---@return number undefined Float64 number
	function _G.File:readDouble() end
	--- close - client - libs_cl/file.lua#L381
	function _G.File:close() end
	--- skip - client - libs_cl/file.lua#L395
	---@param n number How much to move the position
	---@return number undefined The resulting position
	function _G.File:skip(n) end
	--- writeShort - client - libs_cl/file.lua#L506
	---@param x number The short to write
	function _G.File:writeShort(x) end
	--- tell - client - libs_cl/file.lua#L403
	---@return number undefined The current file position
	function _G.File:tell() end
	--- readShort - client - libs_cl/file.lua#L458
	---@return number undefined Int16 number
	function _G.File:readShort() end
	--- size - client - libs_cl/file.lua#L409
	---@return number undefined The file's size
	function _G.File:size() end
---  Quaternion type. Recently reworked, for full changelist visit: https://github.com/thegrb93/StarfallEx/pull/953
---@class Quaternion
---@operator mul(Quaternion|number):Quaternion
---@operator sub(Quaternion|number):Quaternion
---@operator unm:Quaternion
---@operator pow(Quaternion|number):Quaternion
---@operator div(Quaternion|number):Quaternion
---@operator index(number|string):number
---@operator add(Quaternion|number):Quaternion
---@operator tostring(Quaternion):string
---@operator eq(Quaternion):boolean
_G.Quaternion = {}
	--- getMatrix - shared - libs_sh/quaternion.lua#L658
	---@param Optional boolean? bool, normalizes the quaternion
	---@return VMatrix undefined Transformation matrix
	function _G.Quaternion:getMatrix(Optional) end
	--- getMod - shared - libs_sh/quaternion.lua#L614
	---@return Quaternion undefined Quaternion with contained rotation
	function _G.Quaternion:getMod() end
	--- getForward - shared - libs_sh/quaternion.lua#L566
	---@return Vector undefined Vector pointing forward
	function _G.Quaternion:getForward() end
	--- set - shared - libs_sh/quaternion.lua#L471
	---@param quat Quaternion Quaternion to copy from
	function _G.Quaternion:set(quat) end
	--- getRight - shared - libs_sh/quaternion.lua#L554
	---@return Vector undefined Vector pointing right
	function _G.Quaternion:getRight() end
	--- getRotationVector - shared - libs_sh/quaternion.lua#L749
	---@return Vector undefined Rotation vector
	function _G.Quaternion:getRotationVector() end
	--- conjugate - shared - libs_sh/quaternion.lua#L594
	function _G.Quaternion:conjugate() end
	--- getExp - shared - libs_sh/quaternion.lua#L512
	---@return Quaternion undefined Constant e raised to the quaternion
	function _G.Quaternion:getExp() end
	--- pack - shared - libs_sh/quaternion.lua#L446
	---@param r number R component
	---@param i number I component
	---@param j number J component
	---@param k number K component
	function _G.Quaternion:pack(r, i, j, k) end
	--- getNormalized - shared - libs_sh/quaternion.lua#L628
	---@return Quaternion undefined Normalized quaternion
	function _G.Quaternion:getNormalized() end
	--- setK - shared - libs_sh/quaternion.lua#L502
	---@param k number Value of the K component
	---@return Quaternion undefined self
	function _G.Quaternion:setK(k) end
	--- log - shared - libs_sh/quaternion.lua#L534
	function _G.Quaternion:log() end
	--- setR - shared - libs_sh/quaternion.lua#L478
	---@param r number Value of the R component
	---@return Quaternion undefined self
	function _G.Quaternion:setR(r) end
	--- mod - shared - libs_sh/quaternion.lua#L622
	function _G.Quaternion:mod() end
	--- getRotationAngle - shared - libs_sh/quaternion.lua#L713
	---@param full boolean? Optional bool, if true returned angle will be between -180 and 180, otherwise between 0 and 360
	---@return number undefined Angle number
	function _G.Quaternion:getRotationAngle(full) end
	--- getEulerAngle - shared - libs_sh/quaternion.lua#L682
	---@return Angle undefined Angle object
	function _G.Quaternion:getEulerAngle() end
	--- setI - shared - libs_sh/quaternion.lua#L486
	---@param i number Value of the I component
	---@return Quaternion undefined self
	function _G.Quaternion:setI(i) end
	--- getVector - shared - libs_sh/quaternion.lua#L651
	---@return Vector undefined Vector from the quaternion
	function _G.Quaternion:getVector() end
	--- dot - shared - libs_sh/quaternion.lua#L642
	---@param quat Quaternion Second quaternion
	---@return number undefined The dot product
	function _G.Quaternion:dot(quat) end
	--- normalize - shared - libs_sh/quaternion.lua#L636
	function _G.Quaternion:normalize() end
	--- setJ - shared - libs_sh/quaternion.lua#L494
	---@param j number Value of the J component
	---@return Quaternion undefined self
	function _G.Quaternion:setJ(j) end
	--- clone - shared - libs_sh/quaternion.lua#L465
	---@return Quaternion undefined Duplicate quaternion
	function _G.Quaternion:clone() end
	--- getRotationAxis - shared - libs_sh/quaternion.lua#L736
	---@return Vector undefined Vector axis
	function _G.Quaternion:getRotationAxis() end
	--- getLog - shared - libs_sh/quaternion.lua#L526
	---@return Quaternion undefined Logarithmic quaternion
	function _G.Quaternion:getLog() end
	--- inverse - shared - libs_sh/quaternion.lua#L608
	function _G.Quaternion:inverse() end
	--- getAbsolute - shared - libs_sh/quaternion.lua#L580
	---@return Vector undefined Absolute value
	function _G.Quaternion:getAbsolute() end
	--- getUp - shared - libs_sh/quaternion.lua#L542
	---@return Vector undefined Vector pointing up
	function _G.Quaternion:getUp() end
	--- unpack - shared - libs_sh/quaternion.lua#L456
	---@return number undefined r
	---@return number undefined i
	---@return number undefined j
	---@return number undefined k
	function _G.Quaternion:unpack() end
	--- exp - shared - libs_sh/quaternion.lua#L520
	function _G.Quaternion:exp() end
	--- getInverse - shared - libs_sh/quaternion.lua#L600
	---@return Quaternion undefined Inverse of the quaternion
	function _G.Quaternion:getInverse() end
	--- getConjugate - shared - libs_sh/quaternion.lua#L586
	---@return Quaternion undefined Quaternion's conjugate
	function _G.Quaternion:getConjugate() end
---  Effect type
---@class Effect
_G.Effect = {}
	--- setAttachment - shared - libs_sh/effect.lua#L178
	---@param attachment number The new attachment ID of the effect
	function _G.Effect:setAttachment(attachment) end
	--- setRadius - shared - libs_sh/effect.lua#L253
	---@param radius number The radius
	function _G.Effect:setRadius(radius) end
	--- getAttachment - shared - libs_sh/effect.lua#L82
	---@return number undefined The effect's attachment ID
	function _G.Effect:getAttachment() end
	--- getRadius - shared - libs_sh/effect.lua#L148
	---@return number undefined The effect's radius
	function _G.Effect:getRadius() end
	--- getScale - shared - libs_sh/effect.lua#L154
	---@return number undefined The effect's scale
	function _G.Effect:getScale() end
	--- getSurfaceProp - shared - libs_sh/effect.lua#L166
	---@return number undefined The effect's surface property index
	function _G.Effect:getSurfaceProp() end
	--- getMaterialIndex - shared - libs_sh/effect.lua#L130
	---@return number undefined The effect's material index
	function _G.Effect:getMaterialIndex() end
	--- setColor - shared - libs_sh/effect.lua#L185
	---@param color number The color represented by a byte 0-255.
	function _G.Effect:setColor(color) end
	--- setOrigin - shared - libs_sh/effect.lua#L247
	---@param origin Vector The vector origin
	function _G.Effect:setOrigin(origin) end
	--- setMaterialIndex - shared - libs_sh/effect.lua#L234
	---@param mat number The material index
	function _G.Effect:setMaterialIndex(mat) end
	--- setSurfaceProp - shared - libs_sh/effect.lua#L274
	---@param prop number The surface property index
	function _G.Effect:setSurfaceProp(prop) end
	--- getStart - shared - libs_sh/effect.lua#L160
	---@return Vector undefined The effect's start position
	function _G.Effect:getStart() end
	--- setHitBox - shared - libs_sh/effect.lua#L220
	---@param hitbox number The hitbox
	function _G.Effect:setHitBox(hitbox) end
	--- setNormal - shared - libs_sh/effect.lua#L241
	---@param normal Vector The vector normal
	function _G.Effect:setNormal(normal) end
	--- getColor - shared - libs_sh/effect.lua#L88
	---@return number undefined The effect's color as a byte
	function _G.Effect:getColor() end
	--- getOrigin - shared - libs_sh/effect.lua#L142
	---@return Vector undefined The effect's origin
	function _G.Effect:getOrigin() end
	--- setEntIndex - shared - libs_sh/effect.lua#L200
	---@param index number The entity index
	function _G.Effect:setEntIndex(index) end
	--- setStart - shared - libs_sh/effect.lua#L267
	---@param start Vector The vector start
	function _G.Effect:setStart(start) end
	--- play - shared - libs_sh/effect.lua#L63
	---@param eff string The effect type name to play
	function _G.Effect:play(eff) end
	--- setMagnitude - shared - libs_sh/effect.lua#L227
	---@param magnitude number The magnitude
	function _G.Effect:setMagnitude(magnitude) end
	--- setAngles - shared - libs_sh/effect.lua#L172
	---@param ang Angle The angles
	function _G.Effect:setAngles(ang) end
	--- getEntity - shared - libs_sh/effect.lua#L106
	---@return Entity undefined The effect's entity
	function _G.Effect:getEntity() end
	--- getAngles - shared - libs_sh/effect.lua#L76
	---@return Angle undefined The effect's angle
	function _G.Effect:getAngles() end
	--- getHitBox - shared - libs_sh/effect.lua#L118
	---@return number undefined The effect's hitbox ID
	function _G.Effect:getHitBox() end
	--- setDamageType - shared - libs_sh/effect.lua#L193
	---@param dmgtype number The damage type, see the DMG enums
	function _G.Effect:setDamageType(dmgtype) end
	--- getNormal - shared - libs_sh/effect.lua#L136
	---@return Vector undefined The effect's normal
	function _G.Effect:getNormal() end
	--- getDamageType - shared - libs_sh/effect.lua#L94
	---@return number undefined The effect's damagetype
	function _G.Effect:getDamageType() end
	--- getFlags - shared - libs_sh/effect.lua#L112
	---@return number undefined The effect's flags
	function _G.Effect:getFlags() end
	--- setFlags - shared - libs_sh/effect.lua#L213
	---@param flags number The flags
	function _G.Effect:setFlags(flags) end
	--- getMagnitude - shared - libs_sh/effect.lua#L124
	---@return number undefined The effect's magnitude
	function _G.Effect:getMagnitude() end
	--- setEntity - shared - libs_sh/effect.lua#L207
	---@param ent Entity The entity
	function _G.Effect:setEntity(ent) end
	--- getEntIndex - shared - libs_sh/effect.lua#L100
	---@return number undefined The effect's entindex
	function _G.Effect:getEntIndex() end
	--- setScale - shared - libs_sh/effect.lua#L260
	---@param scale number The number scale
	function _G.Effect:setScale(scale) end
---  Weapon type
---@class Weapon
---@operator tostring:string
_G.Weapon = {}
	--- getNextSecondaryFire - shared - libs_sh/weapons.lua#L78
	---@return number undefined The time, relative to CurTime
	function _G.Weapon:getNextSecondaryFire() end
	--- lastShootTime - shared - libs_sh/weapons.lua#L106
	---@return number undefined Time the weapon was last shot
	function _G.Weapon:lastShootTime() end
	--- clip1 - shared - libs_sh/weapons.lua#L29
	---@return number undefined Amount of ammo
	function _G.Weapon:clip1() end
	--- maxClip1 - shared - libs_sh/weapons.lua#L36
	---@return number undefined Amount of ammo
	function _G.Weapon:maxClip1() end
	--- getActivity - shared - libs_sh/weapons.lua#L57
	---@return number undefined Current activity
	function _G.Weapon:getActivity() end
	--- maxClip2 - shared - libs_sh/weapons.lua#L50
	---@return number undefined Amount of ammo
	function _G.Weapon:maxClip2() end
	--- getPrintName - client - libs_sh/weapons.lua#L122
	---@return string undefined Display name of weapon
	function _G.Weapon:getPrintName() end
	--- getNextPrimaryFire - shared - libs_sh/weapons.lua#L71
	---@return number undefined The time, relative to CurTime
	function _G.Weapon:getNextPrimaryFire() end
	--- isCarriedByLocalPlayer - client - libs_sh/weapons.lua#L129
	---@return boolean undefined Whether or not the weapon is carried by the local player
	function _G.Weapon:isCarriedByLocalPlayer() end
	--- getToolMode - shared - libs_sh/weapons.lua#L113
	---@return string undefined The tool mode of the toolgun
	function _G.Weapon:getToolMode() end
	--- isWeaponVisible - shared - libs_sh/weapons.lua#L99
	---@return boolean undefined Whether the weapon is visible or not
	function _G.Weapon:isWeaponVisible() end
	--- clip2 - shared - libs_sh/weapons.lua#L43
	---@return number undefined Amount of ammo
	function _G.Weapon:clip2() end
	--- getSecondaryAmmoType - shared - libs_sh/weapons.lua#L92
	---@return number undefined Ammo number type
	function _G.Weapon:getSecondaryAmmoType() end
	--- getHoldType - shared - libs_sh/weapons.lua#L64
	---@return string undefined Holdtype
	function _G.Weapon:getHoldType() end
	--- getPrimaryAmmoType - shared - libs_sh/weapons.lua#L85
	---@return number undefined Ammo number type
	function _G.Weapon:getPrimaryAmmoType() end
---  Particle type
---@class Particle
_G.Particle = {}
	--- setVelocity - client - libs_cl/particle.lua#L295
	---@param vel Vector Velocity to set to
	function _G.Particle:setVelocity(vel) end
	--- setAngleVelocity - client - libs_cl/particle.lua#L235
	---@param angVel Angle Angular velocity to set the particle's to
	function _G.Particle:setAngleVelocity(angVel) end
	--- getPos - client - libs_cl/particle.lua#L211
	---@return Vector undefined Position of the particle
	function _G.Particle:getPos() end
	--- getAngles - client - libs_cl/particle.lua#L193
	---@return Angle undefined Angles of the particle
	function _G.Particle:getAngles() end
	--- setBounce - client - libs_cl/particle.lua#L241
	---@param bounce number Bounciness to set to
	function _G.Particle:setBounce(bounce) end
	--- setPos - client - libs_cl/particle.lua#L275
	---@param pos Vector Vector position to set to
	function _G.Particle:setPos(pos) end
	--- getRoll - client - libs_cl/particle.lua#L217
	---@return number undefined Roll
	function _G.Particle:getRoll() end
	--- setRoll - client - libs_cl/particle.lua#L281
	---@param roll number Roll
	function _G.Particle:setRoll(roll) end
	--- getAngleVelocity - client - libs_cl/particle.lua#L199
	---@return Angle undefined Angular velocity of the particle
	function _G.Particle:getAngleVelocity() end
	--- setAngles - client - libs_cl/particle.lua#L229
	---@param ang Angle Angles to set the particle's angles to
	function _G.Particle:setAngles(ang) end
	--- setVelocityScale - client - libs_cl/particle.lua#L314
	---@param doScale boolean Whether it should scale
	function _G.Particle:setVelocityScale(doScale) end
	--- getVelocity - client - libs_cl/particle.lua#L223
	---@return Vector undefined Velocity
	function _G.Particle:getVelocity() end
	--- setRollDelta - client - libs_cl/particle.lua#L288
	---@param rollDelta number Rolldelta
	function _G.Particle:setRollDelta(rollDelta) end
	--- setGravity - client - libs_cl/particle.lua#L308
	---@param gravity Vector Directional gravity
	function _G.Particle:setGravity(gravity) end
	--- setAirResistance - client - libs_cl/particle.lua#L301
	---@param airResistance number AirResistance to set to
	function _G.Particle:setAirResistance(airResistance) end
	--- setColor - client - libs_cl/particle.lua#L255
	---@param col Color Color to set to
	function _G.Particle:setColor(col) end
	--- setMaterial - client - libs_cl/particle.lua#L269
	---@param mat Material Material to set
	function _G.Particle:setMaterial(mat) end
	--- setCollide - client - libs_cl/particle.lua#L248
	---@param shouldCollide boolean Whether it should collide
	function _G.Particle:setCollide(shouldCollide) end
	--- setLighting - client - libs_cl/particle.lua#L262
	---@param useLighting boolean Whether the particle should be affected by lighting
	function _G.Particle:setLighting(useLighting) end
	--- getColor - client - libs_cl/particle.lua#L205
	---@return Color undefined Color of the particle
	function _G.Particle:getColor() end
--- 
---  The `Material` type is used to control shaders in rendering.
--- 
---  For a list of shader parameters, see https://developer.valvesoftware.com/wiki/Category:List_of_Shader_Parameters
--- 
---  For a list of $flags and $flags2, see https://developer.valvesoftware.com/wiki/Material_Flags
---@class Material
_G.Material = {}
	--- getFloat - client - libs_cl/material.lua#L594
	---@param key string The key to get the float from
	---@return number? undefined The float value or nil if it doesn't exist
	function _G.Material:getFloat(key) end
	--- recompute - client - libs_cl/material.lua#L665
	function _G.Material:recompute() end
	--- getMatrix - client - libs_cl/material.lua#L619
	---@param key string The key to get the matrix from
	---@return VMatrix? undefined The matrix value or nil if it doesn't exist
	function _G.Material:getMatrix(key) end
	--- getColor - client - libs_cl/material.lua#L583
	---@param x number The x coordinate of the pixel
	---@param y number The y coordinate of the pixel
	---@return Color undefined The color value
	function _G.Material:getColor(x, y) end
	--- getInt - client - libs_cl/material.lua#L603
	---@param key string The key to get the int from
	---@return number? undefined The int value or nil if it doesn't exist
	function _G.Material:getInt(key) end
	--- setInt - client - libs_cl/material.lua#L679
	---@param key string The key name to set
	---@param v number The value to set it to
	function _G.Material:setInt(key, v) end
	--- getTexture - client - libs_cl/material.lua#L637
	---@param key string The key to get the texture from
	---@return string? undefined The string id of the texture or nil if it doesn't exist
	function _G.Material:getTexture(key) end
	--- setFloat - client - libs_cl/material.lua#L670
	---@param key string The key name to set
	---@param v number The value to set it to
	function _G.Material:setFloat(key, v) end
	--- setTexture - client - libs_cl/material.lua#L705
	---@param key string The key name to set. $basetexture is the key name for most purposes.
	---@param v string The texture name to set it to.
	function _G.Material:setTexture(key, v) end
	--- setUndefined - client - libs_cl/material.lua#L791
	---@param key string The key name to set
	function _G.Material:setUndefined(key) end
	--- getString - client - libs_cl/material.lua#L628
	---@param key string The key to get the string from
	---@return string? undefined The string value or nil if it doesn't exist
	function _G.Material:getString(key) end
	--- getVectorLinear - client - libs_cl/material.lua#L656
	---@param key string The key to get the vector from
	---@return Vector? undefined The vector value or nil if it doesn't exist
	function _G.Material:getVectorLinear(key) end
	--- setTextureURL - client - libs_cl/material.lua#L715
	---@param key string The key name to set. $basetexture is the key name for most purposes.
	---@param url string The url or base64 data
	---@param cb function? An optional callback called when image is loaded. Passes nil if it fails or Passes the material, url, width, height, and layout function which can be called with x, y, w, h to reposition the image in the texture
	---@param done function? An optional callback called when the image is done loading. Passes the material, url
	function _G.Material:setTextureURL(key, url, cb, done) end
	--- getKeyValues - client - libs_cl/material.lua#L612
	---@return table undefined The table of keyvalues
	function _G.Material:getKeyValues() end
	--- getName - client - libs_cl/material.lua#L555
	---@return string undefined The name of the material. If this material is user created, add ! to the beginning of this to use it with entity.setMaterial
	function _G.Material:getName() end
	--- destroy - client - libs_cl/material.lua#L532
	function _G.Material:destroy() end
	--- setVector - client - libs_cl/material.lua#L798
	---@param key string The key name to set
	---@param v Vector The value to set it to
	function _G.Material:setVector(key, v) end
	--- setString - client - libs_cl/material.lua#L696
	---@param key string The key name to set
	---@param v string The value to set it to
	function _G.Material:setString(key, v) end
	--- setMatrix - client - libs_cl/material.lua#L688
	---@param key string The key name to set
	---@param v VMatrix The value to set it to
	function _G.Material:setMatrix(key, v) end
	--- getShader - client - libs_cl/material.lua#L562
	---@return string undefined The shader name of the material
	function _G.Material:getShader() end
	--- getVector - client - libs_cl/material.lua#L647
	---@param key string The key to get the vector from
	---@return string? undefined The string id of the texture or nil if it doesn't exist
	function _G.Material:getVector(key) end
	--- setTextureRenderTarget - client - libs_cl/material.lua#L777
	---@param key string The key name to set. $basetexture is the key name for most purposes.
	---@param name string The name of the rendertarget
	function _G.Material:setTextureRenderTarget(key, name) end
	--- getWidth - client - libs_cl/material.lua#L569
	---@return number undefined The basetexture's width
	function _G.Material:getWidth() end
	--- getHeight - client - libs_cl/material.lua#L576
	---@return number undefined The basetexture's height
	function _G.Material:getHeight() end
---  PhysObj Type
---@class PhysObj
_G.PhysObj = {}
	--- localToWorld - shared - libs_sh/physobj.lua#L149
	---@param vec Vector The vector to transform
	---@return Vector undefined The transformed vector
	function _G.PhysObj:localToWorld(vec) end
	--- setDamping - shared - libs_sh/physobj.lua#L483
	---@param linear number Number of the linear damping
	---@param angular number Number of the angular damping
	function _G.PhysObj:setDamping(linear, angular) end
	--- getMatrix - shared - libs_sh/physobj.lua#L60
	---@return VMatrix undefined The matrix
	function _G.PhysObj:getMatrix() end
	--- setAngleVelocity - server - libs_sh/physobj.lua#L313
	---@param angvel Vector The local angvel vector to set
	function _G.PhysObj:setAngleVelocity(angvel) end
	--- getPos - shared - libs_sh/physobj.lua#L53
	---@return Vector undefined Vector position of the physics object
	function _G.PhysObj:getPos() end
	--- getAngles - shared - libs_sh/physobj.lua#L67
	---@return Angle undefined Angle angles of the physics object
	function _G.PhysObj:getAngles() end
	--- addGameFlags - shared - libs_sh/physobj.lua#L384
	---@param flags number The flags to add. FVPHYSICS enum.
	function _G.PhysObj:addGameFlags(flags) end
	--- enableMotion - shared - libs_sh/physobj.lua#L496
	---@param move boolean Should the bone move?
	function _G.PhysObj:enableMotion(move) end
	--- setPos - server - libs_sh/physobj.lua#L218
	---@param pos Vector The position vector to set it to
	function _G.PhysObj:setPos(pos) end
	--- isDragEnabled - shared - libs_sh/physobj.lua#L450
	---@return boolean undefined If bone is affected by drag
	function _G.PhysObj:isDragEnabled() end
	--- setAngleDragCoefficient - shared - libs_sh/physobj.lua#L466
	---@param coeff number How much drag affects the bone when rotating
	function _G.PhysObj:setAngleDragCoefficient(coeff) end
	--- applyTorque - server - libs_sh/physobj.lua#L339
	---@param torque Vector The world torque vector to apply
	function _G.PhysObj:applyTorque(torque) end
	--- getVelocity - shared - libs_sh/physobj.lua#L74
	---@return Vector undefined Vector velocity of the physics object
	function _G.PhysObj:getVelocity() end
	--- getStress - server - libs_sh/physobj.lua#L555
	---@return number undefined External stress. Usually about the mass of the object if on the ground, usually 0 if in freefall.
	---@return number undefined Internal stress. Usually about the mass of every object resting on top of it combined.
	function _G.PhysObj:getStress() end
	--- worldToLocal - shared - libs_sh/physobj.lua#L142
	---@param vec Vector The vector to transform
	---@return Vector undefined The transformed vector
	function _G.PhysObj:worldToLocal(vec) end
	--- sleep - server - libs_sh/physobj.lua#L513
	function _G.PhysObj:sleep() end
	--- getFrictionSnapshot - server - libs_sh/physobj.lua#L529
	---@return table undefined Table of tables of data. Each table will contain:
	function _G.PhysObj:getFrictionSnapshot() end
	--- setDragCoefficient - shared - libs_sh/physobj.lua#L457
	---@param coeff number How much drag affects the bone
	function _G.PhysObj:setDragCoefficient(coeff) end
	--- getMassCenter - shared - libs_sh/physobj.lua#L121
	---@return Vector undefined Center of mass vector in the physobject's local reference frame.
	function _G.PhysObj:getMassCenter() end
	--- getVolume - shared - libs_sh/physobj.lua#L548
	---@return number? undefined The volume or nil if the PhysObj is a generated sphere or box.
	function _G.PhysObj:getVolume() end
	--- getMesh - shared - libs_sh/physobj.lua#L170
	---@return table undefined Table of MeshVertex structures
	function _G.PhysObj:getMesh() end
	--- addAngleVelocity - server - libs_sh/physobj.lua#L326
	---@param angvel Vector The local angvel vector to apply
	function _G.PhysObj:addAngleVelocity(angvel) end
	--- isAsleep - server - libs_sh/physobj.lua#L505
	---@return boolean undefined If the physobj is asleep
	function _G.PhysObj:isAsleep() end
	--- getLocalVelocity - shared - libs_sh/physobj.lua#L81
	---@return Vector undefined Vector velocity of the physics object local to itself
	function _G.PhysObj:getLocalVelocity() end
	--- applyForceOffset - server - libs_sh/physobj.lua#L297
	---@param force Vector The force vector in world coordinates
	---@param position Vector The force position in world coordinates
	function _G.PhysObj:applyForceOffset(force, position) end
	--- setBuoyancyRatio - server - libs_sh/physobj.lua#L269
	---@param ratio number The buoyancy ratio to use
	function _G.PhysObj:setBuoyancyRatio(ratio) end
	--- setMaterial - shared - libs_sh/physobj.lua#L184
	---@param materialName string The physical material to set it to
	function _G.PhysObj:setMaterial(materialName) end
	--- isMoveable - shared - libs_sh/physobj.lua#L203
	---@return boolean undefined Whether the object is moveable
	function _G.PhysObj:isMoveable() end
	--- getMass - shared - libs_sh/physobj.lua#L114
	---@return number undefined Mass of the physics object
	function _G.PhysObj:getMass() end
	--- isValid - shared - libs_sh/physobj.lua#L39
	---@return boolean undefined If the physics object is valid
	function _G.PhysObj:isValid() end
	--- wake - server - libs_sh/physobj.lua#L521
	function _G.PhysObj:wake() end
	--- localToWorldVector - shared - libs_sh/physobj.lua#L163
	---@param vec Vector The normal vector to transform
	---@return Vector undefined The transformed vector
	function _G.PhysObj:localToWorldVector(vec) end
	--- enableDrag - shared - libs_sh/physobj.lua#L442
	---@param drag boolean Should the bone have air resistance?
	function _G.PhysObj:enableDrag(drag) end
	--- addVelocity - server - libs_sh/physobj.lua#L257
	---@param vel Vector The world velocity vector to apply
	function _G.PhysObj:addVelocity(vel) end
	--- applyForceCenter - server - libs_sh/physobj.lua#L284
	---@param force Vector The force vector to apply
	function _G.PhysObj:applyForceCenter(force) end
	--- getVelocityAtPoint - shared - libs_sh/physobj.lua#L98
	---@param vec Vector The point to get velocity of in local reference frame
	---@return Vector undefined Vector Local velocity of the physics object at the point
	function _G.PhysObj:getVelocityAtPoint(vec) end
	--- isGravityEnabled - shared - libs_sh/physobj.lua#L210
	---@return boolean undefined Whether the object is affect gravity
	function _G.PhysObj:isGravityEnabled() end
	--- getAngleVelocity - shared - libs_sh/physobj.lua#L107
	---@return Vector undefined Vector angular velocity of the physics object
	function _G.PhysObj:getAngleVelocity() end
	--- setInertia - server - libs_sh/physobj.lua#L365
	---@param inertia Vector The inertia vector to set it to
	function _G.PhysObj:setInertia(inertia) end
	--- setAngles - server - libs_sh/physobj.lua#L231
	---@param ang Angle The angle to set it to
	function _G.PhysObj:setAngles(ang) end
	--- getEntity - shared - libs_sh/physobj.lua#L46
	---@return Entity undefined The entity attached to the physics object
	function _G.PhysObj:getEntity() end
	--- enableGravity - shared - libs_sh/physobj.lua#L433
	---@param grav boolean Should the bone respect gravity?
	function _G.PhysObj:enableGravity(grav) end
	--- getDamping - shared - libs_sh/physobj.lua#L475
	---@return number undefined Linear damping
	---@return number undefined Angular damping
	function _G.PhysObj:getDamping() end
	--- clearGameFlags - shared - libs_sh/physobj.lua#L404
	---@param flags number The flags to clear. FVPHYSICS enum.
	function _G.PhysObj:clearGameFlags(flags) end
	--- setMass - server - libs_sh/physobj.lua#L352
	---@param mass number The mass to set it to
	function _G.PhysObj:setMass(mass) end
	--- hasGameFlags - shared - libs_sh/physobj.lua#L424
	---@param flags number The flags to test. FVPHYSICS enum.
	---@return boolean undefined If the flags are set
	function _G.PhysObj:hasGameFlags(flags) end
	--- getMaterial - shared - libs_sh/physobj.lua#L135
	---@return string undefined The physics material of the physics object
	function _G.PhysObj:getMaterial() end
	--- worldToLocalVector - shared - libs_sh/physobj.lua#L156
	---@param vec Vector The normal vector to transform
	---@return Vector undefined The transformed vector
	function _G.PhysObj:worldToLocalVector(vec) end
	--- getSurfaceArea - shared - libs_sh/physobj.lua#L197
	---@return number? undefined Surface area, or nil if a generated sphere or box
	function _G.PhysObj:getSurfaceArea() end
	--- getAABB - shared - libs_sh/physobj.lua#L89
	---@return Vector undefined The mins of the AABB
	---@return Vector undefined The maxs of the AABB
	function _G.PhysObj:getAABB() end
	--- getMeshConvexes - shared - libs_sh/physobj.lua#L177
	---@return table undefined Table of MeshVertex structures
	function _G.PhysObj:getMeshConvexes() end
	--- getInertia - shared - libs_sh/physobj.lua#L128
	---@return Vector undefined Vector Inertia of the physics object
	function _G.PhysObj:getInertia() end
	--- setVelocity - server - libs_sh/physobj.lua#L244
	---@param vel Vector The velocity vector to set it to
	function _G.PhysObj:setVelocity(vel) end
---  VMatrix type
---@class VMatrix
---@operator mul(VMatrix|Vector):VMatrix
---@operator sub(VMatrix):VMatrix
---@operator add(VMatrix):VMatrix
---@operator tostring:string
_G.VMatrix = {}
	--- setRight - shared - libs_sh/vmatrix.lua#L172
	---@param right Vector The right vector
	function _G.VMatrix:setRight(right) end
	--- invert - shared - libs_sh/vmatrix.lua#L239
	---@return boolean undefined Whether the matrix was inverted or not
	function _G.VMatrix:invert() end
	--- getInverse - shared - libs_sh/vmatrix.lua#L99
	---@return VMatrix undefined Inverted matrix
	function _G.VMatrix:getInverse() end
	--- setForward - shared - libs_sh/vmatrix.lua#L165
	---@param forward Vector The forward vector
	function _G.VMatrix:setForward(forward) end
	--- getAngles - shared - libs_sh/vmatrix.lua#L56
	---@return Angle undefined Angles
	function _G.VMatrix:getAngles() end
	--- getScale - shared - libs_sh/vmatrix.lua#L62
	---@return Vector undefined Scale
	function _G.VMatrix:getScale() end
	--- getForward - shared - libs_sh/vmatrix.lua#L111
	---@return Vector undefined Translation
	function _G.VMatrix:getForward() end
	--- setAxisAngle - shared - libs_sh/vmatrix.lua#L264
	---@param axis Vector The normalized axis of rotation
	---@param angle number The angle of rotation in radians
	function _G.VMatrix:setAxisAngle(axis, angle) end
	--- getField - shared - libs_sh/vmatrix.lua#L74
	---@param row number A number from 1 to 4
	---@param column number A number from 1 to 4
	---@return number undefined Value of the specified field
	function _G.VMatrix:getField(row, column) end
	--- set - shared - libs_sh/vmatrix.lua#L214
	---@param src VMatrix Second matrix
	function _G.VMatrix:set(src) end
	--- translate - shared - libs_sh/vmatrix.lua#L252
	---@param vec Vector Vector to translate by
	function _G.VMatrix:translate(vec) end
	--- getRight - shared - libs_sh/vmatrix.lua#L117
	---@return Vector undefined Translation
	function _G.VMatrix:getRight() end
	--- setTranslation - shared - libs_sh/vmatrix.lua#L158
	---@param vec Vector New translation
	function _G.VMatrix:setTranslation(vec) end
	--- invertTR - shared - libs_sh/vmatrix.lua#L246
	function _G.VMatrix:invertTR() end
	--- isRotationMatrix - shared - libs_sh/vmatrix.lua#L233
	---@return boolean undefined True/False
	function _G.VMatrix:isRotationMatrix() end
	--- rotate - shared - libs_sh/vmatrix.lua#L82
	---@param ang Angle Angle to rotate by
	function _G.VMatrix:rotate(ang) end
	--- scale - shared - libs_sh/vmatrix.lua#L136
	---@param vec Vector Vector to scale by
	function _G.VMatrix:scale(vec) end
	--- setScale - shared - libs_sh/vmatrix.lua#L129
	---@param vec Vector New scale
	function _G.VMatrix:setScale(vec) end
	--- getAxisAngle - shared - libs_sh/vmatrix.lua#L289
	---@return Vector undefined The axis of rotation
	---@return number undefined The angle of rotation
	function _G.VMatrix:getAxisAngle() end
	--- isIdentity - shared - libs_sh/vmatrix.lua#L227
	---@return boolean undefined True/False
	function _G.VMatrix:isIdentity() end
	--- getRotatedAroundAxis - shared - libs_sh/vmatrix.lua#L89
	---@param axis Vector Axis to rotate around
	---@param ang number Angle to rotate by in radians
	---@return VMatrix undefined The rotated matrix
	function _G.VMatrix:getRotatedAroundAxis(axis, ang) end
	--- clone - shared - libs_sh/vmatrix.lua#L195
	---@return VMatrix undefined The copy of the matrix
	function _G.VMatrix:clone() end
	--- setIdentity - shared - libs_sh/vmatrix.lua#L221
	function _G.VMatrix:setIdentity() end
	--- setUnpacked - shared - libs_sh/vmatrix.lua#L207
	---@param fields ...number The 16 fields
	function _G.VMatrix:setUnpacked(fields) end
	--- getUp - shared - libs_sh/vmatrix.lua#L123
	---@return Vector undefined Translation
	function _G.VMatrix:getUp() end
	--- setUp - shared - libs_sh/vmatrix.lua#L179
	---@param up Vector The up vector
	function _G.VMatrix:setUp(up) end
	--- getTranslation - shared - libs_sh/vmatrix.lua#L68
	---@return Vector undefined Translation
	function _G.VMatrix:getTranslation() end
	--- getInverseTR - shared - libs_sh/vmatrix.lua#L105
	---@return VMatrix undefined Inverted matrix
	function _G.VMatrix:getInverseTR() end
	--- setAngles - shared - libs_sh/vmatrix.lua#L151
	---@param ang Angle New angles
	function _G.VMatrix:setAngles(ang) end
	--- toTable - shared - libs_sh/vmatrix.lua#L258
	---@return table undefined The 4x4 table
	function _G.VMatrix:toTable() end
	--- unpack - shared - libs_sh/vmatrix.lua#L201
	---@return ...number undefined The 16 fields
	function _G.VMatrix:unpack() end
	--- setField - shared - libs_sh/vmatrix.lua#L186
	---@param row number A number from 1 to 4
	---@param column number A number from 1 to 4
	---@param value number Value to set
	function _G.VMatrix:setField(row, column, value) end
	--- scaleTranslation - shared - libs_sh/vmatrix.lua#L143
	---@param num number Amount to scale by
	function _G.VMatrix:scaleTranslation(num) end
---  Websocket Type. Create a websocket with WebSocket(...)
---@class WebSocket
_G.WebSocket = {}
	--- close - client - libs_cl/websocket.lua#L132
	function _G.WebSocket:close() end
	--- write - client - libs_cl/websocket.lua#L137
	---@param msg string What to send
	function _G.WebSocket:write(msg) end
	--- getState - client - libs_cl/websocket.lua#L148
	---@return number undefined The current state of the websocket.
	function _G.WebSocket:getState() end
	--- connect - client - libs_cl/websocket.lua#L143
	function _G.WebSocket:connect() end
---  A constraint entity returned by constraint functions
---@class Constraint
---@operator tostring:string
_G.Constraint = {}
	--- remove - server - libs_sv/constraint.lua#L69
	function _G.Constraint:remove() end
	--- isValid - server - libs_sv/constraint.lua#L83
	---@return boolean undefined True if valid, false if not
	function _G.Constraint:isValid() end
---  Entity type
---@class Entity
---@operator tostring:string
_G.Entity = {}
	--- localToWorld - shared - libs_sh/entities.lua#L1224
	---@param data Vector Local space vector
	---@return Vector undefined data as world space vector
	function _G.Entity:localToWorld(data) end
	--- setVelocity - server - libs_sv/entities.lua#L390
	---@param vel Vector New velocity
	function _G.Entity:setVelocity(vel) end
	--- obbMins - shared - libs_sh/entities.lua#L1118
	---@return Vector undefined The min bounding box vector
	function _G.Entity:obbMins() end
	--- getForward - shared - libs_sh/entities.lua#L1562
	---@return Vector undefined Vector forward
	function _G.Entity:getForward() end
	--- setSolid - server - libs_sv/entities.lua#L474
	---@param solid boolean Should the entity be solid?
	function _G.Entity:setSolid(solid) end
	--- getCreationTime - shared - libs_sh/entities.lua#L1569
	---@return number undefined Seconds relative to server map start
	function _G.Entity:getCreationTime() end
	--- getNWVar - shared - libs_sh/entities.lua#L1774
	---@param key string The string key to get
	---@return any undefined The object associated with that key or nil if it's not set
	function _G.Entity:getNWVar(key) end
	--- setTrails - server - libs_sv/entities.lua#L765
	---@param startSize number The start size of the trail (0-128)
	---@param endSize number The end size of the trail (0-128)
	---@param length number The length size of the trail
	---@param material string The material of the trail
	---@param color Color The color of the trail
	---@param attachmentID number? Optional attachmentid the trail should attach to
	---@param additive boolean? If the trail's rendering is additive
	function _G.Entity:setTrails(startSize, endSize, length, material, color, attachmentID, additive) end
	--- getHitBoxBounds - shared - libs_sh/entities.lua#L1611
	---@param hitbox number The number of the hitbox.
	---@param group number The number of the hitbox group, 0 in most cases.
	---@return Vector undefined Hitbox mins vector.
	---@return Vector undefined Hitbox maxs vector.
	function _G.Entity:getHitBoxBounds(hitbox, group) end
	--- setUnbreakable - server - libs_sv/entities.lua#L804
	---@param on boolean Whether to make the prop unbreakable
	function _G.Entity:setUnbreakable(on) end
	--- addCollisionListener - server - libs_sv/entities.lua#L321
	---@param func function The callback function with argument, table collsiondata, http://wiki.facepunch.com/gmod/Structures/CollisionData
	function _G.Entity:addCollisionListener(func) end
	--- isKeysOwned - shared - libs_sh/darkrp2.lua#L849
	---@return boolean undefined Whether it's owned.
	function _G.Entity:isKeysOwned() end
	--- getLinkedComponents - shared - libs_sh/entities.lua#L309
	---@return table undefined A list of components linked to the entity
	function _G.Entity:getLinkedComponents() end
	--- getVelocity - shared - libs_sh/entities.lua#L1190
	---@return Vector undefined The velocity vector
	function _G.Entity:getVelocity() end
	--- setPhysMaterial - server - libs_sv/entities.lua#L540
	---@param materialName string Material to use
	function _G.Entity:setPhysMaterial(materialName) end
	--- getModelContents - shared - libs_sh/entities.lua#L1466
	---@return number undefined Contents of the entity's model. https://wiki.facepunch.com/gmod/Enums/CONTENTS
	function _G.Entity:getModelContents() end
	--- getQuotaUsed - shared - libs_sh/entities.lua#L879
	---@return number undefined Current quota used this Think
	function _G.Entity:getQuotaUsed() end
	--- getMaterials - shared - libs_sh/entities.lua#L1540
	---@return table undefined Material
	function _G.Entity:getMaterials() end
	--- enableGravity - server - libs_sv/entities.lua#L587
	---@param grav boolean Should the entity respect gravity?
	function _G.Entity:enableGravity(grav) end
	--- setMesh - client - libs_sh/entities.lua#L172
	---@param mesh Mesh? The mesh to set it to or nil to set back to normal
	function _G.Entity:setMesh(mesh) end
	--- setComponentLocksControls - server - libs_sv/entities.lua#L95
	---@param enable boolean Whether the component will lock the player's controls when used
	function _G.Entity:setComponentLocksControls(enable) end
	--- getBrushPlaneCount - shared - libs_sh/entities.lua#L1697
	---@return number undefined The amount of brush planes
	function _G.Entity:getBrushPlaneCount() end
	--- getCollisionGroup - shared - libs_sh/entities.lua#L665
	---@return number undefined The collision group enum of the entity. https://wiki.facepunch.com/gmod/Enums/COLLISION_GROUP
	function _G.Entity:getCollisionGroup() end
	--- setDrawShadow - server - libs_sv/entities.lua#L354
	---@param draw boolean Whether the shadow should draw
	---@param ply Player? Optional player argument to set only for that player. Can also be table of players.
	function _G.Entity:setDrawShadow(draw, ply) end
	--- getCount - shared - libs_sh/darkrp2.lua#L877
	---@return number? undefined Number of items remaining, or nil if not a shipment
	function _G.Entity:getCount() end
	--- setRenderMode - shared - libs_sh/entities.lua#L565
	---@param rendermode number Rendermode to use. http://wiki.facepunch.com/gmod/Enums/RENDERMODE
	function _G.Entity:setRenderMode(rendermode) end
	--- getPersistent - shared - libs_sh/entities.lua#L1596
	---@return boolean undefined True if the entity is persistent
	function _G.Entity:getPersistent() end
	--- addVelocity - server - libs_sv/entities.lua#L403
	---@param vel Vector The world velocity vector to apply
	function _G.Entity:addVelocity(vel) end
	--- getInertia - shared - libs_sh/entities.lua#L1179
	---@return Vector undefined The principle moments of inertia as a vector
	function _G.Entity:getInertia() end
	--- getInternalVariable - shared - libs_sh/entities.lua#L1827
	---@param variableName string Name of the internal save table variable.
	---@return any undefined The internal variable associated with the name.
	function _G.Entity:getInternalVariable(variableName) end
	--- doorIndex - server - libs_sh/darkrp2.lua#L814
	---@return number? undefined The door index, or nil if not a door.
	function _G.Entity:doorIndex() end
	--- getAllConstrained - server - libs_sv/entities.lua#L711
	---@param filter table? Optional constraint type filter table where keys are the type name and values are 'true'. "Wire" and "Parent" are used for wires and parents.
	function _G.Entity:getAllConstrained(filter) end
	--- getElasticity - shared - libs_sh/entities.lua#L731
	---@return number undefined Elasticity
	function _G.Entity:getElasticity() end
	--- getSequenceCount - shared - libs_sh/entities.lua#L1314
	---@return number undefined Count of entity's animations
	function _G.Entity:getSequenceCount() end
	--- getDTBool - shared - libs_sh/entities.lua#L1714
	---@param key number The number key. Valid keys are 0 - 31
	---@return boolean? undefined The boolean or nil if it doesn't exist
	function _G.Entity:getDTBool(key) end
	--- getUp - shared - libs_sh/entities.lua#L1548
	---@return Vector undefined Vector up
	function _G.Entity:getUp() end
	--- getRenderMode - shared - libs_sh/entities.lua#L583
	---@return number undefined rendermode https://wiki.facepunch.com/gmod/Enums/RENDERMODE
	function _G.Entity:getRenderMode() end
	--- getHitBoxCount - shared - libs_sh/entities.lua#L1626
	---@param group number The number of the hitbox group.
	---@return number undefined Number of hitboxes
	function _G.Entity:getHitBoxCount(group) end
	--- getManipulateBonePosition - shared - libs_sh/entities.lua#L1077
	---@param bone number Bone index. (def 0)
	---@return Vector undefined Manipulate position of the bone
	function _G.Entity:getManipulateBonePosition(bone) end
	--- getSaveTable - shared - libs_sh/entities.lua#L1818
	---@param showAll boolean If set, shows all variables, not just the ones for save.
	---@return table undefined A table containing all save values in key/value format. The value may be a sequential table (starting to 1) if the field in question is an array in engine.
	function _G.Entity:getSaveTable(showAll) end
	--- getOwner - shared - libs_sh/entities.lua#L95
	---@return Entity undefined Owner
	function _G.Entity:getOwner() end
	--- setNocollideAll - server - libs_sv/entities.lua#L496
	---@param nocollide boolean Whether to collide with nothing except world or not.
	function _G.Entity:setNocollideAll(nocollide) end
	--- getNearestPoint - shared - libs_sh/entities.lua#L1809
	---@param The Vector vector to start the intersection from.
	---@return Vector undefined The nearest hit point of the entity's bounding box in world coordinates, or Vector(0, 0, 0) for some entities such as worldspawn.
	function _G.Entity:getNearestPoint(The) end
	--- isDormant - shared - libs_sh/entities.lua#L1800
	---@return boolean undefined Whether entity is dormant or not.
	function _G.Entity:isDormant() end
	--- getSequenceInfo - shared - libs_sh/entities.lua#L1295
	---@param id number The ID of the animation
	---@return table undefined Animation info
	function _G.Entity:getSequenceInfo(id) end
	--- getAttachmentParent - shared - libs_sh/entities.lua#L631
	---@return number undefined Index of the attachment the entity is parented to or 0
	function _G.Entity:getAttachmentParent() end
	--- getDTInt - shared - libs_sh/entities.lua#L1744
	---@param key number The number key. Valid keys are 0 - 31
	---@return number? undefined The int or nil if it doesn't exist
	function _G.Entity:getDTInt(key) end
	--- isOnGround - shared - libs_sh/entities.lua#L844
	---@return boolean undefined If it's flag is set or not
	function _G.Entity:isOnGround() end
	--- obbMaxs - shared - libs_sh/entities.lua#L1125
	---@return Vector undefined The max bounding box vector
	function _G.Entity:obbMaxs() end
	--- getCreationID - server - libs_sv/entities.lua#L844
	---@return number undefined The creation ID
	function _G.Entity:getCreationID() end
	--- getFlexScale - shared - libs_sh/entities.lua#L1428
	---@return number undefined The scale of the flexes
	function _G.Entity:getFlexScale() end
	--- getPhysicsObjectNum - shared - libs_sh/entities.lua#L723
	---@param id number The physics object id (starts at 0)
	---@return PhysObj undefined The physics object of the entity
	function _G.Entity:getPhysicsObjectNum(id) end
	--- lookupBodygroup - shared - libs_sh/entities.lua#L506
	---@param name string The bodygroup's string name
	---@return number undefined The bodygroup index
	function _G.Entity:lookupBodygroup(name) end
	--- isVehicle - shared - libs_sh/entities.lua#L830
	---@return boolean undefined True if vehicle, false if not
	function _G.Entity:isVehicle() end
	--- toHologram - shared - libs_sh/hologram.lua#L86
	---@return Hologram undefined Hologram instance
	function _G.Entity:toHologram() end
	--- setColor - shared - libs_sh/entities.lua#L382
	---@param clr Color New color
	function _G.Entity:setColor(clr) end
	--- getNWVarTable - shared - libs_sh/entities.lua#L1786
	---@return table undefined The table of networked objects
	function _G.Entity:getNWVarTable() end
	--- getDTVector - shared - libs_sh/entities.lua#L1764
	---@param key number The number key. Valid keys are 0 - 31
	---@return Vector? undefined The vector or nil if it doesn't exist
	function _G.Entity:getDTVector(key) end
	--- getRight - shared - libs_sh/entities.lua#L1555
	---@return Vector undefined Vector right
	function _G.Entity:getRight() end
	--- getErroredPlayers - server - libs_sh/entities.lua#L921
	---@return table undefined A table containing the errored players.
	function _G.Entity:getErroredPlayers() end
	--- getDTString - shared - libs_sh/entities.lua#L1754
	---@param key number The number key. Valid keys are 0 - 31
	---@return string? undefined The string or nil if it doesn't exist
	function _G.Entity:getDTString(key) end
	--- getDTFloat - shared - libs_sh/entities.lua#L1734
	---@param key number The number key. Valid keys are 0 - 31
	---@return number? undefined The float or nil if it doesn't exist
	function _G.Entity:getDTFloat(key) end
	--- setFlexScale - shared - libs_sh/entities.lua#L1434
	---@param scale number The scale of the flexes to set
	function _G.Entity:setFlexScale(scale) end
	--- translateBoneToPhysBone - shared - libs_sh/entities.lua#L695
	---@param boneid number The ragdoll boneid
	---@return number undefined The physobj id
	function _G.Entity:translateBoneToPhysBone(boneid) end
	--- getMassCenterW - shared - libs_sh/entities.lua#L1151
	---@return Vector undefined The position vector of the mass center
	function _G.Entity:getMassCenterW() end
	--- getDTEntity - shared - libs_sh/entities.lua#L1724
	---@param key number The number key. Valid keys are 0 - 31
	---@return Entity? undefined The entity or nil if it doesn't exist
	function _G.Entity:getDTEntity(key) end
	--- getSolid - shared - libs_sh/entities.lua#L671
	---@return number undefined The solid enum of the entity. https://wiki.facepunch.com/gmod/Enums/SOLID
	function _G.Entity:getSolid() end
	--- isConstraint - server - libs_sv/entities.lua#L580
	---@return boolean undefined If the entity is a constraint
	function _G.Entity:isConstraint() end
	--- setBodygroup - shared - libs_sh/entities.lua#L470
	---@param bodygroup number The ID of the bodygroup you're setting.
	---@param value number The value you're setting the bodygroup to.
	function _G.Entity:setBodygroup(bodygroup, value) end
	--- getDTAngle - shared - libs_sh/entities.lua#L1704
	---@param key number The number key. Valid keys are 0 - 31
	---@return Angle? undefined The angle or nil if it doesn't exist
	function _G.Entity:getDTAngle(key) end
	--- getModelScale - shared - libs_sh/entities.lua#L1480
	---@return number undefined Scale of the model
	function _G.Entity:getModelScale() end
	--- isLocked - server - libs_sh/darkrp2.lua#L821
	---@return boolean undefined Whether it's locked.
	function _G.Entity:isLocked() end
	--- getBrushPlane - shared - libs_sh/entities.lua#L1685
	---@param id number Plane index. Starts from 0
	---@return Vector undefined The origin of the plane
	---@return Vector undefined The normal of the plane
	---@return number undefined The distance to the plane
	function _G.Entity:getBrushPlane(id) end
	--- getBrushSurfaces - shared - libs_sh/entities.lua#L1672
	---@return table undefined Table of SurfaceInfos if the entity has a brush model, or no value otherwise.
	function _G.Entity:getBrushSurfaces() end
	--- getPhysicsObjectCount - shared - libs_sh/entities.lua#L709
	---@return number undefined The number of physics objects on the entity
	function _G.Entity:getPhysicsObjectCount() end
	--- getColor - shared - libs_sh/entities.lua#L737
	---@return Color undefined Color
	function _G.Entity:getColor() end
	--- ignite - server - libs_sv/entities.lua#L437
	---@param length number How long the fire lasts
	---@param radius number? (optional) How large the fire hitbox is (entity obb is the max)
	function _G.Entity:ignite(length, radius) end
	--- linkComponent - server - libs_sv/entities.lua#L66
	---@param e Entity? Entity to link the component to, a vehicle or starfall for huds, or a starfall for screens. nil to clear links.
	function _G.Entity:linkComponent(e) end
	--- isMoneyBag - shared - libs_sh/darkrp2.lua#L863
	---@return boolean undefined Whether this entity is a money bag.
	function _G.Entity:isMoneyBag() end
	--- getBoneCount - shared - libs_sh/entities.lua#L1022
	---@return number undefined Number of bones
	function _G.Entity:getBoneCount() end
	--- isSolid - shared - libs_sh/entities.lua#L683
	---@return boolean undefined whether an entity is solid or not
	function _G.Entity:isSolid() end
	--- isOnFire - shared - libs_sh/entities.lua#L851
	---@return boolean undefined If the entity is on fire or not
	function _G.Entity:isOnFire() end
	--- enableSphere - server - libs_sv/entities.lua#L643
	---@param enabled boolean Should the entity be spherical?
	---@param radius number? Optional custom radius to use (max 500). Otherwise the prop's obb is used
	function _G.Entity:enableSphere(enabled, radius) end
	--- getHitBoxHitGroup - shared - libs_sh/entities.lua#L1661
	---@param hitbox number The number of the hit box.
	---@param hitboxset number The number of the hit box set. This should be 0 in most cases.
	---@return number undefined The hitbox group of given hitbox. See https://wiki.facepunch.com/gmod/Enums/HITGROUP
	function _G.Entity:getHitBoxHitGroup(hitbox, hitboxset) end
	--- getSequence - shared - libs_sh/entities.lua#L1281
	---@return number undefined The sequence number
	function _G.Entity:getSequence() end
	--- getHitBoxSetCount - shared - libs_sh/entities.lua#L1654
	---@return number undefined Number of hitbox sets.
	function _G.Entity:getHitBoxSetCount() end
	--- getHitBoxSet - shared - libs_sh/entities.lua#L1646
	---@return number? undefined Hitbox set number, nil if entity has no hitboxes.
	---@return string? undefined Hitbox set name, nil if entity has no hitboxes.
	function _G.Entity:getHitBoxSet() end
	--- getSolidFlags - shared - libs_sh/entities.lua#L677
	---@return number undefined The solid flag enum of the entity. https://wiki.facepunch.com/gmod/Enums/FSOLID
	function _G.Entity:getSolidFlags() end
	--- getHitBoxBone - shared - libs_sh/entities.lua#L1635
	---@param hitbox number The number of the hitbox.
	---@param group number The number of the hitbox group, 0 in most cases.
	---@return number undefined Bone ID
	function _G.Entity:getHitBoxBone(hitbox, group) end
	--- entOwner - shared - libs_sh/entities.lua#L1603
	---@return Entity undefined Owner
	function _G.Entity:entOwner() end
	--- setPersistent - shared - libs_sh/entities.lua#L1586
	---@param persist boolean True to make persistent
	function _G.Entity:setPersistent(persist) end
	--- getFriction - server - libs_sv/entities.lua#L194
	---@return number undefined friction
	function _G.Entity:getFriction() end
	--- isEffectActive - shared - libs_sh/entities.lua#L1576
	---@param effect number The effect to check. EF table values
	---@return boolean undefined True or false
	function _G.Entity:isEffectActive(effect) end
	--- getShipmentContents - shared - libs_sh/darkrp2.lua#L894
	---@return table? undefined Contents, or nil if not a shipment
	function _G.Entity:getShipmentContents() end
	--- obbCenter - shared - libs_sh/entities.lua#L1103
	---@return Vector undefined The position vector of the outer bounding box center
	function _G.Entity:obbCenter() end
	--- remove - server - libs_sv/entities.lua#L418
	function _G.Entity:remove() end
	--- getEyePos - shared - libs_sh/entities.lua#L1508
	---@return Vector undefined Eye position of the entity
	---@return Vector? undefined In case of a ragdoll, the position of the second eye
	function _G.Entity:getEyePos() end
	--- getEyeAngles - shared - libs_sh/entities.lua#L1501
	---@return Angle undefined Angles of the entity's eyes
	function _G.Entity:getEyeAngles() end
	--- getRenderFX - shared - libs_sh/entities.lua#L609
	---@return number undefined Renderfx, https://wiki.facepunch.com/gmod/Enums/kRenderFx
	function _G.Entity:getRenderFX() end
	--- isWeapon - shared - libs_sh/entities.lua#L823
	---@return boolean undefined True if weapon, false if not
	function _G.Entity:isWeapon() end
	--- getHealth - shared - libs_sh/entities.lua#L1494
	---@return number undefined Health of the entity
	function _G.Entity:getHealth() end
	--- lookupAttachment - shared - libs_sh/entities.lua#L638
	---@param name string of the attachment to lookup
	---@return number undefined Number of the attachment index, or 0 if it doesn't exist
	function _G.Entity:lookupAttachment(name) end
	--- setElasticity - server - libs_sv/entities.lua#L208
	---@param elasticity number 
	function _G.Entity:setElasticity(elasticity) end
	--- removeCollisionListener - server - libs_sv/entities.lua#L339
	function _G.Entity:removeCollisionListener() end
	--- getMaxHealth - shared - libs_sh/entities.lua#L1487
	---@return number undefined Max Health of the entity
	function _G.Entity:getMaxHealth() end
	--- getModelRadius - shared - libs_sh/entities.lua#L1473
	---@return number undefined Radius of the model
	function _G.Entity:getModelRadius() end
	--- getPhysMaterial - server - libs_sv/entities.lua#L554
	---@return string undefined The physical material
	function _G.Entity:getPhysMaterial() end
	--- getAngles - shared - libs_sh/entities.lua#L1161
	---@return Angle undefined The angle
	function _G.Entity:getAngles() end
	--- getBodygroupName - shared - libs_sh/entities.lua#L515
	---@param id number The bodygroup's number index
	---@return string undefined The bodygroup name
	function _G.Entity:getBodygroupName(id) end
	--- setParent - shared - libs_sh/entities.lua#L334
	---@param parent Entity? Entity parent (nil to unparent)
	---@param number any |string? attachment Optional attachment name or ID.
	---@param number any |string? bone Optional bone name or ID. Can't be used at the same time as attachment
	function _G.Entity:setParent(parent, number, number) end
	--- translatePhysBoneToBone - shared - libs_sh/entities.lua#L702
	---@param boneid number The physobject id
	---@return number undefined The ragdoll bone id
	function _G.Entity:translatePhysBoneToBone(boneid) end
	--- getModelBounds - shared - libs_sh/entities.lua#L1456
	---@return Vector undefined Minimum vector of the bounds
	---@return Vector undefined Maximum vector of the bounds
	function _G.Entity:getModelBounds() end
	--- getAmount - shared - libs_sh/darkrp2.lua#L869
	---@return number? undefined Amount of money or number of items
	function _G.Entity:getAmount() end
	--- getModel - shared - libs_sh/entities.lua#L1449
	---@return string undefined Model of the entity
	function _G.Entity:getModel() end
	--- getWirelink - server - libs_sv/wire.lua#L594
	---@return Wirelink undefined Wirelink of the entity
	function _G.Entity:getWirelink() end
	--- canDraw - client - libs_sh/entities.lua#L247
	---@return boolean undefined Whether the entity can be drawn
	function _G.Entity:canDraw() end
	--- breakEnt - server - libs_sv/entities.lua#L427
	function _G.Entity:breakEnt() end
	--- getFlexWeight - shared - libs_sh/entities.lua#L1389
	---@param flexid number The id of the flex
	---@return number undefined The weight of the flex
	function _G.Entity:getFlexWeight(flexid) end
	--- hasFlexManipulations - shared - libs_sh/entities.lua#L1382
	---@return boolean undefined True if the entity has flex manipulations, false otherwise.
	function _G.Entity:hasFlexManipulations() end
	--- getFlexName - shared - libs_sh/entities.lua#L1373
	---@param flexid number The flex id to look up name of.
	---@return string undefined The flex name
	function _G.Entity:getFlexName(flexid) end
	--- setSubMaterial - shared - libs_sh/entities.lua#L435
	---@param index number Submaterial index.
	---@param material string New material name.
	function _G.Entity:setSubMaterial(index, material) end
	--- getClipping - shared - libs_sh/entities.lua#L744
	---@return table undefined Table containing the clipdata
	function _G.Entity:getClipping() end
	--- getFlexByName - shared - libs_sh/entities.lua#L1364
	---@param flexname string The name of the flex to get the ID of. Case sensitive.
	---@return number undefined The ID of the flex based on given name.
	function _G.Entity:getFlexByName(flexname) end
	--- getFlexes - shared - libs_sh/entities.lua#L1353
	---@return table undefined Table of flexes
	function _G.Entity:getFlexes() end
	--- getMoveType - shared - libs_sh/entities.lua#L689
	---@return number undefined The movetype enum of the entity. https://wiki.facepunch.com/gmod/Enums/MOVETYPE
	function _G.Entity:getMoveType() end
	--- getPose - shared - libs_sh/entities.lua#L1346
	---@param pose string Pose parameter name
	---@return number undefined Value of the pose parameter
	function _G.Entity:getPose(pose) end
	--- worldToLocal - shared - libs_sh/entities.lua#L1248
	---@param data Vector World space vector
	---@return Vector undefined data as local space vector
	function _G.Entity:worldToLocal(data) end
	--- getBoneMatrix - shared - libs_sh/entities.lua#L1005
	---@param bone number? Bone index. (def 0)
	---@return VMatrix undefined The matrix
	function _G.Entity:getBoneMatrix(bone) end
	--- setPose - shared - libs_sh/entities.lua#L1336
	---@param pose string Name of the pose parameter
	---@param value number Value to set it to.
	function _G.Entity:setPose(pose, value) end
	--- sequenceDuration - shared - libs_sh/entities.lua#L1326
	---@param id number? (Optional) The id of the sequence, or will default to the currently playing sequence
	---@return number undefined Length of the animation in seconds
	function _G.Entity:sequenceDuration(id) end
	--- isFrozen - server - libs_sv/entities.lua#L634
	---@return boolean undefined True if entity is frozen
	function _G.Entity:isFrozen() end
	--- setSheetColor - client - libs_sh/entities.lua#L211
	---@param clr Color RGB color to use, alpha channel not supported
	function _G.Entity:setSheetColor(clr) end
	--- manipulateBonePosition - client - libs_sh/entities.lua#L108
	---@param bone number The bone ID
	---@param vec Vector The position it should be manipulated to
	function _G.Entity:manipulateBonePosition(bone, vec) end
	--- getSequenceList - shared - libs_sh/entities.lua#L1308
	---@return table undefined List of animations, starts at index 0 where value is the animation's name
	function _G.Entity:getSequenceList() end
	--- getSequenceName - shared - libs_sh/entities.lua#L1287
	---@param id number The id of the animation
	---@return string undefined The sequence name
	function _G.Entity:getSequenceName(id) end
	--- lookupSequence - shared - libs_sh/entities.lua#L1272
	---@param animation string Name of the animation
	---@return number undefined Animation index or -1 if invalid
	function _G.Entity:lookupSequence(animation) end
	--- removeTrails - server - libs_sv/entities.lua#L796
	function _G.Entity:removeTrails() end
	--- setRenderBounds - client - libs_sh/entities.lua#L230
	---@param mins Vector The lower bounding corner coordinate local to the hologram
	---@param maxs Vector The upper bounding corner coordinate local to the hologram
	function _G.Entity:setRenderBounds(mins, maxs) end
	--- setMaterial - shared - libs_sh/entities.lua#L417
	---@param material string New material name.
	function _G.Entity:setMaterial(material) end
	--- worldToLocalVector - shared - libs_sh/entities.lua#L1256
	---@param data Vector World space direction vector
	---@return Vector undefined data as local space direction vector
	function _G.Entity:worldToLocalVector(data) end
	--- testPVS - server - libs_sv/entities.lua#L826
	---@param other Entity|Vector Entity or Vector to test
	---@return boolean undefined If the Entity/Vector is within the PVS
	function _G.Entity:testPVS(other) end
	--- localToWorldAngles - shared - libs_sh/entities.lua#L1240
	---@param data Angle Local space angle
	---@return Angle undefined data as world space angle
	function _G.Entity:localToWorldAngles(data) end
	--- draw - client - libs_sh/entities.lua#L256
	function _G.Entity:draw() end
	--- localToWorldVector - shared - libs_sh/entities.lua#L1232
	---@param data Vector Local space vector direction
	---@return Vector undefined data as world space vector direction
	function _G.Entity:localToWorldVector(data) end
	--- getDoorOwner - shared - libs_sh/darkrp2.lua#L829
	---@return Player? undefined The owner of the door, or nil if the door is unowned.
	function _G.Entity:getDoorOwner() end
	--- isNPC - shared - libs_sh/entities.lua#L837
	---@return boolean undefined True if npc, false if not
	function _G.Entity:isNPC() end
	--- setMaxHealth - server - libs_sh/entities.lua#L949
	---@param newmaxhealth number New max health value.
	function _G.Entity:setMaxHealth(newmaxhealth) end
	--- getAngleVelocityAngle - shared - libs_sh/entities.lua#L1214
	---@return Angle undefined The angular velocity as an angle
	function _G.Entity:getAngleVelocityAngle() end
	--- worldToLocalAngles - shared - libs_sh/entities.lua#L1264
	---@param data Angle World space angle
	---@return Angle undefined data as local space angle
	function _G.Entity:worldToLocalAngles(data) end
	--- getLocalVelocity - shared - libs_sh/entities.lua#L1197
	---@return Vector undefined Vector velocity of the physics object local to itself
	function _G.Entity:getLocalVelocity() end
	--- setInertia - server - libs_sv/entities.lua#L522
	---@param vec Vector Inertia tensor
	function _G.Entity:setInertia(vec) end
	--- manipulateBoneJiggle - client - libs_sh/entities.lua#L156
	---@param bone number The bone ID
	---@param enabled boolean Whether to make the bone jiggly or not
	function _G.Entity:manipulateBoneJiggle(bone, enabled) end
	--- getMass - shared - libs_sh/entities.lua#L1168
	---@return number undefined The numerical mass
	function _G.Entity:getMass() end
	--- getMassCenter - shared - libs_sh/entities.lua#L1141
	---@return Vector undefined The position vector of the mass center
	function _G.Entity:getMassCenter() end
	--- isWeldedTo - server - libs_sv/entities.lua#L695
	---@return Entity undefined The first welded/parent entity
	function _G.Entity:isWeldedTo() end
	--- setCollisionGroup - server - libs_sv/entities.lua#L484
	---@param group number The COLLISION_GROUP value to set it to
	function _G.Entity:setCollisionGroup(group) end
	--- getBoundingRadius - shared - libs_sh/entities.lua#L1793
	---@return number undefined The radius of the bounding box, or 0 for some entities such as worldspawn
	function _G.Entity:getBoundingRadius() end
	--- obbCenterW - shared - libs_sh/entities.lua#L1110
	---@return Vector undefined The position vector of the outer bounding box center
	function _G.Entity:obbCenterW() end
	--- getMaterial - shared - libs_sh/entities.lua#L1520
	---@return string undefined String material
	function _G.Entity:getMaterial() end
	--- getChipAuthor - shared - libs_sh/entities.lua#L869
	---@return string undefined The author of the starfall chip.
	function _G.Entity:getChipAuthor() end
	--- applyForceCenter - server - libs_sv/entities.lua#L216
	---@param vec Vector The force vector
	function _G.Entity:applyForceCenter(vec) end
	--- getManipulateBoneJiggle - shared - libs_sh/entities.lua#L1068
	---@param bone number? Bone index. (def 0)
	---@return number undefined Manipulate jiggle of the bone
	function _G.Entity:getManipulateBoneJiggle(bone) end
	--- getManipulateBoneAngles - shared - libs_sh/entities.lua#L1059
	---@param bone number Bone index. (def 0)
	---@return Angle undefined Manipulate angle of the bone
	function _G.Entity:getManipulateBoneAngles(bone) end
	--- getBonePosition - shared - libs_sh/entities.lua#L1047
	---@param bone number? Bone index. (def 0)
	---@return Vector undefined Position of the bone
	---@return Angle undefined Angle of the bone
	function _G.Entity:getBonePosition(bone) end
	--- getBoneParent - shared - libs_sh/entities.lua#L1038
	---@param bone number? Bone index. (def 0)
	---@return number undefined Parent index of the bone. Returns -1 on error
	function _G.Entity:getBoneParent(bone) end
	--- getBoneName - shared - libs_sh/entities.lua#L1029
	---@param bone number? Bone index. (def 0)
	---@return string undefined Name of the bone
	function _G.Entity:getBoneName(bone) end
	--- setFrozen - server - libs_sv/entities.lua#L628
	---@param freeze boolean Should the entity be frozen?
	function _G.Entity:setFrozen(freeze) end
	--- getMatrix - shared - libs_sh/entities.lua#L1015
	---@return VMatrix undefined The matrix
	function _G.Entity:getMatrix() end
	--- getQuaternion - shared - libs_sh/quaternion.lua#L831
	---@return Quaternion undefined Constructed quaternion
	function _G.Entity:getQuaternion() end
	--- getPos - shared - libs_sh/entities.lua#L982
	---@return Vector undefined The position vector
	function _G.Entity:getPos() end
	--- getPhysicsObject - shared - libs_sh/entities.lua#L715
	---@return PhysObj undefined The main physics object of the entity
	function _G.Entity:getPhysicsObject() end
	--- getChipName - shared - libs_sh/entities.lua#L858
	---@return string undefined The name of the chip
	function _G.Entity:getChipName() end
	--- isSequenceFinished - shared - libs_sh/entities.lua#L1320
	---@return boolean undefined True if the animation is currently playing, False otherwise
	function _G.Entity:isSequenceFinished() end
	--- getWaterLevel - shared - libs_sh/entities.lua#L989
	---@return number undefined The water level. 0 none, 1 slightly, 2 at least halfway, 3 all the way
	function _G.Entity:getWaterLevel() end
	--- getClass - shared - libs_sh/entities.lua#L975
	---@return string undefined The string class name
	function _G.Entity:getClass() end
	--- enableMotion - server - libs_sv/entities.lua#L614
	---@param move boolean Should the entity move?
	function _G.Entity:enableMotion(move) end
	--- manipulateBoneScale - client - libs_sh/entities.lua#L124
	---@param bone number The bone ID
	---@param vec Vector The scale it should be manipulated to
	function _G.Entity:manipulateBoneScale(bone, vec) end
	--- setPos - server - libs_sv/entities.lua#L368
	---@param vec Vector New position
	function _G.Entity:setPos(vec) end
	--- applyAngForce - server - libs_sv/entities.lua#L251
	---@param ang Angle The force angle
	function _G.Entity:applyAngForce(ang) end
	--- setMeshMaterial - client - libs_sh/entities.lua#L189
	---@param material Material? The material to set it to or nil to set back to default
	function _G.Entity:setMeshMaterial(material) end
	--- setSkin - shared - libs_sh/entities.lua#L535
	---@param skinIndex number Index of the skin to use.
	function _G.Entity:setSkin(skinIndex) end
	--- use - server - libs_sv/entities.lua#L463
	---@param usetype number? The USE_ enum use type. (Default: USE_ON)
	---@param value number? The use value (Default: 0)
	function _G.Entity:use(usetype, value) end
	--- setFriction - server - libs_sv/entities.lua#L200
	---@param friction number 
	function _G.Entity:setFriction(friction) end
	--- doNotDuplicate - server - libs_sh/entities.lua#L959
	function _G.Entity:doNotDuplicate() end
	--- applyTorque - server - libs_sv/entities.lua#L291
	---@param torque Vector The torque vector
	function _G.Entity:applyTorque(torque) end
	--- setHealth - server - libs_sh/entities.lua#L939
	---@param newhealth number New health value.
	function _G.Entity:setHealth(newhealth) end
	--- worldSpaceAABB - shared - libs_sh/entities.lua#L1132
	---@return Vector undefined The min bounding box vector
	---@return Vector undefined The max bounding box vector
	function _G.Entity:worldSpaceAABB() end
	--- applyDamage - server - libs_sv/entities.lua#L108
	---@param amt number Damage amount
	---@param attacker Entity? Damage attacker
	---@param inflictor Entity? Damage inflictor
	---@param dmgtype number? The damage type number enum
	---@param pos Vector? The position of the damage
	function _G.Entity:applyDamage(amt, attacker, inflictor, dmgtype, pos) end
	--- getShipmentContentsIndex - shared - libs_sh/darkrp2.lua#L885
	---@return number? undefined Index of contents, or nil if not a shipment
	function _G.Entity:getShipmentContentsIndex() end
	--- emitSound - shared - libs_sh/entities.lua#L276
	---@param snd string Sound path
	---@param soundLevel number Default 75
	---@param pitchPercent number Default 100
	---@param volume number Default 1
	---@param channel number Default CHAN_AUTO or CHAN_WEAPON for weapons
	function _G.Entity:emitSound(snd, soundLevel, pitchPercent, volume, channel) end
	--- obbSize - shared - libs_sh/entities.lua#L1095
	---@return Vector undefined The outer bounding box size
	function _G.Entity:obbSize() end
	--- getAttachment - shared - libs_sh/entities.lua#L646
	---@param index number The index of the attachment
	---@return Vector? undefined Position, nil if the attachment doesn't exist
	---@return Angle? undefined Orientation, nil if the attachment doesn't exist
	function _G.Entity:getAttachment(index) end
	--- setMass - server - libs_sv/entities.lua#L506
	---@param mass number Mass to set to
	function _G.Entity:setMass(mass) end
	--- getParent - shared - libs_sh/entities.lua#L617
	---@return Entity? undefined Entity's parent or nil if not parented
	function _G.Entity:getParent() end
	--- getManipulateBoneScale - shared - libs_sh/entities.lua#L1086
	---@param bone number Bone index. (def 0)
	---@return Vector undefined Manipulate scale of the bone
	function _G.Entity:getManipulateBoneScale(bone) end
	--- getKeysTitle - shared - libs_sh/darkrp2.lua#L836
	---@return string? undefined The title of the door or vehicle, or nil if none is set.
	function _G.Entity:getKeysTitle() end
	--- addAngleVelocity - server - libs_sv/entities.lua#L179
	---@param angvel Vector The local angvel vector to apply
	function _G.Entity:addAngleVelocity(angvel) end
	--- getSkinCount - shared - libs_sh/entities.lua#L558
	---@return number undefined The amount of skins
	function _G.Entity:getSkinCount() end
	--- getChildren - shared - libs_sh/entities.lua#L624
	---@return table undefined Table of parented children
	function _G.Entity:getChildren() end
	--- applyForceOffset - server - libs_sv/entities.lua#L231
	---@param force Vector The force vector in world coordinates
	---@param position Vector The force position in world coordinates
	function _G.Entity:applyForceOffset(force, position) end
	--- extinguish - server - libs_sv/entities.lua#L455
	function _G.Entity:extinguish() end
	--- entIndex - shared - libs_sh/entities.lua#L968
	---@return number undefined The numerical index of the entity
	function _G.Entity:entIndex() end
	--- setFlexWeight - shared - libs_sh/entities.lua#L1405
	---@param flexid number The id of the flex
	---@param weight number The weight of the flex
	function _G.Entity:setFlexWeight(flexid, weight) end
	--- stopSound - shared - libs_sh/entities.lua#L294
	---@param snd string string Soundscript path. See http://wiki.facepunch.com/gmod/Entity:StopSound
	function _G.Entity:stopSound(snd) end
	--- isKeysOwnedBy - shared - libs_sh/darkrp2.lua#L855
	---@param ply Player The player to query.
	---@return boolean undefined Whether this door is (co-)owned by the player.
	function _G.Entity:isKeysOwnedBy(ply) end
	--- setNoDraw - shared - libs_sh/entities.lua#L400
	---@param draw boolean Whether to draw the entity or not.
	function _G.Entity:setNoDraw(draw) end
	--- getBodygroup - shared - libs_sh/entities.lua#L489
	---@param id number The bodygroup's number index
	---@return number undefined The bodygroup value
	function _G.Entity:getBodygroup(id) end
	--- setAngleVelocity - server - libs_sv/entities.lua#L164
	---@param angvel Vector The local angvel vector to set
	function _G.Entity:setAngleVelocity(angvel) end
	--- getAttachments - shared - libs_sh/entities.lua#L658
	---@return table? undefined Table of attachment id and attachment name or nil
	function _G.Entity:getAttachments() end
	--- getNoDraw - shared - libs_sh/entities.lua#L410
	---@return boolean undefined True if should draw, False otherwise
	function _G.Entity:getNoDraw() end
	--- setCustomPropForces - server - libs_sv/entities.lua#L140
	---@param ang Vector Angular Force (Torque)
	---@param lin Vector Linear Force
	---@param mode number The physics mode to use. 0 = Off, 1 = Local acceleration, 2 = Local force, 3 = Global Acceleration, 4 = Global force
	function _G.Entity:setCustomPropForces(ang, lin, mode) end
	--- manipulateBoneAngles - client - libs_sh/entities.lua#L140
	---@param bone number The bone ID
	---@param ang Angle The angle it should be manipulated to
	function _G.Entity:manipulateBoneAngles(bone, ang) end
	--- getAngleVelocity - shared - libs_sh/entities.lua#L1205
	---@return Vector undefined The angular velocity as a vector
	function _G.Entity:getAngleVelocity() end
	--- getQuotaAverage - shared - libs_sh/entities.lua#L891
	---@return number undefined Average CPU Time of the buffer of the specified starfall or expression2.
	function _G.Entity:getQuotaAverage() end
	--- setAngles - server - libs_sv/entities.lua#L379
	---@param ang Angle New angles
	function _G.Entity:setAngles(ang) end
	--- isValidPhys - server - libs_sv/entities.lua#L564
	---@return boolean undefined If entity has physics
	function _G.Entity:isValidPhys() end
	--- getSkin - shared - libs_sh/entities.lua#L551
	---@return number undefined Skin number
	function _G.Entity:getSkin() end
	--- isDoor - shared - libs_sh/darkrp2.lua#L843
	---@return boolean undefined Whether it's a door.
	function _G.Entity:isDoor() end
	--- setRenderFX - shared - libs_sh/entities.lua#L591
	---@param renderfx number Renderfx to use. http://wiki.facepunch.com/gmod/Enums/kRenderFx
	function _G.Entity:setRenderFX(renderfx) end
	--- isPlayerHolding - server - libs_sv/entities.lua#L572
	---@return boolean undefined If the entity is being held or not
	function _G.Entity:isPlayerHolding() end
	--- getBodygroups - shared - libs_sh/entities.lua#L499
	---@return table undefined Bodygroups as a table of BodyGroupDatas. https://wiki.facepunch.com/gmod/Structures/BodyGroupData
	function _G.Entity:getBodygroups() end
	--- getQuotaMax - shared - libs_sh/entities.lua#L905
	---@return number undefined Max SysTime allowed to take for execution of the chip in a Think.
	function _G.Entity:getQuotaMax() end
	--- lookupBone - shared - libs_sh/entities.lua#L996
	---@param name string The bone's string name
	---@return number undefined The bone index
	function _G.Entity:lookupBone(name) end
	--- enableDrag - server - libs_sv/entities.lua#L601
	---@param drag boolean Should the entity have air resistance?
	function _G.Entity:enableDrag(drag) end
	--- getBodygroupCount - shared - libs_sh/entities.lua#L525
	---@param id number The ID of the bodygroup to get the count for.
	---@return number undefined Number of values of specified bodygroup, or 0 if there are none.
	function _G.Entity:getBodygroupCount(id) end
	--- isValid - shared - libs_sh/entities.lua#L802
	---@return boolean undefined True if valid, false if not
	function _G.Entity:isValid() end
	--- isPlayer - shared - libs_sh/entities.lua#L816
	---@return boolean undefined True if player, false if not
	function _G.Entity:isPlayer() end
	--- getSubMaterial - shared - libs_sh/entities.lua#L1528
	---@param index number Number index of the sub material
	---@return string undefined String material
	function _G.Entity:getSubMaterial(index) end
---  Mesh type
---@class Mesh
_G.Mesh = {}
	--- destroy - client - libs_sh/mesh.lua#L1133
	function _G.Mesh:destroy() end
	--- draw - client - libs_sh/mesh.lua#L1122
	function _G.Mesh:draw() end
---  StringStream type
---@class StringStream
_G.StringStream = {}
	--- writeInt32 - shared - libs_sh/bit.lua#L474
	---@param x number Int32 to write
	function _G.StringStream:writeInt32(x) end
	--- writeEntity - shared - libs_sh/bit.lua#L520
	---@param e Entity The entity to be written
	function _G.StringStream:writeEntity(e) end
	--- readUInt32 - shared - libs_sh/bit.lua#L349
	---@return number undefined UInt32 at this position
	function _G.StringStream:readUInt32() end
	--- readUInt16 - shared - libs_sh/bit.lua#L338
	---@return number undefined UInt16 at this position
	function _G.StringStream:readUInt16() end
	--- read - shared - libs_sh/bit.lua#L224
	---@param length number How many bytes to read
	---@return string undefined A string containing the bytes
	function _G.StringStream:read(length) end
	--- writeFloat - shared - libs_sh/bit.lua#L493
	---@param x number The float to write
	function _G.StringStream:writeFloat(x) end
	--- seek - shared - libs_sh/bit.lua#L254
	---@param pos number Position to seek to
	function _G.StringStream:seek(pos) end
	--- getString - shared - libs_sh/bit.lua#L546
	---@return string undefined The buffer as a string
	function _G.StringStream:getString() end
	--- readEntity - shared - libs_sh/bit.lua#L528
	---@param callback function? (Client only) optional callback to be ran whenever the entity becomes valid; returns nothing if this is used. The callback passes the entity if it succeeds or nil if it fails.
	---@return Entity undefined The entity that was read
	function _G.StringStream:readEntity(callback) end
	--- writeDouble - shared - libs_sh/bit.lua#L503
	---@param x number The double to write
	function _G.StringStream:writeDouble(x) end
	--- tell - shared - libs_sh/bit.lua#L309
	---@return number undefined The buffer position
	function _G.StringStream:tell() end
	--- writeUInt32 - shared - libs_sh/bit.lua#L487
	---@param x number UInt32 to write
	function _G.StringStream:writeUInt32(x) end
	--- readInt8 - shared - libs_sh/bit.lua#L360
	---@return number undefined Int8 at this position
	function _G.StringStream:readInt8() end
	--- readFloat - shared - libs_sh/bit.lua#L384
	---@return number undefined Float32 at this position
	function _G.StringStream:readFloat() end
	--- readInt16 - shared - libs_sh/bit.lua#L368
	---@return number undefined Int16 at this position
	function _G.StringStream:readInt16() end
	--- setEndian - shared - libs_sh/bit.lua#L179
	---@param endian string The endianness of number types. "big" or "little" (default "little")
	function _G.StringStream:setEndian(endian) end
	--- writeUInt8 - shared - libs_sh/bit.lua#L449
	---@param x number UInt8 to write
	function _G.StringStream:writeUInt8(x) end
	--- readUInt8 - shared - libs_sh/bit.lua#L329
	---@return number undefined UInt8 at this position
	function _G.StringStream:readUInt8() end
	--- writeInt16 - shared - libs_sh/bit.lua#L455
	---@param x number Int16 to write
	function _G.StringStream:writeInt16(x) end
	--- writeInt8 - shared - libs_sh/bit.lua#L441
	---@param x number Int8 to write
	function _G.StringStream:writeInt8(x) end
	--- readString - shared - libs_sh/bit.lua#L434
	---@return string undefined The string of bytes read
	function _G.StringStream:readString() end
	--- size - shared - libs_sh/bit.lua#L319
	---@return number undefined The buffer size
	function _G.StringStream:size() end
	--- readDouble - shared - libs_sh/bit.lua#L394
	---@return number undefined Double at this position
	function _G.StringStream:readDouble() end
	--- readInt32 - shared - libs_sh/bit.lua#L376
	---@return number undefined Int32 at this position
	function _G.StringStream:readInt32() end
	--- skip - shared - libs_sh/bit.lua#L272
	---@param length number The offset
	function _G.StringStream:skip(length) end
	--- writeString - shared - libs_sh/bit.lua#L513
	---@param str string The string of bytes to write
	function _G.StringStream:writeString(str) end
	--- readUntil - shared - libs_sh/bit.lua#L404
	---@param byte number The byte to read until (in number form)
	---@return string undefined The string of bytes read
	function _G.StringStream:readUntil(byte) end
	--- write - shared - libs_sh/bit.lua#L191
	---@param data string A string of data to write
	function _G.StringStream:write(data) end
	--- writeUInt16 - shared - libs_sh/bit.lua#L468
	---@param x number UInt16 to write
	function _G.StringStream:writeUInt16(x) end
---  The Markup type is used to easily format and draw text. Use render.parseMarkup(str, maxwidth) to create one.
---@class Markup
_G.Markup = {}
	--- getSize - client - libs_cl/render.lua#L1705
	---@return number undefined The width of the object
	---@return number undefined The height of the object
	function _G.Markup:getSize() end
	--- draw - client - libs_cl/render.lua#L1681
	---@param x number number The x offset
	---@param y number number The x offset
	---@param xAlign number? number The x TEXT_ALIGN. Default TEXT_ALIGN.LEFT
	---@param yAlign number? number The y TEXT_ALIGN. Default TEXT_ALIGN.TOP
	---@param alpha number? The alpha to draw it with. Default 255
	---@param contentAlign number? The content alignment TEXT_ALIGN. Default TEXT_ALIGN.LEFT
	function _G.Markup:draw(x, y, xAlign, yAlign, alpha, contentAlign) end
	--- getWidth - client - libs_cl/render.lua#L1693
	---@return number undefined The width of the object
	function _G.Markup:getWidth() end
	--- getHeight - client - libs_cl/render.lua#L1699
	---@return number undefined The height of the object
	function _G.Markup:getHeight() end
---  Npc type
---@class Npc
---@operator tostring:string
_G.Npc = {}
	--- stop - server - libs_sh/npc.lua#L128
	function _G.Npc:stop() end
	--- goRun - server - libs_sh/npc.lua#L162
	---@param vec Vector The position of the destination
	function _G.Npc:goRun(vec) end
	--- getEnemy - server - libs_sh/npc.lua#L121
	---@return Entity undefined Entity the npc is fighting
	function _G.Npc:getEnemy() end
	--- getRelationship - server - libs_sh/npc.lua#L86
	---@param ent Entity Target entity
	---@return string undefined Relationship of the npc with the target
	function _G.Npc:getRelationship(ent) end
	--- giveWeapon - server - libs_sh/npc.lua#L94
	---@param wep string The classname of the weapon
	function _G.Npc:giveWeapon(wep) end
	--- attackMelee - server - libs_sh/npc.lua#L136
	function _G.Npc:attackMelee() end
	--- goWalk - server - libs_sh/npc.lua#L152
	---@param vec Vector The position of the destination
	function _G.Npc:goWalk(vec) end
	--- attackRange - server - libs_sh/npc.lua#L144
	function _G.Npc:attackRange() end
	--- addRelationship - server - libs_sh/npc.lua#L51
	---@param str string The relationship string. http://wiki.facepunch.com/gmod/NPC:AddRelationship
	function _G.Npc:addRelationship(str) end
	--- addEntityRelationship - server - libs_sh/npc.lua#L72
	---@param ent Entity The target entity
	---@param disp string String of the relationship. ("hate", "fear", "like", "neutral")
	---@param priority number How strong the relationship is. Higher number is stronger
	function _G.Npc:addEntityRelationship(ent, disp, priority) end
	--- setEnemy - server - libs_sh/npc.lua#L112
	---@param ent Entity Target entity
	function _G.Npc:setEnemy(ent) end
---  Vehicle type
---@class Vehicle
---@operator tostring:string
_G.Vehicle = {}
	--- getDriver - server - libs_sh/vehicles.lua#L45
	---@return Player undefined Driver of vehicle
	function _G.Vehicle:getDriver() end
	--- getPassenger - server - libs_sh/vehicles.lua#L61
	---@param n number The index of the passenger to get
	---@return Player undefined The passenger or NULL if empty
	function _G.Vehicle:getPassenger(n) end
	--- unlock - server - libs_sh/vehicles.lua#L109
	function _G.Vehicle:unlock() end
	--- lock - server - libs_sh/vehicles.lua#L98
	function _G.Vehicle:lock() end
	--- ejectDriver - server - libs_sh/vehicles.lua#L52
	function _G.Vehicle:ejectDriver() end
	--- killDriver - server - libs_sh/vehicles.lua#L70
	function _G.Vehicle:killDriver() end
	--- stripDriver - server - libs_sh/vehicles.lua#L81
	---@param class string? Optional weapon class to strip. Otherwise all are stripped.
	function _G.Vehicle:stripDriver(class) end
---  Color type
---@class Color
---@operator mul(number|Color):Color
---@operator concat:string
---@operator sub(Color):Color
---@operator div(number|Color):Color
---@operator index(number|string):number
---@operator add(Color):Color
---@operator eq(Color):boolean
---@operator tostring:string
_G.Color = {}
	--- setB - shared - libs_sh/color.lua#L257
	---@param b number The blue
	---@return Color undefined Color after modification
	function _G.Color:setB(b) end
	--- round - shared - libs_sh/color.lua#L215
	---@param idp number? (Default 0) The integer decimal place to round to.
	function _G.Color:round(idp) end
	--- set - shared - libs_sh/color.lua#L231
	---@param b Color The color to copy from.
	function _G.Color:set(b) end
	--- rgbToHSV - shared - libs_sh/color.lua#L187
	---@return Color undefined A triplet of numbers representing HSV.
	function _G.Color:rgbToHSV() end
	--- setA - shared - libs_sh/color.lua#L265
	---@param a number The alpha
	---@return Color undefined Color after modification
	function _G.Color:setA(a) end
	--- setG - shared - libs_sh/color.lua#L249
	---@param g number The green
	---@return Color undefined Color after modification
	function _G.Color:setG(g) end
	--- hsvToRGB - shared - libs_sh/color.lua#L195
	---@return Color undefined A triplet of numbers representing HSV.
	function _G.Color:hsvToRGB() end
	--- toHex - shared - libs_sh/color.lua#L203
	---@param alpha boolean? Optional boolean whether to include the alpha channel, False by default
	---@return string undefined String hexadecimal color
	function _G.Color:toHex(alpha) end
	--- setR - shared - libs_sh/color.lua#L241
	---@param r number The red
	---@return Color undefined Color after modification
	function _G.Color:setR(r) end
	--- clone - shared - libs_sh/color.lua#L225
	---@return Color undefined The copy of the color
	function _G.Color:clone() end
---  SurfaceInfo type
---@class SurfaceInfo
_G.SurfaceInfo = {}
	--- getMaterial - shared - libs_sh/surfaceinfo.lua#L25
	---@return string|Material undefined In SERVER, the material name, and in CLIENT, the Material object.
	function _G.SurfaceInfo:getMaterial() end
	--- isWater - shared - libs_sh/surfaceinfo.lua#L68
	---@return boolean undefined If the surface is water.
	function _G.SurfaceInfo:isWater() end
	--- getVertices - shared - libs_sh/surfaceinfo.lua#L39
	---@return table undefined List of Vector points. This will usually be 4 corners of a quadrilateral in counter-clockwise order.
	function _G.SurfaceInfo:getVertices() end
	--- isNoDraw - shared - libs_sh/surfaceinfo.lua#L52
	---@return boolean undefined If this surface won't be drawn.
	function _G.SurfaceInfo:isNoDraw() end
	--- isSky - shared - libs_sh/surfaceinfo.lua#L60
	---@return boolean undefined If the surface is the sky.
	function _G.SurfaceInfo:isSky() end
---  Wirelink type
---@class Wirelink
---@operator index(any):any
_G.Wirelink = {}
	--- inputValue - server - libs_sv/wire.lua#L646
	---@param name string Input name
	---@return any undefined Input value
	function _G.Wirelink:inputValue(name) end
	--- entity - server - libs_sv/wire.lua#L674
	---@return Entity undefined Entity the wirelink represents
	function _G.Wirelink:entity() end
	--- getWiredToName - server - libs_sv/wire.lua#L743
	---@param name string Name of the input of the wirelink.
	---@return string undefined String name of the output that the input is wired to.
	function _G.Wirelink:getWiredToName(name) end
	--- inputs - server - libs_sv/wire.lua#L680
	---@return table undefined All of the wirelink's inputs
	function _G.Wirelink:inputs() end
	--- inputType - server - libs_sv/wire.lua#L656
	---@param name string Input name to search for
	---@return string undefined Type of input
	function _G.Wirelink:inputType(name) end
	--- getWiredTo - server - libs_sv/wire.lua#L731
	---@param name string Name of the input
	---@return Entity undefined The entity the wirelink is wired to
	function _G.Wirelink:getWiredTo(name) end
	--- outputType - server - libs_sv/wire.lua#L665
	---@param name string Output name to search for
	---@return string undefined Type of output
	function _G.Wirelink:outputType(name) end
	--- isWired - server - libs_sv/wire.lua#L720
	---@param name string Name of the input to check
	---@return boolean undefined Whether it is wired
	function _G.Wirelink:isWired(name) end
	--- outputs - server - libs_sv/wire.lua#L700
	---@return table undefined All of the wirelink's outputs
	function _G.Wirelink:outputs() end
	--- isValid - server - libs_sv/wire.lua#L640
	---@return boolean undefined Whether the wirelink is valid
	function _G.Wirelink:isValid() end
---  Angle Type
---@class Angle
---@operator mul(number|Angle):Angle
---@operator div(number|Angle):Angle
---@operator index(number|string):number
---@operator tostring:string
---@operator unm:Angle
---@operator add(Angle):Angle
---@operator sub(Angle):Angle
---@operator eq(Angle):boolean
_G.Angle = {}
	--- setZero - shared - libs_sh/angles.lua#L218
	function _G.Angle:setZero() end
	--- getQuaternion - shared - libs_sh/quaternion.lua#L825
	---@return Quaternion undefined Constructed quaternion
	function _G.Angle:getQuaternion() end
	--- round - shared - libs_sh/angles.lua#L194
	---@param idp number? (Default 0) The integer decimal place to round to.
	function _G.Angle:round(idp) end
	--- rotateAroundAxis - shared - libs_sh/angles.lua#L172
	---@param v Vector Vector axis
	---@param deg number? Number of degrees or nil if radians.
	---@param rad number? Number of radians or nil if degrees.
	---@return Angle undefined The modified angle
	function _G.Angle:rotateAroundAxis(v, deg, rad) end
	--- clone - shared - libs_sh/angles.lua#L203
	---@return Angle undefined The copy of the angle
	function _G.Angle:clone() end
	--- setY - shared - libs_sh/angles.lua#L234
	---@param y number The yaw
	---@return Angle undefined Angle after modification
	function _G.Angle:setY(y) end
	--- getRight - shared - libs_sh/angles.lua#L160
	---@return Vector undefined Right direction.
	function _G.Angle:getRight() end
	--- setP - shared - libs_sh/angles.lua#L226
	---@param p number The pitch
	---@return Angle undefined Angle after modification
	function _G.Angle:setP(p) end
	--- set - shared - libs_sh/angles.lua#L209
	---@param b Angle The angle to copy from.
	function _G.Angle:set(b) end
	--- getUp - shared - libs_sh/angles.lua#L166
	---@return Vector undefined Up direction.
	function _G.Angle:getUp() end
	--- isZero - shared - libs_sh/angles.lua#L148
	---@return boolean undefined If they are all zero
	function _G.Angle:isZero() end
	--- setR - shared - libs_sh/angles.lua#L242
	---@param r number The roll
	---@return Angle undefined Angle after modification
	function _G.Angle:setR(r) end
	--- getForward - shared - libs_sh/angles.lua#L154
	---@return Vector undefined Forward direction.
	function _G.Angle:getForward() end
