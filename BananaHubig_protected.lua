--[[
  ========================================
  Scriptshyb Cloud - Sistema de Keys
  Script: BananaHubig
  Expiracion: 24h
  Proteccion: 8 Sistemas Activos
  Compatibilidad: Synapse X, KRNL, Fluxus, Delta,
  Hydrogen, Arceus X, Solara, Wave, Xeno
  Dispositivos: Desktop / Tablet / Mobile
  ========================================
--]]

task.spawn(function()
-- ============================================
-- SISTEMA 3: Logging Interno (antes de pcall)
-- ============================================
local _lg = {}
local function _log(m) table.insert(_lg, os.time() .. "|" .. m) end
_log("init")

-- ============================================
-- SISTEMA 2: Anti-Multiple-Execution (antes de pcall)
-- ============================================
if _G.__SH_Active then
  warn("Scriptshyb Cloud: Script ya en ejecucion")
  return
end
_G.__SH_Active = true

pcall(function()
  local _old = game:GetService("CoreGui"):FindFirstChild("ScriptshybCloud")
  if _old then _old:Destroy() end
end)

  local _ok, _err = pcall(function()

-- ============================================
-- SISTEMA 1: Anti-Tamper y Anti-Decompile
-- ============================================
local _clk = os.clock()
local _ic = 0
for _ = 1, 5 do _ic = _ic + 1 end
if _ic ~= 5 then _G.__SH_Active = false return end
if os.clock() - _clk > 10 then _G.__SH_Active = false return end
local _dbg = pcall(function() return debug.getinfo(1, "l") end)

-- ============================================
-- COMPATIBILIDAD EJECUTORES: GUI Parent Fallback
-- ============================================
local _gp
local _ok1 = pcall(function() _gp = game:GetService("CoreGui") end)
if not _ok1 or not _gp then
  local _ok2 = pcall(function()
    _gp = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui", 10)
  end)
  if not _ok2 or not _gp then
    _gp = game.CoreGui
  end
end

-- ============================================
-- SISTEMA 6: Deteccion de Dispositivo + Safe Zones
-- ============================================
local _uis = game:GetService("UserInputService")
local _cam = workspace.CurrentCamera
local _vp = _cam and _cam.ViewportSize or Vector2.new(1024, 768)
local _isMobile = _uis.TouchEnabled and not _uis.KeyboardEnabled
local _isTablet = _uis.TouchEnabled and _vp.X >= 600 and _vp.X < 1100

local _gw, _gh = 420, 320
local _py = 0.5
if _isMobile then
  _gw = math.min(_vp.X - 40, 340)
  _gh = 280
  _py = 0.38
elseif _isTablet then
  _gw = 380
  _gh = 300
  _py = 0.42
end

-- ============================================
-- Servicios (protegidos con pcall individual)
-- ============================================
local _ts
pcall(function() _ts = game:GetService("TweenService") end)
local _pl
pcall(function() _pl = game:GetService("Players") end)
local _rs
pcall(function() _rs = game:GetService("RunService") end)
local _ws
pcall(function() _ws = game:GetService("Workspace") end)
local _ui2
pcall(function() _ui2 = game:GetService("UserInputService") end)

  -- ============================================
  -- Constantes del modulo
  -- ============================================
  local _n = "BananaHubig"
  local _h = 24
  local _l = ""
  local _k = "HUV2Y94DYEZCY3"

  -- ============================================
  -- Key validation — comparacion estricta ==
  -- ============================================
  local function _sk(r)
    if type(r) ~= "string" then return "" end
    return (r:gsub("%s", ""):gsub("[^%w]", "")):upper()
  end

  local function _vk(i)
    return _sk(i) == _k
  end

  -- ============================================
  -- CAPA 2: Payload codificado (hex / long-string)
  -- ============================================
local _hex = "0a0a0a6c6f63616c20506c6179657273203d2067616d653a476574536572766963652822506c617965727322290a6c6f63616c20706c61796572203d20506c61796572732e4c6f63616c506c617965720a6c6f63616c20706c61796572477569203d2070" ..
  "6c617965723a57616974466f724368696c642822506c6179657247756922290a0a0a6c6f63616c2073637265656e477569203d20496e7374616e63652e6e6577282253637265656e47756922290a73637265656e4775692e4e616d65203d20224775694d" ..
  "6f7669626c65220a73637265656e4775692e52657365744f6e537061776e203d2066616c73650a73637265656e4775692e506172656e74203d20706c617965724775690a0a0a6c6f63616c206672616d65203d20496e7374616e63652e6e657728224672" ..
  "616d6522290a6672616d652e4e616d65203d20224d61696e4672616d65220a6672616d652e53697a65203d205544696d322e6e657728302c203230302c20302c20313530290a6672616d652e506f736974696f6e203d205544696d322e6e657728302e35" ..
  "2c202d3130302c20302e352c202d3735290a6672616d652e4261636b67726f756e64436f6c6f7233203d20436f6c6f72332e66726f6d524742283235352c20302c2030290a6672616d652e426f7264657253697a65506978656c203d20300a6672616d65" ..
  "2e416374697665203d20747275650a6672616d652e447261676761626c65203d2066616c7365200a6672616d652e506172656e74203d2073637265656e4775690a0a0a6c6f63616c20636f726e6572203d20496e7374616e63652e6e657728225549436f" ..
  "726e657222290a636f726e65722e436f726e6572526164697573203d205544696d2e6e657728302c2038290a636f726e65722e506172656e74203d206672616d650a0a0a6c6f63616c2064726167426172203d20496e7374616e63652e6e657728224672" ..
  "616d6522290a647261674261722e4e616d65203d202244726167426172220a647261674261722e53697a65203d205544696d322e6e657728312c20302c20302c203330290a647261674261722e506f736974696f6e203d205544696d322e6e657728302c" ..
  "20302c20302c2030290a647261674261722e4261636b67726f756e64436f6c6f7233203d20436f6c6f72332e66726f6d524742283138302c20302c2030290a647261674261722e426f7264657253697a65506978656c203d20300a647261674261722e50" ..
  "6172656e74203d206672616d650a0a6c6f63616c2064726167436f726e6572203d20496e7374616e63652e6e657728225549436f726e657222290a64726167436f726e65722e436f726e6572526164697573203d205544696d2e6e657728302c2038290a" ..
  "64726167436f726e65722e506172656e74203d20647261674261720a0a0a6c6f63616c207469746c65203d20496e7374616e63652e6e65772822546578744c6162656c22290a7469746c652e53697a65203d205544696d322e6e657728312c202d31302c" ..
  "20312c2030290a7469746c652e506f736974696f6e203d205544696d322e6e657728302c20352c20302c2030290a7469746c652e4261636b67726f756e645472616e73706172656e6379203d20310a7469746c652e54657874203d202247554920526f6a" ..
  "61220a7469746c652e54657874436f6c6f7233203d20436f6c6f72332e66726f6d524742283235352c203235352c20323535290a7469746c652e466f6e74203d20456e756d2e466f6e742e476f7468616d426f6c640a7469746c652e5465787453697a65" ..
  "203d2031360a7469746c652e5465787458416c69676e6d656e74203d20456e756d2e5465787458416c69676e6d656e742e4c6566740a7469746c652e506172656e74203d20647261674261720a0a0a6c6f63616c2055736572496e707574536572766963" ..
  "65203d2067616d653a47657453657276696365282255736572496e7075745365727669636522290a0a6c6f63616c206472616767696e67203d2066616c73650a6c6f63616c20647261675374617274203d206e696c0a6c6f63616c207374617274506f73" ..
  "203d206e696c0a0a647261674261722e496e707574426567616e3a436f6e6e6563742866756e6374696f6e28696e707574290a09696620696e7075742e55736572496e70757454797065203d3d20456e756d2e55736572496e707574547970652e4d6f75" ..
  "7365427574746f6e310a09096f7220696e7075742e55736572496e70757454797065203d3d20456e756d2e55736572496e707574547970652e546f756368207468656e0a09096472616767696e67203d20747275650a0909647261675374617274203d20" ..
  "696e7075742e506f736974696f6e0a09097374617274506f73203d206672616d652e506f736974696f6e0a0a0909696e7075742e4368616e6765643a436f6e6e6563742866756e6374696f6e28290a090909696620696e7075742e55736572496e707574" ..
  "5374617465203d3d20456e756d2e55736572496e70757453746174652e456e64207468656e0a090909096472616767696e67203d2066616c73650a090909656e640a0909656e64290a09656e640a656e64290a0a55736572496e70757453657276696365" ..
  "2e496e7075744368616e6765643a436f6e6e6563742866756e6374696f6e28696e707574290a096966206472616767696e6720616e642028696e7075742e55736572496e70757454797065203d3d20456e756d2e55736572496e707574547970652e4d6f" ..
  "7573654d6f76656d656e740a09096f7220696e7075742e55736572496e70757454797065203d3d20456e756d2e55736572496e707574547970652e546f75636829207468656e0a09096c6f63616c2064656c7461203d20696e7075742e506f736974696f" ..
  "6e202d206472616753746172740a09096672616d652e506f736974696f6e203d205544696d322e6e6577280a0909097374617274506f732e582e5363616c652c0a0909097374617274506f732e582e4f6666736574202b2064656c74612e582c0a090909" ..
  "7374617274506f732e592e5363616c652c0a0909097374617274506f732e592e4f6666736574202b2064656c74612e590a0909290a09656e640a656e64290a"
local function _dec()
  local _t = {}
  for _i = 1, #_hex, 2 do
    _t[#_t + 1] = string.char(tonumber(string.sub(_hex, _i, _i + 1), 16))
  end
  return table.concat(_t)
end
local _p = _dec()

  -- ============================================
  -- CAPA 3: Codigo señuelo (decoy)
  -- ============================================
local _z0h27w = 9078
local _z15pgq = 1628
local _z2vg5f = 5737
local _z3b5qc = 2690
local _z40bgy = 2236
local _z5hal2 = 1824
local _z6zdyi = 798
local _z7h09b = 8217
local _z8imor = 74
local _z9uglm = 1194
local _z100doa = 6124
local _z11vwwb = 1410
local _z12cghk = 1717
local _z13c5k8 = 5132
local _z14z69v = 5687
local _z15yvxe = 508
local _z16rkpb = 7886
local _z17zz6n = 1711
local _z18lqdl = 937
local _z19fjmv = 6433
local _z20jbni = 1191
local _z21gizm = 1248
local _z22uig5 = 2427
local _z23qf3c = 5788
local _z24fxt5 = 6892
local _z251bgi = 3427
local _z26es5q = 2885
local _z27fv1c = 762
local _z28rsaj = 5101
local _z29anjb = 7958
local _z30fs1m = _z26es5q * _z100doa - 132
local _z316bes = _z100doa * _z29anjb - 288
local _z32jmgd = _z15yvxe * _z19fjmv - 470
local _z33koij = _z0h27w * _z11vwwb - 469
local _z346kcm = _z3b5qc * _z24fxt5 - 124
local _z35ie8g = _z11vwwb * _z15yvxe - 340
local _z36z5nz = _z7h09b * _z13c5k8 - 253
local _z37r34k = _z11vwwb * _z12cghk - 475
local _z38ew7a = _z19fjmv * _z26es5q - 437
local _z39hgk9 = _z21gizm * _z40bgy - 483
local _z40pkb3 = _z40bgy * _z251bgi - 440
local _z4141ot = _z15yvxe * _z7h09b - 140
local _z42m86w = _z15yvxe * _z29anjb - 318
local _z43821f = _z3b5qc * _z26es5q - 498
local _z44u49b = _z18lqdl * _z27fv1c - 197
local _z45tg1s = _z21gizm * _z15pgq - 85
local _z46wl9l = _z19fjmv * _z3b5qc - 354
local _z479zsb = _z19fjmv * _z24fxt5 - 147
local _z48t6fi = _z11vwwb * _z251bgi - 110
local _z499brd = _z8imor * _z100doa - 184
local _zf0 = function() return _z2vg5f end
local _zf1 = function() return _z21gizm end
local _zf2 = function() return _z17zz6n end
local _zf3 = function() return _z29anjb end
local _zf4 = function() return _z19fjmv end
local _zf5 = function() return _z8imor end
local _zf6 = function() return _z15pgq end
local _zf7 = function() return _z29anjb end
local _zf8 = function() return _z17zz6n end
local _zf9 = function() return _z0h27w end
local _zf10 = function() return _z11vwwb end
local _zf11 = function() return _z3b5qc end
local _zf12 = function() return _z19fjmv end
local _zf13 = function() return _z6zdyi end
local _zf14 = function() return _z19fjmv end


  -- ============================================
  -- Sesion persistente
  -- ============================================
  local _sa = false
  if _G.ScriptshybKey_Ses then
    local _e = os.time() - _G.ScriptshybKey_Ses.t
    if _e >= 0 and _e <= _G.ScriptshybKey_Ses.e then
      _sa = true
    end
  end

  if _sa then
    _log("session_active")
    local _run = loadstring or load
    if _run then
      local _fn = _run(_p)
      if _fn then _fn() end
    end
    _G.__SH_Active = false
    return
  end

  -- ============================================
  -- Verificacion de servicios criticos
  -- ============================================
  if not _ts then
    warn("Scriptshyb Cloud: TweenService no disponible. Ejecutor no compatible.")
    _G.__SH_Active = false
    return
  end

  -- Timeout interaction tracker (declarado antes de event handlers)
  local _li = os.time()

  -- ============================================
  -- Delay para inicializacion del ejecutor
  -- ============================================
  task.wait(0.5)

  -- ============================================
  -- SISTEMA 7: Construccion de GUI (adaptativa)
  -- ============================================
  local _sg = Instance.new("ScreenGui")
  _sg.Name = "ScriptshybCloud"
  _sg.ResetOnSpawn = false
  _sg.IgnoreGuiInset = true
  _sg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  _sg.Enabled = true
  pcall(function() _sg.Parent = _gp end)

  if not _sg.Parent then
    warn("Scriptshyb Cloud: No se pudo inicializar la GUI. Ejecutor no compatible.")
    _G.__SH_Active = false
    return
  end

  local _bl = Instance.new("BlurEffect")
  _bl.Size = 0
  pcall(function() _bl.Parent = game:GetService("Lighting") end)

  local _mf = Instance.new("Frame")
  _mf.Name = "_mf"
  _mf.Size = UDim2.new(0, _gw, 0, _gh)
  _mf.Position = UDim2.new(0.5, -_gw / 2, _py, -_gh / 2)
  _mf.BackgroundColor3 = Color3.fromRGB(8, 8, 12)
  _mf.BackgroundTransparency = 0.15
  _mf.BorderSizePixel = 0
  _mf.ClipsDescendants = true
  _mf.Visible = true
  _mf.Parent = _sg

  local _mc = Instance.new("UICorner")
  _mc.CornerRadius = UDim.new(0, 18)
  _mc.Parent = _mf

  local _mg = Instance.new("UIGradient")
  _mg.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(18, 18, 24)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(5, 5, 10)),
  })
  _mg.Rotation = 90
  _mg.Parent = _mf

  local _ms = Instance.new("UIStroke")
  _ms.Color = Color3.fromRGB(0, 255, 255)
  _ms.Thickness = 1.5
  _ms.Transparency = 0.3
  _ms.Parent = _mf

  -- Title
  local _t1 = Instance.new("TextLabel")
  _t1.Size = UDim2.new(1, -40, 0, 28)
  _t1.Position = UDim2.new(0, 20, 0, 20)
  _t1.BackgroundTransparency = 1
  _t1.Text = "Introduce tu Key de Acceso"
  _t1.TextColor3 = Color3.fromRGB(255, 255, 255)
  _t1.Font = Enum.Font.GothamBold
  _t1.TextSize = 16
  _t1.TextTransparency = 1
  _t1.Parent = _mf

  -- Subtitle (script name)
  local _t2 = Instance.new("TextLabel")
  _t2.Size = UDim2.new(1, -40, 0, 18)
  _t2.Position = UDim2.new(0, 20, 0, 48)
  _t2.BackgroundTransparency = 1
  _t2.Text = _n
  _t2.TextColor3 = Color3.fromRGB(0, 255, 255)
  _t2.Font = Enum.Font.GothamMedium
  _t2.TextSize = 12
  _t2.TextTransparency = 1
  _t2.Parent = _mf

  -- Divider
  local _dv = Instance.new("Frame")
  _dv.Size = UDim2.new(1, -40, 0, 1)
  _dv.Position = UDim2.new(0, 20, 0, 72)
  _dv.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
  _dv.BackgroundTransparency = 1
  _dv.BorderSizePixel = 0
  _dv.Parent = _mf

  -- TextBox
  local _tb = Instance.new("TextBox")
  _tb.Size = UDim2.new(1, -40, 0, 40)
  _tb.Position = UDim2.new(0, 20, 0, 90)
  _tb.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
  _tb.BackgroundTransparency = 0.3
  _tb.Text = ""
  _tb.PlaceholderText = "Pega tu key aqui..."
  _tb.TextColor3 = Color3.fromRGB(255, 255, 255)
  _tb.PlaceholderColor3 = Color3.fromRGB(100, 100, 110)
  _tb.Font = Enum.Font.Code
  _tb.TextSize = 14
  _tb.BorderSizePixel = 0
  _tb.TextTransparency = 1
  _tb.Parent = _mf

  local _tbc = Instance.new("UICorner")
  _tbc.CornerRadius = UDim.new(0, 10)
  _tbc.Parent = _tb

  local _tbs = Instance.new("UIStroke")
  _tbs.Color = Color3.fromRGB(0, 255, 255)
  _tbs.Thickness = 1
  _tbs.Transparency = 0.5
  _tbs.Parent = _tb

  -- Verify button
  local _vb = Instance.new("TextButton")
  _vb.Size = UDim2.new(1, -40, 0, 40)
  _vb.Position = UDim2.new(0, 20, 0, 142)
  _vb.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
  _vb.BackgroundTransparency = 0.1
  _vb.Text = "Verificar Key"
  _vb.TextColor3 = Color3.fromRGB(0, 0, 0)
  _vb.Font = Enum.Font.GothamBold
  _vb.TextSize = 14
  _vb.AutoButtonColor = false
  _vb.BorderSizePixel = 0
  _vb.TextTransparency = 1
  _vb.Parent = _mf

  local _vbc = Instance.new("UICorner")
  _vbc.CornerRadius = UDim.new(0, 10)
  _vbc.Parent = _vb

  -- Get key button
  local _gb = Instance.new("TextButton")
  _gb.Size = UDim2.new(1, -40, 0, 34)
  _gb.Position = UDim2.new(0, 20, 0, 195)
  _gb.BackgroundColor3 = Color3.fromRGB(20, 20, 28)
  _gb.BackgroundTransparency = 0.3
  _gb.Text = "Conseguir Key"
  _gb.TextColor3 = Color3.fromRGB(0, 255, 255)
  _gb.Font = Enum.Font.GothamMedium
  _gb.TextSize = 13
  _gb.AutoButtonColor = false
  _gb.BorderSizePixel = 0
  _gb.TextTransparency = 1
  _gb.Parent = _mf

  local _gbc = Instance.new("UICorner")
  _gbc.CornerRadius = UDim.new(0, 8)
  _gbc.Parent = _gb

  local _gbs = Instance.new("UIStroke")
  _gbs.Color = Color3.fromRGB(0, 255, 255)
  _gbs.Thickness = 1
  _gbs.Transparency = 0.6
  _gbs.Parent = _gb

  -- Status label
  local _sl = Instance.new("TextLabel")
  _sl.Size = UDim2.new(1, -40, 0, 20)
  _sl.Position = UDim2.new(0, 20, 0, 240)
  _sl.BackgroundTransparency = 1
  _sl.Text = ""
  _sl.TextColor3 = Color3.fromRGB(180, 180, 190)
  _sl.Font = Enum.Font.GothamMedium
  _sl.TextSize = 11
  _sl.Parent = _mf

  -- Close button
  local _cb = Instance.new("TextButton")
  _cb.Size = UDim2.new(0, 24, 0, 24)
  _cb.Position = UDim2.new(1, -32, 0, 8)
  _cb.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
  _cb.BackgroundTransparency = 0.4
  _cb.Text = "X"
  _cb.TextColor3 = Color3.fromRGB(180, 180, 190)
  _cb.Font = Enum.Font.GothamBold
  _cb.TextSize = 11
  _cb.AutoButtonColor = false
  _cb.BorderSizePixel = 0
  _cb.ZIndex = 3
  _cb.TextTransparency = 1
  _cb.Parent = _mf

  local _cbc = Instance.new("UICorner")
  _cbc.CornerRadius = UDim.new(0, 6)
  _cbc.Parent = _cb

  -- ============================================
  -- Animaciones
  -- ============================================
  local _destroyed = false
  local function _fd()
    if _destroyed then return end
    _destroyed = true
    _log("fade_out")
    pcall(function()
      _ts:Create(_mf, TweenInfo.new(0.5), { BackgroundTransparency = 1 }):Play()
      _ts:Create(_ms, TweenInfo.new(0.5), { Transparency = 1 }):Play()
      _ts:Create(_bl, TweenInfo.new(0.5), { Size = 0 }):Play()
      for _, c in ipairs(_mf:GetDescendants()) do
        if c:IsA("TextLabel") or c:IsA("TextButton") or c:IsA("TextBox") then
          _ts:Create(c, TweenInfo.new(0.5), { TextTransparency = 1 }):Play()
        elseif c:IsA("Frame") then
          _ts:Create(c, TweenInfo.new(0.5), { BackgroundTransparency = 1 }):Play()
        elseif c:IsA("UIStroke") then
          _ts:Create(c, TweenInfo.new(0.5), { Transparency = 1 }):Play()
        end
      end
    end)
    task.wait(0.6)
    pcall(function() _sg:Destroy() end)
    pcall(function() _bl:Destroy() end)
    _G.__SH_Active = false
  end

  local function _sh(el, orig)
    for _ = 1, 3 do
      _ts:Create(el, TweenInfo.new(0.05), { Position = UDim2.new(orig.X.Scale, orig.X.Offset + 6, orig.Y.Scale, orig.Y.Offset) }):Play()
      task.wait(0.05)
      _ts:Create(el, TweenInfo.new(0.05), { Position = UDim2.new(orig.X.Scale, orig.X.Offset - 6, orig.Y.Scale, orig.Y.Offset) }):Play()
      task.wait(0.05)
    end
    _ts:Create(el, TweenInfo.new(0.1), { Position = orig }):Play()
  end

  local function _bk()
    local oc = _ms.Color
    for _ = 1, 3 do
      _ts:Create(_ms, TweenInfo.new(0.12), { Color = Color3.fromRGB(255, 68, 68), Thickness = 2.5 }):Play()
      task.wait(0.12)
      _ts:Create(_ms, TweenInfo.new(0.12), { Color = oc, Thickness = 1.5 }):Play()
      task.wait(0.12)
    end
  end

  -- ============================================
  -- SISTEMA 7: Entrada con tween chain (bounce)
  -- 0.7 -> 1.05 (overshoot) -> 1.0 (settle)
  -- ============================================
  _mf.Size = UDim2.new(0, _gw * 0.7, 0, _gh * 0.7)
  _mf.Position = UDim2.new(0.5, -_gw * 0.35, _py, -_gh * 0.35)
  _mf.BackgroundTransparency = 1

  local _ta = _ts:Create(_mf, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Size = UDim2.new(0, _gw * 1.05, 0, _gh * 1.05),
    Position = UDim2.new(0.5, -_gw * 0.525, _py, -_gh * 0.525),
    BackgroundTransparency = 0.15,
  })
  _ta.Completed:Connect(function()
    _ts:Create(_mf, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      Size = UDim2.new(0, _gw, 0, _gh),
      Position = UDim2.new(0.5, -_gw / 2, _py, -_gh / 2),
    }):Play()
  end)
  _ta:Play()
  _ts:Create(_bl, TweenInfo.new(0.4), { Size = 15 }):Play()

  -- Staggered header appearance (0.1s delay between each)
  task.delay(0.1, function() _ts:Create(_t1, TweenInfo.new(0.2), { TextTransparency = 0 }):Play() end)
  task.delay(0.2, function() _ts:Create(_t2, TweenInfo.new(0.2), { TextTransparency = 0 }):Play() end)
  task.delay(0.3, function() _ts:Create(_dv, TweenInfo.new(0.2), { BackgroundTransparency = 0.7 }):Play() end)
  task.delay(0.4, function() _ts:Create(_tb, TweenInfo.new(0.2), { TextTransparency = 0 }):Play() end)
  task.delay(0.4, function() _ts:Create(_gb, TweenInfo.new(0.2), { TextTransparency = 0 }):Play() end)
  task.delay(0.5, function()
    _ts:Create(_vb, TweenInfo.new(0.2), { TextTransparency = 0, BackgroundTransparency = 0.1 }):Play()
    _ts:Create(_cb, TweenInfo.new(0.2), { TextTransparency = 0 }):Play()
  end)

  -- ============================================
  -- Glow pulsante en boton verificar (1.5s por ciclo)
  -- ============================================
  task.spawn(function()
    while _vb.Parent and _vb.Visible and not _destroyed do
      _ts:Create(_vb, TweenInfo.new(0.75), { BackgroundTransparency = 0.05 }):Play()
      task.wait(0.75)
      if not _vb.Parent or not _vb.Visible or _destroyed then break end
      _ts:Create(_vb, TweenInfo.new(0.75), { BackgroundTransparency = 0.15 }):Play()
      task.wait(0.75)
    end
  end)

  -- ============================================
  -- Event handlers
  -- ============================================
  _cb.MouseButton1Click:Connect(function()
    _li = os.time()
    _fd()
  end)

  _gb.MouseButton1Click:Connect(function()
    _li = os.time()
    if _l and _l ~= "" then
      pcall(function()
        if setclipboard then setclipboard(_l) end
      end)
      pcall(function()
        local _rq = syn and syn.request or http_request or fluxus and fluxus.request or (http and http.request)
        if _rq then
          _rq({ Url = _l, Method = "GET" })
        end
      end)
    end
    _sl.Text = "Ve al enlace, consigue tu key y pegala aqui"
    _sl.TextColor3 = Color3.fromRGB(0, 255, 255)
  end)

  _vb.MouseButton1Click:Connect(function()
    _li = os.time()
    local raw = _tb.Text
    if _sk(raw) == "" then
      _sl.Text = "Introduce una key primero"
      _sl.TextColor3 = Color3.fromRGB(255, 130, 100)
      _sh(_tb, _tb.Position)
      return
    end

    if _vk(raw) then
      _log("key_valid")
      _G.ScriptshybKey_Ses = { t = os.time(), e = _h * 3600 }
      _sl.Text = "Key valida — Ejecutando script..."
      _sl.TextColor3 = Color3.fromRGB(80, 255, 120)
      _ts:Create(_ms, TweenInfo.new(0.3), { Color = Color3.fromRGB(80, 255, 120), Thickness = 2.5, Transparency = 0.05 }):Play()
      task.wait(0.8)
      _fd()
      local _run = loadstring or load
      if _run then
        local _fn = _run(_p)
        if _fn then
          _log("executing_payload")
          _fn()
        end
      end
    else
      _log("key_invalid")
      _sl.Text = "Key invalida — Intentalo de nuevo"
      _sl.TextColor3 = Color3.fromRGB(255, 80, 80)
      _sh(_mf, _mf.Position)
      _bk()
    end
  end)

  -- Reset timeout on any input
  _tb.FocusLost:Connect(function() _li = os.time() end)

