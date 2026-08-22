local _xd=(function()local b,c,sf=string.byte,string.char,string.format local function bd(s)local d={}local v=0local bl=0local t={} local lc=#s for i=1,lc do local ch=b(s,i)local cv if ch>=65 and ch<=90 then cv=ch-65 elseif ch>=97 and ch<=122 then cv=ch-71 elseif ch>=48 and ch<=57 then cv=ch+4 elseif ch==43 then cv=62 elseif ch==47 then cv=63 else cv=nil end if cv then v=v*64+cv bl=bl+6 if bl>=8 then bl=bl-8 local bb=(v%(2^8))^(2^bl)v=math.floor(v/(2^bl)) t[#t+1]=c(bb)end end end return table.concat(t)end return function(s,k)local d=bd(s)local e={}for i=1,#d do e[i]=c(b(d,i)~k)end return table.concat(e)end end)()
pcall(_l93A0F5D91FBDC005 ()
cvar.con_filter_enable:set_int(0)
cvar.con_filter_text:set_string('')
client.exec('con_filter_enable 0')
end)
local FLUX_TRACE = false
local _l93A0F5D91FBDC005 _l422CA01953F92F19(_l5A3092E29AC7CD42)
if FLUX_TRACE then
client.error_log((_xd("LyU8MXNp",73)) .. _l5A3092E29AC7CD42)
end
end
_l422CA01953F92F19((_xd("AAcSFBZTQ1NeUxAbBh0YUwAHEgEHFhc=",115)))
local ffi = require 'ffi'
local vector = require 'vector'
local inspect = require 'gamesense/inspect'
local base64 = require 'gamesense/base64'
local clipboard = require 'gamesense/clipboard'
local chat = require 'gamesense/chat'
local localize = require 'gamesense/localize'
local images = require 'gamesense/images'
local c_entity = require 'gamesense/entity'
local csgo_weapons = require 'gamesense/csgo_weapons'
local _l93A0F5D91FBDC005 DUMMY(...)
return ...
end
local _l93A0F5D91FBDC005 _l0C77A02632DEE29D(list, _l861DF5F3FC680167)
for i = 1, #list do
if list[i] == _l861DF5F3FC680167 then
return i
end
end
return nil
end
local _l93A0F5D91FBDC005 _l7BF2413EBDE500D5(x)
return math.floor(x + 0.5)
end
local _l93A0F5D91FBDC005 _l0E2930032D3BACB0(_lB089E1D6D7176955)
return math.floor((_lB089E1D6D7176955 or 0) / globals.tickinterval() + 0.5)
end
local _l93A0F5D91FBDC005 _lEDE388F8AFCB327E(ticks)
return (ticks or 0) * globals.tickinterval()
end
_l422CA01953F92F19((_xd("X1hNS0kMHQwBDEBFTl5NXkVJXwxAQ01ISUg=",44)))
local _lB6CD131F5793FF2D do
_lB6CD131F5793FF2D = { }
_lB6CD131F5793FF2D._lDB160C0F87126763 = 'flux'
_lB6CD131F5793FF2D.build = 'nightly'
_lB6CD131F5793FF2D.user = 'user' do
local ok, persona = pcall(_l93A0F5D91FBDC005 ()
return panorama.open('CSGOHud').MyPersonaAPI.GetName()
end)
if ok and persona ~= nil and persona ~= '' then
_lB6CD131F5793FF2D.user = persona
end
end
_lB6CD131F5793FF2D.discord = (_xd("moaGgoHI3d2WgZHclZXdnoeTlJ6Hig==",242))
_lB6CD131F5793FF2D.telegram = (_xd("jpKSlpXcycmSyIuDyYqTh4CKk54=",230))
_lB6CD131F5793FF2D.discord_short = (_xd("sKysqKvi9/e8q7v2v7/3tK25vrStoA==",216))
_lB6CD131F5793FF2D.telegram_short = (_xd("Uk5OSkkAFRVOFFdfFVZPW1xWT0I=",58))
end
local _l424F4D241D652803 do
_l424F4D241D652803 = ffi.typeof [[
struct {
unsigned char r;
unsigned char g;
unsigned char b;
unsigned char a;
}
]]
local _l117198DE2330D7E0 = { } do
_l117198DE2330D7E0._l6BC954908A843096 = _l117198DE2330D7E0
_l93A0F5D91FBDC005 _l117198DE2330D7E0:__tostring()
return string.format(
'%i, %i, %i, %i',
self:unpack()
)
end
_l93A0F5D91FBDC005 _l117198DE2330D7E0.lerp(a, b, t)
return _l424F4D241D652803(
a.r + t * (b.r - a.r),
a.g + t * (b.g - a.g),
a.b + t * (b.b - a.b),
a.a + t * (b.a - a.a)
)
end
_l93A0F5D91FBDC005 _l117198DE2330D7E0:unpack()
return self.r, self.g, self.b, self.a
end
_l93A0F5D91FBDC005 _l117198DE2330D7E0:clone()
return _l424F4D241D652803(self:unpack())
end
_l93A0F5D91FBDC005 _l117198DE2330D7E0:to_hex()
return string.format(
'%02x%02x%02x%02x',
self:unpack()
)
end
_l93A0F5D91FBDC005 _l117198DE2330D7E0:hsv(h, s, v)
local r, g, b
h = (h % 1.0) * (6120 * 1) / 17
s = math.max(0, math.min(s, 1))
v = math.max(0, math.min(v, 1))
local c = v * s
local x = c * (1 - math.abs((h / (60 * 1)) % (2 * 1) - 1))
local m = v - c
if h < -(-60) then
r, g, b = c, x, 0
elseif h < (1200 * 1) / 10 then
r, g, b = x, c, 0
elseif h < (1620 * 1) / 9 then
r, g, b = 0, c, x
elseif h < -(-240) then
r, g, b = 0, x, c
elseif h < (300 * 1) then
r, g, b = x, 0, c
else
r, g, b = c, 0, x
end
self.r = (r + m) * (57651 + 57396 - 57396)
self.g = (g + m) * -(-255)
self.b = (b + m) * (40296 + 40041 - 40041)
self.a = (17931 + 17676 - 17676)
return self
end
end
ffi.metatype(_l424F4D241D652803, _l117198DE2330D7E0)
end
local _l15E0D0F4CA07DE15 do
_l15E0D0F4CA07DE15 = { }
local _l93A0F5D91FBDC005 _l9E8DD73C7CEC0CF8(t, b, c, d)
return c * t / d + b
end
local _l93A0F5D91FBDC005 _l93D6112ED4E954BD()
return globals.frametime()
end
local _l93A0F5D91FBDC005 _l573AD41AE473AA69(easing_fn, prev, new, clock, _l0F5191CA1603861C)
if clock <= 0 then return new end
if clock >= _l0F5191CA1603861C then return new end
prev = easing_fn(clock, prev, new - prev, _l0F5191CA1603861C)
if type(prev) == (_xd("KjEpJiE2",68)) then
if math.abs(new - prev) < 0.001 then
return new
end
local _l1474BB822868DBDA = prev % 1.0
if _l1474BB822868DBDA < 0.001 then
return math.floor(prev)
end
if _l1474BB822868DBDA > 0.999 then
return math.ceil(prev)
end
end
return prev
end
_l93A0F5D91FBDC005 _l15E0D0F4CA07DE15.interp(a, b, t, easing_fn)
easing_fn = easing_fn or _l9E8DD73C7CEC0CF8
if type(b) == (_xd("sby8v7ayvQ==",211)) then
b = b and 1 or 0
end
return _l573AD41AE473AA69(easing_fn, a, b, _l93D6112ED4E954BD(), t)
end
end
local _l885AD57970B0DF46 do
_l885AD57970B0DF46 = { }
_l93A0F5D91FBDC005 _l885AD57970B0DF46.clamp(x, min, max)
return math.max(min, math.min(x, max))
end
_l93A0F5D91FBDC005 _l885AD57970B0DF46.lerp(a, b, t)
return a + t * (b - a)
end
_l93A0F5D91FBDC005 _l885AD57970B0DF46.inverse_lerp(a, b, x)
return (x - a) / (b - a)
end
_l93A0F5D91FBDC005 _l885AD57970B0DF46.map(x, in_min, in_max, out_min, out_max, should_clamp)
if should_clamp then
x = _l885AD57970B0DF46.clamp(x, in_min, in_max)
end
local _l4F474512FE4094FE = _l885AD57970B0DF46.inverse_lerp(in_min, in_max, x)
local _l861DF5F3FC680167 = _l885AD57970B0DF46.lerp(out_min, out_max, _l4F474512FE4094FE)
return _l861DF5F3FC680167
end
_l93A0F5D91FBDC005 _l885AD57970B0DF46.normalize(x, min, max)
local d = max - min
while x < min do
x = x + d
end
while x > max do
x = x - d
end
return x
end
_l93A0F5D91FBDC005 _l885AD57970B0DF46.trim(str)
return str
end
_l93A0F5D91FBDC005 _l885AD57970B0DF46.from_hex(hex)
hex = string.gsub(hex, '#', '')
local r = tonumber(string._l26F7CE0865D5D59E(hex, 1, (66240 + 66238 - 66238)), (34052 + 34036 - 34036))
local g = tonumber(string._l26F7CE0865D5D59E(hex, (3 + (8368 - 8368)), (44 * 1) / 11), (144 * 1) / 9)
local b = tonumber(string._l26F7CE0865D5D59E(hex, (5 * 1), -(-6)), (16 + (3673 - 3673)))
local a = tonumber(string._l26F7CE0865D5D59E(hex, -(-7), (8 * 1)), -(-16))
return r, g, b, a or (92544 + 92289 - 92289)
end
_l93A0F5D91FBDC005 _l885AD57970B0DF46.to_hex(r, g, b, a)
return string.format('%02x%02x%02x%02x', r, g, b, a)
end
_l93A0F5D91FBDC005 _l885AD57970B0DF46.event_callback(event_name, _lF49235C6F9B029A3, _l861DF5F3FC680167)
local fn = _l861DF5F3FC680167 == false
and client.unset_event_callback
or client.set_event_callback
fn(event_name, _lF49235C6F9B029A3)
end
_l93A0F5D91FBDC005 _l885AD57970B0DF46.get_eye_position(_lD5D485576A3C9DAF)
local _lE9F434BAA1046E59, origin_y, origin_z = entity.get_origin(_lD5D485576A3C9DAF)
local _l1285CD8A8A89032F, _lB179AD0D5B6AB17F, offset_z = entity.get_prop(_lD5D485576A3C9DAF, 'm_vecViewOffset')
if _lE9F434BAA1046E59 == nil or _l1285CD8A8A89032F == nil then
return nil
end
local _l9541232392D58978 = _lE9F434BAA1046E59 + _l1285CD8A8A89032F
local _l61C722BFC4F88474 = origin_y + _lB179AD0D5B6AB17F
local _lFB9823ED6E236070 = origin_z + offset_z
return _l9541232392D58978, _l61C722BFC4F88474, _lFB9823ED6E236070
end
_l93A0F5D91FBDC005 _l885AD57970B0DF46.get_player_weapons(_lD5D485576A3C9DAF)
local _lA1751D8238566CFB = { }
for i = 0, (63 * 1) do
local _lC483CC400CE8CA31 = entity.get_prop(
_lD5D485576A3C9DAF, 'm_hMyWeapons', i
)
if _lC483CC400CE8CA31 == nil then
goto continue
end
table.insert(_lA1751D8238566CFB, _lC483CC400CE8CA31)
::continue::
end
return _lA1751D8238566CFB
end
_l93A0F5D91FBDC005 _l885AD57970B0DF46.get_player_kd(player)
if player == nil then
return nil
end
local _l0EE77D618FD86A98 = entity.get_player_resource()
if _l0EE77D618FD86A98 == nil then
return nil
end
local _lBA80EF20F0474F9E = entity.get_prop(_l0EE77D618FD86A98, 'm_iKills', player)
local _lDB22C741A1BAAD23 = entity.get_prop(_l0EE77D618FD86A98, 'm_iDeaths', player)
if _lDB22C741A1BAAD23 > 0 then
return _lBA80EF20F0474F9E / _lDB22C741A1BAAD23
end
return _lBA80EF20F0474F9E
end
_l93A0F5D91FBDC005 _l885AD57970B0DF46.closest_ray_point(a, b, p, should_clamp)
local _lFA1691E18E57D3C0 = p - a
local _l13D12A7ACDA49D2E = b - a
local _l47B52939D0109EA8 = _l13D12A7ACDA49D2E.x * _l13D12A7ACDA49D2E.x + _l13D12A7ACDA49D2E.y * _l13D12A7ACDA49D2E.y
local _lD19C08FC006C5CC7 = _lFA1691E18E57D3C0.x * _l13D12A7ACDA49D2E.x + _lFA1691E18E57D3C0.y * _l13D12A7ACDA49D2E.y
local t = _lD19C08FC006C5CC7 / _l47B52939D0109EA8
if should_clamp then
if t <= 0.0 then
return a
end
if t >= 1.0 then
return b
end
end
return a + t * _l13D12A7ACDA49D2E
end
_l93A0F5D91FBDC005 _l885AD57970B0DF46.extrapolate(pos, vel, ticks)
return pos + vel * (ticks * globals.tickinterval())
end
_l93A0F5D91FBDC005 _l885AD57970B0DF46.random_int(min, max)
if min > max then
min, max = max, min
end
return client.random_int(min, max)
end
_l93A0F5D91FBDC005 _l885AD57970B0DF46.random_float(min, max)
if min > max then
min, max = max, min
end
return client.random_float(min, max)
end
_l93A0F5D91FBDC005 _l885AD57970B0DF46._l9DD8FD2A7818B67B(module_name, _lE3C59EDD252AE9F5, _lE8558CABD1E415C2)
local _lFAC98A43E27DB3D9 = client._l9DD8FD2A7818B67B(module_name, _lE3C59EDD252AE9F5)
if _lFAC98A43E27DB3D9 == nil then
return nil
end
if _lE8558CABD1E415C2 ~= nil then
local _lAF74CC77B7B14AFC = ffi._lE0A6FEE53F98CA59((_xd("39TdzpY=",188)), _lFAC98A43E27DB3D9)
_lAF74CC77B7B14AFC = _lAF74CC77B7B14AFC + _lE8558CABD1E415C2
return _lAF74CC77B7B14AFC
end
return _lFAC98A43E27DB3D9
end
end
local _l068D116FF4AC0C68 do
_l068D116FF4AC0C68 = { }
local _lC59B07F1E42B9112 = ffi.typeof [[
struct {
float realtime; // 0x0000
int framecount; // 0x0004
float absoluteframetime; // 0x0008
float absoluteframestarttimestddev; // 0x000C
float curtime; // 0x0010
float frametime; // 0x0014
int max_clients; // 0x0018
int tickcount; // 0x001C
float interval_per_tick; // 0x0020
float interpolation_amount; // 0x0024
int simTicksThisFrame; // 0x0028
int network_protocol; // 0x002C
void* pSaveData; // 0x0030
bool m_bClient; // 0x0031
bool m_bRemoteClient; // 0x0032
} ***
]]
local _lE6CA478734468DD8 = _l885AD57970B0DF46._l9DD8FD2A7818B67B(
'client.dll', (_xd("fkc3fkVFfkVFfkVFfkVFfjNDfj5EfjI2fjc2",6)), 0x1
)
if _lE6CA478734468DD8 == nil then
error (_xd("0erl5ujhpPDrpOLt6uCkx8Po6+bl6NLl9vfG5ffh",132))
end
_l068D116FF4AC0C68 = ffi._lE0A6FEE53F98CA59(_lC59B07F1E42B9112, _lE6CA478734468DD8)[0][0]
end
local _l01EAE8A0129CD1C0 do
_l01EAE8A0129CD1C0 = { }
local _l4A9433A87C83DAE5 = vtable_bind(
'localize.dll', 'Localize_001', -(-15), (_xd("LSowbBsbMCwtNyclKChubWwyKy0gbmhkJysqNzBkJywlNmRuJSo3LWhkMycsJTYbMGRuMSotJysgIWhkLSowZCYxIiIhNhs3LT4hbQ==",68))
)
_l93A0F5D91FBDC005 _l01EAE8A0129CD1C0.ansi_to_unicode(ansi, unicode, _lB3E26C06375AC204)
return _l4A9433A87C83DAE5(ansi, unicode, _lB3E26C06375AC204)
end
end
local _lD185CF680B42AB5D do
_lD185CF680B42AB5D = { }
local _lB5F1A70F7CD13C91 = vtable_bind('filesystem_stdio.dll', 'VFileSystem017', (16069 + 16058 - 16058), ffi.typeof [[
void(__thiscall*)(void*, const char *pPath, const char *pathID, int addType)
]])
local _lAAA68DF41056A0CD = vtable_bind('filesystem_stdio.dll', 'VFileSystem017', (94744 + 94732 - 94732), ffi.typeof [[
bool(__thiscall*)(void*, const char *pPath, const char *pathID)
]])
local _l0CBE125A3A1F6123 = vtable_bind('filesystem_stdio.dll', 'VFileSystem017', -(-40), ffi.typeof [[
bool(__thiscall*)(void*, char* pDirectory, int maxlen)
]])
local _l13D1DADBC11FD2C2 = vtable_bind('filesystem_stdio.dll', 'VFileSystem017', (87076 + 87044 - 87044), ffi.typeof [[
const char*(__thiscall*)(void*, const char *pWildCard, int *pHandle)
]])
local _l724F829D02CA72C8 = vtable_bind('filesystem_stdio.dll', 'VFileSystem017', (231 * 1) / 7, ffi.typeof [[
const char*(__thiscall*)(void*, int handle)
]])
local _lFB1040775509BD6E = vtable_bind('filesystem_stdio.dll', 'VFileSystem017', (9042 + 9008 - 9008), ffi.typeof [[
bool(__thiscall*)(void*, int handle)
]])
local _lA41B17BCB0976B95 = vtable_bind('filesystem_stdio.dll', 'VFileSystem017', (455 * 1) / 13, ffi.typeof [[
void(__thiscall*)(void*, int handle)
]])
local _lCB09FC70B4450994 = vtable_bind('filesystem_stdio.dll', 'VFileSystem017', (36 + (6967 - 6967)), ffi.typeof [[
const char*(__thiscall*)(void*, const char *pWildCard, const char *pathID, int *pHandle)
]])
_l93A0F5D91FBDC005 _lD185CF680B42AB5D.add_search_path(path, path_id, add_type)
_lB5F1A70F7CD13C91(path, path_id, add_type)
end
_l93A0F5D91FBDC005 _lD185CF680B42AB5D.remove_search_path(path, path_id)
return _lAAA68DF41056A0CD(path, path_id)
end
_l93A0F5D91FBDC005 _lD185CF680B42AB5D.current_directory(_l10882FB42ED493E0, maxlen)
return _l0CBE125A3A1F6123(_l10882FB42ED493E0, maxlen)
end
_l93A0F5D91FBDC005 _lD185CF680B42AB5D.find_first(wild_card, handle)
return _l13D1DADBC11FD2C2(wild_card, handle)
end
_l93A0F5D91FBDC005 _lD185CF680B42AB5D.find_next(handle)
return _l724F829D02CA72C8(handle)
end
_l93A0F5D91FBDC005 _lD185CF680B42AB5D.find_is_directory(handle)
return _lFB1040775509BD6E(handle)
end
_l93A0F5D91FBDC005 _lD185CF680B42AB5D.find_close(handle)
_lA41B17BCB0976B95(handle)
end
_l93A0F5D91FBDC005 _lD185CF680B42AB5D.find_first_ex(wild_card, path_id, handle)
return _lCB09FC70B4450994(wild_card, path_id, handle)
end
end
local _lFA66AFEB1F2B24C9 do
_lFA66AFEB1F2B24C9 = { }
local _l10F9CAD69703197F = ffi.new (_xd("MzQuAWsH",90))
local _l4F54FA0B980571F2 = ffi.new (_xd("ys3X+JL+",163))
local _l49635A431A8DA6B5 = vtable_bind('vguimatsurface.dll', 'VGUI_Surface031', -(-15), (_xd("/ufh7KDX1/zg4fvr6eTkoqGg/ufh7KKo/ODh+/j8+qSo4eb8qPqkqOHm/KjvpKjh5vyo6qSo4eb8qOmh",136)))
local _lA8A9D9BEDFC7E742 = vtable_bind('vguimatsurface.dll', 'VGUI_Surface031', -(-23), (_xd("hJ2bltqtrYaam4GRk56e2NvahJ2bltje0oecgZuVnJeW0puchtKUnZyGrZuW2w==",242)))
local _l55D3BF4F0D13260F = vtable_bind('vguimatsurface.dll', 'VGUI_Surface031', (250 * 1) / 10, (_xd("gJmfkt6pqYKen4WVl5qa3N/egJmfktza1p+YgtaE2tafmILWkdrWn5iC1pTa1p+YgtaX3w==",246)))
local _lFCC684CE278E9DB2 = vtable_bind('vguimatsurface.dll', 'VGUI_Surface031', (26 + (103 - 103)), (_xd("h56YldmuroWZmIKSkJ2d29jZh56Yldvd0ZifhdGJ3dGYn4XRiNg=",241)))
local _l661E1EB004AF63F6 = vtable_bind('vguimatsurface.dll', 'VGUI_Surface031', (28 * 1), (_xd("KTA2O3cAACs3Niw8PjMzdXZ3KTA2O3VzfzwwMSwrfyg8Nz4tACt/dSs6JytzfzYxK38yPiczOjFzfzYxK387LT4oACsmLzp2",95)))
local _lD7C3D1BFFDC19B0F = vtable_bind('vguimatsurface.dll', 'VGUI_Surface031', -(-74), (_xd("rqmz75iYs6+utKSmq6vt7u+xqK6j7evnsqm0rqCpoqPnrqmz56GoqbPu",199)))
local _lEAB32F4A08161D0D = vtable_bind('vguimatsurface.dll', 'VGUI_Surface031', (1343 * 1) / 17, (_xd("jJWTntKlpY6Sk4mZm5aW0NPSjJWTntDW2o+UiZOdlJ+e2pOUjtqclZSO1tqZlZSJjtqNmZKbiKWO2tCOn4KO1tqTlI7a3I2Tnp/W2pOUjtrcjpuWltM=",250)))
local _lA3E8658A6EB9CF20 = vtable_bind('vguimatsurface.dll', 'VGUI_Surface031', -(-123), (_xd("9O3r5qrd3fbq6/Hh4+7uqKuq9O3r5qiuouvs9qL6sq6i6+z2ovuyrqLr7Pai+rOuouvs9qL7s66i9+zx6+Xs5+ai6+z2ouPu8urjsq6i9+zx6+Xs5+ai6+z2ouPu8urjs66i4O3t7qLgyu3w6/jt7Pbj7qs=",130)))
_l93A0F5D91FBDC005 _lFA66AFEB1F2B24C9.text_tall(_l3B1BCF18E37D2A8C)
return _lD7C3D1BFFDC19B0F(_l3B1BCF18E37D2A8C)
end
_l93A0F5D91FBDC005 _lFA66AFEB1F2B24C9.measure_text(_l3B1BCF18E37D2A8C, _l9591A67D938F86B3)
local _l10882FB42ED493E0 = ffi.new (_xd("LjoxOCsGLQJraW1hBA==",89))
_l01EAE8A0129CD1C0.ansi_to_unicode(_l9591A67D938F86B3, _l10882FB42ED493E0, (2048 + (1433 - 1433)))
_lEAB32F4A08161D0D(_l3B1BCF18E37D2A8C, _l10882FB42ED493E0, _l10F9CAD69703197F, _l4F54FA0B980571F2)
return _l10F9CAD69703197F[0], _l4F54FA0B980571F2[0]
end
_l93A0F5D91FBDC005 _lFA66AFEB1F2B24C9._l9591A67D938F86B3(_l3B1BCF18E37D2A8C, x, y, r, g, b, a, _l9591A67D938F86B3)
local len = #_l9591A67D938F86B3
if len <= 0 then
return
end
local _l10882FB42ED493E0 = ffi.new (_xd("v6ugqbqXvJP6+PzwlQ==",200))
_l01EAE8A0129CD1C0.ansi_to_unicode(_l9591A67D938F86B3, _l10882FB42ED493E0, (2048 + (3252 - 3252)))
_lA8A9D9BEDFC7E742(_l3B1BCF18E37D2A8C)
_lFCC684CE278E9DB2(x, y)
_l55D3BF4F0D13260F(r, g, b, a)
_l661E1EB004AF63F6(_l10882FB42ED493E0, len, 0)
end
_l93A0F5D91FBDC005 _lFA66AFEB1F2B24C9._l874D7894D2C9FCDB(x, y, w, h, r0, g0, b0, a0, _lC81018446DEC5DAC, g1, b1, a1, horizontal)
_l49635A431A8DA6B5(r0, g0, b0, a0)
_lA3E8658A6EB9CF20(x, y, x + w, y + h, (255 * 1), 0, horizontal)
_l49635A431A8DA6B5(_lC81018446DEC5DAC, g1, b1, a1)
_lA3E8658A6EB9CF20(x, y, x + w, y + h, 0, (255 + (7735 - 7735)), horizontal)
end
end
_l422CA01953F92F19((_xd("4ebz9feyoLK/sv795bL+9+T3/rK68f3+/eC95+b7/uG99f798PP+5PPg4b304b3h5+D08/H3uw==",146)))
local _lE4C0F29811DB3FE5 do
_lE4C0F29811DB3FE5 = { }
_lE4C0F29811DB3FE5._lF25FDA0049197B89 = {
_lF8E34D883D796C10 = ui.reference(
'Rage', 'Weapon type', 'Weapon type'
),
aimbot = {
_lF8E1754D21D14193 = {
ui.reference('Rage', 'Aimbot', 'Enabled')
},
double_tap = {
ui.reference('Rage', 'Aimbot', 'Double tap')
},
force_body_aim = ui.reference(
'Rage', 'Aimbot', 'Force body aim'
),
minimum_hit_chance = ui.reference(
'Rage', 'Aimbot', 'Minimum hit chance'
),
minimum_damage = ui.reference(
'Rage', 'Aimbot', 'Minimum damage'
),
minimum_damage_override = {
ui.reference('Rage', 'Aimbot', 'Minimum damage override')
}
},
other = {
quick_peek_assist = {
ui.reference('Rage', 'Other', 'Quick peek assist')
},
duck_peek_assist = ui.reference(
'Rage', 'Other', 'Duck peek assist'
)
}
}
_lE4C0F29811DB3FE5.antiaimbot = {
_l54FCA590490245EE = {
_lF8E1754D21D14193 = ui.reference(
'AA', 'Anti-aimbot angles', 'Enabled'
),
_l46AA6D7987AE7B3A = {
ui.reference('AA', 'Anti-aimbot angles', 'Pitch')
},
yaw_base = ui.reference(
'AA', 'Anti-aimbot angles', 'Yaw base'
),
_l6F49EB461422B562 = {
ui.reference('AA', 'Anti-aimbot angles', 'Yaw')
},
_l16B2581F24D0AB49 = {
ui.reference('AA', 'Anti-aimbot angles', 'Yaw jitter')
},
_l853F969D9C31B6DE = {
ui.reference('AA', 'Anti-aimbot angles', 'Body yaw')
},
_l647607ED8A0477C6 = ui.reference(
'AA', 'Anti-aimbot angles', 'Freestanding body yaw'
),
_lA550371056A1793A = ui.reference(
'AA', 'Anti-aimbot angles', 'Edge yaw'
),
_l8C975ACFD6C1C204 = {
ui.reference('AA', 'Anti-aimbot angles', 'Freestanding')
},
_lB6F5466E95879823 = ui.reference(
'AA', 'Anti-aimbot angles', 'Roll'
)
},
fake_lag = {
_lF8E1754D21D14193 = {
ui.reference('AA', 'Fake lag', 'Enabled')
},
amount = ui.reference(
'AA', 'Fake lag', 'Amount'
),
variance = ui.reference(
'AA', 'Fake lag', 'Variance'
),
limit = ui.reference(
'AA', 'Fake lag', 'Limit'
),
},
other = {
slow_motion = {
ui.reference('AA', 'Other', 'Slow motion')
},
on_shot_antiaim = {
ui.reference('AA', 'Other', 'On shot anti-aim')
},
leg_movement = ui.reference(
'AA', 'Other', 'Leg movement'
),
fake_peek = {
ui.reference('AA', 'Other', 'Fake peek')
}
}
}
_lE4C0F29811DB3FE5.visuals = {
effects = {
remove_scope_overlay = ui.reference(
'Visuals', 'Effects', 'Remove scope overlay'
)
}
}
_lE4C0F29811DB3FE5.misc = {
_l8C72F381EE48E2C7 = {
draw_console_output = ui.reference(
'Misc', 'Miscellaneous', 'Draw console output'
),
quick_switch = ui.reference(
'Misc', 'Miscellaneous', 'Quick Switch'
)
},
settings = {
menu_color = ui.reference(
'Misc', 'Settings', 'Menu color'
),
dpi_scale = ui.reference(
'Misc', 'Settings', 'DPI scale'
)
}
}
_l93A0F5D91FBDC005 _lE4C0F29811DB3FE5.get_dpi()
local _l77797E4967463B46 = string._lFAC98A43E27DB3D9(
ui.get(_lE4C0F29811DB3FE5.misc.settings.dpi_scale), (_xd("g47PgIKOjg==",171))
)
if not _l77797E4967463B46 then
return 0
end
return _l77797E4967463B46 * 0.01
end
_l93A0F5D91FBDC005 _lE4C0F29811DB3FE5._l2E4B112FB8FEDF61(to_hex)
if to_hex then
return _l885AD57970B0DF46.to_hex(ui.get(_lE4C0F29811DB3FE5.misc.settings.menu_color))
end
return ui.get(_lE4C0F29811DB3FE5.misc.settings.menu_color)
end
_l93A0F5D91FBDC005 _lE4C0F29811DB3FE5.get_override_damage()
return ui.get(_lE4C0F29811DB3FE5._lF25FDA0049197B89.aimbot.minimum_damage_override[(91491 + 91488 - 91488)])
end
_l93A0F5D91FBDC005 _lE4C0F29811DB3FE5.get_minimum_damage()
return ui.get(_lE4C0F29811DB3FE5._lF25FDA0049197B89.aimbot.minimum_damage)
end
_l93A0F5D91FBDC005 _lE4C0F29811DB3FE5._l9D503C222D9EE9BC()
return ui.get(_lE4C0F29811DB3FE5.antiaimbot._l54FCA590490245EE._l8C975ACFD6C1C204[1])
and ui.get(_lE4C0F29811DB3FE5.antiaimbot._l54FCA590490245EE._l8C975ACFD6C1C204[-(-2)])
end
_l93A0F5D91FBDC005 _lE4C0F29811DB3FE5.is_slow_motion()
return ui.get(_lE4C0F29811DB3FE5.antiaimbot.other.slow_motion[1])
and ui.get(_lE4C0F29811DB3FE5.antiaimbot.other.slow_motion[-(-2)])
end
if (4303*7 - 4303*6 == 4303) then
  local _v2834FDB5 = math.sqrt(529786)
  local _v4BA5FF6D = string.len(tostring(_v2834FDB5))
  if _v4BA5FF6D > 4 then _v4BA5FF6D = _v4BA5FF6D + 1 end
end
_l93A0F5D91FBDC005 _lE4C0F29811DB3FE5._l24E54F96B8A0941E()
return ui.get(_lE4C0F29811DB3FE5._lF25FDA0049197B89.aimbot.double_tap[1])
and ui.get(_lE4C0F29811DB3FE5._lF25FDA0049197B89.aimbot.double_tap[(20 * 1) / 10])
end
_l93A0F5D91FBDC005 _lE4C0F29811DB3FE5.is_override_minimum_damage()
return ui.get(_lE4C0F29811DB3FE5._lF25FDA0049197B89.aimbot.minimum_damage_override[1])
and ui.get(_lE4C0F29811DB3FE5._lF25FDA0049197B89.aimbot.minimum_damage_override[(5997 + 5995 - 5995)])
end
_l93A0F5D91FBDC005 _lE4C0F29811DB3FE5._l4EBAB0E6718B016B()
return ui.get(_lE4C0F29811DB3FE5.antiaimbot.other.on_shot_antiaim[1])
and ui.get(_lE4C0F29811DB3FE5.antiaimbot.other.on_shot_antiaim[(76426 + 76424 - 76424)])
end
_l93A0F5D91FBDC005 _lE4C0F29811DB3FE5.is_duck_peek_assist()
return ui.get(_lE4C0F29811DB3FE5._lF25FDA0049197B89.other.duck_peek_assist)
end
_l93A0F5D91FBDC005 _lE4C0F29811DB3FE5.is_quick_peek_assist()
return ui.get(_lE4C0F29811DB3FE5._lF25FDA0049197B89.other.quick_peek_assist[1])
and ui.get(_lE4C0F29811DB3FE5._lF25FDA0049197B89.other.quick_peek_assist[(17764 + 17762 - 17762)])
end
end
local _lCA2482591A9D5B76 do
_lCA2482591A9D5B76 = { }
local _l93A0F5D91FBDC005 _lF667154D37C32EF9(list, _l861DF5F3FC680167)
for i = 1, #list do
if _l861DF5F3FC680167 == list[i] then
return i
end
end
return nil
end
local _l8A473B5CEEE8B92A = { } do
_l8A473B5CEEE8B92A._l6BC954908A843096 = _l8A473B5CEEE8B92A
_l93A0F5D91FBDC005 _l8A473B5CEEE8B92A:new()
return setmetatable({
list = { },
_l721ED02EF23C8EA5 = 0
}, self)
end
_l93A0F5D91FBDC005 _l8A473B5CEEE8B92A:__len()
return self._l721ED02EF23C8EA5
end
_l93A0F5D91FBDC005 _l8A473B5CEEE8B92A:set(_lF49235C6F9B029A3)
if not _lF667154D37C32EF9(self.list, _lF49235C6F9B029A3) then
self._l721ED02EF23C8EA5 = self._l721ED02EF23C8EA5 + 1
table.insert(self.list, _lF49235C6F9B029A3)
end
return self
end
_l93A0F5D91FBDC005 _l8A473B5CEEE8B92A:unset(_lF49235C6F9B029A3)
local _lB90694C605679381 = _lF667154D37C32EF9(self.list, _lF49235C6F9B029A3)
if _lB90694C605679381 ~= nil then
self._l721ED02EF23C8EA5 = self._l721ED02EF23C8EA5 - 1
table.remove(self.list, _lB90694C605679381)
end
return self
end
_l93A0F5D91FBDC005 _l8A473B5CEEE8B92A:fire(...)
local list = self.list
for i = 1, #list do
list[i](...)
end
return self
end
end
local _l90463810E01E4881 = { } do
local _l93A0F5D91FBDC005 _l6BC954908A843096(list, k)
local _l861DF5F3FC680167 = rawget(list, k)
if _l861DF5F3FC680167 == nil then
_l861DF5F3FC680167 = _l8A473B5CEEE8B92A:new()
rawset(list, k, _l861DF5F3FC680167)
end
return _l861DF5F3FC680167
end
_l93A0F5D91FBDC005 _l90463810E01E4881:new()
return setmetatable({ }, {
_l6BC954908A843096 = _l6BC954908A843096
})
end
end
_l93A0F5D91FBDC005 _lCA2482591A9D5B76:new()
return _l90463810E01E4881:new()
end
end
local _l54CCF31CFE02ABC4 do
_l54CCF31CFE02ABC4 = { }
local _l82446BB7241EC45E = { }
_l93A0F5D91FBDC005 _l54CCF31CFE02ABC4.set(_l777D8FF3F76AC3BE, _lF49235C6F9B029A3, force_call)
if _l82446BB7241EC45E[_l777D8FF3F76AC3BE] == nil then
local list = { }
ui.set_callback(_l777D8FF3F76AC3BE, _l93A0F5D91FBDC005()
for i = 1, #list do
list[i](_l777D8FF3F76AC3BE)
end
end)
_l82446BB7241EC45E[_l777D8FF3F76AC3BE] = list
end
local _lB90694C605679381 = _l0C77A02632DEE29D(_l82446BB7241EC45E[_l777D8FF3F76AC3BE])
if _lB90694C605679381 == nil then
table.insert(_l82446BB7241EC45E[_l777D8FF3F76AC3BE], _lF49235C6F9B029A3)
end
if force_call then
_lF49235C6F9B029A3(_l777D8FF3F76AC3BE)
end
return _l777D8FF3F76AC3BE
end
_l93A0F5D91FBDC005 _l54CCF31CFE02ABC4.unset(_l777D8FF3F76AC3BE, _lF49235C6F9B029A3)
local list = _l82446BB7241EC45E[_l777D8FF3F76AC3BE]
if list == nil then
return
end
local _lB90694C605679381 = _l0C77A02632DEE29D(list, _lF49235C6F9B029A3)
if _lB90694C605679381 ~= nil then
table.remove(list, _lB90694C605679381)
end
return _l777D8FF3F76AC3BE
end
end
local _lF25FDA0049197B89 do
_lF25FDA0049197B89 = { }
local _l47F51A945762B259 = { }
local _l7CD50AB7E560EF38 = ui.reference(
'Rage', 'Weapon type', 'Weapon type'
)
local _l6FE116C57285F52F = {
[0] = 'Always on',
[1] = 'On hotkey',
[(2 * 1)] = 'Toggle',
[(77915 + 77912 - 77912)] = 'Off hotkey'
}
local _l93A0F5D91FBDC005 _lB86FED29CC108459(_l777D8FF3F76AC3BE)
local type = ui.type(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = { ui.get(_l777D8FF3F76AC3BE) }
if type == (_xd("DAsQDwEd",100)) then
local _lB17914F567A7940B = _l6FE116C57285F52F[_l861DF5F3FC680167[(2 * 1)]]
local _l20D1C8182B857782 = _l861DF5F3FC680167[(3 + (2699 - 2699))] or 0
return { _lB17914F567A7940B, _l20D1C8182B857782 }
end
return _l861DF5F3FC680167
end
_l93A0F5D91FBDC005 _lF25FDA0049197B89.set(_l777D8FF3F76AC3BE, ...)
local _lF8E34D883D796C10 = ui.get(_l7CD50AB7E560EF38)
if _l47F51A945762B259[_l777D8FF3F76AC3BE] == nil then
_l47F51A945762B259[_l777D8FF3F76AC3BE] = { }
end
local _l5E432A44CEEEFD31 = _l47F51A945762B259[_l777D8FF3F76AC3BE]
if _l5E432A44CEEEFD31[_lF8E34D883D796C10] == nil then
_l5E432A44CEEEFD31[_lF8E34D883D796C10] = {
type = _lF8E34D883D796C10,
_l861DF5F3FC680167 = _lB86FED29CC108459(_l777D8FF3F76AC3BE)
}
end
ui.set(_l777D8FF3F76AC3BE, ...)
end
_l93A0F5D91FBDC005 _lF25FDA0049197B89.unset(_l777D8FF3F76AC3BE)
local _l5E432A44CEEEFD31 = _l47F51A945762B259[_l777D8FF3F76AC3BE]
if _l5E432A44CEEEFD31 == nil then
return
end
local _lF8E34D883D796C10 = ui.get(_l7CD50AB7E560EF38)
for k, v in pairs(_l5E432A44CEEEFD31) do
ui.set(_l7CD50AB7E560EF38, v.type)
ui.set(_l777D8FF3F76AC3BE, unpack(v._l861DF5F3FC680167))
_l5E432A44CEEEFD31[k] = nil
end
ui.set(_l7CD50AB7E560EF38, _lF8E34D883D796C10)
_l47F51A945762B259[_l777D8FF3F76AC3BE] = nil
end
end
local _l002C9C644F32C5C8 do
_l002C9C644F32C5C8 = { }
local _l47F51A945762B259 = { }
local _l6FE116C57285F52F = {
[0] = 'Always on',
[1] = 'On hotkey',
[(28 * 1) / 14] = 'Toggle',
[-(-3)] = 'Off hotkey'
}
local _l93A0F5D91FBDC005 _lB86FED29CC108459(_l777D8FF3F76AC3BE)
local type = ui.type(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = { ui.get(_l777D8FF3F76AC3BE) }
if type == (_xd("bWpxbmB8",5)) then
local _lB17914F567A7940B = _l6FE116C57285F52F[_l861DF5F3FC680167[(13554 + 13552 - 13552)]]
local _l20D1C8182B857782 = _l861DF5F3FC680167[(3 + (8920 - 8920))] or 0
return { _lB17914F567A7940B, _l20D1C8182B857782 }
end
return _l861DF5F3FC680167
end
_l93A0F5D91FBDC005 _l002C9C644F32C5C8.get(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l47F51A945762B259[_l777D8FF3F76AC3BE]
if _l861DF5F3FC680167 == nil then
return nil
end
return unpack(_l861DF5F3FC680167)
end
_l93A0F5D91FBDC005 _l002C9C644F32C5C8.set(_l777D8FF3F76AC3BE, ...)
if _l47F51A945762B259[_l777D8FF3F76AC3BE] == nil then
_l47F51A945762B259[_l777D8FF3F76AC3BE] = _lB86FED29CC108459(_l777D8FF3F76AC3BE)
end
ui.set(_l777D8FF3F76AC3BE, ...)
end
_l93A0F5D91FBDC005 _l002C9C644F32C5C8.unset(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l47F51A945762B259[_l777D8FF3F76AC3BE]
if _l861DF5F3FC680167 == nil then
return
end
ui.set(_l777D8FF3F76AC3BE, unpack(_l861DF5F3FC680167))
_l47F51A945762B259[_l777D8FF3F76AC3BE] = nil
end
end
local _lD71287999D1F9CFB do
_lD71287999D1F9CFB = { }
local SCRIPT_NAME = _lB6CD131F5793FF2D._lDB160C0F87126763:lower()
local SOUND_SUCCESS = (_xd("ydXg3tnZzN/Q2d3Oksvdyg==",188))
local SOUND_FAILURE = (_xd("UkVTT1VSQ0V8V0FSTklORw5XQVY=",32))
local play = cvar.play
local _l93A0F5D91FBDC005 _l1F3E51D8FAB16F3C(r, g, b)
client.color_log(r, g, b, '[', SCRIPT_NAME, (_xd("AH1t",93)))
end
_l93A0F5D91FBDC005 _lD71287999D1F9CFB.log(_lA2D6A6576C59B9BB)
_l1F3E51D8FAB16F3C((28292 + 28052 - 28052), (240 * 1), (4080 * 1) / 17)
client.color_log((255 + (8173 - 8173)), -(-255), (4080 * 1) / 16, _lA2D6A6576C59B9BB)
end
_l93A0F5D91FBDC005 _lD71287999D1F9CFB._l92B471B55191BA77(_lA2D6A6576C59B9BB)
_l1F3E51D8FAB16F3C(_lE4C0F29811DB3FE5._l2E4B112FB8FEDF61())
client.color_log((97242 + 96987 - 96987), (4335 * 1) / 17, (4335 * 1) / 17, _lA2D6A6576C59B9BB)
play:invoke_callback(SOUND_SUCCESS)
end
_l93A0F5D91FBDC005 _lD71287999D1F9CFB.error(_lA2D6A6576C59B9BB)
_l1F3E51D8FAB16F3C((250 + (7291 - 7291)), (50 * 1), (58818 + 58743 - 58743))
client.color_log((255 * 1), -(-255), (510 * 1) / 2, _lA2D6A6576C59B9BB)
play:invoke_callback(SOUND_FAILURE)
end
end
local _lCDB391B6B402334C do
_lCDB391B6B402334C = { }
local BASE64_KEY = (_xd("c0BHU3J5QmQEf0ZZSXBLdnpbd1ZIRXhlAV5pXURDVFp+VWIJa1hhZ1B0X2MGAwAIYAdcfAJ1V31mBWhBUnsaHgw=",49))
local PATH = '.'
local FILE = PATH .. '\\flux_nightly.dat'
local _l1A94719D8193EF14 = { }
local _l93A0F5D91FBDC005 _l7C20711D5157E9AC()
return readfile(FILE)
end
local _l93A0F5D91FBDC005 _l3ED1952548253745(str)
writefile(FILE, str)
end
local _l93A0F5D91FBDC005 _lA559725F8A86A5CD(_l5E432A44CEEEFD31)
local ok, _lE5AB91D551F383E0 = pcall(
json.stringify, _l5E432A44CEEEFD31
)
if not ok then
return false, _lE5AB91D551F383E0
end
ok, _lE5AB91D551F383E0 = pcall(
base64.encode, _lE5AB91D551F383E0, BASE64_KEY
)
if not ok then
return false, _lE5AB91D551F383E0
end
return true, _lE5AB91D551F383E0
end
local _l93A0F5D91FBDC005 _l6586AEC35FD572AD(_l5E432A44CEEEFD31)
local ok, _lE5AB91D551F383E0 = pcall(
base64.decode, _l5E432A44CEEEFD31, BASE64_KEY
)
if not ok then
return false, _lE5AB91D551F383E0
end
ok, _lE5AB91D551F383E0 = pcall(
json.parse, _lE5AB91D551F383E0
)
if not ok then
return false, _lE5AB91D551F383E0
end
return true, _lE5AB91D551F383E0
end
local _l93A0F5D91FBDC005 _l0E420A0F11A80A13(_l5E432A44CEEEFD31)
local ok, _lE5AB91D551F383E0 = _lA559725F8A86A5CD(_l5E432A44CEEEFD31)
if not ok then
_lD71287999D1F9CFB.error(
(_xd("XWZpamRtKHxnKG1ma2dsbShsaXxp",8))
)
return false
end
_l3ED1952548253745(_lE5AB91D551F383E0)
return true
end
local _l93A0F5D91FBDC005 _lD3F8F0FBCBDB5ECD()
local _lDA5FF1763D2456B6 = _l7C20711D5157E9AC()
if _lDA5FF1763D2456B6 == nil then
if not _l0E420A0F11A80A13 { } then
_lD71287999D1F9CFB.log (_xd("BD8wMz00cSU+cTIjNDAlNHE1Mw==",81))
end
return { }
end
local ok, _lE5AB91D551F383E0 = _l6586AEC35FD572AD(_lDA5FF1763D2456B6)
if not ok then
_lD71287999D1F9CFB.error (_xd("GCMsLyEobTkibSkoLiIpKG0pLw==",77))
_lD71287999D1F9CFB.log (_xd("tJKZiY6HwJSPwIaMlZOIwISC",224))
if not _l0E420A0F11A80A13 { } then
_lD71287999D1F9CFB.error (_xd("alFeXVNaH0tQH1lTSkxXH1td",63))
end
return { }
end
return _lE5AB91D551F383E0
end
local _l117198DE2330D7E0 = { } do
_l93A0F5D91FBDC005 _l117198DE2330D7E0:_l6BC954908A843096(key)
return _l1A94719D8193EF14[key]
end
_l93A0F5D91FBDC005 _l117198DE2330D7E0:__newindex(key, _l861DF5F3FC680167)
_l1A94719D8193EF14[key] = _l861DF5F3FC680167
_l0E420A0F11A80A13(_l1A94719D8193EF14)
end
end
_l1A94719D8193EF14 = _lD3F8F0FBCBDB5ECD()
setmetatable(_lCDB391B6B402334C, _l117198DE2330D7E0)
end
_l422CA01953F92F19((_xd("VlFEQkAFFgUIBVZKQ1FSRFdABVdAQ0BXQEtGQFY=",37)))
local _lAE2482B62AD01298 do
_lAE2482B62AD01298 = { }
local BASE64_KEY = (_xd("dn5DLVl1c15nYWAhbFBuJyJcYngjIHpXLFF7bSRTXUFCTCZaWEVxZHd/UnJmVk1bfEZOX1VjeUdlfXBEJUA/Oyk=",20))
local HOTKEY_MODE = {
[0] = 'Always on',
[1] = 'On hotkey',
[-(-2)] = 'Toggle',
[(3 + (9056 - 9056))] = 'Off hotkey'
}
local _l461D89708CD35001 = { }
local _l47F51A945762B259 = { }
local _l08361CECC5B7E941 = { }
local _l93A0F5D91FBDC005 _l43FB5B1550FD9383(_l777D8FF3F76AC3BE)
if _l777D8FF3F76AC3BE.type == (_xd("Sk1WSUdb",34)) then
local _lDDA2D6AE693381B0, _lB17914F567A7940B, key = _l777D8FF3F76AC3BE:get()
return { HOTKEY_MODE[_lB17914F567A7940B], key or 0 }
end
return { _l777D8FF3F76AC3BE:get() }
end
local _l93A0F5D91FBDC005 _l56C782A5FD7E007A(arr)
local list = { }
if arr ~= nil then
for i = 1, #arr do
list[arr[i]] = i
end
end
return list
end
_l93A0F5D91FBDC005 _lAE2482B62AD01298.push(tab, _lDB160C0F87126763, _l777D8FF3F76AC3BE)
if _l47F51A945762B259[tab] == nil then
_l47F51A945762B259[tab] = { }
end
local _l5E432A44CEEEFD31 = {
tab = tab,
_lDB160C0F87126763 = _lDB160C0F87126763,
_l777D8FF3F76AC3BE = _l777D8FF3F76AC3BE
}
if _l47F51A945762B259[tab][_lDB160C0F87126763] ~= nil then
client.error_log(string.format(
(_xd("PTEwODc5fj0xMjI3LTcxMGR+BX57LXJ+ey1+Aw==",94)),
tab, _lDB160C0F87126763
))
end
_l47F51A945762B259[tab][_lDB160C0F87126763] = _l777D8FF3F76AC3BE
table.insert(_l461D89708CD35001, _l5E432A44CEEEFD31)
return _l777D8FF3F76AC3BE
end
_l93A0F5D91FBDC005 _lAE2482B62AD01298.on_export(_lF49235C6F9B029A3)
table.insert(_l08361CECC5B7E941, _lF49235C6F9B029A3)
end
_l93A0F5D91FBDC005 _lAE2482B62AD01298.encode(_l5E432A44CEEEFD31)
local ok, _lE5AB91D551F383E0 = pcall(
json.stringify, _l5E432A44CEEEFD31
)
if not ok then
return false, _lE5AB91D551F383E0
end
ok, _lE5AB91D551F383E0 = pcall(
base64.encode,
_lE5AB91D551F383E0,
BASE64_KEY
)
if not ok then
return false, _lE5AB91D551F383E0
end
return true, string.format(
'[flux] %s_', _lE5AB91D551F383E0
)
end
_l93A0F5D91FBDC005 _lAE2482B62AD01298.decode(str)
local _l5E432A44CEEEFD31 = str:_lFAC98A43E27DB3D9((_xd("8Y+yuKGs8Yn0/Pr5/Ys=",212)))
or str:_lFAC98A43E27DB3D9((_xd("4J6jqbC94Jjl7evo7Jo=",197)))
if _l5E432A44CEEEFD31 == nil then
return false, (_xd("4MffyMXAzYnKxsfPwM4=",169))
end
local ok, _lE5AB91D551F383E0 = pcall(
base64.decode,
_l5E432A44CEEEFD31,
BASE64_KEY
)
if not ok then
return false, _lE5AB91D551F383E0
end
ok, _lE5AB91D551F383E0 = pcall(
json.parse, _lE5AB91D551F383E0
)
if not ok then
return false, _lE5AB91D551F383E0
end
return true, _lE5AB91D551F383E0
end
_l93A0F5D91FBDC005 _lAE2482B62AD01298.import(_l5E432A44CEEEFD31, categories)
if _l5E432A44CEEEFD31 == nil then
return false, (_xd("HhITGxQaXRQOXRgQDQkE",125))
end
local _lF03F53B326E54E11 = _l56C782A5FD7E007A(categories)
for k, v in pairs(_l5E432A44CEEEFD31) do
if categories ~= nil and _lF03F53B326E54E11[k] == nil then
goto continue
end
local _lD52EDAAF02723665 = _l47F51A945762B259[k]
if _lD52EDAAF02723665 == nil then
goto continue
end
for m, n in pairs(v) do
local _l777D8FF3F76AC3BE = _lD52EDAAF02723665[m]
if _l777D8FF3F76AC3BE ~= nil then
pcall(_l777D8FF3F76AC3BE.set, _l777D8FF3F76AC3BE, unpack(n))
end
end
::continue::
end
return true, nil
end
_l93A0F5D91FBDC005 _lAE2482B62AD01298.export(categories)
local list = { }
local _lF03F53B326E54E11 = _l56C782A5FD7E007A(categories)
for k, v in pairs(_l47F51A945762B259) do
if categories ~= nil and _lF03F53B326E54E11[k] == nil then
goto continue
end
local _l14F641CF3F2B2562 = { }
for m, n in pairs(v) do
_l14F641CF3F2B2562[m] = _l43FB5B1550FD9383(n)
end
list[k] = _l14F641CF3F2B2562
::continue::
end
for i = 1, #_l08361CECC5B7E941 do
_l08361CECC5B7E941[i](list, categories)
end
return list
end
end
local _lC32E23DC8F791E4A do
_lC32E23DC8F791E4A = { }
local _l4925A5EE3D9A5652 = _lCA2482591A9D5B76:new()
local _l92DF33D174B9C370 = { } do
_l92DF33D174B9C370._l6BC954908A843096 = _l92DF33D174B9C370
local _l93A0F5D91FBDC005 _lA77913FB0C8DBD16(ok, ...)
if not ok then
return nil
end
return ...
end
local _l93A0F5D91FBDC005 _l255B69939748AA8D(ref)
return { _lA77913FB0C8DBD16(pcall(ui.get, ref)) }
end
local _l93A0F5D91FBDC005 _l56C782A5FD7E007A(arr)
local list = { }
for i = 1, #arr do
list[arr[i]] = i
end
return list
end
local _l93A0F5D91FBDC005 _lCA873FB6CAF6D4DC(_l777D8FF3F76AC3BE, initial)
local _l861DF5F3FC680167 = _l255B69939748AA8D(_l777D8FF3F76AC3BE.ref)
_l777D8FF3F76AC3BE._l861DF5F3FC680167 = _l861DF5F3FC680167
if initial then
_l777D8FF3F76AC3BE._l2879824AC7FE4B3D = _l861DF5F3FC680167
end
if _l777D8FF3F76AC3BE.type == (_xd("GgIbAx4EEhsSFAM=",119)) then
_l777D8FF3F76AC3BE.key_values = _l56C782A5FD7E007A(unpack(_l861DF5F3FC680167))
end
end
_l93A0F5D91FBDC005 _l92DF33D174B9C370:new(ref)
return setmetatable({
ref = ref,
type = nil,
list = { },
_l861DF5F3FC680167 = { },
_l2879824AC7FE4B3D = { },
key_values = { },
_l9639F8C97A0AA4C7 = { }
}, self)
end
_l93A0F5D91FBDC005 _l92DF33D174B9C370:init(...)
local _l93A0F5D91FBDC005 _lF49235C6F9B029A3()
_lCA873FB6CAF6D4DC(self, false)
self:fire_events()
_l4925A5EE3D9A5652.item_changed:fire(self)
end
self.type = ui.type(self.ref)
local _l7D7E8CA976D90143 = (
self.type ~= (_xd("BwoJDgc=",107)) and
self.type ~= (_xd("eWJnYmN7Yg==",12))
)
if _l7D7E8CA976D90143 then
_lCA873FB6CAF6D4DC(self, true)
pcall(ui.set_callback, self.ref, _lF49235C6F9B029A3)
end
if self.type == (_xd("qrKrs660oquipLM=",199)) or self.type == (_xd("U1ZMSw==",63)) then
self.list = select(-(-4), ...)
end
if self.type == (_xd("6v38/Ofm",136)) then
local fn = select(-(-4), ...)
if fn ~= nil then
self:set_callback(fn)
end
end
_l4925A5EE3D9A5652.item_init:fire(self)
end
_l93A0F5D91FBDC005 _l92DF33D174B9C370:get(key)
local _l65E41D043D8D97CC = (
self.type ~= (_xd("yc7VysTY",161)) and
self.type ~= (_xd("+uv2+uzh9g==",142)) and
self.type ~= (_xd("ChEUERAIEQ==",127))
)
if not _l65E41D043D8D97CC then
return ui.get(self.ref)
end
if key ~= nil then
return self.key_values[key] ~= nil
end
return unpack(self._l861DF5F3FC680167)
end
_l93A0F5D91FBDC005 _l92DF33D174B9C370:set(...)
ui.set(self.ref, ...)
_lCA873FB6CAF6D4DC(self, false)
end
_l93A0F5D91FBDC005 _l92DF33D174B9C370:update(...)
ui.update(self.ref, ...)
end
_l93A0F5D91FBDC005 _l92DF33D174B9C370:reset()
pcall(ui.set, self.ref, unpack(self._l2879824AC7FE4B3D))
end
_l93A0F5D91FBDC005 _l92DF33D174B9C370:set_enabled(_l861DF5F3FC680167)
return ui.set_enabled(self.ref, _l861DF5F3FC680167)
end
_l93A0F5D91FBDC005 _l92DF33D174B9C370:set_visible(_l861DF5F3FC680167)
return ui.set_visible(self.ref, _l861DF5F3FC680167)
end
_l93A0F5D91FBDC005 _l92DF33D174B9C370:set_callback(_lF49235C6F9B029A3, force_call)
local _lB90694C605679381 = _l0C77A02632DEE29D(self._l9639F8C97A0AA4C7, _lF49235C6F9B029A3)
if _lB90694C605679381 == nil then
table.insert(self._l9639F8C97A0AA4C7, _lF49235C6F9B029A3)
end
if force_call then
_lF49235C6F9B029A3(self)
end
return self
end
_l93A0F5D91FBDC005 _l92DF33D174B9C370:unset_callback(_lF49235C6F9B029A3)
local _lB90694C605679381 = _l0C77A02632DEE29D(self._l9639F8C97A0AA4C7, _lF49235C6F9B029A3)
if _lB90694C605679381 ~= nil then
table.remove(self._l9639F8C97A0AA4C7, _lB90694C605679381)
end
return self
end
_l93A0F5D91FBDC005 _l92DF33D174B9C370:fire_events()
local list = self._l9639F8C97A0AA4C7
for i = 1, #list do
list[i](self)
end
end
end
_l93A0F5D91FBDC005 _lC32E23DC8F791E4A.new(fn, ...)
local _l5A322ADC84DED51A, argc = { }, select('#', ...)
for i = 1, argc do
_l5A322ADC84DED51A[i] = select(i, ...)
end
if fn == ui.new_button and type(_l5A322ADC84DED51A[-(-4)]) ~= (_xd("obKppLOuqKk=",199)) then
_l5A322ADC84DED51A[(81970 + 81966 - 81966)] = DUMMY
end
local ref = fn(unpack(_l5A322ADC84DED51A, 1, argc))
local _l777D8FF3F76AC3BE = _l92DF33D174B9C370:new(ref) do
_l777D8FF3F76AC3BE:init(...)
end
return _l777D8FF3F76AC3BE
end
_l93A0F5D91FBDC005 _lC32E23DC8F791E4A.get_event_bus()
return _l4925A5EE3D9A5652
end
end
local _l54F19F7B5F58F216 do
_l54F19F7B5F58F216 = { }
local _l47F51A945762B259 = { }
local _l461D89708CD35001 = { }
local _lCD746A6C767959E1 = false
local _l521E4EF19D5DDBC1 = 0
local _l60C21F448C199851 = false
local _l822AA20115846770 = nil
local _l532E00EF8F9F2A49 = _lCA2482591A9D5B76:new()
_l93A0F5D91FBDC005 _l54F19F7B5F58F216.get_event_bus()
return _l532E00EF8F9F2A49
end
_l93A0F5D91FBDC005 _l54F19F7B5F58F216.set(_l777D8FF3F76AC3BE, _l861DF5F3FC680167)
if _l777D8FF3F76AC3BE == nil or _l777D8FF3F76AC3BE.ref == nil then
return
end
_l47F51A945762B259[_l777D8FF3F76AC3BE.ref] = _l861DF5F3FC680167
end
_l93A0F5D91FBDC005 _l54F19F7B5F58F216.force_update()
for i = 1, #_l461D89708CD35001 do
local _l777D8FF3F76AC3BE = _l461D89708CD35001[i]
if _l777D8FF3F76AC3BE == nil then
goto continue
end
local ref = _l777D8FF3F76AC3BE.ref
if ref == nil then
goto continue
end
local _l861DF5F3FC680167 = _l47F51A945762B259[ref]
if _l861DF5F3FC680167 == nil then
goto continue
end
_l777D8FF3F76AC3BE:set_visible(_l861DF5F3FC680167)
_l47F51A945762B259[ref] = false
::continue::
end
end
_l93A0F5D91FBDC005 _l54F19F7B5F58F216.lock_updates()
_l521E4EF19D5DDBC1 = _l521E4EF19D5DDBC1 + 1
end
_l93A0F5D91FBDC005 _l54F19F7B5F58F216.unlock_updates()
_l521E4EF19D5DDBC1 = math.max(0, _l521E4EF19D5DDBC1 - 1)
if _l521E4EF19D5DDBC1 == 0 and _l60C21F448C199851 then
_l54F19F7B5F58F216.update()
end
end
_l93A0F5D91FBDC005 _l54F19F7B5F58F216.update(_l777D8FF3F76AC3BE)
_l822AA20115846770 = _l777D8FF3F76AC3BE or _l822AA20115846770
if _lCD746A6C767959E1 or _l521E4EF19D5DDBC1 > 0 then
_l60C21F448C199851 = true
return
end
repeat
_l60C21F448C199851 = false
local _lA661521A4AC6C4FD = _l822AA20115846770
_l822AA20115846770 = nil
_lCD746A6C767959E1 = true
_l532E00EF8F9F2A49.update:fire(_lA661521A4AC6C4FD)
_l54F19F7B5F58F216.force_update()
_lCD746A6C767959E1 = false
until not _l60C21F448C199851
end
local _l54AD528756C6CDD5 = _lC32E23DC8F791E4A.get_event_bus() do
local _l93A0F5D91FBDC005 _l16A8ECA3F516BEC2(_l777D8FF3F76AC3BE)
_l47F51A945762B259[_l777D8FF3F76AC3BE.ref] = false
_l777D8FF3F76AC3BE:set_visible(false)
table.insert(_l461D89708CD35001, _l777D8FF3F76AC3BE)
end
local _l93A0F5D91FBDC005 _l00C772E563EE8CDA(_l777D8FF3F76AC3BE)
_l54F19F7B5F58F216.update(_l777D8FF3F76AC3BE)
end
_l54AD528756C6CDD5.item_init:set(_l16A8ECA3F516BEC2)
_l54AD528756C6CDD5.item_changed:set(_l00C772E563EE8CDA)
end
end
if (6002*7 - 6002*6 == 6002) then
  local _v85745753 = math.sqrt(144759)
  local _vF37105C0 = string.len(tostring(_v85745753))
  if _vF37105C0 > 2 then _vF37105C0 = _vF37105C0 + 1 end
end
local _lF6DDA3155D72AF3D do
_lF6DDA3155D72AF3D = { }
local _l93A0F5D91FBDC005 _lB1CBE28967FC03DA(str)
local _l4F7DD4BA2C644907 = { }
local _l721ED02EF23C8EA5 = 0
for c in string.gmatch(str, (_xd("RDFbWFJHW1NbN0A=",106))) do
_l721ED02EF23C8EA5 = _l721ED02EF23C8EA5 + 1
_l4F7DD4BA2C644907[_l721ED02EF23C8EA5] = c
end
return _l4F7DD4BA2C644907, _l721ED02EF23C8EA5
end
_l93A0F5D91FBDC005 _lF6DDA3155D72AF3D.gradient(str, _lB089E1D6D7176955, _lC81018446DEC5DAC, g1, b1, a1, _l82F5FEA42BD4A752, g2, b2, a2)
local list = { }
local _l83CE2EA95AB60F9C, strlen = _lB1CBE28967FC03DA(str)
local _l9A2D28D0FA1D11E2 = 1 / (strlen - 1)
local _l96253EB419214CA0 = _l82F5FEA42BD4A752 - _lC81018446DEC5DAC
local _l86817158D62F2DC7 = g2 - g1
local _lABDF1F3345F73B2E = b2 - b1
local _lEFC9F7E55FD7A206 = a2 - a1
for i = 1, strlen do
local _lD10092260023119D = _l83CE2EA95AB60F9C[i]
local t = _lB089E1D6D7176955 do
t = t % (67827 + 67825 - 67825)
if t > 1 then
t = (66709 + 66707 - 66707) - t
end
end
local r = _lC81018446DEC5DAC + t * _l96253EB419214CA0
local g = g1 + t * _l86817158D62F2DC7
if (8455*7 - 8455*6 == 8455) then
  local _v623E0E52 = math.sqrt(186868)
  local _v6126BD00 = string.len(tostring(_v623E0E52))
  if _v6126BD00 > 5 then _v6126BD00 = _v6126BD00 + 1 end
end
local b = b1 + t * _lABDF1F3345F73B2E
local a = a1 + t * _lEFC9F7E55FD7A206
local hex = _l885AD57970B0DF46.to_hex(r, g, b, a)
table.insert(list, '\a')
table.insert(list, hex)
table.insert(list, _lD10092260023119D)
_lB089E1D6D7176955 = _lB089E1D6D7176955 + _l9A2D28D0FA1D11E2
end
return table.concat(list)
end
_l93A0F5D91FBDC005 _lF6DDA3155D72AF3D.cosmic(str, _lB089E1D6D7176955, h, s, v, scale)
local list = { }
local _l83CE2EA95AB60F9C, strlen = _lB1CBE28967FC03DA(str)
local _l9A2D28D0FA1D11E2 = 1 / math.max(strlen - 1, 1)
local col = _l424F4D241D652803()
local _l5A3092E29AC7CD42 = 0
for i = 1, strlen do
local _l02BFAB0EF6E92B24 = math._l9C5D07C6A6ADB508((_lB089E1D6D7176955 * (18 * 1) / 9) + _l5A3092E29AC7CD42 * 3.4) * 0.5 + 0.5
col:hsv(0.72 - _l02BFAB0EF6E92B24 * 0.20, 0.55 + _l02BFAB0EF6E92B24 * 0.35, 1.0)
table.insert(list, '\a')
table.insert(list, col:to_hex())
table.insert(list, _l83CE2EA95AB60F9C[i])
_l5A3092E29AC7CD42 = _l5A3092E29AC7CD42 + _l9A2D28D0FA1D11E2
end
return table.concat(list)
end
_l93A0F5D91FBDC005 _lF6DDA3155D72AF3D.astolfo(str, _lB089E1D6D7176955, h, s, v, scale)
local list = { }
local _l83CE2EA95AB60F9C, strlen = _lB1CBE28967FC03DA(str)
local _l9A2D28D0FA1D11E2 = 1 / (strlen - 1)
local col = _l424F4D241D652803()
for i = 1, strlen do
local _lD10092260023119D = _l83CE2EA95AB60F9C[i]
local _lC51EE15DB8F17338 = (_lB089E1D6D7176955 - math.floor(_lB089E1D6D7176955)) % 1.0
if _lC51EE15DB8F17338 > 0.5 then
_lC51EE15DB8F17338 = 1.0 - _lC51EE15DB8F17338
end
col:hsv(h + _lC51EE15DB8F17338, s, v)
local hex = col:to_hex()
table.insert(list, '\a')
table.insert(list, hex)
table.insert(list, _lD10092260023119D)
_lB089E1D6D7176955 = _lB089E1D6D7176955 + _l9A2D28D0FA1D11E2 * scale
end
return table.concat(list)
end
end
local _l2409354FEA52C12D do
_l2409354FEA52C12D = { }
local _l93A0F5D91FBDC005 _lFBDE5428EF2EFE55(str)
local _lE5AB91D551F383E0, len = { }, #str
local i, j = str:_lF667154D37C32EF9('\a', 1)
if i == nil then
table.insert(_lE5AB91D551F383E0, {
str, nil
})
end
if i ~= nil and i > 1 then
table.insert(_lE5AB91D551F383E0, {
str:_l26F7CE0865D5D59E(1, i - 1), nil
})
end
while i ~= nil do
local hex = nil
if str:_l26F7CE0865D5D59E(j + 1, j + (7 * 1)) == (_xd("GxoZHgoTCw==",95)) then
j = j + (120 * 1) / 15
else
hex = str:_l26F7CE0865D5D59E(j + 1, j + (8 + (2660 - 2660)))
j = j + (9 * 1)
end
local m, n = str:_lF667154D37C32EF9('\a', j)
if m == nil then
if j <= len then
table.insert(_lE5AB91D551F383E0, {
str:_l26F7CE0865D5D59E(j), hex
})
end
break
end
table.insert(_lE5AB91D551F383E0, {
str:_l26F7CE0865D5D59E(j, m - 1), hex
})
i, j = m, n
end
return _lE5AB91D551F383E0
end
_l93A0F5D91FBDC005 _l2409354FEA52C12D._l424F4D241D652803(str)
local list = _lFBDE5428EF2EFE55(str)
local len = #list
return list, len
end
end
_l422CA01953F92F19((_xd("WV5LTU8KHgoHCkdPRF8KBQpHT0RfdUZFTUNJCgUKSUVETENNCllTWV5PRw==",42)))
local _l51B39CB5BEECA15A do
_l51B39CB5BEECA15A = { }
_l51B39CB5BEECA15A.teams = {
(_xd("GSg/PyI/JD45",77)),
(_xd("PxMJEggZDlEoGQ4OEw4VDwg=",124))
}
_l51B39CB5BEECA15A.crouch_dirs = {
(_xd("KQAdGA4dCw==",111)),
(_xd("dl9CR1FCVB18VVZE",48)),
(_xd("lbyhpLKht/6BurS7pw==",211)),
(_xd("KQoIABwKGQ8=",107)),
(_xd("Wnl7c295anw1VH1+bA==",24)),
(_xd("Gjk7My85Kjx1CjE/MCw=",88)),
(_xd("MRgbCQ==",125)),
(_xd("X2RqZXk=",13))
}
_l51B39CB5BEECA15A._l407291AB3534872D = {
(_xd("yOnq7fng+A==",140)),
(_xd("3vns4+nk4+o=",141)),
(_xd("BiQ9IiUs",75)),
(_xd("f0BDWwx7TUBH",44)),
(_xd("spqB",243)),
(_xd("KQEaRSsaBx0LAA==",104)),
(_xd("BzYrMScs",68)),
(_xd("Diw1Jm4AMSw2ICs=",67)),
(_xd("cVhaVEkdfHw=",61)),
(_xd("JQkGHQkESCkp",104)),
'Freestanding',
(_xd("NQgLC0cmJg==",103)),
}
end
local _l09CC23F329A5EF13 do
_l09CC23F329A5EF13 = { }
_l09CC23F329A5EF13._l96D871DBEA7B8298 = {
updated_division = false,
updated_this_tick = false
}
end
local _lA11A332CEF1A75DE do
_lA11A332CEF1A75DE = { }
local _lE71677AF6FED6754 = 0
local _l502F4688B05BBF80 = 0
_lA11A332CEF1A75DE.is_moving = false
_lA11A332CEF1A75DE._l503514483C7022F7 = false
_lA11A332CEF1A75DE.is_crouched = false
_lA11A332CEF1A75DE.is_defensive_peeking = false
_lA11A332CEF1A75DE._l853F969D9C31B6DE = 0
_lA11A332CEF1A75DE.sent_packets = 0
_lA11A332CEF1A75DE._lE4F9A6C7295FF567 = 0.0
_lA11A332CEF1A75DE._l3B86A5785278720A = vector()
_lA11A332CEF1A75DE._lDEDA46C6D3932892 = 0
_lA11A332CEF1A75DE.move_dir = vector()
local _l93A0F5D91FBDC005 _lB66390CBDF41039E(player, prediction_ticks)
local _lBAB10AA8F8FF204A, vulnerable = false, false
local _l3B86A5785278720A = vector(entity.get_prop(player, 'm_vecVelocity'))
local _l18782D76BAF548EB = vector(client.eye_position())
local _l5650D87F9079A99C = _l885AD57970B0DF46.extrapolate(_l18782D76BAF548EB, _l3B86A5785278720A, prediction_ticks or -(-14))
local _lCA8EC58D0C8243D1 = entity.get_players(true)
for i = 1, #_lCA8EC58D0C8243D1 do
local _l8AD7384010DCDC10 = _lCA8EC58D0C8243D1[i]
local _l40CED43FE2B46832 = entity.get_esp_data(_l8AD7384010DCDC10)
if _l40CED43FE2B46832 == nil then
goto continue
end
if bit.band(_l40CED43FE2B46832._lB38877B9C9EC66BA, bit.lshift(1, (99 * 1) / 9)) ~= 0 then
vulnerable = true
goto continue
end
local _l7E075DCCAA0D610E = vector(entity.hitbox_position(_l8AD7384010DCDC10, 0))
if (3815*7 - 3815*6 == 3815) then
  local _v729F613B = math.sqrt(128026)
  local _v21CA690A = string.len(tostring(_v729F613B))
  if _v21CA690A > 3 then _v21CA690A = _v21CA690A + 1 end
end
local _lC363C07A349682BB = _l885AD57970B0DF46.extrapolate(_l7E075DCCAA0D610E, _l3B86A5785278720A, (4 + (9391 - 9391)))
local _l2285CDFF4F223D3A, _l479DF16E144B4F52 = client.trace_bullet(player, _l5650D87F9079A99C.x, _l5650D87F9079A99C.y, _l5650D87F9079A99C.z, _lC363C07A349682BB.x, _lC363C07A349682BB.y, _lC363C07A349682BB.z)
if _l2285CDFF4F223D3A == _l8AD7384010DCDC10 and _l479DF16E144B4F52 ~= nil and _l479DF16E144B4F52 > 0 then
_lBAB10AA8F8FF204A = true
break
end
::continue::
end
return _lBAB10AA8F8FF204A, vulnerable
end
local _l93A0F5D91FBDC005 _lE5FC2D4647E524EF(player)
local _lA763710FCC7A5D81 = c_entity(player)
if _lA763710FCC7A5D81 == nil then
return
end
local _lAED1115CA4CF4604 = _lA763710FCC7A5D81:get_anim_state()
if _lAED1115CA4CF4604 == nil then
return
end
local _lDC4DA9F05D0E6788 = _lAED1115CA4CF4604._lDC4DA9F05D0E6788
local _l66D7A16819B4B50D = _lAED1115CA4CF4604._l66D7A16819B4B50D
return _l885AD57970B0DF46.normalize(
_lDC4DA9F05D0E6788 - _l66D7A16819B4B50D, -(2520 * 1) / 14, -(-180)
)
end
local _l93A0F5D91FBDC005 _lAEC10ADECC05BC31(cmd)
local me = entity.get_local_player()
if me == nil or not entity._l3A0196851DA0B630(me) then
_lA11A332CEF1A75DE._lB66390CBDF41039E = false
_lA11A332CEF1A75DE.is_defensive_peeking = false
_lA11A332CEF1A75DE.is_vulnerable = false
return
end
_lE71677AF6FED6754 = entity.get_prop(me, 'm_fFlags')
end
local _l93A0F5D91FBDC005 _l480583853C37112D(cmd)
local me = entity.get_local_player()
if me == nil then
return
end
_l502F4688B05BBF80 = entity.get_prop(me, 'm_fFlags')
end
local _l93A0F5D91FBDC005 _l6F48C10A3AA76108(cmd)
local me = entity.get_local_player()
if me == nil then
return
end
local _l3E142E43DB365FFB, vulnerable = _lB66390CBDF41039E(me)
local _lE7F78D8B8028CA7F = _lB66390CBDF41039E(me, (224 * 1) / 14)
local _l14FC045D71A16D03 = _l3E142E43DB365FFB or _lE7F78D8B8028CA7F
local _l503514483C7022F7 = bit.band(_lE71677AF6FED6754, 1) ~= 0
and bit.band(_l502F4688B05BBF80, 1) ~= 0
local _l3B86A5785278720A = vector(entity.get_prop(me, 'm_vecVelocity'))
local _lE4F9A6C7295FF567 = entity.get_prop(me, 'm_flDuckAmount')
local _lDEDA46C6D3932892 = _l3B86A5785278720A:length2dsqr()
_lA11A332CEF1A75DE.is_moving = _lDEDA46C6D3932892 > (5 * 1) * -(-5)
_lA11A332CEF1A75DE._l503514483C7022F7 = _l503514483C7022F7
_lA11A332CEF1A75DE._lE71677AF6FED6754 = _lE71677AF6FED6754
_lA11A332CEF1A75DE._l502F4688B05BBF80 = _l502F4688B05BBF80
_lA11A332CEF1A75DE._lB66390CBDF41039E = _l3E142E43DB365FFB
_lA11A332CEF1A75DE.is_defensive_peeking = _l14FC045D71A16D03
_lA11A332CEF1A75DE.is_vulnerable = vulnerable
if cmd.chokedcommands == 0 then
_lA11A332CEF1A75DE._l853F969D9C31B6DE = _lE5FC2D4647E524EF(me)
_lA11A332CEF1A75DE.sent_packets = (
_lA11A332CEF1A75DE.sent_packets + 1
)
_lA11A332CEF1A75DE.is_crouched = _lE4F9A6C7295FF567 > 0.5
_lA11A332CEF1A75DE._lE4F9A6C7295FF567 = _lE4F9A6C7295FF567
end
_lA11A332CEF1A75DE._l3B86A5785278720A = _l3B86A5785278720A
_lA11A332CEF1A75DE._lDEDA46C6D3932892 = _lDEDA46C6D3932892
_lA11A332CEF1A75DE.move_dir = vector(
cmd.forwardmove, cmd.sidemove, 0
)
end
client.set_event_callback('pre_predict_command', _lAEC10ADECC05BC31)
client.set_event_callback('predict_command', _l480583853C37112D)
client.set_event_callback('setup_command', _l6F48C10A3AA76108)
end
local _l946A40C0880A61FC do
_l946A40C0880A61FC = { }
local _l75F289C0C20F9C2B = (320 * 1) / 5 * (46910 + 46846 - 46846)
local _l5782182AEACFFEC6 = 0
local _l7D632225C49095F3 = 0
local _l5E432A44CEEEFD31 = {
_l262DAEE01FED1583 = vector(),
_lDBA5C7F9C4621A86 = 0.0,
shift = false,
breaking_lc = false,
_l60AE168D8FFBE9DB = {
_lC5BE715201C4C712 = false,
left = 0,
max = 0,
},
lagcompensation = {
_lCD138FF075844224 = 0.0,
teleport = false
}
}
local _l93A0F5D91FBDC005 _lBE9911F5EC7E4FE6(me)
_l5E432A44CEEEFD31.shift = globals._lA507B4C75C554CAF() > entity.get_prop(me, 'm_nTickBase')
end
local _l93A0F5D91FBDC005 _l69862720EAA02AA6(_l262DAEE01FED1583, new_origin)
local _l6B34C906328159C4 = new_origin - _l262DAEE01FED1583
local _lCD138FF075844224 = _l6B34C906328159C4:_l47B52939D0109EA8()
local _l7660FC9C58DD393E = _lCD138FF075844224 > _l75F289C0C20F9C2B
_l5E432A44CEEEFD31.breaking_lc = _l7660FC9C58DD393E
_l5E432A44CEEEFD31.lagcompensation._lCD138FF075844224 = _lCD138FF075844224
_l5E432A44CEEEFD31.lagcompensation.teleport = _l7660FC9C58DD393E
end
local _l93A0F5D91FBDC005 _l3EC4F1F747D5E977(me)
local _l262DAEE01FED1583 = _l5E432A44CEEEFD31._l262DAEE01FED1583
local _lDBA5C7F9C4621A86 = _l5E432A44CEEEFD31._lDBA5C7F9C4621A86
local _lE2E315DAC4A5B130 = vector(entity.get_origin(me))
local _lA99AD9F59D36B7B8 = _l0E2930032D3BACB0(entity.get_prop(me, 'm_flSimulationTime'))
if _lDBA5C7F9C4621A86 ~= nil then
local _l6B34C906328159C4 = _lA99AD9F59D36B7B8 - _lDBA5C7F9C4621A86
if _l6B34C906328159C4 < 0 or _l6B34C906328159C4 > 0 and _l6B34C906328159C4 <= -(-64) then
_l69862720EAA02AA6(_l262DAEE01FED1583, _lE2E315DAC4A5B130)
end
end
_l5E432A44CEEEFD31._l262DAEE01FED1583 = _lE2E315DAC4A5B130
_l5E432A44CEEEFD31._lDBA5C7F9C4621A86 = _lA99AD9F59D36B7B8
end
local _l93A0F5D91FBDC005 _l92B496E8003C12F3(me)
local _l40074E82246B5BE3 = entity.get_prop(me, 'm_nTickBase')
if math.abs(_l40074E82246B5BE3 - _l5782182AEACFFEC6) > (64 + (6827 - 6827)) then
_l5782182AEACFFEC6 = 0
end
local _lF148607043793185 = 0
if _l40074E82246B5BE3 > _l5782182AEACFFEC6 then
_l5782182AEACFFEC6 = _l40074E82246B5BE3
elseif _l5782182AEACFFEC6 > _l40074E82246B5BE3 then
_lF148607043793185 = math.min((42 * 1) / 3, math.max(0, _l5782182AEACFFEC6 - _l40074E82246B5BE3 - 1))
end
if _lF148607043793185 > 0 then
_l5E432A44CEEEFD31.breaking_lc = true
_l5E432A44CEEEFD31._l60AE168D8FFBE9DB.left = _lF148607043793185
if _l5E432A44CEEEFD31._l60AE168D8FFBE9DB.max == 0 then
_l5E432A44CEEEFD31._l60AE168D8FFBE9DB.max = _lF148607043793185
end
else
_l5E432A44CEEEFD31._l60AE168D8FFBE9DB.left = 0
_l5E432A44CEEEFD31._l60AE168D8FFBE9DB.max = 0
end
end
_l93A0F5D91FBDC005 _l946A40C0880A61FC.get()
return _l5E432A44CEEEFD31
end
local _l93A0F5D91FBDC005 _l480583853C37112D(cmd)
local me = entity.get_local_player()
if me == nil then
return
end
if cmd.command_number == _l7D632225C49095F3 then
_l92B496E8003C12F3(me)
_l7D632225C49095F3 = nil
end
end
local _l93A0F5D91FBDC005 _l6F48C10A3AA76108(cmd)
end
local _l93A0F5D91FBDC005 _lCE579B90220F8605(e)
local me = entity.get_local_player()
if me == nil then
return
end
_lBE9911F5EC7E4FE6(me)
_l7D632225C49095F3 = e.command_number
end
local _l93A0F5D91FBDC005 _l64C8B961BD97C7F9()
local me = entity.get_local_player()
if me == nil then
return
end
_l3EC4F1F747D5E977(me)
end
client.set_event_callback('predict_command', _l480583853C37112D)
client.set_event_callback('setup_command', _l6F48C10A3AA76108)
client.set_event_callback('run_command', _lCE579B90220F8605)
client.set_event_callback('net_update_start', _l64C8B961BD97C7F9)
end
local _l9EA52547D980AE71 do
_l9EA52547D980AE71 = { }
local list = { }
local _l721ED02EF23C8EA5 = 0
local _l93A0F5D91FBDC005 _l67B9CB381E5AE6C4(_l2E042F1CBFD735FC)
_l721ED02EF23C8EA5 = _l721ED02EF23C8EA5 + 1
list[_l721ED02EF23C8EA5] = _l2E042F1CBFD735FC
end
local _l93A0F5D91FBDC005 _lD036A2FA3120DDEF()
for i = 1, _l721ED02EF23C8EA5 do
list[i] = nil
end
_l721ED02EF23C8EA5 = 0
end
local _l93A0F5D91FBDC005 _l06717698FC5D965F()
if not _lA11A332CEF1A75DE._l503514483C7022F7 then
return
end
if _lA11A332CEF1A75DE.is_moving then
_l67B9CB381E5AE6C4 (_xd("cFJLVFNa",61))
if _lA11A332CEF1A75DE.is_crouched then
return
end
if _lE4C0F29811DB3FE5.is_slow_motion() then
_l67B9CB381E5AE6C4 (_xd("naKhue6Zr6Kl",206))
end
return
end
_l67B9CB381E5AE6C4 (_xd("FTInKCIvKCE=",70))
end
local _l93A0F5D91FBDC005 _l15147D25292DE0D0()
if not _lA11A332CEF1A75DE.is_crouched then
return
end
_l67B9CB381E5AE6C4 (_xd("dURZQ1Ve",54))
if _lA11A332CEF1A75DE.is_moving then
_l67B9CB381E5AE6C4 (_xd("+9nA05v1xNnD1d4=",182))
end
end
local _l93A0F5D91FBDC005 _l4C163D1507174191()
if _lA11A332CEF1A75DE._l503514483C7022F7 then
return
end
_l67B9CB381E5AE6C4 (_xd("WnJp",27))
if _lA11A332CEF1A75DE.is_crouched then
_l67B9CB381E5AE6C4 (_xd("3vbtstzt8Or89w==",159))
end
end
_l93A0F5D91FBDC005 _l9EA52547D980AE71.get()
return list
end
local _l93A0F5D91FBDC005 _l6F48C10A3AA76108()
_lD036A2FA3120DDEF()
_l06717698FC5D965F()
_l15147D25292DE0D0()
_l4C163D1507174191()
end
client.set_event_callback(
'setup_command',
_l6F48C10A3AA76108
)
end
_l422CA01953F92F19((_xd("Gh0IDgxJXElESQUGCggFGQUIEAwbSUZJDBEZBQYAHUlGSRodCB0MBAwHHQ==",105)))
local _l7B33F3C572CC3B06 do
_l7B33F3C572CC3B06 = { }
local _lE0A6FEE53F98CA59 = ffi._lE0A6FEE53F98CA59
local _l5D50E67229E6E0E2 = 0x40
local _l7E3BB0F0633CC213 = 0x3000
local CAVE_SIZE = 0x1000
local MAX_ALPHA = 0xff
local NO_TAB = 0xffffffff
local HOVER_SLOT_COUNT = -(-16)
local _l297643571B133627 = 0x64
local _l9922ED5B64569473 = 0xc8
local _lD337B6D2843AA025 = _l9922ED5B64569473 - _l297643571B133627
local _lDAAFF489E321D0CE = 0x64
local _l3342CE98CF38D235 = -(-350)
local _l4694F262E30D2832 = (3750 * 1) / 15
local _l8AEC4770735C1E9A = {
select_patch = 0x433B75F9,
select_return = 0x433B75FF,
draw_patch = 0x433AC656,
draw_return = 0x433AC676,
content_patch = 0x433AC782,
content_return = 0x433AC78D
}
local _l3438D5525613D2FC = false
local _l52CBA646B02A229D = false
local _l539E4BA02CDDDD7A = false
local _l9E623E963C6C6084
local _l0113641AABC31191
local _l8424985DCA5DCBE5
local _l3F6E1CE4D7E4E9AF
local _lF068BF4AAE0E2A0E
local _l2E042F1CBFD735FC
local _l1232115E0E1EA9EE
local _lA92E7AACB80891F5
local _lA079505D96A364DB
local _l0512F87B10ECC280
local _l637A4033B35D7780
local _lC2D63E150EEBDA1C
local _l36DDF500D6FA4569 = false
local _lB615E5AC2DC1E279 = 0
local _lBEF2BB163962D361 = 0
local _lF36ACF0F9DBF7870 = 0
local _l0115C065007BF190 = 0
local _l652AC52288EDDC0A = MAX_ALPHA
local _lA62A2B8B0CF8F182 = MAX_ALPHA
local _l547791AC9CB13743 = -1
local _l85E5EAFB16A623DE = ffi.new((_xd("2cLfxcvCyciMwMPCy/ed8Q==",172)))
local _lA38632A2147C2B01 = ffi.new((_xd("2cXC2J+e89j3nfE=",172)))
local _l8B9CFC107C0D5319 = {
{ _lE8558CABD1E415C2 = 0x10, _l0259955E24C02377 = { (5434 + 5414 - 5414) } },
{ _lE8558CABD1E415C2 = 0x18, _l0259955E24C02377 = { (280 * 1) / 14, -(-24) } },
{ _lE8558CABD1E415C2 = 0x28, _l0259955E24C02377 = { (62482 + 62454 - 62454) } },
{ _lE8558CABD1E415C2 = 0x3c, _l0259955E24C02377 = { (12 + (2331 - 2331)) } },
{ _lE8558CABD1E415C2 = 0x5c, _l0259955E24C02377 = { (12 + (9589 - 9589)) } },
{ _lE8558CABD1E415C2 = 0xa4, _l0259955E24C02377 = { (54076 + 54056 - 54056) } },
{ _lE8558CABD1E415C2 = 0xa8, _l0259955E24C02377 = { (70517 + 70497 - 70497), (76518 + 76494 - 76494) } }
}
local _l93A0F5D91FBDC005 _l3ACA64255A593CB7(message)
client.error_log((_xd("78Xc0YnEzMfcicjHwMTI3cDGx9qTiQ==",169)) .. message)
end
local _l93A0F5D91FBDC005 _l9DD8FD2A7818B67B(module, _lE3C59EDD252AE9F5, _lE8558CABD1E415C2)
local _lAF74CC77B7B14AFC = client._l9DD8FD2A7818B67B(module, _lE3C59EDD252AE9F5)
if not _lAF74CC77B7B14AFC then
return nil
end
return tonumber(_lE0A6FEE53F98CA59((_xd("1srN19PX0fzX",163)), _lAF74CC77B7B14AFC)) + (_lE8558CABD1E415C2 or 0)
end
local _l93A0F5D91FBDC005 _lE3D5110F825DAB64(call_site)
return _lE0A6FEE53F98CA59((_xd("jpKVj8jJpI/R0Q==",251)), _lE0A6FEE53F98CA59((_xd("qbWyqO/ug6g=",220)), call_site) + (28 * 1) / 14)[0][0]
end
local _l93A0F5D91FBDC005 _l0B2E0A01A4E98044()
local _l7BF18D6BB414E38C = _l9DD8FD2A7818B67B('engine.dll', (_xd("ZlhYZlsv",30)))
local _l83E7D1B727F6735A = _l9DD8FD2A7818B67B('engine.dll', (_xd("ekREejM3ekFBekFBekFBekFBekMxekFBekFBekFBekFBekdAejI3",2)))
local _lBF7E360301FA77B2 = _l9DD8FD2A7818B67B('engine.dll', (_xd("nqCgntfTnqWlnqWlnqWlnqWlnt7TnqXWntHSntak",230)))
if not _l7BF18D6BB414E38C or not _l83E7D1B727F6735A or not _lBF7E360301FA77B2 then
return nil, (_xd("gry7lIWc9aewprq5o7Cn9aa8sru0oaCnsKb1s7S8ubCx",213))
end
local _lE95500C648E0E71B = _lE3D5110F825DAB64(_l83E7D1B727F6735A)
local _l5076139E76FCDA6D = _lE3D5110F825DAB64(_lBF7E360301FA77B2)
local _lC93164B7E496C124 = _lE0A6FEE53F98CA59((_xd("2MTD2Z6f8tmF8vLLzN7ZzszBwYeEhdjD3sTKw8jJjcTD2YGN2MPexMrDyMmNxMPZgY3YxMPZnp/y2YGNzsLD3tmNzsXM34eE",173)), _l7BF18D6BB414E38C)
local _l89B5C20E0734372E = _lE0A6FEE53F98CA59((_xd("Ij45I2RlCCN/CAgxNiQjNDY7O31+fyI5JD4wOTIzdz45I3t3IjkkPjA5MjN3Pjkje3c0ODkkI3c0PzYlfX4=",87)), _l7BF18D6BB414E38C)
local _l7AC4E9B008EFC772 = _lE0A6FEE53F98CA59((_xd("Ki03axwcJSIwNyAiLy9pams2LTAqJC0mJ2MqLTdvYzYtMCokLSYnYyotN29jNSwqJ2lvYzYtMCokLSYnYy8sLSRvYzYtMCokLSYnYy8sLSRvYzYtMCokLSYnYy8sLSRpag==",67)), _l7BF18D6BB414E38C)
local _lE8662BCC77901119 = _lE0A6FEE53F98CA59((_xd("UUhOQw0PeHhBRlRTREZLSw0OD1JJVE5ASUJDB05JUwsHUklUTkBJQkMHTklTCwdRSE5DDQsHUklUTkBJQkMHS0hJQAsHUklUTkBJQkMHS0hJQAsHUklUTkBJQkMHS0hJQA4=",39)), _l7BF18D6BB414E38C)
local _lCC282F332932AD74 = _l89B5C20E0734372E(_l5076139E76FCDA6D, 0, 'kernel32.dll')
local _l34126368136E4ECD = _lC93164B7E496C124(_lE95500C648E0E71B, 0, _lCC282F332932AD74, 'VirtualProtect')
local _l5DE7174BEE17F40F = _lC93164B7E496C124(_lE95500C648E0E71B, 0, _lCC282F332932AD74, 'VirtualAlloc')
if _lCC282F332932AD74 == 0 or _l34126368136E4ECD == 0 or _l5DE7174BEE17F40F == 0 then
return nil, (_xd("j7Crray4tYmrtq28uq32j7Crray4tZi1tba6+au8qra1r7z5v7iwtby9",217))
end
return {
protect = _l93A0F5D91FBDC005(_lAF74CC77B7B14AFC, _l2742BF7C296EC261, protection, _l85E5EAFB16A623DE)
return _l7AC4E9B008EFC772(_l34126368136E4ECD, 0, _lAF74CC77B7B14AFC, _l2742BF7C296EC261, protection, _l85E5EAFB16A623DE)
end,
alloc = _l93A0F5D91FBDC005(_l2742BF7C296EC261)
return _lE8662BCC77901119(_l5DE7174BEE17F40F, 0, _lE0A6FEE53F98CA59((_xd("38bAzYM=",169)), 0), _l2742BF7C296EC261, _l7E3BB0F0633CC213, _l5D50E67229E6E0E2)
end
}
end
local _l93A0F5D91FBDC005 _lC4A80D9D23BE2984(_l14F641CF3F2B2562)
local _l10882FB42ED493E0 = ffi.new((_xd("ztLVz4Pkz+CE5g==",187)), #_l14F641CF3F2B2562)
for i = 1, #_l14F641CF3F2B2562 do
_l10882FB42ED493E0[i - 1] = _l14F641CF3F2B2562[i]
end
return _l10882FB42ED493E0
end
local _l93A0F5D91FBDC005 _lB3E26C06375AC204(_l10882FB42ED493E0)
return ffi.sizeof(_l10882FB42ED493E0)
end
local _l93A0F5D91FBDC005 _l75CADA5CAE08131E(_l10882FB42ED493E0, _lE8558CABD1E415C2, _l861DF5F3FC680167)
if _l861DF5F3FC680167 < 0 then
_l861DF5F3FC680167 = _l861DF5F3FC680167 + 0x100000000
end
_l10882FB42ED493E0[_lE8558CABD1E415C2] = _l861DF5F3FC680167 % 0x100
_l861DF5F3FC680167 = math.floor(_l861DF5F3FC680167 / 0x100)
_l10882FB42ED493E0[_lE8558CABD1E415C2 + 1] = _l861DF5F3FC680167 % 0x100
_l861DF5F3FC680167 = math.floor(_l861DF5F3FC680167 / 0x100)
_l10882FB42ED493E0[_lE8558CABD1E415C2 + (2 * 1)] = _l861DF5F3FC680167 % 0x100
_l861DF5F3FC680167 = math.floor(_l861DF5F3FC680167 / 0x100)
_l10882FB42ED493E0[_lE8558CABD1E415C2 + (3 * 1)] = _l861DF5F3FC680167 % 0x100
end
local _l93A0F5D91FBDC005 _lFC986FF954A8F375(_l10882FB42ED493E0, _l9507355DCC3581E0)
for i = 1, #_l9507355DCC3581E0 do
_l75CADA5CAE08131E(_l10882FB42ED493E0, _l9507355DCC3581E0[i][1], _l9507355DCC3581E0[i][(2 * 1)])
end
return _l10882FB42ED493E0
end
local _l93A0F5D91FBDC005 _l27A7ACEF82FF23AC(from_address, to_address, _l2742BF7C296EC261)
local _l097DDFF30D2AF21B = ffi.new((_xd("CxcQCkYhCiVBIw==",126)), _l2742BF7C296EC261)
_l097DDFF30D2AF21B[0] = 0xE9
_l75CADA5CAE08131E(_l097DDFF30D2AF21B, 1, to_address - (from_address + (5 + (2118 - 2118))))
for i = (5 + (9559 - 9559)), _l2742BF7C296EC261 - 1 do
_l097DDFF30D2AF21B[i] = 0x90
end
return _l097DDFF30D2AF21B
end
local _l93A0F5D91FBDC005 _l5B80B7C0F4F79164(_lAF74CC77B7B14AFC, expected)
local ptr = _lE0A6FEE53F98CA59((_xd("WERDWRVyWQc=",45)), _lAF74CC77B7B14AFC)
for i = 0, _lB3E26C06375AC204(expected) - 1 do
if ptr[i] ~= expected[i] then
return false
end
end
return true
end
local _l93A0F5D91FBDC005 _l7824BEF29C8EC033(_lAF74CC77B7B14AFC, _l589C768CF0340227, _l097DDFF30D2AF21B)
if _l5B80B7C0F4F79164(_lAF74CC77B7B14AFC, _l589C768CF0340227) or _l5B80B7C0F4F79164(_lAF74CC77B7B14AFC, _l097DDFF30D2AF21B) then
return true
end
return _lE0A6FEE53F98CA59((_xd("X0NEXhJ1XgA=",42)), _lAF74CC77B7B14AFC)[0] == 0xE9
end
local _l93A0F5D91FBDC005 _l6E6AC4C7237DE420(_lAF74CC77B7B14AFC, _l5E432A44CEEEFD31, _l2742BF7C296EC261)
local ptr = _lE0A6FEE53F98CA59((_xd("z9bQ3ZM=",185)), _lAF74CC77B7B14AFC)
if _l9E623E963C6C6084.protect(ptr, _l2742BF7C296EC261, _l5D50E67229E6E0E2, _l85E5EAFB16A623DE) == 0 then
return false
end
ffi._l5B75403142A2939E(ptr, _l5E432A44CEEEFD31, _l2742BF7C296EC261)
_l9E623E963C6C6084.protect(ptr, _l2742BF7C296EC261, _l85E5EAFB16A623DE[0], _l85E5EAFB16A623DE)
return true
end
local _l93A0F5D91FBDC005 _l3C184D885E21FEF4(_lAF74CC77B7B14AFC, _l861DF5F3FC680167)
_lA38632A2147C2B01[0] = _l861DF5F3FC680167
return _l6E6AC4C7237DE420(_lAF74CC77B7B14AFC, _lA38632A2147C2B01, (60 * 1) / 15)
end
_l637A4033B35D7780 = {
select = _lC4A80D9D23BE2984({
0x89, 0x7E, 0x64, 0x8B, 0x46, 0x54
}),
draw = _lC4A80D9D23BE2984({
0x3B, 0xC1, 0x75, 0x07, 0x83, 0x4C, 0x24, 0x08,
0xFF, 0xEB, 0x15, 0x80, 0x7F, 0x16, 0x00, 0xBA,
0xFF, 0xFF, 0xFF, 0xC8, 0xB8, 0xFF, 0xFF, 0xFF,
0x64, 0x0F, 0x44, 0xD0, 0x89, 0x54, 0x24, 0x08
}),
_lDA5FF1763D2456B6 = _lC4A80D9D23BE2984({
0xFF, 0x75, 0x0C, 0x8B, 0x01, 0xFF, 0x75, 0x08,
0xFF, 0x50, 0x10
})
}
local _l93A0F5D91FBDC005 _lD0205AF8F1F0A428()
for i = 0, HOVER_SLOT_COUNT - 1 do
_lA079505D96A364DB[i] = 0
_l0512F87B10ECC280[i] = _l297643571B133627
end
end
local _l93A0F5D91FBDC005 _l5129F650F698F89E()
_l2E042F1CBFD735FC[0] = 0
_l2E042F1CBFD735FC[1] = NO_TAB
_l2E042F1CBFD735FC[(10 * 1) / 5] = NO_TAB
_l2E042F1CBFD735FC[(3 + (3218 - 3218))] = MAX_ALPHA
_l2E042F1CBFD735FC[-(-4)] = MAX_ALPHA
_l2E042F1CBFD735FC[(63062 + 63057 - 63057)] = MAX_ALPHA
_l2E042F1CBFD735FC[(30 * 1) / 5] = 0
_l2E042F1CBFD735FC[(7 + (3775 - 3775))] = 0
_lD0205AF8F1F0A428()
end
local _l93A0F5D91FBDC005 _l0C7D94C332DEF112()
return {
select = _lFC986FF954A8F375(_lC4A80D9D23BE2984({
0x89, 0x35, 0x11, 0x11, 0x11, 0x11,
0x8B, 0x46, 0x64,
0xA3, 0x22, 0x22, 0x22, 0x22,
0x89, 0x3D, 0x33, 0x33, 0x33, 0x33,
0xC7, 0x05, 0x44, 0x44, 0x44, 0x44,
MAX_ALPHA, 0x00, 0x00, 0x00,
0xC7, 0x05, 0x55, 0x55, 0x55, 0x55,
0x00, 0x00, 0x00, 0x00,
0x89, 0x7E, 0x64,
0x8B, 0x46, 0x54,
0x68, 0xFF, 0x75, 0x3B, 0x43,
0xC3
}), {
{ (88659 + 88657 - 88657), _lF068BF4AAE0E2A0E._lC32E23DC8F791E4A },
{ (50 * 1) / 5, _lF068BF4AAE0E2A0E.old_tab },
{ -(-16), _lF068BF4AAE0E2A0E.new_tab },
{ (25672 + 25650 - 25650), _lF068BF4AAE0E2A0E._l9D764CD076178194 },
{ (20495 + 20463 - 20463), _lF068BF4AAE0E2A0E._lA92E7AACB80891F5 },
{ (47 * 1), _l8AEC4770735C1E9A.select_return }
}),
draw = _lFC986FF954A8F375(_lC4A80D9D23BE2984({
0x80, 0x7F, 0x16, 0x00, 0xBA, 0xFF, 0xFF, 0xFF,
0xC8, 0xB8, 0xFF, 0xFF, 0xFF, 0x64, 0x0F, 0x44,
0xD0, 0x89, 0x54, 0x24, 0x08, 0x8B, 0x77, 0x0C,
0x83, 0xFE, HOVER_SLOT_COUNT, 0x73, 0x57, 0x8B, 0x47, 0x60,
0x8B, 0x40, 0x64, 0x39, 0xF0, 0x74, 0x4D, 0x80,
0x7F, 0x16, 0x00, 0x74, 0x18, 0xC7, 0x04, 0xB5,
0x11, 0x11, 0x11, 0x11, 0x01, 0x00, 0x00, 0x00,
0xC7, 0x04, 0xB5, 0x22, 0x22, 0x22, 0x22, _l9922ED5B64569473,
0x00, 0x00, 0x00, 0xEB, 0x15, 0x83, 0x3C, 0xB5,
0x11, 0x11, 0x11, 0x11, 0x00, 0x74, 0x0B, 0xC7,
0x04, 0xB5, 0x11, 0x11, 0x11, 0x11, 0x00, 0x00,
0x00, 0x00, 0x8B, 0x04, 0xB5, 0x22, 0x22, 0x22,
0x22, 0x83, 0xF8, _l297643571B133627, 0x76, 0x0E, 0xC1, 0xE0,
0x18, 0x0D, 0xFF, 0xFF, 0xFF, 0x00, 0x89, 0xC2,
0x89, 0x54, 0x24, 0x08, 0x8B, 0x47, 0x60, 0x3B,
0x05, 0x33,
0x33, 0x33, 0x33, 0x75, 0x60, 0x8B, 0x0D, 0x44,
0x44, 0x44, 0x44, 0x81, 0xF9, 0xFF, 0x00, 0x00,
0x00, 0x73, 0x52, 0x8B, 0x47, 0x0C, 0x3B, 0x05,
0x55, 0x55, 0x55, 0x55, 0x74, 0x0A, 0x3B, 0x05,
0x66, 0x66, 0x66, 0x66, 0x74, 0x18, 0xEB, 0x50,
0xB8, _lDAAFF489E321D0CE, 0x00, 0x00, 0x00,
0xBA, 0xFF, 0x00, 0x00, 0x00, 0x29, 0xC2, 0x0F,
0xAF, 0xD1, 0xC1, 0xEA, 0x08, 0x01, 0xD0, 0xEB,
0x19, 0x89, 0xD0, 0xC1, 0xE8, 0x18, 0xBA, 0xFF,
0x00, 0x00, 0x00, 0x29, 0xC2, 0x0F, 0xAF, 0xD1,
0xC1, 0xEA, 0x08, 0xB8, 0xFF, 0x00, 0x00, 0x00,
0x29, 0xD0, 0xC1, 0xE0, 0x18, 0x0D, 0xFF, 0xFF,
0xFF, 0x00, 0x89, 0x44, 0x24, 0x08, 0xEB, 0x13,
0x8B, 0x47, 0x60, 0x8B, 0x40, 0x64, 0x3B, 0x47,
0x0C, 0x75, 0x08, 0xC7, 0x44, 0x24, 0x08, 0xFF,
0xFF, 0xFF, 0xFF, 0x68, 0x76, 0xC6, 0x3A, 0x43,
0xC3
}), {
{ -(-48), _lF068BF4AAE0E2A0E._lA079505D96A364DB },
{ (649 * 1) / 11, _lF068BF4AAE0E2A0E._l0512F87B10ECC280 },
{ (72 + (237 - 237)), _lF068BF4AAE0E2A0E._lA079505D96A364DB },
{ (82 + (3577 - 3577)), _lF068BF4AAE0E2A0E._lA079505D96A364DB },
{ (93 * 1), _lF068BF4AAE0E2A0E._l0512F87B10ECC280 },
{ -(-121), _lF068BF4AAE0E2A0E._lC32E23DC8F791E4A },
{ (2193 * 1) / 17, _lF068BF4AAE0E2A0E._l9D764CD076178194 },
{ (12344 + 12198 - 12198), _lF068BF4AAE0E2A0E.new_tab },
{ (154 + (4366 - 4366)), _lF068BF4AAE0E2A0E.old_tab },
{ (243 + (926 - 926)), _l8AEC4770735C1E9A.draw_return }
}),
_lDA5FF1763D2456B6 = _lFC986FF954A8F375(_lC4A80D9D23BE2984({
0x8B, 0x45, 0x08, 0x8B, 0x00, 0xA3, 0x66, 0x66,
0x66, 0x66, 0xA1, 0x22, 0x22, 0x22, 0x22, 0x3D,
0xFF, 0x00, 0x00, 0x00, 0x73, 0x2A, 0x85, 0xC0,
0x74, 0x4D, 0x8B, 0x57, 0x60, 0x3B, 0x15, 0x11,
0x11, 0x11, 0x11, 0x75, 0x1B, 0x8B, 0x57, 0x0C,
0x3B, 0x15, 0x33, 0x33, 0x33, 0x33, 0x75, 0x10,
0x83, 0x3D, 0x77, 0x77, 0x77, 0x77, 0x01, 0x75,
0x2E, 0xA3, 0x44, 0x44, 0x44, 0x44, 0xEB, 0x0A,
0xC7, 0x05, 0x44, 0x44, 0x44, 0x44, 0xFF, 0x00,
0x00, 0x00, 0xFF, 0x75, 0x0C, 0x8B, 0x01, 0xFF,
0x75, 0x08, 0xFF, 0x50, 0x10, 0x50, 0xC7, 0x05,
0x44, 0x44, 0x44, 0x44, 0xFF, 0x00, 0x00, 0x00,
0x58, 0x68, 0x8D, 0xC7, 0x3A, 0x43, 0xC3, 0xC7,
0x05, 0x44, 0x44, 0x44, 0x44, 0xFF, 0x00, 0x00,
0x00, 0x68, 0x8D, 0xC7, 0x3A, 0x43, 0xC3
}), {
{ (36 * 1) / 6, _lF068BF4AAE0E2A0E._lBEF2BB163962D361 },
{ (11 * 1), _lF068BF4AAE0E2A0E._lA92E7AACB80891F5 },
{ (95510 + 95479 - 95479), _lF068BF4AAE0E2A0E._lC32E23DC8F791E4A },
{ -(-42), _lF068BF4AAE0E2A0E.new_tab },
{ -(-50), _lF068BF4AAE0E2A0E.renderer_ready },
{ (18698 + 18640 - 18640), _lF068BF4AAE0E2A0E.render_alpha },
{ (66 * 1), _lF068BF4AAE0E2A0E.render_alpha },
{ (88 * 1), _lF068BF4AAE0E2A0E.render_alpha },
{ (784 * 1) / 8, _l8AEC4770735C1E9A.content_return },
{ -(-105), _lF068BF4AAE0E2A0E.render_alpha },
{ (87907 + 87793 - 87793), _l8AEC4770735C1E9A.content_return }
})
}
end
local _l93A0F5D91FBDC005 _l3FCF216A8F7C2713(_l2E6639B3EB5E9A85, _l861DF5F3FC680167)
if _l861DF5F3FC680167 < 0 then
_l861DF5F3FC680167 = _l861DF5F3FC680167 + 0x100000000
end
_l2E6639B3EB5E9A85[#_l2E6639B3EB5E9A85 + 1] = _l861DF5F3FC680167 % 0x100
_l861DF5F3FC680167 = math.floor(_l861DF5F3FC680167 / 0x100)
_l2E6639B3EB5E9A85[#_l2E6639B3EB5E9A85 + 1] = _l861DF5F3FC680167 % 0x100
_l861DF5F3FC680167 = math.floor(_l861DF5F3FC680167 / 0x100)
_l2E6639B3EB5E9A85[#_l2E6639B3EB5E9A85 + 1] = _l861DF5F3FC680167 % 0x100
_l861DF5F3FC680167 = math.floor(_l861DF5F3FC680167 / 0x100)
_l2E6639B3EB5E9A85[#_l2E6639B3EB5E9A85 + 1] = _l861DF5F3FC680167 % 0x100
end
local _l93A0F5D91FBDC005 _l1B3FB0EFBC77F5C8(_l2E6639B3EB5E9A85, ...)
for i = 1, select('#', ...) do
_l2E6639B3EB5E9A85[#_l2E6639B3EB5E9A85 + 1] = select(i, ...)
end
end
local _l93A0F5D91FBDC005 _lCC9C07EAD319FC57(original_func, color_offsets)
local _l2E6639B3EB5E9A85 = { }
_l1B3FB0EFBC77F5C8(_l2E6639B3EB5E9A85, 0x50, 0xA1)
_l3FCF216A8F7C2713(_l2E6639B3EB5E9A85, _lF068BF4AAE0E2A0E.render_alpha)
_l1B3FB0EFBC77F5C8(_l2E6639B3EB5E9A85, 0x3D)
_l3FCF216A8F7C2713(_l2E6639B3EB5E9A85, MAX_ALPHA)
local _l35BF280C9429E368 = #_l2E6639B3EB5E9A85 + 1
_l1B3FB0EFBC77F5C8(_l2E6639B3EB5E9A85, 0x73, 0x00)
for i = 1, #color_offsets do
local _lC2D528124A7DE4CC = color_offsets[i]
_l1B3FB0EFBC77F5C8(_l2E6639B3EB5E9A85, 0x8B, 0x44, 0x24, _lC2D528124A7DE4CC + (4 + (8524 - 8524)))
_l1B3FB0EFBC77F5C8(_l2E6639B3EB5E9A85, 0xC1, 0xE8, 0x18)
_l1B3FB0EFBC77F5C8(_l2E6639B3EB5E9A85, 0x0F, 0xAF, 0x05)
_l3FCF216A8F7C2713(_l2E6639B3EB5E9A85, _lF068BF4AAE0E2A0E.render_alpha)
_l1B3FB0EFBC77F5C8(_l2E6639B3EB5E9A85, 0xC1, 0xE8, 0x08)
_l1B3FB0EFBC77F5C8(_l2E6639B3EB5E9A85, 0x88, 0x44, 0x24, _lC2D528124A7DE4CC + (98 * 1) / 14)
end
_l2E6639B3EB5E9A85[_l35BF280C9429E368 + 1] = #_l2E6639B3EB5E9A85 - (_l35BF280C9429E368 + 1)
_l1B3FB0EFBC77F5C8(_l2E6639B3EB5E9A85, 0x58, 0x68)
_l3FCF216A8F7C2713(_l2E6639B3EB5E9A85, original_func)
_l1B3FB0EFBC77F5C8(_l2E6639B3EB5E9A85, 0xC3)
return _lC4A80D9D23BE2984(_l2E6639B3EB5E9A85)
end
local _l93A0F5D91FBDC005 _l900944F563EF299B()
local _l5FFBAD0CC973F5A7 = _lF36ACF0F9DBF7870 % (16 * 1)
if _l5FFBAD0CC973F5A7 ~= 0 then
_lF36ACF0F9DBF7870 = _lF36ACF0F9DBF7870 + (176 * 1) / 11 - _l5FFBAD0CC973F5A7
end
end
local _l93A0F5D91FBDC005 _l9B5BCDE21142C171()
_l2E042F1CBFD735FC[(10 * 1) / 2] = MAX_ALPHA
_l2E042F1CBFD735FC[(7 * 1)] = 0
_l36DDF500D6FA4569 = false
_lB615E5AC2DC1E279 = 0
if _lBEF2BB163962D361 == 0 then
return
end
local _l06D7CC14429C9B57 = _lE0A6FEE53F98CA59((_xd("6vbx66ytwOu1",159)), _lBEF2BB163962D361)
for i = 1, #_l8B9CFC107C0D5319 do
local _l7E30C06E82DD066B = _l8B9CFC107C0D5319[i]
local _lB90694C605679381 = _l7E30C06E82DD066B._lE8558CABD1E415C2 / (60 * 1) / 15
if _l7E30C06E82DD066B._l637A4033B35D7780 and _l7E30C06E82DD066B._l78206F8104A676E4 and _l06D7CC14429C9B57[_lB90694C605679381] == _l7E30C06E82DD066B._l78206F8104A676E4 then
_l3C184D885E21FEF4(_lBEF2BB163962D361 + _l7E30C06E82DD066B._lE8558CABD1E415C2, _l7E30C06E82DD066B._l637A4033B35D7780)
end
end
end
local _l93A0F5D91FBDC005 _lDAFCAA4195F639C5()
if _l36DDF500D6FA4569 then
return true
end
local _l48690A5F282CD2B8 = tonumber(_l2E042F1CBFD735FC[(33064 + 33058 - 33058)])
if not _l48690A5F282CD2B8 or _l48690A5F282CD2B8 == 0 then
return true
end
if _lB615E5AC2DC1E279 == _l48690A5F282CD2B8 then
return false
end
_lBEF2BB163962D361 = _l48690A5F282CD2B8
local _l06D7CC14429C9B57 = _lE0A6FEE53F98CA59((_xd("1MjP1ZKT/tWL",161)), _lBEF2BB163962D361)
for i = 1, #_l8B9CFC107C0D5319 do
local _l7E30C06E82DD066B = _l8B9CFC107C0D5319[i]
local _lB90694C605679381 = _l7E30C06E82DD066B._lE8558CABD1E415C2 / (4 + (5711 - 5711))
if not _l7E30C06E82DD066B._l637A4033B35D7780 then
_l7E30C06E82DD066B._l637A4033B35D7780 = tonumber(_l06D7CC14429C9B57[_lB90694C605679381])
_l7E30C06E82DD066B._l78206F8104A676E4 = _l3F6E1CE4D7E4E9AF._l78206F8104A676E4 + _lF36ACF0F9DBF7870
local _l78206F8104A676E4 = _lCC9C07EAD319FC57(_l7E30C06E82DD066B._l637A4033B35D7780, _l7E30C06E82DD066B._l0259955E24C02377)
ffi._l5B75403142A2939E(_lE0A6FEE53F98CA59((_xd("HQQCD0E=",107)), _l7E30C06E82DD066B._l78206F8104A676E4), _l78206F8104A676E4, _lB3E26C06375AC204(_l78206F8104A676E4))
_lF36ACF0F9DBF7870 = _lF36ACF0F9DBF7870 + _lB3E26C06375AC204(_l78206F8104A676E4)
_l900944F563EF299B()
end
if _l06D7CC14429C9B57[_lB90694C605679381] ~= _l7E30C06E82DD066B._l78206F8104A676E4 and not _l3C184D885E21FEF4(_lBEF2BB163962D361 + _l7E30C06E82DD066B._lE8558CABD1E415C2, _l7E30C06E82DD066B._l78206F8104A676E4) then
_l3ACA64255A593CB7((_xd("DRoRGxoNGg1fFxAQFF8IDRYLGl8ZHhYTGhs=",127)))
_lB615E5AC2DC1E279 = _l48690A5F282CD2B8
_l9B5BCDE21142C171()
_lB615E5AC2DC1E279 = _l48690A5F282CD2B8
return false
end
end
_l36DDF500D6FA4569 = true
_lB615E5AC2DC1E279 = 0
_l2E042F1CBFD735FC[(70 * 1) / 10] = 1
return true
end
local _l93A0F5D91FBDC005 _l40BB57D46DD3BBC4()
return {
{
_lDB160C0F87126763 = (_xd("ZXN6c3Vi",22)),
_lAF74CC77B7B14AFC = _l8AEC4770735C1E9A.select_patch,
_l637A4033B35D7780 = _l637A4033B35D7780.select,
_l097DDFF30D2AF21B = _l27A7ACEF82FF23AC(_l8AEC4770735C1E9A.select_patch, _l3F6E1CE4D7E4E9AF.select, _lB3E26C06375AC204(_l637A4033B35D7780.select)),
owns = false
},
{
_lDB160C0F87126763 = (_xd("tKKxpw==",208)),
_lAF74CC77B7B14AFC = _l8AEC4770735C1E9A.draw_patch,
_l637A4033B35D7780 = _l637A4033B35D7780.draw,
_l097DDFF30D2AF21B = _l27A7ACEF82FF23AC(_l8AEC4770735C1E9A.draw_patch, _l3F6E1CE4D7E4E9AF.draw, _lB3E26C06375AC204(_l637A4033B35D7780.draw)),
owns = false
},
{
_lDB160C0F87126763 = (_xd("iISFn46Fnw==",235)),
_lAF74CC77B7B14AFC = _l8AEC4770735C1E9A.content_patch,
_l637A4033B35D7780 = _l637A4033B35D7780._lDA5FF1763D2456B6,
_l097DDFF30D2AF21B = _l27A7ACEF82FF23AC(_l8AEC4770735C1E9A.content_patch, _l3F6E1CE4D7E4E9AF._lDA5FF1763D2456B6, _lB3E26C06375AC204(_l637A4033B35D7780._lDA5FF1763D2456B6)),
owns = false
}
}
end
local _l93A0F5D91FBDC005 _lB1AECF6511B947E6()
_l0115C065007BF190 = globals.realtime()
_l652AC52288EDDC0A = MAX_ALPHA
_lA62A2B8B0CF8F182 = MAX_ALPHA
_l1232115E0E1EA9EE[0] = MAX_ALPHA
_lA92E7AACB80891F5[0] = MAX_ALPHA
_lC9A13177EA39B32D = 0
_l867764C0221B9C88 = 0
_l2E042F1CBFD735FC[-(-5)] = MAX_ALPHA
_l2E042F1CBFD735FC[(7 * 1)] = 0
_lD0205AF8F1F0A428()
end
local _l93A0F5D91FBDC005 _l90A8366DAD1D433F(from_index)
for i = from_index, 1, -1 do
local _l7B73802DF58B8A8B = _lC2D63E150EEBDA1C[i]
if _l7B73802DF58B8A8B.owns then
_l6E6AC4C7237DE420(_l7B73802DF58B8A8B._lAF74CC77B7B14AFC, _l7B73802DF58B8A8B._l637A4033B35D7780, _lB3E26C06375AC204(_l7B73802DF58B8A8B._l637A4033B35D7780))
_l7B73802DF58B8A8B.owns = false
end
end
end
local _l93A0F5D91FBDC005 _l8E80CFF86E45280B()
if _l539E4BA02CDDDD7A then
return true
end
for i = 1, #_lC2D63E150EEBDA1C do
local _l7B73802DF58B8A8B = _lC2D63E150EEBDA1C[i]
if not _l7824BEF29C8EC033(_l7B73802DF58B8A8B._lAF74CC77B7B14AFC, _l7B73802DF58B8A8B._l637A4033B35D7780, _l7B73802DF58B8A8B._l097DDFF30D2AF21B) then
_l3ACA64255A593CB7(_l7B73802DF58B8A8B._lDB160C0F87126763 .. (_xd("1pSPgpPWlZ6TlZ3WkJefmpOS",246)))
return false
end
end
for i = 1, #_lC2D63E150EEBDA1C do
local _l7B73802DF58B8A8B = _lC2D63E150EEBDA1C[i]
if not _l6E6AC4C7237DE420(_l7B73802DF58B8A8B._lAF74CC77B7B14AFC, _l7B73802DF58B8A8B._l097DDFF30D2AF21B, _lB3E26C06375AC204(_l7B73802DF58B8A8B._l637A4033B35D7780)) then
_l90A8366DAD1D433F(i - 1)
_l3ACA64255A593CB7(_l7B73802DF58B8A8B._lDB160C0F87126763 .. (_xd("Xg4fCh0WXgkMFwobXhgfFxIbGg==",126)))
return false
end
_l7B73802DF58B8A8B.owns = true
end
_l539E4BA02CDDDD7A = true
_lB1AECF6511B947E6()
return true
end
local _l93A0F5D91FBDC005 _lFDF0503FF863DB49()
if not _l3438D5525613D2FC then
return
end
_l9B5BCDE21142C171()
for i = #_lC2D63E150EEBDA1C, 1, -1 do
local _l7B73802DF58B8A8B = _lC2D63E150EEBDA1C[i]
if _l7B73802DF58B8A8B.owns and _l5B80B7C0F4F79164(_l7B73802DF58B8A8B._lAF74CC77B7B14AFC, _l7B73802DF58B8A8B._l097DDFF30D2AF21B) then
_l6E6AC4C7237DE420(_l7B73802DF58B8A8B._lAF74CC77B7B14AFC, _l7B73802DF58B8A8B._l637A4033B35D7780, _lB3E26C06375AC204(_l7B73802DF58B8A8B._l637A4033B35D7780))
end
_l7B73802DF58B8A8B.owns = false
end
_l539E4BA02CDDDD7A = false
_lB1AECF6511B947E6()
end
local _lC9A13177EA39B32D = 0
local _l867764C0221B9C88 = 0
local _l93A0F5D91FBDC005 _l8D89496FF6E624F0(t)
return t * t * ((90907 + 90904 - 90904) - (74203 + 74201 - 74201) * t)
end
local _l93A0F5D91FBDC005 _l5EC17EB0DFC31D9F(_l43ED761104D41485, duration_ms)
local _l0F5191CA1603861C = duration_ms * 0.001
if _l43ED761104D41485 >= _l0F5191CA1603861C then
return MAX_ALPHA
end
local _l861DF5F3FC680167 = math.floor(_l8D89496FF6E624F0(_l43ED761104D41485 / _l0F5191CA1603861C) * MAX_ALPHA + 0.5)
if _l861DF5F3FC680167 < 1 then
_l861DF5F3FC680167 = 1
end
if _l861DF5F3FC680167 > MAX_ALPHA then
_l861DF5F3FC680167 = MAX_ALPHA
end
return _l861DF5F3FC680167
end
local _l93A0F5D91FBDC005 _lD48CB136588E0FB3(_l5E798EB691F85945, duration_ms, _lD877CAA49EA048B6)
local _l26F7CE0865D5D59E = math.floor(_lD877CAA49EA048B6 * _lD337B6D2843AA025 * (1000 * 1) / duration_ms + 0.5)
if _l26F7CE0865D5D59E < 1 then
_l26F7CE0865D5D59E = 1
end
local _l9B2C3E3826A7F46D = _l5E798EB691F85945 - _l26F7CE0865D5D59E
return _l9B2C3E3826A7F46D > _l297643571B133627 and _l9B2C3E3826A7F46D or _l297643571B133627
end
local _l93A0F5D91FBDC005 update_animation()
if not _l539E4BA02CDDDD7A then
return
end
if globals.framecount ~= nil then
local _l62C614041B9FE9F5 = globals.framecount()
if _l62C614041B9FE9F5 == _l547791AC9CB13743 then
return
end
_l547791AC9CB13743 = _l62C614041B9FE9F5
end
_lDAFCAA4195F639C5()
local _l0035E1A646F60677 = globals.realtime()
local _l058127D7F1EA5CBE = _l1232115E0E1EA9EE[0]
if (990*7 - 990*6 == 990) then
  local _v4A4833C8 = math.sqrt(432240)
  local _vC2E70F91 = string.len(tostring(_v4A4833C8))
  if _vC2E70F91 > 1 then _vC2E70F91 = _vC2E70F91 + 1 end
end
local _lE957D1418489261F = _lA92E7AACB80891F5[0]
local _lCD85B31C11EF86A2 = _l058127D7F1EA5CBE == 0 and _l652AC52288EDDC0A ~= 0
local _l6A32E85C89751F5C = _lE957D1418489261F == 0 and _lA62A2B8B0CF8F182 ~= 0
if _lCD85B31C11EF86A2 or _l6A32E85C89751F5C then
_l0115C065007BF190 = _l0035E1A646F60677
if _lCD85B31C11EF86A2 then
_lC9A13177EA39B32D = 0
end
if _l6A32E85C89751F5C then
_l867764C0221B9C88 = 0
end
_l652AC52288EDDC0A = _l058127D7F1EA5CBE
_lA62A2B8B0CF8F182 = _lE957D1418489261F
return
end
local _lD877CAA49EA048B6 = _l0035E1A646F60677 - _l0115C065007BF190
_l0115C065007BF190 = _l0035E1A646F60677
if _lD877CAA49EA048B6 <= 0 then
_l652AC52288EDDC0A = _l058127D7F1EA5CBE
_lA62A2B8B0CF8F182 = _lE957D1418489261F
return
end
if _l058127D7F1EA5CBE < MAX_ALPHA then
_lC9A13177EA39B32D = _lC9A13177EA39B32D + _lD877CAA49EA048B6
_l1232115E0E1EA9EE[0] = _l5EC17EB0DFC31D9F(_lC9A13177EA39B32D, _l3342CE98CF38D235)
end
if _lE957D1418489261F < MAX_ALPHA then
_l867764C0221B9C88 = _l867764C0221B9C88 + _lD877CAA49EA048B6
_lA92E7AACB80891F5[0] = _l5EC17EB0DFC31D9F(_l867764C0221B9C88, _l4694F262E30D2832)
end
for i = 0, HOVER_SLOT_COUNT - 1 do
if _lA079505D96A364DB[i] == 0 and _l0512F87B10ECC280[i] > _l297643571B133627 then
_l0512F87B10ECC280[i] = _lD48CB136588E0FB3(_l0512F87B10ECC280[i], _l3342CE98CF38D235, _lD877CAA49EA048B6)
end
end
_l652AC52288EDDC0A = _l1232115E0E1EA9EE[0]
_lA62A2B8B0CF8F182 = _lA92E7AACB80891F5[0]
end
local _l93A0F5D91FBDC005 _lD6B936259A0A87B9()
if _l52CBA646B02A229D then
return
end
client.set_event_callback('paint', update_animation)
client.set_event_callback('paint_ui', update_animation)
_l52CBA646B02A229D = true
end
local _l93A0F5D91FBDC005 _l43A2C85FA1657C25()
if _l3438D5525613D2FC then
return true
end
local ok, _l92B471B55191BA77, message = pcall(_l93A0F5D91FBDC005()
local _lDD25B177BDA074A0, resolve_error = _l0B2E0A01A4E98044()
if _lDD25B177BDA074A0 == nil then
return false, resolve_error
end
local _lEE9AB829D0000D3C = _lDD25B177BDA074A0.alloc(CAVE_SIZE)
if _lEE9AB829D0000D3C == nil then
return false, (_xd("tIuQlpeDjqOOjo2BwoSDi46Hhg==",226))
end
local _lBA1D7BB4ECDF3436 = tonumber(_lE0A6FEE53F98CA59((_xd("gp6Zg4eDhaiD",247)), _lEE9AB829D0000D3C))
if _lBA1D7BB4ECDF3436 == nil or _lBA1D7BB4ECDF3436 == 0 then
return false, (_xd("blFKTE1ZVHlUVFdbGF5ZUVRdXA==",56))
end
_l9E623E963C6C6084 = _lDD25B177BDA074A0
_l0113641AABC31191 = _lEE9AB829D0000D3C
_l8424985DCA5DCBE5 = _lBA1D7BB4ECDF3436
_l3F6E1CE4D7E4E9AF = {
select = _l8424985DCA5DCBE5,
draw = _l8424985DCA5DCBE5 + 0x080,
_lDA5FF1763D2456B6 = _l8424985DCA5DCBE5 + 0x180,
_l2E042F1CBFD735FC = _l8424985DCA5DCBE5 + 0x300,
_l78206F8104A676E4 = _l8424985DCA5DCBE5 + 0x400
}
_lF068BF4AAE0E2A0E = {
_lC32E23DC8F791E4A = _l3F6E1CE4D7E4E9AF._l2E042F1CBFD735FC,
old_tab = _l3F6E1CE4D7E4E9AF._l2E042F1CBFD735FC + 0x04,
new_tab = _l3F6E1CE4D7E4E9AF._l2E042F1CBFD735FC + 0x08,
_l9D764CD076178194 = _l3F6E1CE4D7E4E9AF._l2E042F1CBFD735FC + 0x0c,
_lA92E7AACB80891F5 = _l3F6E1CE4D7E4E9AF._l2E042F1CBFD735FC + 0x10,
render_alpha = _l3F6E1CE4D7E4E9AF._l2E042F1CBFD735FC + 0x14,
_lBEF2BB163962D361 = _l3F6E1CE4D7E4E9AF._l2E042F1CBFD735FC + 0x18,
renderer_ready = _l3F6E1CE4D7E4E9AF._l2E042F1CBFD735FC + 0x1c,
_lA079505D96A364DB = _l3F6E1CE4D7E4E9AF._l2E042F1CBFD735FC + 0x20,
_l0512F87B10ECC280 = _l3F6E1CE4D7E4E9AF._l2E042F1CBFD735FC + 0x60
}
_l2E042F1CBFD735FC = _lE0A6FEE53F98CA59((_xd("+ubh+7y90Pul",143)), _l3F6E1CE4D7E4E9AF._l2E042F1CBFD735FC)
_l1232115E0E1EA9EE = _lE0A6FEE53F98CA59((_xd("XkJFXxgZdF8B",43)), _lF068BF4AAE0E2A0E._l9D764CD076178194)
_lA92E7AACB80891F5 = _lE0A6FEE53F98CA59((_xd("yNTTyY6P4smX",189)), _lF068BF4AAE0E2A0E._lA92E7AACB80891F5)
_lA079505D96A364DB = _lE0A6FEE53F98CA59((_xd("dGhvdTIzXnUr",1)), _lF068BF4AAE0E2A0E._lA079505D96A364DB)
_l0512F87B10ECC280 = _lE0A6FEE53F98CA59((_xd("f2Nkfjk4VX4g",10)), _lF068BF4AAE0E2A0E._l0512F87B10ECC280)
_l36DDF500D6FA4569 = false
_lB615E5AC2DC1E279 = 0
_lBEF2BB163962D361 = 0
_lF36ACF0F9DBF7870 = 0
for i = 1, #_l8B9CFC107C0D5319 do
_l8B9CFC107C0D5319[i]._l637A4033B35D7780 = nil
_l8B9CFC107C0D5319[i]._l78206F8104A676E4 = nil
end
_l5129F650F698F89E()
local _l3A2F3974008C1700 = _l0C7D94C332DEF112()
ffi._l5B75403142A2939E(_lE0A6FEE53F98CA59((_xd("7fTy/7E=",155)), _l3F6E1CE4D7E4E9AF.select), _l3A2F3974008C1700.select, _lB3E26C06375AC204(_l3A2F3974008C1700.select))
ffi._l5B75403142A2939E(_lE0A6FEE53F98CA59((_xd("jZSSn9E=",251)), _l3F6E1CE4D7E4E9AF.draw), _l3A2F3974008C1700.draw, _lB3E26C06375AC204(_l3A2F3974008C1700.draw))
ffi._l5B75403142A2939E(_lE0A6FEE53F98CA59((_xd("y9LU2Zc=",189)), _l3F6E1CE4D7E4E9AF._lDA5FF1763D2456B6), _l3A2F3974008C1700._lDA5FF1763D2456B6, _lB3E26C06375AC204(_l3A2F3974008C1700._lDA5FF1763D2456B6))
_lC2D63E150EEBDA1C = _l40BB57D46DD3BBC4()
_l539E4BA02CDDDD7A = false
_l0115C065007BF190 = globals.realtime()
_l652AC52288EDDC0A = MAX_ALPHA
_lA62A2B8B0CF8F182 = MAX_ALPHA
_l547791AC9CB13743 = -1
_l3438D5525613D2FC = true
return true
end)
if not ok then
_l3438D5525613D2FC = false
_l539E4BA02CDDDD7A = false
_l3ACA64255A593CB7((_xd("nZqdgJ2VmJ2OlYCdm5rUkpWdmJGQztQ=",244)) .. tostring(_l92B471B55191BA77))
return false
end
if not _l92B471B55191BA77 then
_l3438D5525613D2FC = false
_l539E4BA02CDDDD7A = false
_l3ACA64255A593CB7(message or (_xd("3tnew97W297N1sPe2NmX0dbe29LT",183)))
return false
end
return true
end
_l93A0F5D91FBDC005 _l7B33F3C572CC3B06.set_enabled(_l861DF5F3FC680167)
if not _l861DF5F3FC680167 then
_lFDF0503FF863DB49()
return true
end
if not _l43A2C85FA1657C25() then
return false
end
if not _l8E80CFF86E45280B() then
_lFDF0503FF863DB49()
return false
end
_lD6B936259A0A87B9()
return true
end
_l93A0F5D91FBDC005 _l7B33F3C572CC3B06.shutdown()
_lFDF0503FF863DB49()
end
end
local _l5A9EFFC9F171483F do
_l5A9EFFC9F171483F = { }
local _lE0A6FEE53F98CA59 = ffi._lE0A6FEE53F98CA59
local _lBDF2B42F6D73EFD0 = 0x43372D89
local _l5D50E67229E6E0E2 = 0x40
local _l589C768CF0340227 = ffi.new((_xd("qbWyqOSDqIft74E=",220)), {
0xF7, 0x40, 0x04, 0x00, 0x00, 0x02, 0x00,
0x0F, 0x84, 0x94, 0x04, 0x00, 0x00
})
local _l19AC73F5B83AE79A = ffi.new((_xd("2sbB25fw2/SenPI=",175)))
ffi.fill(_l19AC73F5B83AE79A, ffi.sizeof(_l19AC73F5B83AE79A), 0x90)
local _l3438D5525613D2FC = false
local _l52CBA646B02A229D = false
local _lF8E1754D21D14193 = false
local _l31EF9A3A9F75191F = false
local _l9E623E963C6C6084
local _l85E5EAFB16A623DE = ffi.new((_xd("XUZbQU9GTUwIREdGT3MZdQ==",40)))
local _l93A0F5D91FBDC005 _l3ACA64255A593CB7(message)
client.error_log((_xd("zuT98Kji/eX4++vn/fyo7uHwsqg=",136)) .. tostring(message))
end
local _l93A0F5D91FBDC005 _l9DD8FD2A7818B67B(module, _lE3C59EDD252AE9F5)
local _lAF74CC77B7B14AFC = client._l9DD8FD2A7818B67B(module, _lE3C59EDD252AE9F5)
if _lAF74CC77B7B14AFC == nil then
return nil
end
return tonumber(_lE0A6FEE53F98CA59((_xd("n4OEnpqemLWe",234)), _lAF74CC77B7B14AFC))
end
local _l93A0F5D91FBDC005 _lE3D5110F825DAB64(call_site)
return _lE0A6FEE53F98CA59((_xd("PSEmPHt6FzxiYg==",72)), _lE0A6FEE53F98CA59((_xd("x9vcxoGA7cY=",178)), call_site) + (2 * 1))[0][0]
end
local _l93A0F5D91FBDC005 _l0B2E0A01A4E98044()
local _l7BF18D6BB414E38C = _l9DD8FD2A7818B67B('engine.dll', (_xd("9sjI9su/",142)))
local _l83E7D1B727F6735A = _l9DD8FD2A7818B67B('engine.dll', (_xd("vYODvfTwvYaGvYaGvYaGvYaGvYT2vYaGvYaGvYaGvYaGvYCHvfXw",197)))
local _lBF7E360301FA77B2 = _l9DD8FD2A7818B67B('engine.dll', (_xd("d0lJdz46d0xMd0xMd0xMd0xMdzc6d0w/dzg7dz9N",15)))
if not _l7BF18D6BB414E38C or not _l83E7D1B727F6735A or not _lBF7E360301FA77B2 then
return nil, (_xd("9MrN4vPqg9HG0MzP1cbRg9DKxM3C19bRxtCDxcLKz8bH",163))
end
local _lE95500C648E0E71B = _lE3D5110F825DAB64(_l83E7D1B727F6735A)
local _l5076139E76FCDA6D = _lE3D5110F825DAB64(_lBF7E360301FA77B2)
local _lC93164B7E496C124 = _lE0A6FEE53F98CA59((_xd("uqahu/z9kLvnkJCprry7rK6jo+Xm57qhvKaooaqr76ahu+PvuqG8pqihqqvvpqG74++6pqG7/P2Qu+PvrKChvLvvrKeuveXm",207)), _l7BF18D6BB414E38C)
local _l89B5C20E0734372E = _lE0A6FEE53F98CA59((_xd("KzcwKm1sASp2AQE4Py0qPT8yMnR3diswLTc5MDs6fjcwKnJ+KzAtNzkwOzp+NzAqcn49MTAtKn49Nj8sdHc=",94)), _l7BF18D6BB414E38C)
local _l7AC4E9B008EFC772 = _lE0A6FEE53F98CA59((_xd("0dbMkOfn3tnLzNvZ1NSSkZDN1svR39bd3JjR1syUmM3Wy9Hf1t3cmNHWzJSYztfR3JKUmM3Wy9Hf1t3cmNTX1t+UmM3Wy9Hf1t3cmNTX1t+UmM3Wy9Hf1t3cmNTX1t+SkQ==",184)), _l7BF18D6BB414E38C)
local _lCC282F332932AD74 = _l89B5C20E0734372E(_l5076139E76FCDA6D, 0, 'kernel32.dll')
if _lCC282F332932AD74 == 0 then
return nil, (_xd("CwUSDgUMU1JOBAwMQBIFEw8MFgVABgEJDAUE",96))
end
local _l34126368136E4ECD = _lC93164B7E496C124(_lE95500C648E0E71B, 0, _lCC282F332932AD74, 'VirtualProtect')
if _l34126368136E4ECD == 0 then
return nil, (_xd("+Mfc2tvPwv7cwdrLzdqO3MvdwcLYy47Iz8fCy8o=",174))
end
return {
protect = _l93A0F5D91FBDC005(_lAF74CC77B7B14AFC, _l2742BF7C296EC261, protection, _l85E5EAFB16A623DE)
return _l7AC4E9B008EFC772(_l34126368136E4ECD, 0, _lAF74CC77B7B14AFC, _l2742BF7C296EC261, protection, _l85E5EAFB16A623DE)
end
}
end
local _l93A0F5D91FBDC005 _l41610B54B7E09DB6(_lAF74CC77B7B14AFC, _l5E432A44CEEEFD31, _l2742BF7C296EC261)
local ptr = _lE0A6FEE53F98CA59((_xd("LDA3LWEGLXM=",89)), _lAF74CC77B7B14AFC)
for i = 0, _l2742BF7C296EC261 - 1 do
if ptr[i] ~= _l5E432A44CEEEFD31[i] then
return false
end
end
return true
end
local _l93A0F5D91FBDC005 _l6E6AC4C7237DE420(_lAF74CC77B7B14AFC, _l5E432A44CEEEFD31, _l2742BF7C296EC261)
local ptr = _lE0A6FEE53F98CA59((_xd("Z354dTs=",17)), _lAF74CC77B7B14AFC)
if _l9E623E963C6C6084.protect(ptr, _l2742BF7C296EC261, _l5D50E67229E6E0E2, _l85E5EAFB16A623DE) == 0 then
return false
end
ffi._l5B75403142A2939E(ptr, _l5E432A44CEEEFD31, _l2742BF7C296EC261)
_l9E623E963C6C6084.protect(ptr, _l2742BF7C296EC261, _l85E5EAFB16A623DE[0], _l85E5EAFB16A623DE)
return true
end
local _l93A0F5D91FBDC005 _l8E80CFF86E45280B()
local _l2742BF7C296EC261 = ffi.sizeof(_l589C768CF0340227)
if _l41610B54B7E09DB6(_lBDF2B42F6D73EFD0, _l19AC73F5B83AE79A, _l2742BF7C296EC261) then
return true
end
if _l31EF9A3A9F75191F then
_l31EF9A3A9F75191F = false
_l3ACA64255A593CB7((_xd("jJ2In5Tck4uSmY6PlJWM3JCTj4g=",252)))
return false
end
if not _l41610B54B7E09DB6(_lBDF2B42F6D73EFD0, _l589C768CF0340227, _l2742BF7C296EC261) then
_l3ACA64255A593CB7((_xd("Bh0QAUQHDAEHD0QCBQ0IAQA=",100)))
return false
end
if not _l6E6AC4C7237DE420(_lBDF2B42F6D73EFD0, _l19AC73F5B83AE79A, _l2742BF7C296EC261) then
_l3ACA64255A593CB7((_xd("cU5VU1JGS3dVSFNCRFMHQUZOS0JD",39)))
return false
end
_l31EF9A3A9F75191F = true
return true
end
local _l93A0F5D91FBDC005 _lFDF0503FF863DB49()
if not _l3438D5525613D2FC or not _l31EF9A3A9F75191F then
return
end
local _l2742BF7C296EC261 = ffi.sizeof(_l589C768CF0340227)
if _l41610B54B7E09DB6(_lBDF2B42F6D73EFD0, _l19AC73F5B83AE79A, _l2742BF7C296EC261) then
if not _l6E6AC4C7237DE420(_lBDF2B42F6D73EFD0, _l589C768CF0340227, _l2742BF7C296EC261) then
_l3ACA64255A593CB7((_xd("ChsOGRJaCB8JDhUIH1ocGxMWHx4=",122)))
return
end
end
_l31EF9A3A9F75191F = false
end
local _l93A0F5D91FBDC005 _lBD1B1E4A206A335D()
local _l877CBA071C8D35D3 = entity.get_local_player()
if not _l877CBA071C8D35D3 or _l877CBA071C8D35D3 == 0 or not entity._l3A0196851DA0B630(_l877CBA071C8D35D3) then
return false
end
return entity.get_prop(_l877CBA071C8D35D3, 'm_bIsScoped') == 1
end
local _l93A0F5D91FBDC005 _lEBA3E5BFA920F63F()
if not _lF8E1754D21D14193 or not _lBD1B1E4A206A335D() then
_lFDF0503FF863DB49()
return true
end
if _l8E80CFF86E45280B() then
return true
end
_lF8E1754D21D14193 = false
_lFDF0503FF863DB49()
return false
end
local _l93A0F5D91FBDC005 _lD6B936259A0A87B9()
if _l52CBA646B02A229D then
return
end
client.set_event_callback('setup_command', _lEBA3E5BFA920F63F)
client.set_event_callback('paint', _lEBA3E5BFA920F63F)
_l52CBA646B02A229D = true
end
local _l93A0F5D91FBDC005 _l43A2C85FA1657C25()
if _l3438D5525613D2FC then
return true
end
local ok, _l92B471B55191BA77, message = pcall(_l93A0F5D91FBDC005()
local _lDD25B177BDA074A0, resolve_error = _l0B2E0A01A4E98044()
if _lDD25B177BDA074A0 == nil then
return false, resolve_error
end
_l9E623E963C6C6084 = _lDD25B177BDA074A0
_l3438D5525613D2FC = true
return true
end)
if not ok then
_l9E623E963C6C6084 = nil
_l3438D5525613D2FC = false
_l3ACA64255A593CB7((_xd("Z2BnemdvYmd0b3pnYWAuaG9nYmtqNC4=",14)) .. tostring(_l92B471B55191BA77))
return false
end
if not _l92B471B55191BA77 then
_l9E623E963C6C6084 = nil
_l3438D5525613D2FC = false
_l3ACA64255A593CB7(message or (_xd("zsnO087Gy87dxtPOyMmHwcbOy8LD",167)))
return false
end
return true
end
_l93A0F5D91FBDC005 _l5A9EFFC9F171483F.set_enabled(_l861DF5F3FC680167)
if not _l861DF5F3FC680167 then
_lF8E1754D21D14193 = false
_lFDF0503FF863DB49()
return true
end
if not _l43A2C85FA1657C25() then
_lF8E1754D21D14193 = false
return false
end
_lF8E1754D21D14193 = true
if not _lEBA3E5BFA920F63F() then
return false
end
_lD6B936259A0A87B9()
return true
end
_l93A0F5D91FBDC005 _l5A9EFFC9F171483F.shutdown()
_lF8E1754D21D14193 = false
_lFDF0503FF863DB49()
end
end
_l422CA01953F92F19((_xd("JCM2MDJ3YXd6dzY5Pjo2Iz44OXd8dz0iOickNDgiI3c0ODkjJTg7OzIlJA==",87)))
local _l3EDDA27E3A542109 do
_l3EDDA27E3A542109 = { }
local _l5ECAFF83D362BF8C = (_xd("Z210eV5ydWB1cg==",1))
local _l6309B1F6F01DEB0C = database.read(_l5ECAFF83D362BF8C)
if type(_l6309B1F6F01DEB0C) ~= (_xd("2M3OwMk=",172)) then
_l6309B1F6F01DEB0C = { }
end
_l3EDDA27E3A542109._lB903522459354397 = {
_lBA80EF20F0474F9E = tonumber(_l6309B1F6F01DEB0C._lBA80EF20F0474F9E) or 0,
_lDB22C741A1BAAD23 = tonumber(_l6309B1F6F01DEB0C._lDB22C741A1BAAD23) or 0,
assists = tonumber(_l6309B1F6F01DEB0C.assists) or 0,
hours = tonumber(_l6309B1F6F01DEB0C.hours) or 0
}
_l3EDDA27E3A542109._l09CC23F329A5EF13 = { _lBA80EF20F0474F9E = 0, _lDB22C741A1BAAD23 = 0, assists = 0 }
local _l4560B3A9A5CC5EA9 = globals.realtime()
local _l7286E0418111DEE1 = 0
local _lF5EB0CB7AEAE51AC = globals.realtime()
local _l93A0F5D91FBDC005 _l145D5A91A37B5F78()
return globals.realtime() - _l4560B3A9A5CC5EA9
end
local _l93A0F5D91FBDC005 _lBE4478EA710C89B8(_lBA80EF20F0474F9E, _lDB22C741A1BAAD23)
return _lDB22C741A1BAAD23 > 0 and _lBA80EF20F0474F9E / _lDB22C741A1BAAD23 or _lBA80EF20F0474F9E
end
local _l93A0F5D91FBDC005 _l09A69597EBB93CEF()
local _lB903522459354397 = math.floor(_l145D5A91A37B5F78())
return string.format('%02d:%02d:%02d',
math.floor(_lB903522459354397 / (41884 + 38284 - 38284)),
math.floor(_lB903522459354397 % (3600 + (2566 - 2566)) / -(-60)),
_lB903522459354397 % (60 + (8029 - 8029))
)
end
_l93A0F5D91FBDC005 _l3EDDA27E3A542109.flush()
local _l43ED761104D41485 = _l145D5A91A37B5F78() - _l7286E0418111DEE1
_l7286E0418111DEE1 = _l145D5A91A37B5F78()
_lF5EB0CB7AEAE51AC = globals.realtime()
_l3EDDA27E3A542109._lB903522459354397.hours = _l3EDDA27E3A542109._lB903522459354397.hours + _l43ED761104D41485 / (3600 + (1348 - 1348))
database.write(_l5ECAFF83D362BF8C, {
_lBA80EF20F0474F9E = _l3EDDA27E3A542109._lB903522459354397._lBA80EF20F0474F9E,
_lDB22C741A1BAAD23 = _l3EDDA27E3A542109._lB903522459354397._lDB22C741A1BAAD23,
assists = _l3EDDA27E3A542109._lB903522459354397.assists,
hours = _l3EDDA27E3A542109._lB903522459354397.hours
})
end
_l93A0F5D91FBDC005 _l3EDDA27E3A542109.tick()
if globals.realtime() - _lF5EB0CB7AEAE51AC > (180 * 1) / 3 then
_l3EDDA27E3A542109.flush()
end
end
_l93A0F5D91FBDC005 _l3EDDA27E3A542109.reset()
_l3EDDA27E3A542109._l09CC23F329A5EF13 = { _lBA80EF20F0474F9E = 0, _lDB22C741A1BAAD23 = 0, assists = 0 }
_l3EDDA27E3A542109._lB903522459354397 = { _lBA80EF20F0474F9E = 0, _lDB22C741A1BAAD23 = 0, assists = 0, hours = 0 }
_l7286E0418111DEE1 = _l145D5A91A37B5F78()
_l3EDDA27E3A542109.flush()
end
_l3EDDA27E3A542109.ref = nil
_l93A0F5D91FBDC005 _l3EDDA27E3A542109.display()
local ref = _l3EDDA27E3A542109.ref
if ref == nil then
return
end
local s, _lB903522459354397 = _l3EDDA27E3A542109._l09CC23F329A5EF13, _l3EDDA27E3A542109._lB903522459354397
ref._l09CC23F329A5EF13:set(string.format((_xd("KR8JCRMVFEBaXx5aERMWFglaVVpfHloeHxsOEglaVVpfHlobCQkTCQ4J",122)), s._lBA80EF20F0474F9E, s._lDB22C741A1BAAD23, s.assists))
ref.session_kd:set(string.format((_xd("GC44OCIkJWsAZA9xa25leS0=",75)), _lBE4478EA710C89B8(s._lBA80EF20F0474F9E, s._lDB22C741A1BAAD23)))
ref._lB903522459354397:set(string.format((_xd("ZV5FUF0LERRVEVpYXV1CER4RFFURVVRQRVlCER4RFFURUEJCWEJFQg==",49)), _lB903522459354397._lBA80EF20F0474F9E, _lB903522459354397._lDB22C741A1BAAD23, _lB903522459354397.assists))
ref.total_kd:set(string.format((_xd("SnFqf3I+VTFaJD47MCx4",30)), _lBE4478EA710C89B8(_lB903522459354397._lBA80EF20F0474F9E, _lB903522459354397._lDB22C741A1BAAD23)))
ref.hours:set(string.format((_xd("WWVocH1gZGwzKSwnOG8pYQ==",9)), _lB903522459354397.hours + (_l145D5A91A37B5F78() - _l7286E0418111DEE1) / (3600 + (7554 - 7554))))
ref._l145D5A91A37B5F78:set(string.format((_xd("7cjM0dXdgpidyw==",184)), _l09A69597EBB93CEF()))
end
client.set_event_callback('player_death', _l93A0F5D91FBDC005 (e)
local me = entity.get_local_player()
if me == nil then
return
end
local _l68AF0462A44C3CFC = client.userid_to_entindex(e._lEF4A947D6622E24D)
local _l97D87A44F00AA199 = e._l97D87A44F00AA199 ~= 0 and client.userid_to_entindex(e._l97D87A44F00AA199) or nil
local _l277EB798458AEE1B = e._l277EB798458AEE1B ~= nil and e._l277EB798458AEE1B ~= 0 and client.userid_to_entindex(e._l277EB798458AEE1B) or nil
if _l97D87A44F00AA199 == me and _l68AF0462A44C3CFC ~= me then
_l3EDDA27E3A542109._l09CC23F329A5EF13._lBA80EF20F0474F9E = _l3EDDA27E3A542109._l09CC23F329A5EF13._lBA80EF20F0474F9E + 1
_l3EDDA27E3A542109._lB903522459354397._lBA80EF20F0474F9E = _l3EDDA27E3A542109._lB903522459354397._lBA80EF20F0474F9E + 1
end
if _l68AF0462A44C3CFC == me then
_l3EDDA27E3A542109._l09CC23F329A5EF13._lDB22C741A1BAAD23 = _l3EDDA27E3A542109._l09CC23F329A5EF13._lDB22C741A1BAAD23 + 1
_l3EDDA27E3A542109._lB903522459354397._lDB22C741A1BAAD23 = _l3EDDA27E3A542109._lB903522459354397._lDB22C741A1BAAD23 + 1
end
if _l277EB798458AEE1B == me then
_l3EDDA27E3A542109._l09CC23F329A5EF13.assists = _l3EDDA27E3A542109._l09CC23F329A5EF13.assists + 1
_l3EDDA27E3A542109._lB903522459354397.assists = _l3EDDA27E3A542109._lB903522459354397.assists + 1
end
end)
client.set_event_callback('shutdown', _l93A0F5D91FBDC005 ()
_l3EDDA27E3A542109.flush()
end)
end
_l422CA01953F92F19((_xd("PjksKihtem1gbT4oPj4kIiNtPjksOT4=",77)))
local _l934A3DF2B1DD218E do
_l934A3DF2B1DD218E = { }
local _l93A0F5D91FBDC005 _l07C07072582A4EF1(str, key)
if str:_lF667154D37C32EF9 '\n' == nil then
str = str .. '\n'
end
return str .. key
end
local _l93A0F5D91FBDC005 _l4C2399758F3390E7(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
if _l777D8FF3F76AC3BE.type == (_xd("TVVMVElTRUxFQ1Q=",32)) then
if type(_l861DF5F3FC680167) ~= (_xd("YHV2eHE=",20)) then
return { }
end
local list = { }
for i = 1, #_l861DF5F3FC680167 do
list[i] = _l861DF5F3FC680167[i]
end
return list
end
if _l861DF5F3FC680167 == nil then
return { }
end
return { _l861DF5F3FC680167 }
end
local _l93A0F5D91FBDC005 _lE658F732C5F7D939(_l777D8FF3F76AC3BE, default_value)
local _l074A95A0563830FB = _l4C2399758F3390E7(_l777D8FF3F76AC3BE)
if #_l074A95A0563830FB == 0 then
if default_value == nil then
if _l777D8FF3F76AC3BE.type == (_xd("Jj4nPyI4LicuKD8=",75)) then
default_value = _l777D8FF3F76AC3BE.list
elseif _l777D8FF3F76AC3BE.type == (_xd("c3Zsaw==",31)) then
default_value = { }
for i = 1, #_l777D8FF3F76AC3BE.list do
default_value[i] = i
end
end
end
_l074A95A0563830FB = default_value
_l777D8FF3F76AC3BE:set(unpack(default_value))
end
_l777D8FF3F76AC3BE:set_callback(_l93A0F5D91FBDC005()
local _l861DF5F3FC680167 = _l4C2399758F3390E7(_l777D8FF3F76AC3BE)
if #_l861DF5F3FC680167 > 0 then
_l074A95A0563830FB = _l861DF5F3FC680167
else
_l777D8FF3F76AC3BE:set(unpack(_l074A95A0563830FB))
end
end)
end
local _l93A0F5D91FBDC005 _lCAE5D6BBCD5CC8E5(tab, container, _lDB160C0F87126763, list)
local _lF1DED2D961CA91B6 = ui.reference(
'Misc', 'Settings', 'Menu color'
)
local _l82446BB7241EC45E = { } do
local _l721ED02EF23C8EA5 = 0
for i = 1, #list do
local _l861DF5F3FC680167 = list[i]
local _lF71C9BF583A94334 = _l861DF5F3FC680167[1]
local _l8C2156AA08BBFA36 = _l861DF5F3FC680167[-(-2)]
local _lB90694C605679381 = _l721ED02EF23C8EA5
if _lF71C9BF583A94334 ~= nil then
_lB90694C605679381 = _lB90694C605679381 + 1
end
if (6829*7 - 6829*6 == 6829) then
  local _v34ED4328 = math.sqrt(142285)
  local _v9EAB6A3D = string.len(tostring(_v34ED4328))
  if _v9EAB6A3D > 4 then _v9EAB6A3D = _v9EAB6A3D + 1 end
end
_l82446BB7241EC45E[_l721ED02EF23C8EA5] = _lB90694C605679381
_l721ED02EF23C8EA5 = _lB90694C605679381 + #_l8C2156AA08BBFA36
end
end
local _l93A0F5D91FBDC005 _l44237FB622EC2B72(r, g, b, a)
return string.format(
'%02x%02x%02x%02x',
r, g, b, a
)
end
local _l93A0F5D91FBDC005 _l42E84206C3BA86AD(r, g, b, a)
local _lE5AB91D551F383E0 = { }
local hex = _l44237FB622EC2B72(
r, g, b, a
)
for i = 1, #list do
local _l861DF5F3FC680167 = list[i]
local _lF71C9BF583A94334 = _l861DF5F3FC680167[1]
local _l8C2156AA08BBFA36 = _l861DF5F3FC680167[(18 * 1) / 9]
if _lF71C9BF583A94334 ~= nil then
table.insert(_lE5AB91D551F383E0, string.format(
(_xd("jMieyJ4=",237)), hex, _lF71C9BF583A94334
))
end
for j = 1, #_l8C2156AA08BBFA36 do
local str = _l8C2156AA08BBFA36[j]
table.insert(_lE5AB91D551F383E0, string.format(
(_xd("BAkEAVc=",36)), str
))
end
end
return _lE5AB91D551F383E0
end
local _l70732E0AE0B2494A = _l42E84206C3BA86AD(
ui.get(_lF1DED2D961CA91B6)
)
local _lC92A4EE92A0BE9B2 = _lC32E23DC8F791E4A.new(
ui.new_listbox,
tab, container, _lDB160C0F87126763,
_l70732E0AE0B2494A
)
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l5F36F80261ECB33E(_l777D8FF3F76AC3BE)
_lC92A4EE92A0BE9B2:update(
_l42E84206C3BA86AD(
ui.get(_l777D8FF3F76AC3BE)
)
)
end
local _l93A0F5D91FBDC005 _l738AF7E2F04E23C4(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
local _lD0AE551BBB7F48E2 = _l82446BB7241EC45E[_l861DF5F3FC680167]
if _lD0AE551BBB7F48E2 == nil then
return
end
_l777D8FF3F76AC3BE:set(_lD0AE551BBB7F48E2)
end
_l54CCF31CFE02ABC4.set(
_lF1DED2D961CA91B6,
_l5F36F80261ECB33E
)
_lC92A4EE92A0BE9B2:set_callback(
_l738AF7E2F04E23C4
)
end
return _lC92A4EE92A0BE9B2
end
local _l93A0F5D91FBDC005 _l766B7DC660CA986C(tab, container, _lDB160C0F87126763, list)
local _l82446BB7241EC45E = { } do
for i = 1, #list do
local _l861DF5F3FC680167 = list[i]
local _lF71C9BF583A94334 = _l861DF5F3FC680167[1]
local _l8C2156AA08BBFA36 = _l861DF5F3FC680167[(2 * 1)]
_l82446BB7241EC45E[_lF71C9BF583A94334] = true
end
end
local _l93A0F5D91FBDC005 _l42E84206C3BA86AD()
local _lE5AB91D551F383E0 = { }
for i = 1, #list do
local _l861DF5F3FC680167 = list[i]
local _lF71C9BF583A94334 = _l861DF5F3FC680167[1]
local _l8C2156AA08BBFA36 = _l861DF5F3FC680167[(14 * 1) / 7]
table.insert(_lE5AB91D551F383E0, _lF71C9BF583A94334)
for j = 1, #_l8C2156AA08BBFA36 do
local str = _l8C2156AA08BBFA36[j]
table.insert(_lE5AB91D551F383E0, string.format(
(_xd("1djV0IY=",245)), str
))
end
end
return _lE5AB91D551F383E0
end
local _lEE7B80C6D5E44586 = _lC32E23DC8F791E4A.new(
ui.new_multiselect,
tab, container, _lDB160C0F87126763,
_l42E84206C3BA86AD()
)
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l738AF7E2F04E23C4(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
local _lD0AE551BBB7F48E2 = { }
for i = 1, #_l861DF5F3FC680167 do
local str = _l861DF5F3FC680167[i]
if not _l82446BB7241EC45E[str] then
table.insert(_lD0AE551BBB7F48E2, str)
end
end
_l777D8FF3F76AC3BE:set(_lD0AE551BBB7F48E2)
end
_lEE7B80C6D5E44586:set_callback(
_l738AF7E2F04E23C4
)
end
return _lEE7B80C6D5E44586
end
local _lD1C88AEFBAAE3AC9 = { }
local _l987B8C70098D6C6B, err_general = pcall(_l93A0F5D91FBDC005 ()
local _l93A0F5D91FBDC005 _l554248C2CC1C2C22(_lDB160C0F87126763, key, r, g, b)
local ok, _l777D8FF3F76AC3BE = pcall(_l93A0F5D91FBDC005 ()
return _lAE2482B62AD01298.push(
(_xd("g6S+r7isq6mv",202)), (_xd("IiArIDckKWs=",69)) .. key, _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Fake lag', _lDB160C0F87126763, r, g, b, -(-255)
)
)
end)
if ok then
return _l777D8FF3F76AC3BE
end
client.error_log((_xd("gIqTntzGhYmKiZOUxpaPhY2DlMa9",230)) .. _lDB160C0F87126763 .. (_xd("neCmoamspaTg7f7g",192)) .. tostring(_l777D8FF3F76AC3BE))
return { get = _l93A0F5D91FBDC005 () return r, g, b, (255 * 1) end, set_callback = _l93A0F5D91FBDC005 () end }
end
_lD1C88AEFBAAE3AC9.accent_from = _l554248C2CC1C2C22((_xd("hqSkoqmz",199)), (_xd("m5mZn5SOpZyIlZc=",250)), (46444 + 46306 - 46306), -(-92), (255 + (9214 - 9214)))
_lD1C88AEFBAAE3AC9.accent_to = _l554248C2CC1C2C22((_xd("IwEBBwwWQlA=",98)), (_xd("r62tq6C6kbqh",206)), (77 * 1), (1984 * 1) / 16, (255 * 1))
_l422CA01953F92F19((_xd("GR4LDQ9KXUQLSgsJCQ8EHkoJBQYFHxhKGgMJAQ8YGQ==",106)))
local _l93A0F5D91FBDC005 _l72EF13CFFD7B45A8()
return _l885AD57970B0DF46.to_hex(_lD1C88AEFBAAE3AC9.accent_from:get())
end
_l422CA01953F92F19((_xd("w8TR19WQh57SkMffwtTd0cLbkNjV3MDVwsM=",176)))
local WORDMARK = string.format('%s ⁓ %s', _lB6CD131F5793FF2D._lDB160C0F87126763, _lB6CD131F5793FF2D.build)
local GRADIENT_LIMIT = (56 * 1)
local GRADIENT_MAX_SEGMENTS = (4 + (9983 - 9983))
local _lB03376A30E048A2F = { }
local _l93A0F5D91FBDC005 _l7B3A1216CEE8768A(_l9591A67D938F86B3)
local _l8C3D19792B1E1E93 = _lB03376A30E048A2F[_l9591A67D938F86B3]
if _l8C3D19792B1E1E93 ~= nil then
return _l8C3D19792B1E1E93
end
local _l4F7DD4BA2C644907 = { }
local i = 1
while i <= #_l9591A67D938F86B3 do
local _l30070338AF843803 = _l9591A67D938F86B3:_l30070338AF843803(i)
local _l2742BF7C296EC261 = 1
if _l30070338AF843803 >= 0xF0 then _l2742BF7C296EC261 = (68 * 1) / 17
elseif _l30070338AF843803 >= 0xE0 then _l2742BF7C296EC261 = (47541 + 47538 - 47538)
elseif _l30070338AF843803 >= 0xC0 then _l2742BF7C296EC261 = (57161 + 57159 - 57159) end
_l4F7DD4BA2C644907[#_l4F7DD4BA2C644907 + 1] = _l9591A67D938F86B3:_l26F7CE0865D5D59E(i, i + _l2742BF7C296EC261 - 1)
i = i + _l2742BF7C296EC261
end
_lB03376A30E048A2F[_l9591A67D938F86B3] = _l4F7DD4BA2C644907
return _l4F7DD4BA2C644907
end
local _l93A0F5D91FBDC005 _l276303D9F7FDB2B1(_l9591A67D938F86B3, _l30CDDD28283140D6)
local _lC81018446DEC5DAC, g1, b1, a1 = _lD1C88AEFBAAE3AC9.accent_from:get()
local _l82F5FEA42BD4A752, g2, b2, a2 = _lD1C88AEFBAAE3AC9.accent_to:get()
local _l4F7DD4BA2C644907 = _l7B3A1216CEE8768A(_l9591A67D938F86B3)
local _l721ED02EF23C8EA5 = #_l4F7DD4BA2C644907
local _l0C4B100E97FD7638 = math.floor((GRADIENT_LIMIT - #_l9591A67D938F86B3) / (144 * 1) / 16)
if _l0C4B100E97FD7638 > GRADIENT_MAX_SEGMENTS then _l0C4B100E97FD7638 = GRADIENT_MAX_SEGMENTS end
if _l0C4B100E97FD7638 > _l721ED02EF23C8EA5 then _l0C4B100E97FD7638 = _l721ED02EF23C8EA5 end
if _l0C4B100E97FD7638 < (37360 + 37358 - 37358) then
return string.format((_xd("BEBVVx1AVVcdQFVXHUBVVx1AFg==",101)), _lC81018446DEC5DAC, g1, b1, a1, _l9591A67D938F86B3)
end
local _l5A80B7E7097D50B1 = math.ceil(_l721ED02EF23C8EA5 / _l0C4B100E97FD7638)
local _l2E6639B3EB5E9A85 = { }
local _lB90694C605679381 = 1
for segment = 1, _l0C4B100E97FD7638 do
local _lBC0E045E71A917E0 = table.concat(_l4F7DD4BA2C644907, '', _lB90694C605679381, math.min(_lB90694C605679381 + _l5A80B7E7097D50B1 - 1, _l721ED02EF23C8EA5))
if _lBC0E045E71A917E0 == '' then
break
end
local f = _l0C4B100E97FD7638 > 1 and (segment - 1) / (_l0C4B100E97FD7638 - 1) or 0
local r = _lC81018446DEC5DAC + (_l82F5FEA42BD4A752 - _lC81018446DEC5DAC) * f
local g = g1 + (g2 - g1) * f
local b = b1 + (b2 - b1) * f
local a = a1 + (a2 - a1) * f
local _l02BFAB0EF6E92B24 = math._l9C5D07C6A6ADB508(f * 4.0 - _l30CDDD28283140D6)
local _l4268C798214B2895 = _l02BFAB0EF6E92B24 > 0 and _l02BFAB0EF6E92B24 * _l02BFAB0EF6E92B24 * _l02BFAB0EF6E92B24 or 0
r = r + (-(-255) - r) * _l4268C798214B2895 * 0.85
g = g + ((255 + (9454 - 9454)) - g) * _l4268C798214B2895 * 0.85
b = b + ((25490 + 25235 - 25235) - b) * _l4268C798214B2895 * 0.85
_l2E6639B3EB5E9A85[#_l2E6639B3EB5E9A85 + 1] = string.format((_xd("F1NGRA5TRkQOU0ZEDlNGRA5TBQ==",118)),
math.floor(r), math.floor(g), math.floor(b), math.floor(a), _lBC0E045E71A917E0
)
_lB90694C605679381 = _lB90694C605679381 + _l5A80B7E7097D50B1
if _lB90694C605679381 > _l721ED02EF23C8EA5 then
break
end
end
local _lE5AB91D551F383E0 = table.concat(_l2E6639B3EB5E9A85)
if #_lE5AB91D551F383E0 > GRADIENT_LIMIT + (36 * 1) / 9 then
_lE5AB91D551F383E0 = string.format((_xd("L2t+fDZrfnw2a358Nmt+fDZrPQ==",78)), _lC81018446DEC5DAC, g1, b1, a1, _l9591A67D938F86B3)
end
return _lE5AB91D551F383E0
end
local _l93A0F5D91FBDC005 _lF79AD4EBDB343E8E(_l30CDDD28283140D6)
return _l276303D9F7FDB2B1(WORDMARK, _l30CDDD28283140D6)
end
local _l93A0F5D91FBDC005 _l2CC75F3ECF2C2027()
return _lF79AD4EBDB343E8E(0)
end
local _l93A0F5D91FBDC005 _l3DD64C4CE73CE824()
return string.format((_xd("oeWz5bM=",192)), _l72EF13CFFD7B45A8(), _lB6CD131F5793FF2D.user)
end
_l422CA01953F92F19((_xd("jomcmpjdytOe3YqSj5mQnI+W3Z+IlJGJ",253)))
_lD1C88AEFBAAE3AC9.script_name = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Fake lag', WORDMARK
)
_l422CA01953F92F19((_xd("b2h9e3k8KzJ/LTxrc254cX1udzxwfX55cDx/bnl9aHl4",28)))
pcall(_l93A0F5D91FBDC005 ()
_lD1C88AEFBAAE3AC9.script_name:set(_l2CC75F3ECF2C2027())
end)
_l422CA01953F92F19((_xd("EBcCBAZDVE0AUUMUDBEHDgIRCEMXBhsXQwITEw8KBgc=",99)))
_lD1C88AEFBAAE3AC9.script_user = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Fake lag', _lB6CD131F5793FF2D.user
)
pcall(_l93A0F5D91FBDC005 ()
_lD1C88AEFBAAE3AC9.script_user:set(_l3DD64C4CE73CE824())
end)
_l422CA01953F92F19((_xd("n5iNi4nM28KIzJ+PnoWcmMyAjY6JgJ8=",236)))
_lD1C88AEFBAAE3AC9.tabs = {
global = (_xd("NR4dEBMe",114)),
_lF25FDA0049197B89 = (_xd("IhEXFRIfBA==",112)),
_l22887641E343368B = (_xd("PhELFlIeFhI=",127)),
visuals = 'Visuals',
misc = 'Misc',
_lD31E75097C48C0AA = (_xd("+9fW3tHf",184))
}
_lD1C88AEFBAAE3AC9.tab = _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Fake lag', _l07C07072582A4EF1((_xd("lb22rQ==",216)), (_xd("g4ybhIqMmYSCgw==",237))), {
_lD1C88AEFBAAE3AC9.tabs.global,
_lD1C88AEFBAAE3AC9.tabs._lF25FDA0049197B89,
_lD1C88AEFBAAE3AC9.tabs._l22887641E343368B,
_lD1C88AEFBAAE3AC9.tabs.visuals,
_lD1C88AEFBAAE3AC9.tabs.misc,
_lD1C88AEFBAAE3AC9.tabs._lD31E75097C48C0AA
}
)
_l422CA01953F92F19((_xd("//jt6+msu6LprOHp4vms7+Ph7uPu4/Q=",140)))
_lD1C88AEFBAAE3AC9.page_antiaim = _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Fake lag', _l07C07072582A4EF1((_xd("ZldRUw==",54)), (_xd("GxQOExsTFw==",122))), {
(_xd("ppGNiICBlg==",228)), (_xd("vJ2enZaLkY6d",248)), (_xd("SWpue3p9anw=",15)), (_xd("2f7l+vTo4g==",145))
}
)
_lD1C88AEFBAAE3AC9.page_visuals = _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Fake lag', _l07C07072582A4EF1((_xd("JxYQEg==",119)), (_xd("PyA6PCglOg==",73))), {
(_xd("EDsyPTQ2ISA=",83)), (_xd("KwwWBxAEAwEH",98))
}
)
_lD1C88AEFBAAE3AC9.page_misc = _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Fake lag', _l07C07072582A4EF1((_xd("1eTi4A==",133)), (_xd("lJCKmg==",249))), {
'Miscellaneous', (_xd("FCAhOjcgLA==",85))
}
)
_l422CA01953F92F19((_xd("xMPW0NKXgJnRl8fW0NKX1Nja1djV2M/SxA==",183)))
local _lD6EDABFB68B8FE4D = {
[_lD1C88AEFBAAE3AC9.tabs.global] = -(-15),
[_lD1C88AEFBAAE3AC9.tabs._lF25FDA0049197B89] = 0,
[_lD1C88AEFBAAE3AC9.tabs._lD31E75097C48C0AA] = (154 * 1) / 11
}
local _l813C86E0E0FCB847 = { [(_xd("oJeLjoaHkA==",226))] = (6 + (3569 - 3569)), [(_xd("Q2JhYml0bnFi",7))] = (17 * 1), [(_xd("9tXRxMXC1cM=",176))] = (7 * 1), [(_xd("99DL1NrGzA==",191))] = (8 + (6378 - 6378)) }
local _lADF018D7BC2182DD = { [(_xd("ETozPDU3ICE=",82))] = (10 * 1), [(_xd("4sXfztnNysjO",171))] = (11 * 1) }
local _l48106468B3CD4061 = { ['Miscellaneous'] = 1, [(_xd("zPj54u/49A==",141))] = (4 + (4957 - 4957)) }
_l93A0F5D91FBDC005 _lD1C88AEFBAAE3AC9.get_page_item()
local tab = _lD1C88AEFBAAE3AC9.tab:get()
if tab == _lD1C88AEFBAAE3AC9.tabs._l22887641E343368B then return _lD1C88AEFBAAE3AC9.page_antiaim end
if tab == _lD1C88AEFBAAE3AC9.tabs.visuals then return _lD1C88AEFBAAE3AC9.page_visuals end
if tab == _lD1C88AEFBAAE3AC9.tabs.misc then return _lD1C88AEFBAAE3AC9.page_misc end
return nil
end
_l93A0F5D91FBDC005 _lD1C88AEFBAAE3AC9.get_category()
local tab = _lD1C88AEFBAAE3AC9.tab:get()
if tab == _lD1C88AEFBAAE3AC9.tabs._l22887641E343368B then
return _l813C86E0E0FCB847[_lD1C88AEFBAAE3AC9.page_antiaim:get()] or (60 * 1) / 10
end
if tab == _lD1C88AEFBAAE3AC9.tabs.visuals then
return _lADF018D7BC2182DD[_lD1C88AEFBAAE3AC9.page_visuals:get()] or (10 + (9538 - 9538))
end
if tab == _lD1C88AEFBAAE3AC9.tabs.misc then
return _l48106468B3CD4061[_lD1C88AEFBAAE3AC9.page_misc:get()] or 1
end
return _lD6EDABFB68B8FE4D[tab] or (30 * 1) / 2
end
_l422CA01953F92F19((_xd("BQIXERNWQVgRVhUXAhMRGQQPVhsXBgU=",118)))
local PAGE_TITLES = {
[0] = (_xd("uIuNj4iFng==",234)),
[1] = 'Miscellaneous',
[(24 * 1) / 6] = (_xd("cUVEX1JFSQ==",48)),
[(6 * 1)] = (_xd("8cba39fWwQ==",179)),
[(7 * 1)] = (_xd("YkFFUFFWQVc=",36)),
[(8 + (5822 - 5822))] = (_xd("/9jD3NLOxA==",183)),
[(289 * 1) / 17] = (_xd("IgMAAwgVDxAD",102)),
[(10 + (9373 - 9373))] = (_xd("9d7X2NHTxMU=",182)),
[(110 * 1) / 10] = (_xd("XnljcmVxdnRy",23)),
[(14 * 1)] = (_xd("tJiZkZ6QgoWWg56YmYQ=",247)),
[-(-15)] = (_xd("j6Snqqmk",200))
}
local SCRIPT_TITLE = _lB6CD131F5793FF2D._lDB160C0F87126763:_l26F7CE0865D5D59E(1, 1):upper() .. _lB6CD131F5793FF2D._lDB160C0F87126763:_l26F7CE0865D5D59E((16 * 1) / 8)
local _l93A0F5D91FBDC005 _lD2E1366266FB015E(_lF71C9BF583A94334)
return string.format('%s ⁓ %s', SCRIPT_TITLE, _lF71C9BF583A94334)
end
local _l93A0F5D91FBDC005 _l49B794175F7F8E6F(_lF71C9BF583A94334, _l30CDDD28283140D6)
return _l276303D9F7FDB2B1(_lD2E1366266FB015E(_lF71C9BF583A94334), _l30CDDD28283140D6 or 0)
end
_lD1C88AEFBAAE3AC9.page_header = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', _l49B794175F7F8E6F((_xd("yuHi7+zh",141)))
)
_lD1C88AEFBAAE3AC9.page_separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
local _lD7DF48C3D5093C6F = (_xd("AwgLBgUI",68))
_l93A0F5D91FBDC005 _lD1C88AEFBAAE3AC9.update_page_header(_l92438DCA10FB8565)
_lD7DF48C3D5093C6F = PAGE_TITLES[_l92438DCA10FB8565] or (_xd("LwcMFw==",98))
_lD1C88AEFBAAE3AC9.page_header:set(_l49B794175F7F8E6F(_lD7DF48C3D5093C6F))
end
_l93A0F5D91FBDC005 _lD1C88AEFBAAE3AC9.refresh_titles()
_lD1C88AEFBAAE3AC9.page_header:set(_l49B794175F7F8E6F(_lD7DF48C3D5093C6F))
_lD1C88AEFBAAE3AC9.stats.header:set(_l49B794175F7F8E6F((_xd("W1xJXFs=",8))))
_lD1C88AEFBAAE3AC9.script_user:set(_l3DD64C4CE73CE824())
end
_l93A0F5D91FBDC005 _lD1C88AEFBAAE3AC9.update_animation()
local _l30CDDD28283140D6 = globals.realtime() * (30 * 1) / 10
_lD1C88AEFBAAE3AC9.script_name:set(_lF79AD4EBDB343E8E(_l30CDDD28283140D6))
_lD1C88AEFBAAE3AC9.page_header:set(_l49B794175F7F8E6F(_lD7DF48C3D5093C6F, _l30CDDD28283140D6 + 0.8))
_lD1C88AEFBAAE3AC9.stats.header:set(_l49B794175F7F8E6F((_xd("UlVAVVI=",1)), _l30CDDD28283140D6 + 1.6))
end
_lD1C88AEFBAAE3AC9.accent_from:set_callback(_l93A0F5D91FBDC005 () _lD1C88AEFBAAE3AC9.refresh_titles() end)
_lD1C88AEFBAAE3AC9.accent_to:set_callback(_l93A0F5D91FBDC005 () _lD1C88AEFBAAE3AC9.refresh_titles() end)
_l422CA01953F92F19((_xd("EBcCBAZDVE0LQxMCBAZDCwYCBwYR",99)))
_lD1C88AEFBAAE3AC9.global = { } do
_lD1C88AEFBAAE3AC9.global.build = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', string.format((_xd("4tXJzMSagIXT",160)), _lB6CD131F5793FF2D.build)
)
_lD1C88AEFBAAE3AC9.global.user = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', string.format((_xd("Cy07LGR+ey0=",94)), _lB6CD131F5793FF2D.user)
)
_lD1C88AEFBAAE3AC9.global.discord = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', (_xd("rqO5qaW4rvDq",202)) .. _lB6CD131F5793FF2D.discord_short
)
_lD1C88AEFBAAE3AC9.global.telegram = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', (_xd("mouCi4mcj4PUzg==",238)) .. _lB6CD131F5793FF2D.telegram_short
)
_lD1C88AEFBAAE3AC9.global.copy_discord = _lC32E23DC8F791E4A.new(
ui.new_button, 'AA', 'Anti-aimbot angles', (_xd("CiY5MGkNIDoqJjstaSUgJyI=",73)), _l93A0F5D91FBDC005 ()
clipboard.set(_lB6CD131F5793FF2D.discord)
_lD71287999D1F9CFB._l92B471B55191BA77((_xd("IA0XBwsWAEQIDQoPRAcLFA0BAEo=",100)))
end
)
_lD1C88AEFBAAE3AC9.global.copy_telegram = _lC32E23DC8F791E4A.new(
ui.new_button, 'AA', 'Anti-aimbot angles', (_xd("roKdlM25iIGIip+MgM2BhIOG",237)), _l93A0F5D91FBDC005 ()
clipboard.set(_lB6CD131F5793FF2D.telegram)
_lD71287999D1F9CFB._l92B471B55191BA77((_xd("WWhhaGp/bGAtYWRjZi1uYn1kaGkj",13)))
end
)
_lD1C88AEFBAAE3AC9.global.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
end
_l422CA01953F92F19((_xd("Kyw5Pz14b3YxeD80Nzo5NHgoOT89",88)))
_lD1C88AEFBAAE3AC9.stats = { } do
_lD1C88AEFBAAE3AC9.stats.header = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Other', _l49B794175F7F8E6F((_xd("NDMmMzQ=",103)))
)
_lD1C88AEFBAAE3AC9.stats._l09CC23F329A5EF13 = _lC32E23DC8F791E4A.new(ui.new_label, 'AA', 'Other', (_xd("DDosLDYwMWV/b380NjMzLH9wf29/Ozo+Kzcs",95)))
_lD1C88AEFBAAE3AC9.stats.session_kd = _lC32E23DC8F791E4A.new(ui.new_label, 'AA', 'Other', (_xd("XWt9fWdhYC5FIUo0Lj4gPj4=",14)))
_lD1C88AEFBAAE3AC9.stats._lB903522459354397 = _lC32E23DC8F791E4A.new(ui.new_label, 'AA', 'Other', (_xd("aVJJXFEHHQ0dVlRRUU4dEh0NHVlYXElVTg==",61)))
_lD1C88AEFBAAE3AC9.stats.total_kd = _lC32E23DC8F791E4A.new(ui.new_label, 'AA', 'Other', (_xd("OQIZDAFNJkIpV01dQ11d",109)))
_lD1C88AEFBAAE3AC9.stats.hours = _lC32E23DC8F791E4A.new(ui.new_label, 'AA', 'Other', (_xd("Ei4jOzYrLyd4YnJscmIq",66)))
_lD1C88AEFBAAE3AC9.stats._l145D5A91A37B5F78 = _lC32E23DC8F791E4A.new(ui.new_label, 'AA', 'Other', (_xd("RGFleHx0KzEhISshISshIQ==",17)))
_lD1C88AEFBAAE3AC9.stats.reset = _lC32E23DC8F791E4A.new(
ui.new_button, 'AA', 'Other', (_xd("FSI0IjNnNDMmMy40My4kNA==",71)), _l93A0F5D91FBDC005 ()
if _lD1C88AEFBAAE3AC9.stats.on_reset ~= nil then
_lD1C88AEFBAAE3AC9.stats.on_reset()
end
end
)
_lD1C88AEFBAAE3AC9.stats.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Other', '\n'
)
end
local _l9639F8C97A0AA4C7 do
local _lF1DED2D961CA91B6 = ui.reference(
'Misc', 'Settings', 'Menu color'
)
local _l93A0F5D91FBDC005 _l5F36F80261ECB33E(_l777D8FF3F76AC3BE)
_lD1C88AEFBAAE3AC9.script_name:set(_l2CC75F3ECF2C2027())
_lD1C88AEFBAAE3AC9.script_user:set(_l3DD64C4CE73CE824())
_lD1C88AEFBAAE3AC9.refresh_titles()
end
_l54CCF31CFE02ABC4.set(
_lF1DED2D961CA91B6,
_l5F36F80261ECB33E
)
end
_l422CA01953F92F19((_xd("LCs+ODp/aHE1fywrPissfy8+ODo=",95)))
_l3EDDA27E3A542109.ref = _lD1C88AEFBAAE3AC9.stats
_lD1C88AEFBAAE3AC9.stats.on_reset = _l93A0F5D91FBDC005 ()
_l3EDDA27E3A542109.reset()
_l3EDDA27E3A542109.display()
_lD71287999D1F9CFB._l92B471B55191BA77((_xd("zun86fTu6fT+7r3v+O746bM=",157)))
end
_l934A3DF2B1DD218E._lD1C88AEFBAAE3AC9 = _lD1C88AEFBAAE3AC9
end)
if not _l987B8C70098D6C6B then
client.error_log((_xd("u7Gopef9sLizqPK6uLO4r7yx/b+xsr62/bu8tLG4uf3w4/0=",221)) .. tostring(err_general))
end
_l422CA01953F92F19((_xd("mp2IjozJ3sfYycTJjoyHjJuIhcmEjIecyYaC",233)))
local _lBD5F403BA71FC9C6 = { } do
local _lF25FDA0049197B89 = { } do
local _l96D871DBEA7B8298 = { } do
local _lD90348E6535F1823 = {
(_xd("yf3856jb5uH47fr7",136)),
(_xd("68rcyt3bj+rOyMPK",175))
}
_l96D871DBEA7B8298._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("lqWjoaarsA==",196)), (_xd("xM3Qwcf9zsfWysPOjMfMw8DOx8Y=",162)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("Qmt2Z2EkaGFwbGVo",4)), (_xd("BA0QAQc9DgcWCgMO",98)))
)
)
_l96D871DBEA7B8298._lA1751D8238566CFB = _lAE2482B62AD01298.push(
(_xd("Hi0rKS4jOA==",76)), (_xd("MTglNDIIOzIjPzY7eSAyNic4OSQ=",87)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("LB4aCxQVCA==",123)), (_xd("39bL2tzm1dzN0djV",185))), _lD90348E6535F1823
)
)
_l96D871DBEA7B8298._lB17914F567A7940B = _lAE2482B62AD01298.push(
(_xd("d0RCQEdKUQ==",37)), (_xd("Ymt2Z2FbaGFwbGVoKmlrYGE=",4)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("Xnx3dg==",19)), (_xd("7OX46e/V5u/+4uvm",138))), {
(_xd("VXR3cGR9ZQ==",17)),
(_xd("m76yvri6/+L/l4/w7Q==",223))
}
)
)
for i = 1, #_lD90348E6535F1823 do
local _lC483CC400CE8CA31 = _lD90348E6535F1823[i]
local list = { }
list.hitchance = _lAE2482B62AD01298.push(
(_xd("CTo8Pjk0Lw==",91)), (_xd("gImUhYO5ioOSjoeKyI6PkoWOh4iFg8g=",230)) .. _lC483CC400CE8CA31, _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(_lC483CC400CE8CA31 .. (_xd("FV1cQVZdVFtWUA==",53)), (_xd("ISg1JCIYKyIzLyYr",71))), -1, (79958 + 79858 - 79858), -1, true, '%', 1, {
[-1] = (_xd("W3Jy",20))
}
)
)
_l96D871DBEA7B8298[_lC483CC400CE8CA31] = list
end
_l96D871DBEA7B8298.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_lE658F732C5F7D939(_l96D871DBEA7B8298._lA1751D8238566CFB)
_l96D871DBEA7B8298._lD90348E6535F1823 = _lD90348E6535F1823
_lF25FDA0049197B89._l96D871DBEA7B8298 = _l96D871DBEA7B8298
end
local _lB5FB9C1A6743313C = { } do
_lB5FB9C1A6743313C._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("AjE3NTI/JA==",80)), (_xd("7fbr+f79x+r9+/D56v/9tv32+fr0/fw=",152)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("ekFcTklKD11KTEdOXUhK",47)), (_xd("S1BNX1hbYUxbXVZfTFlb",62)))
)
)
_lF25FDA0049197B89._lB5FB9C1A6743313C = _lB5FB9C1A6743313C
end
local _l84502D30214AA563 = { } do
_l84502D30214AA563._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("sIOFh4CNlg==",226)), (_xd("qbmSr7iqkqukteOoo6yvoaip",205)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("8OCU1sHTlNLdzA==",180)), (_xd("+OjD/un7w/r15A==",156)))
)
)
_lF25FDA0049197B89._l84502D30214AA563 = _l84502D30214AA563
end
local _lD558BC11008A63EF = { } do
_lD558BC11008A63EF._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("e0hOTEtGXQ==",41)), (_xd("0NHc3cvQ18zL597RwJbd1tna1N3c",184)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("aUhFRFJJTlVSAUdIWQ==",33)), (_xd("hoeKi52GgZqdsYiHlg==",238)))
)
)
_lF25FDA0049197B89._lD558BC11008A63EF = _lD558BC11008A63EF
end
local _l9C909DE9883F2227 = { } do
_l9C909DE9883F2227._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("3O/p6+zh+g==",142)), (_xd("xdrC39zMwNrb8MnG14HKwc7Nw8rL",175)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("ZFtDXl1NQVta",46)), (_xd("XUJaR0RUWEJD",55)))
)
)
_l9C909DE9883F2227._lF8E1754D21D14193:set_callback(_l93A0F5D91FBDC005(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
if not _l5A9EFFC9F171483F.set_enabled(_l777D8FF3F76AC3BE:get()) and _l861DF5F3FC680167 then
_l777D8FF3F76AC3BE:set(false)
end
end, true)
_lF25FDA0049197B89._l9C909DE9883F2227 = _l9C909DE9883F2227
end
local _l47A1A013B3C1C24D = { } do
_l47A1A013B3C1C24D._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("i7i+vLu2rQ==",217)), (_xd("IyI/OCgqJRQtIjNlLiUqKScuLw==",75)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("WXhlYnJwfzF3eGk=",17)), (_xd("p6a7vKyuoZCpprc=",207)))
)
)
_l47A1A013B3C1C24D.spread_samples = _lAE2482B62AD01298.push(
(_xd("0OPl5+Dt9g==",130)), (_xd("5OX4/+/t4tPq5fSi//z+6e3o0//t4fzg6f8=",140)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("XkU2ZWZkc3dyNmV3e2Z6c2U=",22)), (_xd("dXRpbn58c0J7dGU=",29)))
)
)
_l47A1A013B3C1C24D.sample_count = _lAE2482B62AD01298.push(
(_xd("SXp8fnl0bw==",27)), (_xd("S0pXUEBCTXxFSlsNUEJOU09GfEBMVk1X",35)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("6POA08HN0MzFgMPP1c7U",160)), (_xd("8PHs6/v59sf+8eA=",152))), (128 * 1), (512 + (3708 - 3708)), (8704 * 1) / 17
)
)
_l47A1A013B3C1C24D.fixed_seed_order = _lAE2482B62AD01298.push(
(_xd("cUJERkFMVw==",35)), (_xd("DA0QFwcFCjsCDRxKAg0cAQA7FwEBADsLFgABFg==",100)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("CBNgJik4JSRgMyUlJGAvMiQlMg==",64)), (_xd("Li8yNSUnKBkgLz4=",70)))
)
)
_l47A1A013B3C1C24D.percent_cap = { } do
_l47A1A013B3C1C24D.percent_cap._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("v4yKiI+CmQ==",237)), (_xd("6uv28eHj7N3k6/qs8ufw4efs9t3h4/Ks5+zj4O7n5g==",130)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("XFc0ZHFmd3F6YDR3dWQ=",20)), (_xd("7ezx9ubk69rj7P0=",133)))
)
)
_l47A1A013B3C1C24D.percent_cap._l861DF5F3FC680167 = _lAE2482B62AD01298.push(
(_xd("AjE3NTI/JA==",80)), (_xd("HRwBBhYUGyoTHA1bBRAHFhAbASoWFAVbAxQZABA=",117)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("BwxvIi43bz8qPSwqITs=",79)), (_xd("rK2wt6elqpuirbw=",196))), 1, -(-100), (76 + (7150 - 7150)), true, '%'
)
)
end
_l47A1A013B3C1C24D.hitbox_cap = { } do
_l47A1A013B3C1C24D.hitbox_cap._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("l6SioKeqsQ==",197)), (_xd("DQwRFgYECzoDDB1LDQwRBwodOgYEFUsACwQHCQAB",101)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("TFckbG1wZmt8JGdldA==",4)), (_xd("TE1QV0dFSntCTVw=",36)))
)
)
_l47A1A013B3C1C24D.hitbox_cap._l861DF5F3FC680167 = _lAE2482B62AD01298.push(
(_xd("nK+pq6yhug==",206)), (_xd("VVRJTl5cU2JbVEUTVVRJX1JFYl5cTRNLXFFIWA==",61)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("7vWGzs/SxMnew9U=",166)), (_xd("LC0wNyclKhsiLTw=",68))), 1, (7752 + 7733 - 7733), (1251 + 1233 - 1233)
)
)
end
_l47A1A013B3C1C24D.hitbox_mask = { } do
_l47A1A013B3C1C24D.hitbox_mask._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("8cLExsHM1w==",163)), (_xd("U1JPSFhaVWRdUkMVU1JPWVRDZFZaSFAVXlVaWVdeXw==",59)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("18y/9/br/fDnv/L+7PQ=",159)), (_xd("GxoHABASHSwVGgs=",115)))
)
)
_l47A1A013B3C1C24D.hitbox_mask._l861DF5F3FC680167 = _lAE2482B62AD01298.push(
(_xd("sYKEhoGMlw==",227)), (_xd("Jic6PS0vIBEoJzZgJic6LCE2ESMvPSVgOC8iOys=",78)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("ipHir6OxqeK0o663pw==",194)), (_xd("RkdaXU1PQHFIR1Y=",46))), 1, (255 + (9536 - 9536)), (3315 * 1) / 13
)
)
end
_l47A1A013B3C1C24D.distance_bypass = _lAE2482B62AD01298.push(
(_xd("HC8pKywhOg==",78)), (_xd("3N3Ax9fV2uvS3cya0N3HwNXa19Hr1s3E1cfH",180)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("gpnqrqO5vqukqa/qp6u5oeqos7qrubk=",202)), (_xd("HRwBBhYUGyoTHA0=",117)))
)
)
_l47A1A013B3C1C24D.spread_samples:set(true)
_l47A1A013B3C1C24D.fixed_seed_order:set(true)
_l47A1A013B3C1C24D.percent_cap._lF8E1754D21D14193:set(true)
_l47A1A013B3C1C24D.hitbox_cap._lF8E1754D21D14193:set(true)
_l47A1A013B3C1C24D.hitbox_mask._lF8E1754D21D14193:set(true)
_l47A1A013B3C1C24D.distance_bypass:set(true)
_lF25FDA0049197B89._l47A1A013B3C1C24D = _l47A1A013B3C1C24D
end
local _l47F94A046B63C111 = { } do
_l47F94A046B63C111._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("FiUjISYrMA==",68)), (_xd("h4KNio+agryFgpCXvJCUipeAi82GjYKBj4aH",227)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("ASQrLCk8JGUjJDYxZTYyLDEmLQ==",69)), (_xd("UFVaXVhNVWtSVUdAa0dDXUBXXA==",52)))
)
)
_lF25FDA0049197B89._l47F94A046B63C111 = _l47F94A046B63C111
end
_lBD5F403BA71FC9C6._lF25FDA0049197B89 = _lF25FDA0049197B89
end
local _l8C72F381EE48E2C7 = { } do
local _lF03279AF218F53CB = { } do
_lF03279AF218F53CB._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
'Miscellaneous', (_xd("hJKRvY2SlouPi5iHzIeMg4COh4Y=",226)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("Djg7aCc4PCElITIt",72)), (_xd("7fv41OT7/+Lm4vHu",139)))
)
)
_lF03279AF218F53CB.list = _lAE2482B62AD01298.push(
'Miscellaneous', (_xd("zNrZ9cXa3sPHw9DPhMbD2d4=",170)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("OAcDHhoeDRYDHhgZBA==",119)), (_xd("OiwvAzMsKDUxNSY5",92))), {
(_xd("kb+8vLc=",211)),
(_xd("W3V2dnQ=",25)),
(_xd("yeju7OH+",141)),
(_xd("gLuyt7ykoA==",211)),
(_xd("uJuZgp+OmA==",235)),
(_xd("yfjr7fD69fzq",153)),
(_xd("QXxjdmA=",19)),
(_xd("8M3a1dnd15TY3dPcwMc=",180)),
(_xd("WHRlNXFwYXR8eWY=",21)),
(_xd("GyktPCMibCkqKikvOD8=",76))
}
)
)
_lF03279AF218F53CB.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_lE658F732C5F7D939(_lF03279AF218F53CB.list, {
(_xd("e1VWVl0=",57)),
(_xd("ro+Ji4aZ",234)),
(_xd("t5SWjZCBlw==",228)),
(_xd("naC/qrw=",207)),
(_xd("z/Ll6ubi6Kvn4uzj//g=",139)),
(_xd("zvz46fb3ufz///z67eo=",153))
})
_l8C72F381EE48E2C7._lF03279AF218F53CB = _lF03279AF218F53CB
end
local _l2DA57ED13D5DF6AA = { } do
_l2DA57ED13D5DF6AA._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
'Miscellaneous', (_xd("GhwPHQYxGg8CBUALAA8MAgsK",110)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("KgwfDRZeCh8SFQ==",126)), (_xd("39nK2MP038rHwA==",171)))
)
)
_l2DA57ED13D5DF6AA.triggers = _lAE2482B62AD01298.push(
'Miscellaneous', (_xd("sbektq2asaSpruuxt6yioqC3tg==",197)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("iK61u7u5rq8=",220)), (_xd("293O3Mfw287DxA==",175))), {
(_xd("eVgWfV9aWg==",54)),
(_xd("4sON6cjM2cU=",173))
}
)
)
_l2DA57ED13D5DF6AA.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_lE658F732C5F7D939(_l2DA57ED13D5DF6AA.triggers, { (_xd("EjN9FjQxMQ==",93)), (_xd("QmMtSWhseWU=",13)) })
_l8C72F381EE48E2C7._l2DA57ED13D5DF6AA = _l2DA57ED13D5DF6AA
end
local _lA5E50DA1047BBA15 = { } do
_lA5E50DA1047BBA15._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
'Miscellaneous', (_xd("fHN+cWt+eDF6cX59c3p7",31)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("ORYbFA4bHQ==",122)), (_xd("Ul1QX0VQVg==",49)))
)
)
_lA5E50DA1047BBA15._l9591A67D938F86B3 = _lAE2482B62AD01298.push(
'Miscellaneous', (_xd("3tHc08nc2pPJ2MXJ",189)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("YFFMQA==",52)), (_xd("CQYLBB4LDQ==",106))), {
(_xd("MhgBDA==",116)),
(_xd("sIaAh5ye",243))
}
)
)
_lA5E50DA1047BBA15._lB17914F567A7940B = _lAE2482B62AD01298.push(
'Miscellaneous', (_xd("pKumqbOmoOmqqKOi",199)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("QWNoaQ==",12)), (_xd("zMPOwdvOyA==",175))), {
(_xd("dFNGU05E",39)),
(_xd("tIOQg5SVg4I=",230)),
(_xd("h6ivq6eyo6I=",198))
}
)
)
_lA5E50DA1047BBA15.input = _lAE2482B62AD01298.push(
'Miscellaneous', (_xd("2dbb1M7b3ZTT1MrPzg==",186)), _lC32E23DC8F791E4A.new(
ui.new_textbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("YkVbXl8=",43)), (_xd("npGck4mcmg==",253)))
)
)
_lA5E50DA1047BBA15._lCC9D2EFA01452D7D = _lAE2482B62AD01298.push(
'Miscellaneous', (_xd("a2RpZnxpbyZ7eG1tbA==",8)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("3/zp6eg=",140)), (_xd("BwgFChAFAw==",100))), (3 * 1), (20 + (1935 - 1935)), (52939 + 52934 - 52934), true, 's', 0.1
)
)
_l8C72F381EE48E2C7._lA5E50DA1047BBA15 = _lA5E50DA1047BBA15
end
local _l2D5D06F56E20D168 = { } do
_l2D5D06F56E20D168._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
'Miscellaneous', (_xd("+f7s68Dz/vv7+u2x+vH+/fP6+w==",159)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("dlFDRBBcUVRUVUI=",48)), (_xd("b2h6fVZlaG1tbHs=",9)))
)
)
_l8C72F381EE48E2C7._l2D5D06F56E20D168 = _l2D5D06F56E20D168
end
local _lC2DB6E48BA63AC00 = { } do
_lC2DB6E48BA63AC00._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
'Miscellaneous', (_xd("DgIDHgIBCDILBAEZCB9DCAMMDwEICQ==",109)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("o4+Ok4+MhcCGiYyUhZI=",224)), (_xd("WFRVSFRXXmRdUldPXkk=",59)))
)
)
_l8C72F381EE48E2C7._lC2DB6E48BA63AC00 = _lC2DB6E48BA63AC00
end
local _l48F67A671746F233 = { } do
_l48F67A671746F233._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
'Miscellaneous', (_xd("6uD3+sbr+P78+/btxvH27fL84Oq3/Pf4+/X8/Q==",153)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("l72qp+S2paOhpquw5KyrsK+hvbc=",196)), (_xd("LScwPQEsPzk7PDEqATYxKjU7Jy0=",94)))
)
)
_l8C72F381EE48E2C7._l48F67A671746F233 = _l48F67A671746F233
end
local _l1DAFF73657425735 = { } do
_l1DAFF73657425735._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
'Miscellaneous', (_xd("pLOgs7e6ibO4s7uviaKzt7uJtb63ovizuLe0urOy",214)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("t4CTgISJxYCLgIicxZGAhIjFho2EkQ==",229)), (_xd("6/zv/Pj1xvz3/PTgxu38+PTG+vH47Q==",153)))
)
)
_l8C72F381EE48E2C7._l1DAFF73657425735 = _l1DAFF73657425735
end
local _l26F8908E0728636B = { } do
_l26F8908E0728636B.button = _lC32E23DC8F791E4A.new(
ui.new_button, 'AA', 'Other', (_xd("tIKTkpfHi4iEhovHlIKVkYKV",231)), _l93A0F5D91FBDC005()
client.exec((_xd("5OHI9P/y9uPkt6ast/rnyOX44vnz4/768sjz8vHi5PK3rq6urq6st/rnyOD25fri58jy+fOst/rnyPXi7uP++vK3rq6urq6urq6st/rnyPXi7sj2+e7g//Ll8remrLfk4cj++fH++f7j8sj2+vr4t6ast/765+L75PK3pqemrLfk4cjw5fL59vPyyOPl9v3y9OP45e63pqy35OHI9v7l9vT08vvy5fbj8remp6est+ThyOXy8PL58uX24/74+cjx+OX08sj4+bemrLf658jl8uTn9uD5yPj5yPPy9uP/yPTjt6ast/rnyOXy5Of24PnI+PnI8/L24//I47emrLf1+OPI5OP457emrLf658jl+OL58+P++vLI//jk4/bw8remp6enpw==",151)))
end
)
_l8C72F381EE48E2C7._l26F8908E0728636B = _l26F8908E0728636B
end
_lBD5F403BA71FC9C6._l8C72F381EE48E2C7 = _l8C72F381EE48E2C7
end
local _lD986AC01DECA1374 = { } do
_lD986AC01DECA1374.air_legs = _lAE2482B62AD01298.push(
(_xd("dFtcWFRBXFpbRg==",53)), (_xd("7+Dn49Hs/Ovv5ev8oO/n/NHi6+n9",142)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Other', _l07C07072582A4EF1((_xd("m7Oo+ra/vak=",218)), (_xd("OjUyNjovMjQ1KA==",91))), {
(_xd("+dDQ",182)),
(_xd("WH9qf2Jo",11)),
(_xd("FjQ0NSw6NzA=",91)),
(_xd("6sDPxsDTzs4=",161))
}
)
)
_lD986AC01DECA1374.air_legs_weight = _lAE2482B62AD01298.push(
(_xd("lLu8uLShvLq7pg==",213)), (_xd("2dbR1efayt3Z093KltnRyufU3d/L58/d0d/QzA==",184)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Other', _l07C07072582A4EF1((_xd("W2lla2R4",12)), (_xd("fHN0cHxpdHJzbg==",29))), 0, (100 + (4028 - 4028)), (1100 * 1) / 11, true, '%'
)
)
_lD986AC01DECA1374.ground_legs = _lAE2482B62AD01298.push(
(_xd("n7C3s7+qt7GwrQ==",222)), (_xd("LyAnIxEsPCsvJSs8YCk8ITsgKhEiKyk9",78)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Other', _l07C07072582A4EF1((_xd("NgMeBB8VUR0UFgI=",113)), (_xd("FhkeGhYDHhgZBA==",119))), {
(_xd("vZSU",242)),
(_xd("NxAFEA0H",100)),
(_xd("NBcKChsM",126)),
(_xd("FjQ0NSw6NzA=",91)),
(_xd("DScoISc0KSk=",70))
}
)
)
_lD986AC01DECA1374.legs_offset_1 = _lAE2482B62AD01298.push(
(_xd("YE9ITEBVSE5PUg==",33)), (_xd("ZmlualhldWJmbGJ1KWtiYHRYaGFhdGJzWDY=",7)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Other', _l07C07072582A4EF1((_xd("S2Jid2FwJDU=",4)), (_xd("9vn++vbj/vj55A==",151))), 0, (87555 + 87455 - 87455), (87070 + 86970 - 86970)
)
)
_lD986AC01DECA1374.legs_offset_2 = _lAE2482B62AD01298.push(
(_xd("CCcgJCg9ICYnOg==",73)), (_xd("paqtqZumtqGlr6G26qiho7ebq6Kit6Gwm/Y=",196)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Other', _l07C07072582A4EF1((_xd("xu/v+uz9qbs=",137)), (_xd("FhkeGhYDHhgZBA==",119))), 0, (100 + (8132 - 8132)), (100 + (9587 - 9587))
)
)
_lD986AC01DECA1374.legs_jitter_time = _lAE2482B62AD01298.push(
(_xd("ORYRFRkMERcWCw==",120)), (_xd("kZ6Zna+SgpWRm5WC3pyVl4OvmpmEhJWCr4SZnZU=",240)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Other', _l07C07072582A4EF1((_xd("R2R5eWh/LXlkYGg=",13)), (_xd("DQIFAQ0YBQMCHw==",108))), 1, (70237 + 70229 - 70229), (26 * 1) / 13, true, 't'
)
)
_lD986AC01DECA1374.options = _lAE2482B62AD01298.push(
(_xd("GDcwNDgtMDY3Kg==",89)), (_xd("ysXCxvTJ2c7KwM7ZhcTb38LExdg=",171)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Other', _l07C07072582A4EF1((_xd("88zI1dPSzw==",188)), (_xd("/fL18f3o9fPy7w==",156))), {
(_xd("n72kt/K+t7O8",210)),
(_xd("VWtpaXJuJmdob2tgb34=",6))
}
)
)
_lD986AC01DECA1374.move_lean = _lAE2482B62AD01298.push(
(_xd("vJOUkJyJlJKTjg==",253)), (_xd("5+jv69nk9OPn7eP0qOvp8OPZ6uPn6A==",134)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Other', _l07C07072582A4EF1((_xd("lLavvPm1vLi3",217)), (_xd("TUJFQU1YRUNCXw==",44))), -1, (100 * 1), -1, true, '', 1, {
[-1] = (_xd("oYiI",238))
}
)
)
_lBD5F403BA71FC9C6._lD986AC01DECA1374 = _lD986AC01DECA1374
end
local _l10F9D25E169462C5 = { } do
local _l93E7070495E0673F = {
{ (_xd("X2p5bG5/",11)), _l424F4D241D652803((32619 + 32492 - 32492), (2880 * 1) / 16, (95 * 1), (255 + (5624 - 5624))) },
{ 'Other', _l424F4D241D652803((132 * 1), (163 * 1), (209 + (6647 - 6647)), (55327 + 55072 - 55072)) }
}
local _l86E349359EE8A545 = {
{ (_xd("UHF1YHw=",20)), _l424F4D241D652803((76478 + 76289 - 76289), -(-75), (75 * 1), (255 + (2815 - 2815))) },
{ (_xd("CikrPDg9",89)), _l424F4D241D652803((189 + (1648 - 1648)), -(-75), -(-75), -(-255)) },
{ (_xd("oZaAnJ+FloE=",243)), _l424F4D241D652803((189 + (8230 - 8230)), (750 * 1) / 10, -(-75), (2040 * 1) / 8) },
{ (_xd("FDYhIC0nMC0rKmQhNjYrNg==",68)), _l424F4D241D652803((62231 + 62042 - 62042), (75 + (8203 - 8203)), (75 * 1), (1785 * 1) / 7) },
{ (_xd("T3Rof31zaW5/aH9+OmlydW4=",26)), _l424F4D241D652803((189 * 1), (1275 * 1) / 17, (450 * 1) / 6, (255 * 1)) }
}
_l10F9D25E169462C5._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("fl9CWllRRQ==",54)), (_xd("t7S8vLK1vISooqivvrb1vrW6ube+vw==",219)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("GzonPzw0IA==",83)), (_xd("BgUNDQMEDTUZExkeDwc=",106)))
)
)
_l10F9D25E169462C5.events = _lAE2482B62AD01298.push(
(_xd("qouWjo2FkQ==",226)), (_xd("2drS0tzb0urGzMbB0Nib0MPQ28HG",181)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("i7iroLq9",206)), (_xd("uLuzs726s4unraegsbk=",212))), {
'Aimbot',
(_xd("GTw7KiEoOiw=",73))
}
)
)
_l10F9D25E169462C5.output = _lAE2482B62AD01298.push(
(_xd("cVBNVVZeSg==",57)), (_xd("UVJaWlRTWmJORE5JWFATUkhJTUhJ",61)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("MQsKDgsK",126)), (_xd("aGtjY21qY1t3fXdwYWk=",4))), {
(_xd("lLi5pLi7sg==",215)),
(_xd("laa1vqSj",208)),
(_xd("XGdtbHspantmenphaGB7",9))
}
)
)
_l10F9D25E169462C5.events_font = _lAE2482B62AD01298.push(
(_xd("V3Zrc3B4bA==",31)), (_xd("o6CoqKahqJC8try7qqLhqrmqobu8kKmgobs=",207)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("s4CTmIKF1pCZmII=",246)), (_xd("Tk1FRUtMRX1RW1FWR08=",34))), {
(_xd("ASAjJDApMQ==",69)),
(_xd("8dPY2c7S",188))
}
)
)
_l10F9D25E169462C5._lB179AD0D5B6AB17F = _lAE2482B62AD01298.push(
(_xd("1fTp8fL67g==",157)), (_xd("Li0lJSssJR0xOzE2Jy9sLSQkMSc2HTs=",66)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("6MHB1MLTh/4=",167)), (_xd("CQoCAgwLAjoWHBYRAAg=",101))), 0, (68593 + 68493 - 68493), (100 * 1), true, '%'
)
)
_l10F9D25E169462C5._l0F5191CA1603861C = _lAE2482B62AD01298.push(
(_xd("GjsmPj01IQ==",82)), (_xd("BAcPDwEGDzcbERscDQVGDB0aCRwBBwY=",104)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("59bRwtfKzM0=",163)), (_xd("z8zExMrNxPzQ2tDXxs4=",163))), (67078 + 67073 - 67073), (560 * 1) / 14, -(-20), true, 's.', 0.1
)
)
_l10F9D25E169462C5.console_text_style = _lAE2482B62AD01298.push(
(_xd("Tm9yamlhdQ==",6)), (_xd("aGtjY21qY1t3fXdwYWkqZ2tqd2toYVtwYXxwW3dwfWhh",4)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("YU1MUU1ORwJWR1pWAlFWW05H",34)), (_xd("zc7GxsjPxv7S2NLVxMw=",161))), {
(_xd("PRwfGAwVDQ==",121)),
(_xd("kbqo",223))
}
)
)
_l10F9D25E169462C5.crosshair_text_style = _lAE2482B62AD01298.push(
(_xd("ORgFHR4WAg==",113)), (_xd("mpmRkZ+YkamFj4WCk5vYlYSZhYWel5+EqYKTjoKphYKPmpM=",246)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("KhsGGhoBCAAbSR0MER1JGh0QBQw=",105)), (_xd("GhkRER8YESkFDwUCExs=",118))), {
(_xd("hqeko7eutg==",194)),
(_xd("eVJA",55))
}
)
)
for i = 1, #_l93E7070495E0673F do
local _l14F641CF3F2B2562 = _l93E7070495E0673F[i]
local _lDB160C0F87126763 = _l14F641CF3F2B2562[1]
local col = _l14F641CF3F2B2562[(2 + (9211 - 9211))]
local _lD52EDAAF02723665 = { }
local _lC4DEAC329A56E61E = string.format((_xd("bzkVKSUmJTg=",74)), _lDB160C0F87126763:lower())
local _lDFED1879D7C00A16 = string.format((_xd("IHYlZmppanc=",5)), _lDB160C0F87126763)
local _l4D04D42975BFFEDB = string.format((_xd("9KLxsr69vqPxobiyurSj",209)), _lDB160C0F87126763)
_lD52EDAAF02723665.label = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(_lDFED1879D7C00A16, (_xd("q6igoK6poJi0vrSzoqo=",199)))
)
_lD52EDAAF02723665._l424F4D241D652803 = _lAE2482B62AD01298.push(
(_xd("LA0QCAsDFw==",100)), string.format((_xd("QUJKSkRDSnJeVF5ZSEADCF4=",45)), _lC4DEAC329A56E61E), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(_l4D04D42975BFFEDB, (_xd("ICMrKyUiKxM/NT84KSE=",76))), col:unpack()
)
)
_l10F9D25E169462C5[_lDB160C0F87126763] = _lD52EDAAF02723665
end
_l10F9D25E169462C5.color_separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
for i = 1, #_l86E349359EE8A545 do
local _l14F641CF3F2B2562 = _l86E349359EE8A545[i]
local _lDB160C0F87126763 = _l14F641CF3F2B2562[1]
local col = _l14F641CF3F2B2562[(2 + (7600 - 7600))]
local _lD52EDAAF02723665 = { }
local _lC4DEAC329A56E61E = string.format((_xd("57Gdoa2urbA=",194)), _lDB160C0F87126763:lower())
local _lDFED1879D7C00A16 = string.format((_xd("K30ubWFiYXw=",14)), _lDB160C0F87126763)
local _l4D04D42975BFFEDB = string.format((_xd("7rjrqKSnpLnru6KooK65",203)), _lDB160C0F87126763)
_lD52EDAAF02723665.label = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(_lDFED1879D7C00A16, (_xd("mZqSkpybkqqGjIaBkJg=",245)))
)
_lD52EDAAF02723665._l424F4D241D652803 = _lAE2482B62AD01298.push(
(_xd("89LP19TcyA==",187)), string.format((_xd("OToyMjw7MgomLCYhMDh7cCY=",85)), _lC4DEAC329A56E61E), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(_l4D04D42975BFFEDB, (_xd("kpGZmZeQmaGNh42Km5M=",254))), col:unpack()
)
)
_l10F9D25E169462C5[_lDB160C0F87126763] = _lD52EDAAF02723665
end
_lE658F732C5F7D939(_l10F9D25E169462C5.output)
_lE658F732C5F7D939(_l10F9D25E169462C5.events)
_l10F9D25E169462C5._l93E7070495E0673F = _l93E7070495E0673F
_l10F9D25E169462C5._l86E349359EE8A545 = _l86E349359EE8A545
_lBD5F403BA71FC9C6._l10F9D25E169462C5 = _l10F9D25E169462C5
end
local _lAB5A7D2F3F3EE3D1 = { } do
_lAB5A7D2F3F3EE3D1._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("dkJDWFVCTg==",55)), (_xd("fWpmQH1wazF6cX59c3p7",31)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('Enabled', (_xd("k4SIrpOehQ==",241)))
)
)
_lAB5A7D2F3F3EE3D1.primary = _lAE2482B62AD01298.push(
(_xd("xfHw6+bx/Q==",132)), (_xd("rrm1k66juOK8vqWhrb61",204)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("R2V+enZlbg==",23)), (_xd("ip2Rt4qHnA==",232))), {
(_xd("CiMj",69)),
(_xd("mY+I",216)),
(_xd("laWps7I=",198)),
(_xd("ah5+ahwNAg1+bmx/AB8d",45))
}
)
)
_lAB5A7D2F3F3EE3D1.alternative = _lAE2482B62AD01298.push(
(_xd("u4+OlZiPgw==",250)), (_xd("7vn10+7j+KLt4Pjp/uLt+OX66Q==",140)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("OhcPHgkVGg8SDR4=",123)), (_xd("5PP/2eTp8g==",134))), {
(_xd("Ejs7",93)),
(_xd("d0dLUVA=",36)),
(_xd("QDRUQDYnKCdUREZVKjU3",7))
}
)
)
_lAB5A7D2F3F3EE3D1.secondary = _lAE2482B62AD01298.push(
(_xd("Og4PFBkOAg==",123)), (_xd("/ermwP3w67Hs+vzw8fv+7eY=",159)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("nqiuoqOprL+0",205)), (_xd("f2hkQn9yaQ==",29))), {
(_xd("Nh8f",121)),
(_xd("fx0aHw==",47)),
(_xd("hq+qt6aw",195)),
(_xd("ZklWRQ1TRVZFTgAPAHRFQw0ZAA8AY3oXFQ==",32)),
(_xd("g6KmoKui5+jnlaKxqKuxorU=",199))
}
)
)
_lAB5A7D2F3F3EE3D1.equipment = _lAE2482B62AD01298.push(
(_xd("zvr74O369g==",143)), (_xd("CR4SNAkEH0UOGh4CGwYOBR8=",107)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("p5OXi5KPh4yW",226)), (_xd("ua6ihLm0rw==",219))), {
(_xd("CCY1LyIx",67)),
(_xd("HTMgOjckdn12HjM6OzMi",86)),
(_xd("y+rp+vzqr+Tm+w==",143)),
'HE',
(_xd("2efl4e8=",138)),
(_xd("XX98f2R/Zg==",16)),
(_xd("VWByZHM=",1))
}
)
)
_lAB5A7D2F3F3EE3D1.ignore_pistol_round = _lAE2482B62AD01298.push(
(_xd("ppKTiIWSng==",231)), (_xd("8uXpz/L/5L759/7/4vXP4Pnj5P/8z+L/5f70",144)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("/9HY2cTTlsbfxcLZ2pbE2cPY0g==",182)), (_xd("qb6ylKmkvw==",203)))
)
)
_lAB5A7D2F3F3EE3D1.only_16k = _lAE2482B62AD01298.push(
(_xd("R3NyaWRzfw==",6)), (_xd("GQ4CJBkUD1UUFRcCJEpNEA==",123)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("gKGjtu/r/vmk",207)), (_xd("PCsnATwxKg==",94)))
)
)
_lBD5F403BA71FC9C6._lAB5A7D2F3F3EE3D1 = _lAB5A7D2F3F3EE3D1
end
_l934A3DF2B1DD218E._lBD5F403BA71FC9C6 = _lBD5F403BA71FC9C6
end
local _l22887641E343368B = { } do
local _l6AC6C239F852AB60 = { } do
local _l93A0F5D91FBDC005 _l00AF2741C2BB3361(_l2E042F1CBFD735FC)
return _l2E042F1CBFD735FC == (_xd("r42Ui4yF",226))
or _l2E042F1CBFD735FC == (_xd("DSU+",76))
or _l2E042F1CBFD735FC == (_xd("sJiD3LKDnoSSmQ==",241))
or _l2E042F1CBFD735FC == (_xd("58Xcz4fp2MXfycI=",170))
end
local _l93A0F5D91FBDC005 _lEC3E563DA767EA83(_l2E042F1CBFD735FC, _l8D7D25A996288554, _l4AD09FD714C40727, should_save, is_directional)
local _lD52EDAAF02723665 = { }
local _l93A0F5D91FBDC005 _lD1A56F9B2AED0011(key)
local _l861DF5F3FC680167 = _l2E042F1CBFD735FC .. ':' .. _l8D7D25A996288554 .. (_xd("gN7f3N/UydPM3+U=",186)) .. key
if _l4AD09FD714C40727 ~= nil then
_l861DF5F3FC680167 = _l861DF5F3FC680167 .. ':' .. _l4AD09FD714C40727
end
return _l861DF5F3FC680167
end
local _l93A0F5D91FBDC005 _l67B9CB381E5AE6C4(key, _l777D8FF3F76AC3BE)
if should_save == false then
return _l777D8FF3F76AC3BE
end
return _lAE2482B62AD01298.push((_xd("ppGNiICBlg==",228)), _lD1A56F9B2AED0011(key), _l777D8FF3F76AC3BE)
end
if is_directional then
_lD52EDAAF02723665._l002C9C644F32C5C8 = _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(
(_xd("Tndkc3NoZWQhZWRnZG9yaHdk",1)), _lD1A56F9B2AED0011 (_xd("GAESBQUeExI=",119))
)
)
end
_lD52EDAAF02723665.force_defensive = _l67B9CB381E5AE6C4((_xd("ycDdzMrwy8rJysHcxtnK",175)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(
(_xd("EzonNjB1MTAzMDsmPCMw",85)), _lD1A56F9B2AED0011 (_xd("FB0AERctFhcUFxwBGwQX",114))
)
)
)
_lD52EDAAF02723665._lF8E1754D21D14193 = _l67B9CB381E5AE6C4((_xd("HxQbGBYfHg==",122)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(
(_xd("89LR0tnE3sHSl9bZw96a1t7a",183)), _lD1A56F9B2AED0011 (_xd("1N/Q093U1Q==",177))
)
)
)
_lD52EDAAF02723665._l46AA6D7987AE7B3A = _l67B9CB381E5AE6C4((_xd("VUxRRk0=",37)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('Pitch', _lD1A56F9B2AED0011 (_xd("sai1oqk=",193))), {
(_xd("2PHx",151)),
(_xd("qY6bjpOZ",250)),
(_xd("2//p8Q==",136)),
(_xd("89fJ1MPI",160)),
(_xd("mKukrqWn",202)),
(_xd("WX5rfmNpKlhrZG5lZw==",10))
}
)
)
_lD52EDAAF02723665.pitch_label_1 = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', (_xd("Z1NOTA==",33))
)
_lD52EDAAF02723665._l72BB9EFD1D25CD9F = _l67B9CB381E5AE6C4((_xd("w9rH0Nvs3NXVwNbH7II=",179)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('\n', _lD1A56F9B2AED0011 (_xd("fGV4b2RTY2pqf2l4Uz0=",12))), -(27503 + 27414 - 27414), -(-89), 0, true, '°'
)
)
_lD52EDAAF02723665.pitch_label_2 = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', 'To'
)
_lD52EDAAF02723665._l84BE8A6927CCD15A = _l67B9CB381E5AE6C4((_xd("ztfK3dbh0djYzdvK4Yw=",190)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('\n', _lD1A56F9B2AED0011 (_xd("S1JPWFNkVF1dSF5PZAk=",59))), -(623 * 1) / 7, (1424 * 1) / 16, 0, true, '°'
)
)
_lD52EDAAF02723665.pitch_speed = _l67B9CB381E5AE6C4((_xd("ztfK3dbhzc7b29o=",190)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("gaK3t7Y=",210)), _lD1A56F9B2AED0011 (_xd("Ni8yJS4ZNTYjIyI=",70))), -(55991 + 55916 - 55916), -(-75), (18989 + 18969 - 18969), true, nil, 0.1
)
)
_lD52EDAAF02723665._l6F49EB461422B562 = _l67B9CB381E5AE6C4((_xd("dGx6",13)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('Yaw', _lD1A56F9B2AED0011 (_xd("orqs",219))), {
(_xd("LgcH",97)),
(_xd("nqSpqO2PrL6oqQ==",205)),
(_xd("7tHRztLI1cQ=",161)),
(_xd("pYafmA==",246)),
(_xd("Kg4YAA==",121)),
(_xd("MEU/CRE=",104)),
(_xd("cUJNR0xO",35)),
(_xd("Y0pJWwB9RkhHWw==",47)),
(_xd("r4idiJWf3K6dkpiTkQ==",252))
}
)
)
_lD52EDAAF02723665._lDAF0FAC8DE48E972 = _l67B9CB381E5AE6C4((_xd("cWd/dVllaXNocg==",6)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('\n', _lD1A56F9B2AED0011 (_xd("mY+XnbGNgZuAmg==",238))), (33 * 1) / 11, (7 + (6840 - 6840)), -(-3), true, ''
)
)
_lD52EDAAF02723665._lF85351515A99AFEA = _l67B9CB381E5AE6C4((_xd("aX9nbUF9a21qcXM=",30)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("HiguKTIwfSo8JC4=",93)), _lD1A56F9B2AED0011 (_xd("3cvT2fXJ39nexcc=",170)))
)
)
for i = 1, (7 + (4856 - 4856)) do
_lD52EDAAF02723665[(_xd("wNbO6A==",183)) .. i] = _l67B9CB381E5AE6C4((_xd("KjwkAg==",93)) .. i, _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('\n', _lD1A56F9B2AED0011((_xd("BhAILg==",113)) .. i)), -(180 * 1), (180 * 1), 0, true, '°'
)
)
end
_lD52EDAAF02723665._l8D93B57A952D5141 = _l67B9CB381E5AE6C4((_xd("pb2rg7O6uq+5qA==",220)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('\n', _lD1A56F9B2AED0011 (_xd("j5eBqZmQkIWTgg==",246))), -(180 * 1), (180 * 1), 0, true, '°'
)
)
_lD52EDAAF02723665._l154D22247126C71A = _l67B9CB381E5AE6C4((_xd("yNDG7t3U18U=",177)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("XmZwJ2tiYXM=",7)), _lD1A56F9B2AED0011 (_xd("+eH33+zl5vQ=",128))), -(180 * 1), (87998 + 87818 - 87818), 0, true, '°'
)
)
_lD52EDAAF02723665._lC6683553542CC013 = _l67B9CB381E5AE6C4((_xd("ydHH78LZ19jE",176)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("3eXzpPbt4+zw",132)), _lD1A56F9B2AED0011 (_xd("Mio8FDkiLCM/",75))), -(14799 + 14619 - 14619), (2700 * 1) / 15, 0, true, '°'
)
)
_lD52EDAAF02723665.yaw_speed = _l67B9CB381E5AE6C4((_xd("dW17U398aWlo",12)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("zO/6+vs=",159)), _lD1A56F9B2AED0011 (_xd("4fnvx+vo/f38",152))), -(75 * 1), (80289 + 80214 - 80214), (86087 + 86067 - 86067), true, '', 0.1
)
)
_lD52EDAAF02723665._l7A6C5DE9B8936F9C = _l67B9CB381E5AE6C4((_xd("hJyKoo+ck5mSkA==",253)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("Bz8pfiw/MDoxMw==",94)), _lD1A56F9B2AED0011 (_xd("Fg4YMB0OAQsAAg==",111))), 0, (30 * 1), 0, true, '%'
)
)
_lD52EDAAF02723665.ways_auto_body_yaw = _l67B9CB381E5AE6C4((_xd("EgQcFjoEEBEKOgcKARw6HAQS",101)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("Kh4fBAYKHwIISwkEDxJLEgoc",107)), _lD1A56F9B2AED0011 (_xd("aH5mbEB+amtwQH1we2ZAZn5o",31)))
)
)
_lD52EDAAF02723665._l853F969D9C31B6DE = _l67B9CB381E5AE6C4((_xd("TUBLVnBWTlg=",47)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('Body yaw', _lD1A56F9B2AED0011 (_xd("CwYNEDYQCB4=",105))), {
(_xd("fVRU",50)),
(_xd("IxwcAx8FGAk=",108)),
(_xd("XnlseWRu",13)),
(_xd("b0xRUUBX",37))
}
)
)
_lD52EDAAF02723665._lE1A0F2049757CCF5 = _l67B9CB381E5AE6C4((_xd("l5qRjKqMlIKqmpOThpCB",245)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('\n', _lD1A56F9B2AED0011 (_xd("CgcMETcRCR83Bw4OGw0c",104))), -(2160 * 1) / 12, (180 * 1), 0, true, '°'
)
)
_lD52EDAAF02723665.body_yaw_random = _l67B9CB381E5AE6C4((_xd("Ojc8IQchOS8HKjk2PDc1",88)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("JgsAHUQdBRNEFgUKAAsJ",100)), _lD1A56F9B2AED0011 (_xd("fHF6Z0Fnf2lBbH9wenFz",30))), 0, (150 * 1) / 5, 0, true, '%'
)
)
_lD52EDAAF02723665._l647607ED8A0477C6 = _l67B9CB381E5AE6C4((_xd("a39oaH55bGNpZGNqUm9iaXRSdGx6",13)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(
'Freestanding body yaw', _lD1A56F9B2AED0011 (_xd("0sbR0cfA1drQ3drT69bb0M3rzdXD",180))
)
)
)
_lD52EDAAF02723665.delay_from = _l67B9CB381E5AE6C4((_xd("R0ZPQlp8RVFMTg==",35)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("IQAJBBxFAxcKCA==",101)), _lD1A56F9B2AED0011 (_xd("ZWRtYHheZ3NubA==",1))), 1, (46319 + 46311 - 46311), 1, true, 't', 1, {
[1] = (_xd("kru7",221))
}
)
)
_lD52EDAAF02723665.delay_to = _l67B9CB381E5AE6C4((_xd("jYyFiJC2nYY=",233)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("58bPwtqD18w=",163)), _lD1A56F9B2AED0011 (_xd("397X2sLkz9Q=",187))), 1, (80 * 1) / 10, 1, true, 't', 1, {
[1] = (_xd("aUBA",38))
}
)
)
_lD52EDAAF02723665.invert_chance = _l67B9CB381E5AE6C4((_xd("wcbezdrc98vAycbLzQ==",168)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("eF9HVENFEVJZUF9SVA==",49)), _lD1A56F9B2AED0011 (_xd("sLevvKuthrqxuLe6vA==",217))), 0, (14464 + 14364 - 14364), (100 * 1), true, '%'
)
)
return _lD52EDAAF02723665
end
local _l93A0F5D91FBDC005 _l2DD8283D1FE4D298(_lD52EDAAF02723665)
local _l14F641CF3F2B2562 = { }
for key, _l777D8FF3F76AC3BE in pairs(_lD52EDAAF02723665) do
if _l777D8FF3F76AC3BE.type ~= (_xd("rKGipaw=",192)) and _l777D8FF3F76AC3BE.get ~= nil then
_l14F641CF3F2B2562[key] = _l777D8FF3F76AC3BE:get()
end
end
return _l14F641CF3F2B2562
end
local _l93A0F5D91FBDC005 _l4701C28BB0752F05(_lD52EDAAF02723665, _l14F641CF3F2B2562)
for key, _l777D8FF3F76AC3BE in pairs(_lD52EDAAF02723665) do
local _l861DF5F3FC680167 = _l14F641CF3F2B2562[key]
if _l777D8FF3F76AC3BE.type ~= (_xd("GRQXEBk=",117)) and _l861DF5F3FC680167 ~= nil then
pcall(_l777D8FF3F76AC3BE.set, _l777D8FF3F76AC3BE, _l861DF5F3FC680167)
end
end
end
local _lC7BA0D7A73A2C57C = {
_lD43E8B0D1DD4CD14 = nil,
_l4212FF25C6F90CE7 = nil,
updating = false,
instances = { }
}
local _l93A0F5D91FBDC005 _l319AE670314950FA(_l14F641CF3F2B2562)
local _l5B75403142A2939E = { }
if type(_l14F641CF3F2B2562) ~= (_xd("ZnNwfnc=",18)) then
return _l5B75403142A2939E
end
for _l4AD09FD714C40727, profile in pairs(_l14F641CF3F2B2562) do
if type(profile) == (_xd("iJ2ekJk=",252)) then
local _lD5E669363970E588 = { }
for key, _l861DF5F3FC680167 in pairs(profile) do
_lD5E669363970E588[key] = _l861DF5F3FC680167
end
_l5B75403142A2939E[_l4AD09FD714C40727] = _lD5E669363970E588
end
end
return _l5B75403142A2939E
end
local _l93A0F5D91FBDC005 _l80F202FFCDD88EE0(_l2E042F1CBFD735FC, _l8D7D25A996288554)
local _lD52EDAAF02723665 = {
_lD43E8B0D1DD4CD14 = nil,
_l5E798EB691F85945 = nil,
cache = { },
cache_raw = nil,
key = _l2E042F1CBFD735FC .. ':' .. _l8D7D25A996288554 .. (_xd("k83Mz8zH2sDfzPbNwNvMyt3Axsc=",169))
}
table.insert(_lC7BA0D7A73A2C57C.instances, _lD52EDAAF02723665)
_lD52EDAAF02723665._l1A94719D8193EF14 = _lAE2482B62AD01298.push(
(_xd("MAcbHhYXAA==",114)), _lD52EDAAF02723665.key, _lC32E23DC8F791E4A.new(
ui.new_string, _lD52EDAAF02723665.key, ''
)
)
_l93A0F5D91FBDC005 _lD52EDAAF02723665:load_cache()
local _lBE7F9E5E430364CD = self._l1A94719D8193EF14:get() or ''
if self.cache_raw == _lBE7F9E5E430364CD then
return false
end
self.cache_raw = _lBE7F9E5E430364CD
if _lBE7F9E5E430364CD == '' then
self.cache = { }
return true
end
local ok, _l14F641CF3F2B2562 = pcall(json.parse, _lBE7F9E5E430364CD)
if ok and type(_l14F641CF3F2B2562) == (_xd("UkdESkM=",38)) then
self.cache = _l14F641CF3F2B2562
else
self.cache = { }
end
return true
end
_l93A0F5D91FBDC005 _lD52EDAAF02723665:_l9C6776168706F966(_l4AD09FD714C40727)
self:load_cache()
local _l14F641CF3F2B2562 = self.cache[_l4AD09FD714C40727]
if type(_l14F641CF3F2B2562) ~= (_xd("JTAzPTQ=",81)) then
return nil
end
return _l14F641CF3F2B2562
end
_l93A0F5D91FBDC005 _lD52EDAAF02723665:save_current()
if _lC7BA0D7A73A2C57C._l4212FF25C6F90CE7 ~= self
or _lC7BA0D7A73A2C57C.updating
or self._l5E798EB691F85945 == nil then
return
end
self.cache[self._l5E798EB691F85945] = _l2DD8283D1FE4D298(
_lC7BA0D7A73A2C57C._lD43E8B0D1DD4CD14
)
end
_l93A0F5D91FBDC005 _lD52EDAAF02723665:load_editor(fallback)
self:load_cache()
local _l14F641CF3F2B2562 = self.cache[self._l5E798EB691F85945]
if type(_l14F641CF3F2B2562) ~= (_xd("vairpaw=",201)) then
_l14F641CF3F2B2562 = _l2DD8283D1FE4D298(fallback)
_l14F641CF3F2B2562._l002C9C644F32C5C8 = false
end
_lC7BA0D7A73A2C57C.updating = true
_l54F19F7B5F58F216.lock_updates()
_l4701C28BB0752F05(_lC7BA0D7A73A2C57C._lD43E8B0D1DD4CD14, _l14F641CF3F2B2562)
_lC7BA0D7A73A2C57C.updating = false
_l54F19F7B5F58F216.unlock_updates()
end
_l93A0F5D91FBDC005 _lD52EDAAF02723665:activate(_l4AD09FD714C40727, fallback)
local _l4212FF25C6F90CE7 = _lC7BA0D7A73A2C57C._l4212FF25C6F90CE7
if _l4212FF25C6F90CE7 ~= self then
if _l4212FF25C6F90CE7 ~= nil then
_l4212FF25C6F90CE7:save_current()
end
_lC7BA0D7A73A2C57C._l4212FF25C6F90CE7 = self
self._l5E798EB691F85945 = _l4AD09FD714C40727
self:load_editor(fallback)
return
end
if self._l5E798EB691F85945 ~= _l4AD09FD714C40727 then
self:save_current()
self._l5E798EB691F85945 = _l4AD09FD714C40727
self:load_editor(fallback)
return
end
if self:load_cache() then
self:load_editor(fallback)
end
end
_l93A0F5D91FBDC005 _lD52EDAAF02723665:deactivate()
if _lC7BA0D7A73A2C57C._l4212FF25C6F90CE7 == self then
self:save_current()
_lC7BA0D7A73A2C57C._l4212FF25C6F90CE7 = nil
end
self._l5E798EB691F85945 = nil
end
_l93A0F5D91FBDC005 _lD52EDAAF02723665:get_proxy(_l4AD09FD714C40727, fallback)
local _l14F641CF3F2B2562 = self:_l9C6776168706F966(_l4AD09FD714C40727)
if _l14F641CF3F2B2562 == nil or not _l14F641CF3F2B2562._l002C9C644F32C5C8 then
return nil
end
local _lEE92499D6AEC1186 = { }
for key, _l777D8FF3F76AC3BE in pairs(fallback) do
if _l777D8FF3F76AC3BE.type ~= (_xd("xsvIz8Y=",170)) and _l777D8FF3F76AC3BE.get ~= nil then
local _l861DF5F3FC680167 = _l14F641CF3F2B2562[key]
local _lD9017F4D8B406712 = _l777D8FF3F76AC3BE
_lEE92499D6AEC1186[key] = {
get = _l93A0F5D91FBDC005()
if _l861DF5F3FC680167 ~= nil then
return _l861DF5F3FC680167
end
return _lD9017F4D8B406712:get()
end
}
end
end
return _lEE92499D6AEC1186
end
_l93A0F5D91FBDC005 _lD52EDAAF02723665:serialize()
self:save_current()
local ok, _lBE7F9E5E430364CD = pcall(json.stringify, self.cache)
if ok then
return _lBE7F9E5E430364CD
end
return self._l1A94719D8193EF14:get() or ''
end
_l93A0F5D91FBDC005 _lD52EDAAF02723665:export()
self:load_cache()
self:save_current()
return _l319AE670314950FA(self.cache)
end
_l93A0F5D91FBDC005 _lD52EDAAF02723665:import(_l14F641CF3F2B2562, fallback)
if type(_l14F641CF3F2B2562) ~= (_xd("f2ppZ24=",11)) then
return
end
self.cache = _l319AE670314950FA(_l14F641CF3F2B2562)
local ok, _lBE7F9E5E430364CD = pcall(json.stringify, self.cache)
if ok then
self.cache_raw = _lBE7F9E5E430364CD
self._l1A94719D8193EF14:set(_lBE7F9E5E430364CD)
end
if _lC7BA0D7A73A2C57C._l4212FF25C6F90CE7 == self then
self:load_editor(fallback)
end
end
_l93A0F5D91FBDC005 _lD52EDAAF02723665:copy_direction_to(
_lB2FDC7CE1037773E, _l4AD09FD714C40727, source_fallback, target_fallback
)
self:load_cache()
self:save_current()
_lB2FDC7CE1037773E:load_cache()
_lB2FDC7CE1037773E:save_current()
local _l14F641CF3F2B2562 = self.cache[_l4AD09FD714C40727]
if type(_l14F641CF3F2B2562) == (_xd("PisoJi8=",74)) then
_l14F641CF3F2B2562 = _l319AE670314950FA({
[_l4AD09FD714C40727] = _l14F641CF3F2B2562
})[_l4AD09FD714C40727]
else
_l14F641CF3F2B2562 = _l2DD8283D1FE4D298(source_fallback or { })
end
_l14F641CF3F2B2562._l002C9C644F32C5C8 = true
_lB2FDC7CE1037773E.cache[_l4AD09FD714C40727] = _l14F641CF3F2B2562
local ok, _lBE7F9E5E430364CD = pcall(json.stringify, _lB2FDC7CE1037773E.cache)
if not ok then
return false
end
_lB2FDC7CE1037773E.cache_raw = _lBE7F9E5E430364CD
_lB2FDC7CE1037773E._l1A94719D8193EF14:set(_lBE7F9E5E430364CD)
if _lC7BA0D7A73A2C57C._l4212FF25C6F90CE7 == _lB2FDC7CE1037773E
and _lB2FDC7CE1037773E._l5E798EB691F85945 == _l4AD09FD714C40727 then
_lB2FDC7CE1037773E:load_editor(target_fallback)
end
return true
end
_lAE2482B62AD01298.on_export(_l93A0F5D91FBDC005(_l5E432A44CEEEFD31)
local _l8556901399F041B3 = _l5E432A44CEEEFD31.Builder
if _l8556901399F041B3 ~= nil then
_l8556901399F041B3[_lD52EDAAF02723665.key] = { _lD52EDAAF02723665:serialize() }
end
end)
return _lD52EDAAF02723665
end
local _l93A0F5D91FBDC005 _l7E78891BF3BA99BA(_l2E042F1CBFD735FC, _l8D7D25A996288554, std_key)
local _lD52EDAAF02723665 = { }
local _lA39399420013BD34 = _l2E042F1CBFD735FC == (_xd("w+Lh5vLr8w==",135))
local _l6707488E74727928 = _l2E042F1CBFD735FC == (_xd("3vf1++ay09M=",146))
local _l9D503C222D9EE9BC = _l2E042F1CBFD735FC == 'Freestanding'
local _l93A0F5D91FBDC005 _lD1A56F9B2AED0011(key)
return _l8D7D25A996288554 .. ':' .. _l2E042F1CBFD735FC .. ':' .. key
end
if std_key ~= nil then
_l93A0F5D91FBDC005 _lD1A56F9B2AED0011(key)
return _l2E042F1CBFD735FC .. ':' .. _l8D7D25A996288554 .. ':' .. key .. ':' .. std_key
end
end
if not _lA39399420013BD34 then
local _lF2871F4317A40859 = string.format(
(_xd("1ez/6Ojz/v+6v+k=",154)), _l2E042F1CBFD735FC
)
_lD52EDAAF02723665._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("FCM/OjIzJA==",86)), _lD1A56F9B2AED0011 (_xd("9f7x8vz19A==",144)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(
_lF2871F4317A40859, _lD1A56F9B2AED0011 (_xd("Fh0SER8WFw==",115))
)
)
)
end
if _l6707488E74727928 then
_lD52EDAAF02723665.bomb_e_fix = _lAE2482B62AD01298.push(
(_xd("toGdmJCRhg==",244)), _lD1A56F9B2AED0011 (_xd("5ejq5dji2OHu/w==",135)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(
(_xd("Fzo4N3UQdTM8LQ==",85)), _lD1A56F9B2AED0011 (_xd("j4KAj7KIsouElQ==",237))
)
)
)
end
if _l6707488E74727928 then
_lD52EDAAF02723665.yaw_base = _lAE2482B62AD01298.push(
(_xd("1+D8+fHw5w==",149)), _lD1A56F9B2AED0011 (_xd("Vk5YcE1OXEo=",47)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('Yaw base', _lD1A56F9B2AED0011 (_xd("4vrsxPn66P4=",155))), {
'Local view',
'At targets'
}
)
)
end
if not _l9D503C222D9EE9BC then
if _l00AF2741C2BB3361(_l2E042F1CBFD735FC) then
_lD52EDAAF02723665.yaw_direction = _lAE2482B62AD01298.push(
(_xd("LxgEAQkIHw==",109)), _lD1A56F9B2AED0011 (_xd("y9PF7dbbwNfRxtvd3A==",178)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("t4+ZzoqHnIuNmoeBgA==",238)), _lD1A56F9B2AED0011 (_xd("dGx6Umlkf2hueWRiYw==",13))), {
(_xd("/N7V3sna1w==",187)), unpack(_l51B39CB5BEECA15A.crouch_dirs)
}
)
)
end
_lD52EDAAF02723665._l154D22247126C71A = _lAE2482B62AD01298.push(
(_xd("eE9TVl5fSA==",58)), _lD1A56F9B2AED0011 (_xd("6/Plzf739OY=",146)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("PQUTRAgBAhA=",100)), _lD1A56F9B2AED0011 (_xd("koqctIeOjZ8=",235))), -(2520 * 1) / 14, (180 + (9156 - 9156)), 0, true, '°'
)
)
_lD52EDAAF02723665._lC6683553542CC013 = _lAE2482B62AD01298.push(
(_xd("oJeLjoaHkA==",226)), _lD1A56F9B2AED0011 (_xd("PSUzGzYtIyww",68)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("xv7ov+32+Pfr",159)), _lD1A56F9B2AED0011 (_xd("iZGHr4KZl5iE",240))), -(180 + (884 - 884)), -(-180), 0, true, '°'
)
)
if _l00AF2741C2BB3361(_l2E042F1CBFD735FC) then
for i = 1, #_l51B39CB5BEECA15A.crouch_dirs do
local _l42349E77D54940ED = _l51B39CB5BEECA15A.crouch_dirs[i]
_lD52EDAAF02723665[(_xd("LSYpKiQtLBcsIToX",72)) .. _l42349E77D54940ED] = _lAE2482B62AD01298.push(
(_xd("/8jU0dnYzw==",189)), _lD1A56F9B2AED0011((_xd("oqmmpauio5ijrrWY",199)) .. _l42349E77D54940ED), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("vJeYm5Wc2Q==",249)) .. _l42349E77D54940ED, _lD1A56F9B2AED0011((_xd("XFdYW1VcXWZdUEtm",57)) .. _l42349E77D54940ED))
)
)
_lD52EDAAF02723665[(_xd("KjIkDD82NScMNzohDA==",83)) .. _l42349E77D54940ED] = _lAE2482B62AD01298.push(
(_xd("WG9zdn5/aA==",26)), _lD1A56F9B2AED0011((_xd("CREHLxwVFgQvFBkCLw==",112)) .. _l42349E77D54940ED), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("e0NVAk5HRFY=",34)), _lD1A56F9B2AED0011((_xd("v6exmaqjoLKZoq+0mQ==",198)) .. _l42349E77D54940ED)), -(33184 + 33004 - 33004), (180 + (5573 - 5573)), 0, true, '°'
)
)
_lD52EDAAF02723665[(_xd("UUlfd1pBT0Bcd0xBWnc=",40)) .. _l42349E77D54940ED] = _lAE2482B62AD01298.push(
(_xd("xvHt6ODh9g==",132)), _lD1A56F9B2AED0011((_xd("bXVjS2Z9c3xgS3B9Zks=",20)) .. _l42349E77D54940ED), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("WmJ0I3FqZGt3",3)), _lD1A56F9B2AED0011((_xd("GQEXPxIJBwgUPwQJEj8=",96)) .. _l42349E77D54940ED)), --(-180), (180 + (6633 - 6633)), 0, true, '°'
)
)
end
end
_lD52EDAAF02723665._l7A6C5DE9B8936F9C = _lAE2482B62AD01298.push(
(_xd("2u3x9Pz96g==",152)), _lD1A56F9B2AED0011 (_xd("nYWTu5aFioCLiQ==",228)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("l6Sroaqo",197)), _lD1A56F9B2AED0011 (_xd("f2dxWXRnaGJpaw==",6))), 0, (30 + (9481 - 9481)), 0, true, '%'
)
)
_lD52EDAAF02723665._l16B2581F24D0AB49 = _lAE2482B62AD01298.push(
(_xd("T3hkYWlofw==",13)), _lD1A56F9B2AED0011 (_xd("GwMVPQgLFhYHEA==",98)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('Yaw jitter', _lD1A56F9B2AED0011 (_xd("ytLE7Nnax8fWwQ==",179))), {
(_xd("jqen",193)),
(_xd("yeDg9ePy",134)),
(_xd("hKKps6K1",199)),
(_xd("NQYJAwgK",103)),
(_xd("u4OBnJyNmg==",232))
}
)
)
_lD52EDAAF02723665._l89693BE9BF8E2A57 = _lAE2482B62AD01298.push(
(_xd("RXJua2NidQ==",7)), _lD1A56F9B2AED0011 (_xd("eHtmZndgTX10dGF3Zg==",18)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('\n', _lD1A56F9B2AED0011 (_xd("dHdqantsQXF4eG17ag==",30))), -(2340 * 1) / 13, -(-180), 0, true, '°'
)
)
_lD52EDAAF02723665.jitter_random = _lAE2482B62AD01298.push(
(_xd("0Of7/vb34A==",146)), _lD1A56F9B2AED0011 (_xd("zc7T08LV+NXGycPIyg==",167)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("BDc4Mjk7Pyw3Ij85OA==",86)), _lD1A56F9B2AED0011 (_xd("YWJ/f255VHlqZW9kZg==",11))), 0, -(-30), 0, true, '%'
)
)
end
_lD52EDAAF02723665._l853F969D9C31B6DE = _lAE2482B62AD01298.push(
(_xd("7NvHwsrL3A==",174)), _lD1A56F9B2AED0011 (_xd("oq+kuZ+5obc=",192)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('Body yaw', _lD1A56F9B2AED0011 (_xd("eXR/YkRiemw=",27))), {
(_xd("xezs",138)),
(_xd("FygoNysxLD0=",88)),
(_xd("l7ClsK2n",196)),
(_xd("1fbr6/rt",159))
}
)
)
_lD52EDAAF02723665._lE1A0F2049757CCF5 = _lAE2482B62AD01298.push(
(_xd("/MvX0trbzA==",190)), _lD1A56F9B2AED0011 (_xd("1djTzujO1sDo2NHRxNLD",183)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('\n', _lD1A56F9B2AED0011 (_xd("6OXu89Xz6/3V5ezs+e/+",138))), -(180 + (5715 - 5715)), -(-180), 0, true, '°'
)
)
_lD52EDAAF02723665._l647607ED8A0477C6 = _lAE2482B62AD01298.push(
(_xd("0+T4/fX04w==",145)), _lD1A56F9B2AED0011 (_xd("RFBHR1FWQ0xGS0xFfUBNRlt9W0NV",34)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(
'Freestanding body yaw', _lD1A56F9B2AED0011 (_xd("VEBXV0FGU1xWW1xVbVBdVkttS1NF",50))
)
)
)
if _l2E042F1CBFD735FC ~= (_xd("R2BqZG1gZg==",1)) then
_lD52EDAAF02723665.delay_from = _lAE2482B62AD01298.push(
(_xd("xvHt6ODh9g==",132)), _lD1A56F9B2AED0011 (_xd("KCkgLTUTKj4jIQ==",76)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("ro+Gi5PKjJiFhw==",234)), _lD1A56F9B2AED0011 (_xd("nJ2UmYGnnoqXlQ==",248))), 1, (8 + (5579 - 5579)), 1, true, 't', 1, {
[1] = (_xd("1/7+",152))
}
)
)
_lD52EDAAF02723665.delay_to = _lAE2482B62AD01298.push(
(_xd("zPvn4urr/A==",142)), _lD1A56F9B2AED0011 (_xd("HB0UGQEnDBc=",120)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("ZEVMQVkAVE8=",32)), _lD1A56F9B2AED0011 (_xd("3dzV2MDmzdY=",185))), 1, -(-8), 1, true, 't', 1, {
[1] = (_xd("7MXF",163))
}
)
)
_lD52EDAAF02723665.invert_chance = _lAE2482B62AD01298.push(
(_xd("IBcLDgYHEA==",98)), _lD1A56F9B2AED0011 (_xd("TklRQlVTeERPRklEQg==",39)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("s5SMn4iO2pmSm5SZnw==",250)), _lD1A56F9B2AED0011 (_xd("oaa+rbq8l6ugqaarrQ==",200))), 0, (100 * 1), (100 * 1), true, '%'
)
)
end
return _lD52EDAAF02723665
end
local _l93A0F5D91FBDC005 _l3898B57506EE5A38(_l2E042F1CBFD735FC, _l8D7D25A996288554)
local _lD52EDAAF02723665 = _l6AC6C239F852AB60[_l2E042F1CBFD735FC]
if _lD52EDAAF02723665 == nil then
return nil
end
return _lD52EDAAF02723665[_l8D7D25A996288554]
end
local _l93A0F5D91FBDC005 _l9C6776168706F966(_lD52EDAAF02723665)
local _l5E432A44CEEEFD31 = { }
if _lD52EDAAF02723665._l54FCA590490245EE ~= nil then
_l5E432A44CEEEFD31._l54FCA590490245EE = { _lF8E1754D21D14193 = { true } }
for k, v in pairs(_lD52EDAAF02723665._l54FCA590490245EE) do
_l5E432A44CEEEFD31._l54FCA590490245EE[k] = { v:get() }
end
end
if _lD52EDAAF02723665._l60AE168D8FFBE9DB ~= nil then
_l5E432A44CEEEFD31._l60AE168D8FFBE9DB = { }
for k, v in pairs(_lD52EDAAF02723665._l60AE168D8FFBE9DB) do
_l5E432A44CEEEFD31._l60AE168D8FFBE9DB[k] = { v:get() }
end
end
if _lD52EDAAF02723665._l0909714DCA9366DB ~= nil then
_l5E432A44CEEEFD31._l0909714DCA9366DB = _lD52EDAAF02723665._l0909714DCA9366DB:export()
end
return _l5E432A44CEEEFD31
end
local _l93A0F5D91FBDC005 _lF0D420B4C28270EB(_lD52EDAAF02723665, _l5E432A44CEEEFD31)
_l54F19F7B5F58F216.lock_updates()
if _lD52EDAAF02723665._l54FCA590490245EE ~= nil and _l5E432A44CEEEFD31._l54FCA590490245EE ~= nil then
for k, v in pairs(_l5E432A44CEEEFD31._l54FCA590490245EE) do
local _l777D8FF3F76AC3BE = _lD52EDAAF02723665._l54FCA590490245EE[k]
if _l777D8FF3F76AC3BE == nil then
goto continue
end
if _l777D8FF3F76AC3BE.type == (_xd("FhsYHxY=",122)) then
goto continue
end
_l777D8FF3F76AC3BE:set(unpack(v))
::continue::
end
end
if _lD52EDAAF02723665._l60AE168D8FFBE9DB ~= nil and _l5E432A44CEEEFD31._l60AE168D8FFBE9DB ~= nil then
for k, v in pairs(_l5E432A44CEEEFD31._l60AE168D8FFBE9DB) do
local _l777D8FF3F76AC3BE = _lD52EDAAF02723665._l60AE168D8FFBE9DB[k]
if _l777D8FF3F76AC3BE == nil then
goto continue
end
if _l777D8FF3F76AC3BE.type == (_xd("i4aFgos=",231)) then
goto continue
end
_l777D8FF3F76AC3BE:set(unpack(v))
::continue::
end
end
if _lD52EDAAF02723665._l0909714DCA9366DB ~= nil then
_lD52EDAAF02723665._l0909714DCA9366DB:import(
_l5E432A44CEEEFD31._l0909714DCA9366DB, _lD52EDAAF02723665._l60AE168D8FFBE9DB
)
end
_l54F19F7B5F58F216.unlock_updates()
end
local _l93A0F5D91FBDC005 _l589DB057F7B5702C(source, _lB2FDC7CE1037773E, _l4AD09FD714C40727)
local _l02A6C4A2BA07B29F = source._l54FCA590490245EE
local _l3CC3D8850AD37D80 = _lB2FDC7CE1037773E._l54FCA590490245EE
local _lF03F53B326E54E11 = {
(_xd("zMfIy8XMzfbNwNv2",169)) .. _l4AD09FD714C40727,
(_xd("OSE3HywlJjQfJCkyHw==",64)) .. _l4AD09FD714C40727,
(_xd("Rl5IYE1WWFdLYFtWTWA=",63)) .. _l4AD09FD714C40727
}
_l54F19F7B5F58F216.lock_updates()
if _l3CC3D8850AD37D80._lF8E1754D21D14193 ~= nil then
_l3CC3D8850AD37D80._lF8E1754D21D14193:set(true)
end
if _l3CC3D8850AD37D80.yaw_direction ~= nil then
_l3CC3D8850AD37D80.yaw_direction:set(_l4AD09FD714C40727)
end
for i = 1, #_lF03F53B326E54E11 do
local key = _lF03F53B326E54E11[i]
local _l9568A870143136C6 = _l02A6C4A2BA07B29F[key]
local _l1A8956CC8C4F957F = _l3CC3D8850AD37D80[key]
if _l9568A870143136C6 ~= nil and _l1A8956CC8C4F957F ~= nil then
if key == (_xd("PTY5OjQ9PAc8MSoH",88)) .. _l4AD09FD714C40727 then
_l1A8956CC8C4F957F:set(true)
else
_l1A8956CC8C4F957F:set(_l9568A870143136C6:get())
end
end
end
if source._l0909714DCA9366DB ~= nil
and _lB2FDC7CE1037773E._l0909714DCA9366DB ~= nil then
source._l0909714DCA9366DB:copy_direction_to(
_lB2FDC7CE1037773E._l0909714DCA9366DB,
_l4AD09FD714C40727,
source._l60AE168D8FFBE9DB,
_lB2FDC7CE1037773E._l60AE168D8FFBE9DB
)
end
_l54F19F7B5F58F216.unlock_updates()
end
_l6AC6C239F852AB60._l2E042F1CBFD735FC = _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("lrGksaA=",197)), (_xd("FwAcGREQBw==",117))), _l51B39CB5BEECA15A._l407291AB3534872D
)
for i = 1, #_l51B39CB5BEECA15A._l407291AB3534872D do
local _l2E042F1CBFD735FC = _l51B39CB5BEECA15A._l407291AB3534872D[i]
local _lD52EDAAF02723665 = { }
_lD52EDAAF02723665._l8D7D25A996288554 = _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("Dz46Ng==",91)), (_xd("sqW5vLS1ouo=",208)) .. _l2E042F1CBFD735FC), _l51B39CB5BEECA15A.teams
)
for j = 1, #_l51B39CB5BEECA15A.teams do
local _l8D7D25A996288554 = _l51B39CB5BEECA15A.teams[j]
local _l0C45B7ADC38B7BA8 = { }
_l0C45B7ADC38B7BA8._l54FCA590490245EE = _l7E78891BF3BA99BA(
_l2E042F1CBFD735FC, _l8D7D25A996288554, nil
)
if _l2E042F1CBFD735FC ~= (_xd("CS4kKiMuKA==",79)) then
_l0C45B7ADC38B7BA8._l60AE168D8FFBE9DB = _lEC3E563DA767EA83(_l2E042F1CBFD735FC, _l8D7D25A996288554)
if _l00AF2741C2BB3361(_l2E042F1CBFD735FC) then
_l0C45B7ADC38B7BA8._l0909714DCA9366DB = _l80F202FFCDD88EE0(
_l2E042F1CBFD735FC, _l8D7D25A996288554
)
end
end
_l0C45B7ADC38B7BA8.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('\n', (_xd("ITciMyAzJj0gaA==",82)) .. _l2E042F1CBFD735FC .. ':' .. _l8D7D25A996288554)
)
_l0C45B7ADC38B7BA8.send_to_another_team = _lC32E23DC8F791E4A.new(
ui.new_button, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(
(_xd("VmBrYSVxaiVka2pxbWB3JXFgZGg=",5)), (_xd("bHtnYmprfDQ=",14)) .. _l2E042F1CBFD735FC .. ':' .. _l8D7D25A996288554
), _l93A0F5D91FBDC005()
local _lC3B76BAFDA32325D = _l8D7D25A996288554 == (_xd("HTErMCo7LHMKOywsMSw3LSo=",94))
and (_xd("JhcAAB0AGwEG",114)) or (_xd("Vnpge2FwZzhBcGdnemd8ZmE=",21))
local _lB2FDC7CE1037773E = _l3898B57506EE5A38(
_l2E042F1CBFD735FC, _lC3B76BAFDA32325D
)
if _lB2FDC7CE1037773E == nil then
return
end
local _l4AD09FD714C40727 = _l0C45B7ADC38B7BA8._l54FCA590490245EE.yaw_direction
and _l0C45B7ADC38B7BA8._l54FCA590490245EE.yaw_direction:get()
if _l4AD09FD714C40727 ~= nil and _l4AD09FD714C40727 ~= (_xd("UXN4c2R3eg==",22)) then
_l589DB057F7B5702C(
_l0C45B7ADC38B7BA8, _lB2FDC7CE1037773E, _l4AD09FD714C40727
)
_lD71287999D1F9CFB._l92B471B55191BA77(string.format(
(_xd("hZOYgtbThdaSn4STlYKfmZjWgpnWl5iZgp6ThNaCk5eb",246)), _l4AD09FD714C40727
))
return
end
_lF0D420B4C28270EB(_lB2FDC7CE1037773E, _l9C6776168706F966(_l0C45B7ADC38B7BA8))
_lD71287999D1F9CFB._l92B471B55191BA77((_xd("0MbN14PQ18LXxoPXzIPCzczXy8bRg9fGws4=",163)))
end
)
_lD52EDAAF02723665[_l8D7D25A996288554] = _l0C45B7ADC38B7BA8
end
_l6AC6C239F852AB60[_l2E042F1CBFD735FC] = _lD52EDAAF02723665
end
_lC7BA0D7A73A2C57C._lD43E8B0D1DD4CD14 = _lEC3E563DA767EA83(
(_xd("WXRveH5pdHJzfHE=",29)), (_xd("poeKl4yR",227)), nil, false, true
)
for _lDDA2D6AE693381B0, _l777D8FF3F76AC3BE in pairs(_lC7BA0D7A73A2C57C._lD43E8B0D1DD4CD14) do
if _l777D8FF3F76AC3BE.type ~= (_xd("u7a1srs=",215)) then
_l777D8FF3F76AC3BE:set_callback(_l93A0F5D91FBDC005()
local _l4212FF25C6F90CE7 = _lC7BA0D7A73A2C57C._l4212FF25C6F90CE7
if _l4212FF25C6F90CE7 ~= nil then
_l4212FF25C6F90CE7:save_current()
end
end)
end
end
for i = 1, #_lC7BA0D7A73A2C57C.instances do
_lC7BA0D7A73A2C57C.instances[i]._lD43E8B0D1DD4CD14 = _lC7BA0D7A73A2C57C._lD43E8B0D1DD4CD14
end
_l22887641E343368B._l6AC6C239F852AB60 = _l6AC6C239F852AB60
end
local _lCAAFBE4F1A7B03D0 = { } do
local _lC1E3F5FBCBA96A35 = { } do
_lC1E3F5FBCBA96A35._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("oYKGk5KVgpQ=",231)), (_xd("l4CZn5KplJeVnYWCl5TYk5iXlJqTkg==",246)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', (_xd("kKe+uLXxs7CyuqKlsLM=",209))
)
)
_lC1E3F5FBCBA96A35._lCD138FF075844224 = _lAE2482B62AD01298.push(
(_xd("Di0pPD06LTs=",72)), (_xd("BBMKDAE6BwQGDhYRBAdLAQwWEQQLBgA=",101)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("7cDa3cjHysw=",169)), (_xd("hpGIjoO4hYaEjJSThoU=",231))), -(-150), (37785 + 37465 - 37465), -(-240), true, 'u'
)
)
_lC1E3F5FBCBA96A35.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_lCAAFBE4F1A7B03D0._lC1E3F5FBCBA96A35 = _lC1E3F5FBCBA96A35
end
local _l88375EBF3C34EB61 = { } do
_l88375EBF3C34EB61._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("NBcTBgcAFwE=",114)), (_xd("x9fAxM76ycb60dfMwsLA19aLwMvEx8nAwQ==",165)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', (_xd("6dnOysCL5+iL39nCzMzO2dg=",171))
)
)
_l88375EBF3C34EB61._l407291AB3534872D = _lAE2482B62AD01298.push(
(_xd("MBMXAgMEEwU=",118)), (_xd("4fHm4ujc7+Dc9/Hq5OTm8fCt8Pfi9+bw",131)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("9tHE0cDW",165)), (_xd("3tfK293n2srd2dPn1NvnzMrR39/dyss=",184))), {
(_xd("oIqHlY6Dgg==",230)),
(_xd("cUZPTEJHSk1E",35)),
(_xd("S350dnF4P3t+cn54eg==",31))
}
)
)
_l88375EBF3C34EB61.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_lE658F732C5F7D939(_l88375EBF3C34EB61._l407291AB3534872D)
_lCAAFBE4F1A7B03D0._l88375EBF3C34EB61 = _l88375EBF3C34EB61
end
local _lC3DEF9996526AC6D = { } do
_lC3DEF9996526AC6D._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("ACMnMjM0IzU=",70)), (_xd("Y3F2dU94dXF0PnV+cXJ8dXQ=",16)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("5NbR0pff0tbT",183)), (_xd("/uzr6NLl6Ozp",141)))
)
)
_lC3DEF9996526AC6D.conditions = _lAE2482B62AD01298.push(
(_xd("5cbC19bRxtA=",163)), (_xd("RFZRUmhfUlZTGVRYWVNeQ15YWUQ=",55)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("l7u6sL2gvbu6pw==",212)), (_xd("loSDgLqNgISB",229))), {
(_xd("LQofEBoXEBk=",126)),
(_xd("HC0wKjw3",95)),
(_xd("IQkSQAMSDxUDCEALDgkGBQ==",96)),
(_xd("yeT++ezj7ug=",141))
}
)
)
_lC3DEF9996526AC6D.e_spam_while_active = _lAE2482B62AD01298.push(
(_xd("2fr+6+rt+uw=",159)), (_xd("PiwrKBIlKCwpYygSPj0sIBI6JSQhKBIsLjkkOyg=",77)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("8JXmxdTYlcLd3NnQldTWwdzD0A==",181)), (_xd("2cvMz/XCz8vO",170)))
)
)
_lC3DEF9996526AC6D.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_lE658F732C5F7D939(_lC3DEF9996526AC6D.conditions)
_lCAAFBE4F1A7B03D0._lC3DEF9996526AC6D = _lC3DEF9996526AC6D
end
local _lAB6735E1E2F4E6FA = { } do
_lAB6735E1E2F4E6FA._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("3/z47ezr/Oo=",153)), (_xd("YHZlemJnSGV4YnlzSHJ5czlyeXZ1e3Jz",23)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("CzIhNjYtICFkNzQtKiohNg==",68)), (_xd("moyfgJidsp+CmIOJsoiDiQ==",237))), {
(_xd("8MbVytLX",167)),
(_xd("YkMMSUJJQUVJXw==",44))
}
)
)
_lCAAFBE4F1A7B03D0._lAB6735E1E2F4E6FA = _lAB6735E1E2F4E6FA
end
local _l9ADD09A58A60C241 = { } do
_l9ADD09A58A60C241._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("PxwYDQwLHAo=",121)), (_xd("DgQBCwM3DRAYBAcBHEYNBgkKBA0M",104)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("UHp/dX02c25menl/Yg==",22)), (_xd("R01IQkp+RFlRTU5IVQ==",33)))
)
)
_l9ADD09A58A60C241._l407291AB3534872D = _lAE2482B62AD01298.push(
(_xd("8NPXwsPE08U=",182)), (_xd("8vj99//L8ezk+Pv94Lrn4PXg8ec=",148)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("PRoPGgsd",110)), (_xd("t724srqOtKmhvb64pQ==",209))), {
(_xd("n7itoqiloqs=",204)),
(_xd("yPf07LvM+vfw",155)),
(_xd("y+P4",138)),
(_xd("ACgzbAIzLjQiKQ==",65)),
(_xd("MwIfBRMY",112)),
(_xd("X31kdz9RYH1ncXo=",18))
}
)
)
_l9ADD09A58A60C241._l46AA6D7987AE7B3A = _lAE2482B62AD01298.push(
(_xd("FTYyJyYhNiA=",83)), (_xd("UVteVFxoR15DVF8=",55)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('Pitch', (_xd("LSciKCAUOyI/KCM=",75))), {
(_xd("m7Ky",212)),
(_xd("dFNGU05E",39)),
(_xd("bkpcRA==",61)),
(_xd("GT0jPiki",74)),
(_xd("allWXFdV",56)),
(_xd("5cLXwt/VluTX2NLZ2w==",182))
}
)
)
_l9ADD09A58A60C241.pitch_label_1 = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', (_xd("PgoXFQ==",120))
)
_l9ADD09A58A60C241._l72BB9EFD1D25CD9F = _lAE2482B62AD01298.push(
(_xd("z+zo/fz77Po=",137)), (_xd("S0FETkZyXURZTkVyQktLXkhZchw=",45)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('\n', (_xd("EBofFR0pBh8CFR4pGRAQBRMCKUc=",118))), -(979 * 1) / 11, -(-89), 0, true, 'В°'
)
)
_l9ADD09A58A60C241.pitch_label_2 = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', 'To'
)
_l9ADD09A58A60C241._l84BE8A6927CCD15A = _lAE2482B62AD01298.push(
(_xd("dlVRREVCVUM=",48)), (_xd("WlBVX1djTFVIX1RjU1paT1lIYw4=",60)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('\n', (_xd("AAoPBQ05Fg8SBQ45CQAAFQMSOVQ=",102))), -(89 + (9784 - 9784)), -(-89), 0, true, 'В°'
)
)
_l9ADD09A58A60C241.pitch_speed = _lAE2482B62AD01298.push(
(_xd("0PP34uPk8+U=",150)), (_xd("6OLn7eXR/uf67ebR/f7r6+o=",142)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("qIuenp8=",251)), (_xd("jYeCiIC0m4KfiIO0mJuOjo8=",235))), -(75 * 1), (900 * 1) / 12, (20 * 1), true, nil, 0.1
)
)
_l9ADD09A58A60C241.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_lE658F732C5F7D939(_l9ADD09A58A60C241._l407291AB3534872D, {
(_xd("pZqZgdahl5qd",246)),
(_xd("z/7j+e/k",140)),
(_xd("89HI25P9zNHL3dY=",190))
})
_lCAAFBE4F1A7B03D0._l9ADD09A58A60C241 = _l9ADD09A58A60C241
end
_l22887641E343368B._lCAAFBE4F1A7B03D0 = _lCAAFBE4F1A7B03D0
end
local _lA2858F25491F9BF1 = { } do
local _lA550371056A1793A = { } do
_lA550371056A1793A._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("spWOkZ+DiQ==",250)), (_xd("7O3u7Nbw6P6n7Ofo6+Xs7Q==",137)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('Edge yaw', (_xd("1NXW1O7I0MY=",177)))
)
)
_lA550371056A1793A.hotkey = _lAE2482B62AD01298.push(
(_xd("r4iTjIKelA==",231)), (_xd("BAUGBD4YABZPCQ4VCgQY",97)), _lC32E23DC8F791E4A.new(
ui.new_hotkey, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("Wn1meXdr",18)), (_xd("KSgrKRM1LTs=",76))), true
)
)
_lA550371056A1793A.disablers = _lAE2482B62AD01298.push(
(_xd("XXphfnBsZg==",21)), (_xd("Pz49PwUjOy10PjMpOzg2Pygp",90)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("4czWxMfJwNfW",165)), (_xd("oqOgopi+prA=",199))), {
(_xd("lrGkq6Gsq6I=",197)),
(_xd("pIafgIeO",233)),
(_xd("1+jr86TT5ejv",132)),
(_xd("xe32",132)),
(_xd("jbyhu62mq6o=",206))
}
)
)
_lA2858F25491F9BF1._lA550371056A1793A = _lA550371056A1793A
end
local _l8C975ACFD6C1C204 = { } do
_l8C975ACFD6C1C204._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("+t3G2dfLwQ==",178)), (_xd("yNzLy93az8DKx8DJgMvAz8zCy8o=",174)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('Freestanding', (_xd("HwscHAoNGBcdEBce",121)))
)
)
_l8C975ACFD6C1C204.hotkey = _lAE2482B62AD01298.push(
(_xd("6c7VysTY0g==",161)), (_xd("AxcAABYRBAsBDAsCSw0KEQ4AHA==",101)), _lC32E23DC8F791E4A.new(
ui.new_hotkey, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("ZENYR0lV",44)), (_xd("NyM0NCIlMD81OD82",81))), true
)
)
_l8C975ACFD6C1C204.disablers = _lAE2482B62AD01298.push(
(_xd("xOP45+n1/w==",140)), (_xd("dmJ1dWNkcX50eX53PnR5Y3FyfHViYw==",16)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("DCE7KSokLTo7",72)), (_xd("rbmurri/qqWvoqWs",203))), {
(_xd("cVZDTEZLTEU=",34)),
(_xd("5sTdwsXM",171)),
(_xd("wf795bLF8/75",146)),
(_xd("kLij",209)),
(_xd("rZyBm42Gi4o=",238))
}
)
)
_l8C975ACFD6C1C204.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_lA2858F25491F9BF1._l8C975ACFD6C1C204 = _l8C975ACFD6C1C204
end
local _l2E58584FED1AE833 = { } do
_l2E58584FED1AE833._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("fllCXVNPRQ==",54)), (_xd("LSEuNSEsHzkhN24lLiEiLCUk",64)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("v5Och5Oe0quThQ==",242)), (_xd("v7O8p7O+jauzpQ==",210)))
)
)
_l2E58584FED1AE833.options = _lAE2482B62AD01298.push(
(_xd("/drB3tDMxg==",181)), (_xd("pqqlvqqnlLKqvOWku7+ipKW4",203)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("Y1xYRUNCXw==",44)), (_xd("NTk2LTk0ByE5Lw==",88))), {
(_xd("zeD66Ovl7Knw6P6p5Obt4O/g7Pv6",137)),
(_xd("o5eAgJaRhIuBjIuCxYeKgZw=",229)),
}
)
)
_l2E58584FED1AE833.reset_hotkey = _lAE2482B62AD01298.push(
(_xd("MhUOER8DCQ==",122)), (_xd("EBwTCBwRIgQcClMPGA4YCSIVEgkWGAQ=",125)), _lC32E23DC8F791E4A.new(
ui.new_hotkey, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(
(_xd("JhEHEQA=",116)), (_xd("7+Ps9+Pu3fvj9Q==",130))
)
)
)
_l2E58584FED1AE833.left_hotkey = _lAE2482B62AD01298.push(
(_xd("spWOkZ+DiQ==",250)), (_xd("JCgnPCglFjAoPmclLC89FiEmPSIsMA==",73)), _lC32E23DC8F791E4A.new(
ui.new_hotkey, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(
(_xd("EDk6KA==",92)), (_xd("LSEuNSEsHzkhNw==",64))
)
)
)
_l2E58584FED1AE833.right_hotkey = _lAE2482B62AD01298.push(
(_xd("S2x3aGZ6cA==",3)), (_xd("/vL95vL/zOry5L3h+vT758z7/Of49uo=",147)), _lC32E23DC8F791E4A.new(
ui.new_hotkey, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(
(_xd("R3xyfWE=",21)), (_xd("vLC/pLC9jqiwpg==",209))
)
)
)
_l2E58584FED1AE833.forward_hotkey = _lAE2482B62AD01298.push(
(_xd("Gj0mOTcrIQ==",82)), (_xd("w8/A28/C8dfP2YDIwdzZz9zK8cbB2sXL1w==",174)), _lC32E23DC8F791E4A.new(
ui.new_hotkey, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(
(_xd("/NXIzdvI3g==",186)), (_xd("UFxTSFxRYkRcSg==",61))
)
)
)
_l2E58584FED1AE833.backward_hotkey = _lAE2482B62AD01298.push(
(_xd("lrGqtbunrQ==",222)), (_xd("e3d4Y3d6SW93YTh0d3V9YXdkckl+eWJ9c28=",22)), _lC32E23DC8F791E4A.new(
ui.new_hotkey, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(
(_xd("KwgKAh4IGw0=",105)), (_xd("Iy8gOy8iETcvOQ==",78))
)
)
)
_l2E58584FED1AE833._l1A5745CF6DC0D04D = _lAE2482B62AD01298.push(
(_xd("up2GmZeLgQ==",242)), (_xd("j4OMl4OOvZuDlcyPg4yXg469g5CQjZWR",226)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("vpKdhpKf05KBgZyEgA==",243)), (_xd("X1NcR1NebUtTRQ==",50))), {
(_xd("iKGh",199)),
(_xd("+9TZy8vR2w==",184)),
(_xd("eFpRUEdb",53)),
(_xd("X25qZnhgbm5/",11))
}
)
)
_l2E58584FED1AE833.arrows_offset = _lAE2482B62AD01298.push(
(_xd("89TP0N7CyA==",187)), (_xd("cX1yaX1wQ2V9azJ9bm5za29Dc3p6b3lo",28)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("hrW1qLC056ihobSisw==",199)), (_xd("TUFOVUFMf1lBVw==",32))), (8 + (9092 - 9092)), (88332 + 88204 - 88204), (40 + (8328 - 8328)), true, 'px'
)
)
_l2E58584FED1AE833.arrows_color = _lAE2482B62AD01298.push(
(_xd("1vHq9fvn7Q==",158)), (_xd("sb2yqb2wg6W9q/K9rq6zq6+Dv7Ows64=",220)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("VmVleGBkN3R4e3hl",23)), (_xd("lJiXjJiVpoCYjg==",249))), (175 * 1), (255 * 1), (440 * 1) / 8, -(-255)
)
)
_l2E58584FED1AE833.desync_color = _lAE2482B62AD01298.push(
(_xd("0vXu8f/j6Q==",154)), (_xd("GRUaARUYKw0VA1oQEQcNGhcrFxsYGwY=",116)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("mLmvpbK//L+zsLOu",220)), (_xd("EBwTCBwRIgQcCg==",125))), -(-35), -(-128), (4080 * 1) / 16, (255 * 1)
)
)
_l2E58584FED1AE833.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_l2E58584FED1AE833.reset_hotkey:set 'On hotkey'
_l2E58584FED1AE833.left_hotkey:set 'Toggle'
_l2E58584FED1AE833.right_hotkey:set 'Toggle'
_l2E58584FED1AE833.forward_hotkey:set 'Toggle'
_l2E58584FED1AE833.backward_hotkey:set 'Toggle'
_lA2858F25491F9BF1._l2E58584FED1AE833 = _l2E58584FED1AE833
end
local _l270D2C6CD7AD71A2 = { } do
_l270D2C6CD7AD71A2._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("VHNod3llbw==",28)), (_xd("fWpuY1B2bnhQbn19YHh8IWphbm1jams=",15)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(
(_xd("FiElKGQ9JTNkJTY2KzM=",68)), (_xd("xtHV2OvN1cPr1cbG28PH",180))
)
)
)
_l270D2C6CD7AD71A2._lE8558CABD1E415C2 = _lAE2482B62AD01298.push(
(_xd("kLess72hqw==",216)), (_xd("PSouIxA2LjgQLj09IDg8YSApKTwqOw==",79)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(
(_xd("ECMjPiZxIzA1OCQi",81)), (_xd("d2BkaVp8ZHJaZHd3anJ2",5))
), (21789 + 21781 - 21781), (896 * 1) / 7, (640 * 1) / 16, true, 'px'
)
)
_l270D2C6CD7AD71A2._l424F4D241D652803 = _lAE2482B62AD01298.push(
(_xd("EDcsMz0hKw==",88)), (_xd("8+Tg7d744Pbe4PPz7vbyr+Lu7e7z",129)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1(
(_xd("XW5uc2s8f3Nwc24=",28)), (_xd("6f7698Ti+uzE+unp9Ozo",155))
), (35 + (6161 - 6161)), -(-128), (10643 + 10388 - 10388), (36617 + 36362 - 36362)
)
)
_l270D2C6CD7AD71A2.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_lA2858F25491F9BF1._l270D2C6CD7AD71A2 = _l270D2C6CD7AD71A2
end
local _l89E23F44D9DA3022 = { } do
_l89E23F44D9DA3022._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("ACc8Iy0xOw==",72)), (_xd("XEFCQnFPTwBLQE9MQktK",46)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("rpOQkNy9vQ==",252)), (_xd("WURHR3RKSg==",43)))
)
)
_l89E23F44D9DA3022.hotkey = _lAE2482B62AD01298.push(
(_xd("iq22qae7sQ==",194)), (_xd("c25tbV5gYC9pbnVqZHg=",1)), _lC32E23DC8F791E4A.new(
ui.new_hotkey, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("/drB3tDM",181)), (_xd("AB0eHi0TEw==",114))), true
)
)
_l89E23F44D9DA3022._l861DF5F3FC680167 = _lAE2482B62AD01298.push(
(_xd("RmF6ZWt3fQ==",14)), (_xd("GwYFBTYICEcfCAUcDA==",105)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("1OPu9+c=",130)), (_xd("WURHR3RKSg==",43))), -(50 + (869 - 869)), (50 + (5516 - 5516)), 0, true, 'В°'
)
)
_l89E23F44D9DA3022.on_manual_yaw = _lAE2482B62AD01298.push(
(_xd("/tnC3dPPxQ==",182)), (_xd("Ax4dHS4QEF8eHy4cEB8EEB0uCBAG",113)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("CShmKycoMycqZj8nMQ==",70)), (_xd("ko+MjL+BgQ==",224)))
)
)
_l89E23F44D9DA3022.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_lA2858F25491F9BF1._l89E23F44D9DA3022 = _l89E23F44D9DA3022
end
_l22887641E343368B._lA2858F25491F9BF1 = _lA2858F25491F9BF1
end
local _l7A80B95D217116EF = { } do
local HOTKEY_MODE = {
[0] = 'Always on',
[1] = 'On hotkey',
[-(-2)] = 'Toggle',
[(36 * 1) / 12] = 'Off hotkey'
}
local _l93A0F5D91FBDC005 _lC945FAF5EA43DD53(_lDDA2D6AE693381B0, _lB17914F567A7940B, key)
return HOTKEY_MODE[_lB17914F567A7940B], key or 0
end
_l7A80B95D217116EF._lF8E1754D21D14193 = _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Other', _l07C07072582A4EF1('Enabled', (_xd("DwgCDAUIDg==",105)))
)
_l7A80B95D217116EF.hotkey = _lC32E23DC8F791E4A.new(
ui.new_hotkey, 'AA', 'Other', _l07C07072582A4EF1((_xd("q4yXiIaa",227)), (_xd("5eLo5u/i5A==",131))), true
)
_l7A80B95D217116EF.amount = _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Other', _l07C07072582A4EF1('Amount', (_xd("NjE7NTwxNw==",80))), {
(_xd("Y15JRkpORA==",39)),
(_xd("bEBZSExUTA==",33)),
(_xd("1P7n8ebn8+b3",146))
}
)
_l7A80B95D217116EF.variance = _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Other', _l07C07072582A4EF1('Variance', (_xd("5uHr5ezh5w==",128))), 0, (100 + (8865 - 8865)), 0, true, '%'
)
_l7A80B95D217116EF.limit = _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Other', _l07C07072582A4EF1('Limit', (_xd("BQIIBg8CBA==",99))), 1, (192 * 1) / 8, 1, true, 't'
)
_l7A80B95D217116EF.force_choke = _lAE2482B62AD01298.push(
(_xd("V3RwZWRjdGI=",17)), (_xd("p6CqpK2gpu+nrrOipJ6iqa6qpA==",193)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Other', _l07C07072582A4EF1((_xd("6cDdzMqPzMfAxMo=",175)), (_xd("UFddU1pXUQ==",54)))
)
)
_l7A80B95D217116EF.unsafe_choke = _lAE2482B62AD01298.push(
(_xd("+NvfysvM280=",190)), (_xd("2d7U2tPe2JHK0cze2drg3NfQ1No=",191)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Other', _l07C07072582A4EF1((_xd("v4SZi4yPyomChYGP",234)), (_xd("PjkzPTQ5Pw==",88)))
)
)
_l7A80B95D217116EF._lF8E1754D21D14193:set(ui.get(_lE4C0F29811DB3FE5.antiaimbot.fake_lag._lF8E1754D21D14193[1]))
_l7A80B95D217116EF.hotkey:set(_lC945FAF5EA43DD53(ui.get(_lE4C0F29811DB3FE5.antiaimbot.fake_lag._lF8E1754D21D14193[(2 * 1)])))
_l7A80B95D217116EF.amount:set(ui.get(_lE4C0F29811DB3FE5.antiaimbot.fake_lag.amount))
_l7A80B95D217116EF.variance:set(ui.get(_lE4C0F29811DB3FE5.antiaimbot.fake_lag.variance))
_l7A80B95D217116EF.limit:set(ui.get(_lE4C0F29811DB3FE5.antiaimbot.fake_lag.limit))
_l22887641E343368B._l7A80B95D217116EF = _l7A80B95D217116EF
end
_l934A3DF2B1DD218E._l22887641E343368B = _l22887641E343368B
end
local _lE2976F4B96444697 = { } do
local _l7B49218C1AF8B0F2 = { } do
local _l67FF28C9241F3A40 = { } do
local _lB2E126E813EFF8AF = {
[(125 + (7677 - 7677))] = (_xd("uba4",140)),
[(133 + (1570 - 1570))] = (_xd("KScu",29)),
[(160 * 1)] = (_xd("gIeLgIE=",177)),
[-(-177)] = (_xd("DQoGBQ==",60))
}
_l67FF28C9241F3A40._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("BywlKiMhNjc=",68)), (_xd("prS3oqSzmLWms66o6aKppqWroqM=",199)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("dEZFUFZBFUdUQVxa",53)), (_xd("zN7dyM7Z8t/M2cTC",173)))
)
)
_l67FF28C9241F3A40._l861DF5F3FC680167 = _lAE2482B62AD01298.push(
(_xd("/9Td0tvZzs8=",188)), (_xd("mIqJnJqNpouYjZCW14+YlYyc",249)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1('\n', (_xd("uqirvrivhKm6r7K0",219))), 0, (2200 * 1) / 11, (20854 + 20721 - 20721), true, '', 0.01, _lB2E126E813EFF8AF
)
)
_l67FF28C9241F3A40.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_l7B49218C1AF8B0F2._l67FF28C9241F3A40 = _l67FF28C9241F3A40
end
local _l7A06D468E30DD0C0 = { } do
_l7A06D468E30DD0C0._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("9N/W2dDSxcQ=",183)), (_xd("T1NSSV9kS15JSFRVFV5VWllXXl8=",59)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("KhYXDBpeDhsMDREQ",126)), (_xd("BxsaARcsAxYBABwd",115)))
)
)
_l7A06D468E30DD0C0._lCD138FF075844224 = _lAE2482B62AD01298.push(
(_xd("Z0xFSkNBVlc=",36)), (_xd("9urr8Obd8ufw8e3srObr8fbj7OHn",130)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("g660s6appKI=",199)), (_xd("DhITCB4lCh8ICRUU",122))), 0, -(-180), -(-100)
)
)
_l7A06D468E30DD0C0._l15FC03D161D82F9E = _lAE2482B62AD01298.push(
(_xd("/dbf0NnbzM0=",190)), (_xd("6PT17vjD7Pnu7/Pysubz8/HD7+z5+fg=",156)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("Qnd3dThraH19fA==",24)), (_xd("OCQlPigTPCk+PyMi",76))), 1, (500 * 1) / 5, (25 * 1), true, '%', 1, {
[1] = (_xd("a0pLQA==",37))
}
)
)
_l7A06D468E30DD0C0.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_l7B49218C1AF8B0F2._l7A06D468E30DD0C0 = _l7A06D468E30DD0C0
end
local _l353197A7D87942B7 = { } do
_l353197A7D87942B7._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("pI+GiYCClZQ=",231)), (_xd("gZ6SgJqYk5Kb2ZKZlpWbkpM=",247)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("3eLu/Obk7+7n",139)), (_xd("uaaquKKgq6qj",207)))
)
)
_l353197A7D87942B7.fov = _lAE2482B62AD01298.push(
(_xd("S2BpZm9tens=",8)), (_xd("gZ6SgJqYk5Kb2ZGYgQ==",247)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("Z0hETUUBTkcBR05X",33)), (_xd("m4SImoCCiYiB",237))), 0, (1000 + (1512 - 1512)), (680 + (4774 - 4774)), true, '°', 0.1
)
)
_l353197A7D87942B7._l1285CD8A8A89032F = _lAE2482B62AD01298.push(
(_xd("bUZPQElLXF0=",46)), (_xd("wd7SwNrY09LbmdjR0cTSw+jP",183)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("IwoKHwkYTDQ=",108)), (_xd("6Pf76fPx+vvy",158))), -(10048 + 9948 - 9948), -(-100), -(-25), true, '', 0.1
)
)
_l353197A7D87942B7._lB179AD0D5B6AB17F = _lAE2482B62AD01298.push(
(_xd("tZ6XmJGThIU=",246)), (_xd("hJuXhZ+dlpee3J2UlIGXhq2L",242)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("BSwsOS8+ahM=",74)), (_xd("or2xo7m7sLG4",212))), -(100 * 1), (45931 + 45831 - 45831), -(-25), true, '', 0.1
)
)
_l353197A7D87942B7.offset_z = _lAE2482B62AD01298.push(
(_xd("58zFysPB1tc=",164)), (_xd("5/j05vz+9fT9v/739+L05c7r",145)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("r4aGk4WUwLo=",224)), (_xd("7vH97/X3/P30",152))), -(100 * 1), -(-100), -(-25), true, '', 0.1
)
)
_l353197A7D87942B7.options = _lAE2482B62AD01298.push(
(_xd("KwAJBg8NGhs=",104)), (_xd("ZHt3ZX99dnd+PH1iZnt9fGE=",18)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("1+js8ff26w==",152)), (_xd("o7ywori6sbC5",213))), {
(_xd("KAEDBQcdRAUKDQkFEA0LCg==",100)),
(_xd("49PfwNWQ1N/H3pDD2dfYxA==",176)),
(_xd("Ih0RAxkbEBEYVB0aVAcXGwQR",116)),
(_xd("JRoaBRkDHg9KAQQDDA9KAgsEDg==",106)),
(_xd("cUZOTFVGA1BPRkZVRlA=",35))
}
)
)
_l353197A7D87942B7.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_l7B49218C1AF8B0F2._l353197A7D87942B7 = _l353197A7D87942B7
end
local _l8FAAA6B1FE921DDE = { } do
_l8FAAA6B1FE921DDE._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("qY6UhZKGgYOF",224)), (_xd("5/H38Ovp2/fn6/ThquHq5ebo4eA=",132)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("QXdxdm1vInFhbXJn",2)), (_xd("tqCmobq4iqa2uqWw",213)))
)
)
_l8FAAA6B1FE921DDE._l424F4D241D652803 = _lAE2482B62AD01298.push(
(_xd("uZ6ElYKWkZOV",240)), (_xd("n4mPiJORo4+fk4yZ0p+TkJOO",252)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("LRsdGgEDTh0NAR4LTg0BAgEc",110)), (_xd("9ePl4vn7yeX1+ebz",150))), (36723 + 36468 - 36468), (54784 + 54529 - 54529), (255 + (9485 - 9485)), (200 * 1)
)
)
_l8FAAA6B1FE921DDE._lD75D3219FDCD5C2C = _lAE2482B62AD01298.push(
(_xd("AyQ+LzgsKykv",74)), (_xd("ZHJ0c2hqWHRkaHdiKXRzfmti",7)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("ak1AVVw=",57)), (_xd("fGpsa3ByQGx8cG96",31))), {
(_xd("9tfU08fexg==",178)),
(_xd("+9DC",181)),
(_xd("voOYjZiJiA==",236))
}
)
)
_l8FAAA6B1FE921DDE.exclude = _lAE2482B62AD01298.push(
(_xd("ZENZSF9LTE5I",45)), (_xd("JTM1MikrGTUlKTYjaCM+JSozIiM=",70)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("5djDzNXExQ==",160)), (_xd("Ljg+OSIgEj4uIj0o",77))), {
(_xd("68LB0w==",167)),
(_xd("IhkXGAQ=",112)),
(_xd("bFdI",56)),
(_xd("/9LJydLQ",189))
}
)
)
_l8FAAA6B1FE921DDE._l1DB180C36A4930A4 = _lAE2482B62AD01298.push(
(_xd("tJOJmI+bnJ6Y",253)), (_xd("9ePl4vn7yeX1+ebzuOb55f/i//n4",150)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("CjUpMy4zNTQ=",90)), (_xd("moyKjZaUpoqalomc",249))), 0, (500 + (8357 - 8357)), (945 * 1) / 9
)
)
_l8FAAA6B1FE921DDE._lE8558CABD1E415C2 = _lAE2482B62AD01298.push(
(_xd("nbqgsaaytbex",212)), (_xd("LDo8OyAiEDwsID8qYSApKTwqOw==",79)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("x+7u++38",136)), (_xd("XEpMS1BSYExcUE9a",63))), 0, (500 * 1), -(-10)
)
)
_l8FAAA6B1FE921DDE.start_fade = _lAE2482B62AD01298.push(
(_xd("ooWfjpmNioiO",235)), (_xd("NSMlIjk7CSU1OSYzeCUiNyQiCTA3MjM=",86)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("LwgdDghcGh0YGQ==",124)), (_xd("3sjOydLQ4s7e0s3Y",189))), (80 * 1) / 16, (50 + (2117 - 2117)), (50 * 1), true, '%'
)
)
_l8FAAA6B1FE921DDE.animation_speed = _lAE2482B62AD01298.push(
(_xd("+N/F1MPX0NLU",177)), (_xd("OiwqLTY0Bio6Nik8dzg3MDQ4LTA2NwYqKTw8PQ==",89)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("yOfg5Oj94Obnqfr57Ozt",137)), (_xd("HwkPCBMRIw8fEwwZ",124))), 1, -(-50), (20 + (6460 - 6460))
)
)
_l8FAAA6B1FE921DDE.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_l7B49218C1AF8B0F2._l8FAAA6B1FE921DDE = _l8FAAA6B1FE921DDE
end
local _lB4FFB8F7D3B1C70E = { } do
_lB4FFB8F7D3B1C70E._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("WXJ7dH1/aGk=",26)), (_xd("tq6zraWerK6ltK2gtaiur++kr6CjraSl",193)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Other', _l07C07072582A4EF1((_xd("t4+SjITAjY+ElYyBlImPjg==",224)), (_xd("T1dKVFxnVVdcTVRZTFFXVg==",56)))
)
)
_lB4FFB8F7D3B1C70E.wall_color = _lAE2482B62AD01298.push(
(_xd("tJ+WmZCShYQ=",247)), (_xd("vqa7pa2WpKatvKWovaCmp+e+qKWllqqmpaa7",201)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Other', _l07C07072582A4EF1((_xd("OA4DA08MAAMAHQ==",111)), (_xd("yNDN09vg0tDbytPey9bQ0Q==",191)))
)
)
_lB4FFB8F7D3B1C70E.wall_color_picker = _lAE2482B62AD01298.push(
(_xd("iaKrpK2vuLk=",202)), (_xd("pb2gvraNv722p76zpru9vPyls76+jbG9vr2gjaK7sbm3oA==",210)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Other', _l07C07072582A4EF1((_xd("FCIvL2MgLC8sMWMzKiAoJjE=",67)), (_xd("y9PO0Njj0dPYydDdyNXT0g==",188))), (255 + (2023 - 2023)), 0, 0, (128 + (9036 - 9036))
)
)
_lB4FFB8F7D3B1C70E.bloom = _lAE2482B62AD01298.push(
(_xd("XnV8c3p4b24=",29)), (_xd("5Pzh//fM/vz35v/y5/r8/b3x//z8/g==",147)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Other', _l07C07072582A4EF1((_xd("a0VGRkQJWkpIRUw=",41)), (_xd("Y3tmeHBLeXtwYXh1YH17eg==",20))), -1, -(-500), -1, true, nil, 0.01, {
[-1] = (_xd("oouL",237))
}
)
)
_lB4FFB8F7D3B1C70E.exposure = _lAE2482B62AD01298.push(
(_xd("6sHIx87M29o=",169)), (_xd("u6O+oKiToaOouaCtuKWjouKptLyjv7m+qQ==",204)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Other', _l07C07072582A4EF1((_xd("dEBBWhVQTUVaRkBHUA==",53)), (_xd("08vWyMD7ycvA0cjF0M3Lyg==",164))), -1, (2000 * 1), -1, true, nil, 0.001, {
[-1] = (_xd("9dzc",186))
}
)
)
_lB4FFB8F7D3B1C70E.model_ambient = _lAE2482B62AD01298.push(
(_xd("dV5XWFFTREU=",54)), (_xd("V09STER/TU9EVUxBVElPTg5NT0RFTH9BTUJJRU5U",32)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Other', _l07C07072582A4EF1((_xd("QGRjZGB4YC1gYmloYS1vf2RqZXljaH5+",13)), (_xd("4Pjl+/PI+vjz4vv24/74+Q==",151))), 0, (96292 + 95292 - 95292), -1, true, nil, 0.01
)
)
_lB4FFB8F7D3B1C70E.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Other', '\n'
)
_l7B49218C1AF8B0F2._lB4FFB8F7D3B1C70E = _lB4FFB8F7D3B1C70E
end
local _l9A79211365DBCD03 = { } do
_l9A79211365DBCD03._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("rIeOgYiKnZw=",239)), (_xd("YWRqZXlSYGJpeGFseWRiYyNoY2xvYWhp",13)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Other', _l07C07072582A4EF1((_xd("iq+hrrLmq6mis6qnsq+pqA==",198)), (_xd("jYiGiZW+jI6FlI2AlYiOjw==",225)))
)
)
_l9A79211365DBCD03._l1285CD8A8A89032F = _lAE2482B62AD01298.push(
(_xd("gqmgr6aks7I=",193)), (_xd("8vf59urB8/H66/L/6vfx8LDx+Pjt++rB5g==",158)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Other', _l07C07072582A4EF1((_xd("9t/fytzNmeE=",185)), (_xd("MzY4NysAMjA7KjM+KzYwMQ==",95))), --(-180), (48008 + 47828 - 47828), (72641 + 72639 - 72639)
)
)
_l9A79211365DBCD03._lB179AD0D5B6AB17F = _lAE2482B62AD01298.push(
(_xd("Y0hBTkdFUlM=",32)), (_xd("s7a4t6uAsrC7qrO+q7awsfGwubmsuquApg==",223)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Other', _l07C07072582A4EF1((_xd("Jw4OGw0cSDE=",104)), (_xd("ZWBuYX1WZGZtfGVofWBmZw==",9))), -(180 + (1185 - 1185)), (1800 * 1) / 10, 0
)
)
_l9A79211365DBCD03.offset_z = _lAE2482B62AD01298.push(
(_xd("e1BZVl9dSks=",56)), (_xd("TktFSlZ9T01GV05DVktNTAxNRERRR1Z9WA==",34)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Other', _l07C07072582A4EF1((_xd("iKGhtKKz550=",199)), (_xd("GRwSHQEqGBoRABkUARwaGw==",117))), --(-180), (98865 + 98685 - 98685), 0
)
)
_l9A79211365DBCD03.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Other', '\n'
)
_l7B49218C1AF8B0F2._l9A79211365DBCD03 = _l9A79211365DBCD03
end
_lE2976F4B96444697._l7B49218C1AF8B0F2 = _l7B49218C1AF8B0F2
end
local _l67AA49514D0DC437 = { } do
local _l1A1F532F45C6A149 = { } do
_l1A1F532F45C6A149.select = _lAE2482B62AD01298.push(
(_xd("7crQwdbCxcfB",164)), (_xd("uqy5qL+grL+m476ooaiuuQ==",205)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Other', _l07C07072582A4EF1((_xd("EScyIzQrJzQt",70)), (_xd("lIKXhpGOgpGI",227))), {
(_xd("t4SdnQ==",241)),
(_xd("ga2vsqOhtg==",194)),
(_xd("spGNiJU=",225))
}
)
)
_l1A1F532F45C6A149.accent_color = _lAE2482B62AD01298.push(
(_xd("lbKoua66vb+5",220)), (_xd("hJKHloGekoGY3ZKQkJadh6yQnJ+cgQ==",243)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Other', _l07C07072582A4EF1((_xd("WW96a3xjb3xlLm9tbWtgei5tYWJhfA==",14)), (_xd("xNLH1sHe0sHY",179))), (32668 + 32413 - 32413), -(-255), (255 * 1), (255 * 1)
)
)
_l1A1F532F45C6A149.secondary_color = _lAE2482B62AD01298.push(
(_xd("Z0BaS1xIT01L",46)), (_xd("ZXNmd2B/c2B5PGF3cX18dnNga01xfX59YA==",18)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Other', _l07C07072582A4EF1((_xd("BzEkNSI9MSI7cCM1Mz8+NDEiKXAzPzw/Ig==",80)), (_xd("5vDl9OP88OP6",145))), (50 * 1), (150 * 1) / 3, -(-50), (29167 + 28912 - 28912)
)
)
_l1A1F532F45C6A149._l3B1BCF18E37D2A8C = _lAE2482B62AD01298.push(
(_xd("jKuxoLejpKag",197)), (_xd("XEpfTllGSllABU1ERV8=",43)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Other', _l07C07072582A4EF1((_xd("iaChuw==",207)), (_xd("Cx0IGQ4RHQ4X",124))), {
(_xd("sZCTlICZgQ==",245)),
(_xd("98nFyMg=",164)),
(_xd("m7a1vQ==",217))
}
)
)
_l1A1F532F45C6A149.removals = _lAE2482B62AD01298.push(
(_xd("lrGruq25vry6",223)), (_xd("ABYDEgUaFgUcWQUSGhgBFhsE",119)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Other', _l07C07072582A4EF1((_xd("bFtTUUhfUk0=",62)), (_xd("wdfC08Tb18Td",182))), {
(_xd("we7p7eH06e/u",128)),
(_xd("hba2q7O3",196))
}
)
)
_l1A1F532F45C6A149.text_input = _lAE2482B62AD01298.push(
(_xd("RmF7an1pbmxq",15)), (_xd("X0lcTVpFSVpDBlxNUFx3QUZYXVw=",40)), _lC32E23DC8F791E4A.new(
ui.new_textbox, 'AA', 'Other', _l07C07072582A4EF1((_xd("sYeBhp2f0oaXioY=",242)), (_xd("bnhtfGt0eGty",25)))
)
)
_l1A1F532F45C6A149.display = _lAE2482B62AD01298.push(
(_xd("X3hic2Rwd3Vz",22)), (_xd("9uD15PPs4PPqr+Xo8vHt4Pg=",129)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Other', _l07C07072582A4EF1((_xd("eFVPTFBdRQ==",60)), (_xd("++346f7h7f7n",140))), {
(_xd("vp2VnQ==",242)),
(_xd("2/3r/ODv4+s=",142)),
(_xd("5vDz",160)),
(_xd("tICTn5eGm5+X0oSTgJuTnJGX",242)),
(_xd("lq+ooQ==",198)),
(_xd("T2x5eXg=",28)),
(_xd("wKTPq/nq/+Lk",139)),
(_xd("BygrJy8=",68))
}
)
)
_l1A1F532F45C6A149._l1DB180C36A4930A4 = _lAE2482B62AD01298.push(
(_xd("PBsBEAcTFBYQ",117)), (_xd("b3lsfWp1eWpzNmh3a3FscXd2",24)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Other', _l07C07072582A4EF1((_xd("98jUztPOyMk=",167)), (_xd("t6G0pbKtobKr",192))), {
(_xd("uIOcwZ6Fi4SY",236)),
(_xd("DyI5OSIgYC4oIzkoPw==",77))
}
)
)
_l1A1F532F45C6A149.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Other', '\n'
)
_lE658F732C5F7D939(_l1A1F532F45C6A149.select, {
(_xd("VGd+fg==",18))
})
_lE658F732C5F7D939(_l1A1F532F45C6A149.display, {
(_xd("5cbOxg==",169)),
(_xd("ARcU",71)),
(_xd("5tLBzcXUyc3FgNbB0snBzsPF",160)),
(_xd("IRgfFg==",113))
})
_l67AA49514D0DC437._l1A1F532F45C6A149 = _l1A1F532F45C6A149
end
local _l8E70AFFBBF19979A = { } do
_l8E70AFFBBF19979A._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("8dbM3cre2dvd",184)), (_xd("NTI4NT89KDMuL3I5Mj0+MDk4",92)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("Y0ROQ0lLXkVYWQ==",42)), (_xd("4Oft4Oro/eb7+g==",137)))
)
)
_l8E70AFFBBF19979A._lD75D3219FDCD5C2C = _lAE2482B62AD01298.push(
(_xd("nbqgsaaytbex",212)), (_xd("oKetoKqovaa7uue6vbClrA==",201)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("UnV4bWQ=",1)), (_xd("/Pvx/Pb04frn5g==",149))), {
(_xd("qImKjZmAmA==",236)),
(_xd("ZEhUSk5E",39))
}
)
)
_l8E70AFFBBF19979A.select = _lAE2482B62AD01298.push(
(_xd("/NvB0MfT1NbQ",181)), (_xd("x8DKx83P2sHc3YDdy8LLzdo=",174)), _lC32E23DC8F791E4A.new(
ui.new_multiselect, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("nqihqK65",205)), (_xd("MTY8MTs5LDcqKw==",88))), {
(_xd("2v3o/ew=",137)),
'Double tap',
(_xd("nL2wsfSnvLugpw==",212)),
(_xd("sJ2Wi9KTm58=",242))
}
)
)
_l8E70AFFBBF19979A._lE8558CABD1E415C2 = _lAE2482B62AD01298.push(
(_xd("99DK28zY393b",190)), (_xd("S0xGS0FDVk1QUQxNRERRR1Y=",34)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("SGFhdGJz",7)), (_xd("DQoADQcFEAsWFw==",100))), (25 * 1) / 5, (60 + (3300 - 3300)), (25 * 1), true, 'px'
)
)
_l8E70AFFBBF19979A.accent_label = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("YkBARk1XA0BMT0xR",35)), (_xd("1NPZ1N7cydLPzg==",189)))
)
_l8E70AFFBBF19979A.accent_color = _lAE2482B62AD01298.push(
(_xd("bEtRQFdDREZA",37)), (_xd("5eLo5e/t+OP+/6Lt7+/p4vjT7+Pg4/4=",140)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("aUtLTUZcCEtHREdaCFhBS0NNWg==",40)), (_xd("EhUfEhgaDxQJCA==",123))), (2040 * 1) / 8, -(-255), -(-255), (255 * 1)
)
)
_l8E70AFFBBF19979A.secondary_label = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("rpiekpOZnI+E3Z6SkZKP",253)), (_xd("SU5ESUNBVE9SUw==",32)))
)
_l8E70AFFBBF19979A.secondary_color = _lAE2482B62AD01298.push(
(_xd("0fbs/er++fv9",152)), (_xd("39jS39XXwtnExZjF09XZ2NLXxM/p1dna2cQ=",182)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("soSCjo+FgJOYwYKOjY6TwZGIgoqEkw==",225)), (_xd("raqgraelsKu2tw==",196))), (550 * 1) / 11, (50 * 1), (50 + (3197 - 3197)), -(-255)
)
)
_l8E70AFFBBF19979A.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_l67AA49514D0DC437._l8E70AFFBBF19979A = _l8E70AFFBBF19979A
end
local _l67C2576273D63F22 = { } do
_l67C2576273D63F22._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("VUpQVkJPUA==",35)), (_xd("g4+Ok4+Mhb+Dj4yPks6FjoGCjIWE",224)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("IQ0MEQ0OB0IBDQ4NEA==",98)), (_xd("5+vq9+vo4dvn6+jr9g==",132)))
)
)
_l67C2576273D63F22._l424F4D241D652803 = _lAE2482B62AD01298.push(
(_xd("TFNJT1tWSQ==",58)), (_xd("7uLj/uLh6NLu4uHi/6Pu4uHi/w==",141)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("ZUlIVUlKQwZFSUpJVAZWT0VNQ1Q=",38)), (_xd("KycmOyckLRcrJyQnOg==",72))), (850 * 1) / 5, (170 * 1), -(-170), (200 + (9601 - 9601))
)
)
_l67AA49514D0DC437._l67C2576273D63F22 = _l67C2576273D63F22
end
local _lCDF3C41A9F986209 = { } do
_lCDF3C41A9F986209._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("h6C6q7yor62r",206)), (_xd("aG1hbWtpU2ViaGVvbXhjfiJpYm1uYGlo",12)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("HDk1OT89eDE2PDE7OSw3Kg==",88)), (_xd("6+7i7ujq0Obh6+bs7vvg/Q==",143)))
)
)
_lCDF3C41A9F986209.only_if_active = _lAE2482B62AD01298.push(
(_xd("LgkTAhUBBgQC",103)), (_xd("gYSIhIKAuoyLgYyGhJGKl8uKi4mcuoyDuoSGkYyTgA==",229)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("qImLnseOgceGhJOOkYI=",231)), (_xd("0tfb19HT6d/Y0t/V18LZxA==",182)))
)
)
_lCDF3C41A9F986209._l3B1BCF18E37D2A8C = _lAE2482B62AD01298.push(
(_xd("BCM5KD8rLC4o",77)), (_xd("7ejk6O7s1uDn7eDq6P3m+6fv5uf9",137)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("UHl4Yg==",22)), (_xd("CA0BDQsJMwUCCAUPDRgDHg==",108))), {
(_xd("bUxPSFxFXQ==",41)),
(_xd("BTs3Ojo=",86)),
(_xd("BisoIA==",68))
}
)
)
_lCDF3C41A9F986209._lE8558CABD1E415C2 = _lAE2482B62AD01298.push(
(_xd("DCsxIDcjJCYg",69)), (_xd("raikqK6slqCnraCqqL2mu+emr6+6rL0=",201)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("dl9fSlxN",57)), (_xd("jYiEiI6MtoCHjYCKiJ2Gmw==",233))), 1, -(-24), (8 + (8403 - 8403)), true, 'px'
)
)
_lCDF3C41A9F986209.active_label = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("/tzL1snan9zQ09DN",191)), (_xd("JiMvIyUnHSssJishIzYtMA==",66)))
)
_lCDF3C41A9F986209.active_color = _lAE2482B62AD01298.push(
(_xd("+d7E1cLW0dPV",176)), (_xd("fnt3e31/RXN0fnN5e251aDR7eW5zbH9FeXV2dWg=",26)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("6sjfwt3Oi8jEx8TZi9vCyMDO2Q==",171)), (_xd("goeLh4GDuY+Igo+Fh5KJlA==",230))), (26157 + 25902 - 25902), (255 + (9100 - 9100)), (1020 * 1) / 4, (255 * 1)
)
)
_lCDF3C41A9F986209.inactive_label = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("8NfY2s3Qz9yZ2tbV1ss=",185)), (_xd("6O3h7evp0+Xi6OXv7fjj/g==",140)))
)
_lCDF3C41A9F986209.inactive_color = _lAE2482B62AD01298.push(
(_xd("IgUfDhkNCggO",107)), (_xd("6u/j7+nr0efg6uft7/rh/KDn4O/t+uf469Ht4eLh/A==",142)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("l7C/vaq3qLv+vbGysaz+rre9tbus",222)), (_xd("oaSopKKgmqyroaympLGqtw==",197))), (255 * 1), (255 * 1), -(-255), (150 * 1)
)
)
_lCDF3C41A9F986209.separator = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', '\n'
)
_l67AA49514D0DC437._lCDF3C41A9F986209 = _lCDF3C41A9F986209
end
local _lE6C7B315B1D5C75C = { } do
_lE6C7B315B1D5C75C._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("h6C6q7yor62r",206)), (_xd("kJiTiKKck5SQnImUkpOO05iTnJ+RmJk=",253)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("58/E34rrxMPHy97DxcTZ",170)), (_xd("RExHXHZIR0BESF1ARkda",41)))
)
)
_lE6C7B315B1D5C75C._lF8E1754D21D14193:set_callback(_l93A0F5D91FBDC005(_l777D8FF3F76AC3BE)
if not _l7B33F3C572CC3B06.set_enabled(_l777D8FF3F76AC3BE:get()) then
_l777D8FF3F76AC3BE:set(false)
end
end, true)
_l67AA49514D0DC437._lE6C7B315B1D5C75C = _lE6C7B315B1D5C75C
end
_lE2976F4B96444697._l67AA49514D0DC437 = _l67AA49514D0DC437
end
local _l8902B78CA3BCD5C3 = { } do
local _lBE86409E9AAC1C1C = { } do
_lBE86409E9AAC1C1C._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("Oh0HFgEVEhAW",115)), (_xd("RkNPQ0VHfU9DUElHUAxHTENATkdG",34)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("oYSIhIKAxYiEl46Alw==",229)), (_xd("3tvX293f5dfbyNHfyA==",186)))
)
)
_lBE86409E9AAC1C1C._l3B1BCF18E37D2A8C = _lAE2482B62AD01298.push(
(_xd("NxAKGwwYHx0b",126)), (_xd("p6KuoqSmnK6isaimse2lrK23",195)), _lC32E23DC8F791E4A.new(
ui.new_combobox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("78bH3Q==",169)), (_xd("i46CjoiKsIKOnYSKnQ==",239))), {
(_xd("fl9cW09WTg==",58)),
(_xd("LQADCw==",111))
}
)
)
_lBE86409E9AAC1C1C.body_label = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("VntwbTR3e3h7Zg==",20)), (_xd("n5qWmpyepJaaiZCeiQ==",251)))
)
_lBE86409E9AAC1C1C.body_color = _lAE2482B62AD01298.push(
(_xd("kLetvKu/uLq8",217)), (_xd("tLG9sbe1j72xoru1ov6yv7Spj7O/vL+i",208)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("OxYdAFkaFhUWC1kJEBoSHAs=",121)), (_xd("ys/Dz8nL8cPP3MXL3A==",174))), (3570 * 1) / 14, (255 * 1), (2805 * 1) / 11, (68224 + 67969 - 67969)
)
)
_lBE86409E9AAC1C1C.head_label = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("w+7q76vo5Ofk+Q==",139)), (_xd("6+7i7ujq0OLu/eTq/Q==",143)))
)
_lBE86409E9AAC1C1C.head_color = _lAE2482B62AD01298.push(
(_xd("+t3H1sHV0tDW",179)), (_xd("QkdLR0FDeUtHVE1DVAhOQ0dCeUVJSklU",38)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("SWRgZSFibm1ucyFxaGJqZHM=",1)), (_xd("+P3x/fv5w/H97vf57g==",156))), (150 + (6479 - 6479)), (185 + (1134 - 1134)), (5 + (9790 - 9790)), (255 * 1)
)
)
_lBE86409E9AAC1C1C.mismatch_label = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("cFROUFxJXlUdXlJRUk8=",61)), (_xd("Oj8zPzk7ATM/LDU7LA==",94)))
)
_lBE86409E9AAC1C1C.mismatch_color = _lAE2482B62AD01298.push(
(_xd("8tXP3snd2tje",187)), (_xd("dXB8cHZ0TnxwY3p0Yz98eGJ8cGVyeU5yfn1+Yw==",17)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("MhYMEh4LHBdfHBATEA1fDxYcFBoN",127)), (_xd("dHF9cXd1T31xYnt1Yg==",16))), -(-255), 0, 0, -(-255)
)
)
_lBE86409E9AAC1C1C._lCC9D2EFA01452D7D = _lAE2482B62AD01298.push(
(_xd("1/Dq++z4//37",158)), (_xd("1dDc0NbU7tzQw9rUw5/CwdTU1Q==",177)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("ellMTE0=",41)), (_xd("ERQYFBIQKhgUBx4QBw==",117))), 0, (128 * 1), (58 * 1), true, ''
)
)
_lBE86409E9AAC1C1C._l0F5191CA1603861C = _lAE2482B62AD01298.push(
(_xd("YEddTFtPSEpM",41)), (_xd("nJmVmZ+dp5WZipOditacjYqZjJGXlg==",248)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("altcT1pHQUA=",46)), (_xd("l5KekpSWrJ6SgZiWgQ==",243))), 1, (8 * 1), -(-4), true, 's'
)
)
_l8902B78CA3BCD5C3._lBE86409E9AAC1C1C = _lBE86409E9AAC1C1C
end
local _l8C7EB14DBDF4BFB7 = { } do
_l8C7EB14DBDF4BFB7._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("pIOZiJ+LjI6I",237)), (_xd("PS08KysgESMvPCUrPGArIC8sIisq",78)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("j7+uubmy/LG9rre5rg==",220)), (_xd("7f3s+/vwwfP/7PX77A==",158)))
)
)
_l8C7EB14DBDF4BFB7._l424F4D241D652803 = _lAE2482B62AD01298.push(
(_xd("k7Suv6i8u7m/",218)), (_xd("EgITBAQPPgwAEwoEE08CDg0OEw==",97)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("sYGQh4eMwo+DkImHkMKBjY6NkA==",226)), (_xd("GgobDAwHNgQIGwIMGw==",105))), (255 + (1423 - 1423)), (255 * 1), (255 * 1), (200 + (4880 - 4880))
)
)
_l8902B78CA3BCD5C3._l8C7EB14DBDF4BFB7 = _l8C7EB14DBDF4BFB7
end
local _l144E1341F4C67C42 = { } do
_l144E1341F4C67C42._lF8E1754D21D14193 = _lAE2482B62AD01298.push(
(_xd("l7Cqu6y4v727",222)), (_xd("k4uWiIC7iYWWj4GWyoGKhYaIgYA=",228)), _lC32E23DC8F791E4A.new(
ui.new_checkbox, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("Z19CXFQQXVFCW1VC",48)), (_xd("EQkUCgI5CwcUDQMU",102)))
)
)
_l144E1341F4C67C42.horizontal_label = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("6M/SydrPztTBzIDDz8zP0g==",160)), (_xd("vqa7pa2WpKi7oqy7",201)))
)
_l144E1341F4C67C42.horizontal_color = _lAE2482B62AD01298.push(
(_xd("6c7UxdLGwcPF",160)), (_xd("dGxxb2dcbmJxaGZxLWtscWp5bG13Ym9cYGxvbHE=",3)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("8dbL0MPW183Y1Zna1tXWy5nJ0NrS3Ms=",185)), (_xd("HAQZBw80BgoZAA4Z",107))), 0, (4718 + 4463 - 4463), 0, -(-255)
)
)
_l144E1341F4C67C42.vertical_label = _lC32E23DC8F791E4A.new(
ui.new_label, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("yfrt6/b8/vO//PDz8O0=",159)), (_xd("e2N+YGhTYW1+Z2l+",12)))
)
_l144E1341F4C67C42.vertical_color = _lAE2482B62AD01298.push(
(_xd("haK4qb6qra+p",204)), (_xd("6fHs8vrB8//s9fvssOj77Or3/f/ywf3x8vHs",158)), _lC32E23DC8F791E4A.new(
ui.new_color_picker, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("o5CHgZyWlJnVlpqZmofVhZyWnpCH",245)), (_xd("dGxxb2dcbmJxaGZx",3))), 0, (1530 * 1) / 6, -(-255), (3825 * 1) / 15
)
)
_l144E1341F4C67C42._l2742BF7C296EC261 = _lAE2482B62AD01298.push(
(_xd("78jSw9TAx8XD",166)), (_xd("noabhY22hIibgoybx5qAk4w=",233)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("88naxQ==",160)), (_xd("vaW4pq6Vp6u4oa+4",202))), (24 * 1) / 12, -(-5), -(-4), true, 'px'
)
)
_l144E1341F4C67C42._lBF25F39FB7D8BF2D = _lAE2482B62AD01298.push(
(_xd("jaqwobaipaeh",196)), (_xd("f2d6ZGxXZWl6Y216JnxgYWtjZm17ew==",8)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("PQEACgIHDBoa",105)), (_xd("QFhFW1NoWlZFXFJF",55))), 1, (5 + (2540 - 2540)), -(-2), true, 'px'
)
)
_l144E1341F4C67C42._l0F5191CA1603861C = _lAE2482B62AD01298.push(
(_xd("VXJoeW56fX95",28)), (_xd("EgoXCQE6CAQXDgAXSwEQFwQRDAoL",101)), _lC32E23DC8F791E4A.new(
ui.new_slider, 'AA', 'Anti-aimbot angles', _l07C07072582A4EF1((_xd("e0pNXktWUFE=",63)), (_xd("OyM+ICgTIS0+Jyk+",76))), 1, (8 + (518 - 518)), -(-4), true, 's'
)
)
_l8902B78CA3BCD5C3._l144E1341F4C67C42 = _l144E1341F4C67C42
end
_lE2976F4B96444697._l8902B78CA3BCD5C3 = _l8902B78CA3BCD5C3
end
_l934A3DF2B1DD218E._lE2976F4B96444697 = _lE2976F4B96444697
end
local _lD31E75097C48C0AA = { } do
_lD31E75097C48C0AA.list = _lC32E23DC8F791E4A.new(
ui.new_listbox, 'AA', 'Anti-aimbot angles', (_xd("ZCppZWRsY20kZmN5fg==",10)), { }
)
_lD31E75097C48C0AA.input = _lC32E23DC8F791E4A.new(
ui.new_textbox, 'AA', 'Anti-aimbot angles', (_xd("ltibl5aekZ/WkZaIjYw=",248)), ''
)
_lD31E75097C48C0AA.load_button = _lC32E23DC8F791E4A.new(
ui.new_button, 'AA', 'Anti-aimbot angles', (_xd("W3h2cw==",23)), nil
)
_lD31E75097C48C0AA.save_button = _lC32E23DC8F791E4A.new(
ui.new_button, 'AA', 'Anti-aimbot angles', (_xd("+cvczw==",170)), nil
)
_lD31E75097C48C0AA.delete_button = _lC32E23DC8F791E4A.new(
ui.new_button, 'AA', 'Anti-aimbot angles', (_xd("ORgRGAkY",125)), nil
)
_lD31E75097C48C0AA.export_button = _lC32E23DC8F791E4A.new(
ui.new_button, 'AA', 'Anti-aimbot angles', (_xd("GSQsMy4ofCgzfD8wNSw+Mz0uOA==",92)), nil
)
_lD31E75097C48C0AA.import_button = _lC32E23DC8F791E4A.new(
ui.new_button, 'AA', 'Anti-aimbot angles', (_xd("JwMeARwaTggcAQNODQIHHgwBDxwK",110)), nil
)
_l934A3DF2B1DD218E._lD31E75097C48C0AA = _lD31E75097C48C0AA
end
local _l5497CD1425E50E5D do
local _l93A0F5D91FBDC005 _l9F7AD990CBCE2B67(_l861DF5F3FC680167)
local _lD52EDAAF02723665 = _lE4C0F29811DB3FE5.antiaimbot._l54FCA590490245EE
local _lADF002000E39912E = ui.get(_lD52EDAAF02723665._l46AA6D7987AE7B3A[1])
local _l41AEE05599577213 = ui.get(_lD52EDAAF02723665._l6F49EB461422B562[1])
local _l17B918BF3D389BF1 = ui.get(_lD52EDAAF02723665._l853F969D9C31B6DE[1])
local _lC5BE715201C4C712 = not _l861DF5F3FC680167
ui.set_visible(_lD52EDAAF02723665._lF8E1754D21D14193, _l861DF5F3FC680167)
ui.set_visible(_lD52EDAAF02723665._l46AA6D7987AE7B3A[1], _l861DF5F3FC680167)
if _lADF002000E39912E == (_xd("ckRCRV5c",49)) or _lC5BE715201C4C712 then
ui.set_visible(_lD52EDAAF02723665._l46AA6D7987AE7B3A[-(-2)], _l861DF5F3FC680167)
end
ui.set_visible(_lD52EDAAF02723665.yaw_base, _l861DF5F3FC680167)
ui.set_visible(_lD52EDAAF02723665._l6F49EB461422B562[1], _l861DF5F3FC680167)
if _l41AEE05599577213 ~= (_xd("k7q6",220)) or _lC5BE715201C4C712 then
local _lBB3E162EE58DFAEC = ui.get(_lD52EDAAF02723665._l16B2581F24D0AB49[1])
ui.set_visible(_lD52EDAAF02723665._l6F49EB461422B562[(79984 + 79982 - 79982)], _l861DF5F3FC680167)
ui.set_visible(_lD52EDAAF02723665._l16B2581F24D0AB49[1], _l861DF5F3FC680167)
if _lBB3E162EE58DFAEC ~= (_xd("PhcX",113)) or _lC5BE715201C4C712 then
ui.set_visible(_lD52EDAAF02723665._l16B2581F24D0AB49[(35509 + 35507 - 35507)], _l861DF5F3FC680167)
end
end
ui.set_visible(_lD52EDAAF02723665._l853F969D9C31B6DE[1], _l861DF5F3FC680167)
if _l17B918BF3D389BF1 ~= (_xd("Xnd3",17)) or _lC5BE715201C4C712 then
if _l17B918BF3D389BF1 ~= (_xd("8M/P0MzWy9o=",191)) or _lC5BE715201C4C712 then
ui.set_visible(_lD52EDAAF02723665._l853F969D9C31B6DE[-(-2)], _l861DF5F3FC680167)
end
ui.set_visible(_lD52EDAAF02723665._l647607ED8A0477C6, _l861DF5F3FC680167)
end
ui.set_visible(_lD52EDAAF02723665._lA550371056A1793A, _l861DF5F3FC680167)
ui.set_visible(_lD52EDAAF02723665._l8C975ACFD6C1C204[1], _l861DF5F3FC680167)
ui.set_visible(_lD52EDAAF02723665._l8C975ACFD6C1C204[(2 + (7295 - 7295))], _l861DF5F3FC680167)
ui.set_visible(_lD52EDAAF02723665._lB6F5466E95879823, _l861DF5F3FC680167)
end
local _l93A0F5D91FBDC005 _l872579E7F2D772DF(_l861DF5F3FC680167)
local _lD52EDAAF02723665 = _lE4C0F29811DB3FE5.antiaimbot.fake_lag
ui.set_visible(_lD52EDAAF02723665._lF8E1754D21D14193[1], _l861DF5F3FC680167)
ui.set_visible(_lD52EDAAF02723665._lF8E1754D21D14193[(2 + (9431 - 9431))], _l861DF5F3FC680167)
ui.set_visible(_lD52EDAAF02723665.amount, _l861DF5F3FC680167)
ui.set_visible(_lD52EDAAF02723665.limit, _l861DF5F3FC680167)
ui.set_visible(_lD52EDAAF02723665.variance, _l861DF5F3FC680167)
end
local _l93A0F5D91FBDC005 _l45696CD6DBEFE294(_l861DF5F3FC680167)
local _lD52EDAAF02723665 = _lE4C0F29811DB3FE5.antiaimbot.other
ui.set_visible(_lD52EDAAF02723665.slow_motion[1], _l861DF5F3FC680167)
ui.set_visible(_lD52EDAAF02723665.slow_motion[(2 * 1)], _l861DF5F3FC680167)
ui.set_visible(_lD52EDAAF02723665.leg_movement, _l861DF5F3FC680167)
ui.set_visible(_lD52EDAAF02723665.on_shot_antiaim[1], _l861DF5F3FC680167)
ui.set_visible(_lD52EDAAF02723665.on_shot_antiaim[-(-2)], _l861DF5F3FC680167)
ui.set_visible(_lD52EDAAF02723665.fake_peek[1], _l861DF5F3FC680167)
ui.set_visible(_lD52EDAAF02723665.fake_peek[(12 * 1) / 6], _l861DF5F3FC680167)
end
local _l93A0F5D91FBDC005 _l5CF5882AE3FC855E(_lD52EDAAF02723665, _lCAF00F07A0F879E6)
local _l5E036DF336F643B4 = _lCAF00F07A0F879E6 ~= (_xd("nJ2enZaLkY6d",248))
local _lA59DDAEBABA41D5E = _lCAF00F07A0F879E6 ~= (_xd("+/T99v/p",154))
local _l54FCA590490245EE = _lD52EDAAF02723665._l54FCA590490245EE
local _l60AE168D8FFBE9DB = _lD52EDAAF02723665._l60AE168D8FFBE9DB
local _l0909714DCA9366DB = _lD52EDAAF02723665._l0909714DCA9366DB
local _lF3A1AFB40145175B = (_xd("xefs5/Dj7g==",130))
local _lCE0ECC665FAD9E1D = false
if _lD52EDAAF02723665.separator ~= nil and _l5E036DF336F643B4 then
_l54F19F7B5F58F216.set(_lD52EDAAF02723665.separator, true)
end
if _lD52EDAAF02723665.send_to_another_team ~= nil and _l5E036DF336F643B4 then
_l54F19F7B5F58F216.set(_lD52EDAAF02723665.send_to_another_team, true)
end
local _lB00D31E5506DE434 = _l54F19F7B5F58F216.set
if not _l5E036DF336F643B4 then
_l54F19F7B5F58F216.set = _l93A0F5D91FBDC005 () end
end
if _l54FCA590490245EE ~= nil then
if _l54FCA590490245EE._lF8E1754D21D14193 ~= nil then
_l54F19F7B5F58F216.set(_l54FCA590490245EE._lF8E1754D21D14193, true)
if not _l54FCA590490245EE._lF8E1754D21D14193:get() then
_l54F19F7B5F58F216.set = _lB00D31E5506DE434
return
end
end
if _l54FCA590490245EE.bomb_e_fix ~= nil then
_l54F19F7B5F58F216.set(_l54FCA590490245EE.bomb_e_fix, true)
end
if _l54FCA590490245EE.yaw_base ~= nil then
_l54F19F7B5F58F216.set(_l54FCA590490245EE.yaw_base, true)
end
if _l54FCA590490245EE._l154D22247126C71A ~= nil and _l54FCA590490245EE._lC6683553542CC013 ~= nil then
local _lA9B1BA98776E39D3 = true
if _l54FCA590490245EE.yaw_direction ~= nil then
local _l42349E77D54940ED = _l54FCA590490245EE.yaw_direction:get()
_l54F19F7B5F58F216.set(_l54FCA590490245EE.yaw_direction, true)
_lF3A1AFB40145175B = _l42349E77D54940ED
if _l42349E77D54940ED ~= (_xd("HT80Pyg7Ng==",90)) then
_lA9B1BA98776E39D3 = false
end
local _lCF4D75DA19A51DEB = _l54FCA590490245EE[(_xd("BQ4BAgwFBD8ECRI/",96)) .. _l42349E77D54940ED]
if _lCF4D75DA19A51DEB == nil then
goto continue
end
_l54F19F7B5F58F216.set(_lCF4D75DA19A51DEB, true)
_lCE0ECC665FAD9E1D = _lCF4D75DA19A51DEB:get()
if not _lCE0ECC665FAD9E1D then
goto continue
end
local _lC8244A8A02258884 = _l54FCA590490245EE[(_xd("bnZgSHtycWNIc35lSA==",23)) .. _l42349E77D54940ED]
local _l72512453FEA63FF0 = _l54FCA590490245EE[(_xd("JT0rAy41OzQoAzg1LgM=",92)) .. _l42349E77D54940ED]
if _lC8244A8A02258884 ~= nil then
_l54F19F7B5F58F216.set(_lC8244A8A02258884, true)
end
if _l72512453FEA63FF0 ~= nil then
_l54F19F7B5F58F216.set(_l72512453FEA63FF0, true)
end
::continue::
end
if _lA9B1BA98776E39D3 then
_l54F19F7B5F58F216.set(_l54FCA590490245EE._l154D22247126C71A, true)
_l54F19F7B5F58F216.set(_l54FCA590490245EE._lC6683553542CC013, true)
_l54F19F7B5F58F216.set(_l54FCA590490245EE._l7A6C5DE9B8936F9C, true)
end
_l54F19F7B5F58F216.set(_l54FCA590490245EE._l16B2581F24D0AB49, true)
if _l54FCA590490245EE._l16B2581F24D0AB49:get() ~= (_xd("dVxc",58)) then
_l54F19F7B5F58F216.set(_l54FCA590490245EE._l89693BE9BF8E2A57, true)
_l54F19F7B5F58F216.set(_l54FCA590490245EE.jitter_random, true)
end
end
_l54F19F7B5F58F216.set(_l54FCA590490245EE._l853F969D9C31B6DE, true)
if _l54FCA590490245EE._l853F969D9C31B6DE:get() ~= (_xd("OxIS",116)) then
if _l54FCA590490245EE._l853F969D9C31B6DE:get() ~= (_xd("bFNTTFBKV0Y=",35)) then
_l54F19F7B5F58F216.set(_l54FCA590490245EE._lE1A0F2049757CCF5, true)
end
local _l6DF2258DF1013265 = (
_l54FCA590490245EE._l853F969D9C31B6DE:get() == (_xd("CSo3NyYx",67))
)
if _l6DF2258DF1013265 then
_l54F19F7B5F58F216.set(_l54FCA590490245EE.delay_from, true)
_l54F19F7B5F58F216.set(_l54FCA590490245EE.delay_to, true)
if _l54FCA590490245EE.invert_chance ~= nil then
_l54F19F7B5F58F216.set(_l54FCA590490245EE.invert_chance, true)
end
else
_l54F19F7B5F58F216.set(_l54FCA590490245EE._l647607ED8A0477C6, true)
end
end
end
_l54F19F7B5F58F216.set = _lB00D31E5506DE434
if not _l5E036DF336F643B4 and _l54FCA590490245EE ~= nil and _l54FCA590490245EE.yaw_direction ~= nil then
_l54F19F7B5F58F216.set(_l54FCA590490245EE.yaw_direction, true)
end
if _lD52EDAAF02723665.separator_1 ~= nil and _l5E036DF336F643B4 then
_l54F19F7B5F58F216.set(_lD52EDAAF02723665.separator_1, true)
end
if _l0909714DCA9366DB ~= nil and _l54FCA590490245EE ~= nil and _l54FCA590490245EE.yaw_direction ~= nil then
if _lF3A1AFB40145175B ~= (_xd("5cfMx9DDzg==",162)) and _lCE0ECC665FAD9E1D then
_l0909714DCA9366DB:activate(_lF3A1AFB40145175B, _l60AE168D8FFBE9DB)
local _lD43E8B0D1DD4CD14 = _l0909714DCA9366DB._lD43E8B0D1DD4CD14
_l54F19F7B5F58F216.set(_lD43E8B0D1DD4CD14._l002C9C644F32C5C8, true)
if _lD43E8B0D1DD4CD14._l002C9C644F32C5C8:get() then
_l60AE168D8FFBE9DB = _lD43E8B0D1DD4CD14
end
else
_l0909714DCA9366DB:deactivate()
end
end
if (7629*7 - 7629*6 == 7629) then
  local _vAC6BB385 = math.sqrt(370443)
  local _vE8BA4DA9 = string.len(tostring(_vAC6BB385))
  if _vE8BA4DA9 > 4 then _vE8BA4DA9 = _vE8BA4DA9 + 1 end
end
if _l60AE168D8FFBE9DB ~= nil and _lA59DDAEBABA41D5E then
if _l60AE168D8FFBE9DB.force_defensive ~= nil then
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB.force_defensive, true)
end
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB._lF8E1754D21D14193, true)
if _l60AE168D8FFBE9DB._lF8E1754D21D14193:get() then
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB._l46AA6D7987AE7B3A, true)
if _l60AE168D8FFBE9DB._l46AA6D7987AE7B3A:get() ~= (_xd("p46O",232)) then
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB._l72BB9EFD1D25CD9F, true)
if _l60AE168D8FFBE9DB._l46AA6D7987AE7B3A:get() ~= (_xd("2/zp/OHr",136)) then
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB.pitch_label_1, true)
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB.pitch_label_2, true)
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB._l84BE8A6927CCD15A, true)
end
if _l60AE168D8FFBE9DB._l46AA6D7987AE7B3A:get() == (_xd("Gj4oMA==",73)) then
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB.pitch_speed, true)
end
end
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB._l6F49EB461422B562, true)
if _l60AE168D8FFBE9DB._l6F49EB461422B562:get() ~= (_xd("SWBg",6)) then
local _l6F49EB461422B562 = _l60AE168D8FFBE9DB._l6F49EB461422B562:get()
local _l9CE0442C966B7252 = (
if (9301*7 - 9301*6 == 9301) then
  local _vDE931B7D = math.sqrt(46631)
  local _v4E3208A3 = string.len(tostring(_vDE931B7D))
  if _v4E3208A3 > 2 then _v4E3208A3 = _v4E3208A3 + 1 end
end
_l6F49EB461422B562 == (_xd("GT0rMw==",74)) or
_l6F49EB461422B562 == (_xd("m7Kxo/iFvrC/ow==",215)) or
_l6F49EB461422B562 == (_xd("xeL34v/1tsT3+PL5+w==",150))
)
local _lD85F7F2760E21CBD = (
_l6F49EB461422B562 == (_xd("IgYQCA==",113))
)
if _l6F49EB461422B562 == (_xd("gveNu6M=",218)) then
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB._lDAF0FAC8DE48E972, true)
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB._lF85351515A99AFEA, true)
if _l60AE168D8FFBE9DB._lF85351515A99AFEA:get() then
local _lDAF0FAC8DE48E972 = _l60AE168D8FFBE9DB._lDAF0FAC8DE48E972:get()
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB._lDAF0FAC8DE48E972, true)
for i = 1, _lDAF0FAC8DE48E972 do
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB[(_xd("wtTM6g==",181)) .. i], true)
end
else
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB._l8D93B57A952D5141, true)
end
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB.ways_auto_body_yaw, true)
else
if _l9CE0442C966B7252 then
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB._l154D22247126C71A, true)
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB._lC6683553542CC013, true)
else
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB._l8D93B57A952D5141, true)
end
if _lD85F7F2760E21CBD then
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB.yaw_speed, true)
end
end
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB._l7A6C5DE9B8936F9C, true)
end
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB._l853F969D9C31B6DE, true)
if _l60AE168D8FFBE9DB._l853F969D9C31B6DE:get() ~= (_xd("nLW1",211)) then
if _l60AE168D8FFBE9DB._l853F969D9C31B6DE:get() ~= (_xd("Rnl5ZnpgfWw=",9)) then
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB._lE1A0F2049757CCF5, true)
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB.body_yaw_random, true)
end
local _l6DF2258DF1013265 = (
_l60AE168D8FFBE9DB._l853F969D9C31B6DE:get() == (_xd("3P/i4vPk",150))
)
if _l6DF2258DF1013265 then
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB.delay_from, true)
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB.delay_to, true)
if _l60AE168D8FFBE9DB.invert_chance ~= nil then
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB.invert_chance, true)
end
else
_l54F19F7B5F58F216.set(_l60AE168D8FFBE9DB._l647607ED8A0477C6, true)
end
end
end
end
end
local _l93A0F5D91FBDC005 _l106412F96D31FCA9()
if (8611*7 - 8611*6 == 8611) then
  local _v80F4AE76 = math.sqrt(459668)
  local _vB4EEBE0C = string.len(tostring(_v80F4AE76))
  if _vB4EEBE0C > 5 then _vB4EEBE0C = _vB4EEBE0C + 1 end
end
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.script_name, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.script_user, true)
local _l92438DCA10FB8565 = _lD1C88AEFBAAE3AC9.get_category()
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.tab, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.get_page_item(), true)
_lD1C88AEFBAAE3AC9.update_page_header(_l92438DCA10FB8565)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.page_header, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.page_separator, true)
if _l92438DCA10FB8565 == -(-15) then
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.global.build, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.global.user, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.global.discord, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.global.telegram, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.global.copy_discord, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.global.copy_telegram, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.global.separator, true)
end
if _l92438DCA10FB8565 == (30 * 1) / 2 then
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.stats.header, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.stats._l09CC23F329A5EF13, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.stats.session_kd, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.stats._lB903522459354397, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.stats.total_kd, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.stats.hours, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.stats._l145D5A91A37B5F78, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.stats.reset, true)
_l54F19F7B5F58F216.set(_lD1C88AEFBAAE3AC9.stats.separator, true)
end
if _l92438DCA10FB8565 == 0 then
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._lF25FDA0049197B89
local _l432E2DCECD6EEB28 = ref._l96D871DBEA7B8298._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._l96D871DBEA7B8298._lF8E1754D21D14193, true)
if not _l432E2DCECD6EEB28 then
goto continue
end
_l54F19F7B5F58F216.set(ref._l96D871DBEA7B8298._lB17914F567A7940B, true)
local _lA1751D8238566CFB = ref._l96D871DBEA7B8298._lA1751D8238566CFB:get()
_l54F19F7B5F58F216.set(ref._l96D871DBEA7B8298._lA1751D8238566CFB, true)
for i = 1, #_lA1751D8238566CFB do
local _lC483CC400CE8CA31 = _lA1751D8238566CFB[i]
local _lD52EDAAF02723665 = ref._l96D871DBEA7B8298[_lC483CC400CE8CA31]
if _lD52EDAAF02723665 ~= nil then
_l54F19F7B5F58F216.set(_lD52EDAAF02723665.hitchance, true)
end
end
_l54F19F7B5F58F216.set(ref._l96D871DBEA7B8298.separator, true)
::continue::
end
_l54F19F7B5F58F216.set(ref._lB5FB9C1A6743313C._lF8E1754D21D14193, true)
_l54F19F7B5F58F216.set(ref._l84502D30214AA563._lF8E1754D21D14193, true)
_l54F19F7B5F58F216.set(ref._lD558BC11008A63EF._lF8E1754D21D14193, true)
_l54F19F7B5F58F216.set(ref._l9C909DE9883F2227._lF8E1754D21D14193, true)
_l54F19F7B5F58F216.set(ref._l47A1A013B3C1C24D._lF8E1754D21D14193, true)
_l54F19F7B5F58F216.set(ref._l47F94A046B63C111._lF8E1754D21D14193, true)
end
if _l92438DCA10FB8565 == 1 then
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._l8C72F381EE48E2C7
local _l0D66308667BB38DE = ref._lF03279AF218F53CB._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._lF03279AF218F53CB._lF8E1754D21D14193, true)
if not _l0D66308667BB38DE then
goto continue
end
_l54F19F7B5F58F216.set(ref._lF03279AF218F53CB.list, true)
_l54F19F7B5F58F216.set(ref._lF03279AF218F53CB.separator, true)
::continue::
end
local _l52C1B2E645515550 = ref._l2DA57ED13D5DF6AA._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._l2DA57ED13D5DF6AA._lF8E1754D21D14193, true)
if not _l52C1B2E645515550 then
goto continue
end
_l54F19F7B5F58F216.set(ref._l2DA57ED13D5DF6AA.triggers, true)
_l54F19F7B5F58F216.set(ref._l2DA57ED13D5DF6AA.separator, true)
::continue::
end
local _l18F0BC790B1A601F = ref._lA5E50DA1047BBA15._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._lA5E50DA1047BBA15._lF8E1754D21D14193, true)
if not _l18F0BC790B1A601F then
goto continue
end
_l54F19F7B5F58F216.set(ref._lA5E50DA1047BBA15._l9591A67D938F86B3, true)
if ref._lA5E50DA1047BBA15._l9591A67D938F86B3:get() == (_xd("wevy/w==",135)) then
end
if ref._lA5E50DA1047BBA15._l9591A67D938F86B3:get() == (_xd("gLawt6yu",195)) then
_l54F19F7B5F58F216.set(ref._lA5E50DA1047BBA15._lB17914F567A7940B, true)
if ref._lA5E50DA1047BBA15._lB17914F567A7940B:get() ~= (_xd("xPPg8+Tl8/I=",150)) then
_l54F19F7B5F58F216.set(ref._lA5E50DA1047BBA15.input, true)
end
if ref._lA5E50DA1047BBA15._lB17914F567A7940B:get() == (_xd("sp2anpKHlpc=",243)) then
_l54F19F7B5F58F216.set(ref._lA5E50DA1047BBA15._lCC9D2EFA01452D7D, true)
end
end
::continue::
end
_l54F19F7B5F58F216.set(ref._l2D5D06F56E20D168._lF8E1754D21D14193, true)
_l54F19F7B5F58F216.set(ref._lC2DB6E48BA63AC00._lF8E1754D21D14193, true)
_l54F19F7B5F58F216.set(ref._l48F67A671746F233._lF8E1754D21D14193, true)
_l54F19F7B5F58F216.set(ref._l1DAFF73657425735._lF8E1754D21D14193, true)
_l54F19F7B5F58F216.set(ref._l26F8908E0728636B.button, true)
end
if _l92438DCA10FB8565 == 1 then
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._lD986AC01DECA1374
_l54F19F7B5F58F216.set(ref.air_legs, true)
if ref.air_legs:get() == (_xd("up2InYCK",233)) then
_l54F19F7B5F58F216.set(ref.air_legs_weight, true)
end
_l54F19F7B5F58F216.set(ref.ground_legs, true)
local _l35D65BC649EA6252 = (
ref.ground_legs:get() == (_xd("vp2AgJGG",244))
)
if _l35D65BC649EA6252 then
_l54F19F7B5F58F216.set(ref.legs_offset_1, true)
_l54F19F7B5F58F216.set(ref.legs_offset_2, true)
if ref.ground_legs:get() == (_xd("pIeamouc",238)) then
_l54F19F7B5F58F216.set(ref.legs_jitter_time, true)
end
end
_l54F19F7B5F58F216.set(ref.options, true)
if ref.options:get (_xd("WHpjcDV5cHR7",21)) then
_l54F19F7B5F58F216.set(ref.move_lean, true)
end
end
if _l92438DCA10FB8565 == 1 then
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._l10F9D25E169462C5
_l54F19F7B5F58F216.set(ref._lF8E1754D21D14193, true)
if not ref._lF8E1754D21D14193:get() then
goto continue
end
_l54F19F7B5F58F216.set(ref.events, true)
_l54F19F7B5F58F216.set(ref.output, true)
if ref.output:get (_xd("e0hbUEpN",62)) then
_l54F19F7B5F58F216.set(ref.events_font, true)
end
if ref.output:get (_xd("eUJISV4MT15DX19ETUVe",44)) then
_l54F19F7B5F58F216.set(ref._lB179AD0D5B6AB17F, true)
_l54F19F7B5F58F216.set(ref._l0F5191CA1603861C, true)
end
_l54F19F7B5F58F216.set(ref.console_text_style, true)
_l54F19F7B5F58F216.set(ref.crosshair_text_style, true)
local _l452B73B13DCF225D = (
ref.console_text_style:get() == (_xd("h6y+",201)) or
ref.crosshair_text_style:get() == (_xd("/NfF",178))
)
if _l452B73B13DCF225D then
for i = 1, #ref._l93E7070495E0673F do
local _lDB160C0F87126763 = ref._l93E7070495E0673F[i][1]
_l54F19F7B5F58F216.set(ref[_lDB160C0F87126763].label, true)
_l54F19F7B5F58F216.set(ref[_lDB160C0F87126763]._l424F4D241D652803, true)
end
_l54F19F7B5F58F216.set(ref.color_separator, true)
for i = 1, #ref._l86E349359EE8A545 do
local _lDB160C0F87126763 = ref._l86E349359EE8A545[i][1]
_l54F19F7B5F58F216.set(ref[_lDB160C0F87126763].label, true)
_l54F19F7B5F58F216.set(ref[_lDB160C0F87126763]._l424F4D241D652803, true)
end
end
::continue::
end
if _l92438DCA10FB8565 == -(-4) then
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._lAB5A7D2F3F3EE3D1
_l54F19F7B5F58F216.set(ref._lF8E1754D21D14193, true)
if not ref._lF8E1754D21D14193:get() then
goto continue
end
_l54F19F7B5F58F216.set(ref.primary, true)
if ref.primary:get() == (_xd("qL65",233)) then
_l54F19F7B5F58F216.set(ref.alternative, true)
end
_l54F19F7B5F58F216.set(ref.secondary, true)
_l54F19F7B5F58F216.set(ref.equipment, true)
_l54F19F7B5F58F216.set(ref.ignore_pistol_round, true)
_l54F19F7B5F58F216.set(ref.only_16k, true)
::continue::
end
if _l92438DCA10FB8565 == (63945 + 63939 - 63939) or _l92438DCA10FB8565 == -(-17) then
local _l6AC6C239F852AB60 do
local ref = _l934A3DF2B1DD218E._l22887641E343368B._l6AC6C239F852AB60
local _l2E042F1CBFD735FC = ref._l2E042F1CBFD735FC:get()
_l54F19F7B5F58F216.set(ref._l2E042F1CBFD735FC, true)
local _lD52EDAAF02723665 = ref[_l2E042F1CBFD735FC]
if _lD52EDAAF02723665 == nil then
goto continue
end
local _l8D7D25A996288554 = _lD52EDAAF02723665._l8D7D25A996288554:get()
_l54F19F7B5F58F216.set(_lD52EDAAF02723665._l8D7D25A996288554, true)
local _l0C45B7ADC38B7BA8 = _lD52EDAAF02723665[_l8D7D25A996288554]
if _l0C45B7ADC38B7BA8 == nil then
goto continue
end
_l5CF5882AE3FC855E(
_l0C45B7ADC38B7BA8, _l92438DCA10FB8565 == (17 * 1) and (_xd("CQgLCAMeBBsI",109)) or (_xd("TUJLQElf",44))
)
::continue::
end
end
if _l92438DCA10FB8565 == -(-7) then
local ref = _l934A3DF2B1DD218E._l22887641E343368B._lCAAFBE4F1A7B03D0
local _l97967CFCB4DAC999 = ref._lC1E3F5FBCBA96A35._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._lC1E3F5FBCBA96A35._lF8E1754D21D14193, true)
if not _l97967CFCB4DAC999 then
goto continue
end
_l54F19F7B5F58F216.set(ref._lC1E3F5FBCBA96A35._lCD138FF075844224, true)
_l54F19F7B5F58F216.set(ref._lC1E3F5FBCBA96A35.separator, true)
::continue::
end
local _l7A1ADCD1A60F5E8F = ref._l88375EBF3C34EB61._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._l88375EBF3C34EB61._lF8E1754D21D14193, true)
if not _l7A1ADCD1A60F5E8F then
goto continue
end
_l54F19F7B5F58F216.set(ref._l88375EBF3C34EB61._l407291AB3534872D, true)
_l54F19F7B5F58F216.set(ref._l88375EBF3C34EB61.separator, true)
::continue::
end
local _l50266F3EF482405B = ref._lC3DEF9996526AC6D._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._lC3DEF9996526AC6D._lF8E1754D21D14193, true)
if not _l50266F3EF482405B then
goto continue
end
_l54F19F7B5F58F216.set(ref._lC3DEF9996526AC6D.conditions, true)
_l54F19F7B5F58F216.set(ref._lC3DEF9996526AC6D.e_spam_while_active, true)
if ref._lC3DEF9996526AC6D.yaw_mirror ~= nil then
_l54F19F7B5F58F216.set(ref._lC3DEF9996526AC6D.yaw_mirror, true)
end
if ref._lC3DEF9996526AC6D.yaw_bias ~= nil then
_l54F19F7B5F58F216.set(ref._lC3DEF9996526AC6D.yaw_bias, true)
end
if ref._lC3DEF9996526AC6D.body_yaw_180 ~= nil then
_l54F19F7B5F58F216.set(ref._lC3DEF9996526AC6D.body_yaw_180, true)
end
_l54F19F7B5F58F216.set(ref._lC3DEF9996526AC6D.separator, true)
::continue::
end
_l54F19F7B5F58F216.set(ref._lAB6735E1E2F4E6FA._lF8E1754D21D14193, true)
local _lC5EB68C4355BB81B = ref._l9ADD09A58A60C241._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._l9ADD09A58A60C241._lF8E1754D21D14193, true)
if not _lC5EB68C4355BB81B then
goto continue
end
_l54F19F7B5F58F216.set(ref._l9ADD09A58A60C241._l407291AB3534872D, true)
_l54F19F7B5F58F216.set(ref._l9ADD09A58A60C241._l46AA6D7987AE7B3A, true)
if ref._l9ADD09A58A60C241._l46AA6D7987AE7B3A:get() ~= (_xd("jaSk",194)) then
_l54F19F7B5F58F216.set(ref._l9ADD09A58A60C241._l72BB9EFD1D25CD9F, true)
if ref._l9ADD09A58A60C241._l46AA6D7987AE7B3A:get() ~= (_xd("qY6bjpOZ",250)) then
_l54F19F7B5F58F216.set(ref._l9ADD09A58A60C241.pitch_label_1, true)
_l54F19F7B5F58F216.set(ref._l9ADD09A58A60C241.pitch_label_2, true)
_l54F19F7B5F58F216.set(ref._l9ADD09A58A60C241._l84BE8A6927CCD15A, true)
end
if ref._l9ADD09A58A60C241._l46AA6D7987AE7B3A:get() == (_xd("Wn5ocA==",9)) then
_l54F19F7B5F58F216.set(ref._l9ADD09A58A60C241.pitch_speed, true)
end
end
_l54F19F7B5F58F216.set(ref._l9ADD09A58A60C241.separator, true)
::continue::
end
local _l7A80B95D217116EF do
local ref = _l934A3DF2B1DD218E._l22887641E343368B._l7A80B95D217116EF
_l54F19F7B5F58F216.set(ref._lF8E1754D21D14193, true)
_l54F19F7B5F58F216.set(ref.hotkey, true)
_l54F19F7B5F58F216.set(ref.amount, true)
_l54F19F7B5F58F216.set(ref.variance, true)
_l54F19F7B5F58F216.set(ref.limit, true)
_l54F19F7B5F58F216.set(ref.force_choke, true)
_l54F19F7B5F58F216.set(ref.unsafe_choke, true)
end
end
if _l92438DCA10FB8565 == (44894 + 44886 - 44886) then
local ref = _l934A3DF2B1DD218E._l22887641E343368B._lA2858F25491F9BF1
local _l25B06BF1CD42B18E = ref._lA550371056A1793A._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._lA550371056A1793A._lF8E1754D21D14193, true)
_l54F19F7B5F58F216.set(ref._lA550371056A1793A.hotkey, true)
if not _l25B06BF1CD42B18E then
goto continue
end
_l54F19F7B5F58F216.set(ref._lA550371056A1793A.disablers, true)
::continue::
end
local _l9D503C222D9EE9BC = ref._l8C975ACFD6C1C204._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._l8C975ACFD6C1C204._lF8E1754D21D14193, true)
_l54F19F7B5F58F216.set(ref._l8C975ACFD6C1C204.hotkey, true)
if not _l9D503C222D9EE9BC then
goto continue
end
_l54F19F7B5F58F216.set(ref._l8C975ACFD6C1C204.options, true)
_l54F19F7B5F58F216.set(ref._l8C975ACFD6C1C204.disablers, true)
_l54F19F7B5F58F216.set(ref._l8C975ACFD6C1C204.separator, true)
::continue::
end
local _lC61615643E0F712C = ref._l2E58584FED1AE833._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._l2E58584FED1AE833._lF8E1754D21D14193, true)
if not _lC61615643E0F712C then
goto continue
end
_l54F19F7B5F58F216.set(ref._l2E58584FED1AE833.options, true)
_l54F19F7B5F58F216.set(ref._l2E58584FED1AE833.left_hotkey, true)
_l54F19F7B5F58F216.set(ref._l2E58584FED1AE833.right_hotkey, true)
_l54F19F7B5F58F216.set(ref._l2E58584FED1AE833.forward_hotkey, true)
_l54F19F7B5F58F216.set(ref._l2E58584FED1AE833.backward_hotkey, true)
_l54F19F7B5F58F216.set(ref._l2E58584FED1AE833.reset_hotkey, true)
_l54F19F7B5F58F216.set(ref._l2E58584FED1AE833._l1A5745CF6DC0D04D, true)
if ref._l2E58584FED1AE833._l1A5745CF6DC0D04D:get() ~= (_xd("Y0pK",44)) then
_l54F19F7B5F58F216.set(ref._l2E58584FED1AE833.arrows_color, true)
_l54F19F7B5F58F216.set(ref._l2E58584FED1AE833.arrows_offset, true)
end
if ref._l2E58584FED1AE833._l1A5745CF6DC0D04D:get() == (_xd("eUhMQF5GSEhZ",45)) then
_l54F19F7B5F58F216.set(ref._l2E58584FED1AE833.desync_color, true)
end
_l54F19F7B5F58F216.set(ref._l2E58584FED1AE833.separator, true)
::continue::
end
local _l270D2C6CD7AD71A2 = ref._l270D2C6CD7AD71A2
_l54F19F7B5F58F216.set(_l270D2C6CD7AD71A2._lF8E1754D21D14193, true)
if _l270D2C6CD7AD71A2._lF8E1754D21D14193:get() then
_l54F19F7B5F58F216.set(_l270D2C6CD7AD71A2._lE8558CABD1E415C2, true)
_l54F19F7B5F58F216.set(_l270D2C6CD7AD71A2._l424F4D241D652803, true)
_l54F19F7B5F58F216.set(_l270D2C6CD7AD71A2.separator, true)
end
local _l076F1313969326C6 = ref._l89E23F44D9DA3022._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._l89E23F44D9DA3022._lF8E1754D21D14193, true)
_l54F19F7B5F58F216.set(ref._l89E23F44D9DA3022.hotkey, true)
if not _l076F1313969326C6 then
goto continue
end
_l54F19F7B5F58F216.set(ref._l89E23F44D9DA3022._l861DF5F3FC680167, true)
_l54F19F7B5F58F216.set(ref._l89E23F44D9DA3022.on_manual_yaw, true)
_l54F19F7B5F58F216.set(ref._l89E23F44D9DA3022.separator, true)
::continue::
end
end
if _l92438DCA10FB8565 == (20 * 1) / 2 then
local ref = _l934A3DF2B1DD218E._lE2976F4B96444697._l7B49218C1AF8B0F2
local _lB9450C97401B9062 = ref._l67FF28C9241F3A40._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._l67FF28C9241F3A40._lF8E1754D21D14193, true)
if not _lB9450C97401B9062 then
goto continue
end
_l54F19F7B5F58F216.set(ref._l67FF28C9241F3A40._l861DF5F3FC680167, true)
_l54F19F7B5F58F216.set(ref._l67FF28C9241F3A40.separator, true)
::continue::
end
local _lCBE0A319F247F743 = ref._l7A06D468E30DD0C0._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._l7A06D468E30DD0C0._lF8E1754D21D14193, true)
if not _lCBE0A319F247F743 then
goto continue
end
_l54F19F7B5F58F216.set(ref._l7A06D468E30DD0C0._lCD138FF075844224, true)
_l54F19F7B5F58F216.set(ref._l7A06D468E30DD0C0._l15FC03D161D82F9E, true)
_l54F19F7B5F58F216.set(ref._l7A06D468E30DD0C0.separator, true)
::continue::
end
local _l21A663ED6007345C = ref._l353197A7D87942B7._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._l353197A7D87942B7._lF8E1754D21D14193, true)
if not _l21A663ED6007345C then
goto continue
end
_l54F19F7B5F58F216.set(ref._l353197A7D87942B7.fov, true)
_l54F19F7B5F58F216.set(ref._l353197A7D87942B7._l1285CD8A8A89032F, true)
_l54F19F7B5F58F216.set(ref._l353197A7D87942B7._lB179AD0D5B6AB17F, true)
_l54F19F7B5F58F216.set(ref._l353197A7D87942B7.offset_z, true)
_l54F19F7B5F58F216.set(ref._l353197A7D87942B7.options, true)
_l54F19F7B5F58F216.set(ref._l353197A7D87942B7.separator, true)
::continue::
end
local _l4539BC4C33CFE8D4 = ref._l8FAAA6B1FE921DDE._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._l8FAAA6B1FE921DDE._lF8E1754D21D14193, true)
_l54F19F7B5F58F216.set(ref._l8FAAA6B1FE921DDE._l424F4D241D652803, true)
if not _l4539BC4C33CFE8D4 then
goto continue
end
_l54F19F7B5F58F216.set(ref._l8FAAA6B1FE921DDE._lD75D3219FDCD5C2C, true)
_l54F19F7B5F58F216.set(ref._l8FAAA6B1FE921DDE.exclude, true)
_l54F19F7B5F58F216.set(ref._l8FAAA6B1FE921DDE._l1DB180C36A4930A4, true)
_l54F19F7B5F58F216.set(ref._l8FAAA6B1FE921DDE._lE8558CABD1E415C2, true)
if ref._l8FAAA6B1FE921DDE._lD75D3219FDCD5C2C:get() ~= (_xd("Hj88Oy82Lg==",90)) then
_l54F19F7B5F58F216.set(ref._l8FAAA6B1FE921DDE.start_fade, true)
end
_l54F19F7B5F58F216.set(ref._l8FAAA6B1FE921DDE.animation_speed, true)
_l54F19F7B5F58F216.set(ref._l8FAAA6B1FE921DDE.separator, true)
::continue::
end
local _l0154043A2E822064 = ref._lB4FFB8F7D3B1C70E._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._lB4FFB8F7D3B1C70E._lF8E1754D21D14193, true)
if not _l0154043A2E822064 then
goto continue
end
_l54F19F7B5F58F216.set(ref._lB4FFB8F7D3B1C70E.wall_color, true)
_l54F19F7B5F58F216.set(ref._lB4FFB8F7D3B1C70E.wall_color_picker, true)
_l54F19F7B5F58F216.set(ref._lB4FFB8F7D3B1C70E.bloom, true)
_l54F19F7B5F58F216.set(ref._lB4FFB8F7D3B1C70E.exposure, true)
_l54F19F7B5F58F216.set(ref._lB4FFB8F7D3B1C70E.model_ambient, true)
_l54F19F7B5F58F216.set(ref._lB4FFB8F7D3B1C70E.separator, true)
::continue::
end
local _l3EEE419C5CE98DCF = ref._l9A79211365DBCD03._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._l9A79211365DBCD03._lF8E1754D21D14193, true)
if not _l3EEE419C5CE98DCF then
goto continue
end
_l54F19F7B5F58F216.set(ref._l9A79211365DBCD03._l1285CD8A8A89032F, true)
_l54F19F7B5F58F216.set(ref._l9A79211365DBCD03._lB179AD0D5B6AB17F, true)
_l54F19F7B5F58F216.set(ref._l9A79211365DBCD03.offset_z, true)
_l54F19F7B5F58F216.set(ref._l9A79211365DBCD03.separator, true)
::continue::
end
end
if _l92438DCA10FB8565 == (11306 + 11295 - 11295) then
local ref = _l934A3DF2B1DD218E._lE2976F4B96444697._l67AA49514D0DC437
_l54F19F7B5F58F216.set(ref._lE6C7B315B1D5C75C._lF8E1754D21D14193, true)
local _l1A1F532F45C6A149 do
_l54F19F7B5F58F216.set(ref._l1A1F532F45C6A149.select, true)
_l54F19F7B5F58F216.set(ref._l1A1F532F45C6A149.accent_color, true)
if ref._l1A1F532F45C6A149.select:get (_xd("W2hxcQ==",29)) then
_l54F19F7B5F58F216.set(ref._l1A1F532F45C6A149.secondary_color, true)
_l54F19F7B5F58F216.set(ref._l1A1F532F45C6A149._l3B1BCF18E37D2A8C, true)
_l54F19F7B5F58F216.set(ref._l1A1F532F45C6A149.removals, true)
_l54F19F7B5F58F216.set(ref._l1A1F532F45C6A149.text_input, true)
end
if ref._l1A1F532F45C6A149.select:get (_xd("6crW084=",186)) then
_l54F19F7B5F58F216.set(ref._l1A1F532F45C6A149.display, true)
_l54F19F7B5F58F216.set(ref._l1A1F532F45C6A149._l1DB180C36A4930A4, true)
end
_l54F19F7B5F58F216.set(ref._l1A1F532F45C6A149.separator, true)
end
local _l02787BA28DB683FF = ref._l8E70AFFBBF19979A._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._l8E70AFFBBF19979A._lF8E1754D21D14193, true)
if not _l02787BA28DB683FF then
goto continue
end
_l54F19F7B5F58F216.set(ref._l8E70AFFBBF19979A._lD75D3219FDCD5C2C, true)
_l54F19F7B5F58F216.set(ref._l8E70AFFBBF19979A.select, true)
_l54F19F7B5F58F216.set(ref._l8E70AFFBBF19979A._lE8558CABD1E415C2, true)
if ref._l8E70AFFBBF19979A._lD75D3219FDCD5C2C:get() == (_xd("c1JRVkJbQw==",55)) then
_l54F19F7B5F58F216.set(ref._l8E70AFFBBF19979A.accent_label, true)
_l54F19F7B5F58F216.set(ref._l8E70AFFBBF19979A.accent_color, true)
_l54F19F7B5F58F216.set(ref._l8E70AFFBBF19979A.secondary_label, true)
_l54F19F7B5F58F216.set(ref._l8E70AFFBBF19979A.secondary_color, true)
end
_l54F19F7B5F58F216.set(ref._l8E70AFFBBF19979A.separator, true)
::continue::
end
_l54F19F7B5F58F216.set(ref._l67C2576273D63F22._lF8E1754D21D14193, true)
_l54F19F7B5F58F216.set(ref._l67C2576273D63F22._l424F4D241D652803, true)
local _lF3499077BCB7FE0D = ref._lCDF3C41A9F986209._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._lCDF3C41A9F986209._lF8E1754D21D14193, true)
if not _lF3499077BCB7FE0D then
goto continue
end
_l54F19F7B5F58F216.set(ref._lCDF3C41A9F986209.only_if_active, true)
_l54F19F7B5F58F216.set(ref._lCDF3C41A9F986209._l3B1BCF18E37D2A8C, true)
_l54F19F7B5F58F216.set(ref._lCDF3C41A9F986209._lE8558CABD1E415C2, true)
_l54F19F7B5F58F216.set(ref._lCDF3C41A9F986209.active_label, true)
_l54F19F7B5F58F216.set(ref._lCDF3C41A9F986209.active_color, true)
if not ref._lCDF3C41A9F986209.only_if_active:get() then
_l54F19F7B5F58F216.set(ref._lCDF3C41A9F986209.inactive_label, true)
_l54F19F7B5F58F216.set(ref._lCDF3C41A9F986209.inactive_color, true)
end
_l54F19F7B5F58F216.set(ref._lCDF3C41A9F986209.separator, true)
::continue::
end
end
if _l92438DCA10FB8565 == (132 * 1) / 12 then
local ref = _l934A3DF2B1DD218E._lE2976F4B96444697._l8902B78CA3BCD5C3
local _l1394A260F4BE5DD7 = ref._lBE86409E9AAC1C1C._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._lBE86409E9AAC1C1C._lF8E1754D21D14193, true)
if not _l1394A260F4BE5DD7 then
goto continue
end
_l54F19F7B5F58F216.set(ref._lBE86409E9AAC1C1C._l3B1BCF18E37D2A8C, true)
_l54F19F7B5F58F216.set(ref._lBE86409E9AAC1C1C.body_label, true)
_l54F19F7B5F58F216.set(ref._lBE86409E9AAC1C1C.body_color, true)
_l54F19F7B5F58F216.set(ref._lBE86409E9AAC1C1C.head_label, true)
_l54F19F7B5F58F216.set(ref._lBE86409E9AAC1C1C.head_color, true)
_l54F19F7B5F58F216.set(ref._lBE86409E9AAC1C1C.mismatch_label, true)
_l54F19F7B5F58F216.set(ref._lBE86409E9AAC1C1C.mismatch_color, true)
_l54F19F7B5F58F216.set(ref._lBE86409E9AAC1C1C._lCC9D2EFA01452D7D, true)
_l54F19F7B5F58F216.set(ref._lBE86409E9AAC1C1C._l0F5191CA1603861C, true)
::continue::
end
_l54F19F7B5F58F216.set(ref._l8C7EB14DBDF4BFB7._lF8E1754D21D14193, true)
_l54F19F7B5F58F216.set(ref._l8C7EB14DBDF4BFB7._l424F4D241D652803, true)
local _l638C7E06BC44AC6D = ref._l144E1341F4C67C42._lF8E1754D21D14193:get() do
_l54F19F7B5F58F216.set(ref._l144E1341F4C67C42._lF8E1754D21D14193, true)
if not _l638C7E06BC44AC6D then
goto continue
end
_l54F19F7B5F58F216.set(ref._l144E1341F4C67C42.vertical_label, true)
_l54F19F7B5F58F216.set(ref._l144E1341F4C67C42.vertical_color, true)
_l54F19F7B5F58F216.set(ref._l144E1341F4C67C42.horizontal_label, true)
_l54F19F7B5F58F216.set(ref._l144E1341F4C67C42.horizontal_color, true)
_l54F19F7B5F58F216.set(ref._l144E1341F4C67C42._l2742BF7C296EC261, true)
_l54F19F7B5F58F216.set(ref._l144E1341F4C67C42._lBF25F39FB7D8BF2D, true)
_l54F19F7B5F58F216.set(ref._l144E1341F4C67C42._l0F5191CA1603861C, true)
::continue::
end
end
if _l92438DCA10FB8565 == (140 * 1) / 10 then
_l54F19F7B5F58F216.set(_lD31E75097C48C0AA.list, true)
_l54F19F7B5F58F216.set(_lD31E75097C48C0AA.input, true)
_l54F19F7B5F58F216.set(_lD31E75097C48C0AA.load_button, true)
_l54F19F7B5F58F216.set(_lD31E75097C48C0AA.save_button, true)
_l54F19F7B5F58F216.set(_lD31E75097C48C0AA.delete_button, true)
_l54F19F7B5F58F216.set(_lD31E75097C48C0AA.import_button, true)
_l54F19F7B5F58F216.set(_lD31E75097C48C0AA.export_button, true)
end
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
_l7B33F3C572CC3B06.shutdown()
_l5A9EFFC9F171483F.shutdown()
_l9F7AD990CBCE2B67(true)
_l872579E7F2D772DF(true)
_l45696CD6DBEFE294(true)
end
local _l93A0F5D91FBDC005 _lD77034BF6291E584()
local _l92438DCA10FB8565 = _l934A3DF2B1DD218E._lD1C88AEFBAAE3AC9.get_category()
if ui.is_menu_open() then
_l934A3DF2B1DD218E._lD1C88AEFBAAE3AC9.update_animation()
end
local _l59DC82DA00604603 = _l92438DCA10FB8565 == (8 + (6056 - 6056))
if _l92438DCA10FB8565 == (15 * 1) then
_l3EDDA27E3A542109.display()
end
_l3EDDA27E3A542109.tick()
_l9F7AD990CBCE2B67(false)
_l872579E7F2D772DF(false)
_l45696CD6DBEFE294(_l59DC82DA00604603)
end
local _l532E00EF8F9F2A49 = _l54F19F7B5F58F216.get_event_bus() do
_l532E00EF8F9F2A49.update:set(
_l106412F96D31FCA9
)
_l106412F96D31FCA9()
_l54F19F7B5F58F216.force_update()
end
client.set_event_callback('shutdown', _l9414F1C1C88188EF)
client.set_event_callback('paint_ui', _lD77034BF6291E584)
end
end
_l422CA01953F92F19((_xd("09TBx8WAmICNgNLF08/V0sPFgIjNxc7VgMLVyczUiQ==",160)))
local _l73FD1C398335B254 do
_l73FD1C398335B254 = { }
local _l5E432A44CEEEFD31 = { }
local _l6CBD0D65CC9E8291 = { }
local _lC27D53933C646698 = vector()
local _lA2AFF19924020FBA = vector()
local _l603AC307399D46A2 = false
local _lBE366209BADD9898 = false
local _l400E14E01D207D9E = 0
local _l0713D9FA90C71EFD = vector()
local _lF3A866FCCAE50DAF = vector()
local _l0F41BA20E79EF9FC
local _l5D71FD942BBD1786
local _l0CFCCE6F1C6BCFBB = { } do
_l93A0F5D91FBDC005 _l0CFCCE6F1C6BCFBB:new(_lDB160C0F87126763)
local _lD0CA631152BF7F16 = { }
_lD0CA631152BF7F16._lDB160C0F87126763 = _lDB160C0F87126763
_lD0CA631152BF7F16.pos = vector()
_lD0CA631152BF7F16._l2742BF7C296EC261 = vector()
_lD0CA631152BF7F16.anchor = vector(0.0, 0.0)
_lD0CA631152BF7F16.updated = false
_lD0CA631152BF7F16.dragging = false
_lD0CA631152BF7F16.item_x = _lC32E23DC8F791E4A.new(ui.new_string, string.format((_xd("XggkAw==",123)), _lDB160C0F87126763))
_lD0CA631152BF7F16.item_y = _lC32E23DC8F791E4A.new(ui.new_string, string.format((_xd("v+nF4w==",154)), _lDB160C0F87126763))
_l5E432A44CEEEFD31[_lDB160C0F87126763] = _lD0CA631152BF7F16
_l6CBD0D65CC9E8291[#_l6CBD0D65CC9E8291 + 1] = _lD0CA631152BF7F16
return setmetatable(
_lD0CA631152BF7F16, self
)
end
_l93A0F5D91FBDC005 _l0CFCCE6F1C6BCFBB:set_pos(pos)
local _l5A7374A1D131DE50 = vector(
client._l42B4F40833E0955A()
)
local _l7BC4624CDE76769F = (
_l5A7374A1D131DE50.x == 0 and
_l5A7374A1D131DE50.y == 0
)
if _l7BC4624CDE76769F then
return
end
local _l98FB9370E7A0998B = pos:clone()
_l98FB9370E7A0998B.x = _l885AD57970B0DF46.clamp(_l98FB9370E7A0998B.x, 0, _l5A7374A1D131DE50.x - self._l2742BF7C296EC261.x)
_l98FB9370E7A0998B.y = _l885AD57970B0DF46.clamp(_l98FB9370E7A0998B.y, 0, _l5A7374A1D131DE50.y - self._l2742BF7C296EC261.y)
self.pos = _l98FB9370E7A0998B
end
_l93A0F5D91FBDC005 _l0CFCCE6F1C6BCFBB:set_size(_l2742BF7C296EC261)
local _l5A7374A1D131DE50 = vector(
client._l42B4F40833E0955A()
)
local _l7BC4624CDE76769F = (
_l5A7374A1D131DE50.x == 0 and
_l5A7374A1D131DE50.y == 0
)
if _l7BC4624CDE76769F then
return
end
local _lAFEE1C504945ADB8 = _l2742BF7C296EC261 - self._l2742BF7C296EC261
self._l2742BF7C296EC261 = _l2742BF7C296EC261
self:set_pos(self.pos - _lAFEE1C504945ADB8 * self.anchor)
end
_l93A0F5D91FBDC005 _l0CFCCE6F1C6BCFBB:set_anchor(anchor)
self.anchor = anchor
end
_l93A0F5D91FBDC005 _l0CFCCE6F1C6BCFBB:is_hovering()
return self.hovering
end
_l93A0F5D91FBDC005 _l0CFCCE6F1C6BCFBB:is_dragging()
return self.dragging
end
_l93A0F5D91FBDC005 _l0CFCCE6F1C6BCFBB:update()
self.updated = true
end
_l0CFCCE6F1C6BCFBB._l6BC954908A843096 = _l0CFCCE6F1C6BCFBB
end
local _l93A0F5D91FBDC005 _lF50678DA69035938(_lB3522DEF58C12C33, a, b)
return _lB3522DEF58C12C33.x >= a.x and _lB3522DEF58C12C33.y >= a.y
and _lB3522DEF58C12C33.x <= b.x and _lB3522DEF58C12C33.y <= b.y
end
local _l93A0F5D91FBDC005 _lD58A9117E040FCA9()
local _lDE7E2F7A34D21BF4 = vector(ui.mouse_position())
local _lA48CEEAD5447EE56 = client.key_state(0x01)
local _lCE6CC7CA615EA3D2 = globals.frametime()
_lC27D53933C646698 = _lDE7E2F7A34D21BF4
_l0713D9FA90C71EFD = _lC27D53933C646698 - _lA2AFF19924020FBA
_lA2AFF19924020FBA = _lC27D53933C646698
_l603AC307399D46A2 = _lA48CEEAD5447EE56
_lBE366209BADD9898 = _lA48CEEAD5447EE56 and _l400E14E01D207D9E < 0
_l400E14E01D207D9E = _lA48CEEAD5447EE56 and (_l400E14E01D207D9E < 0 and 0 or _l400E14E01D207D9E + _lCE6CC7CA615EA3D2) or -1
if _lBE366209BADD9898 then
_lF3A866FCCAE50DAF = _lC27D53933C646698
end
end
local _l93A0F5D91FBDC005 _l3F3CB5F2FA04A90F()
for i = 1, #_l6CBD0D65CC9E8291 do
local _lD0CA631152BF7F16 = _l6CBD0D65CC9E8291[i]
local pos = _lD0CA631152BF7F16.pos
local _l2742BF7C296EC261 = _lD0CA631152BF7F16._l2742BF7C296EC261
local r, g, b, a = 0, 0, 0, (41522 + 41267 - 41267)
renderer.rectangle(pos.x, pos.y, _l2742BF7C296EC261.x, _l2742BF7C296EC261.y, r, g, b, a)
end
end
local _l93A0F5D91FBDC005 _l31F1E932A44857C2()
local _lCC925EA8E38C450B = nil
if ui.is_menu_open() then
for i = 1, #_l6CBD0D65CC9E8291 do
local _lD0CA631152BF7F16 = _l6CBD0D65CC9E8291[i]
local pos = _lD0CA631152BF7F16.pos
local _l2742BF7C296EC261 = _lD0CA631152BF7F16._l2742BF7C296EC261
if not _lD0CA631152BF7F16.updated then
goto continue
end
if not _lF50678DA69035938(_lC27D53933C646698, pos, pos + _l2742BF7C296EC261) then
goto continue
end
_lCC925EA8E38C450B = _lD0CA631152BF7F16
::continue::
end
end
_l0F41BA20E79EF9FC = _lCC925EA8E38C450B
end
local _l93A0F5D91FBDC005 _lC21F75E4BE05A0E4()
if _l603AC307399D46A2 then
if _lBE366209BADD9898 and _l0F41BA20E79EF9FC ~= nil then
for i = 1, #_l6CBD0D65CC9E8291 do
local _lD0CA631152BF7F16 = _l6CBD0D65CC9E8291[i]
if _lD0CA631152BF7F16 == _l0F41BA20E79EF9FC then
table.remove(_l6CBD0D65CC9E8291, i)
table.insert(_l6CBD0D65CC9E8291, _lD0CA631152BF7F16)
break
end
end
_l5D71FD942BBD1786 = _l0F41BA20E79EF9FC
return
end
return
end
_l5D71FD942BBD1786 = nil
end
local _l93A0F5D91FBDC005 _l2CC34F130953A2EE()
for i = 1, #_l6CBD0D65CC9E8291 do
local _lD0CA631152BF7F16 = _l6CBD0D65CC9E8291[i]
_lD0CA631152BF7F16.updated = false
_lD0CA631152BF7F16.hovering = false
_lD0CA631152BF7F16.dragging = false
end
end
local _l93A0F5D91FBDC005 _l4A373A1180F8FEDA()
if _l0F41BA20E79EF9FC == nil then
return
end
_l0F41BA20E79EF9FC.hovering = true
end
local _l93A0F5D91FBDC005 _lA719396B3AD68255()
if _l5D71FD942BBD1786 == nil then
return
end
local _lF445CD3ADD98E017 = _l5D71FD942BBD1786.pos + _l0713D9FA90C71EFD
_l5D71FD942BBD1786:set_pos(_lF445CD3ADD98E017)
_l5D71FD942BBD1786.dragging = true
end
local _l93A0F5D91FBDC005 _lD1624657F85E0FA5()
local _l5A7374A1D131DE50 = vector(
client._l42B4F40833E0955A()
)
for i = 1, #_l6CBD0D65CC9E8291 do
local _lD0CA631152BF7F16 = _l6CBD0D65CC9E8291[i]
local x = _lD0CA631152BF7F16.pos.x / _l5A7374A1D131DE50.x
local y = _lD0CA631152BF7F16.pos.y / _l5A7374A1D131DE50.y
_lD0CA631152BF7F16.item_x:set(tostring(x))
_lD0CA631152BF7F16.item_y:set(tostring(y))
end
end
local _l93A0F5D91FBDC005 _l283FFA7DC2F6BDCF()
local _l5A7374A1D131DE50 = vector(
client._l42B4F40833E0955A()
)
for i = 1, #_l6CBD0D65CC9E8291 do
local _lD0CA631152BF7F16 = _l6CBD0D65CC9E8291[i]
local x = tonumber(_lD0CA631152BF7F16.item_x:get())
local y = tonumber(_lD0CA631152BF7F16.item_y:get())
if x ~= nil and y ~= nil then
_lD0CA631152BF7F16:set_pos(_l5A7374A1D131DE50 * vector(x, y))
end
end
end
local _l93A0F5D91FBDC005 _lD77034BF6291E584()
_lD58A9117E040FCA9()
_l31F1E932A44857C2()
_lC21F75E4BE05A0E4()
_l2CC34F130953A2EE()
_l4A373A1180F8FEDA()
_lA719396B3AD68255()
end
local _l93A0F5D91FBDC005 _l6F48C10A3AA76108(cmd)
local _l97DD4D5958BF34A1 = (
_l0F41BA20E79EF9FC ~= nil or
_l5D71FD942BBD1786 ~= nil
)
if _l97DD4D5958BF34A1 then
cmd.in_attack = 0
cmd.in_attack2 = 0
end
end
_l93A0F5D91FBDC005 _l73FD1C398335B254.new(_lDB160C0F87126763, x, y)
local _lD0CA631152BF7F16 = _l5E432A44CEEEFD31[_lDB160C0F87126763]
or _l0CFCCE6F1C6BCFBB:new(_lDB160C0F87126763)
local _l5A7374A1D131DE50 = vector(client._l42B4F40833E0955A())
_lD0CA631152BF7F16:set_pos(_l5A7374A1D131DE50 * vector(x, y))
return _lD0CA631152BF7F16
end
_l93A0F5D91FBDC005 _l73FD1C398335B254.save_settings()
_lD1624657F85E0FA5()
end
_l93A0F5D91FBDC005 _l73FD1C398335B254.load_settings()
_l283FFA7DC2F6BDCF()
end
client.delay_call(0, _l93A0F5D91FBDC005()
client.set_event_callback(
'paint_ui', _lD77034BF6291E584
)
client.set_event_callback(
'setup_command',
_l6F48C10A3AA76108
)
client.set_event_callback(
'pre_config_save',
_lD1624657F85E0FA5
)
client.set_event_callback(
(_xd("prmloom1ubiwv7GJurm3sg==",214)),
_l283FFA7DC2F6BDCF
)
end)
end
local _lD31E75097C48C0AA do
local ref = _l934A3DF2B1DD218E._lD31E75097C48C0AA
local _l309BE74EB08C2521 = (_xd("JCRBS1JfWENF",7))
local _l94FCA1F175A1434C = { }
local _l0239DB2CF9B07AA8 = (
_lCDB391B6B402334C[(_xd("Aw8OBgkH",96))]
or database.read(_l309BE74EB08C2521)
or _l94FCA1F175A1434C
)
local _l6559C319235228ED = { }
local _lCAEB82798E44870A = { }
local _l7D492DB4FFF2B50E = {
[1] = {
_lDB160C0F87126763 = (_xd("i6qprrqjuw==",207)),
_l5E432A44CEEEFD31 = '[flux] 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En62zQBA0p4QCvh2EgaB8nGQCmQYEgQN8CHO02iX8SHkGe4U8mTrySs2zQrZDl7rxN7w59swDvhZDl4G5WuL8nwXEm4UoniLonDXGgTZ5eEOyp62zQr27mwXygh2Cvh2oniLonDXGgTZ0ZiOEeEKEC62zQrRD4ArseBQInukyeHK5pGkyeHOGwTisNkysNbYxK72Cvh2EeRXESDUoniLonDXGgTZ5pDAInRQsNkysLEXEg72Cvh2EgaB8nGQCmQYEgQN8CHO02iQyea2yg4LsNkyGJuwE4ArseDw0SHOy4TK8mThEviOEeEKEC62zQrZCvh2om4i8eQYEJxY8mTrySs2zQrqx2hqD2hRx9xrxN7wCvh2GmaAECuB8Cuf5eEOyp62zQr26eTrEWuG5Wueygap0wTkyeHk8maAySsYEniX8eRQEWsdnmEXyJDQCvh28S4KGgTBCSDNySjQ5eaYonwXGgQOyQTK0g4QEWsdnKxwCvh2EeRXESDUoniLonDXGgTZ5eaN8m4YGaTNymRO02sdnKMAxWhZD9brxN6h59swD4ArseHXynapE4TkyeHk8maAySsYymirI4TkEQTX8SHkGe72zQBe8nRKE4ArseEr8nGKCmQYEgQN8CHO02iNymRO02sdnKMAxWhZD9brxN6h59shxaArseDw0SHOy4TK8mThEviNymRO02sdnKswDvhZDl7rxN7w59LSCvh2EgaB8nGQCmQYEgQN8CHO02ikyeaNGgQmE4TNymRO02sdnKswDvhZDl7rxN7w59MKzaArseBQInukyeHK5pDQyg4NGWsdnwr2vgQLEvjKogTA0ZsrsLEO0eDQsguOEJLV8nQBs2h2HeTZ8m7V0maeEvjhymQYGJx25WuM8nwXEm7VySEQ0pukEg72C4ArspGXGg4ZynaZoZiZEnwOGear0Zsdnwr26nikynaAonTYs2h26CuZySGKsQwG5WueygapCmQYEgQN8CHO02iSoniLySGUIvsdnZsh5NswsQArseQYEgQN8CHO0pxY0m4NymiL8CuiCmDOygTZsNkyxlsi59VA59VA59swD4ArseEr8nGKCmQYEgQN8CHO02iKEnRQ8S62zQBysLEXom7VInaSsQwG5WufECQ2oniL0ZiQyea2yg4LsNkyEear0m4G5WueygapCmQYEgQN8CHO02iSoniLySGU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_'
},
}
for i = 1, #_l0239DB2CF9B07AA8 do
_l6559C319235228ED[i] = _l0239DB2CF9B07AA8[i]
end
for i = #_l7D492DB4FFF2B50E, 1, -1 do
local list = _l7D492DB4FFF2B50E[i]
if list._l5E432A44CEEEFD31 == nil then
goto continue
end
local ok, _lE5AB91D551F383E0 = _lAE2482B62AD01298.decode(list._l5E432A44CEEEFD31)
if not ok then
table.remove(_l7D492DB4FFF2B50E, i)
goto continue
end
list._l5E432A44CEEEFD31 = _lE5AB91D551F383E0
::continue::
end
local _l93A0F5D91FBDC005 _l35474D453327E35A(_lDB160C0F87126763, _l5E432A44CEEEFD31, _lA39399420013BD34)
local list = { }
list._lDB160C0F87126763 = _lDB160C0F87126763
list._l5E432A44CEEEFD31 = _l5E432A44CEEEFD31
list._l2879824AC7FE4B3D = _lA39399420013BD34
return list
end
local _l93A0F5D91FBDC005 _lFDAB4A72FB0EC5BF(_lDB160C0F87126763)
for i = 1, #_lCAEB82798E44870A do
local _l5E432A44CEEEFD31 = _lCAEB82798E44870A[i]
if _l5E432A44CEEEFD31._lDB160C0F87126763 == _lDB160C0F87126763 then
return _l5E432A44CEEEFD31, i
end
end
return nil, -1
end
local _l93A0F5D91FBDC005 _l5A5C47A7FB07C760()
_lCDB391B6B402334C[(_xd("MT08NDs1",82))] = _l6559C319235228ED
end
local _l93A0F5D91FBDC005 _l336863432F753095()
for i = 1, #_lCAEB82798E44870A do
_lCAEB82798E44870A[i] = nil
end
for i = 1, #_l7D492DB4FFF2B50E do
local list = _l7D492DB4FFF2B50E[i]
local _lF46FB372DA1A59E2 = _l35474D453327E35A(
list._lDB160C0F87126763, list._l5E432A44CEEEFD31, true
)
table.insert(_lCAEB82798E44870A, _lF46FB372DA1A59E2)
end
for i = 1, #_l6559C319235228ED do
local list = _l6559C319235228ED[i]
local _lF46FB372DA1A59E2 = _l35474D453327E35A(
list._lDB160C0F87126763, list._l5E432A44CEEEFD31, false
)
_lF46FB372DA1A59E2._l30D8B2DA51B08CBE = i
table.insert(_lCAEB82798E44870A, _lF46FB372DA1A59E2)
end
end
local _l93A0F5D91FBDC005 _l42E84206C3BA86AD()
local _lE5AB91D551F383E0 = { }
for i = 1, #_lCAEB82798E44870A do
local list = _lCAEB82798E44870A[i]
local _lDB160C0F87126763 = list._lDB160C0F87126763
if list._l2879824AC7FE4B3D then
_lDB160C0F87126763 = string.format(
(_xd("+630",222)), _lDB160C0F87126763
)
end
table.insert(_lE5AB91D551F383E0, _lDB160C0F87126763)
end
return _lE5AB91D551F383E0
end
local _l93A0F5D91FBDC005 _lA395C082FED81862(_lDB160C0F87126763, categories)
local list, idx = _lFDAB4A72FB0EC5BF(_lDB160C0F87126763)
if list == nil or idx == -1 then
return
end
local ok, _lE5AB91D551F383E0 = _lAE2482B62AD01298.import(
list._l5E432A44CEEEFD31, categories
)
if not ok then
_lD71287999D1F9CFB.error(string.format(
(_xd("paKqr6an47es46qus6yxt+PmsOOgrK2lqqT54+aw",195)), _lDB160C0F87126763, _lE5AB91D551F383E0
))
return
end
_lD71287999D1F9CFB._l92B471B55191BA77(string.format(
(_xd("VlVbXl9eGh9JGllVVFxTXQ==",58)), _lDB160C0F87126763
))
_l73FD1C398335B254.load_settings()
end
local _l93A0F5D91FBDC005 _l026A17CFCF62A9CE(_lDB160C0F87126763)
_l73FD1C398335B254.save_settings()
local _l084D4B787FA3CD07 = _lAE2482B62AD01298.export()
local list, idx = _lFDAB4A72FB0EC5BF(_lDB160C0F87126763)
if list == nil or idx == -1 then
table.insert(_l6559C319235228ED, _l35474D453327E35A(
_lDB160C0F87126763, _l084D4B787FA3CD07, false
))
_l5A5C47A7FB07C760()
_l336863432F753095()
ref.list:update(
_l42E84206C3BA86AD()
)
_lD71287999D1F9CFB._l92B471B55191BA77(string.format(
(_xd("JTQjJzIjImZjNWYlKSggLyE=",70)), _lDB160C0F87126763
))
return
end
if list._l2879824AC7FE4B3D then
_lD71287999D1F9CFB.error(string.format(
(_xd("6P7ksfLw/7blsfT1+OWxtOKx8v7/9/j2",145)), _lDB160C0F87126763
))
return
end
list._l5E432A44CEEEFD31 = _l084D4B787FA3CD07
if list._l30D8B2DA51B08CBE ~= nil then
local _l471EB445C387A0A5 = _l6559C319235228ED[
if (8998*7 - 8998*6 == 8998) then
  local _vD77F4F82 = math.sqrt(285537)
  local _v663BC394 = string.len(tostring(_vD77F4F82))
  if _v663BC394 > 4 then _v663BC394 = _v663BC394 + 1 end
end
list._l30D8B2DA51B08CBE
]
if _l471EB445C387A0A5 ~= nil then
_l471EB445C387A0A5._l5E432A44CEEEFD31 = _l084D4B787FA3CD07
end
end
_l5A5C47A7FB07C760()
_l336863432F753095()
_lD71287999D1F9CFB._l92B471B55191BA77(string.format(
(_xd("GwkeDQxITRtICwcGDgEP",104)), _lDB160C0F87126763
))
end
local _l93A0F5D91FBDC005 _lED891318C8489F03(_lDB160C0F87126763)
local list, idx = _lFDAB4A72FB0EC5BF(_lDB160C0F87126763)
if list == nil or idx == -1 then
return
end
if list._l2879824AC7FE4B3D then
_lD71287999D1F9CFB.error(string.format(
(_xd("JzErfj0/MHkqfjo7MjsqO357LX49MTA4Nzk=",94)), _lDB160C0F87126763
))
return
end
local _l30D8B2DA51B08CBE = list._l30D8B2DA51B08CBE
if _l30D8B2DA51B08CBE == nil then
return
end
table.remove(_l6559C319235228ED, _l30D8B2DA51B08CBE)
_l5A5C47A7FB07C760()
_l336863432F753095()
ref.list:update(
_l42E84206C3BA86AD()
)
local _l3FD7672EE8DDCACF = ''
local _lB90694C605679381 = math.min(
ref.list:get() + 1,
#_lCAEB82798E44870A
)
local _l5E432A44CEEEFD31 = _lCAEB82798E44870A[_lB90694C605679381]
if _l5E432A44CEEEFD31 ~= nil then
_l3FD7672EE8DDCACF = _l5E432A44CEEEFD31._lDB160C0F87126763
end
ref.input:set(_l3FD7672EE8DDCACF)
_lD71287999D1F9CFB._l92B471B55191BA77(string.format(
(_xd("tre+t6a3tvL3ofKxvby0u7U=",210)), _lDB160C0F87126763
))
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _lE14F9BD9F324CE67(_l777D8FF3F76AC3BE)
local _lB90694C605679381 = _l777D8FF3F76AC3BE:get()
if _lB90694C605679381 == nil then
return
end
local list = _lCAEB82798E44870A[_lB90694C605679381 + 1]
if list == nil then
return
end
ref.input:set(list._lDB160C0F87126763)
end
local _l93A0F5D91FBDC005 _l5FD8F4B03FC26F31()
local _lDB160C0F87126763 = _l885AD57970B0DF46.trim(
ref.input:get()
)
if _lDB160C0F87126763 == '' then
return
end
_lA395C082FED81862(_lDB160C0F87126763, nil)
end
local _l93A0F5D91FBDC005 _l0878E8554B805D27()
local _lDB160C0F87126763 = _l885AD57970B0DF46.trim(
ref.input:get()
)
if _lDB160C0F87126763 == '' then
return
end
_l026A17CFCF62A9CE(_lDB160C0F87126763)
end
local _l93A0F5D91FBDC005 _l5E31A393547EE85D()
local _lDB160C0F87126763 = _l885AD57970B0DF46.trim(
ref.input:get()
)
if _lDB160C0F87126763 == '' then
return
end
_lED891318C8489F03(_lDB160C0F87126763)
end
local _l93A0F5D91FBDC005 on_export()
_l73FD1C398335B254.save_settings()
local ok, _lE5AB91D551F383E0 = _lAE2482B62AD01298.encode(
_lAE2482B62AD01298.export()
)
if not ok then
return
end
clipboard.set(_lE5AB91D551F383E0)
_lD71287999D1F9CFB._l92B471B55191BA77(
(_xd("d2pifWBmd3YycX18dHt1",18))
)
end
local _l93A0F5D91FBDC005 _lFAA55FA4FA54ADBD()
local str = clipboard.get()
if str == nil then
return
end
local ok, _lE5AB91D551F383E0 = _lAE2482B62AD01298.decode(str)
if not ok then
return
end
_lAE2482B62AD01298.import(_lE5AB91D551F383E0, nil)
_l73FD1C398335B254.load_settings()
_lD71287999D1F9CFB._l92B471B55191BA77(
(_xd("eHxhfmNldHUxcn5/d3h2",17))
)
end
ref.list:set_callback(_lE14F9BD9F324CE67)
ref.load_button:set_callback(_l5FD8F4B03FC26F31)
ref.save_button:set_callback(_l0878E8554B805D27)
ref.delete_button:set_callback(_l5E31A393547EE85D)
ref.export_button:set_callback(on_export)
ref.import_button:set_callback(_lFAA55FA4FA54ADBD)
end
_l336863432F753095()
ref.list:update(_l42E84206C3BA86AD())
end
local _l09447731E236F585 do
_l09447731E236F585 = { }
local _l93A0F5D91FBDC005 _l1472C20D6F492B43(x)
if x > 0 then
return 1
end
if x < 0 then
return -1
end
return 0
end
_l93A0F5D91FBDC005 _l09447731E236F585.blur(x, y, w, h)
if globals.mapname() == nil then
return
end
renderer.blur(x, y, w, h)
end
_l93A0F5D91FBDC005 _l09447731E236F585.rectangle_outline(x, y, w, h, r, g, b, a, _lBF25F39FB7D8BF2D, _l120CAA39EB56C63F)
if _lBF25F39FB7D8BF2D == nil or _lBF25F39FB7D8BF2D == 0 then
_lBF25F39FB7D8BF2D = 1
end
if _l120CAA39EB56C63F == nil then
_l120CAA39EB56C63F = 0
end
local _l4C5440E7B66B071A = _l1472C20D6F492B43(w) * _lBF25F39FB7D8BF2D
local _l0455A7B4A79EEF61 = _l1472C20D6F492B43(h) * _lBF25F39FB7D8BF2D
local _l0358D8726BE38EE1 = _l120CAA39EB56C63F == 1 and 1 or 0
local _lC67FCD01271F9A06 = _l0358D8726BE38EE1 * (2 * 1)
local _l444C10E75FFDE928 = _l120CAA39EB56C63F * (2 + (303 - 303))
renderer.circle_outline(x + _l120CAA39EB56C63F, y + _l120CAA39EB56C63F, r, g, b, a, _l120CAA39EB56C63F, -(-180), 0.25, _lBF25F39FB7D8BF2D)
renderer.circle_outline(x + _l120CAA39EB56C63F, y + h - _l120CAA39EB56C63F, r, g, b, a, _l120CAA39EB56C63F, -(-90), 0.25, _lBF25F39FB7D8BF2D)
renderer.circle_outline(x + w - _l120CAA39EB56C63F, y + _l120CAA39EB56C63F, r, g, b, a, _l120CAA39EB56C63F, (31414 + 31144 - 31144), 0.25, _lBF25F39FB7D8BF2D)
renderer.circle_outline(x + w - _l120CAA39EB56C63F, y + h - _l120CAA39EB56C63F, r, g, b, a, _l120CAA39EB56C63F, 0, 0.25, _lBF25F39FB7D8BF2D)
renderer.rectangle(x, y + _l120CAA39EB56C63F, _l4C5440E7B66B071A, h - _l444C10E75FFDE928, r, g, b, a)
renderer.rectangle(x + w, y + _l120CAA39EB56C63F, -_l4C5440E7B66B071A, h - _l444C10E75FFDE928, r, g, b, a)
renderer.rectangle(x + _l0358D8726BE38EE1 + _l120CAA39EB56C63F, y, w - _lC67FCD01271F9A06 - _l444C10E75FFDE928, _l0455A7B4A79EEF61, r, g, b, a)
renderer.rectangle(x + _l0358D8726BE38EE1 + _l120CAA39EB56C63F, y + h, w - _lC67FCD01271F9A06 - _l444C10E75FFDE928, -_l0455A7B4A79EEF61, r, g, b, a)
end
end
_l422CA01953F92F19((_xd("9fLn4eOmv6arpvHv6OLp8fWmqabl6ejg7+Gmqabj/tn04+ji4/Q=",134)))
local _lBD5F403BA71FC9C6 do
local _l213DFCEE16DCB32C do
local _l96D871DBEA7B8298 do
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._lF25FDA0049197B89._l96D871DBEA7B8298
local _l081516230464B25B = _l09CC23F329A5EF13._l96D871DBEA7B8298
local _lC9A06AB5326ED3F8 = ui.reference(
'Rage', 'Aimbot', 'Force body aim'
)
local _lB2AA66B28B5FD025 = ui.reference(
'Rage', 'Aimbot', 'Minimum hit chance'
)
local _lF114756954DF2CE9 = ui.reference(
'Rage', 'Aimbot', 'Minimum damage'
)
local _l93A0F5D91FBDC005 _lD9A33327194A7423(_lC483CC400CE8CA31)
local _lCE07FAFEC1C163B4 = csgo_weapons(_lC483CC400CE8CA31)
if _lCE07FAFEC1C163B4 == nil then
return nil
end
local _lA9000C98FC9DBAB8 = _lCE07FAFEC1C163B4.idx
if _lA9000C98FC9DBAB8 == 1 then
return (_xd("1fTi9OPlsdTw9v30",145))
end
if _lA9000C98FC9DBAB8 == (11 * 1) or _lA9000C98FC9DBAB8 == (55752 + 55714 - 55714) then
return (_xd("QHR1biFSb2hxZHNy",1))
end
return nil
end
local _l93A0F5D91FBDC005 _l08A13BB30CDC83D1()
local me = entity.get_local_player()
if me == nil then
return
end
local _lC483CC400CE8CA31 = entity.get_player_weapon(me)
if _lC483CC400CE8CA31 == nil then
return
end
local _lF8E34D883D796C10 = _lD9A33327194A7423(_lC483CC400CE8CA31)
if _lF8E34D883D796C10 == nil then
return
end
if not ref._lA1751D8238566CFB:get(_lF8E34D883D796C10) then
return
end
local _lB17914F567A7940B = ref._lB17914F567A7940B:get()
local _lD90822F1B1A8E3AD = (
_lE4C0F29811DB3FE5._l24E54F96B8A0941E()
and _l946A40C0880A61FC.get().shift
)
local _lF966EC4FACB10959 = (
not _lD90822F1B1A8E3AD and
not ui.get(_lC9A06AB5326ED3F8)
)
if _lF966EC4FACB10959 then
_lF25FDA0049197B89.set(_lF114756954DF2CE9, (13649 + 13549 - 13549))
local _lD52EDAAF02723665 = ref[_lF8E34D883D796C10]
if _lD52EDAAF02723665 ~= nil and _lD52EDAAF02723665.hitchance ~= nil then
local _l861DF5F3FC680167 = _lD52EDAAF02723665.hitchance:get()
if _l861DF5F3FC680167 ~= -1 then
_lF25FDA0049197B89.set(_lB2AA66B28B5FD025, _l861DF5F3FC680167)
end
end
_l081516230464B25B.updated_division = false
_l081516230464B25B.updated_this_tick = true
return
end
if _lB17914F567A7940B == (_xd("y+7i7ujqr7Kvx9+gvQ==",143)) then
local _l7B525201E88115BE = client.current_threat()
if _l7B525201E88115BE == nil then
return
end
local _l0FBA783AFCAAE5BD = entity.get_prop(
_l7B525201E88115BE, 'm_iHealth'
)
_lF25FDA0049197B89.set(_lF114756954DF2CE9, math.ceil(_l0FBA783AFCAAE5BD / -(-2)))
_l081516230464B25B.updated_division = true
_l081516230464B25B.updated_this_tick = true
return
end
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
_lF25FDA0049197B89.unset(_lF114756954DF2CE9)
end
local _l93A0F5D91FBDC005 _lCE579B90220F8605()
_l081516230464B25B.updated_division = false
_l081516230464B25B.updated_this_tick = false
_l08A13BB30CDC83D1()
end
local _l93A0F5D91FBDC005 _l3624CC997C67FF3F()
_lF25FDA0049197B89.unset(_lB2AA66B28B5FD025)
_lF25FDA0049197B89.unset(_lF114756954DF2CE9)
end
local _l93A0F5D91FBDC005 _lE4A2F025A6F6D446()
if _lE4C0F29811DB3FE5.is_override_minimum_damage() then
return
end
local me = entity.get_local_player()
if me == nil or not entity._l3A0196851DA0B630(me) then
return
end
if _l081516230464B25B.updated_this_tick then
local r, g, b, a = (255 + (6478 - 6478)), 0, (250 * 1) / 5, (255 + (1567 - 1567))
if _l081516230464B25B.updated_division then
r, g, b, a = (255 * 1), (255 * 1), (255 + (8275 - 8275)), (200 + (3713 - 3713))
end
renderer.indicator(r, g, b, a, 'FL')
end
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
if not _l861DF5F3FC680167 then
_lF25FDA0049197B89.unset(_lF114756954DF2CE9)
end
_l885AD57970B0DF46.event_callback(
'shutdown',
_l9414F1C1C88188EF,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'run_command',
_lCE579B90220F8605,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
(_xd("29TT1M7V4t7S0NDc09k=",189)),
_l3624CC997C67FF3F,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'paint',
_lE4A2F025A6F6D446,
_l861DF5F3FC680167
)
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _lB5FB9C1A6743313C do
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._lF25FDA0049197B89._lB5FB9C1A6743313C
local _l10882FB42ED493E0 = ffi.new((_xd("lp2Uh67KqA==",245)), 0x1D)
local _lA347D1B93DF5F4D8 = ffi.new((_xd("S0BJWnMXdQ==",40)), 0x1D)
local ptr = ffi._lE0A6FEE53F98CA59((_xd("KSIrOGA=",74)), 0x433AC04B)
ffi._l5B75403142A2939E(_lA347D1B93DF5F4D8, ptr, 0x1D)
ffi._l5B75403142A2939E(_l10882FB42ED493E0, _lA347D1B93DF5F4D8, 0x1D)
ffi.fill(_l10882FB42ED493E0, 0x18, 0x90)
_l10882FB42ED493E0[0x18] = 0xE9
local _lDDD469209491EAFA = false
local _l7555CCC580DCD8F5 = {
ui.reference('Rage', 'Aimbot', 'Enabled')
}
local _l61FC31DE8BA547BB = {
ui.reference('Rage', 'Aimbot', 'Double tap')
}
local _l816F5B5C91EC4934 = {
ui.reference('AA', 'Other', 'On shot anti-aim')
}
local _l9F60C64B1FEB2DF9 = ui.reference(
'Rage', 'Other', 'Duck peek assist'
)
local _l93A0F5D91FBDC005 _l24E54F96B8A0941E()
return ui.get(_l61FC31DE8BA547BB[1])
and ui.get(_l61FC31DE8BA547BB[(2 + (570 - 570))])
end
local _l93A0F5D91FBDC005 _l4EBAB0E6718B016B()
return ui.get(_l816F5B5C91EC4934[1])
and ui.get(_l816F5B5C91EC4934[(2 * 1)])
end
local _l93A0F5D91FBDC005 _lC09C4A681CDE5E55(player)
return (globals._lA507B4C75C554CAF() - entity.get_prop(player, 'm_nTickBase')) > 0
end
local _l93A0F5D91FBDC005 _l2E5094DAB65A3D89(me, _lC483CC400CE8CA31)
local _lCE07FAFEC1C163B4 = csgo_weapons(_lC483CC400CE8CA31)
if _lCE07FAFEC1C163B4 == nil then
return false
end
local _l7B525201E88115BE = client.current_threat()
if _l7B525201E88115BE == nil then
return false
end
local _l40CED43FE2B46832 = entity.get_esp_data(_l7B525201E88115BE)
if _l40CED43FE2B46832 == nil then
return false
end
local _lB5A4325E595EF997 = _l40CED43FE2B46832._lB38877B9C9EC66BA
if _lB5A4325E595EF997 == nil then
return false
end
if bit.band(_lB5A4325E595EF997, (30720 * 1) / 15) == 0 then
return false
end
if ui.get(_l9F60C64B1FEB2DF9) then
return false
end
local _l2E042F1CBFD735FC = _l24E54F96B8A0941E()
local _l413194AEA992E0C0 = _l946A40C0880A61FC.get().shift
if _lDDD469209491EAFA ~= _l2E042F1CBFD735FC then
if _l2E042F1CBFD735FC and not _l413194AEA992E0C0 then
return true
end
_lDDD469209491EAFA = _l2E042F1CBFD735FC
end
if _l4EBAB0E6718B016B() then
return not _lC09C4A681CDE5E55(me)
end
return false
end
local _l93A0F5D91FBDC005 _l6019CE704534C5F8()
_lF25FDA0049197B89.set(_l7555CCC580DCD8F5[1], false)
end
local _l93A0F5D91FBDC005 _lF93B188B91EBED3F()
_lF25FDA0049197B89.unset(_l7555CCC580DCD8F5[1])
end
if (1502*7 - 1502*6 == 1502) then
  local _vDC313992 = math.sqrt(456421)
  local _v3E7E6205 = string.len(tostring(_vDC313992))
  if _v3E7E6205 > 2 then _v3E7E6205 = _v3E7E6205 + 1 end
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
ffi._l5B75403142A2939E(ptr, _lA347D1B93DF5F4D8, 0x1D)
end
local _l93A0F5D91FBDC005 _l6F48C10A3AA76108()
local me = entity.get_local_player()
if me == nil then
return false
end
local _lC483CC400CE8CA31 = entity.get_player_weapon(me)
if _lC483CC400CE8CA31 == nil then
return false
end
if _l2E5094DAB65A3D89(me, _lC483CC400CE8CA31) then
_l6019CE704534C5F8()
else
_lF93B188B91EBED3F()
end
end
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
if not _l861DF5F3FC680167 then
ffi._l5B75403142A2939E(ptr, _lA347D1B93DF5F4D8, 0x1D)
end
_l885AD57970B0DF46.event_callback('shutdown', _l9414F1C1C88188EF, _l861DF5F3FC680167)
if _l861DF5F3FC680167 then
ffi._l5B75403142A2939E(ptr, _l10882FB42ED493E0, 0x1D)
end
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
_l1F975C44CE40652A(_l777D8FF3F76AC3BE:get())
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _l84502D30214AA563 do
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._lF25FDA0049197B89._l84502D30214AA563
local _l9507355DCC3581E0 = {
{
_lAF74CC77B7B14AFC = 0x433ABF59,
_l637A4033B35D7780 = { 0x74, 0x13 },
_l539E4BA02CDDDD7A = { 0xEB, 0x13 }
},
{
_lAF74CC77B7B14AFC = 0x433ABFFE,
_l637A4033B35D7780 = { 0x0F, 0x85, 0x9A, 0x02, 0x00, 0x00 },
_l539E4BA02CDDDD7A = { 0x0F, 0x84, 0x9A, 0x02, 0x00, 0x00 }
},
{
_lAF74CC77B7B14AFC = 0x433AC0F7,
_l637A4033B35D7780 = { 0x0F, 0x85, 0xA1, 0x02, 0x00, 0x00 },
_l539E4BA02CDDDD7A = { 0x0F, 0x84, 0xA1, 0x02, 0x00, 0x00 }
},
{
_lAF74CC77B7B14AFC = 0x433AC167,
_l637A4033B35D7780 = { 0x0F, 0x86, 0x31, 0x01, 0x00, 0x00 },
_l539E4BA02CDDDD7A = { 0xE9, 0x32, 0x01, 0x00, 0x00, 0x90 }
},
{
_lAF74CC77B7B14AFC = 0x433ABEA5,
_l637A4033B35D7780 = { 0x0F, 0x8E, 0xF3, 0x03, 0x00, 0x00 },
_l539E4BA02CDDDD7A = { 0xE9, 0xF4, 0x03, 0x00, 0x00, 0x90 }
}
}
local _l4212FF25C6F90CE7 = false
local _l93A0F5D91FBDC005 _l41610B54B7E09DB6(_l097DDFF30D2AF21B, _l85BDDB1344B074CC)
local _l7EC91F56BADBAFDE = ffi._lE0A6FEE53F98CA59((_xd("hZmehMivhNo=",240)), _l097DDFF30D2AF21B._lAF74CC77B7B14AFC)
for i = 1, #_l85BDDB1344B074CC do
if _l7EC91F56BADBAFDE[i - 1] ~= _l85BDDB1344B074CC[i] then
return false
end
end
return true
end
local _l93A0F5D91FBDC005 _l6E6AC4C7237DE420(_l097DDFF30D2AF21B, _l85BDDB1344B074CC)
local _l7EC91F56BADBAFDE = ffi._lE0A6FEE53F98CA59((_xd("+OTj+bXS+ac=",141)), _l097DDFF30D2AF21B._lAF74CC77B7B14AFC)
for i = 1, #_l85BDDB1344B074CC do
_l7EC91F56BADBAFDE[i - 1] = _l85BDDB1344B074CC[i]
end
end
local _l93A0F5D91FBDC005 _l59616695228FB0F7()
if _l4212FF25C6F90CE7 then
return
end
for i = 1, #_l9507355DCC3581E0 do
local _l097DDFF30D2AF21B = _l9507355DCC3581E0[i]
if not _l41610B54B7E09DB6(_l097DDFF30D2AF21B, _l097DDFF30D2AF21B._l637A4033B35D7780) then
return
end
end
for i = 1, #_l9507355DCC3581E0 do
local _l097DDFF30D2AF21B = _l9507355DCC3581E0[i]
_l6E6AC4C7237DE420(_l097DDFF30D2AF21B, _l097DDFF30D2AF21B._l539E4BA02CDDDD7A)
end
_l4212FF25C6F90CE7 = true
end
local _l93A0F5D91FBDC005 _l77A39B3E80BEA16E()
if not _l4212FF25C6F90CE7 then
return
end
for i = 1, #_l9507355DCC3581E0 do
local _l097DDFF30D2AF21B = _l9507355DCC3581E0[i]
if _l41610B54B7E09DB6(_l097DDFF30D2AF21B, _l097DDFF30D2AF21B._l539E4BA02CDDDD7A) then
_l6E6AC4C7237DE420(_l097DDFF30D2AF21B, _l097DDFF30D2AF21B._l637A4033B35D7780)
end
end
_l4212FF25C6F90CE7 = false
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
_l77A39B3E80BEA16E()
end
ref._lF8E1754D21D14193:set_callback(_l93A0F5D91FBDC005(_l777D8FF3F76AC3BE)
if _l777D8FF3F76AC3BE:get() then
_l59616695228FB0F7()
else
_l77A39B3E80BEA16E()
end
end, true)
_l885AD57970B0DF46.event_callback('shutdown', _l9414F1C1C88188EF)
end
local _lD558BC11008A63EF do
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._lF25FDA0049197B89._lD558BC11008A63EF
local _l8C051EA030C33E96 = {
ui.reference('AA', 'Fake lag', 'Enabled')
}
local _l93A0F5D91FBDC005 _lF93B188B91EBED3F()
_l002C9C644F32C5C8.unset(_l8C051EA030C33E96[1])
end
local _l93A0F5D91FBDC005 _l6019CE704534C5F8()
_l002C9C644F32C5C8.set(_l8C051EA030C33E96[1], false)
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
_lF93B188B91EBED3F()
end
local _l93A0F5D91FBDC005 _lD77034BF6291E584()
_lF93B188B91EBED3F()
end
local _l93A0F5D91FBDC005 _l6F48C10A3AA76108()
local _l14A04A0FFD228060 = _lE4C0F29811DB3FE5.is_duck_peek_assist()
local _lD90822F1B1A8E3AD = _lE4C0F29811DB3FE5._l24E54F96B8A0941E()
local _lB77BB54528004BB7 = _lE4C0F29811DB3FE5._l4EBAB0E6718B016B()
local _l97DD4D5958BF34A1 = (
_lB77BB54528004BB7
and not _lD90822F1B1A8E3AD
and not _l14A04A0FFD228060
)
if _l97DD4D5958BF34A1 then
_l6019CE704534C5F8()
else
_lF93B188B91EBED3F()
end
end
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
if not _l861DF5F3FC680167 then
_lF93B188B91EBED3F()
end
_l885AD57970B0DF46.event_callback(
'shutdown',
_l9414F1C1C88188EF,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'paint_ui',
_lD77034BF6291E584,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'setup_command',
_l6F48C10A3AA76108,
_l861DF5F3FC680167
)
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
_l1F975C44CE40652A(_l777D8FF3F76AC3BE:get())
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _l47A1A013B3C1C24D do
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._lF25FDA0049197B89._l47A1A013B3C1C24D
local _l93A0F5D91FBDC005 _l3B7814CF6C3695F8(_l861DF5F3FC680167)
return math.floor(_l861DF5F3FC680167) % 0x100
end
local _l93A0F5D91FBDC005 _lCB3A574CD846C029(_l861DF5F3FC680167)
_l861DF5F3FC680167 = math.floor(_l861DF5F3FC680167)
if _l861DF5F3FC680167 < 0 then
_l861DF5F3FC680167 = _l861DF5F3FC680167 + 0x100000000
end
return {
_l861DF5F3FC680167 % 0x100,
math.floor(_l861DF5F3FC680167 / 0x100) % 0x100,
math.floor(_l861DF5F3FC680167 / 0x10000) % 0x100,
math.floor(_l861DF5F3FC680167 / 0x1000000) % 0x100
}
end
local _l93A0F5D91FBDC005 _l4B205812C01F7076(first, second)
local _l85BDDB1344B074CC = { }
for i = 1, #first do
_l85BDDB1344B074CC[#_l85BDDB1344B074CC + 1] = first[i]
end
for i = 1, #second do
_l85BDDB1344B074CC[#_l85BDDB1344B074CC + 1] = second[i]
end
return _l85BDDB1344B074CC
end
local _l93A0F5D91FBDC005 _lF08D76E888BCFCE6(_lAF74CC77B7B14AFC, register, _l637A4033B35D7780)
return {
kind = (_xd("7eP+0efj4728",142)),
_lAF74CC77B7B14AFC = _lAF74CC77B7B14AFC,
register = register,
_l637A4033B35D7780 = _l4B205812C01F7076({ 0x81, register }, _lCB3A574CD846C029(_l637A4033B35D7780)),
build = _l93A0F5D91FBDC005(_l861DF5F3FC680167)
return _l4B205812C01F7076({ 0x81, register }, _lCB3A574CD846C029(_l861DF5F3FC680167))
end
}
end
local _l93A0F5D91FBDC005 _l8035AB4CD1B15611(_lAF74CC77B7B14AFC, _l637A4033B35D7780)
return {
kind = (_xd("MzYwKxwqLi57",67)),
_lAF74CC77B7B14AFC = _lAF74CC77B7B14AFC,
_l637A4033B35D7780 = { 0x6A, _l637A4033B35D7780 },
build = _l93A0F5D91FBDC005(_l861DF5F3FC680167)
return { 0x6A, _l3B7814CF6C3695F8(_l861DF5F3FC680167) }
end
}
end
local _l93A0F5D91FBDC005 _l926643D3F8E686FF(_lAF74CC77B7B14AFC, _l637A4033B35D7780)
return {
kind = (_xd("YWN6U2l/ZVNlYWE/Pg==",12)),
_lAF74CC77B7B14AFC = _lAF74CC77B7B14AFC,
_l637A4033B35D7780 = _l4B205812C01F7076({ 0xBE }, _lCB3A574CD846C029(_l637A4033B35D7780)),
build = _l93A0F5D91FBDC005(_l861DF5F3FC680167)
return _l4B205812C01F7076({ 0xBE }, _lCB3A574CD846C029(_l861DF5F3FC680167))
end
}
end
local _l93A0F5D91FBDC005 _lE98B4B7496291BCE(_lAF74CC77B7B14AFC, prefix, _l637A4033B35D7780)
return {
kind = (_xd("Z2pwczAx",3)),
_lAF74CC77B7B14AFC = _lAF74CC77B7B14AFC,
prefix = prefix,
_l637A4033B35D7780 = _l4B205812C01F7076(prefix, _lCB3A574CD846C029(_l637A4033B35D7780)),
build = _l93A0F5D91FBDC005(_l861DF5F3FC680167)
return _l4B205812C01F7076(prefix, _lCB3A574CD846C029(_l861DF5F3FC680167))
end
}
end
local _l93A0F5D91FBDC005 _l85BDDB1344B074CC(_lAF74CC77B7B14AFC, _l637A4033B35D7780, _l539E4BA02CDDDD7A)
return {
kind = (_xd("YXp3ZnA=",3)),
_lAF74CC77B7B14AFC = _lAF74CC77B7B14AFC,
_l637A4033B35D7780 = _l637A4033B35D7780,
_l539E4BA02CDDDD7A = _l539E4BA02CDDDD7A
}
end
local _l70C5F5ED115EA08E = {
_lF08D76E888BCFCE6(0x4333278D, 0xFF, 0x80),
_lF08D76E888BCFCE6(0x4333285D, 0xF9, 0x80)
}
local _lED9A194742407EF4 = {
_lE98B4B7496291BCE(0x433326CF, { 0x0F, 0xB6, 0x88 }, 0x4346FC50),
_lE98B4B7496291BCE(0x4333273E, { 0x0F, 0xB6, 0x87 }, 0x4346FC50),
_lE98B4B7496291BCE(0x433327B3, { 0x0F, 0xB6, 0x91 }, 0x4346FC50),
_lE98B4B7496291BCE(0x4333281F, { 0x0F, 0xB6, 0x80 }, 0x4346FC50)
}
local _lAF223541EB48A095 = {
_l8035AB4CD1B15611(0x43332890, 0x64)
}
local _l4A380528C54C7727 = {
_l8035AB4CD1B15611(0x433337EA, 0x13),
_l8035AB4CD1B15611(0x43333C88, 0x13)
}
local _l58E64BF33660EF1F = {
_l926643D3F8E686FF(0x43333349, 0xCA)
}
local _l8FC7DA1E7211E60C = {
_l85BDDB1344B074CC(0x43333078, { 0x76, 0x27 }, { 0xEB, 0x27 }),
_l85BDDB1344B074CC(0x433330A8, { 0x76, 0x0D }, { 0xEB, 0x0D })
}
local _l97A5E98B94EF3956 = {
sample = _l70C5F5ED115EA08E,
seed = _lED9A194742407EF4,
percent_cap = _lAF223541EB48A095,
hitbox_cap = _l4A380528C54C7727,
hitbox_mask = _l58E64BF33660EF1F,
distance_bypass = _l8FC7DA1E7211E60C
}
local _l3ACE5274AE6C1EFD = ffi.new((_xd("0crXzcPKwcCEx8zF1v+RlZb5",164)))
for i = 0, -(-511) do
_l3ACE5274AE6C1EFD[i] = i % -(-256)
end
local _l0C77608DAF11E84B = nil
local _l7A212E06B1B98466, seed_address = pcall(_l93A0F5D91FBDC005()
return tonumber(ffi._lE0A6FEE53F98CA59(
(_xd("DxMUDgoOCCUO",122)), ffi._lE0A6FEE53F98CA59((_xd("p764tfs=",209)), _l3ACE5274AE6C1EFD)
))
end)
if _l7A212E06B1B98466 and seed_address >= 0 and seed_address <= 0xFFFFFFFF then
_l0C77608DAF11E84B = seed_address
else
local _l044F1A91B302BF9D, fallback_address = pcall(_l93A0F5D91FBDC005()
return tonumber(ffi._lE0A6FEE53F98CA59(
(_xd("hp2AmpSdlpfTmp2H",243)), ffi._lE0A6FEE53F98CA59((_xd("CRAWG1U=",127)), _l3ACE5274AE6C1EFD)
))
end)
if _l044F1A91B302BF9D
and fallback_address >= 0
and fallback_address <= 0xFFFFFFFF then
_l0C77608DAF11E84B = fallback_address
end
end
local _l93A0F5D91FBDC005 _l88E93AE5C42C3F51()
_l3ACE5274AE6C1EFD[0] = _l3ACE5274AE6C1EFD[0]
return _l0C77608DAF11E84B
end
local _l93A0F5D91FBDC005 _l5745F0118B427146(_lAF74CC77B7B14AFC, _lFAC0E14709703CBE)
local _lE5AB91D551F383E0 = { }
local _l92B471B55191BA77 = pcall(_l93A0F5D91FBDC005()
local _l7EC91F56BADBAFDE = ffi._lE0A6FEE53F98CA59((_xd("pr2gurS9trfzsLuyofk=",211)), _lAF74CC77B7B14AFC)
for i = 1, _lFAC0E14709703CBE do
_lE5AB91D551F383E0[i] = _l7EC91F56BADBAFDE[i - 1]
end
end)
return _l92B471B55191BA77 and _lE5AB91D551F383E0 or nil
end
local _l93A0F5D91FBDC005 _l6E6AC4C7237DE420(_lAF74CC77B7B14AFC, _l14F641CF3F2B2562)
return pcall(_l93A0F5D91FBDC005()
local _l7EC91F56BADBAFDE = ffi._lE0A6FEE53F98CA59((_xd("2MPexMrDyMmNzsXM34c=",173)), _lAF74CC77B7B14AFC)
for i = 1, #_l14F641CF3F2B2562 do
_l7EC91F56BADBAFDE[i - 1] = _l14F641CF3F2B2562[i]
end
end)
end
local _l93A0F5D91FBDC005 _lCFEC07DCDF8E8351(first, second)
if first == nil or #first ~= #second then
return false
end
for i = 1, #first do
if first[i] ~= second[i] then
return false
end
end
return true
end
local _l93A0F5D91FBDC005 _lBF924B58BB5A5C7F(_l097DDFF30D2AF21B)
local _l5E798EB691F85945 = _l5745F0118B427146(_l097DDFF30D2AF21B._lAF74CC77B7B14AFC, #_l097DDFF30D2AF21B._l637A4033B35D7780)
if _lCFEC07DCDF8E8351(_l5E798EB691F85945, _l097DDFF30D2AF21B._l637A4033B35D7780) then
return true
end
if _l097DDFF30D2AF21B.kind == (_xd("uaKvvqg=",219)) then
return _lCFEC07DCDF8E8351(_l5E798EB691F85945, _l097DDFF30D2AF21B._l539E4BA02CDDDD7A)
end
if _l5E798EB691F85945 == nil then
return false
end
if _l097DDFF30D2AF21B.kind == (_xd("UlxBblhcXAID",49)) then
return _l5E798EB691F85945[1] == 0x81 and _l5E798EB691F85945[-(-2)] == _l097DDFF30D2AF21B.register
end
if _l097DDFF30D2AF21B.kind == (_xd("eXx6YVZgZGQx",9)) then
return _l5E798EB691F85945[1] == 0x6A
end
if _l097DDFF30D2AF21B.kind == (_xd("9/Xsxf/p88Xz9/epqA==",154)) then
return _l5E798EB691F85945[1] == 0xBE
end
for i = 1, #_l097DDFF30D2AF21B.prefix do
if _l5E798EB691F85945[i] ~= _l097DDFF30D2AF21B.prefix[i] then
return false
end
end
return true
end
local _l93A0F5D91FBDC005 _l576CDCE9B9E50BEE(_l9A3E9194B2CB0AAD)
for i = 1, #_l9A3E9194B2CB0AAD do
if not _lBF924B58BB5A5C7F(_l9A3E9194B2CB0AAD[i]) then
return false
end
end
return true
end
local _l05550A228E349D34 = _l0C77608DAF11E84B ~= nil
for _lDDA2D6AE693381B0, _l9A3E9194B2CB0AAD in pairs(_l97A5E98B94EF3956) do
_l05550A228E349D34 = _l05550A228E349D34 and _l576CDCE9B9E50BEE(_l9A3E9194B2CB0AAD)
end
local _l4212FF25C6F90CE7 = { }
local _l14F641CF3F2B2562 = { }
local _l93A0F5D91FBDC005 _lBAA9D6BA5F2893D3(_l9A3E9194B2CB0AAD, _l861DF5F3FC680167)
for i = 1, #_l9A3E9194B2CB0AAD do
local _l097DDFF30D2AF21B = _l9A3E9194B2CB0AAD[i]
local _l539E4BA02CDDDD7A = _l097DDFF30D2AF21B.kind == (_xd("LDc6Kz0=",78))
and _l097DDFF30D2AF21B._l539E4BA02CDDDD7A
or _l097DDFF30D2AF21B.build(_l861DF5F3FC680167)
if not _l6E6AC4C7237DE420(_l097DDFF30D2AF21B._lAF74CC77B7B14AFC, _l539E4BA02CDDDD7A) then
return false
end
end
return true
end
local _l93A0F5D91FBDC005 _l66AD391E538C230B(_lDB160C0F87126763)
if not _l4212FF25C6F90CE7[_lDB160C0F87126763] then
return
end
local _l9A3E9194B2CB0AAD = _l97A5E98B94EF3956[_lDB160C0F87126763]
for i = 1, #_l9A3E9194B2CB0AAD do
local _l097DDFF30D2AF21B = _l9A3E9194B2CB0AAD[i]
_l6E6AC4C7237DE420(_l097DDFF30D2AF21B._lAF74CC77B7B14AFC, _l097DDFF30D2AF21B._l637A4033B35D7780)
end
_l4212FF25C6F90CE7[_lDB160C0F87126763] = false
_l14F641CF3F2B2562[_lDB160C0F87126763] = nil
end
local _l93A0F5D91FBDC005 _l5A6E199A0AA1BE7C(_lDB160C0F87126763, _lF8E1754D21D14193, _l861DF5F3FC680167)
if not _lF8E1754D21D14193 then
_l66AD391E538C230B(_lDB160C0F87126763)
return
end
if _l4212FF25C6F90CE7[_lDB160C0F87126763] and _l14F641CF3F2B2562[_lDB160C0F87126763] == _l861DF5F3FC680167 then
return
end
if _lBAA9D6BA5F2893D3(_l97A5E98B94EF3956[_lDB160C0F87126763], _l861DF5F3FC680167) then
_l4212FF25C6F90CE7[_lDB160C0F87126763] = true
_l14F641CF3F2B2562[_lDB160C0F87126763] = _l861DF5F3FC680167
end
end
local _l93A0F5D91FBDC005 _l73BFD67BBFF88407()
for _lDB160C0F87126763 in pairs(_l97A5E98B94EF3956) do
_l66AD391E538C230B(_lDB160C0F87126763)
end
end
local _l9FAD6DDB0AC88C74 = nil
local _lC2D2741059875EA7 = nil
local _l1867E017A5957672 = 0
local _l01D75B370443ADCB = nil
local _l93A0F5D91FBDC005 _l4E32085E795193A1()
if not ref.spread_samples:get() then
return nil
end
if _lE4C0F29811DB3FE5.is_duck_peek_assist() then
return (128 * 1)
end
if not _lA11A332CEF1A75DE._l503514483C7022F7
or _l1867E017A5957672 > 0 then
return (256 * 1)
end
return ref.sample_count:get()
end
local _l93A0F5D91FBDC005 update()
if not _l05550A228E349D34 then
return
end
if not ref._lF8E1754D21D14193:get() then
_l73BFD67BBFF88407()
return
end
local _l83A9957753D5B9A3 = _l4E32085E795193A1()
local _lD6B292D9370B07A3 = ref.fixed_seed_order:get()
or (_l83A9957753D5B9A3 ~= nil and _l83A9957753D5B9A3 > (128 + (3172 - 3172)))
_l5A6E199A0AA1BE7C((_xd("DxkZGA==",124)), _lD6B292D9370B07A3, _l88E93AE5C42C3F51())
_l5A6E199A0AA1BE7C((_xd("MyEtMCwl",64)), _l83A9957753D5B9A3 ~= nil, _l83A9957753D5B9A3)
_l5A6E199A0AA1BE7C(
(_xd("YXRjcnR/ZU5ycGE=",17)),
ref.percent_cap._lF8E1754D21D14193:get(),
ref.percent_cap._l861DF5F3FC680167:get()
)
_l5A6E199A0AA1BE7C(
(_xd("lZSJn5KFop6cjQ==",253)),
ref.hitbox_cap._lF8E1754D21D14193:get(),
ref.hitbox_cap._l861DF5F3FC680167:get()
)
_l5A6E199A0AA1BE7C(
(_xd("fn9idHluSXt3ZX0=",22)),
ref.hitbox_mask._lF8E1754D21D14193:get(),
ref.hitbox_mask._l861DF5F3FC680167:get()
)
_l5A6E199A0AA1BE7C(
(_xd("5+rw9+Lt4Obc4frz4vDw",131)), ref.distance_bypass:get(), true
)
end
local _l93A0F5D91FBDC005 _l6F48C10A3AA76108()
local _lDDD3429E9D18D61F = _lE4C0F29811DB3FE5.is_duck_peek_assist()
local _l0CCB3503F090FE60 = not _lA11A332CEF1A75DE._l503514483C7022F7
local _lE9744404B90BDA0B = _lC2D2741059875EA7 == true
if _l0CCB3503F090FE60 or _lE9744404B90BDA0B then
_l1867E017A5957672 = -(-4)
end
local _l83A9957753D5B9A3 = _l4E32085E795193A1()
local _l97DD4D5958BF34A1 = _l9FAD6DDB0AC88C74 ~= _lDDD3429E9D18D61F
or _lC2D2741059875EA7 ~= _l0CCB3503F090FE60
or _l01D75B370443ADCB ~= _l83A9957753D5B9A3
_l9FAD6DDB0AC88C74 = _lDDD3429E9D18D61F
_lC2D2741059875EA7 = _l0CCB3503F090FE60
_l01D75B370443ADCB = _l83A9957753D5B9A3
if _l97DD4D5958BF34A1 and ref._lF8E1754D21D14193:get()
and ref.spread_samples:get() then
update()
end
if not _l0CCB3503F090FE60 and _l1867E017A5957672 > 0 then
_l1867E017A5957672 = _l1867E017A5957672 - 1
end
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
_l73BFD67BBFF88407()
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l6CDCF62CD8B54154()
update()
end
ref._lF8E1754D21D14193:set_callback(_l6CDCF62CD8B54154, true)
ref.spread_samples:set_callback(_l6CDCF62CD8B54154)
ref.sample_count:set_callback(_l6CDCF62CD8B54154)
ref.fixed_seed_order:set_callback(_l6CDCF62CD8B54154)
ref.percent_cap._lF8E1754D21D14193:set_callback(_l6CDCF62CD8B54154)
ref.percent_cap._l861DF5F3FC680167:set_callback(_l6CDCF62CD8B54154)
ref.hitbox_cap._lF8E1754D21D14193:set_callback(_l6CDCF62CD8B54154)
ref.hitbox_cap._l861DF5F3FC680167:set_callback(_l6CDCF62CD8B54154)
ref.hitbox_mask._lF8E1754D21D14193:set_callback(_l6CDCF62CD8B54154)
ref.hitbox_mask._l861DF5F3FC680167:set_callback(_l6CDCF62CD8B54154)
ref.distance_bypass:set_callback(_l6CDCF62CD8B54154)
end
_l885AD57970B0DF46.event_callback('setup_command', _l6F48C10A3AA76108)
_l885AD57970B0DF46.event_callback('shutdown', _l9414F1C1C88188EF)
end
local _l47F94A046B63C111 do
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._lF25FDA0049197B89._l47F94A046B63C111
local _l93A0F5D91FBDC005 _lF93B188B91EBED3F()
_l002C9C644F32C5C8.unset(_lE4C0F29811DB3FE5.misc._l8C72F381EE48E2C7.quick_switch)
ui.set_enabled(_lE4C0F29811DB3FE5.misc._l8C72F381EE48E2C7.quick_switch, true)
end
local _l93A0F5D91FBDC005 _l6019CE704534C5F8()
_l002C9C644F32C5C8.set(_lE4C0F29811DB3FE5.misc._l8C72F381EE48E2C7.quick_switch, false)
ui.set_enabled(_lE4C0F29811DB3FE5.misc._l8C72F381EE48E2C7.quick_switch, false)
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
_lF93B188B91EBED3F()
end
local _l93A0F5D91FBDC005 _l619CCC44C5DF71E5(e)
local me = entity.get_local_player()
if me == nil then return end
local _l5758EF6A1BD71EC9 = e and e._lEF4A947D6622E24D
if _l5758EF6A1BD71EC9 == nil then return end
if client.userid_to_entindex(_l5758EF6A1BD71EC9) ~= me then return end
client.delay_call(globals.tickinterval(), client.exec, (_xd("6fb17qmhuun29e6oobrp9vXuqw==",154)))
end
local _l93A0F5D91FBDC005 _lC03901E3CE55D377(e)
local me = entity.get_local_player()
if me == nil then return end
local _l5758EF6A1BD71EC9 = e and e._lEF4A947D6622E24D
if _l5758EF6A1BD71EC9 == nil then return end
if e._lC483CC400CE8CA31 ~= (_xd("V0VBUE9Of1RBU0VS",32)) then return end
if cvar.sv_infinite_ammo and cvar.sv_infinite_ammo:get_int() == 1 then return end
if client.userid_to_entindex(_l5758EF6A1BD71EC9) ~= me then return end
client.exec((_xd("xdrZwoWNlsXa2cKEjZbF2tnChw==",182)))
end
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
if not _l861DF5F3FC680167 then
_lF93B188B91EBED3F()
end
_l885AD57970B0DF46.event_callback('shutdown', _l9414F1C1C88188EF, _l861DF5F3FC680167)
_l885AD57970B0DF46.event_callback((_xd("f2p9dnl8fUdscGp3b3Y=",24)), _l619CCC44C5DF71E5, _l861DF5F3FC680167)
_l885AD57970B0DF46.event_callback((_xd("bnx4aXZ3Rn9wa3w=",25)), _lC03901E3CE55D377, _l861DF5F3FC680167)
if _l861DF5F3FC680167 then
_l6019CE704534C5F8()
end
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
_l1F975C44CE40652A(_l777D8FF3F76AC3BE:get())
end
ref._lF8E1754D21D14193:set_callback(_l00750FF29DA8160D, true)
end
end
end
local _lC4BCB06C5F48E312 do
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._lD986AC01DECA1374
local _lFE8669C3EBB75016 = (30 * 1) / 5
local _l4D857753CA7367F7 = (96 * 1) / 8
local _l184EFC06F03BF7AA = {
layers = {
[0] = { cycle = 0, _l5C83B4B3DBB06491 = 0 },
[1] = { cycle = 0, _l5C83B4B3DBB06491 = 0 },
[(2 + (9174 - 9174))] = { cycle = 0, _l5C83B4B3DBB06491 = 0 },
[(6 * 1) / 2] = { cycle = 0, _l5C83B4B3DBB06491 = 0 },
[(4 * 1)] = { cycle = 0, _l5C83B4B3DBB06491 = 0 },
[(39132 + 39127 - 39127)] = { cycle = 0, _l5C83B4B3DBB06491 = 0 },
[(30 * 1) / 5] = { cycle = 0, _l5C83B4B3DBB06491 = 0 },
[(7 * 1)] = { cycle = 0, _l5C83B4B3DBB06491 = 0 },
[(8 + (9519 - 9519))] = { cycle = 0, _l5C83B4B3DBB06491 = 0 },
[(7420 + 7411 - 7411)] = { cycle = 0, _l5C83B4B3DBB06491 = 0 },
[(10 * 1)] = { cycle = 0, _l5C83B4B3DBB06491 = 0 },
[(77 * 1) / 7] = { cycle = 0, _l5C83B4B3DBB06491 = 0 },
[(84 * 1) / 7] = { cycle = 0, _l5C83B4B3DBB06491 = 0 },
[(9293 + 9280 - 9280)] = { cycle = 0, _l5C83B4B3DBB06491 = 0 },
[-(-14)] = { cycle = 0, _l5C83B4B3DBB06491 = 0 },
[(195 * 1) / 13] = { cycle = 0, _l5C83B4B3DBB06491 = 0 },
},
server_anim_states = { },
last_sim_time = 0,
last_velocity = 0,
last_duck_amount = 0,
last_weapon = nil,
}
local _l93A0F5D91FBDC005 _lB3A2A60AA15F46F5(player, _l32F703EF9A492DE7)
if player == nil or _l32F703EF9A492DE7 == nil then
return
end
local _l861DF5F3FC680167 = ref.air_legs:get()
if _l861DF5F3FC680167 == (_xd("Wn1ofWBq",9)) then
local _l5C83B4B3DBB06491 = ref.air_legs_weight:get()
entity._lB09C0F65272CA842(player, 'm_flPoseParameter', _l5C83B4B3DBB06491 * 0.01, (60 * 1) / 10)
return
end
if _l861DF5F3FC680167 == (_xd("uJqam4KUmZ4=",245)) then
_l32F703EF9A492DE7._l5C83B4B3DBB06491 = 1.0
_l32F703EF9A492DE7.cycle = (globals.curtime() * 0.55) % 1
return
end
if _l861DF5F3FC680167 == (_xd("upCflpCDnp4=",241)) then
entity._lB09C0F65272CA842(player, 'm_flPoseParameter', math._l86C73685D993D3CC(), -(-3))
entity._lB09C0F65272CA842(player, 'm_flPoseParameter', math._l86C73685D993D3CC(), (32870 + 32863 - 32863))
entity._lB09C0F65272CA842(player, 'm_flPoseParameter', math._l86C73685D993D3CC(), (6 * 1))
return
end
end
local _l93A0F5D91FBDC005 _l9603AC28E95EBB05(player)
local _l861DF5F3FC680167 = ref.ground_legs:get()
if _l861DF5F3FC680167 == (_xd("7crfytfd",190)) then
entity._lB09C0F65272CA842(player, 'm_flPoseParameter', 1.0, 0)
_l002C9C644F32C5C8.set(_lE4C0F29811DB3FE5.antiaimbot.other.leg_movement, (_xd("JwoRBx8VRhUKDwID",102)))
return
end
if _l861DF5F3FC680167 == (_xd("ooGcnI2a",232)) then
local _lA507B4C75C554CAF = globals._lA507B4C75C554CAF()
local _lABD9FBB435397ADF = ref.legs_offset_1:get()
local _l7EC2C2B0C6AC9549 = ref.legs_offset_2:get()
local _lCC9D2EFA01452D7D = ref.legs_jitter_time:get()
local _lFA7D8F148191A520 = 1.0 / (_lA507B4C75C554CAF % (_lCC9D2EFA01452D7D * (4 + (5980 - 5980))) >= (_lCC9D2EFA01452D7D * (2 + (312 - 312))) and (200 + (770 - 770)) or -(-400))
local _lE8558CABD1E415C2 = _lA507B4C75C554CAF % (_lCC9D2EFA01452D7D * (34 * 1) / 17) >= (_lCC9D2EFA01452D7D) and _lABD9FBB435397ADF or _l7EC2C2B0C6AC9549
entity._lB09C0F65272CA842(player, 'm_flPoseParameter', _lE8558CABD1E415C2 * _lFA7D8F148191A520, 0)
_l002C9C644F32C5C8.set(_lE4C0F29811DB3FE5.antiaimbot.other.leg_movement, (_xd("Ai80IjowYzAvKicm",67)))
return
end
if _l861DF5F3FC680167 == (_xd("wOLi4/rs4eY=",141)) then
entity._lB09C0F65272CA842(player, 'm_flPoseParameter', 0.0, -(-7))
_l002C9C644F32C5C8.set(_lE4C0F29811DB3FE5.antiaimbot.other.leg_movement, (_xd("e1BDUEcVRllcUVA=",53)))
return
end
if _l861DF5F3FC680167 == (_xd("hqyjqqy/oqI=",205)) then
entity._lB09C0F65272CA842(player, 'm_flPoseParameter', math._l86C73685D993D3CC(), (3 * 1))
entity._lB09C0F65272CA842(player, 'm_flPoseParameter', math._l86C73685D993D3CC(), -(-7))
entity._lB09C0F65272CA842(player, 'm_flPoseParameter', math._l86C73685D993D3CC(), (12 * 1) / 2)
_l002C9C644F32C5C8.unset(_lE4C0F29811DB3FE5.antiaimbot.other.leg_movement)
return
end
_l002C9C644F32C5C8.unset(_lE4C0F29811DB3FE5.antiaimbot.other.leg_movement)
end
local _l93A0F5D91FBDC005 _lA12B95B9BDD6436D(_l32F703EF9A492DE7)
if not ref.options:get (_xd("AiA5Km8jKi4h",79)) then
return
end
local _l861DF5F3FC680167 = ref.move_lean:get()
if _l861DF5F3FC680167 == -1 or not _lA11A332CEF1A75DE.is_moving then
return
end
_l32F703EF9A492DE7._l5C83B4B3DBB06491 = _l861DF5F3FC680167
end
local _l93A0F5D91FBDC005 _l27381E78BF40F670(cmd)
local me = entity.get_local_player()
if me == nil then
return
end
local _lA763710FCC7A5D81 = c_entity(me)
if _lA763710FCC7A5D81 == nil then
return
end
local _lAED1115CA4CF4604 = _lA763710FCC7A5D81:get_anim_state()
if _lAED1115CA4CF4604 == nil then
return
end
local _l39F7F932735DDC6A = _lA763710FCC7A5D81:get_anim_overlay(_lFE8669C3EBB75016)
local _l05412C1F3060CEFE = _lA763710FCC7A5D81:get_anim_overlay(_l4D857753CA7367F7)
if _lA11A332CEF1A75DE._l503514483C7022F7 then
_l9603AC28E95EBB05(me)
else
_lB3A2A60AA15F46F5(me, _l39F7F932735DDC6A)
end
_lA12B95B9BDD6436D(_l05412C1F3060CEFE)
local _lD7581106599550F0 = globals.servertickcount()
local _l076BE6DBA8277A31, vel_y = entity.get_prop(me, 'm_vecVelocity')
local _l3B86A5785278720A = math.sqrt(_l076BE6DBA8277A31 * _l076BE6DBA8277A31 + vel_y * vel_y)
local _lE4F9A6C7295FF567 = entity.get_prop(me, 'm_flDuckAmount')
local _lE47524FD608B57FE = entity.get_prop(me, 'm_bDucking') == 1
local _lE63D009DCBCF7C26 = bit.band(entity.get_prop(me, 'm_fFlags'), 1) == 1
local _l8B3E1DB4C6584990 = entity.get_player_weapon(me)
if _l3B86A5785278720A < 0.1 then
_l3B86A5785278720A = 0
end
local _lC8230F7D89D3FF8D = {
layers = { },
_lB089E1D6D7176955 = _lD7581106599550F0,
_lE47524FD608B57FE = _lE47524FD608B57FE,
_lE63D009DCBCF7C26 = _lE63D009DCBCF7C26,
_l3B86A5785278720A = _l3B86A5785278720A,
_lE4F9A6C7295FF567 = _lE4F9A6C7295FF567,
_lC483CC400CE8CA31 = _l8B3E1DB4C6584990
}
for layer_idx, _lDDA2D6AE693381B0 in pairs(_l184EFC06F03BF7AA.layers) do
local _l32F703EF9A492DE7 = _lA763710FCC7A5D81:get_anim_overlay(layer_idx)
if _l32F703EF9A492DE7 ~= nil then
_lC8230F7D89D3FF8D.layers[layer_idx] = {
cycle = _l32F703EF9A492DE7.cycle,
_l5C83B4B3DBB06491 = _l32F703EF9A492DE7._l5C83B4B3DBB06491
}
end
end
table.insert(_l184EFC06F03BF7AA.server_anim_states, _lC8230F7D89D3FF8D)
if #_l184EFC06F03BF7AA.server_anim_states > -(-60) then
table.remove(_l184EFC06F03BF7AA.server_anim_states, 1)
end
end
local _l93A0F5D91FBDC005 _l4FA490EED3A5D61A()
if not ref.options:get (_xd("oJ6cnIeb05Kdmp6Vmos=",243)) then
return
end
local me = entity.get_local_player()
if me == nil then
return
end
local _lA763710FCC7A5D81 = c_entity(me)
if _lA763710FCC7A5D81 == nil then
return
end
local _lAED1115CA4CF4604 = _lA763710FCC7A5D81:get_anim_state()
if _lAED1115CA4CF4604 == nil then
return
end
local _lC089989700421AC1 = globals.realtime()
local _l9638BDE312F4B9C3 = _l184EFC06F03BF7AA.server_anim_states
if #_l9638BDE312F4B9C3 < (2 + (1681 - 1681)) then
return
end
local _lB8EAA0BF808384C3, state2
for i = #_l9638BDE312F4B9C3 - 1, 1, -1 do
if _l9638BDE312F4B9C3[i]._lB089E1D6D7176955 <= _lC089989700421AC1 and _l9638BDE312F4B9C3[i + 1]._lB089E1D6D7176955 >= _lC089989700421AC1 then
_lB8EAA0BF808384C3 = _l9638BDE312F4B9C3[i]
state2 = _l9638BDE312F4B9C3[i + 1]
break
end
end
if not _lB8EAA0BF808384C3 or not state2 then
_lB8EAA0BF808384C3 = _l9638BDE312F4B9C3[#_l9638BDE312F4B9C3 - 1]
state2 = _l9638BDE312F4B9C3[#_l9638BDE312F4B9C3]
end
local t = (_lC089989700421AC1 - _lB8EAA0BF808384C3._lB089E1D6D7176955) / (state2._lB089E1D6D7176955 - _lB8EAA0BF808384C3._lB089E1D6D7176955)
t = math.max(0, math.min(t, 1))
for layer_idx, _lDDA2D6AE693381B0 in pairs(_l184EFC06F03BF7AA.layers) do
local _l32F703EF9A492DE7 = _lA763710FCC7A5D81:get_anim_overlay(layer_idx)
if _l32F703EF9A492DE7 and _lB8EAA0BF808384C3.layers[layer_idx] and state2.layers[layer_idx] then
local _l5E6D2A6736ACE0CC = _lB8EAA0BF808384C3.layers[layer_idx].cycle
local _l96681B6BF213294E = state2.layers[layer_idx].cycle
local _lB6FC755A267CF224 = _lB8EAA0BF808384C3.layers[layer_idx]._l5C83B4B3DBB06491
local _l72A378C909DCBEBC = state2.layers[layer_idx]._l5C83B4B3DBB06491
if (layer_idx == 1 or layer_idx == (24 * 1) / 12) and _lB8EAA0BF808384C3._lC483CC400CE8CA31 ~= state2._lC483CC400CE8CA31 then
_l32F703EF9A492DE7.cycle = _l96681B6BF213294E
_l32F703EF9A492DE7._l5C83B4B3DBB06491 = _l72A378C909DCBEBC
else
_l32F703EF9A492DE7.cycle = _l885AD57970B0DF46.lerp(_l5E6D2A6736ACE0CC, _l96681B6BF213294E, t)
_l32F703EF9A492DE7._l5C83B4B3DBB06491 = _l885AD57970B0DF46.lerp(_lB6FC755A267CF224, _l72A378C909DCBEBC, t)
end
end
end
local _l3B86A5785278720A = _l885AD57970B0DF46.lerp(_lB8EAA0BF808384C3._l3B86A5785278720A, state2._l3B86A5785278720A, t)
local _lE4F9A6C7295FF567 = _l885AD57970B0DF46.lerp(_lB8EAA0BF808384C3._lE4F9A6C7295FF567, state2._lE4F9A6C7295FF567, t)
local _l8B3E1DB4C6584990 = _lB8EAA0BF808384C3._lC483CC400CE8CA31
if (3977*7 - 3977*6 == 3977) then
  local _vB6DD1BC8 = math.sqrt(839653)
  local _v76A2D63A = string.len(tostring(_vB6DD1BC8))
  if _v76A2D63A > 2 then _v76A2D63A = _v76A2D63A + 1 end
end
_l184EFC06F03BF7AA.last_velocity = _l3B86A5785278720A
_l184EFC06F03BF7AA.last_duck_amount = _lE4F9A6C7295FF567
_l184EFC06F03BF7AA.last_weapon = _l8B3E1DB4C6584990
end
local _l93A0F5D91FBDC005 _lF93B188B91EBED3F()
_l002C9C644F32C5C8.unset(_lE4C0F29811DB3FE5.antiaimbot.other.leg_movement)
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
_lF93B188B91EBED3F()
end
local _l93A0F5D91FBDC005 _lE9E4624A5309F296()
local me = entity.get_local_player()
if me == nil or not entity._l3A0196851DA0B630(me) then
return
end
local _lA763710FCC7A5D81 = c_entity(me)
if _lA763710FCC7A5D81 == nil then
return
end
local _l50EC825EDB299DA7 = _lA763710FCC7A5D81:get_anim_state()
if _l50EC825EDB299DA7 == nil then
return
end
local _l39F7F932735DDC6A = _lA763710FCC7A5D81:get_anim_overlay(_lFE8669C3EBB75016)
local _l05412C1F3060CEFE = _lA763710FCC7A5D81:get_anim_overlay(_l4D857753CA7367F7)
_l4FA490EED3A5D61A()
if _lA11A332CEF1A75DE._l503514483C7022F7 then
_l9603AC28E95EBB05(me)
else
_lB3A2A60AA15F46F5(me, _l39F7F932735DDC6A)
end
_lA12B95B9BDD6436D(_l05412C1F3060CEFE)
end
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
if not _l861DF5F3FC680167 then
_lF93B188B91EBED3F()
_l885AD57970B0DF46.event_callback(
'setup_command',
_l27381E78BF40F670,
false
)
end
_l885AD57970B0DF46.event_callback(
'shutdown',
_l9414F1C1C88188EF,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'pre_render',
_lE9E4624A5309F296,
_l861DF5F3FC680167
)
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l90A29216B7239503(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get (_xd("ppiamoGd1ZSbnJiTnI0=",245))
_l885AD57970B0DF46.event_callback(
'setup_command',
_l27381E78BF40F670,
_l861DF5F3FC680167
)
end
ref.options:set_callback(
_l90A29216B7239503, true
)
_l1F975C44CE40652A(true)
end
end
local _l8C72F381EE48E2C7 do
local _lF03279AF218F53CB do
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._l8C72F381EE48E2C7._lF03279AF218F53CB
local _l20E7D2F5B3447EBF = false
local _l2CDDC32D307A5AD1 = { } do
local _l93A0F5D91FBDC005 _l501D920EC2C2EF4C(_lCBCA87DF576DB783, _l861DF5F3FC680167)
local _l777D8FF3F76AC3BE = { }
_l777D8FF3F76AC3BE._lCBCA87DF576DB783 = _lCBCA87DF576DB783
_l777D8FF3F76AC3BE._l074A95A0563830FB = nil
_l777D8FF3F76AC3BE._lD0AE551BBB7F48E2 = _l861DF5F3FC680167
return _l777D8FF3F76AC3BE
end
_l2CDDC32D307A5AD1[(_xd("6MbFxc4=",170))] = {
_l501D920EC2C2EF4C(cvar.violence_hblood, 0)
}
_l2CDDC32D307A5AD1[(_xd("Fjg7Ozk=",84))] = {
_l501D920EC2C2EF4C(cvar.mat_disable_bloom, 1)
}
_l2CDDC32D307A5AD1[(_xd("BCUjISwz",64))] = {
_l501D920EC2C2EF4C(cvar.r_drawdecals, 0)
}
_l2CDDC32D307A5AD1[(_xd("p5yVkJuDhw==",244))] = {
_l501D920EC2C2EF4C(cvar.r_shadows, 0),
_l501D920EC2C2EF4C(cvar.cl_csm_static_prop_shadows, 0),
_l501D920EC2C2EF4C(cvar.cl_csm_shadows, 0),
_l501D920EC2C2EF4C(cvar.cl_csm_world_shadows, 0),
_l501D920EC2C2EF4C(cvar.cl_foot_contact_shadows, 0),
_l501D920EC2C2EF4C(cvar.cl_csm_viewmodel_shadows, 0),
_l501D920EC2C2EF4C(cvar.cl_csm_rope_shadows, 0),
_l501D920EC2C2EF4C(cvar.cl_csm_sprite_shadows, 0),
_l501D920EC2C2EF4C(cvar.cl_csm_translucent_shadows, 0),
_l501D920EC2C2EF4C(cvar.cl_csm_entity_shadows, 0),
_l501D920EC2C2EF4C(cvar.cl_csm_world_shadows_in_viewmodelcascad, 0)
}
_l2CDDC32D307A5AD1[(_xd("cVJQS1ZHUQ==",34))] = {
_l501D920EC2C2EF4C(cvar.r_drawsprites, 0)
}
_l2CDDC32D307A5AD1[(_xd("jbyvqbS+sbiu",221))] = {
_l501D920EC2C2EF4C(cvar.r_drawparticles, 0)
}
_l2CDDC32D307A5AD1[(_xd("2OX67/k=",138))] = {
_l501D920EC2C2EF4C(cvar.r_drawropes, 0)
}
_l2CDDC32D307A5AD1[(_xd("Z1pNQk5KQANPSkRLV1A=",35))] = {
_l501D920EC2C2EF4C(cvar.mat_disable_fancy_blending, 1)
}
_l2CDDC32D307A5AD1[(_xd("1vrru//+7/ry9+g=",155))] = {
_l501D920EC2C2EF4C(cvar.func_break_max_pieces, 0),
_l501D920EC2C2EF4C(cvar.props_break_max_pieces, 0)
}
_l2CDDC32D307A5AD1[(_xd("WWtvfmFgLmtoaGtten0=",14))] = {
_l501D920EC2C2EF4C(cvar.muzzleflash_light, 0),
_l501D920EC2C2EF4C(cvar.r_drawtracers_firstperson, 0)
}
end
local _l93A0F5D91FBDC005 _lA6E0D1B2CEEC7193()
if not _l20E7D2F5B3447EBF then
return
end
for _lDDA2D6AE693381B0, v in pairs(_l2CDDC32D307A5AD1) do
for i = 1, #v do
local _l777D8FF3F76AC3BE = v[i]
local _lCBCA87DF576DB783 = _l777D8FF3F76AC3BE._lCBCA87DF576DB783
if _l777D8FF3F76AC3BE._l074A95A0563830FB == nil then
goto continue
end
_lCBCA87DF576DB783:set_int(_l777D8FF3F76AC3BE._l074A95A0563830FB)
_l777D8FF3F76AC3BE._l074A95A0563830FB = nil
::continue::
end
end
_l20E7D2F5B3447EBF = false
end
local _l93A0F5D91FBDC005 _l619D090EDFC78FCE()
if _l20E7D2F5B3447EBF then
return
end
local _l14F641CF3F2B2562 = ref.list:get()
for i = 1, #_l14F641CF3F2B2562 do
local _l861DF5F3FC680167 = _l14F641CF3F2B2562[i]
local _lD52EDAAF02723665 = _l2CDDC32D307A5AD1[_l861DF5F3FC680167]
for j = 1, #_lD52EDAAF02723665 do
local _l777D8FF3F76AC3BE = _lD52EDAAF02723665[j]
local _lCBCA87DF576DB783 = _l777D8FF3F76AC3BE._lCBCA87DF576DB783
if _lCBCA87DF576DB783 == nil or _l777D8FF3F76AC3BE._l074A95A0563830FB ~= nil then
goto continue
end
_l777D8FF3F76AC3BE._l074A95A0563830FB = _lCBCA87DF576DB783:get_int()
_lCBCA87DF576DB783:set_int(_l777D8FF3F76AC3BE._lD0AE551BBB7F48E2)
::continue::
end
end
_l20E7D2F5B3447EBF = true
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
_lA6E0D1B2CEEC7193()
end
local _l93A0F5D91FBDC005 _l959C56CDE58B916D()
_l619D090EDFC78FCE()
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _lE14F9BD9F324CE67(_l777D8FF3F76AC3BE)
_lA6E0D1B2CEEC7193()
_l619D090EDFC78FCE()
end
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
if _l861DF5F3FC680167 then
ref.list:set_callback(_lE14F9BD9F324CE67, true)
else
ref.list:unset_callback(_lE14F9BD9F324CE67)
end
if not _l861DF5F3FC680167 then
_lA6E0D1B2CEEC7193()
end
_l885AD57970B0DF46.event_callback(
'shutdown',
_l9414F1C1C88188EF,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
(_xd("OTIjCCInMzYjMggyOTM=",87)),
_l959C56CDE58B916D,
_l861DF5F3FC680167
)
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _l2DA57ED13D5DF6AA do
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._l8C72F381EE48E2C7._l2DA57ED13D5DF6AA
local _l97B447F748748911 = {
[(_xd("MhNdNhQREQ==",125))] = {
{
{ '1', 0.70 },
{ 'я пукнул ты понюхал', 1.7 },
},
{
{ 'я пикнул — ты умер', 1.1 },
{ 'математика проста', 1.8 },
},
{
{ 'спектаторы! у вас пополнение', 1.5 },
},
{
{ 'попущен под аплодисменты', 1.6 },
},
{
{ 'разъебал по регламенту', 1.4 },
},
{
{ '1', 1.2 },
},
{
{ 'иди сюда', 1 },
{ 'к папочке', 1.9 }
},
{
{ 'ооо бля ты ждал что я промахнусь', 2.1 },
{ 'в следующий раз батю твоего тапну', 2.3 }
},
{
{ 'спекулянт ебаный куда рванул с биткоинами', 1.4 },
},
{
{ 'а это премия за стресс', 1.6 },
},
{
{ 'на барабане трынди', 2.1 },
{ 'урод', 1.7 }
},
{
{ 'ты куда пальнул', 2.1 },
{ 'отстойный отброс', 2.6 }
},
{
{ 'милости прошу', 1.8 },
{ 'не покидай игру', 2.5 }
},
{
{ 'мастерски втянул в разборки', 2.7 }
},
{
{ 'бесполезно бабахнул кореш', 2.1 }
},
{
{ 'зашептал харю моли', 1.6 },
},
{
{ 'отрулил сосальщика кувалдой', 1.4 },
},
{
{ 'кати с пути, лёша на роликах дьявол', 1.6 },
},
{
{ 'приближаюсь', 1.0 },
{ 'к тёте', 1.7 }
},
{
{ 'ты куда бабахнул', 2.2 },
{ 'мусорный выродок', 2.7 }
},
{
{ 'ты точно в теме?', 2.1 },
},
{
{ 'отползай чайник', 1.3 },
{ 'мой вайб недоступен', 1.7 },
},
{
{ 'напрасно стрельнул дружок', 2.0 }
},
{
{ 'обвисла потаскуха', 2.1 },
{ 'напрасно ты жмёшь хуйню свою', 2.6 }
},
{
{ 'твои таланты до и после - полный ноль в твою глотку', 3.1 }
},
{
{ 'червяк ебаный окраинный куда спешишь', 1.5 },
},
{
{'я конченый', 2.2 },
{'но ты прям тапок + лузер + без скита', 2.5 }
},
{
{ 'нашаманил морду таракану', 1.3 },
},
{
{ 'THIS IS LCCCCCCC (◣_◢)', 2.3 },
},
{
{ 'ты точно человек?', 1.9 },
},
{
{ 'сосал?', 1.2 },
{ 'соври', 1.8 },
{ 'не ври', (2 * 1) }
},
{
{ 'бля как так-то', 2.0 },
{ 'не получилось забайтить', 2.4 },
{ 'да?', 1.4 }
},
{
{ 'ты опять тапыча словил', 2.3 },
{ 'луасенс свой удали нахуй', 2.8 }
},
{
{ 'нормально я тебя забайтил', 2.4 }
},
{
{ 'зря пикнул братан', 1.9 }
},
{
{ 'повезло', 1 },
{ 'мне', 1 }
},
{
{ 'переигран пидорас', 2.1 }
},
{
{ 'прошу', 1.7 },
{ 'не ливай с сервера', 2.3 }
},
{
{ 'ахахаха', (2 + (1225 - 1225)) },
{ 'и ты себя игроком считаешь?', 2.5 },
},
{
{ 'ой долбаеб', 1 },
{ 'лучше ливай с сервера', 1 },
{ (_xd("z4+Kg4eA",238)), 1 },
},
{
{ 'опять ты?', (2 + (2183 - 2183)) },
{ 'ну блин', 2.5 }
},
{
{ 'нахуй из игры', 1.1 },
{ 'пока я добрый', 1.9 },
},
{
{ 'говноед, учись умирать красиво', 1.5 },
},
{
{ (_xd("zdPbzMq+xt+q39O+0svf",158)), -(-2) }
},
{
{ 'ты куда пикнул', (26 * 1) / 13 },
{ 'доходяга ебаная', 2.5 }
},
{
{ 'рот свой на замок', 1.1 },
{ 'трупы не пиздят', 1.9 },
},
{
{ 'спи чмо', (2 + (5964 - 5964)) }
},
{
{ 'welcome to hell пидорас', 2.3 }
},
{
{ '12', 1 },
{ '1', 1 }
},
{
{ 'упала шлюха', (2 + (171 - 171)) },
{ 'зря пикаешь такое', 2.5 }
},
{
{ 'все это ты до и после хуй те в рот', (3 * 1) }
},
{
{ 'на пенисяку говори', (2 + (6744 - 6744)) },
{ 'уебище', 1.6 }
},
{
{ 'чистое лц', 1.20 },
{ 'но я не брикал', 1.9 },
},
{
{ 'откисай нубяра', 1.20 },
{ 'в мой flux попасть невозможно', 1.6 },
},
{
{ 'пошел по комнате дымок╭∩╮(⋋‿⋌ )ᕗ✧', 1.20 },
{ 'соснул ты бичик мой хуек (Ψ▼▼)Ψ', 1.20 },
},
{
{ 'а это вам чаевые за беспокойство', 1.50 },
},
{
{ 'курт кобейн похоже не играл с эстетиком', 1.20 },
},
{
{ 'даже моя аквариумная рыбка стала играть лучше брендона, когда релизнулся эстетик на скит', 1.20 },
},
{
{ 'ебаная моча козлиная, куда собралась', 1.6 },
},
{
{ 'умер на пабе дурачок', 1.2 },
{ 'пердяй ебаный кабачок', 1.3 },
},
{
{ 'абрыгажник ебаный куда полетел со своими криптовалютами', 1.5 },
},
{
{ 'лысый напряг бровь, поэтому ты миснул, а я убил', 1.2 },
},
{
{ 'с луашкой лысыго играть приятнее, чем с луа прыщявого', 1.1 },
},
{
{ 'ну нормально, это я еще с коляски инвалидной не упал', 1.4 },
},
{
{ 'да блять шнырь ебаный, даже хердай убил бы', 1.3 },
},
{
{ 'ты куда собрался таблеточный', 1.4 },
},
{
{ 'Бог простит, но 𝔸𝔼𝕊𝕋ℍ𝔼𝕋𝕀ℂ нет.', 1.3 },
},
{
{ 'А если по совершенно невероятной случайности, по исключительному редкому стечению обстоятельств, по крайней неудачливости, по абсолютной не предсказуемости, по полной катострофичносте ты меня когда-то убьешь?', (3 + (2864 - 2864)) },
},
{
{ 'с дороги нахуй, равшан на колесах ебать', 1.4 },
},
{
{ 'придушил пидора как гуся своего', 1.3 },
},
{
{ 'Маяковский, почему ваш бентли цвета какашек?', 1.4 },
},
{
{ 'червь ебаный замкадный куда летиш', 1.6 },
},
{
{ 'скажи бате', 1 },
{ 'передай маме', 1.01 },
{ 'пошел нахуй', 1.9 },
},
{
{ 'фраер сколько ходок', 1.1 },
{ 'где чалился', 2.1 },
{ 'передай отцу', 1 },
},
{
{ '𝔸𝔼𝕊𝕋ℍ𝔼𝕋𝕀ℂ 𝕣𝕖𝕝𝕖𝕒𝕤𝕖𝕕... 𝕓𝕖 𝕤𝕔𝕒𝕣𝕖..(◣_◢)', (2 * 1) },
},
{
{ '𝕞𝕪 𝕣𝕖𝕝𝕚𝕘𝕚𝕠𝕟... 𝕒𝕖𝕤𝕥𝕙𝕖𝕥𝕚𝕔~𝕘𝕤', 1.5 },
{ '𝔸𝕤-𝕊𝕒𝕝𝕒𝕞𝕦 𝔸𝕝𝕒𝕚𝕜𝕦𝕞 𝕨𝕒 ℝ𝕒𝕙𝕞𝕒𝕥𝕦𝕝𝕝𝕒𝕙', 1.5 },
},
{
{ 'щеманул ебало клопу', 1.4 },
},
{
{ 'отскрябил хуесоса топором', 1.2 },
},
{
{ 'ЙОУ ЙОУ ЙОУ БИЧИ, на колени.', 1.1 },
},
{
{ 'у россии 3 пути, пиво, водка, две пизды', 1.5 },
},
{
{ 'yo пидрила ты куда лезешь с таким конфигом', 2.3 },
{ 'flux бы купил нищета', 2.5 }
},
{
{ 'хахаха это ты называешь игрой', 1.9 },
{ 'иди в тетрис тренируйся дебил', 2.1 }
},
{
{ 'оооо сука ты думал я мисну', 2.2 },
{ 'в следующий раз мамку твою пикну', 2.4 }
}
},
[(_xd("f14QdFVRRFg=",48))] = {
{
{ 'сука', 2.1 },
{ 'лаки ебаное', 2.4 },
},
{
{ 'зачем ты так со мной?(', -(-3) }
},
{
{ 'ну не повезло мне', (44825 + 44822 - 44822) },
{ 'с кем не бывает?', (30 * 1) / 10 }
},
{
{ 'я хуевый', 2.8 },
{ 'простите команда', -(-3) }
},
{
{ 'анлак', 2.5 },
{ 'в очередной раз', -(-3) }
},
{
{ 'бля ты совсем долбаеб', 2.9 },
{ 'куда ты пикаешь пидорасина', (63850 + 63847 - 63847) }
},
{
{ 'ну ПИДОРАС ебаный', -(-2) },
{ 'КУДА Я МИССНУЛ', 2.3 },
},
{
{ 'ну конечно', 2.3 },
{ 'опять запредиктили', 2.5 },
{ 'и опять в отжатие', (2 + (2278 - 2278)) }
},
{
{ 'хуйня тапнула', (82244 + 82241 - 82241) },
{ 'красава доминик', (38865 + 38863 - 38863) }
},
{
{ (_xd("Bw0PAQRJHUUPEA8TSRwDAQtJDUkPBQw=",105)), (82562 + 82558 - 82558) }
},
{
{ 'как я опять умер???', -(-3) },
{ 'вроде стараюсь как могу', 3.4 }
},
{
{ 'да ебаная клавиатура', (12 * 1) / 4 },
{ 'у меня с пробелом хуйня какая то', (4 + (9013 - 9013)) }
},
{
{ 'не', (23504 + 23502 - 23502) },
{ 'сегодня вообще нихуя не стреляет чит', (4 * 1) }
},
{
{ 'ах ты ', 1.20 },
{ 'нахлебник ебучий', 1.2},
},
{
{ 'блять опять бабка с полотенцем в комнату забежала ', 1.40 },
},
{
{ 'тебе повезло я хуем кабель интернета задел', 1.40 },
},
{
{ 'блять подушка по комнате пролетела отвечаю', 1.20 },
},
{
{ 'блять кнопка даблтапа отвалилась', 1.20 },
{ 'так и знал что ардор брать не стоило', 1.2},
},
{
{ 'я лечу в австралию', 1.20 },
{ 'чистить эзотерику ебало', 1.2},
},
{
{ 'я брикнул', 1.20 },
{ 'не помогло', 1.2},
},
{
{ 'на самом деле я без читов ', 1.20 },
},
{
{ 'так и знал что стоило эстетик покупать', 1.20 },
{ 'вместо луасенса ебаного', 1.2},
},
{
{ 'у меня кошка провод интернета перегрызла', 1.20 },
},
{
{ 'монитор выключился', 1.20 },
},
{
{ 'я же реснусь?', 1.20 },
},
{
{ 'тут читеры играют что-ли?', 1.20 },
},
{
{ 'где крутилку такую зачетную скачал?', 1.20 },
},
{
{ 'тебе повезло сука', 1.20 },
{ 'на меня метеорит свалился', 1.2 },
},
{
{ 'извинись', 1.20 },
{ 'немедленно', 1.2 },
},
{
{ 'я тебя услышал', 1.20 },
{ 'жди спортиков под дверью', 1.2 },
},
{
{ 'меня это заебало', 1.20 },
{ 'я пошел покупать эстетик', 1.2 },
},
{
{ 'на самом деле я играю лучше всех на планете', 1.20 },
{ 'ты похоже на луне', 1.2 },
},
{
{ 'признаю неплохо ты меня жахнул', 1.20 },
{ 'сынец шлюхи', 1.2 },
},
{
{ 'не ну с таким везением', 1.20 },
{ 'я бы только три семерки в казино выбивал', 1.2 },
},
{
{ 'да как это возможно блять', 1.20 },
{ 'ты бог чтоли??', 1.2 },
},
{
{ 'не ну это уже наглость', 1.20 },
{ '1х1 рн?', 1.2 },
},
{
{ 'хуесос ебаный', 1.20 },
{ 'пиши адрес', 1.2 },
{ 'я выдвигаюсь', 1.2 },
},
{
{ 'я стол сломал из-за тебя', 1.20 },
{ 'покупай мне новый', 1.2 },
{ 'или заяву напишу', 1.2 },
},
{
{ 'еще раз такое будет', 1.20 },
{ 'проверю выдержит ли моя мышка падение с 9 этажа', 1.2 },
},
{
{ 'админы проверьте его на читы', 1.20 },
},
{
{ 'хватит бога за бороду хватать', 1.20 },
{ 'говно везучее', 1.2 },
},
{
{ 'эстетик не загрузился', 1.20 },
},
{
{ 'в этом раунде я проверял что будет если играть ногой', 1.60 },
{ 'результат на лицо', 1.2 },
},
{
{ 'блять скример на весь экран выскочил', 1.20 },
},
{
{ 'я прислушивался', 1.20 },
{ 'я думал у меня в доме грабители', 1.2 },
},
{
{ 'ну легит в этом конфиге такой себе', 1.20 },
},
{
{ 'у меня кресло развалилось', 1.20 },
},
{
{ 'короче я прогоняю твою мамку из под стола', 1.50 },
{ 'пизда тебе в следующем раунде', 1.3 },
},
{
{ 'да ну нахуй', 1.20 },
{ 'лил пип за окном выступает', 1.2 },
},
{
{ 'я не верю в то что происходит', 1.20 },
{ 'я что в ад попал?', 1.2 },
},
{
{ 'и как после этого можно не верить в существование зомби?', 1.20 },
},
{
{ 'ты допизделся', 1.20 },
{ (_xd("wY+Kg4eA",238)), 1.2 },
},
{
{ 'я щас твой хуй в пропеллер видеокарты засуну', 1.20 },
{ 'далбаеб', 1.2 },
},
{
{ 'ко мне зомби через окно лезут', 1.20 },
},
{
{ 'чистейший лагкомп', 1.20 },
{ 'ай сука', 1.2 },
},
{
{ 'как ты попал', 1.20 },
{ 'у меня же хорошо голова крутилась', 1.2 },
},
{
{ 'админы сбор', 1.20 },
{ 'у него гм', 1.2 },
{ 'мать ставлю', 1.2 },
},
{
{ 'ну ебаная яндекс музыка', 1.20 },
{ 'опять чит сломала', 1.2 },
},
{
{ 'я не верю в то что ты на такое способен', 1.20 },
{ 'скажи еще что ты египетские пирамиды строил', 1.5 },
{ 'я поверю', 1.2 },
},
{
{ 'ооо', 1.20 },
{ 'хату на красное хуесос', 1.2 },
},
{
{ 'я вроде брикнул', 1.20 },
{ 'как ты меня убил?', 1.2 },
},
{
{ 'ноулав в своем гайде точно так же делал', 1.40 },
{ 'ах он хуесос напиздел', 1.2 },
},
{
{ 'я на блокноте кс запустил', 1.20 },
},
{
{ 'ясно', 1.20 },
{ 'мой чит на командных блоках в майнкрафте делался', 1.2 },
},
{
{ 'владивосток и москва разве не близко?', 1.20 },
{ 'или почему у меня пинг 150', 1.2 },
},
{
{ 'я загружаю другой конфиг', 1.20 },
{ 'в следующем раунде точно попаду', 1.2 },
},
{
{ 'как думаешь', 1.20 },
{ 'у литвина правда м4 спиздили?', 1.2 },
},
{
{ 'сукаааа ебаная сетевая карта', 1.20 },
{ 'надо новую покупать', 1.2 },
},
{
{ 'звуки есть в игре?', 1.20 },
{ 'я твои шаги не услышал', 1.2 },
},
{
{ 'хуесос с предиктом', 1.20 },
},
{
{ 'а где скит кряк без вирусов скачать?', 1.20 },
{ 'как у тебя', 1.2 },
},
{
{ 'можешь свой кфг дать?', 1.20 },
},
{
{ 'можешь свои аа дать?', 1.20 },
{ 'а ты с эстетиком? тогда понятно почему я по тебе не попал', 1.6 },
},
{
{ 'ну блять', 1.20 },
{ 'клавиатура своей жизнью живет', 1.2 },
},
{
{ 'плесень в банке день 30', 1.20 },
},
{
{ 'так там же не простреливается', 1.30 },
},
{
{ 'у тебя голова вверх смотрит на бога', 1.20 },
{ 'в следующем раунде к нему и отправишься', 1.3 },
},
{
{ 'у меня винлокер', 1.20 },
{ '5к просят', 1.2 },
},
{
{ 'коврик закончился', 1.20 },
},
{
{ 'сенсу сорвало', 1.20 },
},
{
{ 'поцаны сенса как у симпла норм?', 1.20 },
},
{
{ 'нихуя у тебя раскидка от монеси', 1.20 },
},
{
{ 'я пулю зубами сьел', 1.20 },
{ 'а бон апетит никто не сказал', 1.2 },
},
{
{ 'артефакты на мониторе', 1.20 },
},
{
{ 'как ты попал', 1.20 },
{ 'у меня же хорошо голова крутилась', 1.2},
},
{
{ 'мы щас порнуху снимаем', 1.20 },
{ 'я типо парень геймер', 1.2 },
{ 'мою девушку сзади ебут', 1.2 },
},
{
{ 'ты 001?', 1.20 },
{ 'я 456 не трогай в следующем раунде', 1.2 },
},
{
{ 'игра в рака с твоей мамкой в следующий раз будет хуесос', 1.50 },
{ 'не дай бог еще раз', 1.2 },
},
{
{ 'ну да все луахи на скит хуйня', 1.20 },
{ 'ток эстетик нормальный', 1.2 },
},
{
{ 'ты знаешь что нибудь про пробив через стим?', 1.40 },
{ 'щас узнаешь', 1.2 },
},
{
{ 'ого брат круто меня убил', 1.20 },
{ 'поставь статрек на нож прикол будет', 1.4 },
},
{
{ 'чел увидел у меня клантег эстетик', 1.20 },
{ 'и убил случайно трясущемися руками', 1.2 },
},
{
{ 'проклинаю все твое семейное древо хуесос', 1.20 },
},
{
{ 'я вызываю спортиков', 1.20 },
{ 'как мага сиять будешь хуесос', 1.2 },
},
{
{ 'на сколько миллиардов казино уже ограбил?', 1.20 },
},
{
{ 'поделись везеньем ', 1.20 },
{ 'по братски', 1.2 },
},
{
{ 'ты с эстетиком что-ли?', 1.20 },
{ 'тогда простительно', 1.2 },
},
{
{ 'о боги', 1.20 },
},
{
{ 'ты не хуже брендона!', 1.20 },
{ 'по везению', 2.0 },
},
{
{ 'сигма сигма бой', 1.20 },
{ 'словил в ебло с первой ', 1.2 },
},
{
{ 'почему ты не выигрываешь турики с таким везеньем?', 1.20 },
},
{
{ 'не дай бог покинешь сервер', 1.20 },
{ 'я вычислю и начищу морду тебе на другом', 1.2 },
},
{
{ 'щас мой братуха санчез подлетит', 1.20 },
{ 'шансов тебе не оставит', 1.2 },
},
{
{ 'слово пацана даю', 1.20 },
{ 'еще одна такая выходка и тебе пиздец', 1.2 },
},
{
{ 'бляя надо кфг шамлеса прикупить', 1.20 },
{ 'эта поебень вообще не попадает', 1.2 },
},
{
{ 'ну да, бездумно отжать я тож могу', 1.3 },
},
{
{ 'о господи нищий пидор, ну ниче некст раунд посмотрим)', 1.1 },
},
{
{ 'да даже лысый блять не настолько везучий', 1.6 },
},
{
{ 'мать твою ебал сын шлюхи, че ты делаешь?', 1.1 },
},
{
{ 'ДА СУКА Я ЖЕ С FLUX КАК ТАК?', 1.3 },
},
{
{ 'блять ебаный абрыгажник снова тапнул бичпакет ебучий', 1.6 },
},
{
{ 'я бы тебе залупой зубы выбил бы хуесос дегенеративный', 1.4 },
},
{
{ 'да ты посмотри что нищий с рейвтрипом делает', 1.1 },
},
{
{ 'пидор без аестетика убил, pzdc)))', 1.3 },
},
{
{ '[gamesense] missed shot due to лысая бошка', 1.5 },
},
{
{ 'ТАКИМИ ТЕМПАМИ МОНИК НОГАМИ РАЗЪЕБАШУ', 1.3 },
},
{
{ 'бля придется моник врубать', 1.2 },
},
{
{ 'ах да забыл предикт врубить в flux, ну щас пизды дам', 1.6 },
},
{
{ 'МИСМАЧНУЛ', 1.2 },
},
{
{ 'ОГО Я ДОРМАНТ ВЫРУБИТЬ ЗАБЫЛ', 1.1 },
},
{
{ 'никнейм хердай(((', 1.1 },
},
{
{ 'как ты со своим фри скитом убил мой платный flux?', 1.3 },
},
{
{ 'магия меня подвела...', 1.3 },
},
{
{ 'Хорошие убийцы не умирают, а уходят в тень.', 1.2 },
},
{
{ 'блять свет в ванной вырубился, секунду', 1.4 },
},
{
{ 'хуйня ебаная подзалупная зубы бы тебе повыбивал яйцами большими уебище отсталое', 1.5 },
},
{
{ 'блять у тебя везения больше чем у брендона сын шлюхи', 1.6 },
},
{
{ 'А23ХЗАД32ХЗАДЗХЦВЙ ТЫ ЧО ДОЛБАЕБ? я убивать должен был', 1.2 },
},
{
{ 'я не умер, просто ты хуесос ебаный везучий', 1.3 },
},
{
{ 'блять ты как попал сука', 1.5 },
{ 'читы твои везучие пиздец', 1.8 }
},
{
{ 'ну нахуй как так то', 1.7 },
{ 'у меня мышка заела дебил', 2.0 }
},
{
{ 'о бля опять лагнуло все', 1.6 },
{ 'ты чо на везении вывозишь', 1.9 }
},
{
{ 'сука ты с эстетиком или что', 1.8 },
{ 'дай конфиг а то пиздец мне', 2.1 }
},
{
{ 'блять мой кот на клаву прыгнул', 1.7 },
{ 'поэтому ты и тапнул дебич', 2.0 }
},
{
{ 'ах ты везучий хуесос', 1.6 },
{ 'ща я тебе в реале ебало начищу', 2.2 }
},
{
{ 'пиздец у меня стол шатается', 1.5 },
{ 'как ты меня вообще убил', 1.8 }
},
{
{ 'ну давай признавайся где софт качал', 1.7 },
{ 'или ты просто сын фортуны', 2.0 }
},
{
{ 'блять у меня чайник засвистел', 1.6 },
{ 'отвлекся и ты меня жахнул', 1.9 }
},
{
{ 'ого чел ты реально попал', 1.5 },
{ 'или это твой чит за тебя сыграл', 1.8 }
}
}
}
local _lA8B0852F51E7786B = { }
local _l49507ACDAE24AA12 = 0
local _l93A0F5D91FBDC005 _lD63DD778EE112BFA()
for i = 1, #_lA8B0852F51E7786B do
_lA8B0852F51E7786B[i] = nil
end
end
local _l93A0F5D91FBDC005 _l5951BA4295869E4B()
local _l91E61C6563D1E5E6 = entity.get_game_rules()
if _l91E61C6563D1E5E6 == nil then
return false
end
local _l99DA31570959BD78 = entity.get_prop(
_l91E61C6563D1E5E6, 'm_bWarmupPeriod'
)
return _l99DA31570959BD78 == 1
end
local _l93A0F5D91FBDC005 _l8937F4AB3DD330FF(type)
local _l8CFFE4CE1E7363D8 = _l97B447F748748911[type]
if _l8CFFE4CE1E7363D8 == nil then
return nil
end
_l49507ACDAE24AA12 = _l49507ACDAE24AA12 + 1
_l49507ACDAE24AA12 = _l49507ACDAE24AA12 % #_l8CFFE4CE1E7363D8
return _l8CFFE4CE1E7363D8[_l49507ACDAE24AA12 + 1]
end
local _l93A0F5D91FBDC005 _lE575A77C0E5EB903(type)
if not ref.triggers:get(type) then
return
end
local _lA2D6A6576C59B9BB = _l8937F4AB3DD330FF(type)
if _lA2D6A6576C59B9BB == nil then
return
end
for i = 1, #_lA2D6A6576C59B9BB do
local _l5E432A44CEEEFD31 = _lA2D6A6576C59B9BB[i]
table.insert(_lA8B0852F51E7786B, {
_l5E432A44CEEEFD31[1],
_l5E432A44CEEEFD31[(16 * 1) / 8]
})
end
end
local _l93A0F5D91FBDC005 _lDFA82A0CBDB020B5(_l9591A67D938F86B3)
client.exec((_xd("RlRMFQ==",53)) .. _l9591A67D938F86B3)
end
local _l93A0F5D91FBDC005 _lF2518EE7699D8E61(e)
local me = entity.get_local_player()
local _lEF4A947D6622E24D = client.userid_to_entindex(e._lEF4A947D6622E24D)
local _l97D87A44F00AA199 = client.userid_to_entindex(e._l97D87A44F00AA199)
if me == _lEF4A947D6622E24D and me ~= _l97D87A44F00AA199 then
_lE575A77C0E5EB903 (_xd("g6LsiKmtuKQ=",204))
return
end
if me ~= _lEF4A947D6622E24D and me == _l97D87A44F00AA199 then
_lE575A77C0E5EB903 (_xd("sZDetZeSkg==",254))
return
end
end
local _l93A0F5D91FBDC005 _l64C8B961BD97C7F9()
local _lA2D6A6576C59B9BB = _lA8B0852F51E7786B[1]
if _lA2D6A6576C59B9BB == nil then
return
end
_lA2D6A6576C59B9BB[(66338 + 66336 - 66336)] = _lA2D6A6576C59B9BB[(2 + (9315 - 9315))] - globals.frametime()
if _lA2D6A6576C59B9BB[(2 * 1)] > 0 then
return
end
_lDFA82A0CBDB020B5(_lA2D6A6576C59B9BB[1])
table.remove(_lA8B0852F51E7786B, 1)
end
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
if not _l861DF5F3FC680167 then
_lD63DD778EE112BFA()
end
_l885AD57970B0DF46.event_callback(
'player_death',
_lF2518EE7699D8E61,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'net_update_start',
_l64C8B961BD97C7F9,
_l861DF5F3FC680167
)
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
_l1F975C44CE40652A(_l777D8FF3F76AC3BE:get())
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _lA5E50DA1047BBA15 do
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._l8C72F381EE48E2C7._lA5E50DA1047BBA15
local _l8D25693BC85AC9C4 = {
'/',
'/\\',
'f',
'f1',
'fl',
(_xd("Gk0J",124)),
(_xd("FB4H",114)),
(_xd("JS82fQ==",67)),
'flux',
'flux',
'flux',
(_xd("HRdLAw==",123)),
'flux',
'flux',
'flux',
(_xd("57D0+Q==",129)),
'flux',
'flux',
'flux',
(_xd("DAYfVA==",106)),
(_xd("UVtC",55)),
(_xd("B1AU",97)),
'fl',
'f1',
'f',
'/\\',
'/',
}
local _lE58C2C6EADD6D095 = nil
local _l93A0F5D91FBDC005 _l74BD5A4A4B900616(_l9591A67D938F86B3)
if _lE58C2C6EADD6D095 ~= _l9591A67D938F86B3 then
_lE58C2C6EADD6D095 = _l9591A67D938F86B3
client._l74BD5A4A4B900616(_l9591A67D938F86B3)
end
end
local _l93A0F5D91FBDC005 _l2A1A23EC3FA7DF22()
client._l74BD5A4A4B900616('')
client.delay_call(
0.3, client._l74BD5A4A4B900616, ''
)
end
local _l93A0F5D91FBDC005 _l956318E303B3EB03()
local _lB089E1D6D7176955 = math.floor(
globals.curtime() * 3.0
)
local _lB90694C605679381 = _lB089E1D6D7176955 % #_l8D25693BC85AC9C4
local _l9591A67D938F86B3 = _l8D25693BC85AC9C4[_lB90694C605679381 + 1]
_l74BD5A4A4B900616(_l9591A67D938F86B3)
end
local _l93A0F5D91FBDC005 _lE2AF2BD4AAF40E17()
local _lB17914F567A7940B = ref._lB17914F567A7940B:get()
local _l9591A67D938F86B3 = ref.input:get()
if _lB17914F567A7940B == (_xd("1vHk8ezm",133)) then
_l74BD5A4A4B900616(_l9591A67D938F86B3)
end
if _lB17914F567A7940B == (_xd("VWJxYnV0YmM=",7)) then
_l74BD5A4A4B900616((_xd("/vC5u7nO9g==",139)))
end
if _lB17914F567A7940B == (_xd("1Pv8+PTh8PE=",149)) and _l9591A67D938F86B3 ~= '' then
local _lCC9D2EFA01452D7D = ref._lCC9D2EFA01452D7D:get() * 0.1
local _lB089E1D6D7176955 = math.floor(
globals.curtime() / _lCC9D2EFA01452D7D
)
local _lFAC0E14709703CBE = #_l9591A67D938F86B3
local _l721ED02EF23C8EA5 = math.floor(
0.5 + _lB089E1D6D7176955 % (_lFAC0E14709703CBE * (2 + (6963 - 6963)))
)
_l721ED02EF23C8EA5 = math.abs(_l721ED02EF23C8EA5 - _lFAC0E14709703CBE)
_l74BD5A4A4B900616(_l9591A67D938F86B3:_l26F7CE0865D5D59E(1, _l721ED02EF23C8EA5))
end
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
_l2A1A23EC3FA7DF22()
end
local _l93A0F5D91FBDC005 _l64C8B961BD97C7F9()
local _l21623509038826E5 = ref._l9591A67D938F86B3:get()
if _l21623509038826E5 == (_xd("vpSNgA==",248)) then
_l956318E303B3EB03()
end
if _l21623509038826E5 == (_xd("U2VjZH99",16)) then
_lE2AF2BD4AAF40E17()
end
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
if not _l861DF5F3FC680167 then
_l2A1A23EC3FA7DF22()
end
_l885AD57970B0DF46.event_callback(
'shutdown',
_l9414F1C1C88188EF,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'net_update_start',
_l64C8B961BD97C7F9,
_l861DF5F3FC680167
)
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _l2D5D06F56E20D168 do
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._l8C72F381EE48E2C7._l2D5D06F56E20D168
local _l0F94AA375FF93ACD = (9 * 1)
local _l93A0F5D91FBDC005 _l2B7BB3FD738D41C3(_lFCE61131C8541873)
local _lCE07FAFEC1C163B4 = csgo_weapons(_lFCE61131C8541873)
if _lCE07FAFEC1C163B4 == nil or _lCE07FAFEC1C163B4.type ~= (_xd("ITQjKCciIw==",70)) then
return false
end
local _lB049DC4138305F12 = entity.get_prop(_lFCE61131C8541873, 'm_fThrowTime')
if _lB049DC4138305F12 == nil or _lB049DC4138305F12 == 0 then
return false
end
return true
end
local _l93A0F5D91FBDC005 _l6F48C10A3AA76108(cmd)
local me = entity.get_local_player()
if me == nil then
return
end
local _l261FDEAD3503293A = entity.get_prop(me, 'm_movetype')
if _l261FDEAD3503293A ~= _l0F94AA375FF93ACD or _lA11A332CEF1A75DE._l503514483C7022F7 then
return
end
cmd._l6F49EB461422B562 = math.floor(0.5 + cmd._l6F49EB461422B562)
cmd._lB6F5466E95879823 = 0
local _lFCE61131C8541873 = entity.get_player_weapon(me)
if _lFCE61131C8541873 == nil then
return
end
if _l2B7BB3FD738D41C3(_lFCE61131C8541873) then
return
end
local _l086BFEE20696A8B7 = vector(entity.get_prop(me, 'm_vecLadderNormal'))
if _l086BFEE20696A8B7:_l47B52939D0109EA8() == 0 then
return
end
local _l4F5C43C5791920B9 = vector(client.camera_angles())
local _lC51EE15DB8F17338 = vector(_l086BFEE20696A8B7:_l54FCA590490245EE())
local _l4D63AD4B3331EE7D = _lC51EE15DB8F17338.y - _l4F5C43C5791920B9.y + (3060 * 1) / 17
local _l3879DC49EFEB8701 = _lC51EE15DB8F17338.x - _l4F5C43C5791920B9.x
_l4D63AD4B3331EE7D = _l885AD57970B0DF46.normalize(_l4D63AD4B3331EE7D, -(20700 + 20520 - 20520), (1980 * 1) / 11)
_l3879DC49EFEB8701 = _l885AD57970B0DF46.clamp(_l3879DC49EFEB8701, -(89 + (7045 - 7045)), -(-89))
local _lF8B07B32862CD04E = math.abs(_l4D63AD4B3331EE7D)
local _l46AA6D7987AE7B3A = (89 + (2504 - 2504))
local _l8D93B57A952D5141 = -(90 * 1)
local _l064A53CAA2E1F9E4 = _l3879DC49EFEB8701 < -(49428 + 49383 - 49383)
local _l1979F9BE24654F70 = _l4D63AD4B3331EE7D > 0
local _l36E776AAB93712E2 = cmd.sidemove > 0
local _l27066A1361C97E75 = cmd.forwardmove > 0
if _lF8B07B32862CD04E > (420 * 1) / 6 and _lF8B07B32862CD04E < -(-135) then
if cmd.forwardmove ~= 0 or cmd.sidemove == 0 then
return
end
if not _l1979F9BE24654F70 then
_l8D93B57A952D5141 = -_l8D93B57A952D5141
end
if _l1979F9BE24654F70 then
_l36E776AAB93712E2 = not _l36E776AAB93712E2
end
cmd._l19BCC5BFB27A669D = _l36E776AAB93712E2 and 1 or 0
cmd._l1EDCA2CB96EC42F5 = _l36E776AAB93712E2 and 0 or 1
if _l1979F9BE24654F70 then
_l36E776AAB93712E2 = not _l36E776AAB93712E2
end
cmd._l21CD322A0B5CB4E5 = _l36E776AAB93712E2 and 1 or 0
cmd._lE60A7541C17656AC = _l36E776AAB93712E2 and 0 or 1
cmd._l46AA6D7987AE7B3A = _l46AA6D7987AE7B3A
cmd._l6F49EB461422B562 = _l885AD57970B0DF46.normalize(_lC51EE15DB8F17338.y + _l8D93B57A952D5141, -(180 * 1), -(-180))
return
end
if cmd.sidemove ~= 0 or cmd.forwardmove == 0 then
return
end
if not _l1979F9BE24654F70 then
_l8D93B57A952D5141 = -_l8D93B57A952D5141
end
if not _l064A53CAA2E1F9E4 then
_l27066A1361C97E75 = not _l27066A1361C97E75
end
cmd._l19BCC5BFB27A669D = _l27066A1361C97E75 and 0 or 1
cmd._l1EDCA2CB96EC42F5 = _l27066A1361C97E75 and 1 or 0
if not _l1979F9BE24654F70 then
_l27066A1361C97E75 = not _l27066A1361C97E75
end
cmd._l21CD322A0B5CB4E5 = _l27066A1361C97E75 and 1 or 0
cmd._lE60A7541C17656AC = _l27066A1361C97E75 and 0 or 1
cmd._l46AA6D7987AE7B3A = _l46AA6D7987AE7B3A
cmd._l6F49EB461422B562 = _l885AD57970B0DF46.normalize(_lC51EE15DB8F17338.y + _l8D93B57A952D5141, -(180 * 1), (180 + (428 - 428)))
end
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
_l885AD57970B0DF46.event_callback(
'setup_command',
_l6F48C10A3AA76108,
_l861DF5F3FC680167
)
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
_l1F975C44CE40652A(_l777D8FF3F76AC3BE:get())
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _lC2DB6E48BA63AC00 do
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._l8C72F381EE48E2C7._lC2DB6E48BA63AC00
local con_filter_enable = cvar.con_filter_enable
local con_filter_text = cvar.con_filter_text
local _l93A0F5D91FBDC005 _lF93B188B91EBED3F()
con_filter_enable:set_int(tonumber(con_filter_enable:get_string()))
con_filter_text:set_string('')
end
local _l93A0F5D91FBDC005 _l6019CE704534C5F8()
con_filter_enable:set_raw_int(1)
con_filter_text:set_string((_xd("lKiuoqq8qqG8qpI=",207)))
end
local _l93A0F5D91FBDC005 _lBAC50CC758604725()
if not ref._lF8E1754D21D14193:get() then
return
end
_l6019CE704534C5F8()
client.delay_call(
1, _lBAC50CC758604725
)
end
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
if _l861DF5F3FC680167 then
_lBAC50CC758604725()
else
_lF93B188B91EBED3F()
end
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
_l1F975C44CE40652A(_l777D8FF3F76AC3BE:get())
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
if (7322*7 - 7322*6 == 7322) then
  local _vD91630C2 = math.sqrt(80116)
  local _v9B1AC6C6 = string.len(tostring(_vD91630C2))
  if _v9B1AC6C6 > 2 then _v9B1AC6C6 = _v9B1AC6C6 + 1 end
end
local _l48F67A671746F233 do
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._l8C72F381EE48E2C7._l48F67A671746F233
local _lA1751D8238566CFB = {
(_xd("MhkaFxQZ",117)),
(_xd("xLDQxLKjrKPQwMLRrrGz",131)),
(_xd("oqK20cHJ",241)),
(_xd("S11a",10)),
(_xd("F31lFyAzKikzIDc=",69)),
(_xd("JwYQBhEXQyYCBA8G",99)),
(_xd("9s/V0snK",166)),
(_xd("Ih0NCw==",120)),
(_xd("4NvU3tc=",178)),
(_xd("a1BXTF9NVg==",56)),
(_xd("3sDK",141)),
(_xd("JwsJAgMED0oNHwQ=",106))
}
local _l7CD50AB7E560EF38 = ui.reference(
'Rage', 'Weapon type', 'Weapon type'
)
local _l7555CCC580DCD8F5 = {
ui.reference('Rage', 'Aimbot', 'Enabled')
}
local _l8678D50A5C5A7F61 = {
ui.reference('Rage', 'Aimbot', (_xd("3ub/5/q+4/z6/ec=",147)))
}
local _lD7EF587A5FAC9AF7 = {
ui.reference('Rage', 'Aimbot', 'Minimum damage override')
}
local _lE7623418F810F1E9 = ui.reference(
'Rage', 'Aimbot', (_xd("IQgVBAJHFAYBAkcXCA4JEw==",103))
)
local _lC9A06AB5326ED3F8 = ui.reference(
'Rage', 'Aimbot', 'Force body aim'
)
local _l7E25FC416DC28C4D = {
ui.reference('Rage', 'Aimbot', (_xd("9NDMxs6F1tHK1Q==",165)))
}
local _l61FC31DE8BA547BB = {
ui.reference('Rage', 'Aimbot', 'Double tap')
}
local _l93A0F5D91FBDC005 set_callback(_l777D8FF3F76AC3BE, _lF49235C6F9B029A3, _l861DF5F3FC680167)
if _l861DF5F3FC680167 ~= false then
_l54CCF31CFE02ABC4.set(_l777D8FF3F76AC3BE, _lF49235C6F9B029A3)
else
_l54CCF31CFE02ABC4.unset(_l777D8FF3F76AC3BE, _lF49235C6F9B029A3)
end
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l5F0D0DAE489647E9(_l777D8FF3F76AC3BE)
local _lDDA2D6AE693381B0, _lDDA2D6AE693381B0, key = ui.get(_l777D8FF3F76AC3BE)
local _lA6C286ACC244818D = ui.get(_l7CD50AB7E560EF38)
for i = 1, #_lA1751D8238566CFB do
local _lC483CC400CE8CA31 = _lA1751D8238566CFB[i]
ui.set(_l7CD50AB7E560EF38, _lC483CC400CE8CA31)
local _lDDA2D6AE693381B0, _l2E042F1CBFD735FC = ui.get(_l777D8FF3F76AC3BE)
ui.set(_l777D8FF3F76AC3BE, _l2E042F1CBFD735FC, key or 0)
end
ui.set(_l7CD50AB7E560EF38, _lA6C286ACC244818D)
end
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
set_callback(_l7555CCC580DCD8F5[(16 * 1) / 8], _l5F0D0DAE489647E9, _l861DF5F3FC680167)
set_callback(_l8678D50A5C5A7F61[(2 + (8913 - 8913))], _l5F0D0DAE489647E9, _l861DF5F3FC680167)
set_callback(_lD7EF587A5FAC9AF7[(2 * 1)], _l5F0D0DAE489647E9, _l861DF5F3FC680167)
set_callback(_lE7623418F810F1E9, _l5F0D0DAE489647E9, _l861DF5F3FC680167)
set_callback(_lC9A06AB5326ED3F8, _l5F0D0DAE489647E9, _l861DF5F3FC680167)
set_callback(_l7E25FC416DC28C4D[(2 * 1)], _l5F0D0DAE489647E9, _l861DF5F3FC680167)
set_callback(_l61FC31DE8BA547BB[-(-2)], _l5F0D0DAE489647E9, _l861DF5F3FC680167)
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _l1DAFF73657425735 do
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._l8C72F381EE48E2C7._l1DAFF73657425735
local _lA33B562A6BE6C0A0 = panorama.open().GameStateAPI
local _lF6E75EADCF2CA382 = cvar._lF6E75EADCF2CA382
local _lB52376652805BBF8 = cvar._lB52376652805BBF8
local _lD38E9E7FF93B2AD1 = { }
local _l93A0F5D91FBDC005 _lCF1ADCACA399016C(e)
local _l2285CDFF4F223D3A = client.userid_to_entindex(e._lEF4A947D6622E24D)
if not entity.is_enemy(_l2285CDFF4F223D3A) then
return
end
local _lA1F2508E77D83B63 = _lA33B562A6BE6C0A0.GetPlayerXuidStringFromEntIndex(_l2285CDFF4F223D3A)
if _lA33B562A6BE6C0A0.IsSelectedPlayerMuted(_lA1F2508E77D83B63) then
return
end
if _lF6E75EADCF2CA382:get_int() == 1 then
return
end
if _lB52376652805BBF8:get_int() == 1 then
return
end
client.delay_call(0.2, _l93A0F5D91FBDC005()
if _lD38E9E7FF93B2AD1[_l2285CDFF4F223D3A] ~= nil and math.abs(globals.realtime() - _lD38E9E7FF93B2AD1[_l2285CDFF4F223D3A]) < 0.4 then
return
end
local _l0EE77D618FD86A98 = entity.get_player_resource()
local _l3EDCE768589B402B = entity.get_prop(_l2285CDFF4F223D3A, 'm_szLastPlaceName')
local _lA0C6411A295C3E7C = entity.get_player_name(_l2285CDFF4F223D3A)
local _l2927129126F2C567 = entity.get_prop(_l0EE77D618FD86A98, 'm_iTeam', _l2285CDFF4F223D3A) == -(-2) and "T" or "CT"
local _l9393E863C666EB64 = entity._l3A0196851DA0B630(_l2285CDFF4F223D3A) and (_xd("UHN/",28)) or (_xd("mLm9uA==",220))
local _l9591A67D938F86B3 = string.format(
(_xd("U2NkYnl7dU9TeHFkTzVjTzVj",16)),
_l2927129126F2C567,
_l9393E863C666EB64
)
local _l8EF7B7522B600AFA = localize(_l9591A67D938F86B3, {
s1 = _lA0C6411A295C3E7C,
s2 = e._l9591A67D938F86B3,
s3 = localize(_l3EDCE768589B402B ~= "" and _l3EDCE768589B402B or (_xd("WUVTWWJnYmN7Yg==",12)))
})
chat.print_player(_l2285CDFF4F223D3A, _l8EF7B7522B600AFA)
end)
end
local _l93A0F5D91FBDC005 _l5B6FB3CA6D237717(e)
if not entity.is_enemy(e.entity) then
return
end
_lD38E9E7FF93B2AD1[e.entity] = globals.realtime()
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
_l885AD57970B0DF46.event_callback(
(_xd("qLS5ob2qh6u5oQ==",216)),
_lCF1ADCACA399016C,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
(_xd("x9vWztLF6NTf1sM=",183)),
_l5B6FB3CA6D237717,
_l861DF5F3FC680167
)
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
end
local _l10F9D25E169462C5 do
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._l10F9D25E169462C5
local _l008A7C4AEB52DC36 = (55 * 1) / 11
local _lE3C5B65E7A8907D9 = -(-5)
local _l6FE650B4E9ECB333 = {
[0] = (_xd("AwEKARYNBw==",100)),
[1] = (_xd("JisvKg==",78)),
[-(-2)] = (_xd("tr2wpqE=",213)),
[-(-3)] = (_xd("j4iTkZ2flA==",252)),
[(57261 + 57257 - 57257)] = (_xd("KSAjMWUkNyg=",69)),
[(5 + (8586 - 8586))] = (_xd("7/T69em9/O/w",157)),
[(36 * 1) / 6] = (_xd("HhcUBlIeFxU=",114)),
[(56 * 1) / 8] = (_xd("5/zy/eG1+fDy",149)),
[-(-8)] = (_xd("f3Ryeg==",17)),
[(7879 + 7869 - 7869)] = (_xd("cnB0Zw==",21))
}
local _l8F0EE2CE38D8EA6D = {
[(_xd("LissIyA=",69))] = (_xd("58LFysnI",172)),
[(_xd("BAMLCB8DAg==",109))] = (_xd("3+jv8/j5",157)),
[(_xd("xsvJ3MvAz8rL",174))] = (_xd("OxQREBE=",117))
}
local _l10FE662F32AEA162 = { }
local _l83BBB8C423A9FAD8 = { }
local _l186D40533D418ADC = { }
local _l53CA8D540831661A = 0.0
local _lEEAD9B79C9C80DD3 = ui.reference(
'Misc', 'Miscellaneous', 'Draw console output'
)
local _l8DB9936A646A7D4F = ui.reference(
'Rage', 'Other', (_xd("wOPrrOHl///p/6zo+ems+OOs//z+6e3o",140))
)
local _l93A0F5D91FBDC005 _l8EFE56C97A7F7EBE(_l9591A67D938F86B3, hex)
if (9191*7 - 9191*6 == 9191) then
  local _v14484FD8 = math.sqrt(849944)
  local _v45D3BD81 = string.len(tostring(_v14484FD8))
  if _v45D3BD81 > 5 then _v45D3BD81 = _v45D3BD81 + 1 end
end
return string.format(
(_xd("sPSi9KKwlZSXkISdhQ==",209)),
hex, _l9591A67D938F86B3
)
end
local _l93A0F5D91FBDC005 _l985B09061B525E60(_l9591A67D938F86B3)
local list, _l721ED02EF23C8EA5 = _l2409354FEA52C12D._l424F4D241D652803(_l9591A67D938F86B3)
for i = 1, #list do
local _l5E432A44CEEEFD31 = list[i]
local hex = _l5E432A44CEEEFD31[(2 + (9498 - 9498))] or (_xd("7e3t7e3t6LM=",139))
local col = _l424F4D241D652803(_l885AD57970B0DF46.from_hex(hex))
_l5E432A44CEEEFD31[(2 * 1)] = col
end
return { list = list, _l721ED02EF23C8EA5 = _l721ED02EF23C8EA5 }
end
local _l93A0F5D91FBDC005 _lAEB79A95452729BB(_l9591A67D938F86B3)
local _l16BA1811D6B2327A = (
ref.output:get (_xd("CzgrIDo9",78)) and
ref.events_font:get() == (_xd("IAIJCB8D",109))
)
if not _l16BA1811D6B2327A then
return
end
local _l5E432A44CEEEFD31 = _l985B09061B525E60(_l9591A67D938F86B3)
_l5E432A44CEEEFD31._l3AEEC31C89D75DB3 = (90316 + 90308 - 90308)
table.insert(_l10FE662F32AEA162, _l5E432A44CEEEFD31)
if #_l10FE662F32AEA162 > (6 * 1) then
table.remove(_l10FE662F32AEA162, 1)
end
end
local _l93A0F5D91FBDC005 _l91217F38E6E2ADB3()
for i = 1, #_l10FE662F32AEA162 do
_l10FE662F32AEA162[i] = nil
end
end
local _l93A0F5D91FBDC005 _lC260ACCC4F6E5130()
for i = 1, #_l83BBB8C423A9FAD8 do
_l83BBB8C423A9FAD8[i] = nil
end
end
local _l93A0F5D91FBDC005 _lC957937F99D59D41(_l9591A67D938F86B3)
if not ref.output:get (_xd("UmljYnUnZHVodHRvZm51",7)) then
return
end
local _l5E432A44CEEEFD31 = _l985B09061B525E60(_l9591A67D938F86B3)
local _l0F5191CA1603861C = ref._l0F5191CA1603861C:get() * 0.1
_l5E432A44CEEEFD31._l150437F86297E966 = 0.0
_l5E432A44CEEEFD31._l3AEEC31C89D75DB3 = _l0F5191CA1603861C
table.insert(_l83BBB8C423A9FAD8, 1, _l5E432A44CEEEFD31)
if #_l83BBB8C423A9FAD8 > -(-6) then
table.remove(_l83BBB8C423A9FAD8, #_l83BBB8C423A9FAD8)
end
end
local _l93A0F5D91FBDC005 _l420C5607A2D26946(_l9591A67D938F86B3)
if not ref.output:get (_xd("Qm5vcm5tZA==",1)) then
return
end
local list, _l721ED02EF23C8EA5 = _l2409354FEA52C12D._l424F4D241D652803(_l9591A67D938F86B3)
for i = 1, _l721ED02EF23C8EA5 do
local _l5E432A44CEEEFD31 = list[i]
local str = _l5E432A44CEEEFD31[1]
local hex = _l5E432A44CEEEFD31[(53291 + 53289 - 53289)]
local col = _l424F4D241D652803(_l885AD57970B0DF46.from_hex(hex or (_xd("5ubm5ubm47g=",128))))
if i ~= _l721ED02EF23C8EA5 then
str = str .. '\0'
end
client.color_log(col.r, col.g, col.b, str)
end
end
local _l93A0F5D91FBDC005 _lD83FB7A852D1492A(str)
local hex = _lE4C0F29811DB3FE5._l2E4B112FB8FEDF61(true)
return '\a'.. hex .. '[flux] '..
(_xd("oIWEh4CUjZU=",193)) .. str
end
local _l93A0F5D91FBDC005 _l7E08F3C30D84C62D(fmt, repl)
local _l721ED02EF23C8EA5 = 0
local _lE5AB91D551F383E0 = fmt:gsub((_xd("9fSr+P79+a0=",208)), _l93A0F5D91FBDC005(str)
_l721ED02EF23C8EA5 = _l721ED02EF23C8EA5 + 1
return string.format(
(_xd("RgJUAlRGY2JhZnJrcw==",39)), repl[_l721ED02EF23C8EA5], str
)
end)
return _lE5AB91D551F383E0
end
local _l93A0F5D91FBDC005 _l8AF89CEEA850EF55(id)
return _l6FE650B4E9ECB333[id] or '?'
end
_G.flux_log = _G.flux_log or {}
_l93A0F5D91FBDC005 _G.flux_log.dormant_hit(e)
if not ref._lF8E1754D21D14193:get() then return end
local _lB40CBFA72A25BB98 = ref.console_text_style:get()
local _l2A686CC8ED6C14AC = ref.crosshair_text_style:get()
local _lDB160C0F87126763 = entity.get_player_name(e._lEF4A947D6622E24D)
local _l479DF16E144B4F52 = e.dmg_health or e._l479DF16E144B4F52 or 0
local _l0FBA783AFCAAE5BD = e._l0FBA783AFCAAE5BD or 0
local _l59D0C8EE155CE768 = e._l59D0C8EE155CE768 or 0
local _l79D0C95892EE800B = (_l93A0F5D91FBDC005()
local hex = _lE4C0F29811DB3FE5._l2E4B112FB8FEDF61(true)
return string.format(
(_xd("i6C9oq6hu++nprvv6rzvpqHvu6eq7+q876mgve/qvO+rrqKuqKrv5+q876eqrqO7p++9qqKupqGmoajm",207)),
_l8EFE56C97A7F7EBE(_lDB160C0F87126763, hex),
_l8EFE56C97A7F7EBE(_l8AF89CEEA850EF55(_l59D0C8EE155CE768), hex),
_l8EFE56C97A7F7EBE(_l479DF16E144B4F52, hex),
_l8EFE56C97A7F7EBE(_l0FBA783AFCAAE5BD, hex)
)
end)()
local _lA042723F93601033 = (_l93A0F5D91FBDC005()
local _lCCBCC319E088D27A = _l424F4D241D652803(ref[(_xd("kKW2o6Gw",196))]._l424F4D241D652803:get())
local _lF096E41100205A8B = _l424F4D241D652803(ref['Other']._l424F4D241D652803:get())
local _l59EA73F54022864E = _lCCBCC319E088D27A:to_hex()
local _l7789A3B4F9DFFD82 = _lF096E41100205A8B:to_hex()
return string.format(
(_xd("ORIPEBwTCV0VFAldWA5dA10aDxIIDUddWA5dA10ZHBAcGhhHXVgOXRUN",125)),
_l8EFE56C97A7F7EBE(_lDB160C0F87126763, _l59EA73F54022864E),
_l8EFE56C97A7F7EBE(_l8AF89CEEA850EF55(_l59D0C8EE155CE768), _l7789A3B4F9DFFD82),
_l8EFE56C97A7F7EBE(_l479DF16E144B4F52, _l7789A3B4F9DFFD82)
)
end)()
if _lB40CBFA72A25BB98 == (_xd("eltYX0tSSg==",62)) then
_l420C5607A2D26946(_lD83FB7A852D1492A(_l79D0C95892EE800B))
_lAEB79A95452729BB(_l79D0C95892EE800B)
else
_l420C5607A2D26946(_lD83FB7A852D1492A(_lA042723F93601033))
_lAEB79A95452729BB(_lA042723F93601033)
end
if _l2A686CC8ED6C14AC == (_xd("/t/c28/Wzg==",186)) then
_lC957937F99D59D41(_l79D0C95892EE800B)
else
_lC957937F99D59D41(_lA042723F93601033)
end
end
_l93A0F5D91FBDC005 _G.flux_log.dormant_miss(e)
local _lB40CBFA72A25BB98 = ref.console_text_style:get()
local _l2A686CC8ED6C14AC = ref.crosshair_text_style:get()
local _lDB160C0F87126763 = entity.get_player_name(e._lEF4A947D6622E24D)
local _lFC43AAC56F9209B5 = e.aim_hitbox or '?'
local _l9563DA33B83B7BE4 = e.accuracy or 0
local _l9DC02D47CD061C95 = tostring(math.floor((type(_l9563DA33B83B7BE4)==(_xd("XkVdUlVC",48)) and _l9563DA33B83B7BE4<=1 and _l9563DA33B83B7BE4*(100 * 1) or _l9563DA33B83B7BE4) + 0.5))
local _l79D0C95892EE800B = (_l93A0F5D91FBDC005()
local hex = _lE4C0F29811DB3FE5._l2E4B112FB8FEDF61(true)
return string.format(
(_xd("TWZ7ZGhnfSlkYHp6bG0pLHopdylue2Z8eTMpLHopdyloamp8e2hqcDMpLHosLA==",9)),
_l8EFE56C97A7F7EBE(_lDB160C0F87126763, hex),
_l8EFE56C97A7F7EBE(_lFC43AAC56F9209B5, hex),
_l8EFE56C97A7F7EBE(_l9DC02D47CD061C95, hex)
)
end)()
local _lA042723F93601033 = _l79D0C95892EE800B
if _lB40CBFA72A25BB98 == (_xd("8tPQ18Pawg==",182)) then
_l420C5607A2D26946(_lD83FB7A852D1492A(_l79D0C95892EE800B))
_lAEB79A95452729BB(_l79D0C95892EE800B)
else
_l420C5607A2D26946(_lD83FB7A852D1492A(_lA042723F93601033))
_lAEB79A95452729BB(_lA042723F93601033)
end
if _l2A686CC8ED6C14AC == (_xd("bE1OSV1EXA==",40)) then
_lC957937F99D59D41(_l79D0C95892EE800B)
else
_lC957937F99D59D41(_lA042723F93601033)
end
end
local _l93A0F5D91FBDC005 _lD23453F934AE5F28(_l83D1E862734BF5B9)
if _l83D1E862734BF5B9 == '?' then
_l83D1E862734BF5B9 = (_xd("yN/J1dbM38g=",186))
end
_l83D1E862734BF5B9 = string.format(
(_xd("j9mP2Q==",170)),
_l83D1E862734BF5B9:_l26F7CE0865D5D59E(1, 1):upper(),
_l83D1E862734BF5B9:_l26F7CE0865D5D59E((12 * 1) / 6)
)
return ref[_l83D1E862734BF5B9]
end
local _l93A0F5D91FBDC005 _l2D8CB65854AD18B2(x, y, w, h, _l150437F86297E966)
local _l7470804F9ED59421 = math.floor(0.5 + w * 0.5)
local _l25356C493E16813E = _l424F4D241D652803(0, 0, 0, 0)
local _lBC40EC47D513146C = _l424F4D241D652803(0, 0, 0, (100 * 1) * _l150437F86297E966)
renderer.gradient(
x, y, _l7470804F9ED59421, h,
_l25356C493E16813E.r, _l25356C493E16813E.g, _l25356C493E16813E.b, _l25356C493E16813E.a,
_lBC40EC47D513146C.r, _lBC40EC47D513146C.g, _lBC40EC47D513146C.b, _lBC40EC47D513146C.a,
true
)
renderer.gradient(
x + _l7470804F9ED59421, y, _l7470804F9ED59421, h,
_lBC40EC47D513146C.r, _lBC40EC47D513146C.g, _lBC40EC47D513146C.b, _lBC40EC47D513146C.a,
_l25356C493E16813E.r, _l25356C493E16813E.g, _l25356C493E16813E.b, _l25356C493E16813E.a,
true
)
end
local _l93A0F5D91FBDC005 _l8F0108031BDA9FEA(x, y, w, h, _l150437F86297E966)
local _lBF25F39FB7D8BF2D = 1
local _l7470804F9ED59421 = math.floor(0.5 + w * 0.5)
local _lB67BFAA268323732 = _l424F4D241D652803(0, 0, 0, (50 * 1) * _l150437F86297E966)
local _lBDCD973A7B3E148C = _l424F4D241D652803(0, 0, 0, 0)
renderer.gradient(
x, y, _l7470804F9ED59421, _lBF25F39FB7D8BF2D,
_lBDCD973A7B3E148C.r, _lBDCD973A7B3E148C.g, _lBDCD973A7B3E148C.b, _lBDCD973A7B3E148C.a,
_lB67BFAA268323732.r, _lB67BFAA268323732.g, _lB67BFAA268323732.b, _lB67BFAA268323732.a,
true
)
renderer.gradient(
x + _l7470804F9ED59421, y, _l7470804F9ED59421, _lBF25F39FB7D8BF2D,
_lB67BFAA268323732.r, _lB67BFAA268323732.g, _lB67BFAA268323732.b, _lB67BFAA268323732.a,
_lBDCD973A7B3E148C.r, _lBDCD973A7B3E148C.g, _lBDCD973A7B3E148C.b, _lBDCD973A7B3E148C.a,
true
)
renderer.gradient(
x, y + h - _lBF25F39FB7D8BF2D, _l7470804F9ED59421, _lBF25F39FB7D8BF2D,
_lBDCD973A7B3E148C.r, _lBDCD973A7B3E148C.g, _lBDCD973A7B3E148C.b, _lBDCD973A7B3E148C.a,
_lB67BFAA268323732.r, _lB67BFAA268323732.g, _lB67BFAA268323732.b, _lB67BFAA268323732.a,
true
)
renderer.gradient(
x + _l7470804F9ED59421, y + h - _lBF25F39FB7D8BF2D, _l7470804F9ED59421, _lBF25F39FB7D8BF2D,
_lB67BFAA268323732.r, _lB67BFAA268323732.g, _lB67BFAA268323732.b, _lB67BFAA268323732.a,
_lBDCD973A7B3E148C.r, _lBDCD973A7B3E148C.g, _lBDCD973A7B3E148C.b, _lBDCD973A7B3E148C.a,
true
)
end
local _l93A0F5D91FBDC005 _lF33C2667C98ACD1C()
local _lD877CAA49EA048B6 = globals.frametime()
for i = #_l10FE662F32AEA162, 1, -1 do
local _l5E432A44CEEEFD31 = _l10FE662F32AEA162[i]
_l5E432A44CEEEFD31._l3AEEC31C89D75DB3 = _l5E432A44CEEEFD31._l3AEEC31C89D75DB3 - _lD877CAA49EA048B6
if _l5E432A44CEEEFD31._l3AEEC31C89D75DB3 <= 0 then
table.remove(_l10FE662F32AEA162, i)
end
end
end
local _l93A0F5D91FBDC005 _lF18A85B29B918C9B()
local x = (8 + (4955 - 4955))
local y = (1930 + 1925 - 1925)
local _l81EF4D046AEADF3E = _lFA66AFEB1F2B24C9.text_tall((567 * 1) / 9) + 1
for i = 1, #_l10FE662F32AEA162 do
local _l5E432A44CEEEFD31 = _l10FE662F32AEA162[i]
local _l150437F86297E966 = 1.0
local _lA817DC558B7E6CB6 = _l5E432A44CEEEFD31._l3AEEC31C89D75DB3
if _lA817DC558B7E6CB6 < 0.5 then
local f = _l885AD57970B0DF46.clamp(_lA817DC558B7E6CB6, 0.0, 0.5) / 0.5
if i == 1 and f < 0.2 then
y = y - _l81EF4D046AEADF3E * (1.0 - f / 0.2)
end
_l150437F86297E966 = f
end
local _lF2FDD92B139C0A1D = x
local _l07D87C4FC06A9272 = 0
local _l439022ADE1F18ADF = { }
for j = 1, _l5E432A44CEEEFD31._l721ED02EF23C8EA5 do
local _l10882FB42ED493E0 = _l5E432A44CEEEFD31.list[j]
local _lC176C1643CC513CE = vector(
_lFA66AFEB1F2B24C9.measure_text((63 + (2439 - 2439)), _l10882FB42ED493E0[1])
)
_l439022ADE1F18ADF[j] = _lC176C1643CC513CE
_l07D87C4FC06A9272 = _l07D87C4FC06A9272 + _lC176C1643CC513CE.x
end
local _l7BFBE7B7B7D54BCD = math.floor(0.5 * _l07D87C4FC06A9272)
_lFA66AFEB1F2B24C9._l874D7894D2C9FCDB(_lF2FDD92B139C0A1D, y, _l7BFBE7B7B7D54BCD, _l81EF4D046AEADF3E, 0, 0, 0, 0, 0, 0, 0, (50 + (1674 - 1674)) * _l150437F86297E966, true)
_lFA66AFEB1F2B24C9._l874D7894D2C9FCDB(_lF2FDD92B139C0A1D + _l7BFBE7B7B7D54BCD, y, _l7BFBE7B7B7D54BCD, _l81EF4D046AEADF3E, 0, 0, 0, (66734 + 66684 - 66684) * _l150437F86297E966, 0, 0, 0, 0, true)
for j = 1, _l5E432A44CEEEFD31._l721ED02EF23C8EA5 do
local _l10882FB42ED493E0 = _l5E432A44CEEEFD31.list[j]
local _l9591A67D938F86B3 = _l10882FB42ED493E0[1]
if (3394*7 - 3394*6 == 3394) then
  local _v5FF2F133 = math.sqrt(917393)
  local _v1ED181C9 = string.len(tostring(_v5FF2F133))
  if _v1ED181C9 > 2 then _v1ED181C9 = _v1ED181C9 + 1 end
end
local col = _l10882FB42ED493E0[(2 + (1969 - 1969))]
_lFA66AFEB1F2B24C9._l9591A67D938F86B3((693 * 1) / 11, _lF2FDD92B139C0A1D, y, col.r, col.g, col.b, col.a * _l150437F86297E966, _l9591A67D938F86B3)
_lF2FDD92B139C0A1D = _lF2FDD92B139C0A1D + _l439022ADE1F18ADF[j].x
end
y = y + _l81EF4D046AEADF3E
end
end
local _l93A0F5D91FBDC005 _l0A09B95375EBCE64()
local _lD877CAA49EA048B6 = globals.frametime()
for i = #_l83BBB8C423A9FAD8, 1, -1 do
local _l5E432A44CEEEFD31 = _l83BBB8C423A9FAD8[i]
_l5E432A44CEEEFD31._l3AEEC31C89D75DB3 = _l5E432A44CEEEFD31._l3AEEC31C89D75DB3 - _lD877CAA49EA048B6
if _l5E432A44CEEEFD31._l3AEEC31C89D75DB3 > 0 then
_l5E432A44CEEEFD31._l150437F86297E966 = _l15E0D0F4CA07DE15.interp(
_l5E432A44CEEEFD31._l150437F86297E966, 1, 0.05
)
goto continue
end
_l5E432A44CEEEFD31._l150437F86297E966 = _l15E0D0F4CA07DE15.interp(
_l5E432A44CEEEFD31._l150437F86297E966, 0, 0.05
)
if _l5E432A44CEEEFD31._l150437F86297E966 <= 0.0 then
table.remove(_l83BBB8C423A9FAD8, i)
end
::continue::
end
end
local _l93A0F5D91FBDC005 _lC3EADA00B80BD39D()
local _lB38877B9C9EC66BA = ''
local _l42B4F40833E0955A = vector(
client._l42B4F40833E0955A()
)
local _l1DB180C36A4930A4 = vector(
_l42B4F40833E0955A.x * 0.5,
_l885AD57970B0DF46.lerp(
_l42B4F40833E0955A.y * 0.5 + (50 * 1),
_l42B4F40833E0955A.y - (200 * 1),
ref._lB179AD0D5B6AB17F:get() * 0.01
)
)
local _l671BA392098DA58C = {
unpack(_l83BBB8C423A9FAD8)
}
local _l31F5F344A9DCD023 = (
next(_l671BA392098DA58C) == nil
and ui.is_menu_open()
)
_l53CA8D540831661A = _l15E0D0F4CA07DE15.interp(
_l53CA8D540831661A, _l31F5F344A9DCD023, 0.05
)
if _l53CA8D540831661A > 0.01 then
local _lD75D3219FDCD5C2C = ref.crosshair_text_style:get()
local _l5855BDD94E940BB3 = { }
if _lD75D3219FDCD5C2C == (_xd("VXR3cGR9ZQ==",17)) then
local hex = _lE4C0F29811DB3FE5._l2E4B112FB8FEDF61(true)
table.insert(_l5855BDD94E940BB3, string.format(
(_xd("kbCt+fyq+bC3+a2xvPn8qvm/tqv5/Kr5vbi0uL68+fH8qvmxvLi1rbH5q7y0uLC3sLe+8A==",217)),
_l8EFE56C97A7F7EBE(_lB6CD131F5793FF2D.user, hex),
_l8EFE56C97A7F7EBE((_xd("RUJZW1dVXg==",54)), hex),
_l8EFE56C97A7F7EBE('93', hex),
_l8EFE56C97A7F7EBE('7', hex)
))
table.insert(_l5855BDD94E940BB3, string.format(
(_xd("Kg4UFAIDRxQPCBNHAxICRxMIR0IU",103)),
_l8EFE56C97A7F7EBE((_xd("iYqIn5ue",250)), hex)
))
end
if _lD75D3219FDCD5C2C == (_xd("SGNx",6)) then
local _l742E5DC5DE79CB38 = _lD23453F934AE5F28 (_xd("cVJQR0NG",34))
local _lCCBCC319E088D27A = _l424F4D241D652803(ref[(_xd("DTgrPjwt",89))]._l424F4D241D652803:get())
local _lF096E41100205A8B = _l424F4D241D652803(ref['Other']._l424F4D241D652803:get())
local _lA90E025E0FC923A0 = _l742E5DC5DE79CB38 ~= nil
and _l424F4D241D652803(_l742E5DC5DE79CB38._l424F4D241D652803:get())
or _l424F4D241D652803((255 * 1), -(-32), -(-32), (74303 + 74048 - 74048))
local _l59EA73F54022864E = _lCCBCC319E088D27A:to_hex()
local _l7789A3B4F9DFFD82 = _lF096E41100205A8B:to_hex()
local _lC16C1C32E4208AA7 = _lA90E025E0FC923A0:to_hex()
table.insert(_l5855BDD94E940BB3, string.format(
(_xd("Dy4zZ2I0ZzlnIDUoMjd9Z2I0ZzlnIyYqJiAifWdiNGcvNw==",71)),
_l8EFE56C97A7F7EBE(_lB6CD131F5793FF2D.user, _l59EA73F54022864E),
_l8EFE56C97A7F7EBE((_xd("u7ynpamroA==",200)), _l7789A3B4F9DFFD82),
_l8EFE56C97A7F7EBE('93', _l7789A3B4F9DFFD82)
))
table.insert(_l5855BDD94E940BB3, string.format(
(_xd("BCA6OiwtaWw6aTdpLjsmPDlzaWw6aTdpOywoOiYnc2lsOg==",73)),
_l8EFE56C97A7F7EBE(_lB6CD131F5793FF2D.user, _l59EA73F54022864E),
_l8EFE56C97A7F7EBE((_xd("aG90dnp4cw==",27)), _l7789A3B4F9DFFD82),
_l8EFE56C97A7F7EBE((_xd("wcLA19PW",178)), _lC16C1C32E4208AA7)
))
end
for i = 1, #_l5855BDD94E940BB3 do
local _l5E432A44CEEEFD31 = _l985B09061B525E60(
_l5855BDD94E940BB3[i]
)
_l5E432A44CEEEFD31._l150437F86297E966 = _l53CA8D540831661A
_l5E432A44CEEEFD31._l3AEEC31C89D75DB3 = 0.0
table.insert(_l671BA392098DA58C, _l5E432A44CEEEFD31)
end
end
for i = 1, #_l671BA392098DA58C do
local _l5E432A44CEEEFD31 = _l671BA392098DA58C[i]
local _l150437F86297E966 = _l5E432A44CEEEFD31._l150437F86297E966
local _lFB5BCE0208E07140 = { }
local _lC176C1643CC513CE = vector()
for j = 1, _l5E432A44CEEEFD31._l721ED02EF23C8EA5 do
local _l10882FB42ED493E0 = _l5E432A44CEEEFD31.list[j]
local _lFE56EBC5EB808953 = vector(
renderer.measure_text(_lB38877B9C9EC66BA, _l10882FB42ED493E0[1])
)
_lFB5BCE0208E07140[j] = _lFE56EBC5EB808953
_lC176C1643CC513CE.x = _lC176C1643CC513CE.x + _lFE56EBC5EB808953.x
_lC176C1643CC513CE.y = math.max(_lC176C1643CC513CE.y, _lFE56EBC5EB808953.y)
end
local _lA682E85EA1F74ABE = _lC176C1643CC513CE + vector(
_l008A7C4AEB52DC36 * -(-2), _lE3C5B65E7A8907D9 * (72242 + 72240 - 72240)
)
local _lF824BADA6AF4C0B7 = _lA682E85EA1F74ABE.y + (76802 + 76799 - 76799)
local _l3B74E704E1B9D330 = _l1DB180C36A4930A4:clone()
_l3B74E704E1B9D330.x = _l3B74E704E1B9D330.x - _lA682E85EA1F74ABE.x / (30 * 1) / 15
_l2D8CB65854AD18B2(_l3B74E704E1B9D330.x, _l3B74E704E1B9D330.y, _lA682E85EA1F74ABE.x, _lA682E85EA1F74ABE.y, _l150437F86297E966)
_l8F0108031BDA9FEA(_l3B74E704E1B9D330.x, _l3B74E704E1B9D330.y, _lA682E85EA1F74ABE.x, _lA682E85EA1F74ABE.y, _l150437F86297E966)
local _lB094AB9053040738 = vector(
_l3B74E704E1B9D330.x + _l008A7C4AEB52DC36,
_l3B74E704E1B9D330.y + _lE3C5B65E7A8907D9
)
for j = 1, _l5E432A44CEEEFD31._l721ED02EF23C8EA5 do
local _l10882FB42ED493E0 = _l5E432A44CEEEFD31.list[j]
local _l9591A67D938F86B3 = _l10882FB42ED493E0[1]
local col = _l10882FB42ED493E0[(3411 + 3409 - 3409)]
renderer._l9591A67D938F86B3(
_lB094AB9053040738.x, _lB094AB9053040738.y,
col.r, col.g, col.b, col.a * _l150437F86297E966,
_lB38877B9C9EC66BA, nil, _l9591A67D938F86B3
)
_lB094AB9053040738.x = _lB094AB9053040738.x + _lFB5BCE0208E07140[j].x
end
_l1DB180C36A4930A4.y = _l1DB180C36A4930A4.y + _lF824BADA6AF4C0B7 * _l150437F86297E966
end
end
local _l93A0F5D91FBDC005 _l764803DAF66C0934()
_lF33C2667C98ACD1C()
_lF18A85B29B918C9B()
end
local _l93A0F5D91FBDC005 _l9226C143CB6B57F9()
_l0A09B95375EBCE64()
_lC3EADA00B80BD39D()
end
local _l93A0F5D91FBDC005 _l88C2D874A5CE66EC(e)
local me = entity.get_local_player()
if me == nil then
return
end
local _l3F91B37570C8C309 = globals._lA507B4C75C554CAF() - e.tick
local _l5932CD05EBEE2280 = globals.servertickcount()
_l186D40533D418ADC[e.id] = {
_l637A4033B35D7780 = e,
_l3F91B37570C8C309 = _l3F91B37570C8C309,
_l5932CD05EBEE2280 = _l5932CD05EBEE2280
}
end
local _l93A0F5D91FBDC005 _l684CBFE154FB050B(e)
local _lB2FDC7CE1037773E = e._lB2FDC7CE1037773E
if _lB2FDC7CE1037773E == nil then
return
end
local _lD9A0D3DDBD923016 = _l186D40533D418ADC[e.id]
if _lD9A0D3DDBD923016 == nil then
return
end
local _lB40CBFA72A25BB98 = ref.console_text_style:get()
local _l2A686CC8ED6C14AC = ref.crosshair_text_style:get()
local _l43ED761104D41485 = math.max(globals.servertickcount() - _lD9A0D3DDBD923016._l5932CD05EBEE2280 - 1, 0)
local _l0FBA783AFCAAE5BD = entity.get_prop(_lB2FDC7CE1037773E, 'm_iHealth')
local _l55D90753FCC02703 = entity.get_player_name(_lB2FDC7CE1037773E)
local _l479DF16E144B4F52 = e._l479DF16E144B4F52 or 0
local _l59D0C8EE155CE768 = e._l59D0C8EE155CE768
local _lD2A5EBB76101A435 = _lD9A0D3DDBD923016._l637A4033B35D7780._l479DF16E144B4F52
local _l13C443DA76851E0A = _lD9A0D3DDBD923016._l637A4033B35D7780._l59D0C8EE155CE768
local _l84055FCD5DFCFDAB = _lD9A0D3DDBD923016._l3F91B37570C8C309 or 0
local _l78E03D7E166F7177 = _lD9A0D3DDBD923016._l637A4033B35D7780._l78E03D7E166F7177 or 0
local _l0B6ED4909B8037E8 do
local hex = _lE4C0F29811DB3FE5._l2E4B112FB8FEDF61(true)
_l0B6ED4909B8037E8 = string.format(
(_xd("ORgFUVQCURgfUQUZFFFUAlEXHgNRVAJRFRAcEBYUUVlUAlEZFBAdBRlRAxQcEBgfGB8WWA==",113)),
_l8EFE56C97A7F7EBE(_l55D90753FCC02703, hex),
_l8EFE56C97A7F7EBE(_l8AF89CEEA850EF55(e._l59D0C8EE155CE768), hex),
_l8EFE56C97A7F7EBE(_l479DF16E144B4F52, hex),
_l8EFE56C97A7F7EBE(_l0FBA783AFCAAE5BD, hex)
)
end
local _l829D731737C0901B do
local _lCCBCC319E088D27A = _l424F4D241D652803(ref[(_xd("fUhbTkxd",41))]._l424F4D241D652803:get())
local _lF096E41100205A8B = _l424F4D241D652803(ref['Other']._l424F4D241D652803:get())
local _l59EA73F54022864E = _lCCBCC319E088D27A:to_hex()
local _l7789A3B4F9DFFD82 = _lF096E41100205A8B:to_hex()
local _l12A41B5978BCD37B = { } do
local _l8EAAEA840818832A = '\aABABABFF В· \aDEFAULT'
table.insert(_l12A41B5978BCD37B, string.format((_xd("bmU8JmcjdSNiIyNnQkNAR1NKUg==",6)), _l7789A3B4F9DFFD82, _l78E03D7E166F7177))
table.insert(_l12A41B5978BCD37B, string.format((_xd("vavl/776rPq7q76bmpmeipOL",223)), _l7789A3B4F9DFFD82, _l84055FCD5DFCFDAB))
_l12A41B5978BCD37B.dev = table.concat(_l12A41B5978BCD37B, _l8EAAEA840818832A)
table.insert(_l12A41B5978BCD37B, string.format((_xd("Oi0vcmgpbTttLDwpDA0OCR0EHA==",72)), _l7789A3B4F9DFFD82, _l43ED761104D41485))
_l12A41B5978BCD37B._lBE7F9E5E430364CD = table.concat(_l12A41B5978BCD37B, _l8EAAEA840818832A)
end
local _l9591A67D938F86B3 = { } do
local _lD11618F5BC0F9B90 = string.format((_xd("4qbwpufix8bFwtbP1w==",131)), _l7789A3B4F9DFFD82, _l479DF16E144B4F52)
local _l3CEAC9E1CF2F5B0A = string.format((_xd("SAxaDFpIbWxvaHxlfQ==",41)), _l7789A3B4F9DFFD82, _l8AF89CEEA850EF55(_l59D0C8EE155CE768))
if _l479DF16E144B4F52 ~= _lD2A5EBB76101A435 then
_lD11618F5BC0F9B90 = _lD11618F5BC0F9B90 .. string.format((_xd("0Jndi92cmby9vrmttKzR",248)), _l7789A3B4F9DFFD82, _lD2A5EBB76101A435)
end
if _l59D0C8EE155CE768 ~= _l13C443DA76851E0A then
_l3CEAC9E1CF2F5B0A = _l3CEAC9E1CF2F5B0A .. string.format((_xd("mdCUwpTC0PX09/Dk/eWY",177)), _l7789A3B4F9DFFD82, _l8AF89CEEA850EF55(_l13C443DA76851E0A))
end
local _l73FF32D5F460463F = { _l59EA73F54022864E }
local _l9F7AE2804108C02A = string.format((_xd("3v/itrLts+Xrtui28eT54+astrPltui28vf79/HzrLaz5bb+5rbNs+XL",150)), _l55D90753FCC02703, _l3CEAC9E1CF2F5B0A, _lD11618F5BC0F9B90, _l12A41B5978BCD37B.dev)
local _l81456C43D543FF8B = string.format((_xd("iKm04OS75bO94L7gp7KvtbD64OWz4L7gpKGtoael+uDls+CosOCb5bOd",192)), _l55D90753FCC02703, _l3CEAC9E1CF2F5B0A, _lD11618F5BC0F9B90, _l12A41B5978BCD37B._lBE7F9E5E430364CD)
local _l686A9AC66E2046B6 = string.format((_xd("oYCdyc2SzJqUyZfJjpuGnJnTycyayZfJjYiEiI6M08nMmsmBmQ==",233)), _l55D90753FCC02703, _l3CEAC9E1CF2F5B0A, _lD11618F5BC0F9B90)
_l9591A67D938F86B3.dev = _l7E08F3C30D84C62D(_l9F7AE2804108C02A, _l73FF32D5F460463F)
_l9591A67D938F86B3._lBE7F9E5E430364CD = _l7E08F3C30D84C62D(_l81456C43D543FF8B, _l73FF32D5F460463F)
_l9591A67D938F86B3.log = _l7E08F3C30D84C62D(_l686A9AC66E2046B6, _l73FF32D5F460463F)
end
_l829D731737C0901B = _l9591A67D938F86B3
end
if _lB40CBFA72A25BB98 == (_xd("2fj7/Ojx6Q==",157)) then
_l420C5607A2D26946(_lD83FB7A852D1492A(_l0B6ED4909B8037E8))
_lAEB79A95452729BB(_l0B6ED4909B8037E8)
elseif _lB40CBFA72A25BB98 == (_xd("Yklb",44)) then
_l420C5607A2D26946(_lD83FB7A852D1492A(_l829D731737C0901B._lBE7F9E5E430364CD))
_lAEB79A95452729BB(_l829D731737C0901B.dev)
end
if _l2A686CC8ED6C14AC == (_xd("iairrLihuQ==",205)) then
_lC957937F99D59D41(_l0B6ED4909B8037E8)
elseif _l2A686CC8ED6C14AC == (_xd("PxQG",113)) then
_lC957937F99D59D41(_l829D731737C0901B.log)
end
end
local _l93A0F5D91FBDC005 _l5FEAB483A25F962A(e)
local me = entity.get_local_player()
if me == nil then
return
end
local _lB2FDC7CE1037773E = e._lB2FDC7CE1037773E
if _lB2FDC7CE1037773E == nil then
return
end
local _lD9A0D3DDBD923016 = _l186D40533D418ADC[e.id]
if _lD9A0D3DDBD923016 == nil then
return
end
local _l83D1E862734BF5B9 = e._l83D1E862734BF5B9
local _l55D90753FCC02703 = entity.get_player_name(_lB2FDC7CE1037773E)
local _l13C443DA76851E0A = _lD9A0D3DDBD923016._l637A4033B35D7780._l59D0C8EE155CE768
local _l84055FCD5DFCFDAB = _lD9A0D3DDBD923016._l3F91B37570C8C309 or 0
local _l78E03D7E166F7177 = _lD9A0D3DDBD923016._l637A4033B35D7780._l78E03D7E166F7177 or 0
if _l83D1E862734BF5B9 == '?' then
_l83D1E862734BF5B9 = (_xd("BRIEGBsBEgU=",119))
end
local _lB40CBFA72A25BB98 = ref.console_text_style:get()
local _l2A686CC8ED6C14AC = ref.crosshair_text_style:get()
local _l0B6ED4909B8037E8 = string.format(
(_xd("Ayc9PSsqbj0mITpuKjsrbjohbms9",78)), _l83D1E862734BF5B9
)
local _l829D731737C0901B do
local _l742E5DC5DE79CB38 = _lD23453F934AE5F28(_l83D1E862734BF5B9)
local _lCCBCC319E088D27A = _l424F4D241D652803(ref[(_xd("IBUGExEA",116))]._l424F4D241D652803:get())
local _lF096E41100205A8B = _l424F4D241D652803(ref['Other']._l424F4D241D652803:get())
local _lA90E025E0FC923A0 = _l742E5DC5DE79CB38 ~= nil
and _l424F4D241D652803(_l742E5DC5DE79CB38._l424F4D241D652803:get())
or _l424F4D241D652803((255 * 1), -(-32), (32 + (6661 - 6661)), (86494 + 86239 - 86239))
local _l59EA73F54022864E = _lCCBCC319E088D27A:to_hex()
local _l7789A3B4F9DFFD82 = _lF096E41100205A8B:to_hex()
local _lC16C1C32E4208AA7 = _lA90E025E0FC923A0:to_hex()
local _l12A41B5978BCD37B do
local list = { }
table.insert(list, string.format((_xd("WVILEVAUQhRVFBRQdXR3cGR9ZQ==",49)), _l7789A3B4F9DFFD82, _l78E03D7E166F7177))
table.insert(list, string.format((_xd("loDO1JXRh9GQgJWwsbK1obig",244)), _l7789A3B4F9DFFD82, _l84055FCD5DFCFDAB))
_l12A41B5978BCD37B = table.concat(list, '\aABABABFF В· \aDEFAULT')
end
local _l9591A67D938F86B3 = { } do
local _l73FF32D5F460463F = { _l59EA73F54022864E, _l7789A3B4F9DFFD82, _lC16C1C32E4208AA7 }
local _l3CEAC9E1CF2F5B0A = _l8AF89CEEA850EF55(_l13C443DA76851E0A)
local _l9F7AE2804108C02A = string.format((_xd("mr6kpLKz9/Os8qSq96n3sKW4oqft9/Os8qSq96n3pbK2pLi57ffzrPKkqveM8qSK",215)), _l55D90753FCC02703, _l3CEAC9E1CF2F5B0A, _l83D1E862734BF5B9, _l12A41B5978BCD37B)
local _l81456C43D543FF8B = string.format((_xd("DiowMCYnY2c4ZjA+Yz1jJDEsNjN5Y2c4ZjA+Yz1jMSYiMCwteWNnOGYwPmMYZjAe",67)), _l55D90753FCC02703, _l3CEAC9E1CF2F5B0A, _l83D1E862734BF5B9, _l12A41B5978BCD37B)
local _l686A9AC66E2046B6 = string.format((_xd("pYGbm42MyMyTzZuVyJbIj5qHnZjSyMyTzZuVyJbImo2Jm4eG0sjMk82blQ==",232)), _l55D90753FCC02703, _l3CEAC9E1CF2F5B0A, _l83D1E862734BF5B9)
_l9591A67D938F86B3.dev = _l7E08F3C30D84C62D(_l9F7AE2804108C02A, _l73FF32D5F460463F)
_l9591A67D938F86B3._lBE7F9E5E430364CD = _l7E08F3C30D84C62D(_l81456C43D543FF8B, _l73FF32D5F460463F)
_l9591A67D938F86B3.log = _l7E08F3C30D84C62D(_l686A9AC66E2046B6, _l73FF32D5F460463F)
end
_l829D731737C0901B = _l9591A67D938F86B3
end
if _lB40CBFA72A25BB98 == (_xd("e1pZXkpTSw==",63)) then
_l420C5607A2D26946(_lD83FB7A852D1492A(_l0B6ED4909B8037E8))
_lAEB79A95452729BB(_l0B6ED4909B8037E8)
elseif _lB40CBFA72A25BB98 == (_xd("S2By",5)) then
_l420C5607A2D26946(_lD83FB7A852D1492A(_l829D731737C0901B._lBE7F9E5E430364CD))
_lAEB79A95452729BB(_l829D731737C0901B.dev)
end
if _l2A686CC8ED6C14AC == (_xd("T25tan5nfw==",11)) then
_lC957937F99D59D41(_l0B6ED4909B8037E8)
elseif _l2A686CC8ED6C14AC == (_xd("58ze",169)) then
_lC957937F99D59D41(_l829D731737C0901B.log)
end
end
local _l93A0F5D91FBDC005 _lE5C99BB6AF71BA94(e)
local me = entity.get_local_player()
local _lEF4A947D6622E24D = client.userid_to_entindex(e._lEF4A947D6622E24D)
local _l97D87A44F00AA199 = client.userid_to_entindex(e._l97D87A44F00AA199)
if me == _lEF4A947D6622E24D or me ~= _l97D87A44F00AA199 then
return
end
local _l439B71FD920DE529 = _l8F0EE2CE38D8EA6D[e._lC483CC400CE8CA31]
if _l439B71FD920DE529 == nil then
return
end
local _lDB160C0F87126763 = entity.get_player_name(_lEF4A947D6622E24D)
local _l0FBA783AFCAAE5BD = e._l0FBA783AFCAAE5BD
local _l479DF16E144B4F52 = e.dmg_health
local _lB40CBFA72A25BB98 = ref.console_text_style:get()
local _l2A686CC8ED6C14AC = ref.crosshair_text_style:get()
local _l0B6ED4909B8037E8 do
local hex = _lE4C0F29811DB3FE5._l2E4B112FB8FEDF61(true)
_l0B6ED4909B8037E8 = string.format(
(_xd("WQ9cWQ9cGhMOXFkPXBgdER0bGQ==",124)),
_l439B71FD920DE529,
_l8EFE56C97A7F7EBE(_lDB160C0F87126763, hex),
_l8EFE56C97A7F7EBE(_l479DF16E144B4F52, hex)
)
end
local _l829D731737C0901B do
local _lCCBCC319E088D27A = _l424F4D241D652803(ref[(_xd("MwYVAAIT",103))]._l424F4D241D652803:get())
local _lF096E41100205A8B = _l424F4D241D652803(ref['Other']._l424F4D241D652803:get())
local _l59EA73F54022864E = _lCCBCC319E088D27A:to_hex()
local _l7789A3B4F9DFFD82 = _lF096E41100205A8B:to_hex()
local _l9591A67D938F86B3 = string.format((_xd("E0UWEk0TRUsWUFlEFhJNE1JLFlJXW1dRUxYeEk0TUksWXlNXWkJeFkRTW1dfWF9YUR8=",54)), _l439B71FD920DE529, _lDB160C0F87126763, _l479DF16E144B4F52, _l0FBA783AFCAAE5BD) do
_l9591A67D938F86B3 = _l7E08F3C30D84C62D(_l9591A67D938F86B3, { _l59EA73F54022864E, _l7789A3B4F9DFFD82, _l7789A3B4F9DFFD82 })
end
_l829D731737C0901B = _l9591A67D938F86B3
end
if _lB40CBFA72A25BB98 == (_xd("nr+8u6+2rg==",218)) then
_l420C5607A2D26946(_lD83FB7A852D1492A(_l0B6ED4909B8037E8))
_lAEB79A95452729BB(_l0B6ED4909B8037E8)
elseif _lB40CBFA72A25BB98 == (_xd("FT4s",91)) then
_l420C5607A2D26946(_lD83FB7A852D1492A(_l829D731737C0901B))
_lAEB79A95452729BB(_l829D731737C0901B)
end
if _l2A686CC8ED6C14AC == (_xd("bk9MS19GXg==",42)) then
_lC957937F99D59D41(_l0B6ED4909B8037E8)
elseif _l2A686CC8ED6C14AC == (_xd("CiEz",68)) then
_lC957937F99D59D41(_l829D731737C0901B)
end
end
local _l93A0F5D91FBDC005 _l7BB7A31B3F890460(e)
local _lEF4A947D6622E24D = client.userid_to_entindex(e._lEF4A947D6622E24D)
if _lEF4A947D6622E24D == nil or not entity.is_enemy(_lEF4A947D6622E24D) then
return
end
local _lC483CC400CE8CA31 = e._lC483CC400CE8CA31
if _lC483CC400CE8CA31 == (_xd("eGpuf2BhUHphZGFgeGE=",15)) then
return
end
local _lDB160C0F87126763 = entity.get_player_name(_lEF4A947D6622E24D)
local _lB40CBFA72A25BB98 = ref.console_text_style:get()
local _l2A686CC8ED6C14AC = ref.crosshair_text_style:get()
local _l0B6ED4909B8037E8 do
local hex = _lE4C0F29811DB3FE5._l2E4B112FB8FEDF61(true)
_l0B6ED4909B8037E8 = string.format(
(_xd("0IbVl5qAkp2B1dCG",245)),
_l8EFE56C97A7F7EBE(_lDB160C0F87126763, hex),
_l8EFE56C97A7F7EBE(_lC483CC400CE8CA31, hex)
)
end
local _l829D731737C0901B do
local _lCCBCC319E088D27A = _l424F4D241D652803(ref[(_xd("PQgbDgwd",105))]._l424F4D241D652803:get())
local _lF096E41100205A8B = _l424F4D241D652803(ref['Other']._l424F4D241D652803:get())
local _l59EA73F54022864E = _lCCBCC319E088D27A:to_hex()
local _l7789A3B4F9DFFD82 = _lF096E41100205A8B:to_hex()
_l829D731737C0901B = string.format(
(_xd("2I7dn5KImpWJ3diO",253)),
_l8EFE56C97A7F7EBE(_lDB160C0F87126763, _l59EA73F54022864E),
_l8EFE56C97A7F7EBE(_lC483CC400CE8CA31, _l7789A3B4F9DFFD82)
)
end
if _lB40CBFA72A25BB98 == (_xd("Px4dGg4XDw==",123)) then
_l420C5607A2D26946(_lD83FB7A852D1492A(_l0B6ED4909B8037E8))
_lAEB79A95452729BB(_l0B6ED4909B8037E8)
elseif _lB40CBFA72A25BB98 == (_xd("U3hq",29)) then
_l420C5607A2D26946(_lD83FB7A852D1492A(_l829D731737C0901B))
_lAEB79A95452729BB(_l829D731737C0901B)
end
if _l2A686CC8ED6C14AC == (_xd("JQQHABQNFQ==",97)) then
_lC957937F99D59D41(_l0B6ED4909B8037E8)
elseif _l2A686CC8ED6C14AC == (_xd("c1hK",61)) then
_lC957937F99D59D41(_l829D731737C0901B)
end
end
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
if not _l861DF5F3FC680167 then
_l885AD57970B0DF46.event_callback('paint_ui', _l764803DAF66C0934, false)
_l885AD57970B0DF46.event_callback('paint_ui', _l9226C143CB6B57F9, false)
_l885AD57970B0DF46.event_callback('aim_fire', _l88C2D874A5CE66EC, false)
_l885AD57970B0DF46.event_callback('aim_hit', _l684CBFE154FB050B, false)
_l885AD57970B0DF46.event_callback((_xd("h4+LuYuPlZU=",230)), _l5FEAB483A25F962A, false)
_l885AD57970B0DF46.event_callback('player_hurt', _lE5C99BB6AF71BA94, false)
_l885AD57970B0DF46.event_callback((_xd("uKW0vI6hpKOyubCitA==",209)), _l7BB7A31B3F890460, false)
_lC260ACCC4F6E5130()
end
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _lE6219D12275610EC(_l777D8FF3F76AC3BE)
local _l455834B4D214484C = _l777D8FF3F76AC3BE:get() == (_xd("Px0WFwAc",114))
local _lA39399420013BD34 = _l777D8FF3F76AC3BE:get() == (_xd("5cTHwNTN1Q==",161))
if not _l455834B4D214484C then
_l91217F38E6E2ADB3()
end
_l885AD57970B0DF46.event_callback(
'paint_ui',
_l764803DAF66C0934,
_l455834B4D214484C
)
_l002C9C644F32C5C8.unset(_lEEAD9B79C9C80DD3)
if _l455834B4D214484C then
_l002C9C644F32C5C8.set(_lEEAD9B79C9C80DD3, false)
end
if _lA39399420013BD34 then
_l002C9C644F32C5C8.set(_lEEAD9B79C9C80DD3, true)
end
end
local _l93A0F5D91FBDC005 _l28BA176C4315785C(_l777D8FF3F76AC3BE)
local _l94F046321ECAED11 = _l777D8FF3F76AC3BE:get 'Aimbot'
local _l6BFF2127B0D7C981 = _l777D8FF3F76AC3BE:get (_xd("GTw7KiEoOiw=",73))
_l885AD57970B0DF46.event_callback(
'aim_fire',
_l88C2D874A5CE66EC,
_l94F046321ECAED11
)
_l885AD57970B0DF46.event_callback(
'aim_hit',
_l684CBFE154FB050B,
_l94F046321ECAED11
)
_l885AD57970B0DF46.event_callback(
(_xd("8fn9z/354+M=",144)),
_l5FEAB483A25F962A,
_l94F046321ECAED11
)
_l885AD57970B0DF46.event_callback(
'player_hurt',
_lE5C99BB6AF71BA94,
_l94F046321ECAED11
)
_l885AD57970B0DF46.event_callback(
(_xd("noOSmqiHgoWUn5aEkg==",247)),
_l7BB7A31B3F890460,
_l6BFF2127B0D7C981
)
end
local _l93A0F5D91FBDC005 _l600EF6178E749BC7(_l777D8FF3F76AC3BE)
local _lEA80CDFEAD144DF3 = _l777D8FF3F76AC3BE:get (_xd("+8jb0MrN",190))
local _lA06694EAE311AF6A = _l777D8FF3F76AC3BE:get (_xd("uoGLip3PjJ2AnJyHjoad",239))
if not _lEA80CDFEAD144DF3 then
_l885AD57970B0DF46.event_callback(
'paint_ui',
_l764803DAF66C0934,
false
)
_l002C9C644F32C5C8.unset(_lEEAD9B79C9C80DD3)
_l91217F38E6E2ADB3()
end
if _lEA80CDFEAD144DF3 then
ref.events_font:set_callback(_lE6219D12275610EC, true)
else
ref.events_font:unset_callback(_lE6219D12275610EC)
end
if not _lA06694EAE311AF6A then
_lC260ACCC4F6E5130()
end
_l885AD57970B0DF46.event_callback(
'paint_ui',
_l9226C143CB6B57F9,
_lA06694EAE311AF6A
)
end
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
if not _l861DF5F3FC680167 then
_l91217F38E6E2ADB3()
_l002C9C644F32C5C8.unset(_lEEAD9B79C9C80DD3)
ref.events_font:unset_callback(_lE6219D12275610EC)
end
if _l861DF5F3FC680167 then
_l002C9C644F32C5C8.set(_l8DB9936A646A7D4F, false)
else
_l002C9C644F32C5C8.unset(_l8DB9936A646A7D4F)
end
if _l861DF5F3FC680167 then
ref.output:set_callback(_l600EF6178E749BC7, true)
ref.events:set_callback(_l28BA176C4315785C, true)
else
ref.events:unset_callback(_l28BA176C4315785C)
ref.output:unset_callback(_l600EF6178E749BC7)
end
_l1F975C44CE40652A(_l861DF5F3FC680167)
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _lAB5A7D2F3F3EE3D1 do
local ref = _l934A3DF2B1DD218E._lBD5F403BA71FC9C6._lAB5A7D2F3F3EE3D1
local _lEEEF9F4CC9E02702 = cvar._lEEEF9F4CC9E02702
local _l6E3D40D0BA3F2AF0 = {
[(_xd("y93a",138))] = (_xd("OC4p",89)),
[(_xd("qpqWjI0=",249))] = (_xd("n5+L3NQ=",236)),
[(_xd("n+uLn+n49/iLm5mK9ero",216))] = (_xd("qrq4q+vp",217))
}
local _l0B0D0C9E33700B71 = {
[(_xd("lvTz9g==",198))] = (_xd("IWNkYQ==",81)),
[(_xd("ZUxJVEVT",32))] = (_xd("sbi9oLE=",212)),
[(_xd("KwQbCEAeCBsIA01CTTkIDkBUTUJNLjdaWA==",109))] = (_xd("qKD7+Q==",206)),
[(_xd("SWhsamFoLSItX2h7YmF7aH8=",13))] = (_xd("CwoOCAMK",111))
}
local _l0D8C3864642DC44F = {
[(_xd("HjAjOTQn",85))] = (_xd("WEtdWg==",46)),
[(_xd("893O1NnKmJOY8N3U1d3M",184))] = (_xd("JzQiJTk0PTw=",81)),
[(_xd("ByYlNjAmYygqNw==",67))] = (_xd("GRgbCA4YDw==",125)),
['HE'] = (_xd("8v/96P/0+/7/",154)),
[(_xd("4tze2tQ=",177))] = (_xd("jZORlZuZjJuQn5qb",254)),
[(_xd("FDY1Ni02Lw==",89))] = (_xd("d3V2dW51bA==",26)),
[(_xd("r5qInok=",251))] = (_xd("kYSWgJc=",229))
}
local _l93A0F5D91FBDC005 _l85CA0CC38FE4D783()
local me = entity.get_local_player()
if me == nil then
return
end
local _l2CF2939DEC376E88 = entity.get_prop(
me, 'm_iAccount'
)
if ref.ignore_pistol_round:get() then
if _l2CF2939DEC376E88 <= (1000 * 1) then
return false
end
end
if ref.only_16k:get() then
local _l3B378D83B14F22DB = _lEEEF9F4CC9E02702:get_int()
return _l2CF2939DEC376E88 >= (272000 * 1) / 17
or _l3B378D83B14F22DB >= (61521 + 45521 - 45521)
end
return true
end
local _l93A0F5D91FBDC005 _l8B8BD08C3EA062E0()
local me = entity.get_local_player()
if me == nil then
return false
end
local _lA1751D8238566CFB = _l885AD57970B0DF46.get_player_weapons(me)
for i = 1, #_lA1751D8238566CFB do
local _lC483CC400CE8CA31 = _lA1751D8238566CFB[i]
local _lCE07FAFEC1C163B4 = csgo_weapons(_lC483CC400CE8CA31)
if _lCE07FAFEC1C163B4 == nil then
goto continue
end
local _lEFEA059C601F096C = _lCE07FAFEC1C163B4.idx
if _lEFEA059C601F096C == (24457 + 24448 - 24448) then
return false
end
::continue::
end
return true
end
local _l93A0F5D91FBDC005 _l5F2F27BC8FF174C7(list)
local _l777D8FF3F76AC3BE = _l6E3D40D0BA3F2AF0[
ref.primary:get()
]
if _l777D8FF3F76AC3BE == nil then
return
end
if _l777D8FF3F76AC3BE == (_xd("bnh/",15)) then
local _l93A0F5D91FBDC005 _lC0F9746A0375403A()
if not _l8B8BD08C3EA062E0() then
return
end
local _lEB6ABF09D21EDF73 = _l6E3D40D0BA3F2AF0[
ref.alternative:get()
]
if _lEB6ABF09D21EDF73 == nil then
return
end
client.exec((_xd("MiUpcA==",80)) .. _lEB6ABF09D21EDF73)
end
local _l0F5191CA1603861C = client.latency() + 0.15
client.delay_call(_l0F5191CA1603861C, _lC0F9746A0375403A)
end
table.insert(list, _l777D8FF3F76AC3BE)
end
local _l93A0F5D91FBDC005 _lC52EE9EAB0ACF7F0(list)
local _l777D8FF3F76AC3BE = _l0B0D0C9E33700B71[
ref.secondary:get()
]
if _l777D8FF3F76AC3BE ~= nil then
table.insert(list, _l777D8FF3F76AC3BE)
end
end
local _l93A0F5D91FBDC005 _l054641D214073C69(list)
local _l14F641CF3F2B2562 = ref.equipment:get()
for i = 1, #_l14F641CF3F2B2562 do
local _l861DF5F3FC680167 = _l0D8C3864642DC44F[
_l14F641CF3F2B2562[i]
]
if _l861DF5F3FC680167 ~= nil then
table.insert(list, _l861DF5F3FC680167)
end
end
end
local _l93A0F5D91FBDC005 _lD1F456654B7D9EE0()
if not _l85CA0CC38FE4D783() then
return
end
local list = { }
_l5F2F27BC8FF174C7(list)
_lC52EE9EAB0ACF7F0(list)
_l054641D214073C69(list)
local _l8B402901297FB4F9 = ''
for i = 1, #list do
local _l777D8FF3F76AC3BE = list[i]
_l8B402901297FB4F9 = _l8B402901297FB4F9 .. string.format(
(_xd("4vX5oKXzuw==",128)), _l777D8FF3F76AC3BE
)
end
if _l8B402901297FB4F9 ~= '' then
client.exec(_l8B402901297FB4F9)
end
end
local _l93A0F5D91FBDC005 _l015851B0D01477B5()
client.delay_call(client.latency() + _lEDE388F8AFCB327E((44457 + 44449 - 44449)), _lD1F456654B7D9EE0)
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
_l885AD57970B0DF46.event_callback(
(_xd("DxIIExkiDQ8YDgkcDwk=",125)),
_l015851B0D01477B5,
_l777D8FF3F76AC3BE:get()
)
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
end
_l422CA01953F92F19((_xd("qK+6vL776uv79vu2urK1+72+uq+uqb6o+/Opury+9/u2sqi49/u3tLy8srW88g==",219)))
local _l22887641E343368B = { } do
local _l48BBC12929FEE619 = 0
local _l4F6DF039D5247F95 = false
local _l9E652E207DDB721D = 0
local _lF6D025BF9445EF38 = {
-1, 1, 0,
-1, 1, 0,
-1, 0, 1,
-1, 0, 1
}
local _l10882FB42ED493E0 = { } do
local ref = _lE4C0F29811DB3FE5.antiaimbot._l54FCA590490245EE
local _l93A0F5D91FBDC005 _l2B6E4098ABF8BC88(_l777D8FF3F76AC3BE, ...)
if ... == nil then
return
end
_l002C9C644F32C5C8.set(_l777D8FF3F76AC3BE, ...)
end
local _l25FD7E0D414A2F31 = { } do
_l25FD7E0D414A2F31._l6BC954908A843096 = _l25FD7E0D414A2F31
_l93A0F5D91FBDC005 _l25FD7E0D414A2F31:clear()
for k in pairs(self) do
self[k] = nil
end
end
_l93A0F5D91FBDC005 _l25FD7E0D414A2F31:_l5B75403142A2939E(_lB2FDC7CE1037773E)
for k, v in pairs(_lB2FDC7CE1037773E) do
self[k] = v
end
end
_l93A0F5D91FBDC005 _l25FD7E0D414A2F31:unset()
_l002C9C644F32C5C8.unset(ref._lB6F5466E95879823)
_l002C9C644F32C5C8.unset(ref._l8C975ACFD6C1C204[(60207 + 60205 - 60205)])
_l002C9C644F32C5C8.unset(ref._l8C975ACFD6C1C204[1])
_l002C9C644F32C5C8.unset(ref._lA550371056A1793A)
_l002C9C644F32C5C8.unset(ref._l647607ED8A0477C6)
_l002C9C644F32C5C8.unset(ref._l853F969D9C31B6DE[(18840 + 18838 - 18838)])
_l002C9C644F32C5C8.unset(ref._l853F969D9C31B6DE[1])
_l002C9C644F32C5C8.unset(ref._l6F49EB461422B562[(2 * 1)])
_l002C9C644F32C5C8.unset(ref._l6F49EB461422B562[1])
_l002C9C644F32C5C8.unset(ref._l16B2581F24D0AB49[(2 * 1)])
_l002C9C644F32C5C8.unset(ref._l16B2581F24D0AB49[1])
_l002C9C644F32C5C8.unset(ref.yaw_base)
_l002C9C644F32C5C8.unset(ref._l46AA6D7987AE7B3A[(73679 + 73677 - 73677)])
_l002C9C644F32C5C8.unset(ref._l46AA6D7987AE7B3A[1])
_l002C9C644F32C5C8.unset(ref._lF8E1754D21D14193)
end
_l93A0F5D91FBDC005 _l25FD7E0D414A2F31:set()
if self.pitch_offset ~= nil then
self.pitch_offset = _l885AD57970B0DF46.clamp(
self.pitch_offset, -(801 * 1) / 9, (3796 + 3707 - 3707)
)
end
if self._l8D93B57A952D5141 ~= nil then
self._l8D93B57A952D5141 = _l885AD57970B0DF46.normalize(
self._l8D93B57A952D5141, --(-180), -(-180)
)
end
if self._l89693BE9BF8E2A57 ~= nil then
self._l89693BE9BF8E2A57 = _l885AD57970B0DF46.normalize(
self._l89693BE9BF8E2A57, -(86769 + 86589 - 86589), (180 + (8408 - 8408))
)
end
if self._lE1A0F2049757CCF5 ~= nil then
self._lE1A0F2049757CCF5 = _l885AD57970B0DF46.clamp(
self._lE1A0F2049757CCF5, -(900 * 1) / 5, (180 * 1)
)
end
_l2B6E4098ABF8BC88(ref._lF8E1754D21D14193, self._lF8E1754D21D14193)
_l2B6E4098ABF8BC88(ref._l46AA6D7987AE7B3A[1], self._l46AA6D7987AE7B3A)
_l2B6E4098ABF8BC88(ref._l46AA6D7987AE7B3A[(2 * 1)], self.pitch_offset)
_l2B6E4098ABF8BC88(ref.yaw_base, self.yaw_base)
_l2B6E4098ABF8BC88(ref._l6F49EB461422B562[1], self._l6F49EB461422B562)
_l2B6E4098ABF8BC88(ref._l6F49EB461422B562[(87013 + 87011 - 87011)], self._l8D93B57A952D5141)
_l2B6E4098ABF8BC88(ref._l16B2581F24D0AB49[1], self._l16B2581F24D0AB49)
_l2B6E4098ABF8BC88(ref._l16B2581F24D0AB49[-(-2)], self._l89693BE9BF8E2A57)
_l2B6E4098ABF8BC88(ref._l853F969D9C31B6DE[1], self._l853F969D9C31B6DE)
_l2B6E4098ABF8BC88(ref._l853F969D9C31B6DE[(45402 + 45400 - 45400)], self._lE1A0F2049757CCF5)
_l2B6E4098ABF8BC88(ref._l647607ED8A0477C6, self._l647607ED8A0477C6)
_l2B6E4098ABF8BC88(ref._lA550371056A1793A, self._lA550371056A1793A)
if self._l8C975ACFD6C1C204 == true then
_l2B6E4098ABF8BC88(ref._l8C975ACFD6C1C204[1], true)
_l2B6E4098ABF8BC88(ref._l8C975ACFD6C1C204[(60297 + 60295 - 60295)], 'Always on')
elseif self._l8C975ACFD6C1C204 == false then
_l2B6E4098ABF8BC88(ref._l8C975ACFD6C1C204[1], false)
_l2B6E4098ABF8BC88(ref._l8C975ACFD6C1C204[(18 * 1) / 9], 'On hotkey')
end
_l2B6E4098ABF8BC88(ref._lB6F5466E95879823, self._lB6F5466E95879823)
end
end
setmetatable(_l10882FB42ED493E0, _l25FD7E0D414A2F31)
_l22887641E343368B._l10882FB42ED493E0 = _l10882FB42ED493E0
end
local _lC3DEF9996526AC6D = { } do
local ref = _l934A3DF2B1DD218E._l22887641E343368B._lCAAFBE4F1A7B03D0._lC3DEF9996526AC6D
local _l93A0F5D91FBDC005 _l97DD4D5958BF34A1()
return ref._lF8E1754D21D14193:get()
end
local _l9E00BF1A11A98DBE = 0
local _l93A0F5D91FBDC005 _l2C45E88C62A05291(me, _l8AD7384010DCDC10)
local _lC4B7C52BE7EA9270 = entity.get_prop(me, 'm_iHealth') or 0
if _lC4B7C52BE7EA9270 <= 0 then
return false
end
local _lEAAD06EF9C543A94, ey, ez = _l885AD57970B0DF46.get_eye_position(_l8AD7384010DCDC10)
if _lEAAD06EF9C543A94 == nil then
return nil
end
local _l095B173B519F4884, hy, hz = entity.hitbox_position(me, 0)
if _l095B173B519F4884 == nil then
return nil
end
local _lD5D485576A3C9DAF, _l479DF16E144B4F52 = client.trace_bullet(_l8AD7384010DCDC10, _lEAAD06EF9C543A94, ey, ez, _l095B173B519F4884, hy, hz, false)
if _lD5D485576A3C9DAF ~= me then
_l479DF16E144B4F52 = 0
end
if _l479DF16E144B4F52 ~= nil and _l479DF16E144B4F52 >= _lC4B7C52BE7EA9270 then
return true
end
local _lACA3C004933550A9, vy, vz = entity.get_prop(_l8AD7384010DCDC10, 'm_vecVelocity')
if _lACA3C004933550A9 ~= nil then
local _l36E7B8A126AA13B2 = vector(_lEAAD06EF9C543A94, ey, ez)
local _l6D49993DDB42F848 = vector(_lACA3C004933550A9, vy, vz)
local p = _l885AD57970B0DF46.extrapolate(_l36E7B8A126AA13B2, _l6D49993DDB42F848, (32 * 1))
local _lBB3D269C3F5C7E30, damage2 = client.trace_bullet(_l8AD7384010DCDC10, p.x, p.y, p.z, _l095B173B519F4884, hy, hz, false)
if _lBB3D269C3F5C7E30 ~= me then
damage2 = 0
end
if damage2 ~= nil and damage2 >= _lC4B7C52BE7EA9270 then
return true
end
end
return false
end
local _l93A0F5D91FBDC005 _l9B9478C1BA36234C(me, _l8AD7384010DCDC10)
local _lC4B7C52BE7EA9270 = entity.get_prop(me, 'm_iHealth') or 0
if _lC4B7C52BE7EA9270 <= 0 then
return false
end
local _lEAAD06EF9C543A94, ey, ez = _l885AD57970B0DF46.get_eye_position(_l8AD7384010DCDC10)
if _lEAAD06EF9C543A94 == nil then
return nil
end
local _l24EA163B2AE21718, sy, sz = entity.hitbox_position(me, (42 * 1) / 14)
if _l24EA163B2AE21718 == nil then
return nil
end
local _lD5D485576A3C9DAF, _l479DF16E144B4F52 = client.trace_bullet(_l8AD7384010DCDC10, _lEAAD06EF9C543A94, ey, ez, _l24EA163B2AE21718, sy, sz, false)
if _lD5D485576A3C9DAF ~= me then
_l479DF16E144B4F52 = 0
end
if _l479DF16E144B4F52 ~= nil and _l479DF16E144B4F52 >= _lC4B7C52BE7EA9270 then
return true
end
local _lACA3C004933550A9, vy, vz = entity.get_prop(_l8AD7384010DCDC10, 'm_vecVelocity')
if _lACA3C004933550A9 ~= nil then
local _l36E7B8A126AA13B2 = vector(_lEAAD06EF9C543A94, ey, ez)
local _l6D49993DDB42F848 = vector(_lACA3C004933550A9, vy, vz)
local p = _l885AD57970B0DF46.extrapolate(_l36E7B8A126AA13B2, _l6D49993DDB42F848, (71017 + 71001 - 71001))
local _lBB3D269C3F5C7E30, damage2 = client.trace_bullet(_l8AD7384010DCDC10, p.x, p.y, p.z, _l24EA163B2AE21718, sy, sz, false)
if _lBB3D269C3F5C7E30 ~= me then
damage2 = 0
end
if damage2 ~= nil and damage2 >= _lC4B7C52BE7EA9270 then
return true
end
end
return false
end
local _l93A0F5D91FBDC005 _l14B77061B1388C35(me, _l7B525201E88115BE)
local _lC483CC400CE8CA31 = entity.get_player_weapon(me)
if _lC483CC400CE8CA31 == nil then
return nil
end
local _lCE07FAFEC1C163B4 = csgo_weapons(_lC483CC400CE8CA31)
if _lCE07FAFEC1C163B4 == nil then
return nil
end
local _lF8E34D883D796C10 = _lCE07FAFEC1C163B4.type
local _lA9000C98FC9DBAB8 = _lCE07FAFEC1C163B4.idx
local _l55BF94B197E4DF15 = _lF8E34D883D796C10 == (_xd("npuck5A=",245))
local _l32F2072AAC02C033 = _lA9000C98FC9DBAB8 == (279 * 1) / 9
local _lFBF55C5B7485D088 = vector(entity.get_origin(me))
local _l4AA89032B749ABCF = vector(entity.get_origin(_l7B525201E88115BE))
local _l6B34C906328159C4 = _l4AA89032B749ABCF - _lFBF55C5B7485D088
local _lF824BADA6AF4C0B7 = -_l6B34C906328159C4.z
local _lFBF1C6F606BF12D6 = _l6B34C906328159C4:length2dsqr()
if _lA11A332CEF1A75DE._l503514483C7022F7 then
local _lE3E2B077786754E7 = not _lA11A332CEF1A75DE.is_moving
or _lA11A332CEF1A75DE.is_crouched
if _lE3E2B077786754E7 and _lF824BADA6AF4C0B7 >= (10 * 1) and _lFBF1C6F606BF12D6 > (11000 * 1) / 11 * (83110 + 82110 - 82110) then
return (_xd("JwoQFwINAAY=",99))
end
if _lA11A332CEF1A75DE.is_crouched then
if _lF824BADA6AF4C0B7 >= (480 * 1) / 10 then
return (_xd("2ej17/ny",154))
end
else
if not _lA11A332CEF1A75DE.is_moving and _lF824BADA6AF4C0B7 >= -(-24) then
return (_xd("7Mve0dvW0dg=",191))
end
end
return nil
end
if _lA11A332CEF1A75DE.is_crouched then
if _l32F2072AAC02C033 and _lF824BADA6AF4C0B7 > -(240 * 1) / 12 and _lFBF1C6F606BF12D6 < (500 + (369 - 369)) * (59065 + 58565 - 58565) then
return (_xd("1//ktvXk+eP1/rbi9+Xz5A==",150))
end
if _l55BF94B197E4DF15 then
return (_xd("9d3GlNfG28HX3JTf2t3S0Q==",180))
end
if _lF824BADA6AF4C0B7 > (160 * 1) then
return (_xd("roadz4ydgJqMhw==",239))
end
end
return nil
end
local _l93A0F5D91FBDC005 _l922C1A35EA67252E(_l591D6D6F90A1E3A0)
if _l591D6D6F90A1E3A0 == (_xd("PBQPXR4PEggeFV0WExQbGA==",125)) then
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("i6qprrqjuw==",207))
_l10882FB42ED493E0.yaw_base = 'At targets'
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("GhMb",43))
_l10882FB42ED493E0._l8D93B57A952D5141 = (37 * 1)
_l10882FB42ED493E0._l154D22247126C71A = 0
_l10882FB42ED493E0._lC6683553542CC013 = 0
_l10882FB42ED493E0._l16B2581F24D0AB49 = (_xd("Ezo6",92))
_l10882FB42ED493E0._l89693BE9BF8E2A57 = 0
_l10882FB42ED493E0._l853F969D9C31B6DE = (_xd("Z0BVQF1X",52))
_l10882FB42ED493E0._lE1A0F2049757CCF5 = 1
_l10882FB42ED493E0._l647607ED8A0477C6 = false
_l10882FB42ED493E0._lB6F5466E95879823 = 0
_l10882FB42ED493E0._l60AE168D8FFBE9DB = nil
return
end
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("Tm9sa39mfg==",10))
_l10882FB42ED493E0.yaw_base = 'At targets'
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("YGlh",81))
_l10882FB42ED493E0._l8D93B57A952D5141 = 0
_l10882FB42ED493E0._l154D22247126C71A = 0
_l10882FB42ED493E0._lC6683553542CC013 = 0
_l10882FB42ED493E0._l16B2581F24D0AB49 = (_xd("GDEx",87))
_l10882FB42ED493E0._l89693BE9BF8E2A57 = 0
_l10882FB42ED493E0._l853F969D9C31B6DE = (_xd("8NfC18rA",163))
_l10882FB42ED493E0._lE1A0F2049757CCF5 = (56068 + 55888 - 55888)
_l10882FB42ED493E0._l647607ED8A0477C6 = false
_l10882FB42ED493E0._lB6F5466E95879823 = 0
_l10882FB42ED493E0._l60AE168D8FFBE9DB = nil
end
local _l93A0F5D91FBDC005 _l0C678A28B97F9208(cmd, _l591D6D6F90A1E3A0)
if not ref.e_spam_while_active:get() then
return
end
local _l44EE65348A599DED = { }
_l44EE65348A599DED._l46AA6D7987AE7B3A = (_xd("Vn1lfA==",18))
_l44EE65348A599DED._l6F49EB461422B562 = (_xd("tr+3",135))
_l44EE65348A599DED._l8D93B57A952D5141 = (180 + (1312 - 1312))
_l44EE65348A599DED._l16B2581F24D0AB49 = (_xd("p46O",232))
_l44EE65348A599DED._l89693BE9BF8E2A57 = 0
_l44EE65348A599DED._l853F969D9C31B6DE = (_xd("u5yJnIGL",232))
_l44EE65348A599DED._lE1A0F2049757CCF5 = (82652 + 82472 - 82472)
_l44EE65348A599DED._l647607ED8A0477C6 = false
cmd.force_defensive = true
_l10882FB42ED493E0._l60AE168D8FFBE9DB = _l44EE65348A599DED
end
_l93A0F5D91FBDC005 _lC3DEF9996526AC6D:update(cmd)
if not _l97DD4D5958BF34A1() then
return false
end
local me = entity.get_local_player()
if me == nil then
return false
end
local _l7B525201E88115BE = client.current_threat()
if _l7B525201E88115BE == nil then
return false
end
local _l591D6D6F90A1E3A0 = _l14B77061B1388C35(me, _l7B525201E88115BE)
if _l591D6D6F90A1E3A0 == nil then
return false
end
local _l3B0DC0A34DA7358D = ref.conditions:get(_l591D6D6F90A1E3A0)
if not _l3B0DC0A34DA7358D then
return false
end
if _lE4C0F29811DB3FE5._l9D503C222D9EE9BC() then
_l9E00BF1A11A98DBE = 0
return false
end
local _l4720FB07DB37E565 = bit.band(_lA11A332CEF1A75DE._lE71677AF6FED6754 or 0, 1) == 0
local _lF565763506334690 = bit.band(_lA11A332CEF1A75DE._l502F4688B05BBF80 or 0, 1) ~= 0
if _l4720FB07DB37E565 and _lF565763506334690 then
_l9E00BF1A11A98DBE = 0
return false
end
if entity.is_dormant ~= nil then
local ok = pcall(_l93A0F5D91FBDC005()
return entity.is_dormant(_l7B525201E88115BE)
end)
if ok and entity.is_dormant(_l7B525201E88115BE) then
_l9E00BF1A11A98DBE = 0
return false
end
end
local _lACA3C004933550A9, vy, vz = entity.get_prop(me, 'm_vecVelocity')
local _l982B5C73B1605523 = 0
if _lACA3C004933550A9 ~= nil then
_l982B5C73B1605523 = vector(_lACA3C004933550A9, vy, vz):_lFAC0E14709703CBE()
end
local _lEAAD06EF9C543A94, ey, ez = _l885AD57970B0DF46.get_eye_position(_l7B525201E88115BE)
local _lDFE9553830D6DEEA, oy, oz = entity.get_origin(me)
local _lC75FADF34B0EAF97 = (_lA11A332CEF1A75DE.is_crouched and -(-45) or -(-60))
local _lF40366E0C85853B5 = math.ceil((oz + _lC75FADF34B0EAF97) - (ez or 0))
local _lBD61478C219C9BBE = not _lA11A332CEF1A75DE._l503514483C7022F7
local _lFC756A0DC1979E9A = _lA11A332CEF1A75DE.is_crouched
local _lEECB2749F3D8B1D9 = (_l982B5C73B1605523 <= 1.1001) and (not _lFC756A0DC1979E9A) and (not _lBD61478C219C9BBE)
local _lFCE61131C8541873 = entity.get_player_weapon(me)
local _l97F44BEA68BF0492 = _lFCE61131C8541873 ~= nil and csgo_weapons(_lFCE61131C8541873) or nil
local _lB621D644C0148504 = (_l97F44BEA68BF0492 and (_l97F44BEA68BF0492.max_speed_alt or _l97F44BEA68BF0492._lB621D644C0148504)) or (17571 + 17321 - 17321)
if entity.get_prop(me, 'm_bIsScoped') == 1 and _l97F44BEA68BF0492 ~= nil and _l97F44BEA68BF0492.max_speed_alt ~= nil then
_lB621D644C0148504 = _l97F44BEA68BF0492.max_speed_alt
end
if _lFC756A0DC1979E9A then
_lB621D644C0148504 = _lB621D644C0148504 * 0.34
end
local _lC824B53701E00988 = _l982B5C73B1605523 > 1.1001 and _l982B5C73B1605523 < (_lB621D644C0148504 - _lB621D644C0148504 * 0.1)
local _l1EDCA2CB96EC42F5 = (cmd._l1EDCA2CB96EC42F5 == 1) or ((cmd.forwardmove or 0) > 0)
local _l19BCC5BFB27A669D = (cmd._l19BCC5BFB27A669D == 1) or ((cmd.forwardmove or 0) < 0)
local _lE60A7541C17656AC = (cmd._lE60A7541C17656AC == 1) or ((cmd.sidemove or 0) > 0)
local _l21CD322A0B5CB4E5 = (cmd._l21CD322A0B5CB4E5 == 1) or ((cmd.sidemove or 0) < 0)
local _l8D7D25A996288554 = entity.get_prop(me, 'm_iTeamNum')
local _l393DF9700CC65267 = false
local _l9CD133AC351FC64B = _l97F44BEA68BF0492
local _l55BF94B197E4DF15 = (_l9CD133AC351FC64B and _l9CD133AC351FC64B.type == (_xd("RkNES0g=",45))) or false
if _l55BF94B197E4DF15 and _lBD61478C219C9BBE and _lFC756A0DC1979E9A and _l7B525201E88115BE == client.current_threat() then
_l393DF9700CC65267 = ((_l8D7D25A996288554 == (45 * 1) / 15) and -(35 + (960 - 960)) or --(-20)) < _lF40366E0C85853B5
else
local _l3D2DD1D551D9C3C1 = (_lEECB2749F3D8B1D9 and (((_l8D7D25A996288554 == (83551 + 83548 - 83548)) and -(30 * 1) / 5 or (200 * 1) / 10) <= _lF40366E0C85853B5))
or (_lFC756A0DC1979E9A and (not _lBD61478C219C9BBE) and (((_l8D7D25A996288554 == (3 + (6654 - 6654))) and -(20 * 1) or -(32 * 1) / 8) <= _lF40366E0C85853B5))
local _lFE062095DCF529C1 = entity.get_prop(_l7B525201E88115BE, 'm_fFlags') or 0
local _l43AD5B26E9AC39E6 = bit.band(_lFE062095DCF529C1, 1) ~= 0
local _lB044594D1BFE4F2D, evy, evz = entity.get_prop(_l7B525201E88115BE, 'm_vecVelocity')
local _lC171281FDE3AB9B2 = 0
if _lB044594D1BFE4F2D ~= nil then
_lC171281FDE3AB9B2 = math.sqrt(_lB044594D1BFE4F2D * _lB044594D1BFE4F2D + evy * evy)
end
local _l5587FCD6C4FA7EFD = _l9B9478C1BA36234C(me, _l7B525201E88115BE)
local _l74A58EFD467BA820 = (not _l43AD5B26E9AC39E6 and _lC171281FDE3AB9B2 > -(-75)) or (_l5587FCD6C4FA7EFD ~= true)
if _l3D2DD1D551D9C3C1 and _l74A58EFD467BA820 then
local _lEE643A721CE3594A = _l2C45E88C62A05291(me, _l7B525201E88115BE)
local _l0035E1A646F60677 = globals._lA507B4C75C554CAF()
if _lEE643A721CE3594A == false then
_l393DF9700CC65267 = true
_l9E00BF1A11A98DBE = _l0035E1A646F60677 + (80 * 1) / 5
elseif _lEE643A721CE3594A == true then
_l393DF9700CC65267 = false
_l9E00BF1A11A98DBE = 0
else
_l393DF9700CC65267 = _l9E00BF1A11A98DBE >= _l0035E1A646F60677
end
end
end
if not _l393DF9700CC65267 then
return false
end
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("eFNLUg==",60))
_l10882FB42ED493E0.yaw_base = 'At targets'
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("6+Lq",218))
local _l0405C1249B9791A4
if _lEECB2749F3D8B1D9 then
_l0405C1249B9791A4 = (35 * 1)
elseif _lBD61478C219C9BBE then
_l0405C1249B9791A4 = (28174 + 28142 - 28142)
elseif _l1EDCA2CB96EC42F5 and (cmd.forwardmove or 0) > 0 then
if _lC824B53701E00988 then
_l0405C1249B9791A4 = (_lE60A7541C17656AC and (cmd.sidemove or 0) > 0) and -(-33)
or (_l21CD322A0B5CB4E5 and (cmd.sidemove or 0) < 0) and (20 + (851 - 851)) or (20 * 1)
else
_l0405C1249B9791A4 = (_lE60A7541C17656AC and (cmd.sidemove or 0) > 0) and -(-38)
or (_l21CD322A0B5CB4E5 and (cmd.sidemove or 0) < 0) and -(-14) or (26 * 1)
end
elseif _l19BCC5BFB27A669D and (cmd.forwardmove or 0) < 0 then
if _lC824B53701E00988 then
_l0405C1249B9791A4 = (_lE60A7541C17656AC and (cmd.sidemove or 0) > 0) and (30 * 1)
or (_l21CD322A0B5CB4E5 and (cmd.sidemove or 0) < 0) and (160 * 1) / 8 or (86589 + 86559 - 86559)
else
_l0405C1249B9791A4 = (_lE60A7541C17656AC and (cmd.sidemove or 0) > 0) and -(-30)
or (_l21CD322A0B5CB4E5 and (cmd.sidemove or 0) < 0) and (46218 + 46198 - 46198) or (510 * 1) / 17
end
else
_l0405C1249B9791A4 = (_lE60A7541C17656AC and (cmd.sidemove or 0) > 0) and (28975 + 28937 - 28937)
or (_l21CD322A0B5CB4E5 and (cmd.sidemove or 0) < 0) and (220 * 1) / 11 or -(-32)
end
do
local _l7F766CDB9691C862 = (45 + (5601 - 5601))
local _lE7323D14448A521E = true
if _lE7323D14448A521E then
_l0405C1249B9791A4 = -_l0405C1249B9791A4
end
_l10882FB42ED493E0._l8D93B57A952D5141 = _l0405C1249B9791A4 + _l7F766CDB9691C862
end
_l10882FB42ED493E0._l154D22247126C71A = 0
_l10882FB42ED493E0._lC6683553542CC013 = 0
_l10882FB42ED493E0._l16B2581F24D0AB49 = (_xd("YElJ",47))
_l10882FB42ED493E0._l89693BE9BF8E2A57 = 0
_l10882FB42ED493E0._l853F969D9C31B6DE = (_xd("AyQxJDkz",80))
_l10882FB42ED493E0._lE1A0F2049757CCF5 = 0
_l10882FB42ED493E0._l647607ED8A0477C6 = false
_l10882FB42ED493E0._lB6F5466E95879823 = 0
_l10882FB42ED493E0._l60AE168D8FFBE9DB = nil
_l0C678A28B97F9208(cmd, _l591D6D6F90A1E3A0)
return true
end
end
local _lA550371056A1793A = { } do
local ref = _l934A3DF2B1DD218E._l22887641E343368B._lA2858F25491F9BF1._lA550371056A1793A
local _l93A0F5D91FBDC005 _l01AF47FC420F770A()
if not _lA11A332CEF1A75DE._l503514483C7022F7 then
return (_xd("MhoB",115))
end
if _lA11A332CEF1A75DE.is_crouched then
return (_xd("R3ZrcWdsYWA=",4))
end
if _lA11A332CEF1A75DE.is_moving then
if _lE4C0F29811DB3FE5.is_slow_motion() then
return (_xd("Bjk6InUCNDk+",85))
end
return (_xd("uZuCnZqT",244))
end
return (_xd("IwQRHhQZHhc=",112))
end
local _l93A0F5D91FBDC005 _l116DE334C787AB1B()
return ref.disablers:get(
_l01AF47FC420F770A()
)
end
local _l93A0F5D91FBDC005 _l3B0DC0A34DA7358D()
if not ref._lF8E1754D21D14193:get() then
return false
end
if not ref.hotkey:get() then
return false
end
return not _l116DE334C787AB1B()
end
_l93A0F5D91FBDC005 _lA550371056A1793A:update(cmd)
if not _l3B0DC0A34DA7358D() then
_l10882FB42ED493E0._lA550371056A1793A = false
return
end
_l10882FB42ED493E0._lA550371056A1793A = true
end
end
local _l60AE168D8FFBE9DB = { } do
local _l69C0ABCD4F60C1C3 = 0
if (1332*7 - 1332*6 == 1332) then
  local _v746B6EEC = math.sqrt(112217)
  local _vB0185C86 = string.len(tostring(_v746B6EEC))
  if _vB0185C86 > 5 then _vB0185C86 = _vB0185C86 + 1 end
end
local _l657258842AC964BB = 0
local _lDAC03EDD31B3B92B = false
local _l3C4DEAA1974B7ACA = 0
local _l93A0F5D91FBDC005 _l47C89983067E9AAD()
if _lE4C0F29811DB3FE5._l24E54F96B8A0941E() then
return true
end
if _lE4C0F29811DB3FE5._l4EBAB0E6718B016B() then
return true
end
return false
end
local _l93A0F5D91FBDC005 _l72EB98B4335CDE38()
_lDAC03EDD31B3B92B = not _lDAC03EDD31B3B92B
end
local _l93A0F5D91FBDC005 _lF5A3711216D1F6D4()
_l3C4DEAA1974B7ACA = _l3C4DEAA1974B7ACA + 1
end
local _l93A0F5D91FBDC005 _lF53DDCB6435FC4FE(_l10882FB42ED493E0, _lD52EDAAF02723665)
local _l861DF5F3FC680167 = _lD52EDAAF02723665._l46AA6D7987AE7B3A:get()
local _l72BB9EFD1D25CD9F = _lD52EDAAF02723665._l72BB9EFD1D25CD9F:get()
local _l84BE8A6927CCD15A = _lD52EDAAF02723665._l84BE8A6927CCD15A:get()
local _lCC9D2EFA01452D7D = _lD52EDAAF02723665.pitch_speed:get()
if _l861DF5F3FC680167 == (_xd("0Pn5",159)) then
return
end
if _l861DF5F3FC680167 == (_xd("DCs+KzY8",95)) then
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("nautqrGz",222))
_l10882FB42ED493E0.pitch_offset = _l72BB9EFD1D25CD9F
return
end
if _l861DF5F3FC680167 == (_xd("haG3rw==",214)) then
local _lB089E1D6D7176955 = globals.curtime() * _lCC9D2EFA01452D7D * 0.1
local _lE8558CABD1E415C2 = _l885AD57970B0DF46.lerp(
_l72BB9EFD1D25CD9F,
_l84BE8A6927CCD15A,
_lB089E1D6D7176955 % 1
)
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("JRMVEgkL",102))
_l10882FB42ED493E0.pitch_offset = _lE8558CABD1E415C2
end
if _l861DF5F3FC680167 == (_xd("rYmXip2W",254)) then
local _lE8558CABD1E415C2 = _lDAC03EDD31B3B92B
and _l84BE8A6927CCD15A
or _l72BB9EFD1D25CD9F
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("t4GHgJuZ",244))
_l10882FB42ED493E0.pitch_offset = _lE8558CABD1E415C2
return
end
if _l861DF5F3FC680167 == (_xd("DD8wOjEz",94)) then
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("b1lfWENB",44))
_l10882FB42ED493E0.pitch_offset = _l885AD57970B0DF46.random_int(
_l72BB9EFD1D25CD9F, _l84BE8A6927CCD15A
)
return
end
if _l861DF5F3FC680167 == (_xd("IwQRBBkTUCIRHhQfHQ==",112)) then
local _l65D9AD7D704F2535 = _l946A40C0880A61FC.get()
local _lA9B9822BAB56B0F4 = _l65D9AD7D704F2535._l60AE168D8FFBE9DB
if _lA9B9822BAB56B0F4.left == _lA9B9822BAB56B0F4.max then
_l69C0ABCD4F60C1C3 = _l885AD57970B0DF46.random_int(
_l72BB9EFD1D25CD9F, _l84BE8A6927CCD15A
)
end
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("tYOFgpmb",246))
_l10882FB42ED493E0.pitch_offset = _l69C0ABCD4F60C1C3
end
end
local _l93A0F5D91FBDC005 _l258BF482DC1B342A(_l10882FB42ED493E0, _lD52EDAAF02723665)
local _l861DF5F3FC680167 = _lD52EDAAF02723665._l6F49EB461422B562:get()
local _lE8558CABD1E415C2 = _lD52EDAAF02723665._l8D93B57A952D5141:get()
if _l861DF5F3FC680167 == (_xd("c1pa",60)) then
return
end
_l10882FB42ED493E0._l8C975ACFD6C1C204 = false
_l10882FB42ED493E0._l154D22247126C71A = 0
_l10882FB42ED493E0._lC6683553542CC013 = 0
_l10882FB42ED493E0._l8D93B57A952D5141 = 0
_l10882FB42ED493E0._l16B2581F24D0AB49 = (_xd("+tPT",181))
_l10882FB42ED493E0._l89693BE9BF8E2A57 = 0
if _l861DF5F3FC680167 == (_xd("x/3w8bTW9efx8A==",148)) then
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("WFFZ",105))
_l10882FB42ED493E0._l8D93B57A952D5141 = 0
_l10882FB42ED493E0._l154D22247126C71A = -_lE8558CABD1E415C2
_l10882FB42ED493E0._lC6683553542CC013 = _lE8558CABD1E415C2
end
if _l861DF5F3FC680167 == (_xd("CjU1KjYsMSA=",69)) then
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("Nz42",6))
_l10882FB42ED493E0._l8D93B57A952D5141 = -(180 + (6770 - 6770)) + _lE8558CABD1E415C2
end
if _l861DF5F3FC680167 == (_xd("mbqjpA==",202)) then
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("ND01",5))
_l10882FB42ED493E0._l8D93B57A952D5141 = globals.curtime() * (_lE8558CABD1E415C2 * (12 + (8476 - 8476))) % (360 * 1)
end
if _l861DF5F3FC680167 == (_xd("vpqMlA==",237)) then
local _lCC9D2EFA01452D7D = _lD52EDAAF02723665.yaw_speed:get()
local _lA7A4C9894C83C982 = _lD52EDAAF02723665._l154D22247126C71A:get()
local _lA0F8BC32B6C2C7E0 = _lD52EDAAF02723665._lC6683553542CC013:get()
local _lB089E1D6D7176955 = globals.curtime() * _lCC9D2EFA01452D7D * 0.1
local _l67B9CB381E5AE6C4 = _l885AD57970B0DF46.lerp(
_lA7A4C9894C83C982,
_lA0F8BC32B6C2C7E0,
_lB089E1D6D7176955 % 1
)
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("EhsT",35))
_l10882FB42ED493E0._l8D93B57A952D5141 = _l67B9CB381E5AE6C4
end
if _l861DF5F3FC680167 == (_xd("8MPMxs3P",162)) then
local _l67B9CB381E5AE6C4 = _l885AD57970B0DF46.random_int(
-_lE8558CABD1E415C2, _lE8558CABD1E415C2
)
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("WlNb",107))
_l10882FB42ED493E0._l8D93B57A952D5141 = _l67B9CB381E5AE6C4
end
if _l861DF5F3FC680167 == (_xd("w+rp+6Dd5ujn+w==",143)) then
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("f3Z+",78))
_l10882FB42ED493E0._l8D93B57A952D5141 = 0
_l10882FB42ED493E0._l154D22247126C71A = _lD52EDAAF02723665._l154D22247126C71A:get()
_l10882FB42ED493E0._lC6683553542CC013 = _lD52EDAAF02723665._lC6683553542CC013:get()
end
if _l861DF5F3FC680167 == (_xd("tpGEkYyGxbeEi4GKiA==",229)) then
local _l65D9AD7D704F2535 = _l946A40C0880A61FC.get()
local _lA9B9822BAB56B0F4 = _l65D9AD7D704F2535._l60AE168D8FFBE9DB
if _lA9B9822BAB56B0F4.left == _lA9B9822BAB56B0F4.max then
local _lA7A4C9894C83C982 = _lD52EDAAF02723665._l154D22247126C71A:get()
local _lA0F8BC32B6C2C7E0 = _lD52EDAAF02723665._lC6683553542CC013:get()
_l657258842AC964BB = _l885AD57970B0DF46.random_int(
_lA7A4C9894C83C982, _lA0F8BC32B6C2C7E0
)
end
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("QUhA",112))
_l10882FB42ED493E0._l8D93B57A952D5141 = _l657258842AC964BB
end
if _l861DF5F3FC680167 == (_xd("QjdNe2M=",26)) then
local _lDAF0FAC8DE48E972 = _lD52EDAAF02723665._lDAF0FAC8DE48E972:get()
local _lF85351515A99AFEA = _lD52EDAAF02723665._lF85351515A99AFEA:get()
local _l42E5F3EA26C45F21 = _lA11A332CEF1A75DE.sent_packets % _lDAF0FAC8DE48E972
if _lF85351515A99AFEA then
local _lB24000458F765789 = _lD52EDAAF02723665[(_xd("l4GZvw==",224)) .. _l42E5F3EA26C45F21 + 1]
if _lB24000458F765789 ~= nil then
local _l67B9CB381E5AE6C4 = _lB24000458F765789:get()
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("u7K6",138))
_l10882FB42ED493E0._l8D93B57A952D5141 = _l67B9CB381E5AE6C4
end
else
local _l9D764CD076178194 = _l42E5F3EA26C45F21 / (_lDAF0FAC8DE48E972 - 1)
local _l67B9CB381E5AE6C4 = _l885AD57970B0DF46.lerp(-_lE8558CABD1E415C2, _lE8558CABD1E415C2, _l9D764CD076178194)
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("FRwU",36))
_l10882FB42ED493E0._l8D93B57A952D5141 = _l67B9CB381E5AE6C4
end
if _lD52EDAAF02723665.ways_auto_body_yaw:get() then
local _lE1A0F2049757CCF5 = 0
if _l10882FB42ED493E0._l8D93B57A952D5141 < 0 then
_lE1A0F2049757CCF5 = -1
end
if _l10882FB42ED493E0._l8D93B57A952D5141 > 0 then
_lE1A0F2049757CCF5 = 1
end
_l10882FB42ED493E0._l853F969D9C31B6DE = (_xd("vZqPmoeN",238))
_l10882FB42ED493E0._lE1A0F2049757CCF5 = _lE1A0F2049757CCF5
end
end
if _l861DF5F3FC680167 == (_xd("c20XITk=",64)) then
local _lE3C59EDD252AE9F5 = { -1.0, 0.0, 1.0 }
local _lB90694C605679381 = _lA11A332CEF1A75DE.sent_packets % #_lE3C59EDD252AE9F5
local _l67B9CB381E5AE6C4 = _lE3C59EDD252AE9F5[_lB90694C605679381 + 1] * _lE8558CABD1E415C2
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("tby0",132))
_l10882FB42ED493E0._l8D93B57A952D5141 = _l67B9CB381E5AE6C4
end
if _l861DF5F3FC680167 == (_xd("lY33wdk=",160)) then
local _lE3C59EDD252AE9F5 = { -1.0, -0.5, 0.0, 0.5, 1.0 }
local _lB90694C605679381 = _lA11A332CEF1A75DE.sent_packets % #_lE3C59EDD252AE9F5
local _l67B9CB381E5AE6C4 = _lE3C59EDD252AE9F5[_lB90694C605679381 + 1] * _lE8558CABD1E415C2
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("KSAo",24))
_l10882FB42ED493E0._l8D93B57A952D5141 = _l67B9CB381E5AE6C4
end
local _l86C73685D993D3CC = _lD52EDAAF02723665._l7A6C5DE9B8936F9C:get() * 0.01
if _l86C73685D993D3CC > 0 then
local _l8D93B57A952D5141 = _l10882FB42ED493E0._l8D93B57A952D5141 or 0
local _l80398EFEE85F569E = math.abs(_l8D93B57A952D5141) * _l86C73685D993D3CC
_l10882FB42ED493E0._l8D93B57A952D5141 = _l8D93B57A952D5141 + _l885AD57970B0DF46.random_int(
-_l80398EFEE85F569E, _l80398EFEE85F569E
)
if _l10882FB42ED493E0._l154D22247126C71A ~= nil and _l10882FB42ED493E0._lC6683553542CC013 ~= nil then
local _l154D22247126C71A = _l10882FB42ED493E0._l154D22247126C71A
local _lC6683553542CC013 = _l10882FB42ED493E0._lC6683553542CC013
local _l20A4E548F0553E6D = math.abs(_l154D22247126C71A) * _l86C73685D993D3CC
local _lE00CDD4C8E55E3DC = math.abs(_lC6683553542CC013) * _l86C73685D993D3CC
_l10882FB42ED493E0._l154D22247126C71A = _l154D22247126C71A + _l885AD57970B0DF46.random_int(
-_l20A4E548F0553E6D, _l20A4E548F0553E6D
)
_l10882FB42ED493E0._lC6683553542CC013 = _lC6683553542CC013 + _l885AD57970B0DF46.random_int(
-_lE00CDD4C8E55E3DC, _lE00CDD4C8E55E3DC
)
end
end
end
local _l93A0F5D91FBDC005 _l0666F59BC38B253F(_l10882FB42ED493E0, _lD52EDAAF02723665)
if _lD52EDAAF02723665._l853F969D9C31B6DE == nil then
return
end
local _l853F969D9C31B6DE = _lD52EDAAF02723665._l853F969D9C31B6DE:get()
local _lE1A0F2049757CCF5 = _lD52EDAAF02723665._lE1A0F2049757CCF5:get()
local _l647607ED8A0477C6 = false
if _l853F969D9C31B6DE ~= (_xd("nb6jo7Kl",215)) then
_l647607ED8A0477C6 = _lD52EDAAF02723665._l647607ED8A0477C6:get()
end
_l10882FB42ED493E0._l853F969D9C31B6DE = _l853F969D9C31B6DE
_l10882FB42ED493E0._lE1A0F2049757CCF5 = _lE1A0F2049757CCF5
_l10882FB42ED493E0._l647607ED8A0477C6 = _l647607ED8A0477C6
if _lD52EDAAF02723665.delay_from ~= nil and _lD52EDAAF02723665.delay_to ~= nil then
_l10882FB42ED493E0._l191792994E1F0711 = _l885AD57970B0DF46.random_int(
_lD52EDAAF02723665.delay_from:get(),
_lD52EDAAF02723665.delay_to:get()
)
end
if _lD52EDAAF02723665.invert_chance ~= nil then
_l10882FB42ED493E0.invert_chance = _lD52EDAAF02723665.invert_chance:get()
end
end
_l93A0F5D91FBDC005 _l60AE168D8FFBE9DB:update(cmd)
if cmd.chokedcommands == 0 then
_l72EB98B4335CDE38()
_lF5A3711216D1F6D4()
end
end
_l93A0F5D91FBDC005 _l60AE168D8FFBE9DB:apply(cmd, _lD52EDAAF02723665)
if _lD52EDAAF02723665.force_defensive ~= nil and _lD52EDAAF02723665.force_defensive:get() then
cmd.force_defensive = true
end
local _lA6AD9DE7C4B32290 = _lE4C0F29811DB3FE5.is_duck_peek_assist()
if not _l47C89983067E9AAD() or _lA6AD9DE7C4B32290 then
return false
end
local _l63E23D0A09ED5EA5 = _l946A40C0880A61FC.get()
local _lAB9D2049C4DD3B2C = _l63E23D0A09ED5EA5._l60AE168D8FFBE9DB
if _lAB9D2049C4DD3B2C.left <= 0 then
return
end
if not _lD52EDAAF02723665._lF8E1754D21D14193:get() then
return false
end
local _l44EE65348A599DED = { }
_l0666F59BC38B253F(_l44EE65348A599DED, _lD52EDAAF02723665)
_lF53DDCB6435FC4FE(_l44EE65348A599DED, _lD52EDAAF02723665)
_l258BF482DC1B342A(_l44EE65348A599DED, _lD52EDAAF02723665)
if _l44EE65348A599DED._l853F969D9C31B6DE ~= (_xd("3vf3",145))
and _l44EE65348A599DED._l853F969D9C31B6DE ~= (_xd("RHt7ZHhif24=",11)) then
local _l86C73685D993D3CC = _lD52EDAAF02723665.body_yaw_random:get() * 0.01
local _lE1A0F2049757CCF5 = _l44EE65348A599DED._lE1A0F2049757CCF5 or 0
local _l3705C891824595BA = math.abs(_lE1A0F2049757CCF5) * _l86C73685D993D3CC
if _l3705C891824595BA > 0 then
_l44EE65348A599DED._lE1A0F2049757CCF5 = _lE1A0F2049757CCF5
+ _l885AD57970B0DF46.random_int(-_l3705C891824595BA, _l3705C891824595BA)
end
end
_l10882FB42ED493E0._l60AE168D8FFBE9DB = _l44EE65348A599DED
return true
end
end
local _lFF88839EB9E6A0C0 = { } do
local ref = _l934A3DF2B1DD218E._l22887641E343368B._l7A80B95D217116EF
local _lCEC2E4988C8C6D38 = ui.reference(
'Misc', 'Settings', (_xd("dHFYamZ/cnR1ZGpjd3VoZGJ0dHNuZGx0NQ==",7))
)
local _l33BFF7FDAA396763 = cvar.sv_maxusrcmdprocessticks
local HOTKEY_MODE = {
[0] = 'Always on',
[1] = 'On hotkey',
[(59985 + 59983 - 59983)] = 'Toggle',
[(3 + (9592 - 9592))] = 'Off hotkey'
}
local _l93A0F5D91FBDC005 _lC945FAF5EA43DD53(_lDDA2D6AE693381B0, _lB17914F567A7940B, key)
return HOTKEY_MODE[_lB17914F567A7940B], key or 0
end
local _l93A0F5D91FBDC005 _lDDD3429E9D18D61F()
return ref._lF8E1754D21D14193:get() and ref.hotkey:get()
end
ui.set_visible(_lCEC2E4988C8C6D38, false)
_l93A0F5D91FBDC005 _lFF88839EB9E6A0C0:update(cmd)
local _lDDD3429E9D18D61F = _lDDD3429E9D18D61F()
local _lB08E183D75266272 = ref.limit:get() + 1
local _l5E5272A01BD2A7FA = ref.limit:get()
if ref.unsafe_choke:get() and _lDDD3429E9D18D61F then
_lB08E183D75266272 = _lB08E183D75266272 + 1
_l5E5272A01BD2A7FA = _l5E5272A01BD2A7FA + 1
end
if _lB08E183D75266272 == (15 + (1082 - 1082)) then
_lB08E183D75266272 = (16 + (6843 - 6843))
end
_l002C9C644F32C5C8.set(_lCEC2E4988C8C6D38, _lB08E183D75266272)
if _l33BFF7FDAA396763 ~= nil then
_l33BFF7FDAA396763:set_int(_lB08E183D75266272, true)
end
_l002C9C644F32C5C8.set(_lE4C0F29811DB3FE5.antiaimbot.fake_lag._lF8E1754D21D14193[1], ref._lF8E1754D21D14193:get())
_l002C9C644F32C5C8.set(_lE4C0F29811DB3FE5.antiaimbot.fake_lag._lF8E1754D21D14193[(22 * 1) / 11], _lC945FAF5EA43DD53(ref.hotkey:get()))
_l002C9C644F32C5C8.set(_lE4C0F29811DB3FE5.antiaimbot.fake_lag.amount, ref.amount:get())
_l002C9C644F32C5C8.set(_lE4C0F29811DB3FE5.antiaimbot.fake_lag.variance, ref.variance:get())
_l002C9C644F32C5C8.set(_lE4C0F29811DB3FE5.antiaimbot.fake_lag.limit, ref.limit:get())
if ref.force_choke:get() and _lDDD3429E9D18D61F and cmd ~= nil
and cmd.chokedcommands < _l5E5272A01BD2A7FA then
cmd.allow_send_packet = false
cmd.no_choke = false
end
end
_l93A0F5D91FBDC005 _lFF88839EB9E6A0C0:shutdown()
local _lB08E183D75266272 = _l002C9C644F32C5C8.get(_lCEC2E4988C8C6D38)
_l002C9C644F32C5C8.unset(_lE4C0F29811DB3FE5.antiaimbot.fake_lag._lF8E1754D21D14193[1])
_l002C9C644F32C5C8.unset(_lE4C0F29811DB3FE5.antiaimbot.fake_lag._lF8E1754D21D14193[(22 * 1) / 11])
_l002C9C644F32C5C8.unset(_lE4C0F29811DB3FE5.antiaimbot.fake_lag.amount)
_l002C9C644F32C5C8.unset(_lE4C0F29811DB3FE5.antiaimbot.fake_lag.variance)
_l002C9C644F32C5C8.unset(_lE4C0F29811DB3FE5.antiaimbot.fake_lag.limit)
_l002C9C644F32C5C8.unset(_lCEC2E4988C8C6D38)
if _lB08E183D75266272 ~= nil and _l33BFF7FDAA396763 ~= nil then
_l33BFF7FDAA396763:set_int(_lB08E183D75266272, true)
end
end
end
local _l6AC6C239F852AB60 = { } do
local ref = _l934A3DF2B1DD218E._l22887641E343368B._l6AC6C239F852AB60
local _lA9A3D69EC89B8374 = -(-2)
local _lA363C15C278AEFB7 = (33673 + 33670 - 33670)
local _l93A0F5D91FBDC005 _l27DAE18EBED18353(move_dir)
local _lE585CB74A32361F9 = 0.1
local list = { }
if move_dir.x > _lE585CB74A32361F9 then
table.insert(list, (_xd("X3ZrbnhrfQ==",25)))
end
if move_dir.x < -_lE585CB74A32361F9 then
table.insert(list, (_xd("1fb0/OD25fM=",151)))
end
if move_dir.y > _lE585CB74A32361F9 then
table.insert(list, (_xd("h7yyvaE=",213)))
end
if move_dir.y < -_lE585CB74A32361F9 then
table.insert(list, (_xd("0vv46g==",158)))
end
return table.concat(list, '-')
end
local _l93A0F5D91FBDC005 _l2184124A6A1CB7CA(_lD52EDAAF02723665)
if _lD52EDAAF02723665 == nil or _lD52EDAAF02723665.yaw_direction == nil then
return nil
end
local _l4AD09FD714C40727 = _l27DAE18EBED18353(_lA11A332CEF1A75DE.move_dir)
local _lF8E1754D21D14193 = _lD52EDAAF02723665[(_xd("bmVqaWdub1RvYnlU",11)) .. _l4AD09FD714C40727]
if _lF8E1754D21D14193 == nil or not _lF8E1754D21D14193:get() then
return nil
end
return _l4AD09FD714C40727
end
local _l93A0F5D91FBDC005 _lF53DDCB6435FC4FE(_lD52EDAAF02723665)
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("lbS3sKS9pQ==",209))
end
local _l93A0F5D91FBDC005 _l01CEEDBE28BBA84F(_lD52EDAAF02723665)
if _lD52EDAAF02723665.yaw_base == nil then
_l10882FB42ED493E0.yaw_base = 'At targets'
else
_l10882FB42ED493E0.yaw_base = _lD52EDAAF02723665.yaw_base:get()
end
end
local _l93A0F5D91FBDC005 _l258BF482DC1B342A(_lD52EDAAF02723665)
local _l33EE64669B65F465 = (
_lD52EDAAF02723665._l154D22247126C71A ~= nil
and _lD52EDAAF02723665._lC6683553542CC013 ~= nil
)
if not _l33EE64669B65F465 then
return
end
local _l154D22247126C71A = _lD52EDAAF02723665._l154D22247126C71A:get()
local _lC6683553542CC013 = _lD52EDAAF02723665._lC6683553542CC013:get()
local _l7A6C5DE9B8936F9C = _lD52EDAAF02723665._l7A6C5DE9B8936F9C:get()
local _l631158C872E449BC = _l154D22247126C71A * _l7A6C5DE9B8936F9C * 0.01
local _l14DDAB7B6A17192E = _lC6683553542CC013 * _l7A6C5DE9B8936F9C * 0.01
_l154D22247126C71A = _l154D22247126C71A + _l885AD57970B0DF46.random_int(-_l631158C872E449BC, _l631158C872E449BC)
_lC6683553542CC013 = _lC6683553542CC013 + _l885AD57970B0DF46.random_int(-_l14DDAB7B6A17192E, _l14DDAB7B6A17192E)
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("LyYu",30))
_l10882FB42ED493E0._l8D93B57A952D5141 = 0
_l10882FB42ED493E0._l154D22247126C71A = _l154D22247126C71A
_l10882FB42ED493E0._lC6683553542CC013 = _lC6683553542CC013
local _l4AD09FD714C40727 = _l2184124A6A1CB7CA(_lD52EDAAF02723665)
if _l4AD09FD714C40727 ~= nil then
local _l8E739887470E754F = _lD52EDAAF02723665[(_xd("g5uNpZafnI6lnpOIpQ==",250)) .. _l4AD09FD714C40727]
local _lB08D1EC646D33BCB = _lD52EDAAF02723665[(_xd("2cHX/9LJx8jU/8TJ0v8=",160)) .. _l4AD09FD714C40727]
if _l8E739887470E754F ~= nil and _lB08D1EC646D33BCB ~= nil then
_l10882FB42ED493E0._l154D22247126C71A = _l8E739887470E754F:get()
_l10882FB42ED493E0._lC6683553542CC013 = _lB08D1EC646D33BCB:get()
end
end
end
_l93A0F5D91FBDC005 _l6AC6C239F852AB60:get_defensive_items(_lD52EDAAF02723665)
if _lD52EDAAF02723665 == nil or _lD52EDAAF02723665._l60AE168D8FFBE9DB == nil then
return nil
end
local _lC9BDB25205928508 = _lD52EDAAF02723665._l0909714DCA9366DB
local _l4AD09FD714C40727 = _l2184124A6A1CB7CA(_lD52EDAAF02723665._l54FCA590490245EE)
if _lC9BDB25205928508 == nil or _l4AD09FD714C40727 == nil then
return _lD52EDAAF02723665._l60AE168D8FFBE9DB
end
return _lC9BDB25205928508:get_proxy(_l4AD09FD714C40727, _lD52EDAAF02723665._l60AE168D8FFBE9DB)
or _lD52EDAAF02723665._l60AE168D8FFBE9DB
end
local _l93A0F5D91FBDC005 _l332D18FB730972A4(_lD52EDAAF02723665)
if _lD52EDAAF02723665._l16B2581F24D0AB49 == nil then
return
end
local _l16B2581F24D0AB49 = _lD52EDAAF02723665._l16B2581F24D0AB49:get()
local _l89693BE9BF8E2A57 = _lD52EDAAF02723665._l89693BE9BF8E2A57:get()
if _l16B2581F24D0AB49 ~= (_xd("po+P",233)) then
local _l86C73685D993D3CC = _lD52EDAAF02723665.jitter_random:get() * 0.01
local _lEF0BDC94DBF69F0E = _l89693BE9BF8E2A57 * _l86C73685D993D3CC
_l89693BE9BF8E2A57 = _l89693BE9BF8E2A57 + _l885AD57970B0DF46.random_int(
-_lEF0BDC94DBF69F0E, _lEF0BDC94DBF69F0E
)
end
_l10882FB42ED493E0._l16B2581F24D0AB49 = _l16B2581F24D0AB49
_l10882FB42ED493E0._l89693BE9BF8E2A57 = _l89693BE9BF8E2A57
end
local _l93A0F5D91FBDC005 _l0666F59BC38B253F(_lD52EDAAF02723665)
if _lD52EDAAF02723665._l853F969D9C31B6DE == nil then
return
end
local _l853F969D9C31B6DE = _lD52EDAAF02723665._l853F969D9C31B6DE:get()
local _lE1A0F2049757CCF5 = _lD52EDAAF02723665._lE1A0F2049757CCF5:get()
local _l647607ED8A0477C6 = false
if _l853F969D9C31B6DE ~= (_xd("d1RJSVhP",61)) then
_l647607ED8A0477C6 = _lD52EDAAF02723665._l647607ED8A0477C6:get()
end
_l10882FB42ED493E0._l853F969D9C31B6DE = _l853F969D9C31B6DE
_l10882FB42ED493E0._lE1A0F2049757CCF5 = _lE1A0F2049757CCF5
_l10882FB42ED493E0._l647607ED8A0477C6 = _l647607ED8A0477C6
if _lD52EDAAF02723665.delay_from ~= nil and _lD52EDAAF02723665.delay_to ~= nil then
_l10882FB42ED493E0._l191792994E1F0711 = _l885AD57970B0DF46.random_int(
_lD52EDAAF02723665.delay_from:get(),
_lD52EDAAF02723665.delay_to:get()
)
end
if _lD52EDAAF02723665.invert_chance ~= nil then
_l10882FB42ED493E0.invert_chance = _lD52EDAAF02723665.invert_chance:get()
end
end
_l93A0F5D91FBDC005 _l6AC6C239F852AB60:get(_l2E042F1CBFD735FC, _l8D7D25A996288554)
local _lD52EDAAF02723665 = ref[_l2E042F1CBFD735FC]
if _lD52EDAAF02723665 == nil then
return nil
end
return _lD52EDAAF02723665[_l8D7D25A996288554]
end
_l93A0F5D91FBDC005 _l6AC6C239F852AB60.get_team(player)
local _l8D7D25A996288554 = entity.get_prop(
player, 'm_iTeamNum'
)
if _l8D7D25A996288554 == _lA9A3D69EC89B8374 then
return (_xd("kKG2tqu2rbew",196))
end
if _l8D7D25A996288554 == _lA363C15C278AEFB7 then
return (_xd("s5+FnoSVgt2klYKCn4KZg4Q=",240))
end
return nil
end
_l93A0F5D91FBDC005 _l6AC6C239F852AB60:is_active_ex(_lD52EDAAF02723665)
local _l54FCA590490245EE = _lD52EDAAF02723665._l54FCA590490245EE
if _l54FCA590490245EE == nil then
return false
end
return _l54FCA590490245EE._lF8E1754D21D14193 == nil
or _l54FCA590490245EE._lF8E1754D21D14193:get()
end
_l93A0F5D91FBDC005 _l6AC6C239F852AB60:_lDDD3429E9D18D61F(_l2E042F1CBFD735FC)
local _lD52EDAAF02723665 = self:get(_l2E042F1CBFD735FC)
if _lD52EDAAF02723665 == nil then
return false
end
return self:is_active_ex(_lD52EDAAF02723665)
end
_l93A0F5D91FBDC005 _l6AC6C239F852AB60:apply_ex(_lD52EDAAF02723665)
if _lD52EDAAF02723665 == nil then
return false
end
local _l54FCA590490245EE = _lD52EDAAF02723665._l54FCA590490245EE
if _l54FCA590490245EE == nil then
return false
end
_l10882FB42ED493E0._lF8E1754D21D14193 = true
_lF53DDCB6435FC4FE(_l54FCA590490245EE)
_l01CEEDBE28BBA84F(_l54FCA590490245EE)
_l258BF482DC1B342A(_l54FCA590490245EE)
_l332D18FB730972A4(_l54FCA590490245EE)
_l0666F59BC38B253F(_l54FCA590490245EE)
return true
end
_l93A0F5D91FBDC005 _l6AC6C239F852AB60:apply(_l2E042F1CBFD735FC, _l8D7D25A996288554)
local _lD52EDAAF02723665 = self:get(
_l2E042F1CBFD735FC, _l8D7D25A996288554
)
if _lD52EDAAF02723665 == nil then
return false, nil
end
if not self:is_active_ex(_lD52EDAAF02723665) then
return false, _lD52EDAAF02723665
end
local _l54FCA590490245EE = _lD52EDAAF02723665._l54FCA590490245EE
if _l54FCA590490245EE == nil then
return false
end
self:apply_ex(_lD52EDAAF02723665)
return true, _lD52EDAAF02723665
end
_l93A0F5D91FBDC005 _l6AC6C239F852AB60:update(cmd, _l8D7D25A996288554)
local _l407291AB3534872D = _l9EA52547D980AE71.get()
local _l2E042F1CBFD735FC = _l407291AB3534872D[#_l407291AB3534872D]
if _l2E042F1CBFD735FC == nil then
return false, nil, nil
end
local _l4212FF25C6F90CE7, _lD52EDAAF02723665 = self:apply(
_l2E042F1CBFD735FC, _l8D7D25A996288554
)
if not _l4212FF25C6F90CE7 or _lD52EDAAF02723665 == nil then
local _lDDA2D6AE693381B0, new_items = self:apply(
(_xd("WHl6fWlwaA==",28)), _l8D7D25A996288554
)
if new_items ~= nil then
_lD52EDAAF02723665 = new_items
_l2E042F1CBFD735FC = (_xd("Dy4tKj4nPw==",75))
end
end
return true, _lD52EDAAF02723665, _l2E042F1CBFD735FC
end
end
local _l8C975ACFD6C1C204 = { } do
local ref = _l934A3DF2B1DD218E._l22887641E343368B._lA2858F25491F9BF1._l8C975ACFD6C1C204
local _l028D3583617F188C = nil
local _l0FC663F4914E342B = nil
local _l93A0F5D91FBDC005 _l0F741862AE9C381A(_l861DF5F3FC680167, _lB2FDC7CE1037773E)
return math.abs(_lB2FDC7CE1037773E - _l861DF5F3FC680167) <= 2.0
end
local _l93A0F5D91FBDC005 _l6389BA921E263EA9(player)
local _l7B525201E88115BE = client.current_threat()
if _l7B525201E88115BE == nil then
return nil
end
local _lA6AC2A060576BCC9 = vector(
entity.get_origin(player)
)
local _l4AA89032B749ABCF = vector(
entity.get_origin(_l7B525201E88115BE)
)
local _l6B34C906328159C4 = _l4AA89032B749ABCF - _lA6AC2A060576BCC9
local _lDDA2D6AE693381B0, _l6F49EB461422B562 = _l6B34C906328159C4:_l54FCA590490245EE()
return _l6F49EB461422B562 - (2160 * 1) / 12
end
local _l93A0F5D91FBDC005 _lD947C6D97FF49F5F(_l6F49EB461422B562)
if _l0F741862AE9C381A(_l6F49EB461422B562, -(90 * 1)) then
return -(66427 + 66337 - 66337)
end
if _l0F741862AE9C381A(_l6F49EB461422B562, (90 * 1)) then
return (90 + (7889 - 7889))
end
return nil
end
local _l93A0F5D91FBDC005 _lE0552C92FBB7021E()
local me = entity.get_local_player()
if me == nil then
return nil
end
local _lD367F723AFA543D4 = c_entity(me)
if _lD367F723AFA543D4 == nil then
return nil
end
local _l50EC825EDB299DA7 = _lD367F723AFA543D4:get_anim_state()
if _l50EC825EDB299DA7 == nil then
return nil
end
local _l98B5039A495997CA = _l6389BA921E263EA9(me)
if _l98B5039A495997CA == nil then
return nil
end
return _lD947C6D97FF49F5F(
_l885AD57970B0DF46.normalize(_l50EC825EDB299DA7._lDC4DA9F05D0E6788 - _l98B5039A495997CA, -(540 * 1) / 3, (180 + (1754 - 1754)))
)
end
local _l93A0F5D91FBDC005 _l01AF47FC420F770A()
if not _lA11A332CEF1A75DE._l503514483C7022F7 then
return (_xd("Aysw",66))
end
if _lA11A332CEF1A75DE.is_crouched then
return (_xd("rp+CmI6FiIk=",237))
end
if _lA11A332CEF1A75DE.is_moving then
if _lE4C0F29811DB3FE5.is_slow_motion() then
return (_xd("FCsoMGcQJiss",71))
end
return (_xd("4MLbxMPK",173))
end
return (_xd("tJOGiYOOiYA=",231))
end
local _l93A0F5D91FBDC005 _l116DE334C787AB1B()
return ref.disablers:get(
_l01AF47FC420F770A()
)
end
local _l93A0F5D91FBDC005 _l3B0DC0A34DA7358D()
if ui.is_menu_open() then
return false
end
if not ref._lF8E1754D21D14193:get() then
return false
end
if not ref.hotkey:get() then
return false
end
return not _l116DE334C787AB1B()
end
local _l93A0F5D91FBDC005 _l12A9846BEABAD52D(cmd, _l8D7D25A996288554)
local _lD52EDAAF02723665 = _l6AC6C239F852AB60:get(
'Freestanding', _l8D7D25A996288554
)
if _lD52EDAAF02723665 ~= nil and _lD52EDAAF02723665._l002C9C644F32C5C8 ~= nil and not _lD52EDAAF02723665._l002C9C644F32C5C8:get() then
_lD52EDAAF02723665 = nil
end
if _l0FC663F4914E342B ~= nil then
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("BSQnIDQtNQ==",65))
if _lD52EDAAF02723665 ~= nil then
_l6AC6C239F852AB60:apply_ex(_lD52EDAAF02723665)
end
end
if _lA11A332CEF1A75DE.is_vulnerable then
if _lD52EDAAF02723665 ~= nil and _lD52EDAAF02723665._l60AE168D8FFBE9DB ~= nil then
if _l60AE168D8FFBE9DB:apply(cmd, _l6AC6C239F852AB60:get_defensive_items(_lD52EDAAF02723665)) then
local _l8D93B57A952D5141 = _l10882FB42ED493E0._l60AE168D8FFBE9DB._l8D93B57A952D5141
if _l8D93B57A952D5141 ~= nil and _l028D3583617F188C ~= nil then
_l10882FB42ED493E0._l60AE168D8FFBE9DB._l8D93B57A952D5141 = _l8D93B57A952D5141 + _l028D3583617F188C
end
else
if _l0FC663F4914E342B ~= nil then
_l028D3583617F188C = _l0FC663F4914E342B
end
end
end
end
end
_l93A0F5D91FBDC005 _l8C975ACFD6C1C204:update(cmd, _l8D7D25A996288554)
if not _l3B0DC0A34DA7358D() then
_l0FC663F4914E342B = nil
return
end
if cmd.chokedcommands == 0 then
_l0FC663F4914E342B = _lE0552C92FBB7021E()
end
_l10882FB42ED493E0._l8C975ACFD6C1C204 = true
_l12A9846BEABAD52D(cmd, _l8D7D25A996288554)
end
end
local _lF970DACD93205FB0 = { } do
local _l997059B2C046E641 = false
local _l93A0F5D91FBDC005 _l97DD4D5958BF34A1(cmd, _lD52EDAAF02723665)
local me = entity.get_local_player()
if me == nil then
return false
end
local _lC483CC400CE8CA31 = entity.get_player_weapon(me)
if _lC483CC400CE8CA31 == nil then
return false
end
local _lCE07FAFEC1C163B4 = csgo_weapons(_lC483CC400CE8CA31)
if _lCE07FAFEC1C163B4 == nil then
return false
end
local _l8D7D25A996288554 = entity.get_prop(me, 'm_iTeamNum')
local _lFBF55C5B7485D088 = vector(entity.get_origin(me))
local _l12605AF325590B23 = _lCE07FAFEC1C163B4.idx == -(-49)
local _l839A7C966228B44B = entity.get_prop(me, 'm_bIsDefusing') == 1
local _lFF72E4FC3BEB48A6 = entity.get_prop(me, 'm_bIsGrabbingHostage') == 1
local _lEEE5DFEBA7DA95A3 = entity.get_prop(me, 'm_bInBombZone') == 1
if _l839A7C966228B44B or _lFF72E4FC3BEB48A6 then
return false
end
if _lEEE5DFEBA7DA95A3 then
local _l54FCA590490245EE = _lD52EDAAF02723665._l54FCA590490245EE
if not _l54FCA590490245EE.bomb_e_fix:get() or _l12605AF325590B23 then
return false
end
end
if _l8D7D25A996288554 == (3 * 1) and cmd._l46AA6D7987AE7B3A > (15 * 1) then
local _l88755E727E42EF50 = entity.get_all 'CPlantedC4'
for i = 1, #_l88755E727E42EF50 do
local _l268003D5A033B6A1 = _l88755E727E42EF50[i]
local _lE2E315DAC4A5B130 = vector(
entity.get_origin(_l268003D5A033B6A1)
)
local _l6B34C906328159C4 = _lE2E315DAC4A5B130 - _lFBF55C5B7485D088
local _lFBF1C6F606BF12D6 = _l6B34C906328159C4:_l47B52939D0109EA8()
if _lFBF1C6F606BF12D6 < ((37863 + 37801 - 37801) * (62 * 1)) then
return false
end
end
end
local _lA96DFE580302693D = vector(client.camera_angles())
local _l086BFEE20696A8B7 = vector():init_from_angles(_lA96DFE580302693D:unpack())
local _lE8428E8DA83115CB = vector(client.eye_position())
local _l90F2374F5FF20803 = _lE8428E8DA83115CB + _l086BFEE20696A8B7 * (128 + (224 - 224))
local _lEE7EBBAC45A5DBF0, _l2285CDFF4F223D3A = client.trace_line(
me, _lE8428E8DA83115CB.x, _lE8428E8DA83115CB.y, _lE8428E8DA83115CB.z, _l90F2374F5FF20803.x, _l90F2374F5FF20803.y, _l90F2374F5FF20803.z
)
if _lEE7EBBAC45A5DBF0 ~= 1 then
if _l2285CDFF4F223D3A == -1 then
return true
end
local _lDCFE1174861254A7 = entity.get_classname(_l2285CDFF4F223D3A)
if _lDCFE1174861254A7 == 'CWorld' then
return true
end
if _lDCFE1174861254A7 == 'CFuncBrush' then
return true
end
if _lDCFE1174861254A7 == 'CCSPlayer' then
return true
end
if _lDCFE1174861254A7 == 'CHostage' then
local _lE2E315DAC4A5B130 = vector(entity.get_origin(_l2285CDFF4F223D3A))
local _lCD138FF075844224 = _lE8428E8DA83115CB:distsqr(_lE2E315DAC4A5B130)
if _lCD138FF075844224 < (-(-84) * (84 * 1)) then
return false
end
end
if not _l997059B2C046E641 then
_l997059B2C046E641 = true
return false
end
end
return true
end
_l93A0F5D91FBDC005 _lF970DACD93205FB0:update(cmd, _l8D7D25A996288554)
if cmd.in_use == 0 then
_l997059B2C046E641 = false
return false
end
local _lD52EDAAF02723665 = _l6AC6C239F852AB60:get(
(_xd("MxoYFgtfPj4=",127)), _l8D7D25A996288554
)
if _lD52EDAAF02723665 == nil then
return false
end
local _l54FCA590490245EE = _lD52EDAAF02723665._l54FCA590490245EE
if _l54FCA590490245EE == nil then
return false
end
if _l54FCA590490245EE._lF8E1754D21D14193 ~= nil and not _l54FCA590490245EE._lF8E1754D21D14193:get() then
return false
end
if not _l97DD4D5958BF34A1(cmd, _lD52EDAAF02723665) then
return false
end
_l10882FB42ED493E0.yaw_base = 'Local view'
_l6AC6C239F852AB60:apply_ex(_lD52EDAAF02723665)
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("EiQiJT48",81))
_l10882FB42ED493E0.pitch_offset = cmd._l46AA6D7987AE7B3A
if _lD52EDAAF02723665 ~= nil and _lD52EDAAF02723665._l60AE168D8FFBE9DB ~= nil then
_l60AE168D8FFBE9DB:apply(cmd, _l6AC6C239F852AB60:get_defensive_items(_lD52EDAAF02723665))
end
_l10882FB42ED493E0._l8D93B57A952D5141 = _l10882FB42ED493E0._l8D93B57A952D5141 + (180 + (7011 - 7011))
_l10882FB42ED493E0._l8C975ACFD6C1C204 = false
cmd.in_use = 0
return true
end
end
local _l89E23F44D9DA3022 = { } do
local ref = _l934A3DF2B1DD218E._l22887641E343368B._lA2858F25491F9BF1._l89E23F44D9DA3022
_l93A0F5D91FBDC005 _l89E23F44D9DA3022:apply(cmd)
if not ref._lF8E1754D21D14193:get() then
return false
end
cmd._lB6F5466E95879823 = ref._l861DF5F3FC680167:get()
return true
end
_l93A0F5D91FBDC005 _l89E23F44D9DA3022:update(cmd, _l8D7D25A996288554)
if not ref._lF8E1754D21D14193:get() then
return false
end
if not ref.hotkey:get() then
return
end
cmd._lB6F5466E95879823 = ref._l861DF5F3FC680167:get()
_l6AC6C239F852AB60:apply((_xd("EC0uLmIDAw==",66)), _l8D7D25A996288554)
end
end
local _l2E58584FED1AE833 = { } do
local ref = _l934A3DF2B1DD218E._l22887641E343368B._lA2858F25491F9BF1._l2E58584FED1AE833
local _lD24FE37DA79075F4 = nil
local _l8A0103C35BED07C4 = { }
local _l3AF822692A8CD284 = {
[(_xd("HBUWBA==",112))] = --(-90),
[(_xd("8+jm6fU=",129))] = (90 * 1),
[(_xd("8Pnk4ffk8g==",150))] = (180 * 1),
[(_xd("amlrY39pemw=",8))] = 0
}
local _l93A0F5D91FBDC005 _lBB5EBC5C7BF6EE92(old_state, _l2E042F1CBFD735FC, _lB17914F567A7940B)
if _lB17914F567A7940B == 1 or _lB17914F567A7940B == (2 * 1) then
return old_state ~= _l2E042F1CBFD735FC
end
return false
end
local _l93A0F5D91FBDC005 _l996B55C2C5276889(_l5E432A44CEEEFD31, _l2E042F1CBFD735FC, _lB17914F567A7940B)
local _l4212FF25C6F90CE7 = _lBB5EBC5C7BF6EE92(
_l5E432A44CEEEFD31._l2E042F1CBFD735FC, _l2E042F1CBFD735FC, _lB17914F567A7940B
)
_l5E432A44CEEEFD31._l2E042F1CBFD735FC = _l2E042F1CBFD735FC
return _l4212FF25C6F90CE7
end
local _l93A0F5D91FBDC005 _l16ED35717106C51A(id, _l42349E77D54940ED)
local _l2E042F1CBFD735FC, _lB17914F567A7940B = ui.get(id)
if _l8A0103C35BED07C4[id] == nil then
_l8A0103C35BED07C4[id] = {
_l2E042F1CBFD735FC = _l2E042F1CBFD735FC
}
end
local _l20E7D2F5B3447EBF = _l996B55C2C5276889(
_l8A0103C35BED07C4[id], _l2E042F1CBFD735FC, _lB17914F567A7940B
)
if not _l20E7D2F5B3447EBF then
return
end
if _lD24FE37DA79075F4 == _l42349E77D54940ED then
_lD24FE37DA79075F4 = nil
else
_lD24FE37DA79075F4 = _l42349E77D54940ED
end
end
local _l93A0F5D91FBDC005 _lD77034BF6291E584()
_l16ED35717106C51A(ref.left_hotkey.ref, (_xd("V15dTw==",59)))
_l16ED35717106C51A(ref.right_hotkey.ref, (_xd("Ynl3eGQ=",16)))
_l16ED35717106C51A(ref.forward_hotkey.ref, (_xd("MTglIDYlMw==",87)))
_l16ED35717106C51A(ref.backward_hotkey.ref, (_xd("KSooIDwqOS8=",75)))
_l16ED35717106C51A(ref.reset_hotkey.ref, nil)
end
_l93A0F5D91FBDC005 _l2E58584FED1AE833:get()
return _lD24FE37DA79075F4
end
_l93A0F5D91FBDC005 _l2E58584FED1AE833:update(cmd, _l8D7D25A996288554)
local _lC51EE15DB8F17338 = _l3AF822692A8CD284[
_lD24FE37DA79075F4
]
if _lC51EE15DB8F17338 == nil then
return false
end
local _l6F49EB461422B562 = _l10882FB42ED493E0._l8D93B57A952D5141 or 0
_l10882FB42ED493E0._lF8E1754D21D14193 = true
_l10882FB42ED493E0._l8D93B57A952D5141 = _l6F49EB461422B562 + _lC51EE15DB8F17338
_l10882FB42ED493E0._lA550371056A1793A = false
_l10882FB42ED493E0._l8C975ACFD6C1C204 = false
_l10882FB42ED493E0._lB6F5466E95879823 = 0
_l10882FB42ED493E0._l60AE168D8FFBE9DB = nil
if ref.options:get (_xd("Y05URkVLQgdeRlAHSkhDTkFOQlVU",39)) then
_l10882FB42ED493E0._l8D93B57A952D5141 = _l6F49EB461422B562 + _lC51EE15DB8F17338
_l10882FB42ED493E0._l154D22247126C71A = 0
_l10882FB42ED493E0._lC6683553542CC013 = 0
_l10882FB42ED493E0._l16B2581F24D0AB49 = (_xd("oouL",237))
_l10882FB42ED493E0._l89693BE9BF8E2A57 = 0
end
if ref.options:get (_xd("hrKlpbO0oa6kqa6n4KKvpLk=",192)) then
_l10882FB42ED493E0._l853F969D9C31B6DE = (_xd("DSo/Kjc9",94))
_l10882FB42ED493E0._lE1A0F2049757CCF5 = -(-180)
_l10882FB42ED493E0._l647607ED8A0477C6 = true
end
local _l2E042F1CBFD735FC, _lD52EDAAF02723665 = _l6AC6C239F852AB60:apply(
(_xd("hammvamk6ImJ",200)), _l8D7D25A996288554
)
_l89E23F44D9DA3022:apply(cmd)
if _l2E042F1CBFD735FC and _lD52EDAAF02723665 ~= nil then
if _lD52EDAAF02723665._l60AE168D8FFBE9DB ~= nil then
local _lC31619A8155A6231 = _l60AE168D8FFBE9DB:apply(
cmd, _l6AC6C239F852AB60:get_defensive_items(_lD52EDAAF02723665)
)
if not _lC31619A8155A6231 then
goto continue
end
local _l9BE6298FE60BC65B = _l10882FB42ED493E0._l60AE168D8FFBE9DB
if _l9BE6298FE60BC65B ~= nil and _l9BE6298FE60BC65B._l8D93B57A952D5141 ~= nil then
_l9BE6298FE60BC65B._l8D93B57A952D5141 = _l9BE6298FE60BC65B._l8D93B57A952D5141 + _lC51EE15DB8F17338
end
::continue::
end
_l10882FB42ED493E0._l8D93B57A952D5141 = _l10882FB42ED493E0._l8D93B57A952D5141 + _lC51EE15DB8F17338
end
_l10882FB42ED493E0.yaw_base = 'Local view'
return true
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
if not _l861DF5F3FC680167 then
_lD24FE37DA79075F4 = nil
end
_l885AD57970B0DF46.event_callback(
'paint_ui',
_lD77034BF6291E584,
_l861DF5F3FC680167
)
end
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
_l1F975C44CE40652A(_l777D8FF3F76AC3BE:get())
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
_l22887641E343368B._l2E58584FED1AE833 = _l2E58584FED1AE833
end
local _lC1E3F5FBCBA96A35 = { } do
local ref = _l934A3DF2B1DD218E._l22887641E343368B._lCAAFBE4F1A7B03D0._lC1E3F5FBCBA96A35
local _l93A0F5D91FBDC005 _lEFEA8642926FB5E8(_lC483CC400CE8CA31)
local _lCE07FAFEC1C163B4 = csgo_weapons(_lC483CC400CE8CA31)
if _lCE07FAFEC1C163B4 == nil then
return false
end
if _lCE07FAFEC1C163B4.idx == (31 + (7645 - 7645)) then
return false
end
if _lCE07FAFEC1C163B4.type ~= (_xd("AQQDDA8=",106)) then
return false
end
return true
end
local _l93A0F5D91FBDC005 _l934117528761294F(player)
local _lC483CC400CE8CA31 = entity.get_player_weapon(player)
if _lC483CC400CE8CA31 == nil then
return false
end
return _lEFEA8642926FB5E8(_lC483CC400CE8CA31)
end
local _l93A0F5D91FBDC005 _l80C71B3F946149B7(player)
local _l00A0CF18AE296CAF = { }
local _lE976CA5393CA7323 = entity.get_prop(player, 'm_iTeamNum')
local _l0EE77D618FD86A98 = entity.get_player_resource()
for i = 1, globals.maxplayers() do
local _lA9283AD7ED8BD08C = entity.get_prop(
_l0EE77D618FD86A98, 'm_bConnected', i
)
if _lA9283AD7ED8BD08C ~= 1 then
goto continue
end
local _l8D7D25A996288554 = entity.get_prop(
_l0EE77D618FD86A98, 'm_iTeam', i
)
if player == i or _lE976CA5393CA7323 == _l8D7D25A996288554 then
goto continue
end
if (6394*7 - 6394*6 == 6394) then
  local _vC95E8091 = math.sqrt(348841)
  local _v445A4D48 = string.len(tostring(_vC95E8091))
  if _v445A4D48 > 5 then _v445A4D48 = _v445A4D48 + 1 end
end
local _l3A0196851DA0B630 = entity.get_prop(
_l0EE77D618FD86A98, 'm_bAlive', i
)
if _l3A0196851DA0B630 then
table.insert(_l00A0CF18AE296CAF, i)
end
::continue::
end
return _l00A0CF18AE296CAF
end
local _l93A0F5D91FBDC005 _lE3DB4C06648457DD(player)
local _l9CFC259907DCFE47 = nil
local _lCC779777C6841883 = nil
local _l38938C85B3993617 = math.huge
local _lE2E315DAC4A5B130 = vector(
entity.get_origin(player)
)
local me = entity.get_local_player()
if me == nil then
return false
end
local _lCA8EC58D0C8243D1 = _l80C71B3F946149B7(me)
for i = 1, #_lCA8EC58D0C8243D1 do
local _l8AD7384010DCDC10 = _lCA8EC58D0C8243D1[i]
if not _l934117528761294F(_l8AD7384010DCDC10) then
goto continue
end
local _l3635973255C1EB8D = vector(
entity.get_origin(_l8AD7384010DCDC10)
)
local _l6B34C906328159C4 = _l3635973255C1EB8D - _lE2E315DAC4A5B130
local _lFBF1C6F606BF12D6 = _l6B34C906328159C4:_l47B52939D0109EA8()
if _lFBF1C6F606BF12D6 < _l38938C85B3993617 then
_l38938C85B3993617 = _lFBF1C6F606BF12D6
_l9CFC259907DCFE47 = _l6B34C906328159C4
_lCC779777C6841883 = _l8AD7384010DCDC10
end
::continue::
end
return _lCC779777C6841883, _l38938C85B3993617, _l9CFC259907DCFE47
end
_l93A0F5D91FBDC005 _lC1E3F5FBCBA96A35:update()
if not ref._lF8E1754D21D14193:get() then
return
end
local me = entity.get_local_player()
if me == nil then
return false
end
local _lB2FDC7CE1037773E, _lFBF1C6F606BF12D6, _l6B34C906328159C4 = _lE3DB4C06648457DD(me)
local _l860F1EE0D282D527 = ref._lCD138FF075844224:get()
local _lC0D2191749BAEAD0 = _l860F1EE0D282D527 * _l860F1EE0D282D527
if _lB2FDC7CE1037773E == nil or _lFBF1C6F606BF12D6 > _lC0D2191749BAEAD0 then
return false
end
local _lC51EE15DB8F17338 = vector(
_l6B34C906328159C4:_l54FCA590490245EE()
)
_l10882FB42ED493E0._lF8E1754D21D14193 = true
_l10882FB42ED493E0.yaw_base = 'Local view'
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("+9zJ3MHL",168))
_l10882FB42ED493E0._l8D93B57A952D5141 = _lC51EE15DB8F17338.y
_l10882FB42ED493E0._l647607ED8A0477C6 = false
_l10882FB42ED493E0._lA550371056A1793A = false
_l10882FB42ED493E0._l8C975ACFD6C1C204 = false
_l10882FB42ED493E0._lB6F5466E95879823 = 0
return true
end
end
local _l88375EBF3C34EB61 = { } do
local ref = _l934A3DF2B1DD218E._l22887641E343368B._lCAAFBE4F1A7B03D0._l88375EBF3C34EB61
local _l0602C9B4C2EFD178 = (967 + (7666 - 7666))
local _l929ABA0A17613829 = vtable_bind(
'client.dll', 'VClientEntityList003',
(9 * 1) / 3, (_xd("vqKlv/j5lL/jlJS/o6K4qKqnp+Hi472koq/h5+uipb/i",203))
)
local _l30422AAFB21973F6 = 0x10470
local _l331F6F46973FBE46 = _l30422AAFB21973F6 - 0x10
local _l93A0F5D91FBDC005 _l8E89D1FBCD228E24(player)
if player == nil then
return nil
end
local _lAF74CC77B7B14AFC = _l929ABA0A17613829(player)
if _lAF74CC77B7B14AFC == nil then
return nil
end
return ffi._lE0A6FEE53F98CA59((_xd("AQsIBhNN",103)), _lAF74CC77B7B14AFC + _l331F6F46973FBE46)[0]
end
local _l93A0F5D91FBDC005 _lDF570F9563B0F099(player)
if player == nil then
return nil
end
local _lE0E68403F561F28C = c_entity(player)
if _lE0E68403F561F28C == nil then
return nil
end
local _l69333F002ABB0140 = _lE0E68403F561F28C:get_anim_overlay(1)
if _l69333F002ABB0140 == nil or _l69333F002ABB0140.entity == nil then
return nil
end
local _lBEC34733B7955AF0 = _lE0E68403F561F28C:get_sequence_activity(
_l69333F002ABB0140.sequence
)
if _lBEC34733B7955AF0 ~= _l0602C9B4C2EFD178 then
return nil
end
if _l69333F002ABB0140._l5C83B4B3DBB06491 == 0 then
return nil
end
return _l69333F002ABB0140.cycle
end
local _l93A0F5D91FBDC005 _lEB9F8BAA94C3589F(player)
if player == nil then
return nil
end
local _lE0E68403F561F28C = c_entity(player)
if _lE0E68403F561F28C == nil then
return nil
end
local _l69333F002ABB0140 = _lE0E68403F561F28C:get_anim_overlay((160 * 1) / 16)
if _l69333F002ABB0140 == nil then
return nil
end
return _l69333F002ABB0140._l5C83B4B3DBB06491
end
local _l93A0F5D91FBDC005 _l564B71A74C1A462D(player)
local _l7F8C3E3EA8663DA9 = _l8E89D1FBCD228E24(player)
return _l7F8C3E3EA8663DA9 ~= nil
and _l7F8C3E3EA8663DA9 > 0
end
local _l93A0F5D91FBDC005 _l380810AA08DE61C6(player)
return _lDF570F9563B0F099(player) ~= nil
end
local _l93A0F5D91FBDC005 _l0854CFEFDD29947C(player)
local _l3DEEC6ABF3CBE6B4 = _lEB9F8BAA94C3589F(player)
return _l3DEEC6ABF3CBE6B4 ~= nil
and _l3DEEC6ABF3CBE6B4 ~= 0
end
local _l93A0F5D91FBDC005 _l97DD4D5958BF34A1()
if not ref._lF8E1754D21D14193:get() then
return false
end
local me = entity.get_local_player()
if me == nil then
return false
end
if ref._l407291AB3534872D:get (_xd("kLq3pb6zsg==",214)) and _l564B71A74C1A462D(me) then
return true
end
if ref._l407291AB3534872D:get (_xd("YFdeXVNWW1xV",50)) and _l380810AA08DE61C6(me) then
return true
end
if ref._l407291AB3534872D:get (_xd("+M3HxcLLjMjNwc3LyQ==",172)) and _l0854CFEFDD29947C(me) then
return true
end
return false
end
_l93A0F5D91FBDC005 _l88375EBF3C34EB61:update(cmd)
if not _l97DD4D5958BF34A1() then
return
end
cmd.force_defensive = 1
end
end
local _lAB6735E1E2F4E6FA = { } do
local ref = _l934A3DF2B1DD218E._l22887641E343368B._lCAAFBE4F1A7B03D0._lAB6735E1E2F4E6FA
local _l93A0F5D91FBDC005 _l7623F7A67E337654()
local me = entity.get_local_player()
if me == nil then
return false
end
local _l0069C93C23BFA4DC = entity.get_prop(me, 'm_iTeamNum')
local _l0EE77D618FD86A98 = entity.get_player_resource()
for i = 1, globals.maxplayers() do
local _lA9283AD7ED8BD08C = entity.get_prop(
_l0EE77D618FD86A98, 'm_bConnected', i
)
if _lA9283AD7ED8BD08C ~= 1 then
goto continue
end
local _lE976CA5393CA7323 = entity.get_prop(
_l0EE77D618FD86A98, 'm_iTeam', i
)
if me == i or _lE976CA5393CA7323 == _l0069C93C23BFA4DC then
goto continue
end
local _l3A0196851DA0B630 = entity.get_prop(
_l0EE77D618FD86A98, 'm_bAlive', i
)
if _l3A0196851DA0B630 == 1 then
return false
end
::continue::
end
return true
end
local _l93A0F5D91FBDC005 _l97DD4D5958BF34A1()
local _l91E61C6563D1E5E6 = entity.get_game_rules()
if _l91E61C6563D1E5E6 == nil then
return false
end
local _l2120697F8CEA4BB5 = ref._lF8E1754D21D14193:get() or { }
local _lEC10C5FC3845768F = { }
for i = 1, #_l2120697F8CEA4BB5 do
_lEC10C5FC3845768F[_l2120697F8CEA4BB5[i]] = true
end
local _l99DA31570959BD78 = entity.get_prop(
_l91E61C6563D1E5E6, 'm_bWarmupPeriod'
)
if _l99DA31570959BD78 == 1 and _lEC10C5FC3845768F[(_xd("v4mahZ2Y",232))] then
return true
end
if _l7623F7A67E337654() and _lEC10C5FC3845768F[(_xd("gKHuq6Cro6ervQ==",206))] then
return true
end
return false
end
_l93A0F5D91FBDC005 _lAB6735E1E2F4E6FA:update()
local _l2120697F8CEA4BB5 = ref._lF8E1754D21D14193:get()
if _l2120697F8CEA4BB5 == nil or #_l2120697F8CEA4BB5 == 0 then
return false
end
if not _l97DD4D5958BF34A1() then
return false
end
_l10882FB42ED493E0._lF8E1754D21D14193 = true
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("HCosKzAy",95))
_l10882FB42ED493E0.pitch_offset = 0
_l10882FB42ED493E0._l6F49EB461422B562 = (_xd("ze738A==",158))
_l10882FB42ED493E0._l8D93B57A952D5141 = -(-100)
_l10882FB42ED493E0._l16B2581F24D0AB49 = (_xd("3/b2",144))
_l10882FB42ED493E0._l89693BE9BF8E2A57 = 0
_l10882FB42ED493E0._l853F969D9C31B6DE = (_xd("bklcSVRe",61))
_l10882FB42ED493E0._lE1A0F2049757CCF5 = 1
_l10882FB42ED493E0._l647607ED8A0477C6 = false
_l10882FB42ED493E0._l60AE168D8FFBE9DB = nil
_l10882FB42ED493E0._lA550371056A1793A = false
_l10882FB42ED493E0._l8C975ACFD6C1C204 = false
return true
end
end
local _l9ADD09A58A60C241 = { } do
local ref = _l934A3DF2B1DD218E._l22887641E343368B._lCAAFBE4F1A7B03D0._l9ADD09A58A60C241
local _lDAC03EDD31B3B92B = false
local _l69C0ABCD4F60C1C3 = 0
local _l87BECD5EFF17AB7F = -1
local _l93A0F5D91FBDC005 _l01AF47FC420F770A()
if not _lA11A332CEF1A75DE._l503514483C7022F7 then
if _lA11A332CEF1A75DE.is_crouched then
return (_xd("OhIJVjgJFA4YEw==",123))
end
return (_xd("qoKZ",235))
end
if _lA11A332CEF1A75DE.is_crouched then
if _lA11A332CEF1A75DE.is_moving then
return (_xd("S2lwYytFdGlzZW4=",6))
end
return (_xd("g7KvtaOo",192))
end
if _lA11A332CEF1A75DE.is_moving then
if _lE4C0F29811DB3FE5.is_slow_motion() then
return (_xd("7dLRyZ7p39LV",190))
end
return (_xd("yevy7erj",132))
end
return (_xd("vZqPgIqHgIk=",238))
end
local _l93A0F5D91FBDC005 _l97DD4D5958BF34A1()
local _l65D9AD7D704F2535 = _l946A40C0880A61FC.get()
if not _l65D9AD7D704F2535.shift then
return false
end
local me = entity.get_local_player()
if me == nil then
return false
end
local _lC483CC400CE8CA31 = entity.get_player_weapon(me)
if _lC483CC400CE8CA31 == nil then
return false
end
local _lCE07FAFEC1C163B4 = csgo_weapons(_lC483CC400CE8CA31)
if _lCE07FAFEC1C163B4 == nil or _lCE07FAFEC1C163B4.is_revolver then
return false
end
local _l2E042F1CBFD735FC = _l01AF47FC420F770A()
if _l2E042F1CBFD735FC == nil then
return false
end
return ref._l407291AB3534872D:get(_l2E042F1CBFD735FC)
end
local _l93A0F5D91FBDC005 _l3F41A53FB23CA733(player, _lB2FDC7CE1037773E)
local _lA6AC2A060576BCC9 = vector(entity.get_origin(player))
local _l6395FB71D2583240 = vector(entity.get_origin(_lB2FDC7CE1037773E))
return vector((_l6395FB71D2583240 - _lA6AC2A060576BCC9):_l54FCA590490245EE())
end
local _l93A0F5D91FBDC005 _l45260965B5863ED1(cmd)
local me = entity.get_local_player()
if me == nil then
return
end
local _l7B525201E88115BE = client.current_threat()
if _l7B525201E88115BE == nil then
return
end
local _l54FCA590490245EE = _l3F41A53FB23CA733(me, _l7B525201E88115BE)
local _lE8428E8DA83115CB = vector(_l885AD57970B0DF46.get_eye_position(me))
local _l83E72701A65AA625 = vector(entity.hitbox_position(_l7B525201E88115BE, (97789 + 97786 - 97786)))
local _l6E3DFC957380FA08 = vector():init_from_angles(0, _l54FCA590490245EE.y + (270 * 1) / 3)
local _lBEC7B6E081A0F54A = vector():init_from_angles(0, _l54FCA590490245EE.y - (90 + (2783 - 2783)))
local _l22FC050DC2C4D3A2 = _lE8428E8DA83115CB + _l6E3DFC957380FA08 * (31 + (6985 - 6985))
local _lC8BB53401BC0298D = _lE8428E8DA83115CB + _lBEC7B6E081A0F54A * (527 * 1) / 17
local _l6DD9E9EBB4FCAD15, damage_left = client.trace_bullet(
me, _l22FC050DC2C4D3A2.x, _l22FC050DC2C4D3A2.y, _l22FC050DC2C4D3A2.z,
_l83E72701A65AA625.x, _l83E72701A65AA625.y, _l83E72701A65AA625.z, false
)
local _l0AAC627E9F5179F4, damage_right = client.trace_bullet(
me, _lC8BB53401BC0298D.x, _lC8BB53401BC0298D.y, _lC8BB53401BC0298D.z,
_l83E72701A65AA625.x, _l83E72701A65AA625.y, _l83E72701A65AA625.z, false
)
if _l6DD9E9EBB4FCAD15 ~= _l7B525201E88115BE then
damage_left = 0
end
if _l0AAC627E9F5179F4 ~= _l7B525201E88115BE then
damage_right = 0
end
local _l97DD4D5958BF34A1 = (
(damage_left > 0 or damage_right > 0)
and damage_left ~= damage_right
)
if _l97DD4D5958BF34A1 then
_l87BECD5EFF17AB7F = (damage_left > damage_right) and -1 or 1
end
end
local _l93A0F5D91FBDC005 _lF53DDCB6435FC4FE(_l10882FB42ED493E0, _lD52EDAAF02723665)
local _l861DF5F3FC680167 = _lD52EDAAF02723665._l46AA6D7987AE7B3A:get()
local _l72BB9EFD1D25CD9F = _lD52EDAAF02723665._l72BB9EFD1D25CD9F:get()
local _l84BE8A6927CCD15A = _lD52EDAAF02723665._l84BE8A6927CCD15A:get()
local _lCC9D2EFA01452D7D = _lD52EDAAF02723665.pitch_speed:get()
if _l861DF5F3FC680167 == (_xd("lL29",219)) then
return
end
if _l861DF5F3FC680167 == (_xd("ooWQhZiS",241)) then
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("BDI0Mygq",71))
_l10882FB42ED493E0.pitch_offset = _l72BB9EFD1D25CD9F
return
end
if _l861DF5F3FC680167 == (_xd("IQUTCw==",114)) then
local _lB089E1D6D7176955 = globals.curtime() * _lCC9D2EFA01452D7D * 0.1
local _lE8558CABD1E415C2 = _l885AD57970B0DF46.lerp(
_l72BB9EFD1D25CD9F,
_l84BE8A6927CCD15A,
_lB089E1D6D7176955 % 1
)
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("w/Xz9O/t",128))
_l10882FB42ED493E0.pitch_offset = _lE8558CABD1E415C2
end
if _l861DF5F3FC680167 == (_xd("m7+hvKug",200)) then
local _lE8558CABD1E415C2 = _lDAC03EDD31B3B92B
and _l84BE8A6927CCD15A
or _l72BB9EFD1D25CD9F
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("g7WztK+t",192))
_l10882FB42ED493E0.pitch_offset = _lE8558CABD1E415C2
return
end
if _l861DF5F3FC680167 == (_xd("PwwDCQIA",109)) then
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("h7G3sKup",196))
_l10882FB42ED493E0.pitch_offset = _l885AD57970B0DF46.random_int(
_l72BB9EFD1D25CD9F, _l84BE8A6927CCD15A
)
return
end
if _l861DF5F3FC680167 == (_xd("zun86fT+vc/88/ny8A==",157)) then
local _l65D9AD7D704F2535 = _l946A40C0880A61FC.get()
local _lA9B9822BAB56B0F4 = _l65D9AD7D704F2535._l60AE168D8FFBE9DB
if _lA9B9822BAB56B0F4.left == _lA9B9822BAB56B0F4.max then
_l69C0ABCD4F60C1C3 = _l885AD57970B0DF46.random_int(
_l72BB9EFD1D25CD9F, _l84BE8A6927CCD15A
)
end
_l10882FB42ED493E0._l46AA6D7987AE7B3A = (_xd("n6mvqLOx",220))
_l10882FB42ED493E0.pitch_offset = _l69C0ABCD4F60C1C3
end
end
_l93A0F5D91FBDC005 _l9ADD09A58A60C241:update(cmd)
if not ref._lF8E1754D21D14193:get() then
return false
end
if not _l97DD4D5958BF34A1() then
return false
end
_l45260965B5863ED1(cmd)
local _l8072AEA589239EA2 = _l87BECD5EFF17AB7F == -1
local _l60AE168D8FFBE9DB = _l946A40C0880A61FC.get()._l60AE168D8FFBE9DB
local _l91C701C1547264F3 = _l60AE168D8FFBE9DB.left ~= 0
cmd.force_defensive = cmd.command_number % (7 * 1) == 0
local _l44EE65348A599DED = { }
_l44EE65348A599DED._l46AA6D7987AE7B3A = _l91C701C1547264F3 and (_xd("HykvKDMx",92)) or (_xd("/N3e2c3UzA==",184))
_l44EE65348A599DED.pitch_offset = 0
_l44EE65348A599DED.yaw_base = 'At targets'
_l44EE65348A599DED._l6F49EB461422B562 = (_xd("iYCI",184))
_l44EE65348A599DED._l8D93B57A952D5141 = _l91C701C1547264F3 and (90 * 1) or 0
_l44EE65348A599DED._l154D22247126C71A = 0
_l44EE65348A599DED._lC6683553542CC013 = 0
_l44EE65348A599DED._l16B2581F24D0AB49 = (_xd("lr+/",217))
_l44EE65348A599DED._l89693BE9BF8E2A57 = 0
_l44EE65348A599DED._l853F969D9C31B6DE = (_xd("99DF0M3H",164))
_l44EE65348A599DED._lE1A0F2049757CCF5 = _l91C701C1547264F3 and -1 or 1
_l44EE65348A599DED._l647607ED8A0477C6 = false
_l44EE65348A599DED._lA550371056A1793A = false
_l44EE65348A599DED._l8C975ACFD6C1C204 = false
_l44EE65348A599DED._lB6F5466E95879823 = 0
if cmd.chokedcommands == 0 then
_lDAC03EDD31B3B92B = not _lDAC03EDD31B3B92B
end
_lF53DDCB6435FC4FE(_l44EE65348A599DED, ref)
if _l8072AEA589239EA2 then
_l44EE65348A599DED._l8D93B57A952D5141 = -_l44EE65348A599DED._l8D93B57A952D5141
end
_l10882FB42ED493E0._l60AE168D8FFBE9DB = _l44EE65348A599DED
end
end
local _l93A0F5D91FBDC005 _l8074D758FEEC6EDD(cmd)
_lFF88839EB9E6A0C0:update(cmd)
local me = entity.get_local_player()
if me == nil then
return
end
local _l8D7D25A996288554 = _l6AC6C239F852AB60.get_team(me)
if _l8D7D25A996288554 == nil then
return
end
local _l4212FF25C6F90CE7, _lD52EDAAF02723665, _l2E042F1CBFD735FC = _l6AC6C239F852AB60:update(cmd, _l8D7D25A996288554)
_l60AE168D8FFBE9DB:update(cmd)
_l88375EBF3C34EB61:update(cmd)
if _lF970DACD93205FB0:update(cmd, _l8D7D25A996288554) then
return
end
if _l2E58584FED1AE833:update(cmd, _l8D7D25A996288554) then
return
end
if _lC1E3F5FBCBA96A35:update() then
return
end
_l89E23F44D9DA3022:update(cmd, _l8D7D25A996288554)
if _l4212FF25C6F90CE7 and _lD52EDAAF02723665 ~= nil and _lD52EDAAF02723665._l60AE168D8FFBE9DB ~= nil then
_l60AE168D8FFBE9DB:apply(cmd, _l6AC6C239F852AB60:get_defensive_items(_lD52EDAAF02723665))
end
_lA550371056A1793A:update(cmd)
_l8C975ACFD6C1C204:update(cmd, _l8D7D25A996288554)
if not _lC3DEF9996526AC6D:update(cmd) then
_l9ADD09A58A60C241:update(cmd)
end
_lAB6735E1E2F4E6FA:update()
end
local _l93A0F5D91FBDC005 _l4DEFFC57EBE2BF03(cmd)
local list = _l10882FB42ED493E0._l60AE168D8FFBE9DB
local _l47C89983067E9AAD = (
_lE4C0F29811DB3FE5._l24E54F96B8A0941E()
or _lE4C0F29811DB3FE5._l4EBAB0E6718B016B()
)
if _lE4C0F29811DB3FE5.is_duck_peek_assist() then
_l47C89983067E9AAD = false
end
if not _l47C89983067E9AAD then
return false
end
local _l65D9AD7D704F2535 = _l946A40C0880A61FC.get()
local _l60AE168D8FFBE9DB = _l65D9AD7D704F2535._l60AE168D8FFBE9DB
local _l33EE64669B65F465 = (
list ~= nil and
_l60AE168D8FFBE9DB.left > 0
)
if not _l33EE64669B65F465 then
return
end
_l10882FB42ED493E0:_l5B75403142A2939E(list)
end
local _l93A0F5D91FBDC005 _lC2A22A226C53E7AE()
if _l946A40C0880A61FC.get().shift then
local _l191792994E1F0711 = math.max(
1, _l10882FB42ED493E0._l191792994E1F0711 or 1
)
_l9E652E207DDB721D = _l9E652E207DDB721D + 1
if _l9E652E207DDB721D < _l191792994E1F0711 then
return
end
end
local _lD65160BAB3824177 = true
if _l10882FB42ED493E0._l853F969D9C31B6DE == (_xd("uJuGhpeA",242)) then
local _lD37B138C06313CD2 = _l10882FB42ED493E0.invert_chance or (79591 + 79491 - 79491)
local _lB6F5466E95879823 = _l885AD57970B0DF46.random_int(0, (17866 + 17766 - 17766))
_lD65160BAB3824177 = (_lB6F5466E95879823 <= _lD37B138C06313CD2)
end
_l48BBC12929FEE619 = _l48BBC12929FEE619 + 1
if _lD65160BAB3824177 then
_l4F6DF039D5247F95 = not _l4F6DF039D5247F95
end
_l9E652E207DDB721D = 0
end
local _l93A0F5D91FBDC005 _l6B99BC7BE821CCC6()
if _l10882FB42ED493E0._l154D22247126C71A == nil or _l10882FB42ED493E0._lC6683553542CC013 == nil then
return
end
local _l8CC1CB81B66DC415 = 0
local _lE1A0F2049757CCF5 = _l10882FB42ED493E0._lE1A0F2049757CCF5 or 0
if _lE1A0F2049757CCF5 < 0 then
_l8CC1CB81B66DC415 = -1
elseif _lE1A0F2049757CCF5 > 0 then
_l8CC1CB81B66DC415 = 1
else
_l8CC1CB81B66DC415 = _l4F6DF039D5247F95 and -1 or 1
end
local _l6F49EB461422B562 = _l10882FB42ED493E0._l8D93B57A952D5141 or 0
if _l8CC1CB81B66DC415 < 0 then
_l10882FB42ED493E0._l8D93B57A952D5141 = _l6F49EB461422B562 + _l10882FB42ED493E0._l154D22247126C71A
else
_l10882FB42ED493E0._l8D93B57A952D5141 = _l6F49EB461422B562 + _l10882FB42ED493E0._lC6683553542CC013
end
end
local _l93A0F5D91FBDC005 _l45A74F8D8F235B03()
if _l10882FB42ED493E0._l16B2581F24D0AB49 == (_xd("wuvr/uj5",141)) then
local _l6F49EB461422B562 = _l10882FB42ED493E0._l8D93B57A952D5141 or 0
local _lE8558CABD1E415C2 = _l10882FB42ED493E0._l89693BE9BF8E2A57
_l10882FB42ED493E0._l16B2581F24D0AB49 = (_xd("KgMD",101))
_l10882FB42ED493E0._l89693BE9BF8E2A57 = 0
_l10882FB42ED493E0._l8D93B57A952D5141 = _l6F49EB461422B562 + (_l4F6DF039D5247F95 and _lE8558CABD1E415C2 or 0)
return
end
if _l10882FB42ED493E0._l16B2581F24D0AB49 == (_xd("t5GagJGG",244)) then
local _l6F49EB461422B562 = _l10882FB42ED493E0._l8D93B57A952D5141 or 0
local _lE8558CABD1E415C2 = _l10882FB42ED493E0._l89693BE9BF8E2A57
if not _l4F6DF039D5247F95 then
_lE8558CABD1E415C2 = -_lE8558CABD1E415C2
end
_l10882FB42ED493E0._l16B2581F24D0AB49 = (_xd("U3p6",28))
_l10882FB42ED493E0._l89693BE9BF8E2A57 = 0
_l10882FB42ED493E0._l8D93B57A952D5141 = _l6F49EB461422B562 + _lE8558CABD1E415C2 / (15484 + 15482 - 15482)
return
end
if _l10882FB42ED493E0._l16B2581F24D0AB49 == (_xd("SHByb29+aQ==",27)) then
local _lB90694C605679381 = _l48BBC12929FEE619 % #_lF6D025BF9445EF38
local _l108EE9BD27854EC3 = _lF6D025BF9445EF38[_lB90694C605679381 + 1]
local _l6F49EB461422B562 = _l10882FB42ED493E0._l8D93B57A952D5141 or 0
local _lE8558CABD1E415C2 = _l10882FB42ED493E0._l89693BE9BF8E2A57
_l10882FB42ED493E0._l16B2581F24D0AB49 = (_xd("7cTE",162))
_l10882FB42ED493E0._l89693BE9BF8E2A57 = 0
_l10882FB42ED493E0._l8D93B57A952D5141 = _l6F49EB461422B562 + (_lE8558CABD1E415C2 * _l108EE9BD27854EC3)
return
end
if _l10882FB42ED493E0._l16B2581F24D0AB49 == (_xd("KgkQFw==",121)) then
local _lB089E1D6D7176955 = globals.curtime() * -(-3)
local _l6F49EB461422B562 = _l10882FB42ED493E0._l8D93B57A952D5141 or 0
local _lE8558CABD1E415C2 = _l10882FB42ED493E0._l89693BE9BF8E2A57
_l10882FB42ED493E0._l16B2581F24D0AB49 = (_xd("jaSk",194))
_l10882FB42ED493E0._l89693BE9BF8E2A57 = 0
_l10882FB42ED493E0._l8D93B57A952D5141 = _l6F49EB461422B562 + _l885AD57970B0DF46.lerp(
-_lE8558CABD1E415C2, _lE8558CABD1E415C2, _lB089E1D6D7176955 % 1
)
return
end
end
local _l93A0F5D91FBDC005 _l0666F59BC38B253F()
if _l10882FB42ED493E0._l853F969D9C31B6DE == (_xd("poWYmIme",236)) then
local _lE8558CABD1E415C2 = _l10882FB42ED493E0._lE1A0F2049757CCF5
if _lE8558CABD1E415C2 == 0 then
_lE8558CABD1E415C2 = 1
end
if not _l4F6DF039D5247F95 then
_lE8558CABD1E415C2 = -_lE8558CABD1E415C2
end
_l10882FB42ED493E0._l853F969D9C31B6DE = (_xd("/9jN2MXP",172))
_l10882FB42ED493E0._lE1A0F2049757CCF5 = _lE8558CABD1E415C2
end
end
local _l93A0F5D91FBDC005 _l922C1A35EA67252E(cmd)
_l4DEFFC57EBE2BF03(cmd)
if cmd.chokedcommands == 0 then
_lC2A22A226C53E7AE()
end
_l0666F59BC38B253F()
_l45A74F8D8F235B03()
_l6B99BC7BE821CCC6()
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
_lFF88839EB9E6A0C0:shutdown()
_l10882FB42ED493E0:unset()
end
local _l93A0F5D91FBDC005 _l99FD7B517E71510F()
_lFF88839EB9E6A0C0:shutdown()
_l10882FB42ED493E0:unset()
end
local _l93A0F5D91FBDC005 _l6F48C10A3AA76108(cmd)
_l10882FB42ED493E0:clear()
_l10882FB42ED493E0:unset()
_l8074D758FEEC6EDD(cmd)
_l922C1A35EA67252E(cmd)
_l10882FB42ED493E0:set()
end
_l885AD57970B0DF46.event_callback(
'shutdown',
_l9414F1C1C88188EF
)
_l885AD57970B0DF46.event_callback(
'pre_config_save',
_l99FD7B517E71510F
)
_l885AD57970B0DF46.event_callback(
'setup_command',
_l6F48C10A3AA76108
)
end
local _lE2976F4B96444697 do
local _l7B49218C1AF8B0F2 do
local _l67FF28C9241F3A40 do
local ref = _l934A3DF2B1DD218E._lE2976F4B96444697._l7B49218C1AF8B0F2._l67FF28C9241F3A40
local r_aspectratio = cvar.r_aspectratio
local _l93A0F5D91FBDC005 _lF9AACBDFAB6C9892()
r_aspectratio:set_raw_float(
tostring(r_aspectratio:get_string())
)
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
_lF9AACBDFAB6C9892()
end
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
if not _l861DF5F3FC680167 then
_lF9AACBDFAB6C9892()
end
_l885AD57970B0DF46.event_callback(
'shutdown',
_l9414F1C1C88188EF,
_l861DF5F3FC680167
)
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l34788543EEACB6F4(_l777D8FF3F76AC3BE)
r_aspectratio:set_raw_float(
_l777D8FF3F76AC3BE:get() * 0.01
)
end
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
if _l861DF5F3FC680167 then
ref._l861DF5F3FC680167:set_callback(_l34788543EEACB6F4, true)
else
ref._l861DF5F3FC680167:unset_callback(_l34788543EEACB6F4)
end
_l1F975C44CE40652A(_l861DF5F3FC680167)
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _l7A06D468E30DD0C0 do
local ref = _l934A3DF2B1DD218E._lE2976F4B96444697._l7B49218C1AF8B0F2._l7A06D468E30DD0C0
local cam_idealdist = cvar.cam_idealdist
local _l1AEE522CF058D942 = {
ui.reference('Visuals', 'Effects', (_xd("ACk0JSNmMi4vNCJmNiM0NSkoZm4nKi8wI28=",70)))
}
local _l6EB63AC60E2CA1D2 = (15 + (9734 - 9734))
local _l93A0F5D91FBDC005 _lF93B188B91EBED3F()
cam_idealdist:set_float(tonumber(cam_idealdist:get_string()))
end
local _l93A0F5D91FBDC005 _l6019CE704534C5F8(_l861DF5F3FC680167)
cam_idealdist:set_raw_float(_l861DF5F3FC680167)
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
cam_idealdist:set_raw_float(_l6EB63AC60E2CA1D2)
end
local _l93A0F5D91FBDC005 _lD77034BF6291E584()
local me = entity.get_local_player()
local _l97DD4D5958BF34A1 = (
entity._l3A0196851DA0B630(me)
and ui.get(_l1AEE522CF058D942[1])
and ui.get(_l1AEE522CF058D942[(2 * 1)])
)
if not _l97DD4D5958BF34A1 then
_l6EB63AC60E2CA1D2 = (15 * 1)
return
end
local _lCD138FF075844224 = ref._lCD138FF075844224:get()
local _l15FC03D161D82F9E = ref._l15FC03D161D82F9E:get()
local _lE8558CABD1E415C2 = (_lCD138FF075844224 - _l6EB63AC60E2CA1D2) / _l15FC03D161D82F9E
_l6EB63AC60E2CA1D2 = _l6EB63AC60E2CA1D2 + (_lCD138FF075844224 > _l6EB63AC60E2CA1D2 and _lE8558CABD1E415C2 or -_lE8558CABD1E415C2)
_l6EB63AC60E2CA1D2 = _lCD138FF075844224 < _l6EB63AC60E2CA1D2 and _lCD138FF075844224 or _l6EB63AC60E2CA1D2
_l6019CE704534C5F8(_l6EB63AC60E2CA1D2)
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
if not _l861DF5F3FC680167 then
_lF93B188B91EBED3F()
end
_l885AD57970B0DF46.event_callback(
'shutdown',
_l9414F1C1C88188EF,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'paint_ui',
_lD77034BF6291E584,
_l861DF5F3FC680167
)
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _l353197A7D87942B7 do
local ref = _l934A3DF2B1DD218E._lE2976F4B96444697._l7B49218C1AF8B0F2._l353197A7D87942B7
local cl_bobup = cvar.cl_bobup
local cl_bobamt_lat = cvar.cl_bobamt_lat
local cl_bobamt_vert = cvar.cl_bobamt_vert
local cl_righthand = cvar.cl_righthand
local _lD0315A555DD28BDC = materialsystem.find_materials 'sleeve' or { }
local _l93A0F5D91FBDC005 _lAB35F891B98BDD28(_l861DF5F3FC680167)
for i = 1, #_lD0315A555DD28BDC do
_lD0315A555DD28BDC[i]:set_material_var_flag((14 * 1) / 7, _l861DF5F3FC680167)
end
end
local viewmodel_fov = cvar.viewmodel_fov
local viewmodel_offset_x = cvar.viewmodel_offset_x
local viewmodel_offset_y = cvar.viewmodel_offset_y
local viewmodel_offset_z = cvar.viewmodel_offset_z
local _l1C487750D69F8816 = 0.0
local _l05779371425D2CC8 = { }
local _l93A0F5D91FBDC005 _l1E2F3F68A887746F()
for i = 1, #_l05779371425D2CC8 do
local _lEFEA059C601F096C = _l05779371425D2CC8[i]
local _lCE07FAFEC1C163B4 = csgo_weapons[_lEFEA059C601F096C]
_lCE07FAFEC1C163B4._lBE7F9E5E430364CD.hide_view_model_zoomed = true
end
end
local _l93A0F5D91FBDC005 _l6548CD84797519FA(_lCE07FAFEC1C163B4)
if not _lCE07FAFEC1C163B4._lBE7F9E5E430364CD.hide_view_model_zoomed then
return
end
_lCE07FAFEC1C163B4._lBE7F9E5E430364CD.hide_view_model_zoomed = false
table.insert(_l05779371425D2CC8, _lCE07FAFEC1C163B4.idx)
end
local _l93A0F5D91FBDC005 _lD53E5205124D5FDE()
local me = entity.get_local_player()
if me == nil then
return nil
end
local _lC483CC400CE8CA31 = entity.get_player_weapon(me)
if _lC483CC400CE8CA31 == nil then
return nil
end
return csgo_weapons(_lC483CC400CE8CA31)
end
local _l93A0F5D91FBDC005 _lECF40F1593FBDFB7()
local me = entity.get_local_player()
if me == nil or not entity._l3A0196851DA0B630(me) then
return nil, nil, nil
end
local _lC483CC400CE8CA31 = entity.get_player_weapon(me)
if _lC483CC400CE8CA31 == nil then
return nil, nil, nil
end
local _lCE07FAFEC1C163B4 = csgo_weapons(_lC483CC400CE8CA31)
if _lCE07FAFEC1C163B4 == nil then
return nil, nil, nil
end
local x = ref._l1285CD8A8A89032F:get() * 0.1
local y = ref._lB179AD0D5B6AB17F:get() * 0.1
local z = ref.offset_z:get() * 0.1
local _lEFC148CB3CC0236D = (
ref.options:get (_xd("RXV5ZnM2cnlheDZlf3F+Yg==",22))
or ref.options:get (_xd("jbK+rLa0v763+7K1+6i4tKu+",219))
)
if ref.options:get (_xd("oImLjY+VzI2ChYGNmIWDgg==",236)) then
local _l3B86A5785278720A = vector(
entity.get_prop(me, 'm_vecVelocity')
)
local _l1453A20F7D171DA4 = math.min(
1.0, _l3B86A5785278720A:_lFAC0E14709703CBE() / (91534 + 91234 - 91234)
)
cl_bobup:set_raw_int(0)
cl_bobamt_lat:set_raw_float(0)
cl_bobamt_vert:set_raw_float(0)
viewmodel_offset_y:set_raw_float(y)
viewmodel_offset_z:set_raw_float(z)
y = y + math._l9C5D07C6A6ADB508(globals.realtime() * -(-6)) * _l1453A20F7D171DA4 * 0.8
z = z + math._l9C5D07C6A6ADB508(globals.realtime() * -(-3)) * _l1453A20F7D171DA4 * 0.2
end
if ref.options:get (_xd("KRkVCh9aHhUNFFoJEx0SDg==",122)) then
local _l635EC3DC20E2D87B = entity.get_prop(
me, 'm_bIsScoped'
)
_l1C487750D69F8816 = _l15E0D0F4CA07DE15.interp(
_l1C487750D69F8816, _l635EC3DC20E2D87B == 1, 0.05
)
x = _l885AD57970B0DF46.lerp(x, -4.75, _l1C487750D69F8816)
y = _l885AD57970B0DF46.lerp(y, -(5 + (3850 - 3850)), _l1C487750D69F8816)
z = _l885AD57970B0DF46.lerp(z, -(22 * 1) / 11, _l1C487750D69F8816)
else
_l1C487750D69F8816 = 0
end
if _lEFC148CB3CC0236D then
_l6548CD84797519FA(_lCE07FAFEC1C163B4)
else
_l1E2F3F68A887746F()
end
return x, y, z
end
local _l93A0F5D91FBDC005 _l7E9E25A7C9A94E8E(_l55BF94B197E4DF15)
local _lB5EE890282D46053 = cl_righthand:get_string() == '1'
if _lB5EE890282D46053 then
cl_righthand:set_raw_int(_l55BF94B197E4DF15 and 0 or 1)
else
cl_righthand:set_raw_int(_l55BF94B197E4DF15 and 1 or 0)
end
end
local _l93A0F5D91FBDC005 _l9C76A73D616A7CC3()
_l1E2F3F68A887746F()
cl_bobup:set_float(tonumber(cl_bobup:get_string()))
cl_bobamt_lat:set_float(tonumber(cl_bobamt_lat:get_string()))
cl_bobamt_vert:set_float(tonumber(cl_bobamt_vert:get_string()))
viewmodel_fov:set_float(tonumber(viewmodel_fov:get_string()))
viewmodel_offset_x:set_float(tonumber(viewmodel_offset_x:get_string()))
viewmodel_offset_y:set_float(tonumber(viewmodel_offset_y:get_string()))
viewmodel_offset_z:set_float(tonumber(viewmodel_offset_z:get_string()))
cl_righthand:set_int(cl_righthand:get_string() == '1' and 1 or 0)
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
_l9C76A73D616A7CC3()
_lAB35F891B98BDD28(false)
end
local _l93A0F5D91FBDC005 _lE9E4624A5309F296()
local x, y, z = _lECF40F1593FBDFB7()
if x == nil or y == nil or z == nil then
return
end
viewmodel_offset_x:set_raw_float(x)
viewmodel_offset_y:set_raw_float(y)
viewmodel_offset_z:set_raw_float(z)
end
local _l39CA3A2BBD230E12 = nil
local _l93A0F5D91FBDC005 _l926BEA2B79033569(cmd)
local _lCE07FAFEC1C163B4 = _lD53E5205124D5FDE()
if _lCE07FAFEC1C163B4 == nil then
return
end
local _lA9000C98FC9DBAB8 = _lCE07FAFEC1C163B4.idx
if _l39CA3A2BBD230E12 ~= _lA9000C98FC9DBAB8 then
_l39CA3A2BBD230E12 = _lA9000C98FC9DBAB8
_l7E9E25A7C9A94E8E(_lCE07FAFEC1C163B4.type == (_xd("srewv7w=",217)))
end
end
local _l93A0F5D91FBDC005 _l3B468154C75B37A4(ev_name)
return _l93A0F5D91FBDC005(ctx)
if not ref._lF8E1754D21D14193:get() then return end
local _lFA712594F7F860EF = ref.options:get (_xd("XWpiYHlqL3xjamp5anw=",15))
if not _lFA712594F7F860EF then return end
local _lDB160C0F87126763 = ctx and (ctx._lDB160C0F87126763 or ctx.model_name) or ''
local _lF9C45326EA5C54A9 = false
if entity.get_local_player() ~= nil then
_lF9C45326EA5C54A9 = string._lF667154D37C32EF9(_lDB160C0F87126763, 'sleeve', 1, true) ~= nil
end
if not _lF9C45326EA5C54A9 then return end
return true
end
end
local _lDBE6D5767F8C7853 = _l3B468154C75B37A4((_xd("AhQHETkLCQIDCg==",102)))
local _l155058EE199C5FD5 = _l3B468154C75B37A4((_xd("tLa9vLWGq7y3vbyr",217)))
local _l8C54D87FAF34C052 = _l3B468154C75B37A4((_xd("NCIxJw89PzQ1PA81KDUzJSQ1",80)))
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
if not _l861DF5F3FC680167 then
_l9C76A73D616A7CC3()
_l885AD57970B0DF46.event_callback(
'pre_render',
_l926BEA2B79033569,
false
)
end
_l885AD57970B0DF46.event_callback(
'shutdown',
_l9414F1C1C88188EF,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'pre_render',
_lE9E4624A5309F296,
_l861DF5F3FC680167
)
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l5784F59001CEB306(_l777D8FF3F76AC3BE)
viewmodel_fov:set_raw_float(
_l777D8FF3F76AC3BE:get() * 0.1
)
end
local _l93A0F5D91FBDC005 _l90A29216B7239503(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get (_xd("jrGxrrKotaThqq+op6ThqaCvpQ==",193))
if _l861DF5F3FC680167 then
local _lCE07FAFEC1C163B4 = _lD53E5205124D5FDE()
if _lCE07FAFEC1C163B4 ~= nil then
_l7E9E25A7C9A94E8E(_lCE07FAFEC1C163B4.type == (_xd("c3Zxfn0=",24)))
end
else
cl_righthand:set_raw_int(cl_righthand:get_string() == '1' and 1 or 0)
end
_l885AD57970B0DF46.event_callback(
'pre_render',
_l926BEA2B79033569,
_l861DF5F3FC680167
)
local _l0FCF88C6D10CBE57 = _l777D8FF3F76AC3BE:get (_xd("cEdPTVRHAlFOR0dUR1E=",34))
_lAB35F891B98BDD28(_l0FCF88C6D10CBE57)
end
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
if not _l861DF5F3FC680167 then
_l9C76A73D616A7CC3()
_lAB35F891B98BDD28(false)
end
if _l861DF5F3FC680167 then
ref.fov:set_callback(_l5784F59001CEB306, true)
ref.options:set_callback(_l90A29216B7239503, true)
else
ref.fov:unset_callback(_l5784F59001CEB306)
ref.options:unset_callback(_l90A29216B7239503)
end
_l1F975C44CE40652A(_l861DF5F3FC680167)
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _l8FAAA6B1FE921DDE do
local ref = _l934A3DF2B1DD218E._lE2976F4B96444697._l7B49218C1AF8B0F2._l8FAAA6B1FE921DDE
local _lA5BCB54B258FE813 = 1 / -(-1080)
local _l150437F86297E966 = 0.0
local _l93A0F5D91FBDC005 _l3DAD1C6E17B1F8D1(x, y, w, h, _lC81018446DEC5DAC, g1, b1, a1, _l82F5FEA42BD4A752, g2, b2, a2, horizontal)
local _l874D7894D2C9FCDB = ref.start_fade:get() * 0.01 * (2 + (402 - 402))
if horizontal then
local _lE427A43A0BD6E856 = math.floor(w * _l874D7894D2C9FCDB * 0.5)
renderer.gradient(x, y, _lE427A43A0BD6E856, h, _l82F5FEA42BD4A752, g2, b2, a2, _lC81018446DEC5DAC, g1, b1, a1, true)
renderer.gradient(x + _lE427A43A0BD6E856, y, w - _lE427A43A0BD6E856, h, _lC81018446DEC5DAC, g1, b1, a1, _l82F5FEA42BD4A752, g2, b2, a2, true)
else
local _l57CA61C1774F772F = math.floor(h * _l874D7894D2C9FCDB * 0.5)
renderer.gradient(x, y, w, _l57CA61C1774F772F, _l82F5FEA42BD4A752, g2, b2, a2, _lC81018446DEC5DAC, g1, b1, a1, false)
renderer.gradient(x, y + _l57CA61C1774F772F, w, h - _l57CA61C1774F772F, _lC81018446DEC5DAC, g1, b1, a1, _l82F5FEA42BD4A752, g2, b2, a2, false)
end
end
local _l93A0F5D91FBDC005 _lE4A2F025A6F6D446()
_l002C9C644F32C5C8.set(_lE4C0F29811DB3FE5.visuals.effects.remove_scope_overlay, false)
end
local _l93A0F5D91FBDC005 _lD77034BF6291E584()
local me = entity.get_local_player()
if me == nil or not entity._l3A0196851DA0B630(me) then
return
end
_l002C9C644F32C5C8.set(_lE4C0F29811DB3FE5.visuals.effects.remove_scope_overlay, true)
local _l635EC3DC20E2D87B = entity.get_prop(
me, 'm_bIsScoped'
)
_l150437F86297E966 = _l15E0D0F4CA07DE15.interp(_l150437F86297E966, _l635EC3DC20E2D87B == 1, 1 / ref.animation_speed:get())
if _l150437F86297E966 == 0.0 then
return
end
local _l5A7374A1D131DE50 = vector(
client._l42B4F40833E0955A()
)
local _l7470804F9ED59421 = _l5A7374A1D131DE50 * 0.5
local col = _l424F4D241D652803(ref._l424F4D241D652803:get())
local _lE8558CABD1E415C2 = ref._lE8558CABD1E415C2:get() * _l5A7374A1D131DE50.y * _lA5BCB54B258FE813
local _l1DB180C36A4930A4 = ref._l1DB180C36A4930A4:get() * _l5A7374A1D131DE50.y * _lA5BCB54B258FE813
_lE8558CABD1E415C2 = math.floor(_lE8558CABD1E415C2)
_l1DB180C36A4930A4 = math.floor(_l1DB180C36A4930A4)
local _l6B34C906328159C4 = _l1DB180C36A4930A4 - _lE8558CABD1E415C2
local _l7CD430B61533E1A0 = col:clone()
local _l9DA4F742FB9C1801 = col:clone()
_l7CD430B61533E1A0.a = _l7CD430B61533E1A0.a * _l150437F86297E966
_l9DA4F742FB9C1801.a = 0
local _lD75D3219FDCD5C2C = ref._lD75D3219FDCD5C2C:get()
if _lD75D3219FDCD5C2C == (_xd("HCE6LzorKg==",78)) then
local _l93A0F5D91FBDC005 _l9D6D83CF1310D160(_l66FA3361E2AD68E1, _l74A2F8DB8AD10F36, _lF4C5D01EC0D13FA6, _l99D9E916FB4B0174, c1, c2)
local _lDA8852809B27966B, dy = _lF4C5D01EC0D13FA6 - _l66FA3361E2AD68E1, _l99D9E916FB4B0174 - _l74A2F8DB8AD10F36
local _lFAC0E14709703CBE = math.sqrt(_lDA8852809B27966B * _lDA8852809B27966B + dy * dy)
local _l18AB5651E667112B = math.max(1, math.floor(_lFAC0E14709703CBE))
for i = 0, _l18AB5651E667112B - 1 do
local t = i / _l18AB5651E667112B
local _lBCE271C83901A349 = (i + 1) / _l18AB5651E667112B
local r = c1.r + (c2.r - c1.r) * t
local g = c1.g + (c2.g - c1.g) * t
local b = c1.b + (c2.b - c1.b) * t
local a = c1.a + (c2.a - c1.a) * t
local x = _l66FA3361E2AD68E1 + _lDA8852809B27966B * t
local y = _l74A2F8DB8AD10F36 + dy * t
local _l3171F89471177907 = _l66FA3361E2AD68E1 + _lDA8852809B27966B * _lBCE271C83901A349
local _l99F7B74E03E04A46 = _l74A2F8DB8AD10F36 + dy * _lBCE271C83901A349
renderer._lD1EA4DC5CD8C4190(
math.floor(x + 0.5), math.floor(y + 0.5),
math.floor(_l3171F89471177907 + 0.5), math.floor(_l99F7B74E03E04A46 + 0.5),
r, g, b, a
)
end
end
local _l9719887664E14BDF = 1 / math.sqrt((6 * 1) / 3)
local _l04150DB1C7C00EB5 = {
{ -1, -1 },
{ 1, -1 },
{ -1, 1 },
{ 1, 1 },
}
for i = 1, (52739 + 52735 - 52735) do
local _lDA8852809B27966B, dy = _l04150DB1C7C00EB5[i][1], _l04150DB1C7C00EB5[i][(49198 + 49196 - 49196)]
if _lDA8852809B27966B < 0 and ref.exclude:get (_xd("0fj76Q==",157)) then goto continue end
if _lDA8852809B27966B > 0 and ref.exclude:get (_xd("h7yyvaE=",213)) then goto continue end
if dy < 0 and ref.exclude:get (_xd("Y1hH",55)) then goto continue end
if dy > 0 and ref.exclude:get (_xd("lbijo7i6",215)) then goto continue end
local _lE69EF50F2B5DE394, uy = _lDA8852809B27966B * _l9719887664E14BDF, dy * _l9719887664E14BDF
local _l66FA3361E2AD68E1 = _l7470804F9ED59421.x + _lE69EF50F2B5DE394 * _lE8558CABD1E415C2
local _l74A2F8DB8AD10F36 = _l7470804F9ED59421.y + uy * _lE8558CABD1E415C2
local _lF4C5D01EC0D13FA6 = _l7470804F9ED59421.x + _lE69EF50F2B5DE394 * _l1DB180C36A4930A4
local _l99D9E916FB4B0174 = _l7470804F9ED59421.y + uy * _l1DB180C36A4930A4
_l9D6D83CF1310D160(_l66FA3361E2AD68E1, _l74A2F8DB8AD10F36, _lF4C5D01EC0D13FA6, _l99D9E916FB4B0174, _l7CD430B61533E1A0, _l9DA4F742FB9C1801)
::continue::
end
else
local _lB63B935CEB57B943 = _lD75D3219FDCD5C2C == (_xd("7MfV",162)) and _l3DAD1C6E17B1F8D1 or renderer.gradient
if not ref.exclude:get (_xd("NA8Q",96)) then
_lB63B935CEB57B943(
_l7470804F9ED59421.x, _l7470804F9ED59421.y - _lE8558CABD1E415C2 + 1, 1, -_l6B34C906328159C4,
_l7CD430B61533E1A0.r, _l7CD430B61533E1A0.g, _l7CD430B61533E1A0.b, _l7CD430B61533E1A0.a,
_l9DA4F742FB9C1801.r, _l9DA4F742FB9C1801.g, _l9DA4F742FB9C1801.b, _l9DA4F742FB9C1801.a,
false
)
end
if not ref.exclude:get (_xd("nrOoqLOx",220)) then
_lB63B935CEB57B943(
_l7470804F9ED59421.x, _l7470804F9ED59421.y + _lE8558CABD1E415C2, 1, _l6B34C906328159C4,
_l7CD430B61533E1A0.r, _l7CD430B61533E1A0.g, _l7CD430B61533E1A0.b, _l7CD430B61533E1A0.a,
_l9DA4F742FB9C1801.r, _l9DA4F742FB9C1801.g, _l9DA4F742FB9C1801.b, _l9DA4F742FB9C1801.a,
false
)
end
if not ref.exclude:get (_xd("8djbyQ==",189)) then
_lB63B935CEB57B943(
_l7470804F9ED59421.x - _lE8558CABD1E415C2 + 1, _l7470804F9ED59421.y, -_l6B34C906328159C4, 1,
_l7CD430B61533E1A0.r, _l7CD430B61533E1A0.g, _l7CD430B61533E1A0.b, _l7CD430B61533E1A0.a,
_l9DA4F742FB9C1801.r, _l9DA4F742FB9C1801.g, _l9DA4F742FB9C1801.b, _l9DA4F742FB9C1801.a,
true
)
end
if not ref.exclude:get (_xd("59zS3cE=",181)) then
_lB63B935CEB57B943(
_l7470804F9ED59421.x + _lE8558CABD1E415C2, _l7470804F9ED59421.y, _l6B34C906328159C4, 1,
_l7CD430B61533E1A0.r, _l7CD430B61533E1A0.g, _l7CD430B61533E1A0.b, _l7CD430B61533E1A0.a,
_l9DA4F742FB9C1801.r, _l9DA4F742FB9C1801.g, _l9DA4F742FB9C1801.b, _l9DA4F742FB9C1801.a,
true
)
end
end
end
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
if not _l861DF5F3FC680167 then
_l002C9C644F32C5C8.unset(_lE4C0F29811DB3FE5.visuals.effects.remove_scope_overlay)
end
_l885AD57970B0DF46.event_callback(
'paint',
_lE4A2F025A6F6D446,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'paint_ui',
_lD77034BF6291E584,
_l861DF5F3FC680167
)
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
_l1F975C44CE40652A(_l777D8FF3F76AC3BE:get())
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _lB4FFB8F7D3B1C70E do
local ref = _l934A3DF2B1DD218E._lE2976F4B96444697._l7B49218C1AF8B0F2._lB4FFB8F7D3B1C70E
local mat_ambient_light_r = cvar.mat_ambient_light_r
local mat_ambient_light_g = cvar.mat_ambient_light_g
local mat_ambient_light_b = cvar.mat_ambient_light_b
local r_modelAmbientMin = cvar.r_modelAmbientMin
local _l0FBB6CB7B09F1682, exposure_min_default, exposure_max_default
local _l50C72128379B097F, exposure_prev, model_ambient_min_prev, wallcolor_prev
local _l93A0F5D91FBDC005 _l8474BB79A90E60CF()
mat_ambient_light_r:set_raw_float(0)
mat_ambient_light_g:set_raw_float(0)
mat_ambient_light_b:set_raw_float(0)
end
local _l93A0F5D91FBDC005 _lAD17CC4A6D8E3CA4(tone_map_controller)
if (8415*7 - 8415*6 == 8415) then
  local _vA40DF765 = math.sqrt(508319)
  local _v2B2553A4 = string.len(tostring(_vA40DF765))
  if _v2B2553A4 > 3 then _v2B2553A4 = _v2B2553A4 + 1 end
end
if _l0FBB6CB7B09F1682 == -1 then
entity._lB09C0F65272CA842(tone_map_controller, 'm_bUseCustomBloomScale', 0)
entity._lB09C0F65272CA842(tone_map_controller, 'm_flCustomBloomScale', 0)
else
entity._lB09C0F65272CA842(tone_map_controller, 'm_bUseCustomBloomScale', 1)
entity._lB09C0F65272CA842(tone_map_controller, 'm_flCustomBloomScale', _l0FBB6CB7B09F1682)
end
end
local _l93A0F5D91FBDC005 _l1333C87747BE2AD1(tone_map_controller)
if exposure_min_default == -1 then
entity._lB09C0F65272CA842(tone_map_controller, 'm_bUseCustomAutoExposureMin', 0)
entity._lB09C0F65272CA842(tone_map_controller, 'm_flCustomAutoExposureMin', 0)
else
entity._lB09C0F65272CA842(tone_map_controller, 'm_bUseCustomAutoExposureMin', 1)
entity._lB09C0F65272CA842(tone_map_controller, 'm_flCustomAutoExposureMin', exposure_min_default)
end
if exposure_max_default == -1 then
entity._lB09C0F65272CA842(tone_map_controller, 'm_bUseCustomAutoExposureMax', 0)
entity._lB09C0F65272CA842(tone_map_controller, 'm_flCustomAutoExposureMax', 0)
else
entity._lB09C0F65272CA842(tone_map_controller, 'm_bUseCustomAutoExposureMax', 1)
entity._lB09C0F65272CA842(tone_map_controller, 'm_flCustomAutoExposureMax', exposure_max_default)
end
end
local _l93A0F5D91FBDC005 _l942DEE85605CDF54()
r_modelAmbientMin:set_raw_float(0)
end
local _l93A0F5D91FBDC005 _l371C5C609512BC89()
local _lFEBFBF7D568EE63E = entity.get_all 'CEnvTonemapController'
for i = 1, #_lFEBFBF7D568EE63E do
local _l0D99E2C859435A16 = _lFEBFBF7D568EE63E[i]
if _l50C72128379B097F ~= -1 and _l0FBB6CB7B09F1682 ~= nil then
_lAD17CC4A6D8E3CA4(_l0D99E2C859435A16)
end
if exposure_prev ~= -1 and exposure_min_default ~= nil then
_l1333C87747BE2AD1(_l0D99E2C859435A16)
end
end
_l8474BB79A90E60CF()
_l942DEE85605CDF54()
_l0FBB6CB7B09F1682 = nil
exposure_min_default = nil
exposure_max_default = nil
model_ambient_min_prev = nil
end
local _l93A0F5D91FBDC005 _l4F594CF4BC064485()
local _l861DF5F3FC680167 = ref.wall_color:get()
if not _l861DF5F3FC680167 then
if wallcolor_prev then
_l8474BB79A90E60CF()
wallcolor_prev = false
end
return
end
local r, g, b, a = ref.wall_color_picker:get()
r = r / (73305 + 73050 - 73050)
g = g / (81358 + 81103 - 81103)
b = b / (29198 + 28943 - 28943)
local _l47943E4A41CD5955 = nil
local _l0E1B6F7769B77FFD = nil
local _l342F1D377E869123 = nil
local _l4C3424BBB42CE39C = a / (1536 * 1) / 12 - 1
if _l4C3424BBB42CE39C > 0 then
local _l108EE9BD27854EC3 = (900 + (5772 - 5772)) ^ (_l4C3424BBB42CE39C) - 1
_l4C3424BBB42CE39C = _l4C3424BBB42CE39C * _l108EE9BD27854EC3
_l47943E4A41CD5955 = r * _l4C3424BBB42CE39C
_l0E1B6F7769B77FFD = g * _l4C3424BBB42CE39C
_l342F1D377E869123 = b * _l4C3424BBB42CE39C
else
_l47943E4A41CD5955 = (1 - r) * _l4C3424BBB42CE39C
_l0E1B6F7769B77FFD = (1 - g) * _l4C3424BBB42CE39C
_l342F1D377E869123 = (1 - b) * _l4C3424BBB42CE39C
end
if mat_ambient_light_r:get_float() ~= _l47943E4A41CD5955 then
mat_ambient_light_r:set_raw_float(_l47943E4A41CD5955)
end
if mat_ambient_light_g:get_float() ~= _l0E1B6F7769B77FFD then
mat_ambient_light_g:set_raw_float(_l0E1B6F7769B77FFD)
end
if mat_ambient_light_b:get_float() ~= _l342F1D377E869123 then
mat_ambient_light_b:set_raw_float(_l342F1D377E869123)
end
wallcolor_prev = true
end
local _l93A0F5D91FBDC005 _l04133C94EBE1210B()
local _l861DF5F3FC680167 = ref.model_ambient:get()
if model_ambient_min_prev ~= _l861DF5F3FC680167 then
model_ambient_min_prev = _l861DF5F3FC680167
if r_modelAmbientMin:get_float() ~= _l861DF5F3FC680167 * 0.01 then
r_modelAmbientMin:set_raw_float(_l861DF5F3FC680167 * 0.01)
end
end
end
local _l93A0F5D91FBDC005 _lE09F3DE9A448A325(_lFEBFBF7D568EE63E)
local _l861DF5F3FC680167 = ref.bloom:get()
for i = 1, #_lFEBFBF7D568EE63E do
local _l0D99E2C859435A16 = _lFEBFBF7D568EE63E[i]
if _l861DF5F3FC680167 == -1 then
_lAD17CC4A6D8E3CA4(_l0D99E2C859435A16)
goto continue
end
if _l0FBB6CB7B09F1682 == nil then
_l0FBB6CB7B09F1682 = -1
if entity.get_prop(_l0D99E2C859435A16, 'm_bUseCustomBloomScale') == 1 then
_l0FBB6CB7B09F1682 = entity.get_prop(_l0D99E2C859435A16, 'm_flCustomBloomScale')
end
end
entity._lB09C0F65272CA842(_l0D99E2C859435A16, 'm_bUseCustomBloomScale', 1)
entity._lB09C0F65272CA842(_l0D99E2C859435A16, 'm_flCustomBloomScale', _l861DF5F3FC680167 * 0.01)
::continue::
end
end
local _l93A0F5D91FBDC005 _lCB379C117F5E811D(_lFEBFBF7D568EE63E)
local _l861DF5F3FC680167 = ref.exposure:get()
for i = 1, #_lFEBFBF7D568EE63E do
local _l0D99E2C859435A16 = _lFEBFBF7D568EE63E[i]
if _l861DF5F3FC680167 == -1 then
_l1333C87747BE2AD1(_l0D99E2C859435A16)
goto continue
end
if exposure_min_default == nil then
exposure_min_default = -1
exposure_max_default = -1
if entity.get_prop(_l0D99E2C859435A16, 'm_bUseCustomAutoExposureMin') == 1 then
exposure_min_default = entity.get_prop(_l0D99E2C859435A16, 'm_flCustomAutoExposureMin')
end
if entity.get_prop(_l0D99E2C859435A16, 'm_bUseCustomAutoExposureMax') == 1 then
exposure_max_default = entity.get_prop(_l0D99E2C859435A16, 'm_flCustomAutoExposureMax')
end
end
entity._lB09C0F65272CA842(_l0D99E2C859435A16, 'm_bUseCustomAutoExposureMin', 1)
entity._lB09C0F65272CA842(_l0D99E2C859435A16, 'm_bUseCustomAutoExposureMax', 1)
entity._lB09C0F65272CA842(_l0D99E2C859435A16, 'm_flCustomAutoExposureMin', math.max(0.0000, _l861DF5F3FC680167 * 0.001))
entity._lB09C0F65272CA842(_l0D99E2C859435A16, 'm_flCustomAutoExposureMax', math.max(0.0000, _l861DF5F3FC680167 * 0.001))
::continue::
end
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
_l371C5C609512BC89()
end
local _l93A0F5D91FBDC005 _l9F6D1E187A505DFA()
_l0FBB6CB7B09F1682 = nil
exposure_min_default = nil
exposure_max_default = nil
end
local _l93A0F5D91FBDC005 _lE9E4624A5309F296()
local _lFEBFBF7D568EE63E = entity.get_all 'CEnvTonemapController'
_l4F594CF4BC064485()
_lE09F3DE9A448A325(_lFEBFBF7D568EE63E)
_lCB379C117F5E811D(_lFEBFBF7D568EE63E)
_l04133C94EBE1210B()
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
if not _l861DF5F3FC680167 then
_l371C5C609512BC89()
end
_l885AD57970B0DF46.event_callback(
'shutdown',
_l9414F1C1C88188EF,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'level_init',
_l9F6D1E187A505DFA,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'pre_render',
_lE9E4624A5309F296,
_l861DF5F3FC680167
)
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _l9A79211365DBCD03 do
local ref = _l934A3DF2B1DD218E._lE2976F4B96444697._l7B49218C1AF8B0F2._l9A79211365DBCD03
local _l30E0CCE5DC94B15C = { }
local _l4B1986BF17F607BD = vector()
local _lD969AFBE4106C782 = vector()
local _l93A0F5D91FBDC005 _l289C77EB028DC13F()
for _lD5D485576A3C9DAF, props in pairs(_l30E0CCE5DC94B15C) do
for propname, _l861DF5F3FC680167 in pairs(props) do
entity._lB09C0F65272CA842(_lD5D485576A3C9DAF, propname, unpack(_l861DF5F3FC680167))
end
end
end
local _l93A0F5D91FBDC005 _lB09C0F65272CA842(_lD5D485576A3C9DAF, propname, ...)
if _l30E0CCE5DC94B15C[_lD5D485576A3C9DAF] == nil then
_l30E0CCE5DC94B15C[_lD5D485576A3C9DAF] = { }
end
if _l30E0CCE5DC94B15C[_lD5D485576A3C9DAF][propname] == nil then
_l30E0CCE5DC94B15C[_lD5D485576A3C9DAF][propname] = {
entity.get_prop(_lD5D485576A3C9DAF, propname)
}
end
entity._lB09C0F65272CA842(_lD5D485576A3C9DAF, propname, ...)
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
_l289C77EB028DC13F()
end
local _l93A0F5D91FBDC005 _lE9E4624A5309F296()
local _lFEBFBF7D568EE63E = entity.get_all 'CCascadeLight'
local x = ref._l1285CD8A8A89032F:get()
local y = ref._lB179AD0D5B6AB17F:get()
local z = ref.offset_z:get()
for i = 1, #_lFEBFBF7D568EE63E do
local _l0D99E2C859435A16 = _lFEBFBF7D568EE63E[i]
_lB09C0F65272CA842(_l0D99E2C859435A16, 'm_envLightShadowDirection', x, y, z)
end
end
local _l93A0F5D91FBDC005 _lFE4BFA2D4348D011()
_l289C77EB028DC13F()
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
if not _l861DF5F3FC680167 then
_l289C77EB028DC13F()
end
_l885AD57970B0DF46.event_callback(
'shutdown',
_l9414F1C1C88188EF,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'pre_render',
_lE9E4624A5309F296,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'post_render',
_lFE4BFA2D4348D011,
_l861DF5F3FC680167
)
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
end
local _l67AA49514D0DC437 do
local _l1A1F532F45C6A149 do
local ref = _l934A3DF2B1DD218E._lE2976F4B96444697._l67AA49514D0DC437._l1A1F532F45C6A149
local _l2A885C185A15CA77 = {
[(_xd("vp+cm4+Wjg==",250))] = '',
[(_xd("PgAMAQE=",109))] = '-',
[(_xd("OhcUHA==",120))] = 'b'
}
local _l2879824AC7FE4B3D = { } do
local _lDF92ED05AF221BD8 = string.lower(_lB6CD131F5793FF2D._lDB160C0F87126763)
local _l93A0F5D91FBDC005 _lDB961A9280C56D47(_l9591A67D938F86B3)
local arr = { }
local _l2742BF7C296EC261 = #_l9591A67D938F86B3
for i = 1, _l2742BF7C296EC261 do
arr[i] = _l9591A67D938F86B3:_l26F7CE0865D5D59E(i, i)
end
return arr, _l2742BF7C296EC261
end
local _l93A0F5D91FBDC005 _l6A2BEBE249B19D69(_l9591A67D938F86B3, _lB089E1D6D7176955)
local arr, _l2742BF7C296EC261 = _lDB961A9280C56D47(_l9591A67D938F86B3)
local _lB90694C605679381 = math.floor(_lB089E1D6D7176955 % _l2742BF7C296EC261) + 1
arr[_lB90694C605679381] = string.upper(arr[_lB90694C605679381])
return table.concat(arr, nil, 1, _l2742BF7C296EC261)
end
local _l93A0F5D91FBDC005 _l8F6CF2644CC6D1AB()
local _lE5AB91D551F383E0 = ref.text_input:get()
if _lE5AB91D551F383E0 == '' then
_lE5AB91D551F383E0 = _lDF92ED05AF221BD8
end
if not ref.removals:get (_xd("TmFmYm57ZmBh",15)) then
_lE5AB91D551F383E0 = _l6A2BEBE249B19D69(
_lE5AB91D551F383E0, globals.realtime() * 5.0
)
end
if not ref.removals:get (_xd("TH9/Ynp+",13)) then
_lE5AB91D551F383E0 = (_xd("nI+R",177)) .. _lE5AB91D551F383E0 .. (_xd("q7em",139))
end
return _lE5AB91D551F383E0
end
_l93A0F5D91FBDC005 _l2879824AC7FE4B3D.paint_ui()
local _l5A7374A1D131DE50 = vector(
client._l42B4F40833E0955A()
)
local _l1DB180C36A4930A4 = vector(
_l5A7374A1D131DE50.x * 0.5,
_l5A7374A1D131DE50.y - (5 + (1428 - 1428))
)
local _lB38877B9C9EC66BA = _l2A885C185A15CA77[
ref._l3B1BCF18E37D2A8C:get()
]
if _lB38877B9C9EC66BA == nil then
return
end
local _l9591A67D938F86B3 = _l8F6CF2644CC6D1AB()
if _lB38877B9C9EC66BA:_lF667154D37C32EF9 '-' then
_l9591A67D938F86B3 = _l9591A67D938F86B3:upper()
end
local _l7CD430B61533E1A0 = _l424F4D241D652803(ref.accent_color:get())
local _l9DA4F742FB9C1801 = _l424F4D241D652803(ref.secondary_color:get())
_l9591A67D938F86B3 = _lF6DDA3155D72AF3D.gradient(
_l9591A67D938F86B3, globals.realtime(),
_l7CD430B61533E1A0.r, _l7CD430B61533E1A0.g, _l7CD430B61533E1A0.b, _l7CD430B61533E1A0.a,
_l9DA4F742FB9C1801.r, _l9DA4F742FB9C1801.g, _l9DA4F742FB9C1801.b, _l9DA4F742FB9C1801.a
)
local _lC176C1643CC513CE = vector(
renderer.measure_text(_lB38877B9C9EC66BA, _l9591A67D938F86B3)
)
_l1DB180C36A4930A4.x = _l1DB180C36A4930A4.x - _lC176C1643CC513CE.x * 0.5 + 0.5
_l1DB180C36A4930A4.y = _l1DB180C36A4930A4.y - _lC176C1643CC513CE.y
renderer._l9591A67D938F86B3(
_l1DB180C36A4930A4.x, _l1DB180C36A4930A4.y,
(255 * 1), (255 * 1), (2295 * 1) / 9, (255 + (8255 - 8255)),
_lB38877B9C9EC66BA, nil, _l9591A67D938F86B3
)
end
end
local _l6D28E20E80516961 = { } do
local _l613E5D1C34D3C617 = string.upper(_lB6CD131F5793FF2D._lDB160C0F87126763)
local _l46C3F7386CEBA185 = string.upper(_lB6CD131F5793FF2D.build)
local _l5B879430A605CB2A = (192 * 1) / 6
local _l64DAA07FC2CC2949 = panorama.open()
local _l93A0F5D91FBDC005 _l7FD5D75F7A18A998()
local _l0CE2CECEA68AFC40 = _l64DAA07FC2CC2949.MyPersonaAPI
if _l0CE2CECEA68AFC40 == nil then
return 0ULL
end
return _l0CE2CECEA68AFC40.GetXuid()
end
local _l2005BDC4982364C8 = images.get_steam_avatar(
_l7FD5D75F7A18A998(), _l5B879430A605CB2A
)
_l93A0F5D91FBDC005 _l6D28E20E80516961.paint_ui()
local _l42B4F40833E0955A = vector(
client._l42B4F40833E0955A()
)
local _l1DB180C36A4930A4 = vector(
(4125 + 4120 - 4120), _l42B4F40833E0955A.y / (2 + (9997 - 9997))
)
local _lB38877B9C9EC66BA, _l9591A67D938F86B3 = '-', '' do
local list = {
string.format((_xd("LXsmRF1J",8)), _l613E5D1C34D3C617),
string.format((_xd("k+27lQ==",200)), _l46C3F7386CEBA185)
}
_l9591A67D938F86B3 = table.concat(list, '\n')
end
local _lC176C1643CC513CE = vector(
renderer.measure_text(_lB38877B9C9EC66BA, _l9591A67D938F86B3)
)
if _l2005BDC4982364C8 ~= nil then
_l1DB180C36A4930A4.y = _l1DB180C36A4930A4.y - _l5B879430A605CB2A / -(-2)
_l2005BDC4982364C8:draw(
_l1DB180C36A4930A4.x, _l1DB180C36A4930A4.y,
_l5B879430A605CB2A, _l5B879430A605CB2A,
-(-255), (99386 + 99131 - 99131), (510 * 1) / 2, (255 * 1), 'f'
)
_l1DB180C36A4930A4.x = _l1DB180C36A4930A4.x + _l5B879430A605CB2A + (60 * 1) / 12
_l1DB180C36A4930A4.y = _l1DB180C36A4930A4.y + (_l5B879430A605CB2A - _lC176C1643CC513CE.y) / (63245 + 63243 - 63243)
else
_l1DB180C36A4930A4.y = _l1DB180C36A4930A4.y - _lC176C1643CC513CE.y / (54302 + 54300 - 54300)
end
renderer._l9591A67D938F86B3(
_l1DB180C36A4930A4.x, _l1DB180C36A4930A4.y,
(255 * 1), (2550 * 1) / 10, (255 + (9501 - 9501)), (255 * 1),
_lB38877B9C9EC66BA, nil, _l9591A67D938F86B3
)
end
end
local _l7FDB53E77FE017D1 = { } do
local SCRIPT_NAME = _lB6CD131F5793FF2D._lDB160C0F87126763:lower()
local _l91D5D9B5999A95C2 = _lB6CD131F5793FF2D.build:lower()
local _l0259955E24C02377 = {
if (9911*7 - 9911*6 == 9911) then
  local _v130F9488 = math.sqrt(43110)
  local _v3DAEB3ED = string.len(tostring(_v130F9488))
  if _v3DAEB3ED > 3 then _v3DAEB3ED = _v3DAEB3ED + 1 end
end
red = _l424F4D241D652803((21554 + 21415 - 21415), -(-31), (31 + (3148 - 3148)), (255 * 1)),
green = _l424F4D241D652803((146 * 1), (79225 + 79042 - 79042), (765 * 1) / 15, -(-255)),
orange = _l424F4D241D652803((2562 * 1) / 14, -(-121), (561 * 1) / 11, (255 * 1))
}
local _l9532F5E07D147ECF = 0
local _l5CF2116E4FD0DDF5 = 0
local _l05AC703EEE04C658 = 0
local _l5D7CD392B9DFF211 = 0
local _l93A0F5D91FBDC005 _l96EA6F769927699B(col, _lB38877B9C9EC66BA, _l9591A67D938F86B3, shift_x, shift_y)
local _lCAF00F07A0F879E6 = { }
_lCAF00F07A0F879E6._l424F4D241D652803 = col
_lCAF00F07A0F879E6._lB38877B9C9EC66BA = _lB38877B9C9EC66BA
_lCAF00F07A0F879E6._l9591A67D938F86B3 = _l9591A67D938F86B3
_lCAF00F07A0F879E6.shift_x = shift_x or 0
_lCAF00F07A0F879E6.shift_y = shift_y or 0
return _lCAF00F07A0F879E6
end
local _l93A0F5D91FBDC005 _l69CEB247B0DE7F46(fps)
if fps < -(-60) then
return _l0259955E24C02377.red
end
if fps < (120 * 1) then
return _l0259955E24C02377.orange
end
return _l0259955E24C02377.green
end
local _l93A0F5D91FBDC005 _l4409137C91464023(var)
if var < (2 + (1906 - 1906)) then
return _l0259955E24C02377.green
end
if var < (27 * 1) / 9 then
return _l0259955E24C02377.orange
end
return _l0259955E24C02377.red
end
local _l93A0F5D91FBDC005 _l71E2A38846E967ED(ping)
if ping < -(-40) then
return _l0259955E24C02377.green
end
if ping < (1200 * 1) / 12 then
return _l0259955E24C02377.orange
end
return _l0259955E24C02377.red
end
local _l93A0F5D91FBDC005 _lA00532D8746AB097(_lD4176156255D83C8)
if _lD4176156255D83C8 > (2 + (239 - 239)) then
return _l0259955E24C02377.green
end
if _lD4176156255D83C8 > 0 and _lD4176156255D83C8 < 1 then
return _l0259955E24C02377.red
end
return _l0259955E24C02377.orange
end
local _l93A0F5D91FBDC005 _l2D8CB65854AD18B2(x, y, w, h)
local _l7470804F9ED59421 = math.floor(0.5 + w * 0.5)
local _l25356C493E16813E = _l424F4D241D652803(0, 0, 0, 0)
local _lBC40EC47D513146C = _l424F4D241D652803(0, 0, 0, (81710 + 81610 - 81610))
renderer.gradient(
x, y, _l7470804F9ED59421, h,
_l25356C493E16813E.r, _l25356C493E16813E.g, _l25356C493E16813E.b, _l25356C493E16813E.a,
_lBC40EC47D513146C.r, _lBC40EC47D513146C.g, _lBC40EC47D513146C.b, _lBC40EC47D513146C.a,
true
)
renderer.gradient(
x + _l7470804F9ED59421, y, _l7470804F9ED59421, h,
_lBC40EC47D513146C.r, _lBC40EC47D513146C.g, _lBC40EC47D513146C.b, _lBC40EC47D513146C.a,
_l25356C493E16813E.r, _l25356C493E16813E.g, _l25356C493E16813E.b, _l25356C493E16813E.a,
true
)
end
local _l93A0F5D91FBDC005 _l8F0108031BDA9FEA(x, y, _l045BBE9C05ACA3B5, _lF824BADA6AF4C0B7)
local _lBF25F39FB7D8BF2D = 1
local _l7470804F9ED59421 = math.floor(0.5 + _l045BBE9C05ACA3B5 * 0.5)
local _lB67BFAA268323732 = _l424F4D241D652803(0, 0, 0, -(-50))
local _lBDCD973A7B3E148C = _l424F4D241D652803(0, 0, 0, 0)
renderer.gradient(
x, y, _l7470804F9ED59421, _lBF25F39FB7D8BF2D,
_lBDCD973A7B3E148C.r, _lBDCD973A7B3E148C.g, _lBDCD973A7B3E148C.b, _lBDCD973A7B3E148C.a,
_lB67BFAA268323732.r, _lB67BFAA268323732.g, _lB67BFAA268323732.b, _lB67BFAA268323732.a,
true
)
renderer.gradient(
x + _l7470804F9ED59421, y, _l7470804F9ED59421, _lBF25F39FB7D8BF2D,
_lB67BFAA268323732.r, _lB67BFAA268323732.g, _lB67BFAA268323732.b, _lB67BFAA268323732.a,
_lBDCD973A7B3E148C.r, _lBDCD973A7B3E148C.g, _lBDCD973A7B3E148C.b, _lBDCD973A7B3E148C.a,
true
)
renderer.gradient(
x, y + _lF824BADA6AF4C0B7 - _lBF25F39FB7D8BF2D, _l7470804F9ED59421, _lBF25F39FB7D8BF2D,
_lBDCD973A7B3E148C.r, _lBDCD973A7B3E148C.g, _lBDCD973A7B3E148C.b, _lBDCD973A7B3E148C.a,
_lB67BFAA268323732.r, _lB67BFAA268323732.g, _lB67BFAA268323732.b, _lB67BFAA268323732.a,
true
)
renderer.gradient(
x + _l7470804F9ED59421, y + _lF824BADA6AF4C0B7 - _lBF25F39FB7D8BF2D, _l7470804F9ED59421, _lBF25F39FB7D8BF2D,
_lB67BFAA268323732.r, _lB67BFAA268323732.g, _lB67BFAA268323732.b, _lB67BFAA268323732.a,
_lBDCD973A7B3E148C.r, _lBDCD973A7B3E148C.g, _lBDCD973A7B3E148C.b, _lBDCD973A7B3E148C.a,
true
)
end
_l93A0F5D91FBDC005 _l7FDB53E77FE017D1.paint_ui()
local _lB089E1D6D7176955 = globals.realtime()
if _lB089E1D6D7176955 - _l5D7CD392B9DFF211 > 0.5 then
_l9532F5E07D147ECF = math.floor(0.5 + 1 / globals.frametime())
_l5CF2116E4FD0DDF5 = math.floor(0.5 + _l068D116FF4AC0C68.absoluteframestarttimestddev * (77849 + 76849 - 76849))
_l05AC703EEE04C658 = math.floor(0.5 + client.latency() * (50905 + 49905 - 49905))
_l5D7CD392B9DFF211 = _lB089E1D6D7176955
end
local _lA851AD0BF174D9BD = _l424F4D241D652803((27610 + 27416 - 27416), (194 * 1), (194 * 1), (255 * 1))
local _lFA195AF4C4F5C3EA = _l424F4D241D652803(ref.accent_color:get())
local list, _l721ED02EF23C8EA5 = { }, 0 do
if ref.display:get (_xd("5sXNxQ==",170)) then
table.insert(list, {
_l96EA6F769927699B(_lA851AD0BF174D9BD, '', SCRIPT_NAME .. '.'),
_l96EA6F769927699B(_lFA195AF4C4F5C3EA, '', _l91D5D9B5999A95C2)
})
end
if ref.display:get (_xd("7sjeydXa1t4=",187)) then
table.insert(list, {
_l96EA6F769927699B(_lA851AD0BF174D9BD, '', _lB6CD131F5793FF2D.user)
})
end
if ref.display:get (_xd("eG5t",62)) then
table.insert(list, {
_l96EA6F769927699B(_l69CEB247B0DE7F46(_l9532F5E07D147ECF), '', tostring(_l9532F5E07D147ECF)),
_l96EA6F769927699B(_lA851AD0BF174D9BD, '-', (_xd("SF5d",14)), 1, (20 * 1) / 10)
})
end
if ref.display:get (_xd("j7uopKy9oKSs6b+ou6Cop6qs",201)) then
table.insert(list, {
_l96EA6F769927699B(_l4409137C91464023(_l5CF2116E4FD0DDF5), '', tostring(_l5CF2116E4FD0DDF5)),
_l96EA6F769927699B(_lA851AD0BF174D9BD, '-', (_xd("08TX",133)), 1, -(-2))
})
end
if ref.display:get (_xd("9M3Kww==",164)) then
table.insert(list, {
_l96EA6F769927699B(_l71E2A38846E967ED(_l05AC703EEE04C658), '', tostring(_l05AC703EEE04C658)),
_l96EA6F769927699B(_lA851AD0BF174D9BD, '-', (_xd("xdzb0g==",149)), 1, (2 + (2531 - 2531)))
})
end
if ref.display:get (_xd("pYaTk5I=",246)) then
table.insert(list, {
_l96EA6F769927699B(_lA851AD0BF174D9BD, '', math.floor(_lA11A332CEF1A75DE._l3B86A5785278720A:_lFAC0E14709703CBE())),
_l96EA6F769927699B(_lA851AD0BF174D9BD, '-', (_xd("4+D19fQ=",176)), 1, (53116 + 53114 - 53114))
})
end
if ref.display:get (_xd("/5vwlMbVwN3b",180)) then
local _lD4176156255D83C8 = _l885AD57970B0DF46.get_player_kd(
entity.get_local_player()
)
if _lD4176156255D83C8 ~= nil then
table.insert(list, {
_l96EA6F769927699B(_lA00532D8746AB097(_lD4176156255D83C8), '', string.format((_xd("ICs0Yw==",5)), _lD4176156255D83C8)),
_l96EA6F769927699B(_lA851AD0BF174D9BD, '-', (_xd("8JT/",187)), 1, (4 * 1) / 2)
})
end
end
if ref.display:get (_xd("bENATEQ=",47)) then
table.insert(list, {
_l96EA6F769927699B(_lA851AD0BF174D9BD, '', string.format(
'%02d:%02d:%02d', client.system_time()
))
})
end
_l721ED02EF23C8EA5 = #list
end
local _lA1021EFC8782D91C = { }
local _l07D87C4FC06A9272 = 0
local _lC7DE30E7DE1C512D = 0
for i = 1, _l721ED02EF23C8EA5 do
local _l5E432A44CEEEFD31 = list[i]
local _l8C8D1CC851937402 = { }
for j = 1, #_l5E432A44CEEEFD31 do
local _lCAF00F07A0F879E6 = _l5E432A44CEEEFD31[j]
local _lC176C1643CC513CE = vector(
renderer.measure_text(
_lCAF00F07A0F879E6._lB38877B9C9EC66BA,
_lCAF00F07A0F879E6._l9591A67D938F86B3
)
)
_l07D87C4FC06A9272 = _l07D87C4FC06A9272 + _lC176C1643CC513CE.x + _lCAF00F07A0F879E6.shift_x
_lC7DE30E7DE1C512D = math.max(_lC7DE30E7DE1C512D, _lC176C1643CC513CE.y)
_l8C8D1CC851937402[j] = _lC176C1643CC513CE
end
if i ~= _l721ED02EF23C8EA5 then
_l07D87C4FC06A9272 = _l07D87C4FC06A9272 + (9160 + 9148 - 9148)
end
_lA1021EFC8782D91C[i] = _l8C8D1CC851937402
end
local _l4B36CE3848120A1D = ref._l1DB180C36A4930A4:get()
local _l12E09B7B66DDC22B = _l07D87C4FC06A9272
local _l251F975DB063E7C3 = (16117 + 16102 - 16102)
local _lF824BADA6AF4C0B7 = (14236 + 14216 - 14216)
local _l045BBE9C05ACA3B5 = _l12E09B7B66DDC22B + _l251F975DB063E7C3
local _l42B4F40833E0955A = vector(client._l42B4F40833E0955A())
local _lBB13D66F0E369FA1 = -(-5)
local _lB311A51ED7DCF98B = _lBB13D66F0E369FA1
if (3201*7 - 3201*6 == 3201) then
  local _vB6C68749 = math.sqrt(850535)
  local _v6B1E8B5F = string.len(tostring(_vB6C68749))
  if _v6B1E8B5F > 1 then _v6B1E8B5F = _v6B1E8B5F + 1 end
end
local _l8FD5CDCECCF833AF = _lBB13D66F0E369FA1
if _l4B36CE3848120A1D == (_xd("y/Dvsu32+Pfr",159)) then
_lB311A51ED7DCF98B = _l42B4F40833E0955A.x - _l045BBE9C05ACA3B5 - _lBB13D66F0E369FA1
_l8FD5CDCECCF833AF = _lBB13D66F0E369FA1
end
if _l4B36CE3848120A1D == (_xd("ByoxMSooaCYgKzEgNw==",69)) then
_lB311A51ED7DCF98B = (_l42B4F40833E0955A.x - _l045BBE9C05ACA3B5) / -(-2)
_l8FD5CDCECCF833AF = _l42B4F40833E0955A.y - _lF824BADA6AF4C0B7 - _lBB13D66F0E369FA1
if ref.select:get (_xd("JhUMDA==",96)) then
_l8FD5CDCECCF833AF = _l8FD5CDCECCF833AF - (195 * 1) / 13
end
end
local _lC89A14838F1A8BBA = (10 + (4492 - 4492))
local _lBBEA4CC20162F576 = _lB311A51ED7DCF98B - _lC89A14838F1A8BBA
local _lC5F7762B3E2E6AD2 = _lB311A51ED7DCF98B + _l045BBE9C05ACA3B5 + _lC89A14838F1A8BBA
local _lABB46DC033FB5CA4 = _lC5F7762B3E2E6AD2 - _lBBEA4CC20162F576
_l2D8CB65854AD18B2(_lBBEA4CC20162F576, _l8FD5CDCECCF833AF, _lABB46DC033FB5CA4, _lF824BADA6AF4C0B7)
_l8F0108031BDA9FEA(_lBBEA4CC20162F576, _l8FD5CDCECCF833AF, _lABB46DC033FB5CA4, _lF824BADA6AF4C0B7)
local _lE991BFE2EA06BD79 = _lB311A51ED7DCF98B + (5 * 1)
local _l8C54AE40CCC9D1FC = _l8FD5CDCECCF833AF + (_lF824BADA6AF4C0B7 / (74937 + 74935 - 74935))
local _lE8558CABD1E415C2 = 0
for i = 1, _l721ED02EF23C8EA5 do
local _l5E432A44CEEEFD31 = list[i]
local _l8C8D1CC851937402 = _lA1021EFC8782D91C[i]
for j = 1, #_l5E432A44CEEEFD31 do
local _lCAF00F07A0F879E6 = _l5E432A44CEEEFD31[j]
local _lC176C1643CC513CE = _l8C8D1CC851937402[j]
local _l001D37F442F0EA44 = _lCAF00F07A0F879E6._l424F4D241D652803
renderer._l9591A67D938F86B3(
_lE991BFE2EA06BD79 + _lE8558CABD1E415C2 + _lCAF00F07A0F879E6.shift_x, _l8C54AE40CCC9D1FC - -(-6) + _lCAF00F07A0F879E6.shift_y,
_l001D37F442F0EA44.r, _l001D37F442F0EA44.g, _l001D37F442F0EA44.b, _l001D37F442F0EA44.a,
_lCAF00F07A0F879E6._lB38877B9C9EC66BA, nil, _lCAF00F07A0F879E6._l9591A67D938F86B3
)
_lE8558CABD1E415C2 = _lE8558CABD1E415C2 + _lC176C1643CC513CE.x
end
_lE8558CABD1E415C2 = _lE8558CABD1E415C2 + -(-12)
end
end
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l0D3ECA7EF726D0CE(_l777D8FF3F76AC3BE)
_l885AD57970B0DF46.event_callback('paint_ui', _l2879824AC7FE4B3D.paint_ui, _l777D8FF3F76AC3BE:get (_xd("BjUsLA==",64)))
_l885AD57970B0DF46.event_callback('paint_ui', _l6D28E20E80516961.paint_ui, _l777D8FF3F76AC3BE:get (_xd("HjIwLTw+KQ==",93)))
_l885AD57970B0DF46.event_callback('paint_ui', _l7FDB53E77FE017D1.paint_ui, _l777D8FF3F76AC3BE:get (_xd("S2h0cWw=",24)))
end
ref.select:set_callback(
_l0D3ECA7EF726D0CE, true
)
end
end
local _l8E70AFFBBF19979A do
local ref = _l934A3DF2B1DD218E._lE2976F4B96444697._l67AA49514D0DC437._l8E70AFFBBF19979A
local _lD77034BF6291E584 do
local _l494097EEF4178CA2 = string.format(
'%s.%s',
_lB6CD131F5793FF2D._lDB160C0F87126763:upper(),
_lB6CD131F5793FF2D.build:upper()
)
local _l010BAD2120C6D8CD = {
{ '-', 'вњЁ', 0, 0, 0.1 },
{ '-', 'вњЁ', -(33 * 1) / 11, (5 * 1), 1.3 },
{ '+', 'в‹†', --(-9), -(80 * 1) / 5, 0.4 },
{ '-', 'вњЁ', -1, -1, 0.2 },
{ '+', 'в‹†', -(43168 + 43165 - 43165), -(40372 + 40362 - 40362), 1.5 },
{ '+', 'в‹†', -(35948 + 35942 - 35942), -(15 + (1846 - 1846)), 0.7 },
}
local _lE3058D10B0080DB9 = 0.0
local _lA5A238986CF3A4DF = 0.0
local _lAEC860DA67538445 = 0.0
local _lA40FAAD2665E9088 = 0.0
local _l63057F71AEDA3CDE = 0.0
local _l173DB777258ADAD9 = 0.0
local _l93A0F5D91FBDC005 _lF350B69E3DDD9688(_lC483CC400CE8CA31)
local _lCE07FAFEC1C163B4 = csgo_weapons(_lC483CC400CE8CA31)
if _lCE07FAFEC1C163B4 == nil then
return false
end
return _lCE07FAFEC1C163B4.type == (_xd("ZHFmbWJnZg==",3))
end
local _l93A0F5D91FBDC005 _l01AF47FC420F770A()
local _l2E58584FED1AE833 = _l22887641E343368B._l2E58584FED1AE833:get()
if _l2E58584FED1AE833 ~= nil then
local str = _l2E58584FED1AE833:upper()
return string.format(
(_xd("g4+Am4+C7uu9",206)), str
)
end
if _lE4C0F29811DB3FE5._l9D503C222D9EE9BC() then
return (_xd("yNzLy93az8DK",142))
end
if not _lA11A332CEF1A75DE._l503514483C7022F7 then
if _lA11A332CEF1A75DE.is_crouched then
return (_xd("DgYdYgwdABoMBw==",79))
end
return (_xd("lp6F",215))
end
if _lA11A332CEF1A75DE.is_crouched then
if _lA11A332CEF1A75DE.is_moving then
return (_xd("y9rH3cvApcXH3s0=",136))
end
return (_xd("WUhVT1lS",26))
end
if _lA11A332CEF1A75DE.is_moving then
if _lE4C0F29811DB3FE5.is_slow_motion() then
return (_xd("EwwPFwkOBw==",64))
end
return (_xd("vL6nuL+2",241))
end
return (_xd("ub6rpK6jpK0=",234))
end
local _l93A0F5D91FBDC005 _lFF4770194C740B72(_l1DB180C36A4930A4, _lC81018446DEC5DAC, g1, b1, a1, _l82F5FEA42BD4A752, g2, b2, a2)
local _lB089E1D6D7176955 = -globals.realtime()
local x, y = _l1DB180C36A4930A4.x + (10140 + 10136 - 10136), _l1DB180C36A4930A4.y
local _l8C8D1CC851937402, len = { }, #_l010BAD2120C6D8CD
local _l045BBE9C05ACA3B5, _lF824BADA6AF4C0B7 = 0, 0
for i = 1, len do
local _l5E432A44CEEEFD31 = _l010BAD2120C6D8CD[i]
local _lFE56EBC5EB808953 = vector(
renderer.measure_text(_l5E432A44CEEEFD31[1], _l5E432A44CEEEFD31[(2 + (6895 - 6895))])
)
_l045BBE9C05ACA3B5 = _l045BBE9C05ACA3B5 + (_lFE56EBC5EB808953.x + _l5E432A44CEEEFD31[-(-3)])
_lF824BADA6AF4C0B7 = math.max(_lF824BADA6AF4C0B7, _lFE56EBC5EB808953.y + _l5E432A44CEEEFD31[(89496 + 89492 - 89492)])
_l8C8D1CC851937402[i] = _lFE56EBC5EB808953
end
x = _l7BF2413EBDE500D5(x - (_l045BBE9C05ACA3B5 * 0.5) * (1 - _lA5A238986CF3A4DF))
local _lB5C95FB4D2802271 = 0.0
local _l9A2D28D0FA1D11E2 = 1 / (len - 1)
local _lD75D3219FDCD5C2C = ref._lD75D3219FDCD5C2C:get()
for i = 1, len do
local _lBA72A7B652470788 = _l010BAD2120C6D8CD[i]
local _l2742BF7C296EC261 = _l8C8D1CC851937402[i]
local _lB38877B9C9EC66BA = _lBA72A7B652470788[1]
local _l9591A67D938F86B3 = _lBA72A7B652470788[(2 + (3081 - 3081))]
local _l1285CD8A8A89032F = _lBA72A7B652470788[(59222 + 59219 - 59219)]
local _lB179AD0D5B6AB17F = _lBA72A7B652470788[-(-4)]
local _l30CDDD28283140D6 = _lBA72A7B652470788[(5 + (7043 - 7043))]
local _lEE02A4DFDA90FE99 = math._l9C5D07C6A6ADB508(_lB089E1D6D7176955 * _l30CDDD28283140D6) do
_lEE02A4DFDA90FE99 = _lEE02A4DFDA90FE99 * 0.5 + 0.5
_lEE02A4DFDA90FE99 = _lEE02A4DFDA90FE99 * 0.5 + 0.3
end
if _lD75D3219FDCD5C2C == (_xd("W3p5fmpzaw==",31)) then
_l9591A67D938F86B3 = _lF6DDA3155D72AF3D.gradient(
_l9591A67D938F86B3, (_lB089E1D6D7176955 + _lB5C95FB4D2802271) * 1.25,
_lC81018446DEC5DAC, g1, b1, a1,
_l82F5FEA42BD4A752, g2, b2, a2
)
end
if _lD75D3219FDCD5C2C == (_xd("0v7i/Pjy",145)) then
_l9591A67D938F86B3 = _lF6DDA3155D72AF3D.cosmic(
_l9591A67D938F86B3, (_lB089E1D6D7176955 + _lB5C95FB4D2802271) * 0.5,
0.5, 0.4, 1.0, 0.5
)
end
renderer._l9591A67D938F86B3(
x + _l1285CD8A8A89032F, y + _lB179AD0D5B6AB17F,
(200 * 1), (1800 * 1) / 9, -(-200), a1 * _lEE02A4DFDA90FE99,
_lB38877B9C9EC66BA, nil, _l9591A67D938F86B3
)
x = x + _l2742BF7C296EC261.x + _l1285CD8A8A89032F
_lB5C95FB4D2802271 = _lB5C95FB4D2802271 + _l9A2D28D0FA1D11E2
end
_l1DB180C36A4930A4.y = _l1DB180C36A4930A4.y + _lF824BADA6AF4C0B7 * 0.5
end
local _l93A0F5D91FBDC005 _l40F7D650C8DB6A26(_l1DB180C36A4930A4, r, g, b, a, _l150437F86297E966)
local _l9591A67D938F86B3, _lB38877B9C9EC66BA = _l01AF47FC420F770A(), '-'
local _lFE56EBC5EB808953 = vector(
renderer.measure_text(_lB38877B9C9EC66BA, _l9591A67D938F86B3)
)
local x, y = _l1DB180C36A4930A4.x, _l1DB180C36A4930A4.y do
x = _l7BF2413EBDE500D5(x - (_lFE56EBC5EB808953.x * 0.5) * (1 - _lA5A238986CF3A4DF))
end
renderer._l9591A67D938F86B3(x, y, r, g, b, a * _l150437F86297E966, _lB38877B9C9EC66BA, nil, _l9591A67D938F86B3)
_l1DB180C36A4930A4.y = _l1DB180C36A4930A4.y + _l7BF2413EBDE500D5(_lFE56EBC5EB808953.y)
end
local _l93A0F5D91FBDC005 _l563A7C0788A9C6BF(_l1DB180C36A4930A4, _lC81018446DEC5DAC, g1, b1, a1, _l82F5FEA42BD4A752, g2, b2, a2)
local _l9591A67D938F86B3, _lB38877B9C9EC66BA = _l494097EEF4178CA2, '-'
local _lFE56EBC5EB808953 = vector(
renderer.measure_text(_lB38877B9C9EC66BA, _l9591A67D938F86B3)
)
local _lB089E1D6D7176955 = -globals.realtime()
local _lD75D3219FDCD5C2C = ref._lD75D3219FDCD5C2C:get()
if _lD75D3219FDCD5C2C == (_xd("Tm9sa39mfg==",10)) then
_l9591A67D938F86B3 = _lF6DDA3155D72AF3D.gradient(
_l9591A67D938F86B3, _lB089E1D6D7176955 * 1.25,
_lC81018446DEC5DAC, g1, b1, a1,
_l82F5FEA42BD4A752, g2, b2, a2
)
end
if _lD75D3219FDCD5C2C == (_xd("5srWyMzG",165)) then
_l9591A67D938F86B3 = _lF6DDA3155D72AF3D.cosmic(
_l9591A67D938F86B3, _lB089E1D6D7176955 * 0.5,
0.5, 0.4, 1.0, 0.5
)
end
local x, y = _l1DB180C36A4930A4.x, _l1DB180C36A4930A4.y do
x = _l7BF2413EBDE500D5(x - (_lFE56EBC5EB808953.x * 0.5) * (1 - _lA5A238986CF3A4DF))
end
renderer._l9591A67D938F86B3(x, y, _lC81018446DEC5DAC, g1, b1, a1, _lB38877B9C9EC66BA, nil, _l9591A67D938F86B3)
_l1DB180C36A4930A4.y = _l1DB180C36A4930A4.y + _lFE56EBC5EB808953.y
end
local _l93A0F5D91FBDC005 _l1ED34686C2CFD52C(_l1DB180C36A4930A4, r, g, b, a, _l861DF5F3FC680167, _l150437F86297E966)
local _l9591A67D938F86B3, _lB38877B9C9EC66BA = 'DT', '-'
local _lFE56EBC5EB808953 = vector(
renderer.measure_text(_lB38877B9C9EC66BA, _l9591A67D938F86B3)
)
local x, y = _l1DB180C36A4930A4.x, _l1DB180C36A4930A4.y do
x = _l7BF2413EBDE500D5(x - (_lFE56EBC5EB808953.x * 0.5) * (1 - _lA5A238986CF3A4DF))
end
r = _l885AD57970B0DF46.lerp((255 + (8057 - 8057)), r, _l173DB777258ADAD9)
g = _l885AD57970B0DF46.lerp(0, g, _l173DB777258ADAD9)
b = _l885AD57970B0DF46.lerp((350 * 1) / 7, b, _l173DB777258ADAD9)
a = a * _l861DF5F3FC680167 * _l150437F86297E966
renderer._l9591A67D938F86B3(x, y, r, g, b, a, _lB38877B9C9EC66BA, nil, _l9591A67D938F86B3)
_l1DB180C36A4930A4.y = _l1DB180C36A4930A4.y + _l7BF2413EBDE500D5(_lFE56EBC5EB808953.y * _l861DF5F3FC680167)
end
local _l93A0F5D91FBDC005 _l8C12049B9046A9A9(_l1DB180C36A4930A4, r, g, b, a, _l861DF5F3FC680167, _l150437F86297E966)
local _l9591A67D938F86B3, _lB38877B9C9EC66BA = (_xd("OCQ2Ng==",119)), '-'
local _lFE56EBC5EB808953 = vector(
renderer.measure_text(_lB38877B9C9EC66BA, _l9591A67D938F86B3)
)
local x, y = _l1DB180C36A4930A4.x, _l1DB180C36A4930A4.y do
x = _l7BF2413EBDE500D5(x - (_lFE56EBC5EB808953.x * 0.5) * (1 - _lA5A238986CF3A4DF))
end
a = a * _l861DF5F3FC680167 * _l150437F86297E966
renderer._l9591A67D938F86B3(x, y, r, g, b, a, _lB38877B9C9EC66BA, nil, _l9591A67D938F86B3)
_l1DB180C36A4930A4.y = _l1DB180C36A4930A4.y + _l7BF2413EBDE500D5(_lFE56EBC5EB808953.y * _l861DF5F3FC680167)
end
local _l93A0F5D91FBDC005 _l130F48FBE5AEC6E9(_l1DB180C36A4930A4, r, g, b, a, _l861DF5F3FC680167, _l150437F86297E966)
local _l9591A67D938F86B3, _lB38877B9C9EC66BA = (_xd("7OHq9w==",174)), '-'
local _lFE56EBC5EB808953 = vector(
renderer.measure_text(_lB38877B9C9EC66BA, _l9591A67D938F86B3)
)
local x, y = _l1DB180C36A4930A4.x, _l1DB180C36A4930A4.y do
x = _l7BF2413EBDE500D5(x - (_lFE56EBC5EB808953.x * 0.5) * (1 - _lA5A238986CF3A4DF))
end
a = a * _l861DF5F3FC680167 * _l150437F86297E966
renderer._l9591A67D938F86B3(x, y, r, g, b, a, _lB38877B9C9EC66BA, nil, _l9591A67D938F86B3)
_l1DB180C36A4930A4.y = _l1DB180C36A4930A4.y + _l7BF2413EBDE500D5(_lFE56EBC5EB808953.y * _l861DF5F3FC680167)
end
local _l93A0F5D91FBDC005 _l6019CE704534C5F8(me)
local _l3A0196851DA0B630 = entity._l3A0196851DA0B630(me)
local _l635EC3DC20E2D87B = entity.get_prop(me, 'm_bIsScoped') == 1
local _lFD69A58FBB63C59B = _l946A40C0880A61FC.get().shift
local _lD90822F1B1A8E3AD = _lE4C0F29811DB3FE5._l24E54F96B8A0941E()
local _l1BE65F3F93687255 = _lE4C0F29811DB3FE5._l4EBAB0E6718B016B()
local _l68C6EB80F5B4804F = ui.get(
_lE4C0F29811DB3FE5._lF25FDA0049197B89.aimbot.force_body_aim
)
local _l5F2B8976FD4CF701 = 0.0
if _l3A0196851DA0B630 then
_l5F2B8976FD4CF701 = 1.0
local _lC483CC400CE8CA31 = entity.get_player_weapon(me)
if _l635EC3DC20E2D87B or (_lC483CC400CE8CA31 ~= nil and _lF350B69E3DDD9688(_lC483CC400CE8CA31)) then
_l5F2B8976FD4CF701 = 0.5
end
end
_lE3058D10B0080DB9 = _l15E0D0F4CA07DE15.interp(_lE3058D10B0080DB9, _l5F2B8976FD4CF701, 0.05)
_lA5A238986CF3A4DF = _l15E0D0F4CA07DE15.interp(_lA5A238986CF3A4DF, _l635EC3DC20E2D87B, 0.05)
_lAEC860DA67538445 = _l15E0D0F4CA07DE15.interp(_lAEC860DA67538445, _l68C6EB80F5B4804F, 0.05)
_lA40FAAD2665E9088 = _l15E0D0F4CA07DE15.interp(_lA40FAAD2665E9088, _lD90822F1B1A8E3AD, 0.05)
_l63057F71AEDA3CDE = _l15E0D0F4CA07DE15.interp(_l63057F71AEDA3CDE, _l1BE65F3F93687255, 0.05)
_l173DB777258ADAD9 = _l15E0D0F4CA07DE15.interp(_l173DB777258ADAD9, _lFD69A58FBB63C59B, 0.05)
end
local _l93A0F5D91FBDC005 _l20A211C7761FABC9()
local _l5A7374A1D131DE50 = vector(
client._l42B4F40833E0955A()
)
local _l1DB180C36A4930A4 = _l5A7374A1D131DE50 * 0.5
local _lC81018446DEC5DAC, g1, b1, a1 = ref.accent_color:get()
local _l82F5FEA42BD4A752, g2, b2, a2 = ref.secondary_color:get()
_l1DB180C36A4930A4.x = _l1DB180C36A4930A4.x - 1
_l1DB180C36A4930A4.x = _l1DB180C36A4930A4.x + math.floor(0.5 + (20 * 1) / 2 * _lA5A238986CF3A4DF)
_l1DB180C36A4930A4.y = _l1DB180C36A4930A4.y + ref._lE8558CABD1E415C2:get()
a1 = a1 * _lE3058D10B0080DB9
a2 = a2 * _lE3058D10B0080DB9
_l563A7C0788A9C6BF(_l1DB180C36A4930A4, _lC81018446DEC5DAC, g1, b1, a1, _l82F5FEA42BD4A752, g2, b2, a2)
if ref.select:get (_xd("el1IXUw=",41)) then
_l40F7D650C8DB6A26(_l1DB180C36A4930A4, -(-250), (90885 + 90635 - 90635), -(-250), (96800 + 96675 - 96675), _lE3058D10B0080DB9)
end
if ref.select:get 'Double tap' then
_l1ED34686C2CFD52C(_l1DB180C36A4930A4, (10505 + 10255 - 10255), (1250 * 1) / 5, (250 * 1), -(-175), _lA40FAAD2665E9088, _lE3058D10B0080DB9)
end
if ref.select:get (_xd("Tm9iYyZ1bmlydQ==",6)) then
_l8C12049B9046A9A9(_l1DB180C36A4930A4, (2750 * 1) / 11, (250 * 1), (69358 + 69108 - 69108), -(-175), _l63057F71AEDA3CDE, _lE3058D10B0080DB9)
end
if ref.select:get (_xd("2fT/4rv68vY=",155)) then
_l130F48FBE5AEC6E9(_l1DB180C36A4930A4, -(-250), -(-250), -(-250), (1400 * 1) / 8, _lAEC860DA67538445, _lE3058D10B0080DB9)
end
end
_l93A0F5D91FBDC005 _lD77034BF6291E584()
local me = entity.get_local_player()
if me == nil then
return
end
_l6019CE704534C5F8(me)
if _lE3058D10B0080DB9 > 0 then
_l20A211C7761FABC9()
end
end
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
_l885AD57970B0DF46.event_callback(
'paint_ui',
_lD77034BF6291E584,
_l861DF5F3FC680167
)
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _l1A5745CF6DC0D04D do
local ref = _l934A3DF2B1DD218E._l22887641E343368B._lA2858F25491F9BF1._l2E58584FED1AE833
local _l5704E8F455F43DA3 = _l424F4D241D652803(0, 0, 0, (127 * 1))
local _l93A0F5D91FBDC005 _l62BF947F0B8A3F18()
local me = entity.get_local_player()
if me == nil or not entity._l3A0196851DA0B630(me) then
return
end
local _l42B4F40833E0955A = vector(
client._l42B4F40833E0955A()
)
local _l7470804F9ED59421 = _l42B4F40833E0955A * 0.5
local col = _l424F4D241D652803(ref.arrows_color:get())
local _l8230FAE0CD6CF69F = _l22887641E343368B._l2E58584FED1AE833:get()
local _l234AAEA049DC4A5B = ref.arrows_offset:get()
if _l8230FAE0CD6CF69F == (_xd("//b15w==",147)) then
local _l9591A67D938F86B3 = ''
local _lC176C1643CC513CE = vector(
renderer.measure_text('+', _l9591A67D938F86B3)
)
local _lB094AB9053040738 = vector(
_l7470804F9ED59421.x - _lC176C1643CC513CE.x - _l234AAEA049DC4A5B + 1,
_l7470804F9ED59421.y - _lC176C1643CC513CE.y * 0.5 - 4.5
)
renderer._l9591A67D938F86B3(_lB094AB9053040738.x, _lB094AB9053040738.y, col.r, col.g, col.b, col.a, '+', nil, _l9591A67D938F86B3)
end
if _l8230FAE0CD6CF69F == (_xd("JD8xPiI=",86)) then
local _l9591A67D938F86B3 = ''
local _lC176C1643CC513CE = vector(
renderer.measure_text('+', _l9591A67D938F86B3)
)
local _lB094AB9053040738 = vector(
_l7470804F9ED59421.x + _l234AAEA049DC4A5B,
_l7470804F9ED59421.y - _lC176C1643CC513CE.y * 0.5 - 4.5
)
renderer._l9591A67D938F86B3(_lB094AB9053040738.x, _lB094AB9053040738.y, col.r, col.g, col.b, col.a, '+', nil, _l9591A67D938F86B3)
end
end
local _l93A0F5D91FBDC005 _lC984248AB80E0A00()
local me = entity.get_local_player()
if me == nil or not entity._l3A0196851DA0B630(me) then
return
end
local _l42B4F40833E0955A = vector(
client._l42B4F40833E0955A()
)
local _l7470804F9ED59421 = _l42B4F40833E0955A * 0.5
local col = _l424F4D241D652803(ref.arrows_color:get())
local _l8230FAE0CD6CF69F = _l22887641E343368B._l2E58584FED1AE833:get()
local _l234AAEA049DC4A5B = ref.arrows_offset:get()
if _l8230FAE0CD6CF69F == (_xd("fXR3ZQ==",17)) then
local _l9591A67D938F86B3 = '⮜'
local _lC176C1643CC513CE = vector(
renderer.measure_text('+', _l9591A67D938F86B3)
)
local _lB094AB9053040738 = vector(
_l7470804F9ED59421.x - _lC176C1643CC513CE.x - _l234AAEA049DC4A5B + 1,
_l7470804F9ED59421.y - _lC176C1643CC513CE.y * 0.5 - 1
)
renderer._l9591A67D938F86B3(_lB094AB9053040738.x, _lB094AB9053040738.y, col.r, col.g, col.b, col.a, '+', nil, _l9591A67D938F86B3)
end
if _l8230FAE0CD6CF69F == (_xd("38TKxdk=",173)) then
local _l9591A67D938F86B3 = '⮞'
local _lC176C1643CC513CE = vector(
renderer.measure_text('+', _l9591A67D938F86B3)
)
local _lB094AB9053040738 = vector(
_l7470804F9ED59421.x + _l234AAEA049DC4A5B,
_l7470804F9ED59421.y - _lC176C1643CC513CE.y * 0.5 - 1
)
renderer._l9591A67D938F86B3(_lB094AB9053040738.x, _lB094AB9053040738.y, col.r, col.g, col.b, col.a, '+', nil, _l9591A67D938F86B3)
end
end
local _l93A0F5D91FBDC005 _lA0682FB92CFC2088()
local me = entity.get_local_player()
if me == nil or not entity._l3A0196851DA0B630(me) then
return
end
local _l42B4F40833E0955A = vector(
client._l42B4F40833E0955A()
)
local _l7470804F9ED59421 = _l42B4F40833E0955A * 0.5
local _l045BBE9C05ACA3B5 = (12 * 1) / 6
local _lF824BADA6AF4C0B7 = (18 + (2845 - 2845))
local _l57F2E320A07DE287 = -(-2)
local _l97AC0C05541E9858 = math.floor(_lF824BADA6AF4C0B7 * 0.75)
local _l234AAEA049DC4A5B = ref.arrows_offset:get()
local _l8230FAE0CD6CF69F = _l22887641E343368B._l2E58584FED1AE833:get()
local _l853F969D9C31B6DE = _l22887641E343368B._l10882FB42ED493E0._lE1A0F2049757CCF5 or 0
local _l1968D91CEF440495 = _l853F969D9C31B6DE < 0
local _l69DDA24F11029275 = _l853F969D9C31B6DE > 0
local _l61AC81B30445C42C = _l424F4D241D652803(ref.arrows_color:get())
local _lF0940D7113B30F47 = _l424F4D241D652803(ref.desync_color:get())
do
local _l1DB180C36A4930A4 = _l7470804F9ED59421 - vector(_l234AAEA049DC4A5B, 0)
local _l2802D4EA7B9D7E2F = vector(_l045BBE9C05ACA3B5, _lF824BADA6AF4C0B7)
local _l3B74E704E1B9D330 = _l1DB180C36A4930A4 - vector(_l2802D4EA7B9D7E2F.x, _l2802D4EA7B9D7E2F.y * 0.5)
local _lFE114B2C15C76E39 = _l1968D91CEF440495 and _lF0940D7113B30F47 or _l5704E8F455F43DA3
local _l863527DDE25B122A = _l8230FAE0CD6CF69F == (_xd("fHV2ZA==",16)) and _l61AC81B30445C42C or _l5704E8F455F43DA3
renderer.rectangle(_l3B74E704E1B9D330.x, _l3B74E704E1B9D330.y, _l2802D4EA7B9D7E2F.x, _l2802D4EA7B9D7E2F.y, _lFE114B2C15C76E39:unpack())
_l1DB180C36A4930A4.x = _l1DB180C36A4930A4.x - (_l2802D4EA7B9D7E2F.x + _l57F2E320A07DE287)
local _l3ABA82CEB122E0B9 = vector(_l1DB180C36A4930A4.x, _l1DB180C36A4930A4.y - _lF824BADA6AF4C0B7 * 0.5)
local _l1D6E49D3B65B0F0A = vector(_l1DB180C36A4930A4.x, _l1DB180C36A4930A4.y + _lF824BADA6AF4C0B7 * 0.5)
local _l48D0A2F35D4026BB = vector(_l1DB180C36A4930A4.x - _l97AC0C05541E9858, _l1DB180C36A4930A4.y)
renderer.triangle(
_l3ABA82CEB122E0B9.x, _l3ABA82CEB122E0B9.y,
_l1D6E49D3B65B0F0A.x, _l1D6E49D3B65B0F0A.y,
_l48D0A2F35D4026BB.x, _l48D0A2F35D4026BB.y,
_l863527DDE25B122A:unpack()
)
end
do
local _l1DB180C36A4930A4 = _l7470804F9ED59421 + vector(_l234AAEA049DC4A5B + 1, 0)
local _l2802D4EA7B9D7E2F = vector(_l045BBE9C05ACA3B5, _lF824BADA6AF4C0B7)
local _l3B74E704E1B9D330 = _l1DB180C36A4930A4 - vector(0, _l2802D4EA7B9D7E2F.y * 0.5)
local _lFE114B2C15C76E39 = _l69DDA24F11029275 and _lF0940D7113B30F47 or _l5704E8F455F43DA3
local _l863527DDE25B122A = _l8230FAE0CD6CF69F == (_xd("iJOdko4=",250)) and _l61AC81B30445C42C or _l5704E8F455F43DA3
renderer.rectangle(_l3B74E704E1B9D330.x, _l3B74E704E1B9D330.y, _l2802D4EA7B9D7E2F.x, _l2802D4EA7B9D7E2F.y, _lFE114B2C15C76E39:unpack())
_l1DB180C36A4930A4.x = _l1DB180C36A4930A4.x + (_l2802D4EA7B9D7E2F.x + _l57F2E320A07DE287)
local _l3ABA82CEB122E0B9 = vector(_l1DB180C36A4930A4.x, _l1DB180C36A4930A4.y - _lF824BADA6AF4C0B7 * 0.5)
local _l1D6E49D3B65B0F0A = vector(_l1DB180C36A4930A4.x, _l1DB180C36A4930A4.y + _lF824BADA6AF4C0B7 * 0.5)
local _l48D0A2F35D4026BB = vector(_l1DB180C36A4930A4.x + _l97AC0C05541E9858, _l1DB180C36A4930A4.y)
renderer.triangle(
_l3ABA82CEB122E0B9.x, _l3ABA82CEB122E0B9.y,
_l1D6E49D3B65B0F0A.x, _l1D6E49D3B65B0F0A.y,
_l48D0A2F35D4026BB.x, _l48D0A2F35D4026BB.y,
_l863527DDE25B122A:unpack()
)
end
end
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
_l885AD57970B0DF46.event_callback(
'paint_ui',
_l62BF947F0B8A3F18,
_l861DF5F3FC680167 == (_xd("SmVoenpgag==",9))
)
_l885AD57970B0DF46.event_callback(
'paint_ui',
_lC984248AB80E0A00,
_l861DF5F3FC680167 == (_xd("ACIpKD8j",77))
)
_l885AD57970B0DF46.event_callback(
'paint_ui',
_lA0682FB92CFC2088,
_l861DF5F3FC680167 == (_xd("UmNna3VtY2Ny",6))
)
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l6EE39AB914A88CB9(_l777D8FF3F76AC3BE)
_l1F975C44CE40652A(_l777D8FF3F76AC3BE:get())
end
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
local _l861DF5F3FC680167 = _l777D8FF3F76AC3BE:get()
if not _l861DF5F3FC680167 then
_l1F975C44CE40652A(nil)
end
if _l861DF5F3FC680167 then
ref._l1A5745CF6DC0D04D:set_callback(_l6EE39AB914A88CB9, true)
else
ref._l1A5745CF6DC0D04D:unset_callback(_l6EE39AB914A88CB9)
end
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _l270D2C6CD7AD71A2 do
local ref = _l934A3DF2B1DD218E._l22887641E343368B._lA2858F25491F9BF1._l270D2C6CD7AD71A2
local _l6F49EB461422B562 = 0
local _l93A0F5D91FBDC005 _l84FC83D105E3D6BC()
local me = entity.get_local_player()
if me == nil or not entity._l3A0196851DA0B630(me) then
return nil
end
local _lD367F723AFA543D4 = c_entity(me)
if _lD367F723AFA543D4 == nil then
return nil
end
local _l50EC825EDB299DA7 = _lD367F723AFA543D4:get_anim_state()
if _l50EC825EDB299DA7 == nil then
return nil
end
local _l8973343023652E0A = _l50EC825EDB299DA7._lDC4DA9F05D0E6788
if _l8973343023652E0A == nil then
return nil
end
return _l885AD57970B0DF46.normalize(_l8973343023652E0A, -(180 + (3110 - 3110)), (2880 * 1) / 16)
end
local _l93A0F5D91FBDC005 _lA4325F58B6CCCFF6(x, y, _lC51EE15DB8F17338)
local _l15043F1A906E1330 = math.rad(_lC51EE15DB8F17338)
local _l9C5D07C6A6ADB508 = math._l9C5D07C6A6ADB508(_l15043F1A906E1330)
local _lE8EDC00389086700 = math._lE8EDC00389086700(_l15043F1A906E1330)
return x * _lE8EDC00389086700 - y * _l9C5D07C6A6ADB508, x * _l9C5D07C6A6ADB508 + y * _lE8EDC00389086700
end
local _l93A0F5D91FBDC005 _lD77034BF6291E584()
local _l65BEA4D959FFAB77 = _l84FC83D105E3D6BC()
if _l65BEA4D959FFAB77 == nil then
return
end
local _l5A7374A1D131DE50 = vector(client._l42B4F40833E0955A())
local _l7470804F9ED59421 = _l5A7374A1D131DE50 * 0.5
local _l6B34C906328159C4 = _l885AD57970B0DF46.normalize(_l65BEA4D959FFAB77 - _l6F49EB461422B562, -(180 * 1), (180 + (6036 - 6036)))
local _lCC9D2EFA01452D7D = math.min(globals.frametime() * (12 + (1054 - 1054)), 1)
_l6F49EB461422B562 = _l885AD57970B0DF46.normalize(_l6F49EB461422B562 + _l6B34C906328159C4 * _lCC9D2EFA01452D7D, -(180 + (6348 - 6348)), (84954 + 84774 - 84774))
local _l120CAA39EB56C63F = ref._lE8558CABD1E415C2:get()
local _l77F5C16F6639ACCD, point_y = _lA4325F58B6CCCFF6(_l120CAA39EB56C63F, 0, _l6F49EB461422B562)
local x = _l7470804F9ED59421.x + _l77F5C16F6639ACCD
local y = _l7470804F9ED59421.y + point_y
local _l989939D271284BB1 = _l424F4D241D652803(ref._l424F4D241D652803:get())
local _lC51EE15DB8F17338 = _l6F49EB461422B562 + (180 * 1)
local _l691FB8A2639E7D6D, tip_y = _lA4325F58B6CCCFF6(-10.0156, 0, _lC51EE15DB8F17338)
local _l98E9177E71EB2A8E, top_y = _lA4325F58B6CCCFF6(10.0156, -11.5625, _lC51EE15DB8F17338)
local _l670D43FF0B7DB728, notch_y = _lA4325F58B6CCCFF6(3.3438, 0, _lC51EE15DB8F17338)
local _l5259FF75A1C9A999, bottom_y = _lA4325F58B6CCCFF6(10.0156, 11.5625, _lC51EE15DB8F17338)
renderer.triangle(
x + _l5259FF75A1C9A999, y + bottom_y,
x + _l691FB8A2639E7D6D, y + tip_y,
x + _l670D43FF0B7DB728, y + notch_y,
_l989939D271284BB1:unpack()
)
renderer.triangle(
x + _l691FB8A2639E7D6D, y + tip_y,
x + _l98E9177E71EB2A8E, y + top_y,
x + _l670D43FF0B7DB728, y + notch_y,
_l989939D271284BB1:unpack()
)
end
ref._lF8E1754D21D14193:set_callback(_l93A0F5D91FBDC005(_l777D8FF3F76AC3BE)
_l885AD57970B0DF46.event_callback(
'paint_ui', _lD77034BF6291E584, _l777D8FF3F76AC3BE:get()
)
end, true)
end
local _l67C2576273D63F22 do
local ref = _l934A3DF2B1DD218E._lE2976F4B96444697._l67AA49514D0DC437._l67C2576273D63F22
local _lDD854CC88181CA3C = vtable_bind(
'engine.dll', 'VEngineClient014', -(-11), (_xd("5uvr6Kzb2/Ds7ffn5ejorq2s8uvt4K6t",132))
)
local _lB13D0E1E5BCF00F1 do
_lB13D0E1E5BCF00F1 = { }
local list = {
(_xd("pLWnu42lurumtw==",210)),
(_xd("SltJVRNUSVgTBAwMX1NOUllODQ==",60)),
(_xd("ZndleT94ZXQ/KCAgc39ifnViIg==",16)),
(_xd("DB0PE1USDx5VQkpKGRUIFB8ISQ==",122)),
(_xd("MiMxLWssMSBrfHR0Jys2KiE2cA==",68))
}
for i = 1, #list do
_lB13D0E1E5BCF00F1[i] = materialsystem.find_material(list[i])
end
end
local _l93A0F5D91FBDC005 update(r, g, b, a)
for i = 1, #_lB13D0E1E5BCF00F1 do
local _lAB8DEC7729B6FD2A = _lB13D0E1E5BCF00F1[i]
_lAB8DEC7729B6FD2A:alpha_modulate(a)
_lAB8DEC7729B6FD2A:color_modulate(r, g, b)
end
end
local _l93A0F5D91FBDC005 _l9414F1C1C88188EF()
update((3825 * 1) / 15, (3570 * 1) / 14, (2295 * 1) / 9, (255 * 1))
end
local _l93A0F5D91FBDC005 _lE9E4624A5309F296()
if not _lDD854CC88181CA3C() then
update((255 + (4757 - 4757)), -(-255), (255 + (7962 - 7962)), (1020 * 1) / 4)
else
update(ref._l424F4D241D652803:get())
end
end
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
if not _l861DF5F3FC680167 then
update((255 * 1), (1530 * 1) / 6, (255 * 1), (5285 + 5030 - 5030))
end
_l885AD57970B0DF46.event_callback(
'shutdown',
_l9414F1C1C88188EF,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'paint_ui',
_lE9E4624A5309F296,
_l861DF5F3FC680167
)
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
_l1F975C44CE40652A(_l777D8FF3F76AC3BE:get())
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _lCDF3C41A9F986209 do
local ref = _l934A3DF2B1DD218E._lE2976F4B96444697._l67AA49514D0DC437._lCDF3C41A9F986209
local _lF114756954DF2CE9 = ui.reference(
'Rage', 'Aimbot', 'Minimum damage'
)
local _l99922DD84AE45DD8 = {
ui.reference('Rage', 'Aimbot', 'Minimum damage override')
}
local _lF6AB9842B16FF018 = {
[(_xd("LQwPCBwFHQ==",105))] = '',
[(_xd("0O7i7+8=",131))] = '-',
[(_xd("CCUmLg==",74))] = 'b'
}
local _l93A0F5D91FBDC005 _l14F3DD54A1253793()
return ui.get(_l99922DD84AE45DD8[1])
and ui.get(_l99922DD84AE45DD8[(12 * 1) / 6])
end
local _l93A0F5D91FBDC005 _l88A1C60DFB78D790()
return _lF6AB9842B16FF018[ref._l3B1BCF18E37D2A8C:get()] or ''
end
local _l93A0F5D91FBDC005 _l06F298238E975187(_l002C9C644F32C5C8)
if _l002C9C644F32C5C8 then
return ui.get(_l99922DD84AE45DD8[(36 * 1) / 12])
end
return ui.get(_lF114756954DF2CE9)
end
local _l93A0F5D91FBDC005 _l5C41795479D4E7F8(_l002C9C644F32C5C8)
if not _l002C9C644F32C5C8 and _l09CC23F329A5EF13._l96D871DBEA7B8298.updated_this_tick then
return 'FL'
end
local _l479DF16E144B4F52 = _l06F298238E975187(_l002C9C644F32C5C8)
if _l479DF16E144B4F52 == 0 then
return (_xd("U0dGXQ==",18))
end
if _l479DF16E144B4F52 > -(-100) then
return string.format(
(_xd("19mY",252)), _l479DF16E144B4F52 - (64631 + 64531 - 64531)
)
end
return tostring(_l479DF16E144B4F52)
end
local _l93A0F5D91FBDC005 _lD77034BF6291E584()
local me = entity.get_local_player()
if me == nil or not entity._l3A0196851DA0B630(me) then
return
end
local _l42B4F40833E0955A = vector(
client._l42B4F40833E0955A()
)
local _l1DB180C36A4930A4 = _l42B4F40833E0955A * 0.5
local _lE8558CABD1E415C2 = ref._lE8558CABD1E415C2:get()
_l1DB180C36A4930A4.x = _l1DB180C36A4930A4.x + _lE8558CABD1E415C2
_l1DB180C36A4930A4.y = _l1DB180C36A4930A4.y - _lE8558CABD1E415C2
local r, g, b, a = ref.inactive_color:get()
local _lACA962B76FEDFB07 = _l14F3DD54A1253793()
local _lB38877B9C9EC66BA, _l9591A67D938F86B3 = _l88A1C60DFB78D790(), _l5C41795479D4E7F8(_lACA962B76FEDFB07)
if ref.only_if_active:get() and not _lACA962B76FEDFB07 then
return
end
if _lACA962B76FEDFB07 then
r, g, b, a = ref.active_color:get()
end
if a <= 0 then
return
end
local _lC176C1643CC513CE = vector(
renderer.measure_text(_lB38877B9C9EC66BA, _l9591A67D938F86B3)
)
_l1DB180C36A4930A4.y = _l1DB180C36A4930A4.y - _lC176C1643CC513CE.y
renderer._l9591A67D938F86B3(
_l1DB180C36A4930A4.x,
_l1DB180C36A4930A4.y,
r, g, b, a,
_lB38877B9C9EC66BA, nil, _l9591A67D938F86B3
)
end
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
_l885AD57970B0DF46.event_callback(
'paint_ui',
_lD77034BF6291E584,
_l861DF5F3FC680167
)
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
_l1F975C44CE40652A(_l777D8FF3F76AC3BE:get())
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
end
local _l8902B78CA3BCD5C3 do
local _lBE86409E9AAC1C1C do
local ref = _l934A3DF2B1DD218E._lE2976F4B96444697._l8902B78CA3BCD5C3._lBE86409E9AAC1C1C
local _lDD6AFA08E3E47EC3 = 0
local _lE6E3DF34925E0998 = 1
local _lF45461CAAC4987BD = (2 * 1)
local list = { }
local _l58AFA5F38E6EA2E0 = { }
local _l2A885C185A15CA77 = {
[(_xd("DSwvKDwlPQ==",73))] = '',
[(_xd("tpuYkA==",244))] = 'b'
}
local _l93A0F5D91FBDC005 _l9CF9ACFFB905B02E(id)
return (id % (135 * 1) / 9) + 1
end
local _l93A0F5D91FBDC005 _l81A3E5B2B799FE3D()
for i = 1, #list do
list[i] = nil
end
end
local _l93A0F5D91FBDC005 _l2E4B112FB8FEDF61(_l2E042F1CBFD735FC)
if _l2E042F1CBFD735FC == _lDD6AFA08E3E47EC3 then
return _l424F4D241D652803(ref.body_color:get())
end
if _l2E042F1CBFD735FC == _lE6E3DF34925E0998 then
return _l424F4D241D652803(ref.head_color:get())
end
if _l2E042F1CBFD735FC == _lF45461CAAC4987BD then
return _l424F4D241D652803(ref.mismatch_color:get())
end
return _l424F4D241D652803((1785 * 1) / 7, (35627 + 35372 - 35372), (68268 + 68013 - 68013), (255 * 1))
end
local _l93A0F5D91FBDC005 _l88C2D874A5CE66EC(e)
_l58AFA5F38E6EA2E0[_l9CF9ACFFB905B02E(e.id)] = e._l479DF16E144B4F52
end
local _l93A0F5D91FBDC005 _l684CBFE154FB050B(e)
local _l5E432A44CEEEFD31 = list[#list]
if _l5E432A44CEEEFD31 == nil then
return
end
local _l8E75F2B6C56835B2 = _l58AFA5F38E6EA2E0[_l9CF9ACFFB905B02E(e.id)]
if _l8E75F2B6C56835B2 == nil then
return
end
if _l5E432A44CEEEFD31._l479DF16E144B4F52 < _l8E75F2B6C56835B2 then
_l5E432A44CEEEFD31._l2E042F1CBFD735FC = _lF45461CAAC4987BD
end
end
local _l93A0F5D91FBDC005 _lE5C99BB6AF71BA94(e)
local me = entity.get_local_player()
local _lEF4A947D6622E24D = client.userid_to_entindex(e._lEF4A947D6622E24D)
local _l97D87A44F00AA199 = client.userid_to_entindex(e._l97D87A44F00AA199)
if _lEF4A947D6622E24D == me or _l97D87A44F00AA199 ~= me then
return
end
local pos = vector(_l885AD57970B0DF46.get_eye_position(_lEF4A947D6622E24D))
local _l2E042F1CBFD735FC = e._l59D0C8EE155CE768 == 1
and _lE6E3DF34925E0998 or _lDD6AFA08E3E47EC3
local _l0F5191CA1603861C = ref._l0F5191CA1603861C:get()
local _l479DF16E144B4F52 = e.dmg_health
local _lF92BDB141A38BADC = globals.realtime() + _l0F5191CA1603861C
table.insert(list, {
pos = pos,
_l2E042F1CBFD735FC = _l2E042F1CBFD735FC,
_l479DF16E144B4F52 = _l479DF16E144B4F52,
_lF92BDB141A38BADC = _lF92BDB141A38BADC
})
end
local _l93A0F5D91FBDC005 _lE4A2F025A6F6D446()
local _lD877CAA49EA048B6 = globals.frametime()
local _lB089E1D6D7176955 = globals.realtime()
local _l3B1BCF18E37D2A8C = ref._l3B1BCF18E37D2A8C:get()
local _lCC9D2EFA01452D7D = ref._lCC9D2EFA01452D7D:get()
local _lB38877B9C9EC66BA = _l2A885C185A15CA77[_l3B1BCF18E37D2A8C]
if _lB38877B9C9EC66BA == nil then
_lB38877B9C9EC66BA = ''
end
_lB38877B9C9EC66BA = _lB38877B9C9EC66BA .. 'c'
for i = #list, 1, -1 do
local _l5E432A44CEEEFD31 = list[i]
if _lB089E1D6D7176955 > _l5E432A44CEEEFD31._lF92BDB141A38BADC then
table.remove(list, i)
goto continue
end
_l5E432A44CEEEFD31.pos.z = _l5E432A44CEEEFD31.pos.z + _lCC9D2EFA01452D7D * _lD877CAA49EA048B6
::continue::
end
for i = 1, #list do
local _l5E432A44CEEEFD31 = list[i]
local _l150437F86297E966 = 1.0
local _l9591A67D938F86B3 = _l5E432A44CEEEFD31._l479DF16E144B4F52
local _l2E042F1CBFD735FC = _l5E432A44CEEEFD31._l2E042F1CBFD735FC
local col = _l2E4B112FB8FEDF61(_l2E042F1CBFD735FC)
local _l3AEEC31C89D75DB3 = _l5E432A44CEEEFD31._lF92BDB141A38BADC - _lB089E1D6D7176955
if _l3AEEC31C89D75DB3 < 0.7 then
_l150437F86297E966 = _l3AEEC31C89D75DB3 / 0.7
end
local x, y = renderer.world_to_screen(_l5E432A44CEEEFD31.pos:unpack())
if x == nil or y == nil then
goto continue
end
col = col:clone()
col.a = col.a * _l150437F86297E966
renderer._l9591A67D938F86B3(x, y, col.r, col.g, col.b, col.a, _lB38877B9C9EC66BA, nil, _l9591A67D938F86B3)
::continue::
end
end
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
if not _l861DF5F3FC680167 then
_l81A3E5B2B799FE3D()
end
_l885AD57970B0DF46.event_callback(
'aim_fire',
_l88C2D874A5CE66EC,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'aim_hit',
_l684CBFE154FB050B,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'player_hurt',
_lE5C99BB6AF71BA94,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'paint',
_lE4A2F025A6F6D446,
_l861DF5F3FC680167
)
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
_l1F975C44CE40652A(_l777D8FF3F76AC3BE:get())
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _l8C7EB14DBDF4BFB7 do
local ref = _l934A3DF2B1DD218E._lE2976F4B96444697._l8902B78CA3BCD5C3._l8C7EB14DBDF4BFB7
local _l4A561285AD29BD4A = 0.0
local _l93A0F5D91FBDC005 _l81A3E5B2B799FE3D()
_l4A561285AD29BD4A = 0.0
end
local _l93A0F5D91FBDC005 _lE5C99BB6AF71BA94(e)
local me = entity.get_local_player()
local _lEF4A947D6622E24D = client.userid_to_entindex(e._lEF4A947D6622E24D)
local _l97D87A44F00AA199 = client.userid_to_entindex(e._l97D87A44F00AA199)
if _lEF4A947D6622E24D == me or _l97D87A44F00AA199 ~= me then
return
end
_l4A561285AD29BD4A = 0.5
end
local _l93A0F5D91FBDC005 _lE4A2F025A6F6D446()
local _l150437F86297E966 = 1.0
if _l4A561285AD29BD4A < 0.25 then
_l150437F86297E966 = _l4A561285AD29BD4A / 0.25
end
local _l7470804F9ED59421 = 0.5 * vector(
client._l42B4F40833E0955A()
)
local col = _l424F4D241D652803(ref._l424F4D241D652803:get())
col.a = col.a * _l150437F86297E966
renderer._lD1EA4DC5CD8C4190(_l7470804F9ED59421.x - (70 * 1) / 7, _l7470804F9ED59421.y - (1675 + 1665 - 1665), _l7470804F9ED59421.x - (20 * 1) / 4, _l7470804F9ED59421.y - (5 + (8412 - 8412)), col:unpack())
renderer._lD1EA4DC5CD8C4190(_l7470804F9ED59421.x + (10 + (6618 - 6618)), _l7470804F9ED59421.y - (10 + (9165 - 9165)), _l7470804F9ED59421.x + (84672 + 84667 - 84667), _l7470804F9ED59421.y - (5 + (4176 - 4176)), col:unpack())
renderer._lD1EA4DC5CD8C4190(_l7470804F9ED59421.x + (10 * 1), _l7470804F9ED59421.y + (10 * 1), _l7470804F9ED59421.x + (5 * 1), _l7470804F9ED59421.y + (5 + (9607 - 9607)), col:unpack())
renderer._lD1EA4DC5CD8C4190(_l7470804F9ED59421.x - -(-10), _l7470804F9ED59421.y + -(-10), _l7470804F9ED59421.x - (43127 + 43122 - 43122), _l7470804F9ED59421.y + (85 * 1) / 17, col:unpack())
_l4A561285AD29BD4A = math.max(_l4A561285AD29BD4A - globals.frametime(), 0.0)
end
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
if not _l861DF5F3FC680167 then
_l81A3E5B2B799FE3D()
end
_l885AD57970B0DF46.event_callback(
'player_hurt',
_lE5C99BB6AF71BA94,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'paint',
_lE4A2F025A6F6D446,
_l861DF5F3FC680167
)
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
_l1F975C44CE40652A(_l777D8FF3F76AC3BE:get())
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
local _l144E1341F4C67C42 do
local ref = _l934A3DF2B1DD218E._lE2976F4B96444697._l8902B78CA3BCD5C3._l144E1341F4C67C42
local list = { }
local _lF2717F039B89EB30 = { }
local _l93A0F5D91FBDC005 _l9CF9ACFFB905B02E(id)
return (id % (90 * 1) / 6) + 1
end
local _l93A0F5D91FBDC005 _lD036A2FA3120DDEF()
for i = 1, #list do
list[i] = nil
end
end
local _l93A0F5D91FBDC005 _l88C2D874A5CE66EC(e)
_lF2717F039B89EB30[_l9CF9ACFFB905B02E(e.id)] = vector(e.x, e.y, e.z)
end
local _l93A0F5D91FBDC005 _l684CBFE154FB050B(e)
local _lB089E1D6D7176955 = globals.realtime() + ref._l0F5191CA1603861C:get()
local _lB3522DEF58C12C33 = _lF2717F039B89EB30[_l9CF9ACFFB905B02E(e.id)]
if _lB3522DEF58C12C33 == nil then
return
end
table.insert(list, {
_lB089E1D6D7176955 = _lB089E1D6D7176955,
_lB3522DEF58C12C33 = _lB3522DEF58C12C33
})
end
local _l93A0F5D91FBDC005 _lE4A2F025A6F6D446()
local _lB089E1D6D7176955 = globals.realtime()
for i = #list, 1, -1 do
local _l5E432A44CEEEFD31 = list[i]
if _lB089E1D6D7176955 > _l5E432A44CEEEFD31._lB089E1D6D7176955 then
table.remove(list, i)
end
end
for i = 1, #list do
local _l5E432A44CEEEFD31 = list[i]
local _l150437F86297E966 = 1.0
local _l3AEEC31C89D75DB3 = _l5E432A44CEEEFD31._lB089E1D6D7176955 - _lB089E1D6D7176955
if _l3AEEC31C89D75DB3 < 0.7 then
_l150437F86297E966 = _l3AEEC31C89D75DB3 / 0.7
end
local x, y = renderer.world_to_screen(
_l5E432A44CEEEFD31._lB3522DEF58C12C33:unpack()
)
if x == nil or y == nil then
goto continue
end
local _lBF25F39FB7D8BF2D = ref._lBF25F39FB7D8BF2D:get() * 0.5
local _l2742BF7C296EC261 = ref._l2742BF7C296EC261:get() + _lBF25F39FB7D8BF2D
local _l4E6C221DFE9D519A = _l424F4D241D652803(ref.horizontal_color:get())
local _l29C166D61E236FD9 = _l424F4D241D652803(ref.vertical_color:get())
_l4E6C221DFE9D519A.a = _l4E6C221DFE9D519A.a * _l150437F86297E966
_l29C166D61E236FD9.a = _l29C166D61E236FD9.a * _l150437F86297E966
renderer.rectangle(x - _l2742BF7C296EC261, y - _lBF25F39FB7D8BF2D, _l2742BF7C296EC261 * (32 * 1) / 16, _lBF25F39FB7D8BF2D * (2 * 1), _l4E6C221DFE9D519A:unpack())
renderer.rectangle(x - _lBF25F39FB7D8BF2D, y - _l2742BF7C296EC261, _lBF25F39FB7D8BF2D * (12 * 1) / 6, _l2742BF7C296EC261 * (24 * 1) / 12, _l29C166D61E236FD9:unpack())
::continue::
end
end
local _l93A0F5D91FBDC005 _l1F975C44CE40652A(_l861DF5F3FC680167)
if not _l861DF5F3FC680167 then
_lD036A2FA3120DDEF()
end
_l885AD57970B0DF46.event_callback(
'aim_fire',
_l88C2D874A5CE66EC,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'aim_hit',
_l684CBFE154FB050B,
_l861DF5F3FC680167
)
_l885AD57970B0DF46.event_callback(
'paint',
_lE4A2F025A6F6D446,
_l861DF5F3FC680167
)
end
local _l9639F8C97A0AA4C7 do
local _l93A0F5D91FBDC005 _l00750FF29DA8160D(_l777D8FF3F76AC3BE)
_l1F975C44CE40652A(_l777D8FF3F76AC3BE:get())
end
ref._lF8E1754D21D14193:set_callback(
_l00750FF29DA8160D, true
)
end
end
end
end
_l422CA01953F92F19((_xd("HxgNCwlMXV1MQUwNAhgFQQ0FAQ==",108)))
do
local _l0F5191CA1603861C = (24 * 1) / 6
local _lA3BB633898BA43C6 = 0.25
local _l4560B3A9A5CC5EA9 = globals.realtime()
local _l126211E87D765178 = {
{ _l9591A67D938F86B3 = string.format('%s ⁓ %s', _lB6CD131F5793FF2D._lDB160C0F87126763, _lB6CD131F5793FF2D.build), accent = true, _l2742BF7C296EC261 = 'b', _l57F2E320A07DE287 = (26 + (1953 - 1953)) },
{ _l9591A67D938F86B3 = (_xd("joOZiYWYjtDK",234)) .. _lB6CD131F5793FF2D.discord_short, accent = false, _l2742BF7C296EC261 = '', _l57F2E320A07DE287 = (300 * 1) / 15 },
{ _l9591A67D938F86B3 = (_xd("saCpoKK3pKj/5Q==",197)) .. _lB6CD131F5793FF2D.telegram_short, accent = false, _l2742BF7C296EC261 = '', _l57F2E320A07DE287 = 0 },
}
local _l93A0F5D91FBDC005 _lD5CFB42029E9D289(_lBC95113691F9A940, screen_height, opacity)
local _l0439F7B0297F7D51 = math.floor((95 + (9568 - 9568)) * opacity)
local _lAE383157EF6AF270 = math.floor((1350 * 1) / 15 * opacity)
local _lCF45502B7D66FFD1 = math.floor(_lBC95113691F9A940 * 0.3)
local _l81951C63743D41EA = math.floor(screen_height * 0.3)
renderer.rectangle(0, 0, _lBC95113691F9A940, screen_height, 0, 0, 0, _l0439F7B0297F7D51)
renderer.gradient(0, 0, _lCF45502B7D66FFD1, screen_height, 0, 0, 0, _lAE383157EF6AF270, 0, 0, 0, 0, true)
renderer.gradient(_lBC95113691F9A940 - _lCF45502B7D66FFD1, 0, _lCF45502B7D66FFD1, screen_height, 0, 0, 0, 0, 0, 0, 0, _lAE383157EF6AF270, true)
renderer.gradient(0, 0, _lBC95113691F9A940, _l81951C63743D41EA, 0, 0, 0, _lAE383157EF6AF270, 0, 0, 0, 0, false)
renderer.gradient(0, screen_height - _l81951C63743D41EA, _lBC95113691F9A940, _l81951C63743D41EA, 0, 0, 0, 0, 0, 0, 0, _lAE383157EF6AF270, false)
end
local _l93A0F5D91FBDC005 _l8BB37B61FB0055CB()
local _l43ED761104D41485 = globals.realtime() - _l4560B3A9A5CC5EA9
if _l43ED761104D41485 >= _l0F5191CA1603861C then
client.unset_event_callback('paint_ui', _l8BB37B61FB0055CB)
return
end
local _l150437F86297E966 = (3825 * 1) / 15
if _l43ED761104D41485 < _lA3BB633898BA43C6 then
_l150437F86297E966 = math.floor((255 * 1) * _l43ED761104D41485 / _lA3BB633898BA43C6)
elseif _l43ED761104D41485 > _l0F5191CA1603861C - _lA3BB633898BA43C6 then
_l150437F86297E966 = math.floor((39233 + 38978 - 38978) * (_l0F5191CA1603861C - _l43ED761104D41485) / _lA3BB633898BA43C6)
end
_l150437F86297E966 = math.max(0, math.min((255 + (7949 - 7949)), _l150437F86297E966))
local _lBC95113691F9A940, screen_height = client._l42B4F40833E0955A()
_lD5CFB42029E9D289(_lBC95113691F9A940, screen_height, _l150437F86297E966 / (1275 * 1) / 5)
local _lBC3447CE5A293F14, ag, ab = _lE4C0F29811DB3FE5._l2E4B112FB8FEDF61()
local x, y = _lBC95113691F9A940 * 0.5, screen_height * 0.5 - (30 + (5832 - 5832))
renderer.gradient(x - (360 * 1) / 4, y - (12 + (2982 - 2982)), -(-90), 1, _lBC3447CE5A293F14, ag, ab, 0, _lBC3447CE5A293F14, ag, ab, _l150437F86297E966, true)
renderer.gradient(x, y - (24 * 1) / 2, (90 + (6634 - 6634)), 1, _lBC3447CE5A293F14, ag, ab, _l150437F86297E966, _lBC3447CE5A293F14, ag, ab, 0, true)
for i = 1, #_l126211E87D765178 do
local _lD1EA4DC5CD8C4190 = _l126211E87D765178[i]
if _lD1EA4DC5CD8C4190.accent then
renderer._l9591A67D938F86B3(x, y, _lBC3447CE5A293F14, ag, ab, _l150437F86297E966, 'c' .. _lD1EA4DC5CD8C4190._l2742BF7C296EC261, 0, _lD1EA4DC5CD8C4190._l9591A67D938F86B3)
else
renderer._l9591A67D938F86B3(x, y, -(-235), (235 + (7292 - 7292)), -(-240), _l150437F86297E966, 'c' .. _lD1EA4DC5CD8C4190._l2742BF7C296EC261, 0, _lD1EA4DC5CD8C4190._l9591A67D938F86B3)
end
y = y + _lD1EA4DC5CD8C4190._l57F2E320A07DE287
end
end
client.set_event_callback('paint_ui', _l8BB37B61FB0055CB)
end
_l422CA01953F92F19((_xd("dHNmYGInNjUnKid1YmZjfg==",7)))