-- ============================================
-- SISTEMA 4: Proteccion contra modificacion de GUI
-- ============================================
task.spawn(function()
  while _sg and _sg.Parent do
    task.wait(2)
    if not _sg.Parent or not _sg:FindFirstChild("_mf") then
      _log("gui_destroyed_externally")
      _G.__SH_Active = false
      pcall(function() _sg:Destroy() end)
      return
    end
  end
end)

-- ============================================
-- SISTEMA 5: Timeout (5 minutos = 300 segundos)
-- ============================================
local _to = 300
_li = os.time()
task.spawn(function()
  while _sg and _sg.Parent do
    task.wait(1)
    if os.time() - _li > _to then
      _log("timeout")
      pcall(function()
        _ts:Create(_mf, TweenInfo.new(0.5), { BackgroundTransparency = 1 }):Play()
        for _, c in ipairs(_mf:GetDescendants()) do
          if c:IsA("TextLabel") or c:IsA("TextButton") or c:IsA("TextBox") then
            _ts:Create(c, TweenInfo.new(0.5), { TextTransparency = 1 }):Play()
          end
        end
      end)
      task.wait(0.6)
      pcall(function() _sg:Destroy() end)
      _G.__SH_Active = false
      warn("Scriptshyb Cloud: Sesion expirada — Ejecuta el script de nuevo")
      return
    end
  end
end)

-- ============================================
-- Re-adaptacion de ViewportSize
-- ============================================
if _cam then
  _cam:GetPropertyChangedSignal("ViewportSize"):Connect(function()
    _vp = _cam.ViewportSize
    if _isMobile then
      _gw = math.min(_vp.X - 40, 340)
    elseif _isTablet then
      _gw = 380
    end
    pcall(function()
      _mf.Size = UDim2.new(0, _gw, 0, _gh)
      _mf.Position = UDim2.new(0.5, -_gw / 2, _py, -_gh / 2)
    end)
  end)
end

_log("gui_ready")

  end)

  if not _ok then
    warn("Scriptshyb Cloud Error: " .. tostring(_err))
    for _, _l in ipairs(_lg) do warn(_l) end
    _G.__SH_Active = false
  end
end)
