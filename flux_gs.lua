local user do
    user = {} do
        user.name = _USER_NAME or ""
        user.last_update = "no_info"
        user.debug = false

        if not LPH_OBFUSCATED then
            LPH_ENCSTR = function (...) return ... end
            LPH_NO_VIRTUALIZE = function (...) return ... end
            LPH_CRASH = function (...) print('Triggered self-descruction and crash of VM') end
        end
    end
end

LPH_NO_VIRTUALIZE(function ()
    local ffi = require 'ffi';

    local brand = {
        name = 'Flux GS',
        tag = 'flux.gs',
        prefix = '[flux.gs]',
        config_prefix = 'fluxgs_',
        legacy_config_suffix = '_fluxgs',
        database_prefix = 'fluxgs',
        discord = 'https://discord.gg/UYRDUmfGbN',
        telegram = 'https://t.me/luaflux'
    }

    do
        local dependencies = {
            ['csgo_weapons'] = {
                name = 'gamesense/csgo_weapons',
                type = 'workshop',
                link = 'https://gamesense.pub/forums/viewtopic.php?id=18807'
            },
            ['base64'] = {
                name = 'gamesense/base64',
                type = 'workshop',
                link = 'https://gamesense.pub/forums/viewtopic.php?id=21619'
            },
            ['clipboard'] = {
                name = 'gamesense/clipboard',
                type = 'workshop',
                link = 'https://gamesense.pub/forums/viewtopic.php?id=28678'
            },
            ['surface'] = {
                name = 'gamesense/surface',
                type = 'workshop',
                link = 'https://gamesense.pub/forums/viewtopic.php?id=18793'
            }
        }

        if user.debug then
            dependencies['inspect'] = {
                name = 'gamesense/inspect',
                type = 'workshop',
                link = ''
            }
        end

        local located = true

        for gname, method in pairs(dependencies) do
            local success = pcall(require, method.name)

            if not success then
                if method.type == 'workshop' then
                    client.error_log(string.format('[-] Unable to locate %s library. You need to subscribe to it here %s', gname, method.link))
                elseif method.type == 'local' then
                    client.error_log(string.format('[-] Unable to locate %s library. You need to download it and put in gamesense folder. Link is %s', gname, method.link))
                end

                located = false
            end
        end

        if not located then
            return error('[~] Script was unable to start. You can investigate error above.')
        end
    end

    local vector = require 'vector'
    local csgo_weapons = require 'gamesense/csgo_weapons'
    local base64 = require 'gamesense/base64'
    local clipboard = require 'gamesense/clipboard'
    local surface = require 'gamesense/surface'
    local inspect do
        if user.debug then
            inspect = require 'gamesense/inspect'
        end
    end

    local mathx, logger, tablex, stringx, animations, tweening, grams do
        mathx = {} do
            mathx.min = (function (a, b)
                return a > b and b or a
            end)

            mathx.max = (function (a, b)
                return a > b and a or b
            end)

            mathx.abs = (function (a)
                return a > 0 and a or -a
            end)

            mathx.round = (function (a)
                return math.floor(a+0.5)
            end)

            mathx.normalize_yaw = (function (a)
                while a > 180 do
                    a = a - 360
                end

                while a < -180 do
                    a = a + 360
                end

                return a
            end)

            mathx.clamp = (function (v, min, max)
                if v > max then
                    return max
                end

                if v < min then
                    return min
                end

                return v
            end)

            mathx.random = (function (min, max)
                return client.random_int(min, max)
            end)

            mathx.randomf = (function (min, max)
                return min + (max-min)*math.random()
            end)

            mathx.lerp = (function (a, b, v)
                local delta = (b - a)

                if mathx.abs(delta) <= 0.095 then
                    return b
                end

                return a + delta*v
            end)

            mathx.extrapolate = (function (ent, origin, ticks)
                local tickinterval = globals.tickinterval()

                local sv_gravity = cvar.sv_gravity:get_float() * tickinterval
                local sv_jump_impulse = cvar.sv_jump_impulse:get_float() * tickinterval

                local p_origin, prev_origin = origin, origin

                local velocity = vector(entity.get_prop(ent, 'm_vecVelocity'))
                local gravity = velocity.z > 0 and -sv_gravity or sv_jump_impulse

                for i=1, ticks do
                    prev_origin = p_origin
                    p_origin = vector(
                        p_origin.x + (velocity.x * tickinterval),
                        p_origin.y + (velocity.y * tickinterval),
                        p_origin.z + (velocity.z+gravity) * tickinterval
                    )

                    local fraction = client.trace_line(-1,
                        prev_origin.x, prev_origin.y, prev_origin.z,
                        p_origin.x, p_origin.y, p_origin.z
                    )

                    if fraction <= 0.99 then
                        return prev_origin
                    end
                end

                return p_origin
            end)
        end

        logger = {} do
            logger.log = (function (format, ...)
                client.color_log(108, 181, 119, brand.prefix .. ' \1\0')
                client.color_log(61, 212, 197, ('[%02d:%02d:%02d] \1\0'):format(client.system_time()))
                client.color_log(255, 255, 255, format:format(...))
            end)

            logger.config = (function (format, ...)
                client.color_log(108, 181, 119, brand.prefix .. ' \1\0')
                client.color_log(255, 255, 255, ('~ ' .. format):format(...))
            end)

            logger.hitlog = (function (text)
                client.color_log(108, 181, 119, brand.prefix .. ' \1\0')
                client.color_log(255, 255, 255, text .. '\n')
            end)

            logger.log_error = (function (format, ...)
                client.color_log(108, 181, 119, brand.prefix .. ' \1\0')
                client.color_log(61, 212, 197, ('[%02d:%02d:%02d] \1\0'):format(client.system_time()))
                client.color_log(255, 0, 255, format:format(...))
            end)

            logger.log_error_fatal = (function (format, ...)
                client.color_log(108, 181, 119, brand.prefix .. ' \1\0')
                client.color_log(61, 212, 197, ('[%02d:%02d:%02d] \1\0'):format(client.system_time()))
                client.color_log(255, 0, 50, format:format(...))

                return error('Execution aborted due to fatal exception!')
            end)
        end

        tablex = {} do
            tablex.unpack_keywise = (function (keys, ...)
                local new_table = {}

                for i=1, #keys do
                    new_table[keys[i]] = ({...})[i]
                end

                return new_table
            end)

            tablex.combine_arrays = (function (...)
                local new_table = {}

                local arrays = {...}
                local cnt = 1

                for i=1, #arrays do
                    for _, value in pairs(arrays[i]) do
                        new_table[cnt] = value
                        cnt = cnt + 1
                    end
                end

                return new_table
            end)

            tablex.is_hotkey_active = (function (element)
                return ui.get(element[1]) and ui.get(element[2])
            end)

            tablex.contains = (function (tbl, value)
                local tbl_len = #tbl

                for i=1, tbl_len do
                    if tbl[i] == value then
                        return true
                    end
                end

                return false
            end)

            tablex.object_contains = (function (tbl, value)
                for key, tvalue in pairs(tbl) do
                    if tvalue == value then
                        return true
                    end
                end

                return false
            end)

            tablex.closest = (function (v, targets)
                local best, diff = targets[1], math.huge

                for i=1, #targets do
                    local tbl_val = targets[i]
                    local cur_diff = mathx.abs(tbl_val-v)

                    if cur_diff < diff then
                        best = tbl_val
                        diff = cur_diff
                    end
                end

                return best
            end)

            tablex.keys = (function (table)
                local keys = {}

                for key in next, table, nil do
                    keys[#keys+1] = key
                end

                return keys
            end)

            tablex.equals = (function (tbl1, tbl2)
                for k, v in pairs(tbl1) do
                    if v ~= tbl2[k] then
                        return false
                    end
                end

                for k, v in pairs(tbl2) do
                    if v ~= tbl1[k] then
                        return false
                    end
                end

                return true
            end)
        end

        stringx = {} do
            stringx.trim = (function (str)
                while str:sub(1, 1) == ' ' do
                    str = str:sub(2)
                end

                while str:sub(#str, #str) == ' ' do
                    str = str:sub(1, #str-1)
                end

                if #str == 0 or str == '' then
                    str = 'Unnamed'
                end

                return str
            end)

            stringx.split = (function (str, sep)
                local result = {}
                local start = str:find(sep)

                if not start then
                    return {str}
                end

                local pos = 1

                while start do
                    result[#result+1] = str:sub(pos, start)

                    pos = start+sep:len()

                    start = str:find(sep, pos)

                    if not start then
                        result[#result+1] = str:sub(pos)
                    end
                end

                return result
            end)
        end

        animations = {} do
            animations.data = {}

            function animations:new(key, increasing, speed, modifier, initial_value)
                self.data[key] = self.data[key] or {
                    method = 'lerp',
                    increasing = increasing,
                    speed = speed or 4,
                    modifier = modifier or 0,
                    value = initial_value or 0
                }

                return self.data[key]
            end

            function animations:sway(key, from, to, speed, iterations, initial_value)
                self.data[key] = self.data[key] or {
                    active = 0,
                    method = 'sway',
                    increasing = false,
                    start = mathx.min(from, to),
                    target = mathx.max(from, to),
                    speed = speed or 4,
                    iterations = iterations or 1,
                    value = initial_value or from
                }

                local this = self.data[key]

                this.start, this.target = mathx.min(from, to), mathx.max(from, to)
                this.speed, this.iterations = speed, iterations

                return this
            end

            function animations:spin(key, from, to, speed, iterations, initial_value)
                self.data[key] = self.data[key] or {
                    active = 0,
                    method = 'spin',
                    start = mathx.min(from, to),
                    target = mathx.max(from, to),
                    speed = speed or 4,
                    iterations = iterations or 1,
                    value = initial_value or from
                }

                local this = self.data[key]

                this.start, this.target = mathx.min(from, to), mathx.max(from, to)
                this.speed, this.iterations = speed, iterations

                return this
            end

            function animations:flick(key, from, to, speed, initial_value)
                self.data[key] = self.data[key] or {
                    active = 0,
                    method = 'flick',
                    start = mathx.min(from, to),
                    target = mathx.max(from, to),
                    speed = speed or 4,
                    value = initial_value or from
                }

                local this = self.data[key]

                this.start, this.target = mathx.min(from, to), mathx.max(from, to)
                this.speed = speed

                return this
            end

            function animations:frame()
                local frametime = globals.frametime()

                for key, state in pairs(self.data) do
                    if state.method == 'lerp' then
                        state.value = mathx.clamp(state.value + (state.increasing and 1 or -1) * state.speed * frametime, 0, 1)
                    end
                end
            end

            function animations:tick(tick)
                for key, state in pairs(self.data) do
                    if state.method == 'sway' then
                        local difference = tick - state.active

                        if difference > state.speed or mathx.abs(difference) > 64 then
                            for i=1, state.iterations do
                                if state.increasing then
                                    if state.value < state.target then
                                        state.value = state.value + 1
                                    else
                                        state.increasing = false
                                    end
                                else
                                    if state.value > state.start then
                                        state.value = state.value - 1
                                    else
                                        state.increasing = true
                                    end
                                end
                            end

                            state.active = tick
                        end
                    end

                    if state.method == 'spin' then
                        local difference = tick - state.active

                        if difference > state.speed or mathx.abs(difference) > 64 then
                            for i=1, state.iterations do
                                if state.value < state.target then
                                    state.value = state.value + 1
                                else
                                    state.value = state.start
                                end
                            end

                            state.active = tick
                        end
                    end

                    if state.method == 'flick' then
                        local difference = tick - state.active

                        if difference > state.speed or mathx.abs(difference) > 64 then
                            state.increasing = not state.increasing
                            state.value = state.increasing and state.start or state.target
                            state.active = tick
                        end
                    end
                end
            end
        end

        tweening = {} do
            local native_GetTimescale = vtable_bind('engine.dll', 'VEngineClient014', 91, 'float(__thiscall*)(void*)')

            local function solve(easings_fn, prev, new, clock, duration)
                local prev = easings_fn(clock, prev, new - prev, duration)

                if type(prev) == 'number' then
                    if math.abs(new - prev) <= .01 then
                        return new
                    end

                    local fmod = prev % 1

                    if fmod < .001 then
                        return math.floor(prev)
                    end

                    if fmod > .999 then
                        return math.ceil(prev)
                    end
                end

                return prev
            end

            local mt = {}; do
                local function update(self, duration, target, easings_fn)
                    if duration == nil and target == nil and easings_fn == nil then
                        return self.value
                    end

                    local value_type = type(self.value)
                    local target_type = type(target)

                    if target_type == 'boolean' then
                        target = target and 1 or 0
                        target_type = 'number'
                    end

                    assert(value_type == target_type, string.format('type mismatch, expected %s (received %s)', value_type, target_type))

                    if target ~= self.to then
                        self.clock = 0

                        self.from = self.value
                        self.to = target
                    end

                    local clock = globals.frametime() / native_GetTimescale()
                    local duration = duration or .15

                    if self.clock == duration then
                        return target
                    end

                    if clock <= 0 and clock >= duration then
                        self.clock = 0

                        self.from = target
                        self.to = target

                        self.value = target

                        return target
                    end

                    self.clock = math.min(self.clock + clock, duration)
                    self.value = solve(easings_fn or self.easings, self.from, self.to, self.clock, duration)

                    return self.value;
                end

                mt.__metatable = false
                mt.__call = update
                mt.__index = mt
            end

            function tweening:new(default, easings_fn)
                if type(default) == 'boolean' then
                    default = default and 1 or 0
                end

                local this = {}

                this.clock = 0
                this.value = default or 0

                this.easings = easings_fn or function(t, b, c, d)
                    return c * t / d + b
                end

                return setmetatable(this, mt)
            end
        end

        grams = {} do
            grams.update_gram = (function (gram, v, maxlen)
                while #gram > maxlen-1 do
                    table.remove(gram, 1)
                end

                table.insert(gram, v)
            end)

            grams.average = (function (gram)
                local sum, cnt = 0, 0

                for i=1, #gram do
                    sum = sum + gram[i]
                    cnt = cnt + 1
                end

                if cnt == 0 then
                    return 0
                end

                return sum / cnt
            end)
        end
    end

    local constants do
        constants = {} do
            constants.STATE_LIST = { 'Standing', 'Slow-motion', 'Moving', 'Crouching', 'Crouch moving', 'Air', 'Air & Crouch' }

            constants.fonts = {} do
                constants.fonts.lucida = surface.create_font('Lucida Console', 10, 400, 128)
            end


        end
    end

    local color do
        local create_color, create_color_object, Color do
            Color = {} do
                function Color:clone()
                    return create_color_object(
                        self.r, self.g, self.b, self.a
                    )
                end

                function Color:to_hex()
                    return ('%02X%02X%02X%02X'):format(self.r, self.g, self.b, self.a)
                end

                function Color:as_hex(hex_value)
                    local r, g, b, a = hex_value:match('(%x%x)(%x%x)(%x%x)(%x%x)')

                    return create_color_object(tonumber(r, 16), tonumber(g, 16), tonumber(b, 16), tonumber(a, 16))
                end

                function Color:lerp(color_target, weight)
                    return create_color_object(
                        mathx.lerp(self.r, color_target.r, weight),
                        mathx.lerp(self.g, color_target.g, weight),
                        mathx.lerp(self.b, color_target.b, weight),
                        mathx.lerp(self.a, color_target.a, weight)
                    )
                end

                function Color:grayscale(ratio)
                    return create_color_object(
                        self.r * ratio,
                        self.g * ratio,
                        self.b * ratio,
                        self.a
                    )
                end

                function Color:alpha_modulate(alpha, modulate)
                    return create_color_object(
                        self.r,
                        self.g,
                        self.b,
                        modulate and self.a*alpha or alpha
                    )
                end

                function Color:unpack()
                    return self.r, self.g, self.b, self.a
                end
            end

            function create_color_object(self, ...)
                local args = {...}

                if type(self) == 'number' then
                    table.insert(args, 1, self)
                end

                if type(args[1]) == 'table' then
                    if args[1][1] then
                        args = args[1]
                    else
                        args = {args[1].r, args[1].g, args[1].b, args[1].a}
                    end
                end

                if type(args[1]) == 'string' then
                    return setmetatable({
                        r = 255, g = 255, b = 255, a = 255
                    }, {
                        __index = Color
                    }):as_hex(args[1])
                end

                return setmetatable({
                    r = args[1] or 255,
                    g = args[2] or 255,
                    b = args[3] or 255,
                    a = args[4] or 255
                }, {
                    __index = Color
                })
            end

            local stock_colors = {} do
                stock_colors.raw_green = create_color_object(0, 255, 0);
                stock_colors.raw_red = create_color_object(255, 0, 0);

                stock_colors.red = create_color_object(255, 0, 50);
                stock_colors.white = create_color_object();
                stock_colors.gray = create_color_object(200, 200, 200);
                stock_colors.green = create_color_object(143, 194, 21);
                stock_colors.sea = create_color_object(59, 208, 182);
                stock_colors.blue = create_color_object(95, 156, 204);
                stock_colors.pink = create_color_object(209, 101, 145);
                stock_colors.yellow = create_color_object(233, 213, 2);
                stock_colors.purplish = create_color_object(193, 144, 252);

                stock_colors.onshot = create_color_object(100, 148, 237, 255);
                stock_colors.freestanding = create_color_object(132, 195, 16, 255);
                stock_colors.edge = create_color_object(209, 159, 230, 255);
                stock_colors.fixik = create_color_object('00FFCBFF');

                stock_colors.string_to_color_array = (function (str)
                    local arr =  {}
                    local match, mend = str:find('\a')

                    if not match then
                        arr[#arr+1] = str
                    else
                        while match do
                            local prmatch = match
                            local prend = mend

                            match, mend = str:find('\a', match+1)

                            if match == nil then
                                arr[#arr+1] = str:sub(prend, #str)

                                break
                            else
                                arr[#arr+1] = str:sub(prmatch, match-1)
                            end
                        end
                    end

                    local cnt = 0
                    local out = {}

                    for i=1, #arr do
                        for hex_col, s in arr[i]:gmatch('\a(%x%x%x%x%x%x%x%x)(.+)') do
                            out[#out+1] = {
                                color = create_color(hex_col),
                                text = s
                            };

                            cnt = cnt + 1
                        end
                    end

                    if cnt == 0 then
                        out[#out+1] = {
                            color = create_color('FFFFFFFF'),
                            text = str
                        }
                    end

                    return out
                end)

                stock_colors.animated_text = (function (text, speed, color_start, color_end, alpha)
                    local first = color_start and create_color(color_start.r, color_start.g, color_start.b, alpha) or create_color(255, 200, 255, alpha)
                    local second = color_end and create_color(color_end.r, color_end.g, color_end.b, alpha) or create_color(100, 100, 100, alpha)

                    local res = ""

                    for idx = 1, #text + 1 do
                        local letter = text:sub(idx, idx)

                        local alpha1 = (idx - 1) / (#text - 1)
                        local m_speed = globals.realtime() * ((50 / 25) or 1.0)
                        local m_factor = m_speed % math.pi

                        local c_speed = speed or 1
                        local m_sin = math.sin(m_factor * c_speed + (alpha1 or 0))
                        local m_abs = math.abs(m_sin)
                        local clr = first:lerp(second, m_abs)

                        res = ("%s\a%s%s"):format(res, clr:to_hex(), letter)
                    end

                    return res
                end)
            end

            create_color = setmetatable(stock_colors, {
                __call = create_color_object
            })
        end

        color = create_color
    end

    local override = {} do
        local e_hotkey_mode = {
            [0] = "Always on",
            [1] = "On hotkey",
            [2] = "Toggle",
            [3] = "Off hotkey"
        }

        local data = { }

        local function get_value(ref)
            local value = { ui.get(ref) }
            local typeof = ui.type(ref)

            if typeof == "hotkey" then
                return { e_hotkey_mode[value[2]], value[3] }
            end

            return value
        end

        function override.get(ref, ...)
            local value = data[ref]

            if value == nil then
                return
            end

            return unpack(value)
        end

        function override.set(ref, ...)
            if data[ref] == nil then
                data[ref] = get_value(ref)
            end

            ui.set(ref, ...)
        end

        function override.unset(ref)
            if data[ref] == nil then
                return
            end

            ui.set(ref, unpack(data[ref]))
            data[ref] = nil
        end
    end

    local menu = {} do
        local items = { }
        local records = { }

        local callbacks = { }

        local function get_value(ref)
            local value = { pcall(ui.get, ref) }
            if not value[1] then return end

            return unpack(value, 2)
        end

        local function get_keys(value)
            if type(value[1]) == "table" then
                return tablex.keys(value[1])
            end

            return { }
        end

        local function update_items()
            for i = 1, #callbacks do
                callbacks[i]()
            end

            for i = 1, #items do
                local item = items[i]

                ui.set_visible(item.ref, item.is_visible)
                item.is_visible = false
            end
        end

        local c_item = { } do
            function c_item:new()
                return setmetatable({ }, self)
            end

            function c_item:init()
                local function callback(ref)
                    self:update_value(ref)
                    self:invoke_callback(ref)

                    update_items()
                end

                ui.set_callback(self.ref, callback)
            end

            function c_item:get()
                return unpack(self.value)
            end

            function c_item:set(...)
                local ref = self.ref

                ui.set(ref, ...)
                self:update_value(ref)
            end

            function c_item:have_key(key)
                return self.keys[key] ~= nil
            end

            function c_item:rawget()
                return ui.get(self.ref)
            end

            function c_item:reset()
                pcall(ui.set, self.ref, unpack(self.default))
            end

            function c_item:record(tab, name)
                if records[tab] == nil then
                    records[tab] = { }
                end

                self.is_recorded = true
                records[tab][name] = self

                return self
            end

            function c_item:save()
                if not self.is_recorded then
                    error("unable to save unrecorded item")
                    return
                end

                self.is_saved = true
                return self
            end

            function c_item:display()
                self.is_visible = true
            end

            function c_item:config_ignore()
                self.saveable = false
                return self
            end

            function c_item:set_callback(callback, run)
                if run then
                    callback(self.ref)
                end

                self.callbacks[#self.callbacks + 1] = callback
            end

            function c_item:update_value(ref)
                local value = { get_value(ref) }
                self.keys = get_keys(value)

                self.value = value
            end

            function c_item:invoke_callback(...)
                for i = 1, #self.callbacks do
                    self.callbacks[i](...)
                end
            end

            function c_item:get_ref()
                return self.ref
            end

            c_item.__index = c_item
        end

        function menu.new_item(fn, ...)
            local ref = fn(...)

            local value = { get_value(ref) }
            local typeof = ui.type(ref)

            local item = c_item:new()

            item.ref = ref
            item.name = select(3, ...)

            item.value = value
            item.default = value

            item.keys = get_keys(value)
            item.callbacks = { }

            item.is_saved = false
            item.is_visible = false
            item.is_recorded = false

            item.saveable = true

            if typeof == "button" then
                item.callbacks[#item.callbacks + 1] = select(4, ...)
            end

            item:init()
            items[#items + 1] = item

            return item
        end

        function menu.get_items()
            return items
        end

        function menu.get_records()
            return records
        end

        function menu.set_callback(callback)
            callbacks[#callbacks + 1] = callback
        end

        function menu.update()
            update_items()
        end
    end

    local config_system do
        config_system = { }

        local e_hotkey_mode = {
            [0] = "Always on",
            [1] = "On hotkey",
            [2] = "Toggle",
            [3] = "Off hotkey"
        }

        local function resolve_item_export(item)
            if not item.saveable then
                return
            end

            if ui.type(item.ref) == "label" then
                return
            end

            if ui.type(item.ref) == "hotkey" then
                local active, mode, key = item:rawget()

                return {e_hotkey_mode[mode], key}
            end

            return item.value
        end

        local function resolve_item_import(item, data)
            if ui.type(item.ref) == "label" then
                return true
            end

            if not item.saveable then
                return true
            end

            if data == nil then
                return false
            end

            item:set(unpack(data))

            return true
        end

        function config_system.export_to_str(...)
            local tabs = {...}
            local config_result = {}

            local records = menu:get_records()

            if #tabs ~= 0 then
                records = {}

                for i=1, #tabs do
                    records[tabs[i]] = menu:get_records()[tabs[i]]
                end
            end

            for tab, list in pairs(records) do
                config_result[tab] = {}

                for item_id, element in pairs(list) do
                    config_result[tab][item_id] = resolve_item_export(element)
                end
            end

            return brand.config_prefix .. base64.encode(json.stringify(config_result))
        end

        function config_system.import_from_str(str, ...)
            local tabs = {...}
            if str:sub(1, #brand.config_prefix) == brand.config_prefix then
                str = str:sub(#brand.config_prefix + 1)
            else
                local legacy_at = str:find(brand.legacy_config_suffix, 1, true)

                if legacy_at then
                    str = str:sub(1, legacy_at - 1)
                end
            end

            local status, config = pcall(base64.decode, str)

            if not status then
                return false, "Failed to decode config"
            end

            status, config = pcall(json.parse, config)

            if not status then
                return false, "Failed to parse config"
            end

            local records = menu:get_records()

            if #tabs ~= 0 then
                records = {}

                for i=1, #tabs do
                    records[tabs[i]] = menu:get_records()[tabs[i]]
                end
            end

            for tab, list in pairs(records) do
                if config[tab] then
                    for item_id, element in pairs(list) do
                        if config[tab][item_id] then
                            resolve_item_import(element, config[tab][item_id])
                        end
                    end
                end
            end

            return true
        end

        function config_system:retrieve_local()
            local db_data = database.read(brand.database_prefix .. '_config')
        
            if db_data ~= nil and db_data[1] ~= nil then
                self.import_from_str(db_data[1])
            end
        end

        function config_system:save_local()
            local config_output = self.export_to_str()

            database.write(brand.database_prefix .. '_config', {
                config_output
            })

        end
    end

    local reference do
        reference = {} do
            reference.ragebot = {} do
                reference.ragebot.enabled = {ui.reference('RAGE', 'Aimbot', 'Enabled')}

                reference.ragebot.doubletap = {} do
                    reference.ragebot.doubletap.enable = {ui.reference('RAGE', 'Aimbot', 'Double tap')}
                    reference.ragebot.doubletap.fakelag = ui.reference('RAGE', 'Aimbot', 'Double tap fake lag limit')
                end

                reference.ragebot.force_bodyaim = ui.reference('RAGE', 'Aimbot', 'Force body aim')
                reference.ragebot.force_safepoint = ui.reference('RAGE', 'Aimbot', 'Force safe point')

                reference.ragebot.minimum_damage = ui.reference('RAGE', 'Aimbot', 'Minimum damage')
                reference.ragebot.minimum_hit_chance = ui.reference('RAGE', 'Aimbot', 'Minimum hit chance')
                reference.ragebot.minimum_damage_override = {ui.reference('RAGE', 'Aimbot', 'Minimum damage override')}

                reference.ragebot.quick_peek_assist = {ui.reference('RAGE', 'Other', 'Quick peek assist')}
                reference.ragebot.fakeduck = ui.reference('RAGE', 'Other', 'Duck peek assist')
            end

            reference.antiaim = {} do
                reference.antiaim.master = ui.reference('AA', 'Anti-aimbot angles', 'Enabled')

                reference.antiaim.roll = ui.reference('AA', 'Anti-aimbot angles', 'Roll')
                reference.antiaim.freestanding = {ui.reference('AA', 'Anti-aimbot angles', 'Freestanding')}

                reference.antiaim.pitch = tablex.unpack_keywise({'type', 'value'}, ui.reference('AA', 'Anti-aimbot angles', 'Pitch'))

                reference.antiaim.yaw = {} do
                    reference.antiaim.yaw.base = ui.reference('AA', 'Anti-aimbot angles', 'Yaw base')
                    reference.antiaim.yaw.yaw = tablex.unpack_keywise({'type', 'value'}, ui.reference('AA', 'Anti-aimbot angles', 'Yaw'))
                    reference.antiaim.yaw.jitter = tablex.unpack_keywise({'type', 'value'}, ui.reference('AA', 'Anti-aimbot angles', 'Yaw jitter'))
                    reference.antiaim.yaw.edge = ui.reference('AA', 'Anti-aimbot angles', 'Edge yaw')
                end

                reference.antiaim.body = {} do
                    reference.antiaim.body.yaw = tablex.unpack_keywise({'type', 'value'}, ui.reference('AA', 'Anti-aimbot angles', 'Body yaw'))
                    reference.antiaim.body.freestanding = ui.reference('AA', 'Anti-aimbot angles', 'Freestanding body yaw')
                end
            end

            reference.fakelag = {} do
                reference.fakelag.enable = {ui.reference('AA', 'Fake lag', 'Enabled')}
                reference.fakelag.amount = ui.reference('AA', 'Fake lag', 'Amount')
                reference.fakelag.variance = ui.reference('AA', 'Fake lag', 'Variance')
                reference.fakelag.limit = ui.reference('AA', 'Fake lag', 'Limit')
            end

            reference.misc = {} do
                reference.misc.draw_output = ui.reference('MISC', 'Miscellaneous', 'Draw console output')
                reference.misc.freestanding = ui.reference('AA', 'Anti-aimbot angles', 'Freestanding')

                reference.misc.pingspike = tablex.unpack_keywise({'bind', 'value'}, ui.reference('MISC', 'Miscellaneous', 'Ping spike'))
                reference.misc.slowmotion = {ui.reference('AA', 'Other', 'Slow motion')}
                reference.misc.onshot_antiaim = {ui.reference('AA', 'Other', 'On shot anti-aim')}
                reference.misc.leg_movement = ui.reference('AA', 'Other', 'Leg movement')
                reference.misc.fake_peek = {ui.reference('AA', 'Other', 'Fake peek')}

                reference.misc.grenade_toss = ui.reference('Misc', 'Miscellaneous', 'Super toss')
                reference.misc.grenade_release = {ui.reference('Misc', 'Miscellaneous', 'Automatic grenade release')}

                reference.misc.air_strafe = ui.reference('MISC', 'Movement', 'Air strafe')
            end
        end
    end

    local config = {} 

    config.navigation = {} do
        config.navigation.tabs = {
            global = 'Global',
            ragebot = 'Ragebot',
            antiaim = 'Anti-aim',
            visuals = 'Visuals',
            miscellaneous = 'Misc',
            configuration = 'Config',
            stats = 'Stats'
        }


        config.navigation.tab = menu.new_item(ui.new_combobox, "AA", "Fake lag", "Menu", {
            config.navigation.tabs.global,
            config.navigation.tabs.ragebot,
            config.navigation.tabs.antiaim,
            config.navigation.tabs.visuals,
            config.navigation.tabs.miscellaneous,
            config.navigation.tabs.configuration,
            config.navigation.tabs.stats
        }):config_ignore()
    end

    config.global = {} do
        config.global.header = menu.new_item(ui.new_label, "AA", "Anti-aimbot angles", '\aFFFFFFFFFLUX GS  /  GLOBAL')
            :config_ignore()

        config.global.discord = menu.new_item(ui.new_label, "AA", "Anti-aimbot angles", 'Discord - discord.gg/UYRDUmfGbN')
            :config_ignore()

        config.global.telegram = menu.new_item(ui.new_label, "AA", "Anti-aimbot angles", 'Telegram - t.me/luaflux')
            :config_ignore()

        config.global.copy_discord = menu.new_item(ui.new_button, "AA", "Anti-aimbot angles", 'Copy Discord link', function ()
            clipboard.set(brand.discord)
            logger.log('Discord link copied.')
        end):config_ignore()

        config.global.copy_telegram = menu.new_item(ui.new_button, "AA", "Anti-aimbot angles", 'Copy Telegram link', function ()
            clipboard.set(brand.telegram)
            logger.log('Telegram link copied.')
        end):config_ignore()

    end

    local ragebot_features do
        config.ragebot = {} do
            config.ragebot.force_body = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Force body condition")
                :record("ragebot", "force_body")
                :save()

            config.ragebot.force_body_weapons = menu.new_item(ui.new_multiselect, "AA", "Anti-aimbot angles", "Force body: Weapons", {
                "Auto Snipers",
                "Desert Eagle",
                "Revolver R8",
                "Pistols",
                "Scout",
                "AWP"
            }):record("ragebot", "force_body_weapons"):save()

            config.ragebot.force_lethal = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Force lethal")
                :record("ragebot", "force_lethal")
                :save()

            config.ragebot.force_lethal_weapons = menu.new_item(ui.new_multiselect, "AA", "Anti-aimbot angles", "Force lethal: Weapons", {
                "Auto Snipers",
                "Desert Eagle",
                "Revolver R8",
                "Pistols",
                "Scout",
                "AWP"
            }):record("ragebot", "force_lethal_weapons"):save()

            config.ragebot.hitchance = menu.new_item(ui.new_checkbox, "AA", "Other", "Hitchance override")
                :record("ragebot", "hitchance")
                :save()

            config.ragebot.hitchance_order = {
                "Auto Snipers",
                "Desert Eagle",
                "Revolver R8",
                "Pistols",
                "Scout",
                "AWP"
            }
            config.ragebot.hitchance_values = {}

            config.ragebot.hitchance_weapon = menu.new_item(ui.new_combobox, "AA", "Other", "Hitchance: Weapon", config.ragebot.hitchance_order)
                :record("ragebot", "hitchance_weapon")
                :save()

            for i = 1, #config.ragebot.hitchance_order do
                local weapon_name = config.ragebot.hitchance_order[i]
                local key = weapon_name:lower():gsub("[^%w]+", "_")

                config.ragebot.hitchance_values[weapon_name] = menu.new_item(
                    ui.new_slider, "AA", "Other", "Hitchance: " .. weapon_name,
                    0, 100, 50, true, "%", 1
                ):record("ragebot", "hitchance_" .. key):save()
            end

            config.ragebot.hitchance_hotkey = menu.new_item(ui.new_hotkey, "AA", "Other", "Hitchance: Bind", true)
                :record("ragebot", "hitchance_hotkey")
                :save()

            config.ragebot.hitchance_indicator = menu.new_item(ui.new_checkbox, "AA", "Other", "Hitchance indicator")
                :record("ragebot", "hitchance_indicator")
                :save()

            config.ragebot.predict = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Predict")
                :record("ragebot", "predict")
                :save()

            config.ragebot.predict_mode = menu.new_item(ui.new_combobox, "AA", "Anti-aimbot angles", "Predict: Mode", {
                "<20 ping",
                ">60 ping"
            }):record("ragebot", "predict_mode"):save()

            config.ragebot.custom_resolver = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Custom resolver")
                :record("ragebot", "custom_resolver")
                :save()

            config.ragebot.resolver_mode = menu.new_item(ui.new_combobox, "AA", "Anti-aimbot angles", "Resolver: Mode", {
                "Balanced",
                "Aggressive",
                "Adaptive"
            }):record("ragebot", "resolver_mode"):save()

            config.ragebot.force_teammate = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Force teammate aimbot")
                :record("ragebot", "force_teammate")
                :save()
        end

        ragebot_features = {} do
            local weapon_ids = {
                ["Auto Snipers"] = { 11, 38 },
                ["Desert Eagle"] = { 1 },
                ["Revolver R8"] = { 64 },
                ["Pistols"] = { 2, 3, 4, 30, 32, 36, 61, 63 },
                ["Scout"] = { 40 },
                ["AWP"] = { 9 }
            }

            local function get_weapon_group(weapon_info)
                if weapon_info == nil then
                    return nil
                end

                for name, ids in pairs(weapon_ids) do
                    for i = 1, #ids do
                        if ids[i] == weapon_info.idx then
                            return name
                        end
                    end
                end

                return nil
            end

            local function selected_weapon(list, weapon_info)
                if type(list) ~= "table" or weapon_info == nil then
                    return false
                end

                for i = 1, #list do
                    local ids = weapon_ids[list[i]]

                    if ids then
                        for j = 1, #ids do
                            if ids[j] == weapon_info.idx then
                                return true
                            end
                        end
                    end
                end

                return false
            end

            local function get_prediction_ticks(mode, ping_ms)
                if mode == "<20 ping" then
                    if ping_ms >= 20 then
                        return 0
                    end

                    return math.max(1, math.floor(ping_ms / 8 + 0.5))
                end

                if mode == ">60 ping" then
                    if ping_ms <= 60 then
                        return 0
                    end

                    return math.max(4, math.floor(ping_ms / 8 + 0.5))
                end

                return 0
            end

            function ragebot_features.predict_position(ent, mode)
                if not ent or not entity.is_alive(ent) then
                    return nil, 0
                end

                local ox, oy, oz = entity.get_origin(ent)
                local vx, vy, vz = entity.get_prop(ent, "m_vecVelocity")

                if ox == nil or oy == nil or oz == nil or vx == nil or vy == nil or vz == nil then
                    return nil, 0
                end

                local ping_ms = client.latency() * 1000
                local ticks = get_prediction_ticks(mode, ping_ms)
                local position = vector(ox, oy, oz)

                if ticks > 0 then
                    position = position + vector(vx, vy, vz) * (ticks * globals.tickinterval())
                end

                return position, ticks
            end

            local function reset_overrides()
                override.unset(reference.ragebot.force_bodyaim)
                override.unset(reference.ragebot.minimum_damage)
                if reference.ragebot.minimum_hit_chance then
                    override.unset(reference.ragebot.minimum_hit_chance)
                end
                override.unset(reference.ragebot.force_safepoint)
            end

            function ragebot_features.get_hitchance_value(weapon_info)
                local group = get_weapon_group(weapon_info)
                local item = group and config.ragebot.hitchance_values[group] or nil

                return item and item:get() or 50
            end

            function ragebot_features.is_hitchance_active()
                if not config.ragebot.hitchance:get() or not config.ragebot.hitchance_indicator:get() then
                    return false
                end

                if not config.ragebot.hitchance_hotkey:rawget() then
                    return false
                end

                local me = entity.get_local_player()
                local wpn = me and entity.get_player_weapon(me) or nil
                local info = wpn and csgo_weapons(wpn) or nil

                return get_weapon_group(info) == config.ragebot.hitchance_weapon:get()
            end

            function ragebot_features.hitchance_text()
                local me = entity.get_local_player()
                local wpn = me and entity.get_player_weapon(me) or nil
                local info = wpn and csgo_weapons(wpn) or nil
                return 'HC'
            end

            function ragebot_features:force_teammate(cmd, me)
                if not config.ragebot.force_teammate:get() or not me or not entity.is_alive(me) then
                    return
                end

                local eye_x, eye_y, eye_z = client.eye_position()
                local camera_x, camera_y = client.camera_angles()
                local players = entity.get_players(false)
                local best, best_score

                if not eye_x or not camera_x then
                    return
                end

                for i = 1, #players do
                    local teammate = players[i]

                    if teammate ~= me and entity.is_alive(teammate) and not entity.is_enemy(teammate) then
                        local x, y, z = entity.hitbox_position(teammate, 0)

                        if x and client.visible(x, y, z) then
                            local pitch, yaw = (vector(x, y, z) - vector(eye_x, eye_y, eye_z)):angles()
                            local yaw_delta = mathx.abs(mathx.normalize_yaw(yaw - camera_y))
                            local score = yaw_delta + mathx.abs(pitch - camera_x)

                            if best_score == nil or score < best_score then
                                best = { pitch = pitch, yaw = yaw }
                                best_score = score
                            end
                        end
                    end
                end

                if best then
                    cmd.pitch = best.pitch
                    cmd.yaw = best.yaw
                end
            end

            function ragebot_features:setup_command(me, wpn)
                if not me or not entity.is_alive(me) or not wpn then
                    reset_overrides()
                    return
                end

                local weapon_info = csgo_weapons(wpn)

                if not weapon_info then
                    reset_overrides()
                    return
                end

                local prediction_position
                local mode = config.ragebot.predict_mode:get()
                local threat = client.current_threat()
                local current_group = get_weapon_group(weapon_info)

                if config.ragebot.predict:get() and threat then
                    prediction_position = self.predict_position(threat, mode)
                end

                local target = threat and entity.is_alive(threat) and threat or nil
                local target_health = target and entity.get_prop(target, "m_iHealth") or nil
                local eye_x, eye_y, eye_z = client.eye_position()
                local predicted_damage = 0

                if target and target_health and eye_x ~= nil and eye_y ~= nil and eye_z ~= nil then
                    local point = prediction_position or vector(entity.hitbox_position(target, 2))

                    if point then
                        local hit_ent, damage = client.trace_bullet(me, eye_x, eye_y, eye_z, point.x, point.y, point.z)

                        if hit_ent == target and damage then
                            predicted_damage = damage
                        end
                    end
                end

                local should_force_body = config.ragebot.force_body:get()
                    and selected_weapon(config.ragebot.force_body_weapons:get(), weapon_info)
                    and target_health and predicted_damage >= target_health
                local should_force_safe = false

                if config.ragebot.custom_resolver:get() and target_health then
                    local resolver_mode = config.ragebot.resolver_mode:get()

                    if resolver_mode == "Aggressive" then
                        should_force_body = predicted_damage > 0
                        should_force_safe = predicted_damage > 0
                    elseif resolver_mode == "Adaptive" then
                        should_force_body = predicted_damage >= target_health
                        should_force_safe = predicted_damage > 0 and not should_force_body
                    else
                        should_force_body = predicted_damage >= target_health
                    end
                end

                if should_force_body then
                    override.set(reference.ragebot.force_bodyaim, true)
                else
                    override.unset(reference.ragebot.force_bodyaim)
                end

                if should_force_safe then
                    override.set(reference.ragebot.force_safepoint, true)
                else
                    override.unset(reference.ragebot.force_safepoint)
                end

                if config.ragebot.force_lethal:get()
                    and selected_weapon(config.ragebot.force_lethal_weapons:get(), weapon_info)
                    and target_health then
                    override.set(reference.ragebot.minimum_damage, math.max(1, target_health))
                else
                    override.unset(reference.ragebot.minimum_damage)
                end

                if config.ragebot.hitchance:get()
                    and config.ragebot.hitchance_hotkey:rawget()
                    and current_group == config.ragebot.hitchance_weapon:get() then
                    if reference.ragebot.minimum_hit_chance then
                        override.set(reference.ragebot.minimum_hit_chance, self.get_hitchance_value(weapon_info))
                    end
                elseif reference.ragebot.minimum_hit_chance then
                    override.unset(reference.ragebot.minimum_hit_chance)
                end
            end
        end
    end

    local session_stats do
        config.stats = {} do
            config.stats.header = menu.new_item(ui.new_label, "AA", "Anti-aimbot angles", "\aFFFFFFFFPLAYER STATS")
                :config_ignore()
            config.stats.hours = menu.new_item(ui.new_label, "AA", "Anti-aimbot angles", "Hours: 0.00")
                :config_ignore()
            config.stats.kills = menu.new_item(ui.new_label, "AA", "Anti-aimbot angles", "Kills: 0")
                :config_ignore()
            config.stats.deaths = menu.new_item(ui.new_label, "AA", "Anti-aimbot angles", "Deaths: 0")
                :config_ignore()
            config.stats.assists = menu.new_item(ui.new_label, "AA", "Anti-aimbot angles", "Assists: 0")
                :config_ignore()
            config.stats.kd = menu.new_item(ui.new_label, "AA", "Anti-aimbot angles", "K/D: 0.00")
                :config_ignore()
        end

        session_stats = {}
        session_stats.database_key = brand.database_prefix .. '_stats'
        session_stats.last_update = globals.realtime()
        session_stats.last_save = globals.realtime()
        session_stats.baseline = nil
        session_stats.values = database.read(session_stats.database_key) or {}
        session_stats.values.hours = tonumber(session_stats.values.hours) or 0
        session_stats.values.kills = tonumber(session_stats.values.kills) or 0
        session_stats.values.deaths = tonumber(session_stats.values.deaths) or 0
        session_stats.values.assists = tonumber(session_stats.values.assists) or 0

        function session_stats:save()
            database.write(self.database_key, {
                hours = self.values.hours,
                kills = self.values.kills,
                deaths = self.values.deaths,
                assists = self.values.assists
            })
            self.last_save = globals.realtime()
        end

        function session_stats:update()
            local now = globals.realtime()
            local me = entity.get_local_player()
            local resource = entity.get_player_resource()

            if me and resource then
                local current = {
                    kills = tonumber(entity.get_prop(resource, "m_iKills", me)) or 0,
                    deaths = tonumber(entity.get_prop(resource, "m_iDeaths", me)) or 0,
                    assists = tonumber(entity.get_prop(resource, "m_iAssists", me)) or 0
                }

                if self.baseline == nil then
                    self.baseline = current
                else
                    for _, key in ipairs({'kills', 'deaths', 'assists'}) do
                        if current[key] >= self.baseline[key] then
                            self.values[key] = self.values[key] + current[key] - self.baseline[key]
                        end
                        self.baseline[key] = current[key]
                    end

                    self.values.hours = self.values.hours + math.max(0, now - self.last_update) / 3600
                end

                if now - self.last_save >= 1 then
                    self:save()
                end
            end

            self.last_update = now

            local kills = self.values.kills
            local deaths = self.values.deaths
            local assists = self.values.assists
            local kd = deaths > 0 and kills / deaths or kills

            config.stats.hours:set(string.format("Hours: %.2f", self.values.hours))
            config.stats.kills:set(string.format("Kills: %d", kills))
            config.stats.deaths:set(string.format("Deaths: %d", deaths))
            config.stats.assists:set(string.format("Assists: %d", assists))
            config.stats.kd:set(string.format("K/D: %.2f", kd))
        end
    end

    local ffi_helpers do
        ffi_helpers = {} do
            ffi_helpers.get_client_entity = vtable_bind('client.dll', 'VClientEntityList003', 3, 'void*(__thiscall*)(void***, int)')

            ffi_helpers.animstate = {} do
                if not pcall(ffi.typeof, 'fg_animstate_t') then
                    ffi.cdef[[
                        typedef struct {
                            char __0x108[0x108];
                            bool on_ground;
                            bool hit_in_ground_animation;
                        } fg_animstate_t, *pfg_animstate_t
                    ]]
                end

                ffi_helpers.animstate.offset = 0x9960

                ffi_helpers.animstate.get = function (self, ent)
                    local client_entity = ffi_helpers.get_client_entity(ent)

                    if not client_entity then
                        return
                    end

                    return ffi.cast('pfg_animstate_t*', ffi.cast('uintptr_t', client_entity) + self.offset)[0]
                end
            end

            ffi_helpers.animlayers = {} do
                if not pcall(ffi.typeof, 'fg_animlayer_t') then
                    ffi.cdef[[
                        typedef struct {
                            float   anim_time;
                            float   fade_out_time;
                            int     nil;
                            int     activty;
                            int     priority;
                            int     order;
                            int     sequence;
                            float   prev_cycle;
                            float   weight;
                            float   weight_delta_rate;
                            float   playback_rate;
                            float   cycle;
                            int     owner;
                            int     bits;
                        } fg_animlayer_t, *pfg_animlayer_t
                    ]]
                end

                ffi_helpers.animlayers.offset = ffi.cast('int*', ffi.cast('uintptr_t', client.find_signature('client.dll', '\x8B\x89\xCC\xCC\xCC\xCC\x8D\x0C\xD1')) + 2)[0]

                ffi_helpers.animlayers.get = function (self, ent)
                    local client_entity = ffi_helpers.get_client_entity(ent)

                    if not client_entity then
                        return
                    end

                    return ffi.cast('pfg_animlayer_t*', ffi.cast('uintptr_t', client_entity) + self.offset)[0]
                end
            end

            ffi_helpers.activity = {} do
                if not pcall(ffi.typeof, 'fg_get_sequence') then
                    ffi.cdef[[
                        typedef int(__fastcall* fg_get_sequence)(void* entity, void* studio_hdr, int sequence);
                    ]]
                end

                ffi_helpers.activity.offset = 0x2950 --- @offset https://github.com/frk1/hazedumper/blob/master/csgo.json#L55
                ffi_helpers.activity.location = ffi.cast('fg_get_sequence', client.find_signature('client.dll', '\x55\x8B\xEC\x53\x8B\x5D\x08\x56\x8B\xF1\x83'))

                ffi_helpers.activity.get = function (self, sequence, ent)
                    local client_entity = ffi_helpers.get_client_entity(ent)

                    if not client_entity then
                        return
                    end

                    local studio_hdr = ffi.cast('void**', ffi.cast('uintptr_t', client_entity) + self.offset)[0]

                    if not studio_hdr then
                        return;
                    end

                    return self.location(client_entity, studio_hdr, sequence);
                end
            end

            ffi_helpers.user_input = {} do
                if not pcall(ffi.typeof, 'fg_cusercmd_t') then
                    ffi.cdef[[
                        typedef struct {
                            struct fg_cusercmd_t (*cusercmd)();
                            int     command_number;
                            int     tick_count;
                            float   view[3];
                            float   aim[3];
                            float   move[3];
                            int     buttons;
                        } fg_cusercmd_t;
                    ]]
                end

                if not pcall(ffi.typeof, 'fg_get_usercmd') then
                    ffi.cdef[[
                        typedef fg_cusercmd_t*(__thiscall* fg_get_usercmd)(void* input, int, int command_number);
                    ]]
                end

                ffi_helpers.user_input.vtbl = ffi.cast('void***', ffi.cast('void**', ffi.cast('uintptr_t', client.find_signature('client.dll', '\xB9\xCC\xCC\xCC\xCC\x8B\x40\x38\xFF\xD0\x84\xC0\x0F\x85') or error('fipp')) + 1)[0])
                ffi_helpers.user_input.location = ffi.cast('fg_get_usercmd', ffi_helpers.user_input.vtbl[0][8])

                ffi_helpers.user_input.get_command = function (self, command_number)
                    return self.location(self.vtbl, 0, command_number)
                end
            end
        end
    end

    local player do
        local create_player, BaseLocal do
            BaseLocal = {} do
                function BaseLocal:reset(full)
                    if full then
                        self.entindex = -1
                        self.alive = false
                    end

                    self.onground = true
                    self.velocity = vector()
                    self.speed = 0.0
                    self.duckamount = 0.0
                    self.stamina = 80.0
                    self.velocity_modifier = 1.0
                    self.fakeyaw = 0.0
                    self.server_fakeyaw = 0.0
                    self.smooth_fakeamount = 0.0
                    self.fakeamount_gram = {}
                    self.state = 'Standing'
                    self.use_needed = false
                    self.landing = false
                    self.peeking = false
                    self.freestanding_side = 'none'
                    self._shifting_enough = false
                end

                function BaseLocal:is_onground()
                    local animstate = ffi_helpers.animstate:get(self.entindex)

                    if not animstate then
                        return true
                    end

                    local ptr_addr = ffi.cast('uintptr_t', ffi.cast('void*', animstate))
                    local landed_on_ground_this_frame = ffi.cast('bool*', ptr_addr + 0x120)[0] --- @offset

                    return animstate.on_ground and not landed_on_ground_this_frame
                end

                function BaseLocal:get_velocity_modifier()
                    local velocity_modifier = entity.get_prop(self.entindex, 'm_flVelocityModifier')

                    if self.stamina > 0.01 and self.onground then
                        local flSpeedScale = mathx.clamp(1.0 - self.stamina * 0.01, 0.0, 1.0)

                        flSpeedScale = flSpeedScale * flSpeedScale

                        velocity_modifier = velocity_modifier * flSpeedScale
                    end

                    return velocity_modifier
                end

                function BaseLocal:get_state()
                    if not self.onground then
                        if self.duckamount > 0.5 then
                            return 'Air & Crouch'
                        else
                            return 'Air'
                        end
                    end

                    if self.duckamount > 0.5 or ui.get(reference.ragebot.fakeduck) then
                        if self.speed > 4 then
                            return 'Crouch moving'
                        else
                            return 'Crouching'
                        end
                    end

                    local slowmotion_state = tablex.is_hotkey_active(reference.misc.slowmotion)

                    if slowmotion_state then
                        return 'Slow-motion'
                    end

                    if self.speed > 4 then
                        return 'Moving'
                    end

                    return 'Standing'
                end

                BaseLocal.is_use_needed = (function (self, wpn)
                    if wpn then
                        local wpn_classname = entity.get_classname(wpn)

                        if wpn_classname == 'CC4' then
                            return true
                        end
                    end

                    local my_origin = vector(entity.get_origin(self.entindex))
                    local team_num = entity.get_prop(self.entindex, 'm_iTeamNum')
                    local planted_ents = entity.get_all('CPlantedC4')

                    for i=1, #planted_ents do
                        local c4 = planted_ents[i]
                        local m_hDefuser = entity.get_prop(c4, 'm_hDefuser')
                        local c4_origin = vector(entity.get_origin(c4))

                        if m_hDefuser == self.entindex or team_num == 3 and c4_origin:dist(my_origin) < 87.5 then
                            return true
                        end
                    end

                    local hostage_ents = entity.get_all('CHostage')

                    for i=1, #hostage_ents do
                        local hostage = hostage_ents[i]
                        local hostage_origin = vector(entity.get_origin(hostage))

                        if hostage_origin:dist(my_origin) < 50 and team_num == 3 then
                            return true
                        end
                    end

                    local head_origin = vector(client.eye_position())
                    local angles = vector():init_from_angles(client.camera_angles())
                    local end_point = head_origin + angles * 128

                    local fraction, ent = client.trace_line(self.entindex, head_origin.x, head_origin.y, head_origin.z, end_point.x, end_point.y, end_point.z)

                    if ent ~= -1 and fraction ~= 1.0 then
                        local cname = entity.get_classname(ent)

                        if cname ~= nil and cname ~= 'CWorld' and cname ~= 'CCSPlayer' and cname ~= 'CFuncBrush' then
                            return true
                        end
                    end

                    return false
                end)

                function BaseLocal:threat_yaw()
                    local aa_threat = client.current_threat()

                    if not aa_threat then
                        return
                    end

                    local my_origin = vector(entity.get_origin(self.entindex))
                    local _, threat_yaw = my_origin:to(vector(entity.get_origin(aa_threat))):angles()

                    return threat_yaw
                end

                BaseLocal.get_side = (function (self, target)
                    local local_pos, enemy_pos = vector(entity.hitbox_position(self.entindex, 0)), vector(entity.hitbox_position(target, 0))

                    local _, yaw = (local_pos-enemy_pos):angles()
                    local l_dir, r_dir = vector():init_from_angles(0, yaw+90), vector():init_from_angles(0, yaw-90)
                    local l_pos, r_pos = local_pos + l_dir * 110, local_pos + r_dir * 110

                    local fraction = client.trace_line(target, enemy_pos.x, enemy_pos.y, enemy_pos.z, l_pos.x, l_pos.y, l_pos.z)
                    local fraction_s = client.trace_line(target, enemy_pos.x, enemy_pos.y, enemy_pos.z, r_pos.x, r_pos.y, r_pos.z)

                    if fraction > fraction_s then
                        return 'left'
                    elseif fraction_s > fraction then
                        return 'right'
                    elseif fraction == fraction_s then
                        return 'none'
                    end

                    return 'none'
                end)

                function BaseLocal:get_weapon_type(wpn)
                    if not wpn then
                        return false
                    end

                    local wpn_info = csgo_weapons(wpn)

                    if not wpn_info then
                        return false
                    end

                    return wpn_info.type
                end

                BaseLocal.set_peeking_state = (function (self, me)
                    local target, cross_target, last_dmg, best_yaw = nil, nil, 0, 362
                    local is_peeking = false

                    local enemy_list = entity.get_players(true)
                    local camera_angles = vector(client.camera_angles())
                    local stomach_origin = vector(entity.hitbox_position(me, 2))
                    local stomach_future = mathx.extrapolate(me, stomach_origin, 16)

                    for idx=1, #enemy_list do
                        local ent = enemy_list[idx]
                        local ent_wpn = entity.get_player_weapon(ent)

                        if ent_wpn then
                            local enemy_head = vector(entity.hitbox_position(ent, 2))
                            local entindex, damage = client.trace_bullet(ent, enemy_head.x, enemy_head.y, enemy_head.z, stomach_future.x, stomach_future.y, stomach_future.z)

                            if -1 == entindex then
                                damage = 0
                            end

                            if damage > 0 then
                                is_peeking = true
                            end

                            if damage > last_dmg then
                                target = ent
                                last_dmg = damage
                            end

                            local _, yaw = (stomach_origin-enemy_head):angles()
                            local base_diff = mathx.abs(camera_angles.y-yaw)

                            if base_diff < best_yaw then
                                cross_target = ent
                                best_yaw = base_diff
                            end
                        end
                    end

                    if not target then
                        target = cross_target
                    end

                    self.peeking = is_peeking
                    self.fs_side = target and self:get_side(target) or 'none'
                end)

                local get_curtime = function (n_offset)
                    return globals.curtime() - (n_offset * globals.tickinterval())
                end

                local weapon_ready = function (ent, weapon)
                    if not ent or not weapon then
                        return false
                    end

                    if get_curtime(16) < entity.get_prop(ent, 'm_flNextAttack') then
                        return false
                    end

                    if get_curtime(0) < entity.get_prop(weapon, 'm_flNextPrimaryAttack') then
                        return false
                    end

                    return true
                end

                function BaseLocal:get_double_tap()
                    return self._shifting_enough
                end

                function BaseLocal:run_command(cmd)
                    local me = entity.get_local_player()

                    if me then
                        local m_nTickBase = entity.get_prop(me, 'm_nTickBase')
                        local client_latency = client.latency()
                        local shift = math.floor(m_nTickBase - globals.tickcount() - 3 - toticks(client_latency) * .5 + .5 * (client_latency * 10))

                        local wanted = -14 + (ui.get(reference.ragebot.doubletap.fakelag) - 1) + 3 --error margin

                        self._shifting_enough = shift <= wanted
                    end
                end

                function BaseLocal:predict_command(cmd, me, wpn)
                    if not self.valid then
                        return self:reset(true)
                    end

                    self.entindex = me
                    self.alive = entity.is_alive(self.entindex)

                    if self.alive then
                        local animstate = ffi_helpers.animstate:get(me) or {}

                        self.onground = self:is_onground()
                        self.velocity = vector(entity.get_prop(me, 'm_vecVelocity'))
                        self.speed = self.velocity:length()
                        self.duckamount = entity.get_prop(me, 'm_flDuckAmount')
                        self.stamina = entity.get_prop(me, 'm_flStamina')
                        self.velocity_modifier = self:get_velocity_modifier()
                        self.state = self:get_state()
                        self.landing = animstate.hit_in_ground_animation
                        self:set_peeking_state(me)
                    else
                        self:reset()
                    end
                end

                function BaseLocal:setup_command(cmd, me, wpn)
                    if not self.valid then
                        return self:reset(true)
                    end

                    self.entindex = me
                    self.alive = entity.is_alive(self.entindex)

                    if cmd.chokedcommands == 0 then
                        self.packets = self.packets + 1

                        grams.update_gram(self.fakeamount_gram, mathx.abs(self.fakeyaw), 8)

                        self.smooth_fakeamount = grams.average(self.fakeamount_gram)
                        self.server_fakeyaw = entity.get_prop(me, 'm_flPoseParameter', 11) * 120 - 60
                        self.weapon_type = self:get_weapon_type(wpn)
                        self.use_needed = self:is_use_needed(wpn)
                    end
                end

                function BaseLocal:finish_command(cmd, me, wpn)
                    local command = ffi_helpers.user_input:get_command(cmd.command_number)

                    if command then
                        if cmd.chokedcommands == 0 and self._last_yaw then
                            local cheat_dsy = mathx.normalize_yaw(self._last_yaw - command.view[1])

                            self.fakeyaw = -(cheat_dsy > 0 and cheat_dsy - 60 or cheat_dsy + 60)
                        elseif cmd.chokedcommands ~= 0 then
                            self._last_yaw = command.view[1]
                        end
                    end
                end

                function BaseLocal:net_update_end()
                    if not self.valid then
                        return self:reset(true)
                    end

                    if self.alive then
                    end
                end

                function BaseLocal:paint_ui()
                    local me = entity.get_local_player()

                    self.valid = me ~= nil

                    if me then
                        self.entindex = me
                        self.alive = entity.is_alive(me)
                    end
                end
            end

            create_player = function ()
                return setmetatable({
                    valid = false,
                    entindex = -1,
                    packets = 0,
                    onground = true,
                    velocity = vector(),
                    speed = 0.0,
                    duckamount = 0.0,
                    stamina = 80.0,
                    velocity_modifier = 1.0,
                    fakeyaw = 0.0,
                    server_fakeyaw = 0.0,
                    smooth_fakeamount = 0.0,
                    fakeamount_gram = {},
                    state = 'Standing',
                    use_needed = false,
                    weapon_type = nil,
                    landing = false,
                    peeking = false,
                    freestanding_side = 'none',
                    _shifting_enough = false
                }, {
                    __index = BaseLocal
                })
            end
        end

        player = create_player()
    end

    local fakelag do
        config.fakelag = {} do
            config.fakelag.enable = menu.new_item(ui.new_checkbox, "AA", "Other", "Custom fakelag")
                :record("fakelag", "enable")
                :save()

            config.fakelag.type = menu.new_item(ui.new_combobox, "AA", "Other", "Custom fakelag: Type", {
                "Cycle",
                "Randomize"
            }):record("fakelag", "type"):save()

            config.fakelag.ticks = menu.new_item(ui.new_slider, "AA", "Other", "Custom fakelag: Ticks", 1, 15, 15, true, "t", 1)
                :record("fakelag", "ticks")
                :save()
        end

        fakelag = {} do
            fakelag.choking = false
            fakelag.last_choke = 0
            fakelag.choke_count = 0
            fakelag.tick = 0
            fakelag.reset = false

            fakelag.setup_command = function (self, cmd, me, wpn)
                if config.fakelag.enable:get() then
                    local max_limit = 15
                    local fakeduck_active = ui.get(reference.ragebot.fakeduck)
                    local onshot_active = tablex.is_hotkey_active(reference.misc.onshot_antiaim)
                    local doubletap_active = tablex.is_hotkey_active(reference.ragebot.doubletap.enable)

                    local type = config.fakelag.type:get()
                    local limit = config.fakelag.ticks:get()

                    if type == 'Cycle' then
                        limit = mathx.clamp(limit - self.tick % 5, 1, 15)
                    elseif type == 'Randomize' then
                        limit = mathx.clamp(limit - mathx.random(0, 5), 1, 15)
                    end

                    if player.peeking then
                        limit = 15
                    end

                    if fakeduck_active then
                        max_limit = 15
                    end

                    override.set(reference.fakelag.enable[1], max_limit ~= 1)
                    override.set(reference.fakelag.amount, player.weapon_type == 'grenade' and 'Dynamic' or 'Maximum')
                    override.set(reference.fakelag.limit, max_limit)
                    override.set(reference.fakelag.variance, 100)

                    local exploits_active = doubletap_active or onshot_active

                    if not exploits_active and player.weapon_type ~= 'grenade' and not fakeduck_active then
                        if cmd.chokedcommands < limit then
                            cmd.allow_send_packet = false
                        else
                            self.tick = self.tick + 1

                            cmd.no_choke = true
                        end
                    end

                    self.reset = false
                elseif not self.reset then
                    override.unset(reference.fakelag.enable[1]) 
                    override.unset(reference.fakelag.amount)
                    override.unset(reference.fakelag.limit)
                    override.unset(reference.fakelag.variance)

                    self.reset = true
                end

                if cmd.chokedcommands == 0 then
                    self.last_choke = self.choke_count
                    self.choke_count = 0;
                else
                    self.choke_count = self.choke_count + 1;
                end

                self.choking = self.last_choke >= 2;
            end
        end
    end

    local antiaimbot do
        antiaimbot = {}

        config.antiaimbot = {} do
            config.antiaimbot.options = menu.new_item(ui.new_multiselect, "AA", "Fake lag", "\n", {
                "On use antiaim",
                "Fast ladder",
            }):record("antiaimbot", "options"):save()
            
            config.antiaimbot.profile_mode = {
                get = function ()
                    return "Constructor"
                end
            }

            config.antiaimbot.safe_head = menu.new_item(ui.new_checkbox, "AA", "Other", "Safe head")
                :record("antiaimbot", "safe_head")
                :save()

            config.antiaimbot.safe_head_conditions = menu.new_item(ui.new_multiselect, "AA", "Other", "Safe head: Conditions", {
                "Air knife",
                "Air zeus",
                "Air & Crouch",
                "Crouch moving",
                "Crouching",
                "Slow-motion",
                "Standing"
            }):record("antiaimbot", "safe_head_conditions"):save()

            config.antiaimbot.warmup_aa = menu.new_item(ui.new_checkbox, "AA", "Other", "Warmup AA")
                :record("antiaimbot", "warmup_aa")
                :save()

            config.antiaimbot.warmup_aa_conditions = menu.new_item(ui.new_multiselect, "AA", "Other", "Warmup AA: Conditions", {
                "Warmup",
                "Round end"
            }):record("antiaimbot", "warmup_aa_conditions"):save()

            config.antiaimbot.animation_breaker = menu.new_item(ui.new_checkbox, "AA", "Other", "Animation breaker")
                :record("antiaimbot", "animation_breaker")
                :save()

            config.antiaimbot.anti_knife = menu.new_item(ui.new_checkbox, "AA", "Other", "Anti-knife")
                :record("antiaimbot", "anti_knife")
                :save()

            config.antiaimbot.anti_knife_distance = menu.new_item(ui.new_slider, "AA", "Other", "Anti-knife: Distance", 0, 300, 300, true, "u", 1, {[0] = "Off"})
                :record("antiaimbot", "anti_knife_distance")
                :save()

            config.antiaimbot.animation_breaker_leg = menu.new_item(ui.new_combobox, "AA", "Other", "Animation breaker: Leg movement", {
                "Off",
                "Frozen",
                "Walking",
                "Sliding",
                "Jitter"
            }):record("antiaimbot", "animation_breaker_leg"):save()

            
            config.antiaimbot.animation_breaker_air = menu.new_item(ui.new_combobox, "AA", "Other", "Animation breaker: In air", {
                "Off",
                "Frozen",
                "Walking"
            }):record("antiaimbot", "animation_breaker_air"):save()

            config.antiaimbot.animation_breaker_other = menu.new_item(ui.new_multiselect, "AA", "Other", "Animation breaker: Other", {
                "Slide on slow-motion",
                "Slide on crouching",
                "Quick peek legs",
                "Pitch zero on land"
            }):record("antiaimbot", "animation_breaker_other"):save()

            config.antiaimbot.ideal_tick = menu.new_item(ui.new_checkbox, "AA", "Other", "Ideal tick")
                :record("antiaimbot", "ideal_tick")
                :save()

            config.antiaimbot.ideal_tick_hotkey = menu.new_item(ui.new_hotkey, "AA", "Other", "\nideal_tick_hotkey", true)
                :record("antiaimbot", "ideal_tick_hotkey")
                :save()
                
            config.antiaimbot.binds = menu.new_item(ui.new_checkbox, "AA", "Other", "Binds")
                :record("antiaimbot", "binds")
                :save()

            config.binds = {
                menu.new_item(ui.new_hotkey, "AA", "Other", "Bind: Left")
                    :record("binds", "left")
                    :save(),
                menu.new_item(ui.new_hotkey, "AA", "Other", "Bind: Right")
                    :record("binds", "right")
                    :save(),
                menu.new_item(ui.new_hotkey, "AA", "Other", "Bind: Backward")
                    :record("binds", "backward")
                    :save(),
                menu.new_item(ui.new_hotkey, "AA", "Other", "Bind: Forward")
                    :record("binds", "forward")
                    :save(),
                menu.new_item(ui.new_hotkey, "AA", "Other", "Bind: Reset")
                    :record("binds", "reset")
                    :save()
            }

            config.antiaimbot.edge_yaw = menu.new_item(ui.new_hotkey, "AA", "Other", "Bind: Edge yaw")
                :record("binds", "edge")
                :save()

            config.antiaimbot.freestanding = menu.new_item(ui.new_hotkey, "AA", "Other", "Bind: Freestanding")
                :record("binds", "freestanding")
                :save()

            config.antiaimbot.manual_options = menu.new_item(ui.new_multiselect, "AA", "Other", "Binds: Options", {
                "Jitter disabled",
            }):record("antiaimbot", "manual_options"):save()

            config.antiaimbot.fs_options = menu.new_item(ui.new_multiselect, "AA", "Other", "Freestanding: Options", {
                "Jitter disabled",
            }):record("antiaimbot", "fs_options"):save()

            config.antiaimbot.freestanding_disabler_states = menu.new_item(ui.new_multiselect, "AA", "Other", "Freestanding: Ignore", constants.STATE_LIST)
                :record("antiaimbot", "freestanding_disabler_states")
                :save()
        end

        do
            local create_antiaim, AntiAim do
                AntiAim = {} do
                    function AntiAim:reset()
                        override.unset(reference.antiaim.pitch.type)
                        override.unset(reference.antiaim.pitch.value)

                        override.unset(reference.antiaim.yaw.base)
                        override.unset(reference.antiaim.yaw.edge)

                        override.unset(reference.antiaim.freestanding[1])
                        override.unset(reference.antiaim.freestanding[2])

                        override.unset(reference.antiaim.yaw.yaw.type)
                        override.unset(reference.antiaim.yaw.yaw.value)

                        override.unset(reference.antiaim.yaw.jitter.type)
                        override.unset(reference.antiaim.yaw.jitter.value)

                        override.unset(reference.antiaim.body.yaw.type)
                        override.unset(reference.antiaim.body.yaw.value)

                        override.unset(reference.antiaim.body.freestanding)
                    end

                    function AntiAim:tick()
                        self.pitch = nil
                        self.pitch_custom = nil
                        self.yaw_base = nil
                        self.edge_yaw = nil
                        self.freestand = nil
                        self.yaw_type = nil
                        self.yaw_offset = nil
                        self.yaw_modifier = nil
                        self.modifier_offset = nil
                        self.left_limit = nil
                        self.right_limit = nil
                        self.body_yaw_type = nil
                        self.body_yaw_value = nil
                        self.inverter = nil
                        self.body_yaw_freestanding = nil
                    end

                    function AntiAim:run()
                        local pitch = self.pitch or 'Minimal';
                        local pitch_value = self.pitch_custom or 89

                        override.set(reference.antiaim.pitch.type, pitch)
                        override.set(reference.antiaim.pitch.value, pitch_value)

                        local yaw_base = self.yaw_base or 'At targets'

                        override.set(reference.antiaim.yaw.base, yaw_base)

                        local edge_yaw = self.edge_yaw or false

                        override.set(reference.antiaim.yaw.edge, edge_yaw)

                        local freestanding = self.freestand or false

                        override.set(reference.antiaim.freestanding[1], freestanding)

                        if freestanding then
                            override.set(reference.antiaim.freestanding[2], 'Always on', 0x0)
                        else
                            override.set(reference.antiaim.freestanding[2], 'On hotkey', 0x0)
                        end

                        local yaw_type = self.yaw_type or '180'
                        local yaw_offset = self.yaw_offset or 0

                        override.set(reference.antiaim.yaw.yaw.type, yaw_type)
                        override.set(reference.antiaim.yaw.yaw.value, yaw_offset)

                        local yaw_modifier = self.yaw_modifier or 'Off'
                        local modifier_offset = self.modifier_offset or 0

                        override.set(reference.antiaim.yaw.jitter.type, yaw_modifier)
                        override.set(reference.antiaim.yaw.jitter.value, modifier_offset)

                        local left_limit, right_limit = self.left_limit or 58, self.right_limit or 58

                        local body_yaw_type = self.body_yaw_type or 'Static'
                        local body_yaw_value = self.inverter and -left_limit or right_limit

                        if self.body_yaw_type then
                            body_yaw_type = self.body_yaw_type
                            body_yaw_value = self.body_yaw_value or 0
                        end

                        override.set(reference.antiaim.body.yaw.type, body_yaw_type)
                        override.set(reference.antiaim.body.yaw.value, mathx.clamp(body_yaw_value, -1, 1))

                        local body_yaw_freestanding = self.body_yaw_freestanding or false

                        override.set(reference.antiaim.body.freestanding, body_yaw_freestanding)
                    end
                end

                function create_antiaim(initial)
                    return setmetatable(initial or {

                    }, {
                        __index = AntiAim
                    })
                end
            end

            antiaimbot.constructor = {}

            antiaimbot.features = {} do
                antiaimbot.features.running = false

                antiaimbot.features.state = {
                    legit_antiaim = false,
                    safe_head = false,
                    warmup_antiaim = false,
                    manual_antiaim = false,
                    freestanding = false
                }

                antiaimbot.features.fast_ladder = {} do
                    local time_on_ladder = 0
                    local move_time = 0

                    function antiaimbot.features.fast_ladder.ladder_yaw(me)
                        local vx, vy = entity.get_prop(me, 'm_vecLadderNormal')

                        return vx == 1.0 and 180 or vx == -1.0 and 0 or vy == 1.0 and -90 or 90
                    end

                    function antiaimbot.features.fast_ladder.ladder_move(cmd, target_yaw)
                        if target_yaw == 0 then
                            return cmd.forwardmove > 0, cmd.forwardmove < 0, cmd.sidemove == 0, cmd.sidemove < 0, cmd.sidemove > 0
                        end

                        if target_yaw == 180 or target_yaw == -180 then
                            return cmd.forwardmove < 0, cmd.forwardmove > 0, cmd.sidemove == 0, cmd.sidemove > 0, cmd.sidemove < 0
                        end

                        if target_yaw == 90 then
                            return cmd.sidemove > 0, cmd.sidemove < 0, cmd.forwardmove == 0, cmd.forwardmove > 0, cmd.forwardmove < 0
                        end

                        if target_yaw == -90 then
                            return cmd.sidemove > 0, cmd.sidemove > 0, cmd.forwardmove == 0, cmd.forwardmove < 0, cmd.forwardmove > 0
                        end
                    end

                    function antiaimbot.features.fast_ladder:run(enabled, cmd, me, wpn)
                        if not enabled then
                            time_on_ladder = 0
                            move_time = 0

                            return
                        end

                        local throw_time = entity.get_prop(wpn, 'm_fThrowTime')
                        local angles = vector(client.camera_angles())

                        local ascending, descending = cmd.forwardmove > 0, cmd.forwardmove < 0
                        local moving_none, moving_left, moving_right = cmd.sidemove == 0, cmd.sidemove < 0, cmd.sidemove > 0

                        if ascending or descending or not moving_none then
                            move_time = move_time + 1
                        else
                            move_time = 0
                        end

                        if time_on_ladder < 1 then
                            time_on_ladder = time_on_ladder + 1
                        end

                        if move_time < 4 or time_on_ladder < 1 then
                            return
                        end

                        if cmd.in_jump == 1 then
                            return
                        end

                        if not wpn or (not throw_time or throw_time == 0) then

                            if cmd.forwardmove > 0 then
                                if cmd.pitch < 45 then
                                    cmd.pitch = 89
                                    cmd.in_moveright = 1
                                    cmd.in_moveleft = 0
                                    cmd.in_forward = 0
                                    cmd.in_back = 1
                
                                    if cmd.sidemove == 0 then
                                        cmd.yaw = cmd.yaw + 90
                                    end
                
                                    if cmd.sidemove < 0 then
                                        cmd.yaw = cmd.yaw + 150
                                    end
                
                                    if cmd.sidemove > 0 then
                                        cmd.yaw = cmd.yaw + 30
                                    end
                                end
                            elseif cmd.forwardmove < 0 then
                                cmd.pitch = 89
                                cmd.in_moveleft = 1
                                cmd.in_moveright = 0
                                cmd.in_forward = 1
                                cmd.in_back = 0
                
                                if cmd.sidemove == 0 then
                                    cmd.yaw = cmd.yaw + 90
                                end
                
                                if cmd.sidemove > 0 then
                                    cmd.yaw = cmd.yaw + 150
                                end
                
                                if cmd.sidemove < 0 then
                                    cmd.yaw = cmd.yaw + 30
                                end
                            end

                            return true
                        end
                    end
                end

                antiaimbot.features.legit_antiaim = {} do
                    local use_time = 0

                    function antiaimbot.features.legit_antiaim.run(instance, cmd, me, wpn)
                        antiaimbot.features.state.legit_antiaim = false

                        if antiaimbot.features.state.running then
                            return 'Priority surpassed'
                        end

                        if not tablex.contains(config.antiaimbot.options:get(), 'On use antiaim') then
                            return 'Not enabled'
                        end

                        if player.weapon_type == 'grenade' then
                            return 'Grenade in hands'
                        end

                        if cmd.in_use == 0 then
                            use_time = 0

                            return 'Not in use'
                        end

                        use_time = use_time + 1

                        if not player.use_needed and use_time > 2 then
                            local profile = antiaimbot.constructor

                            if profile then
                                cmd.in_use = 0

                                antiaimbot.main.apply_profile(instance, profile['Legit AA'])

                                antiaimbot.features.state.legit_antiaim = true
                                antiaimbot.features.running = true

                                return 'Legit antiaim is active'
                            end

                            return 'No profile'
                        end

                        return 'Use is needed'
                    end
                end

                antiaimbot.features.manual_antiaim = {} do
                    function antiaimbot.features.manual_antiaim.run(instance, cmd, me, wpn)
                        antiaimbot.features.state.manual_antiaim = false
                        antiaimbot.features.state.freestanding = false

                        if antiaimbot.features.running then
                            return 'Priority surpassed'
                        end

                        if not config.antiaimbot.binds:get() then
                            antiaimbot.manual_antiaim.state = -1

                            return 'Not enabled'
                        end

                        local state = antiaimbot.manual_antiaim.state
                        local m_options = config.antiaimbot.manual_options:get()
                        local fs_options = config.antiaimbot.fs_options:get()
                        local ignore_freestanding = tablex.contains(config.antiaimbot.freestanding_disabler_states:get(), player.state)

                        if state ~= -1 then
                            instance.yaw_base = 'Local view'

                            instance.yaw_type = '180'
                            instance.yaw_offset = antiaimbot.manual_antiaim.convert[antiaimbot.manual_antiaim.state]

                            antiaimbot.features.state.manual_antiaim = true
                        else
                            instance.edge_yaw, instance.freestand = config.antiaimbot.edge_yaw:rawget(), config.antiaimbot.freestanding:rawget() and not ignore_freestanding

                            antiaimbot.features.state.freestanding = instance.freestand
                        end

                        local fs_detected = instance.freestand and tablex.contains(fs_options, 'Jitter disabled')


                        if state ~= -1 and tablex.contains(m_options, 'Jitter disabled') or fs_detected then
                            instance.yaw_modifier = 'Off'
                            instance.modifier_offset = 0

                            if player.fs_side ~= 'none' then
                                instance.body_yaw_type = 'Static'
                                instance.body_yaw_value = player.fs_side == 'left' and 1 or -1
                            end

                            if fs_detected then
                                instance.yaw_type = '180'
                                instance.yaw_offset = 0
                            end
                        end

                        if not (antiaimbot.features.state.manual_antiaim or antiaimbot.features.state.freestanding) then
                            return 'Inactive'
                        end

                        antiaimbot.features.running = true

                        return 'Manual antiaim is active'
                    end
                end

                antiaimbot.features.warmup_antiaim = {} do
                    function antiaimbot.features.warmup_antiaim.run(instance, cmd, me, wpn)
                        antiaimbot.features.state.warmup_antiaim = false

                        if antiaimbot.features.running then
                            return 'Priority surpassed'
                        end

                        if not config.antiaimbot.warmup_aa:get() then
                            return 'Not enabled'
                        end

                        local game_rules = entity.get_game_rules()

                        if not game_rules then
                            return 'CGameRules is invalid'
                        end

                        local warmup_period do
                            local is_active = tablex.contains(config.antiaimbot.warmup_aa_conditions:get(), 'Warmup')
                            local is_warmup = entity.get_prop(game_rules, 'm_bWarmupPeriod') == 1

                            warmup_period = is_active and is_warmup
                        end

                        if not warmup_period then
                            local player_resource = entity.get_player_resource()

                            if player_resource then
                                local are_all_enemies_dead = true

                                for i=1, globals.maxplayers() do
                                    if entity.get_prop(player_resource, 'm_bConnected', i) == 1 then
                                        if entity.is_enemy(i) and entity.is_alive(i) then
                                            are_all_enemies_dead = false

                                            break
                                        end
                                    end
                                end

                                warmup_period = are_all_enemies_dead and globals.curtime() < (entity.get_prop(game_rules, 'm_flRestartRoundTime') or 0)
                            end
                        end

                        if warmup_period then
                            instance.pitch = 'Off'

                            instance.yaw_base = 'At targets'

                            instance.yaw_type = '180'
                            instance.yaw_offset = animations:spin('warmup_spin', -180, 180, 1, 32).value

                            instance.yaw_modifier = 'Off'

                            antiaimbot.features.state.warmup_antiaim = true
                            antiaimbot.features.running = true

                            return 'Warmup AA is active'
                        end

                        return 'Conditions was not met'
                    end
                end

                antiaimbot.features.safe_head = {} do
                    local resolve_classname = {
                        ['CKnife'] = 'Air knife',
                        ['CWeaponTaser'] = 'Air zeus'
                    }

                    antiaimbot.features.safe_head.trace_thread = (function (me, threat)
                        if threat then
                            local my_origin = vector(entity.get_origin(me))
                            local my_head = vector(entity.hitbox_position(me, 0))

                            if entity.is_alive(threat) then
                                local ent_origin = vector(entity.get_origin(threat))


                                do
                                    local target = mathx.extrapolate(threat, vector(entity.hitbox_position(threat, 0)), 5)
                                    local entindex, damage = client.trace_bullet(threat, target.x, target.y, target.z, my_head.x, my_head.y, my_head.z + 6)

                                    if -1 == entindex then
                                        damage = 0
                                    end

                                    return my_origin.z - ent_origin.z > 5 and damage > 0
                                end
                            end
                        end

                        return false
                    end)

                    function antiaimbot.features.safe_head.run(instance, cmd, me, wpn)
                        antiaimbot.features.state.safe_head = false

                        if antiaimbot.features.running then
                            return 'Priority surpassed'
                        end

                        if not config.antiaimbot.safe_head:get() then
                            return 'Not enabled'
                        end

                        local is_enabled = tablex.contains(config.antiaimbot.safe_head_conditions:get(), player.state)
                        local is_safe_head = false
                        local threat = client.current_threat()

                        do
                            if player.state:match('Air') and threat then
                                if wpn then
                                    local weapon_classname = entity.get_classname(wpn)

                                    if tablex.contains(config.antiaimbot.safe_head_conditions:get(), resolve_classname[weapon_classname]) then
                                        is_safe_head = true
                                    end
                                end
                            end
                        end

                        if not is_safe_head then
                            is_safe_head = antiaimbot.features.safe_head.trace_thread(me, threat)
                        end

                        if is_enabled and is_safe_head then
                            instance.pitch = 'Minimal'

                            instance.yaw_type = '180'
                            instance.yaw_base = 'At targets'
                            instance.yaw_offset = 0
                            instance.yaw_modifier = 'Off'


                            antiaimbot.features.state.safe_head = true
                            antiaimbot.features.running = true

                            return 'Safe head is running'
                        end

                        if not is_enabled then
                            return 'Not active'
                        end

                        return 'Conditions was not met'
                    end
                end

                antiaimbot.features.avoid_backstab = {} do
                    function antiaimbot.features.avoid_backstab.run(instance, cmd, me, wpn)
                        if not config.antiaimbot.anti_knife:get() then
                            return false, 'Disabled'
                        end

                        local max_distance = config.antiaimbot.anti_knife_distance:get()

                        if max_distance <= 0 then
                            return false, 'Disabled'
                        end

                        local ox, oy, oz = entity.get_origin(me)

                        if not ox or not oy or not oz then
                            return false, 'Local player invalid'
                        end

                        local my_origin = vector(ox, oy, oz)
                        local player_list = entity.get_players(true)
                        local closest_dist, closest_yaw = math.huge, nil

                        for i = 1, #player_list do
                            local ent = player_list[i]
                            local weapon = entity.get_player_weapon(ent)

                            if weapon and entity.is_alive(ent) then
                                local classname = entity.get_classname(weapon)
                                local is_knife = classname == 'CKnife' or classname == 'CKnifeGG'
                                local x, y, z = entity.hitbox_position(ent, 2)

                                if is_knife and x and y and z then
                                    local player_origin = vector(x, y, z)
                                    local distance = my_origin:dist(player_origin)

                                    if distance <= max_distance and distance < closest_dist then
                                        local _, yaw_to_target = (player_origin - my_origin):angles()
                                        closest_yaw = yaw_to_target
                                        closest_dist = distance
                                    end
                                end
                            end
                        end

                        if closest_yaw then
                            instance.yaw_base = 'Local view'
                            instance.yaw_type = 'Static'
                            instance.yaw_offset = mathx.normalize_yaw(closest_yaw)
                            return true, 'Anti-knife active'
                        end

                        return false, 'No knife target'
                    end
                end
            end

            antiaimbot.main = {} do
                local instance = create_antiaim()

                local antiaim_state = {
                    switch = false,
                    swap = false,
                    delay = 0,
                    last_switch = 0,
                    last_packets = 0,
                    step = 1
                }

                function antiaimbot.main.apply_profile(instance, data)
                    local yaw_side = player.fakeyaw > 0 and 'left' or 'right'

                    instance.pitch = data.pitch
                    instance.pitch_custom = data.pitch_custom

                    instance.yaw_base = data.yaw_base

                    local yaw_type = data.yaw_type or '180'
                    local yaw = data.yaw_offset or 0

                    local can_force_body_yaw = true
                    local inverter = false
                    local yaw_modifier = data.yaw_modifier or 'Off'
                    local modifier_offset = data.modifier_offset or 0

                    if yaw_type == '1-way' then
                        yaw_type = '180'
                        yaw = data.yaw_offset or 0
                    elseif yaw_type == '2-way' or yaw_type == '3-way' then
                        local delay_min = mathx.max(1, data.yaw_delay or 1)
                        local delay_max = mathx.max(delay_min, data.yaw_delay_second or delay_min)

                        if player.packets - antiaim_state.last_packets >= antiaim_state.delay then
                            antiaim_state.delay = client.random_int(delay_min, delay_max)
                            antiaim_state.step = antiaim_state.step + 1
                            antiaim_state.last_packets = player.packets
                        end

                        local step = antiaim_state.step
                        yaw_type = '180'

                        if data.yaw_type == '2-way' then
                            yaw = step % 2 == 0 and (data.left_offset or 0) or (data.right_offset or 0)
                        else
                            local way = step % 3
                            yaw = way == 0 and (data.left_offset or 0)
                                or way == 1 and (data.yaw_offset or 0)
                                or (data.right_offset or 0)
                        end
                    elseif yaw_type ~= '180' then
                        if yaw_type == 'Left & Right' then
                            local left_offset = type(data.left_offset) == 'table' and client.random_int(data.left_offset[1], data.left_offset[2]) or data.left_offset
                            local right_offset = type(data.right_offset) == 'table' and client.random_int(data.right_offset[1], data.right_offset[2]) or data.right_offset

                            if data.yaw_delay ~= nil then
                                if player.packets - antiaim_state.last_packets >= antiaim_state.delay then
                                    antiaim_state.delay = client.random_int(mathx.min(data.yaw_delay, data.yaw_delay_second), mathx.max(data.yaw_delay, data.yaw_delay_second))
                                    antiaim_state.switch = not antiaim_state.switch
                                    antiaim_state.last_packets = player.packets
                                end

                                inverter = antiaim_state.switch
                                yaw_side = inverter and 'left' or 'right'
                                can_force_body_yaw = false
                            end

                            yaw_type = '180'
                            yaw = yaw_side == 'left' and left_offset or right_offset
                        end

                        if yaw_type == 'Flick' then
                            yaw_type = '180'
                            yaw = animations:flick(string.format('Flick%s', player.state), data.left_offset, data.right_offset, data.yaw_delay).value
                        end

                        if yaw_type == 'Sway' then
                            yaw_type = '180'
                            yaw = animations:sway(string.format('Sway%s', player.state), data.left_offset, data.right_offset, data.yaw_delay, data.yaw_speed).value
                        end

                        if yaw_type == 'Spin between' then
                            yaw_type = '180'
                            yaw = animations:spin(string.format('Spin%s', player.state), data.left_offset, data.right_offset, data.yaw_delay, data.yaw_speed).value
                        end
                    end

                    instance.yaw_type = yaw_type
                    instance.yaw_offset = mathx.normalize_yaw(yaw)

                    local yaw_modifier_randomize = data.modifier_randomize

                    if yaw_modifier_randomize then
                        if yaw_modifier_randomize > 0 then
                            modifier_offset = client.random_int(modifier_offset-yaw_modifier_randomize, modifier_offset+yaw_modifier_randomize)
                        else
                            modifier_offset = client.random_int(modifier_offset+yaw_modifier_randomize, modifier_offset-yaw_modifier_randomize)
                        end
                    end

                    instance.yaw_modifier = yaw_modifier
                    instance.modifier_offset = mathx.normalize_yaw(modifier_offset)

                    local left_limit = data.left_limit or 58
                    local right_limit = data.right_limit or 58

                    instance.left_limit = left_limit
                    instance.right_limit = right_limit
                    instance.inverter = inverter

                    if can_force_body_yaw then
                        instance.body_yaw_type = data.body_yaw_type
                        instance.body_yaw_value = data.body_yaw_value
                    end

                    instance.body_yaw_freestanding = data.body_yaw_freestanding
                end

                antiaimbot.main.debug = {}

                function antiaimbot.main:run(cmd, me, wpn)
                    instance:tick()

                    local player_state = player.state

                    local is_fakelagging = not (tablex.is_hotkey_active(reference.ragebot.doubletap.enable) or tablex.is_hotkey_active(reference.misc.onshot_antiaim))

                    if is_fakelagging or cmd.chokedcommands == 0 then
                        animations:tick(globals.tickcount())
                    end

                    local profile_mode = config.antiaimbot.profile_mode:get()
                    local profile_data = antiaimbot.constructor[player_state]
                    local lag_profile = antiaimbot.constructor['Fake lag']

                    if is_fakelagging and lag_profile then
                        profile_data = lag_profile
                    end

                    if profile_data then
                        self.apply_profile(instance, profile_data)
                    end

                    antiaimbot.main.debug.profile = profile_mode

                    local move_type = entity.get_prop(me, 'm_MoveType')
                    local selected_options = config.antiaimbot.options:get()


                    antiaimbot.main.debug.state = {
                        fakelag = is_fakelagging,
                        choking = fakelag.choking,
                        state = player_state
                    }

                    if not antiaimbot.features.fast_ladder:run(
                        tablex.contains(selected_options, 'Fast ladder') and move_type == 9, cmd, me, wpn
                    ) and move_type ~= 9 then
                        antiaimbot.features.running = false

                        antiaimbot.main.debug.legit_antiaim = antiaimbot.features.legit_antiaim.run(instance, cmd, me, wpn)
                        antiaimbot.main.debug.manual_antiaim = antiaimbot.features.manual_antiaim.run(instance, cmd, me, wpn)
                        antiaimbot.main.debug.warmup_antiaim = antiaimbot.features.warmup_antiaim.run(instance, cmd, me, wpn)
                        antiaimbot.main.debug.safe_head = antiaimbot.features.safe_head.run(instance, cmd, me, wpn)

                        local avoid_backstab = antiaimbot.features.avoid_backstab.run(instance, cmd, me, wpn)

                        antiaimbot.main.debug.avoid_backstab = avoid_backstab

                    end

                    antiaimbot.ideal_tick.run()

                    instance:run()
                end

                function antiaimbot.main.get_instance()
                    return instance
                end
            end

            antiaimbot.animation_breaker = {} do
                antiaimbot.animation_breaker.anim_reset = false

                function antiaimbot.animation_breaker.run(me)
                    local leg_move = config.antiaimbot.animation_breaker_leg:get()
                    local animlayers = ffi_helpers.animlayers:get(me)

                    if not animlayers then
                        return
                    end

                    if leg_move ~= 'Off' and player.onground and (player.state == 'Moving' or player.state == 'Crouch moving') then
                        if leg_move == 'Frozen' then
                            entity.set_prop(me, 'm_flPoseParameter', 1, 0)
                            override.set(reference.misc.leg_movement, "Always slide")
                        elseif leg_move == 'Jitter' and player.state == 'Moving' then
                            entity.set_prop(me, 'm_flPoseParameter', client.random_float(0, 1), 0)
                            animlayers[12]['weight'] = client.random_float(0, 1)
                            override.set(reference.misc.leg_movement, "Always slide")
                        elseif leg_move == 'Walking' then
                            entity.set_prop(me, 'm_flPoseParameter', 0.5, 7)
                            override.set(reference.misc.leg_movement, "Never slide")
                        elseif leg_move == 'Sliding' and player.state == 'Moving' then
                            entity.set_prop(me, 'm_flPoseParameter', 0, 9)
                            entity.set_prop(me, 'm_flPoseParameter', 0, 10)
                            override.set(reference.misc.leg_movement, "Never slide")
                        else
                            override.unset(reference.misc.leg_movement)
                        end
                    else
                        override.unset(reference.misc.leg_movement)
                    end

                    local air_legs = config.antiaimbot.animation_breaker_air:get()
                    local move_type = entity.get_prop(me, 'm_MoveType')

                    if air_legs ~= 'Off' and not player.onground and not (move_type == 9 or move_type == 8) then
                        if air_legs == 'Frozen' then
                            entity.set_prop(me, 'm_flPoseParameter', 1, 6)
                        elseif air_legs == 'Walking' then
                            local cycle do
                                cycle = globals.realtime() * 0.7 % 2

                                if cycle > 1 then
                                    cycle = 1 - (cycle - 1)
                                end
                            end

                            animlayers[6]['weight'] = 1
                            animlayers[6]['cycle'] = cycle
                        end
                    end

                    local breaker_options = config.antiaimbot.animation_breaker_other:get()

                    if tablex.contains(breaker_options, 'Slide on slow-motion') and tablex.is_hotkey_active(reference.misc.slowmotion) then
                        entity.set_prop(me, 'm_flPoseParameter', 0, 9)
                    end

                    if tablex.contains(breaker_options, 'Slide on crouching') and (player.state == 'Crouching' or player.state == 'Crouch moving') then
                        entity.set_prop(me, 'm_flPoseParameter', 0, 8)
                    end

                    if tablex.contains(breaker_options, 'Pitch zero on land') and player.landing and player.onground then
                        entity.set_prop(me, 'm_flPoseParameter', 0.5, 12)
                    end
                end


                function antiaimbot.animation_breaker.post(cmd, me)
                    if tablex.contains(config.antiaimbot.animation_breaker_other:get(), 'Quick peek legs') and tablex.is_hotkey_active(reference.ragebot.quick_peek_assist) then
                        local move_type = entity.get_prop(me, 'm_MoveType')

                        if move_type == 2 then
                            local command = ffi_helpers.user_input:get_command(cmd.command_number)

                            if command then
                                command.buttons = bit.band(command.buttons, bit.bnot(8))
                                command.buttons = bit.band(command.buttons, bit.bnot(16))
                                command.buttons = bit.band(command.buttons, bit.bnot(512))
                                command.buttons = bit.band(command.buttons, bit.bnot(1024))
                            end
                        end
                    end
                end
            end

            antiaimbot.ideal_tick = {} do
                local ideal_tick_reset

                function antiaimbot.ideal_tick.run()
                    if config.antiaimbot.ideal_tick:get() and config.antiaimbot.ideal_tick_hotkey:get() then
                        override.set(reference.ragebot.quick_peek_assist[1], true)
                        override.set(reference.ragebot.quick_peek_assist[2], "Always on", 0x0)

                        override.set(reference.ragebot.enable[1], true)
                        override.set(reference.ragebot.enable[2], "Always on", 0x0)

                        antiaimbot.features.state.freestanding = true

                        ideal_tick_reset = true
                    else
                        if ideal_tick_reset then
                            override.unset(reference.ragebot.quick_peek_assist[1])
                            override.unset(reference.ragebot.quick_peek_assist[2])
        
                            override.unset(reference.ragebot.enable[1])
                            override.unset(reference.ragebot.enable[2])

                            ideal_tick_reset = false
                        end
                    end
                end
            end

            antiaimbot.manual_antiaim = {} do
                local list = {}

                antiaimbot.manual_antiaim.state = -1
                antiaimbot.manual_antiaim.MANUAL_LEFT = 1
                antiaimbot.manual_antiaim.MANUAL_RIGHT = 2
                antiaimbot.manual_antiaim.MANUAL_BACK = 3
                antiaimbot.manual_antiaim.MANUAL_FORWARD = 4

                antiaimbot.manual_antiaim.convert = {
                    [antiaimbot.manual_antiaim.MANUAL_LEFT] = -90,
                    [antiaimbot.manual_antiaim.MANUAL_RIGHT] = 90,
                    [antiaimbot.manual_antiaim.MANUAL_BACK] = 0,
                    [antiaimbot.manual_antiaim.MANUAL_FORWARD] = 180
                }

                for i=1, #config.binds do
                    list[#list+1] = {
                        prev = false,
                        ref = config.binds[i],

                        change = function (self, new_value)
                            if new_value then
                                antiaimbot.manual_antiaim.state = (antiaimbot.manual_antiaim.state == i or i == 5) and -1 or i
                            end
                        end,

                        update = function (self)
                            local new_value, mode = self.ref:rawget()

                            if new_value ~= self.prev then
                                self:change(mode == 2 and true or new_value)

                                self.prev = new_value
                            end
                        end
                    }
                end

                function antiaimbot.manual_antiaim.update()
                    for i=1, #list do
                        list[i]:update();
                    end
                end
            end

            function antiaimbot:predict_command(cmd, me, wpn)
                self.manual_antiaim.update()

                if not me then
                    return
                end

                if config.antiaimbot.animation_breaker:get() then
                    self.animation_breaker.run(me)

                    self.animation_breaker.anim_reset = false
                elseif not self.anim_reset then
                    override.unset(reference.misc.leg_movement)
                    self.animation_breaker.anim_reset = true
                end
            end

            function antiaimbot:setup_command(cmd, me, wpn)
                if me == nil then
                    return
                end

                self.main:run(cmd, me, wpn)
            end

            function antiaimbot:finish_command(cmd, me, wpn)
                if not me then
                    return
                end

                if config.antiaimbot.animation_breaker:get() then
                    self.animation_breaker.post(cmd, me);
                end
            end
        end
    end

    local antiaimbot_builder do
        config.builder = {} do
            config.builder.antiaim_state = menu.new_item(ui.new_combobox, "AA", "Anti-aimbot angles", "Builder state", tablex.combine_arrays({"Global", "Fake lag"}, constants.STATE_LIST))
                :config_ignore()

        end

        antiaimbot_builder = {} do
            antiaimbot_builder.settings = {} do
                local global_state_list = tablex.combine_arrays({'Global', 'Fake lag'}, constants.STATE_LIST)

                for i=1, #global_state_list do
                    local state = global_state_list[i]

                    antiaimbot_builder.settings[state] = {}

                    local this = antiaimbot_builder.settings[state]

                    if state ~= "Global" then
                        this.enabled = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Enabled")
                            :record("builder", table.concat { "AA", "::", state, "::Enabled" })
                            :save()
                    end

                    this.pitch = menu.new_item(ui.new_combobox, "AA", "Anti-aimbot angles", "Pitch", {
                        "Off",
                        "Default",
                        "Up",
                        "Down",
                        "Minimal",
                        "Random",
                        "Custom"
                    }):record("builder", table.concat { "AA", "::", state, "::Pitch" }):save()

                    this.pitch_amount = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "\nPitch custom", -89, 89, 0, true, "°", 1)
                        :record("builder", table.concat { "AA", "::", state, "::PitchCustom" })
                        :save()

                    this.yaw_base = menu.new_item(ui.new_combobox, "AA", "Anti-aimbot angles", "Yaw base", {
                        "Local view",
                        "At targets"
                    }):record("builder", table.concat { "AA", "::", state, "::YawBase" }):save()

                    this.yaw_type = menu.new_item(ui.new_combobox, "AA", "Anti-aimbot angles", "Yaw", {
                        "Off",
                        "180",
                        "Spin",
                        "Static",
                        "180 Z",
                        "Crosshair",
                        "1-way",
                        "2-way",
                        "3-way",
                        "Left & Right",
                        "Flick",
                        "Sway",
                        "Spin between"
                    }):record("builder", table.concat { "AA", "::", state, "::YawType" }):save()

                    this.yaw_amount = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "\nYaw custom", -180, 180, 0, true, "°", 1)
                        :record("builder", table.concat { "AA", "::", state, "::YawCustom" })
                        :save()

                    this.yaw_left = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "Yaw left", -180, 180, 0, true, "°", 1)
                        :record("builder", table.concat { "AA", "::", state, "::YawLeft" })
                        :save()

                    this.yaw_right = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "Yaw right", -180, 180, 0, true, "°", 1)
                        :record("builder", table.concat { "AA", "::", state, "::YawRight" })
                        :save()

                    this.yaw_delayed_switch = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Yaw delayed switch")
                        :record("builder", table.concat { "AA", "::", state, "::YawDelayedSwitch" })
                        :save()

                    this.yaw_switch_delay = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "Yaw delayed switch: Delay", 1, 12, 6, true, "t", 1, {[0] = "Off"})
                        :record("builder", table.concat { "AA", "::", state, "::YawSwitchDelay" })
                        :save()

                    this.yaw_switch_delay_second = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "Yaw delayed switch: Delay second", 1, 12, 6, true, "t", 1, {[0] = "Off"})
                        :record("builder", table.concat { "AA", "::", state, "::YawSwitchDelaySecond" })
                        :save()

                    this.yaw_delay = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "Yaw delay", 1, 64, 5, true, "t", 1, {[0] = "Off"})
                        :record("builder", table.concat { "AA", "::", state, "::YawDelay" })
                        :save()

                    this.yaw_delay_second = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "Yaw delay second", 1, 64, 5, true, "t", 1, {[0] = "Off"})
                        :record("builder", table.concat { "AA", "::", state, "::YawDelaySecond" })
                        :save()

                    this.yaw_speed = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "Yaw speed", 1, 64, 5, true, "t", 1, {[0] = "Off"})
                        :record("builder", table.concat { "AA", "::", state, "::YawSpeed" })
                        :save()

                    this.yaw_jitter = menu.new_item(ui.new_combobox, "AA", "Anti-aimbot angles", "Yaw jitter", {
                        "Off",
                        "Offset",
                        "Center",
                        "Random",
                        "Skitter"
                    }):record("builder", table.concat { "AA", "::", state, "::YawJitter" }):save()

                    this.jitter_value = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "\nJitter value", -180, 180, 0, true, "°", 1)
                        :record("builder", table.concat { "AA", "::", state, "::JitterValue" })
                        :save()

                    this.jitter_randomize = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "Yaw jitter: Randomize", -180, 180, 0, true, "°", 1, {[0] = "Off"})
                        :record("builder", table.concat { "AA", "::", state, "::JitterRandomize" })
                        :save()

                    this.body_yaw = menu.new_item(ui.new_combobox, "AA", "Anti-aimbot angles", "Body yaw", {
                        "Off",
                        "Opposite",
                        "Jitter",
                        "Static"
                    }):record("builder", table.concat { "AA", "::", state, "::BodyYaw" }):save()

                    this.body_value = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "\nBody value", -180, 180, 0, true, "°", 1)
                        :record("builder", table.concat { "AA", "::", state, "::BodyValue" })
                        :save()
                end

                local function onStateChange()
                    antiaimbot.constructor = {}

                    local state_list = tablex.combine_arrays({'Fake lag'}, constants.STATE_LIST)

                    for i=1, #state_list do
                        local state = state_list[i]

                        antiaimbot.constructor[state] = {}

                        local this = antiaimbot.constructor[state]
                        local is_enabled = antiaimbot_builder.settings[state].enabled:get()

                        if not is_enabled and state == 'Fake lag' then
                            antiaimbot.constructor[state] = nil

                            goto continue
                        end

                        local menu_state = is_enabled and antiaimbot_builder.settings[state] or antiaimbot_builder.settings['Global']

                        this.pitch = menu_state.pitch:get()
                        this.pitch_custom = menu_state.pitch_amount:get()

                        this.yaw_base = menu_state.yaw_base:get()

                        local yaw_type = menu_state.yaw_type:get()

                        this.yaw_type = yaw_type

                        if yaw_type == 'Left & Right' then
                            local yaw_delay = menu_state.yaw_switch_delay:get()

                            this.yaw_delay = menu_state.yaw_delayed_switch:get() and yaw_delay or nil
                            this.yaw_delay_second = menu_state.yaw_switch_delay_second:get()
                            this.left_offset = menu_state.yaw_left:get()
                            this.right_offset = menu_state.yaw_right:get()
                        elseif yaw_type == 'Flick' or yaw_type == 'Sway' or yaw_type == 'Spin between' or yaw_type == '2-way' or yaw_type == '3-way' then
                            this.left_offset = menu_state.yaw_left:get()
                            this.right_offset = menu_state.yaw_right:get()
                            this.yaw_offset = menu_state.yaw_amount:get()
                            this.yaw_delay = menu_state.yaw_delay:get()
                            this.yaw_delay_second = menu_state.yaw_delay_second:get()
                            this.yaw_speed = menu_state.yaw_speed:get()
                        else
                            this.yaw_offset = menu_state.yaw_amount:get()
                        end

                        local jitter_type = menu_state.yaw_jitter:get()

                        this.yaw_modifier = jitter_type

                        this.modifier_offset = menu_state.jitter_value:get()
                        this.modifier_randomize = menu_state.jitter_randomize:get()

                        this.body_yaw_type = menu_state.body_yaw:get()
                        this.body_yaw_value = menu_state.body_value:get()

                        ::continue::
                    end

                    antiaimbot.constructor['Legit AA'] = {
                        pitch = 'Off',
                        yaw_base = 'Local view',
                        yaw_type = 'Left & Right',
                        left_offset = 165,
                        right_offset = -165,

                        yaw_delay = 1,
                        yaw_delay_second = 6
                    }
                end


                local builder_keys = menu.get_records()["builder"]

                for key, element in pairs(builder_keys) do
                    element:set_callback(onStateChange)
                end

                onStateChange()
            end


        end
    end

    local visuals do
        config.visuals = {} do
            config.visuals.damage_marker = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Damage marker")
                :record("visuals", "damage_marker")
                :save()

            config.visuals.damage_marker_color = menu.new_item(ui.new_color_picker, "AA", "Anti-aimbot angles", "\ndamage_marker", 255, 255, 255, 255)
                :record("visuals", "damage_marker_color")
                :save()

            config.visuals.watermark = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Watermark")
                :record("visuals", "watermark")
                :save()

            config.visuals.aspect_ratio = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Aspect ratio")
                :record("visuals", "aspect_ratio")
                :save()
            config.visuals.aspect_ratio_value = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "Aspect ratio: Value", 0, 200, 100, true, "", 0.01)
                :record("visuals", "aspect_ratio_value")
                :save()

            config.visuals.third_person = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Third person distance")
                :record("visuals", "third_person")
                :save()
            config.visuals.third_person_distance = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "Third person: Distance", 0, 180, 100, true, "u")
                :record("visuals", "third_person_distance")
                :save()

            config.visuals.viewmodel = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Viewmodel")
                :record("visuals", "viewmodel")
                :save()
            config.visuals.viewmodel_fov = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "Viewmodel: FOV", 0, 1000, 680, true, "°", 0.1)
                :record("visuals", "viewmodel_fov")
                :save()
            config.visuals.viewmodel_x = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "Viewmodel: X", -100, 100, 25, true, "", 0.1)
                :record("visuals", "viewmodel_x")
                :save()
            config.visuals.viewmodel_y = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "Viewmodel: Y", -100, 100, 25, true, "", 0.1)
                :record("visuals", "viewmodel_y")
                :save()
            config.visuals.viewmodel_z = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "Viewmodel: Z", -100, 100, 25, true, "", 0.1)
                :record("visuals", "viewmodel_z")
                :save()

            config.visuals.console_color = menu.new_item(ui.new_color_picker, "AA", "Anti-aimbot angles", "Console color", 255, 255, 255, 255)
                :record("visuals", "console_color")
                :save()
        end

        visuals = {} do
            visuals.changers = {} do
                local saved = {}

                local function set_cvar(name, value)
                    local cv = cvar[name]
                    if not cv then
                        return
                    end

                    if saved[name] == nil then
                        saved[name] = tonumber(cv:get_string()) or 0
                    end

                    cv:set_raw_float(value)
                end

                local function restore_cvar(name)
                    local cv = cvar[name]
                    local value = saved[name]

                    if cv and value ~= nil then
                        cv:set_raw_float(value)
                    end

                    saved[name] = nil
                end

                function visuals.changers.apply()
                    if config.visuals.aspect_ratio:get() then
                        set_cvar('r_aspectratio', config.visuals.aspect_ratio_value:get() * 0.01)
                    else
                        restore_cvar('r_aspectratio')
                    end

                    if config.visuals.third_person:get() then
                        set_cvar('cam_idealdist', config.visuals.third_person_distance:get())
                    else
                        restore_cvar('cam_idealdist')
                    end

                    if config.visuals.viewmodel:get() then
                        set_cvar('viewmodel_fov', config.visuals.viewmodel_fov:get() * 0.1)
                        set_cvar('viewmodel_offset_x', config.visuals.viewmodel_x:get() * 0.1)
                        set_cvar('viewmodel_offset_y', config.visuals.viewmodel_y:get() * 0.1)
                        set_cvar('viewmodel_offset_z', config.visuals.viewmodel_z:get() * 0.1)
                    else
                        restore_cvar('viewmodel_fov')
                        restore_cvar('viewmodel_offset_x')
                        restore_cvar('viewmodel_offset_y')
                        restore_cvar('viewmodel_offset_z')
                    end
                end

                function visuals.changers.restore()
                    for name in pairs(saved) do
                        restore_cvar(name)
                    end

                end
            end

            local screen_size = vector(client.screen_size())
            local screen_center = screen_size * 0.5

            visuals.watermark = {} do
                visuals.watermark.draw = function()
                    if not config.visuals.watermark:get() then
                        return
                    end

                    local me = entity.get_local_player()
                    local resource = entity.get_player_resource()
                    local kills, deaths = 0, 0

                    if me and resource then
                        kills = tonumber(entity.get_prop(resource, 'm_iKills', me)) or 0
                        deaths = tonumber(entity.get_prop(resource, 'm_iDeaths', me)) or 0
                    end

                    local kd = deaths > 0 and kills / deaths or kills
                    local fps = math.floor(1 / math.max(globals.frametime(), 0.0001) + 0.5)
                    local hour, minute, second = client.system_time()
                    local username = me and entity.get_player_name(me) or user.name

                    if not username or username == '' then
                        username = 'user'
                    end

                    local text = string.format(
                        'flux.gs | %s | %02d:%02d:%02d | %d fps | %.2f kd',
                        username, hour, minute, second, fps, kd
                    )
                    local flags = 'b'
                    local width, height = renderer.measure_text(flags, text)
                    local screen_x = client.screen_size()
                    local x = screen_x - width - 18
                    local y = 12

                    renderer.rectangle(x - 10, y - 7, width + 20, height + 14, 0, 0, 0, 155)
                    renderer.rectangle(x - 10, y - 7, width + 20, 3, 255, 255, 255, 235)
                    renderer.text(x + 1, y + 1, 0, 0, 0, 180, flags, 0, text)
                    renderer.text(x, y, 255, 255, 255, 255, flags, 0, text)
                end
            end

            visuals.markers = {} do
                local list = {}

                function visuals.markers.receive(event)
                    if not config.visuals.damage_marker:get() or not player.alive then
                        return
                    end

                    local attacker = client.userid_to_entindex(event.attacker)
                    local target = client.userid_to_entindex(event.userid)

                    if not attacker or attacker ~= player.entindex or not target then
                        return
                    end

                    local x, y, z = entity.hitbox_position(target, event.hitgroup == 1 and 0 or 2)

                    if not x or not y or not z then
                        return
                    end

                    list[#list + 1] = {
                        position = vector(x, y, z),
                        damage = tonumber(event.dmg_health) or 0,
                        expires = globals.realtime() + 2
                    }

                    while #list > 16 do
                        table.remove(list, 1)
                    end
                end

                function visuals.markers.draw()
                    local now = globals.realtime()
                    local marker_color = color(config.visuals.damage_marker_color:get())

                    for i = #list, 1, -1 do
                        local marker = list[i]
                        local remaining = marker.expires - now

                        if remaining <= 0 then
                            table.remove(list, i)
                        else
                            local x, y = renderer.world_to_screen(
                                marker.position.x,
                                marker.position.y,
                                marker.position.z + (2 - remaining) * 25
                            )

                            if x and y then
                                local alpha = mathx.clamp(remaining < 0.5 and remaining * 2 or 1, 0, 1)
                                renderer.text(x, y, marker_color.r, marker_color.g, marker_color.b, marker_color.a * alpha, 'bc', 0, tostring(marker.damage))
                            end
                        end
                    end
                end
            end

            visuals.draw_markers = function(self)
                if config.visuals.damage_marker:get() then
                    self.markers.draw()
                end
            end

            visuals.draw_forced_watermark = (function ()
                screen_size = vector(client.screen_size())
                screen_center = screen_size * 0.5

                if user.debug then
                    local str = inspect(antiaimbot.main.debug):gsub('\t', ('\x20'):rep(4))

                    renderer.text(50, screen_size.y / 4 + 100, 255, 255, 255, 255, '', 0, str)
                end

                renderer.text(screen_center.x, screen_size.y - 20, 255, 255, 255, 255, 'c', 0, brand.tag)
            end)

            function visuals:player_hurt(event)
                if not player.alive then
                    return
                end

                self.markers.receive(event)
            end

            function visuals:paint()
                self:draw_markers()
            end

            function visuals:paint_ui()
                self.changers.apply()
                self:draw_forced_watermark()
                self.watermark.draw()
            end
        end
    end

    local miscellaneous do
        config.miscellaneous = {} do
            config.miscellaneous.clantag = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Clantag")
                :record("miscellaneous", "clantag")
                :save()

            config.miscellaneous.super_toss = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Super toss on grenade release")
                :record("miscellaneous", "super_toss")
                :save()

            config.miscellaneous.fakeduck_helper = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Allow crouch on fakeduck")
                :record("miscellaneous", "fakeduck_helper")
                :save()

            config.miscellaneous.auto_lc_break = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Auto lc break")
                :record("miscellaneous", "auto_lc_break")
                :save()

            config.miscellaneous.auto_lc_break_weapons = menu.new_item(ui.new_multiselect, "AA", "Anti-aimbot angles", "Auto lc break: Weapons", {
                "Auto",
                "Scout",
                "AWP",
                "Pistols",
                "Taser",
                "Knife"
            }):record("miscellaneous", "auto_lc_break_weapons"):save()

            config.miscellaneous.auto_lc_break_delay = menu.new_item(ui.new_slider, "AA", "Anti-aimbot angles", "Auto lc break", 1, 6, 2, true, "t", 1)
                :record("miscellaneous", "auto_lc_break_delay")
                :save()
                
            config.miscellaneous.trashtalk = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Trashtalk")
                :record("miscellaneous", "trashtalk")
                :save()
            
            config.miscellaneous.custom_output = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Custom output")
                :record("miscellaneous", "custom_output")
                :save()
                
            config.miscellaneous.event_logger = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Logging system")
                :record("miscellaneous", "event_logger")
                :save()

            config.miscellaneous.logging_output = menu.new_item(ui.new_multiselect, "AA", "Anti-aimbot angles", "Logging: Output", {
                "Console",
                "On screen"
            }):record("miscellaneous", "logging_output"):save()

            config.miscellaneous.logging_color = menu.new_item(ui.new_color_picker, "AA", "Anti-aimbot angles", "Logging: Color", 255, 255, 255, 255)
                :record("miscellaneous", "logging_color")
                :save()

            config.miscellaneous.fps_boost = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "FPS boost")
                :record("miscellaneous", "fps_boost")
                :save()

            config.miscellaneous.console_filter = menu.new_item(ui.new_checkbox, "AA", "Anti-aimbot angles", "Console filter")
                :record("miscellaneous", "console_filter")
                :save()
        end

        miscellaneous = {} do
            miscellaneous.clantag = {} do
                function miscellaneous.clantag.reset()
                    for i=1, 64 do
                        client.set_clan_tag('')
                    end        
                end

                function miscellaneous.clantag.build_tag(text)
                    local prefix = '\t'
                    local suffix = '\t'

                    local temp = {}
                    local len = #text

                    if len < 2 then
                        temp[#temp+1] = text
                        return temp
                    end

                    for i = 1, 8 do
                        temp[#temp+1] = string.format('%s%s%s', prefix, text, suffix)
                    end

                    for i = 1, len do
                        local part = text:sub(i, len)
                        temp[#temp+1] = string.format('%s%s%s', prefix, part, suffix)
                    end

                    temp[#temp+1] = string.format('%s%s', prefix, suffix)

                    for i = mathx.min(2, len), len do
                        local part = text:sub(1, i)
                        temp[#temp+1] = string.format('%s%s%s', prefix, part, suffix)
                    end

                    for i = 1, 4 do
                        temp[#temp+1] = string.format('%s%s%s', prefix, text, suffix)
                    end

                    return temp
                end

                local text = brand.tag
                local cache = ''
                local chars = miscellaneous.clantag.build_tag(text)
                local restored = false

                function miscellaneous.clantag:run()
                    if not config.miscellaneous.clantag:get() then
                        if not restored then
                            client.set_clan_tag('')

                            restored = true
                        end

                        return
                    end

                    restored = false

                    local latency_out = client.latency()
                    local lock, game_rules = false, entity.get_game_rules()

                    if game_rules ~= nil then
                        local game_phase = entity.get_prop(game_rules, 'm_gamePhase')

                        lock = game_phase == 4 or game_phase == 5
                    end

                    local latency = latency_out / globals.tickinterval()
                    local predicted = globals.tickcount() + latency

                    local idx = mathx.round(predicted * 0.0625) % #chars + 1

                    local target_text = lock and string.format('%s\t', text) or chars[idx]

                    if target_text == cache then
                        return
                    end

                    client.set_clan_tag(target_text)

                    cache = target_text
                end
            end

            miscellaneous.tweaks = {} do
                miscellaneous.tweaks.st_reset = false

                function miscellaneous.tweaks.super_toss()
                    local grenade_release_held = tablex.is_hotkey_active(reference.misc.grenade_release)

                    if grenade_release_held then
                        override.set(reference.misc.grenade_toss, true)

                        miscellaneous.tweaks.st_reset = true
                    else
                        override.unset(reference.misc.grenade_toss)
                    end
                end

                miscellaneous.tweaks.fd_reset = false

                function miscellaneous.tweaks.fakeduck_helper(cmd)
                    local state = false

                    if cmd.in_duck == 1 then
                        if player.duckamount > 0.8 then
                            state = true
                        end
                    end

                    local active, mode = ui.get(reference.ragebot.fakeduck)

                    if active and state then
                        local mode_new = 'Off hotkey'

                        if mode == 2 or mode == 3 then
                            mode_new = 'On hotkey'
                        end

                        override.set(reference.ragebot.fakeduck, mode_new)
                        miscellaneous.tweaks.fd_reset = false
                    elseif not state then
                        if not miscellaneous.tweaks.fd_reset then
                            override.unset(reference.ragebot.fakeduck)
                            miscellaneous.tweaks.fd_reset = true
                        end
                    end
                end
            end

            miscellaneous.auto_lc_break = {} do
                local weapon_index = {
                    ['Auto Snipers'] = { 38, 11 },
                    ['Pistols'] = { 4, 63, 36, 3, 1, 64, 2, 30, 61, 32 },
                    ['Scout'] = { 40 },
                    ['AWP'] = { 9 },
                    ['Taser'] = { 31 }
                }

                local delay = 0
                local cooldown_until = 0
                local last_full = 0

                miscellaneous.auto_lc_break.reset = false

                local function clear_override()
                    if miscellaneous.auto_lc_break.reset then
                        override.unset(reference.ragebot.doubletap.enable[2])
                        miscellaneous.auto_lc_break.reset = false
                    end
                end

                miscellaneous.auto_lc_break.trace_thread = function (me, threat)
                    if not me or not threat or not entity.is_alive(me) or not entity.is_alive(threat) then
                        return false
                    end

                    local player_resource = entity.get_player_resource()

                    if not player_resource then
                        return false
                    end

                    local ping = tonumber(entity.get_prop(player_resource, 'm_iPing', threat)) or 0
                    local ticks_to_extrapolate = math.max(5, toticks((ping * (ping <= 10 and 2 or 1.75)) * 0.001))
                    local target_position = entity.hitbox_position(threat, 5)
                    local local_position = entity.hitbox_position(me, 4)

                    if not target_position or not local_position then
                        return false
                    end

                    local target = vector(target_position)
                    local local_origin = mathx.extrapolate(me, vector(local_position), ticks_to_extrapolate)
                    local entindex, damage = client.trace_bullet(threat, target.x, target.y, target.z, local_origin.x, local_origin.y, local_origin.z)

                    if not entindex or entindex == -1 or not damage or damage <= 0 then
                        return false
                    end

                    return entity.get_classname(entindex) ~= 'CWorld'
                end

                function miscellaneous.auto_lc_break.run(me, wpn)
                    local now = globals.realtime()

                    if now >= cooldown_until then
                        clear_override()
                    end

                    if now < cooldown_until then
                        return true
                    end

                    if not me or not entity.is_alive(me) or player.onground or player.speed < 100 or not player:get_double_tap() then
                        delay = 0
                        return false
                    end

                    local threat = client.current_threat()

                    if not threat or entity.is_dormant(threat) or not wpn then
                        delay = 0
                        return false
                    end

                    local wpn_info = csgo_weapons(wpn)

                    if not wpn_info then
                        delay = 0
                        return false
                    end

                    local selected_weapons = config.miscellaneous.auto_lc_break_weapons:get()
                    local active_weapon_id = wpn_info.idx
                    local should_run, selected_knife = false, false

                    if type(selected_weapons) ~= 'table' then
                        selected_weapons = {}
                    end

                    for _, weapon in ipairs(selected_weapons) do
                        local ids = weapon_index[weapon]

                        if ids then
                            for _, id in ipairs(ids) do
                                if id == active_weapon_id then
                                    should_run = true
                                    break
                                end
                            end
                        elseif weapon == 'Knife' then
                            selected_knife = true
                        end

                        if should_run then
                            break
                        end
                    end

                    if not should_run and selected_knife then
                        should_run = wpn_info.is_melee_weapon
                    end

                    if not should_run then
                        delay = 0
                        return false
                    end

                    if miscellaneous.auto_lc_break.trace_thread(me, threat) then
                        delay = delay + 1

                        local limit = math.max(1, config.miscellaneous.auto_lc_break_delay:get())

                        if delay >= limit then
                            cooldown_until = now + 0.5
                            delay = 0
                            override.set(reference.ragebot.doubletap.enable[2], 'On hotkey', 0x0)
                            miscellaneous.auto_lc_break.reset = true
                        end

                        last_full = now
                        return true
                    end

                    delay = 0
                    last_full = now
                    return false
                end
            end

            miscellaneous.trashtalk = {} do
                local counter = 0
                local list = {
                    ['head'] = {
                        'слабак / вставай с земли хватит жрать ее',
                        'здарова / хач ебанный',
                        'как же ты сочно отлетел / с луасенсом играешь что ли?',
                        '1 / ну и слабый / оправдайся',
                        'моя жопа срет на лицо твоей матери /  дай реакцию',
                        'отрицай в хуй / родным языком',
                        '1 / че ебырю после минета?',
                        '1 / ',
                        '1 / прокляни маму моим ником',
                        'с самокритикуй себя на дике / вопрос ебырю',
                        'ммм наивный / 1 хуесос',
                        'че ты там чавкаешь пиздой / сиди молча'
                    },
                    ['body'] = {
                        'я твою мать ебал / хуесос слабый',
                        'хахаха пидор зацени айди / @luaflux',
                        'че хуйня / получила по жопе?',
                        'я тоби кохаю / и стреляю в боди',
                        'бам в бодюху / чмо ебаное',
                        'как же я тебя обоссал / санный бомж',
                        '? / what you do dog?',
                        'нищая хуйня / куда ты поползла',
                        'скули чмо в хуй папе / оправдайся языком по пенису',
                        'ммм наивный / 1 хуесос',
                        'ты читаешься как книга / слишком хуевый для меня',
                        'ебучая тварина / в следующий раз будь умнее) ',
                        'сын педика / снова совершил ошибку',
                        'че шнырь ебаный / ты там ниче не перепутал?',
                        'uid 2495  / nickname: hate / i have a ban from gamesense.pub'
                    },
                    ['taser'] = {
                        'ШЛЮХА НА ЗЕВСЕ ХАХАХАХА',
                        'ебал твою мать без гондона / она кайфанула)',
                        'шлюха на зевсе / че деду?',
                        'слабенько както',
                        'слабак на зевсе'
                    },
                    ['inferno'] = {
                        'сгорел пидорас ебаный',
                        'че смок тяжело кинуть аутист',
                        'гори в аду как и твоя бабка нацистка',
                        'педик лети к матери в гроб',
                        'ЫАХЫЗАЗХЫАЗХЫ / ИГРОК'
                    },
                    ['hegrenade'] = {
                        'взорван на хае / жаль что не от моего хуя :DDDD',
                        'КЛЯНУСЬ АЛЛАХОМ ТЫ УМЕР ОТ МОЕЙ СПЕРМЫ ',
                        'сколько ты раз еще будешь подрываться? / п'
                    },
                    ['death'] = {
                        'пидорас / и че ты сделал',
                        'ало админы забаньте его',
                        'мне кажется ты с гмом',
                        'НЕ НУ ЭТО НАГЛОСТЬ / 5х5 рн на 2к евро?',
                        'а бля меня сервер встопил к хуям',
                        'аааааа',
                        'червяк ебанный / 3х3 на 10к баксов слетаем моча?',
                        'ну ахуенно / опять в ньюкамера миссаю'
                    },
                    ['revenge'] = {
                        '1'
                    }
                }
                local active = false

                local attacker_index = -1

                function miscellaneous.trashtalk.run(type)
                    if not config.miscellaneous.trashtalk:get() then
                        return
                    end

                    local game_rules = entity.get_game_rules()
                    local is_warmup = game_rules and entity.get_prop(game_rules, 'm_bWarmupPeriod') == 1

                    if is_warmup then
                        return
                    end

                    local phrase_list = list[type]

                    if not phrase_list or active then
                        return
                    end

                    local delay = 0
                    local phrase = phrase_list[counter % #phrase_list + 1]
                    local active_pool = {}

                    for piece in phrase:gmatch('[^/]+') do
                        piece = piece:gsub('^%s+', ''):gsub('%s+$', '')
                        if piece ~= '' then
                            active_pool[#active_pool + 1] = piece
                        end
                    end

                    active = true

                    for i = 1, #active_pool do
                        local phrase_piece = active_pool[i]
                        local message = phrase_piece:gsub('"', '')
                        local size = #message
                        local new_delay = delay + size * 0.07
                        local is_last = i == #active_pool

                        client.delay_call(new_delay, function()
                            client.exec('say "' .. message .. '"')

                            if is_last then
                                active = false
                            end
                        end)

                        delay = new_delay
                    end
                    counter = counter + 1
                end

                function miscellaneous.trashtalk:on_kill(event)
                    if not config.miscellaneous.trashtalk:get() then
                        return
                    end

                    if list[event.weapon] then
                        self.run(event.weapon)
                    else
                        self.run(event.headshot and 'head' or 'body')
                    end
                end

                function miscellaneous.trashtalk:on_death(event)
                    attacker_index = client.userid_to_entindex(event.attacker) or -1
                    self.run('death')
                end

                function miscellaneous.trashtalk:on_player_death(event)
                    if event.userid == attacker_index then
                        self.run('revenge')
                        attacker_index = -1
                    end
                end
            end

            miscellaneous.custom_output = {} do
                local list = {}

                miscellaneous.custom_output.paint_ui = (function (ctx)
                    if #list == 0 then
                        return
                    end

                    local hs = select(2, surface.get_text_size(constants.fonts.lucida , 'A'))
                    local x, y, size = 8, 5, hs
                    local console_color = color(config.visuals.console_color:get())

                    for i=1, #list do
                        local notify = list[i]

                        if notify then
                            notify.m_time = notify.m_time - globals.frametime()

                            if notify.m_time <= 0.0 then
                                table.remove(list, i)
                            end
                        end
                    end

                    if #list == 0 then
                        return
                    end

                    while #list > 8 do
                        table.remove(list, 1)
                    end

                    for i=1, #list do
                        local notify = list[i]
                        local left = notify.m_time
                        local ncolor = notify.m_color

                        if left < 0.5 then
                            local fl = mathx.clamp(left, 0.0, 0.5)

                            ncolor.a = fl * 255.0

                            if i == 1 and fl < 0.2 then
                                y = y - size * (1.0 - fl * 5)
                            end
                        else
                            ncolor.a = 255
                        end

                        local txt = notify.m_text
                        local slist = color.string_to_color_array(string.format('\a%s%s', ncolor:to_hex(), txt))

                        local w_o = 0

                        for j=1, #slist do
                            local obj = slist[j]

                            obj.text = obj.text:gsub('\1', '')

                            local this_w = surface.get_text_size(constants.fonts.lucida, obj.text)

                            surface.draw_text(x + w_o, y, console_color.r, console_color.g, console_color.b, console_color.a * ncolor.a / 255, constants.fonts.lucida, obj.text)

                            w_o = w_o + this_w
                        end

                        y = y + size
                    end
                end)

                local skip_line

                function miscellaneous.custom_output.output(output)
                    local text_to_draw = output.text

                    local clr = color(output.r, output.g, output.b, output.a)

                    if text_to_draw:find('\0') then
                        text_to_draw = text_to_draw:sub(1, #text_to_draw-1)
                    end

                    if skip_line then
                        if list[#list] then
                            list[#list].m_text = string.format('%s%s', list[#list].m_text, string.format('\a%s%s', clr:to_hex(), text_to_draw))
                        else
                            list[#list+1] = {
                                m_text = text_to_draw,
                                m_color = clr,
                                m_time = 8.0
                            }
                        end

                        skip_line = false
                    else
                        for str in text_to_draw:gmatch('([^\n]+)') do
                            list[#list+1] = {
                                m_text = str,
                                m_color = clr,
                                m_time = 8.0
                            }
                        end
                    end

                    local has_ignore_newline = output.text:find('\0')

                    if has_ignore_newline ~= nil then
                        skip_line = true
                    end
                end
            end

            miscellaneous.logging = {} do
                local queue = {}

                function miscellaneous.logging.push(text)
                    if not config.miscellaneous.event_logger:get() then
                        return
                    end

                    local outputs = config.miscellaneous.logging_output:get()
                    local console_enabled = #outputs == 0 or tablex.contains(outputs, 'Console')
                    local screen_enabled = tablex.contains(outputs, 'On screen')
                    local formatted = brand.prefix .. ' ' .. text

                    if console_enabled then
                        logger.hitlog(text)
                    end

                    if screen_enabled then
                        queue[#queue + 1] = { text = formatted, expires = globals.realtime() + 5 }
                    end
                end

                function miscellaneous.logging.paint_ui()
                    if #queue == 0 then
                        return
                    end

                    local now = globals.realtime()
                    local r, g, b, a = config.miscellaneous.logging_color:get()
                    local screen = vector(client.screen_size())
                    local y = screen.y * 0.5 + 52

                    for i = #queue, 1, -1 do
                        if queue[i].expires <= now then
                            table.remove(queue, i)
                        end
                    end

                    for i = 1, #queue do
                        local item = queue[i]
                        local alpha = mathx.clamp(item.expires - now < 0.5 and (item.expires - now) * 2 or 1, 0, 1)
                        local _, height = renderer.measure_text('-', item.text)
                        renderer.text(screen.x * 0.5, y, r, g, b, a * alpha, 'c', 0, item.text)
                        y = y + height + 4
                    end
                end
            end

            miscellaneous.fps_boost = {} do
                local saved = {}
                local cvars = { 'mat_queue_mode', 'r_dynamic', 'r_3dsky', 'cl_disablehtmlmotd' }

                local function apply(name, value)
                    local cv = cvar[name]
                    if not cv then
                        return
                    end
                    if saved[name] == nil then
                        saved[name] = tonumber(cv:get_string()) or 0
                    end
                    cv:set_raw_int(value)
                end

                function miscellaneous.fps_boost.update()
                    if config.miscellaneous.fps_boost:get() then
                        apply('mat_queue_mode', 2)
                        apply('r_dynamic', 0)
                        apply('r_3dsky', 0)
                        apply('cl_disablehtmlmotd', 1)
                    else
                        miscellaneous.fps_boost.restore()
                    end
                end

                function miscellaneous.fps_boost.restore()
                    for name, value in pairs(saved) do
                        local cv = cvar[name]
                        if cv then
                            cv:set_raw_int(value)
                        end
                        saved[name] = nil
                    end
                end
            end

            miscellaneous.event_logger = {} do
                local cache = {}
                local hitgroups = {
                    'body',
                    'head',
                    'chest',
                    'stomach',
                    'left arm',
                    'right arm',
                    'left leg',
                    'right leg',
                    'neck',
                    '?',
                    'gear'
                }

                function miscellaneous.event_logger.aim_fire(event)
                    local this = {
                        tick = event.tick,
                        timestamp = client.timestamp(),
                        wanted_damage = event.damage,
                        wanted_hit_chance = event.hit_chance,
                        wanted_hitgroup = event.hitgroup
                    }

                    cache[event.id] = this
                end

                function miscellaneous.event_logger.aim_hit(event)
                    local cached = cache[event.id]

                    if not cached then
                        return
                    end

                    local backtrack = (globals.tickcount() - (cached.tick or globals.tickcount()))
                    local register_delay = (client.timestamp() or 0) - (cached.timestamp or 0)
                    local name = entity.get_player_name(event.target) or 'player'
                    local hitgroup_id = tonumber(event.hitgroup) or 0
                    local hitgroup = hitgroups[hitgroup_id + 1] or '?'
                    local damage = tonumber(event.damage) or 0
                    local wanted_damage = tonumber(cached.wanted_damage) or damage
                    local damage_text = damage ~= wanted_damage and string.format('%d(%d)', damage, wanted_damage) or tostring(damage)
                    local logger_text = string.format('Hit %s (%s) | for dmg :%s | %dt | delay: %d ms',
                        name,
                        hitgroup,
                        damage_text,
                        backtrack,
                        register_delay
                    )

                    miscellaneous.logging.push(logger_text)
                end

                function miscellaneous.event_logger.aim_miss(event)
                    local cached = cache[event.id]

                    if not cached then
                        return
                    end

                    local backtrack = globals.tickcount() - (cached.tick or globals.tickcount())
                    local register_delay = (client.timestamp() or 0) - (cached.timestamp or 0)
                    local name = entity.get_player_name(event.target) or 'player'
                    local hitgroup_id = tonumber(event.hitgroup) or 0
                    local hitgroup = hitgroups[hitgroup_id + 1] or '?'
                    local reason = event.reason or 'unknown'
                    local wanted_damage = tonumber(cached.wanted_damage) or 0
                    local logger_text = string.format('Miss %s (%s) for %s | dmg :%d | %dt | delay: %d ms',
                        name,
                        reason,
                        hitgroup,
                        wanted_damage,
                        backtrack,
                        register_delay
                    )

                    miscellaneous.logging.push(logger_text)
                end

                local hurt_weapons = {
                    ['knife'] = 'Knifed';
                    ['hegrenade'] = 'Naded';
                    ['inferno'] = 'Burned';
                }

                function miscellaneous.event_logger.player_hurt(event)
                    local attacker = client.userid_to_entindex(event.attacker)

                    if not attacker or attacker ~= entity.get_local_player() then
                        return
                    end

                    local target = client.userid_to_entindex(event.userid)

                    if not target then
                        return
                    end

                    local wpn_type = hurt_weapons[event.weapon]

                    if not wpn_type then
                        return
                    end

                    local name = entity.get_player_name(target)
                    local damage = event.dmg_health

                    local logger_text = string.format('%s %s for %d damage',
                        wpn_type,
                        name,
                        tonumber(damage)
                    )

                    miscellaneous.logging.push(logger_text)
                end
            end

            function miscellaneous:setup_command(cmd, me, wpn)
                local fakeduck_helper_enabled = config.miscellaneous.fakeduck_helper:get()

                if fakeduck_helper_enabled then
                    self.tweaks.fakeduck_helper(cmd)
                elseif self.tweaks.fd_reset then
                    override.unset(reference.ragebot.fakeduck)
                    self.tweaks.fd_reset = false
                end

                if config.miscellaneous.auto_lc_break:get() then
                    self.auto_lc_break.run(me, wpn)
                elseif self.auto_lc_break.reset then
                    override.unset(reference.ragebot.doubletap.enable[2])
                    self.auto_lc_break.reset = false
                end
            end

            function miscellaneous:aim_fire(event)
                self.event_logger.aim_fire(event)
            end

            function miscellaneous:aim_hit(event)
                self.event_logger.aim_hit(event)
            end

            function miscellaneous:aim_miss(event)
                self.event_logger.aim_miss(event)
            end

            function miscellaneous:player_death(event)
                local attacker = client.userid_to_entindex(event.attacker)
                local userid = client.userid_to_entindex(event.userid)

                if not attacker or not userid then
                    return
                end

                if attacker == player.entindex then
                    if userid ~= player.entindex then
                        self.trashtalk:on_kill(event)
                    end
                elseif userid == player.entindex then
                    self.trashtalk:on_death(event)
                else
                    self.trashtalk:on_player_death(event)
                end
            end

            function miscellaneous:player_hurt(event)
                self.event_logger.player_hurt(event)
            end

            function miscellaneous:net_update_end()
                self.clantag:run()
            end

            function miscellaneous:paint_ui()
                local super_toss_enabled = config.miscellaneous.super_toss:get()

                if super_toss_enabled then
                    self.tweaks.super_toss()
                elseif miscellaneous.tweaks.st_reset then
                    override.unset(reference.misc.grenade_toss)
                    miscellaneous.tweaks.st_reset = false
                end

                self.fps_boost.update()
                self.logging.paint_ui()
                self.custom_output.paint_ui()
            end

            function miscellaneous.output_raw(output)
                miscellaneous.custom_output.output(output)
            end

            config.miscellaneous.custom_output:set_callback(function (element)
                local enabled = ui.get(element)

                if enabled and not miscellaneous._output_set then
                    client.set_event_callback('output', miscellaneous.output_raw)

                    miscellaneous._output_set = true
                elseif not enabled and miscellaneous._output_set then
                    client.unset_event_callback('output', miscellaneous.output_raw)

                    miscellaneous._output_set = false
                end

                if enabled then
                    override.set(reference.misc.draw_output, false)
                else
                    override.unset(reference.misc.draw_output)
                end
            end, true)

            config.miscellaneous.console_filter:set_callback(function (element)
                local enabled = ui.get(element)

                if enabled then
                    client.exec('con_filter_enable 1;con_filter_text "\a";')
                else
                    client.exec('con_filter_enable 0;con_filter_text "";')
                end
            end, true)
        end
    end

    local settings do
        config.settings = {} do
            config.settings.list = menu.new_item(ui.new_listbox, "AA", "Anti-aimbot angles", "Configs", {"default"})
                :config_ignore()
            config.settings.name = menu.new_item(ui.new_textbox, "AA", "Anti-aimbot angles", "Name")
                :config_ignore()

            config.settings.load = menu.new_item(ui.new_button, "AA", "Anti-aimbot angles", "Load", function () end)
                :config_ignore()
            config.settings.create = menu.new_item(ui.new_button, "AA", "Anti-aimbot angles", "Create", function () end)
                :config_ignore()
            config.settings.save = menu.new_item(ui.new_button, "AA", "Anti-aimbot angles", "Save", function () end)
                :config_ignore()
            config.settings.remove = menu.new_item(ui.new_button, "AA", "Anti-aimbot angles", "Delete", function () end)
                :config_ignore()
            config.settings.export = menu.new_item(ui.new_button, "AA", "Anti-aimbot angles", "Export", function () end)
                :config_ignore()
            config.settings.import = menu.new_item(ui.new_button, "AA", "Anti-aimbot angles", "Import", function () end)
                :config_ignore()
        end

        settings = {} do
            local default_name = 'default'
            local database_name = brand.database_prefix .. '_configs'
            local default_data = "fluxgs_eyJidWlsZGVyIjp7IkFBOjpTdGFuZGluZzo6Sml0dGVyVmFsdWUiOlswXSwiQUE6OlN0YW5kaW5nOjpZYXdCYXNlIjpbIkxvY2FsIHZpZXciXSwiQUE6OkFpciAmIENyb3VjaDo6WWF3U3dpdGNoRGVsYXlTZWNvbmQiOls2XSwiQUE6OkFpciAmIENyb3VjaDo6UGl0Y2hDdXN0b20iOlswXSwiQUE6Ok1vdmluZzo6UGl0Y2giOlsiT2ZmIl0sIkFBOjpGYWtlIGxhZzo6WWF3QmFzZSI6WyJMb2NhbCB2aWV3Il0sIkFBOjpDcm91Y2hpbmc6OkppdHRlclJhbmRvbWl6ZSI6WzBdLCJBQTo6U2xvdy1tb3Rpb246Ollhd0RlbGF5ZWRTd2l0Y2giOltmYWxzZV0sIkFBOjpBaXI6Ollhd0Jhc2UiOlsiTG9jYWwgdmlldyJdLCJBQTo6RmFrZSBsYWc6OkJvZHlWYWx1ZSI6WzBdLCJBQTo6U3RhbmRpbmc6OkVuYWJsZWQiOltmYWxzZV0sIkFBOjpGYWtlIGxhZzo6WWF3Sml0dGVyIjpbIk9mZiJdLCJBQTo6QWlyOjpZYXdTcGVlZCI6WzVdLCJBQTo6U3RhbmRpbmc6Ollhd1JpZ2h0IjpbMF0sIkFBOjpHbG9iYWw6Ollhd0N1c3RvbSI6WzBdLCJBQTo6U3RhbmRpbmc6OlBpdGNoIjpbIk9mZiJdLCJBQTo6U3RhbmRpbmc6Ollhd0RlbGF5ZWRTd2l0Y2giOltmYWxzZV0sIkFBOjpHbG9iYWw6Ollhd1N3aXRjaERlbGF5U2Vjb25kIjpbNl0sIkFBOjpDcm91Y2hpbmc6Ollhd0xlZnQiOlswXSwiQUE6OkNyb3VjaGluZzo6WWF3VHlwZSI6WyJPZmYiXSwiQUE6OkNyb3VjaCBtb3Zpbmc6OkppdHRlclZhbHVlIjpbMF0sIkFBOjpGYWtlIGxhZzo6Sml0dGVyVmFsdWUiOlswXSwiQUE6Ok1vdmluZzo6Qm9keVlhdyI6WyJPZmYiXSwiQUE6OkNyb3VjaCBtb3Zpbmc6Ollhd1NwZWVkIjpbNV0sIkFBOjpBaXI6Ollhd0RlbGF5ZWRTd2l0Y2giOltmYWxzZV0sIkFBOjpDcm91Y2ggbW92aW5nOjpCb2R5WWF3IjpbIk9mZiJdLCJBQTo6R2xvYmFsOjpZYXdKaXR0ZXIiOlsiT2ZmIl0sIkFBOjpBaXI6Ollhd0RlbGF5IjpbNV0sIkFBOjpDcm91Y2hpbmc6OkVuYWJsZWQiOltmYWxzZV0sIkFBOjpNb3Zpbmc6Ollhd0N1c3RvbSI6WzBdLCJBQTo6RmFrZSBsYWc6OlBpdGNoIjpbIk9mZiJdLCJBQTo6U3RhbmRpbmc6OkJvZHlZYXciOlsiT2ZmIl0sIkFBOjpGYWtlIGxhZzo6WWF3TGVmdCI6WzBdLCJBQTo6U2xvdy1tb3Rpb246Ollhd0N1c3RvbSI6WzBdLCJBQTo6RmFrZSBsYWc6Ollhd1JpZ2h0IjpbMF0sIkFBOjpBaXIgJiBDcm91Y2g6Ollhd1R5cGUiOlsiT2ZmIl0sIkFBOjpBaXI6OlBpdGNoQ3VzdG9tIjpbMF0sIkFBOjpDcm91Y2ggbW92aW5nOjpZYXdMZWZ0IjpbMF0sIkFBOjpDcm91Y2ggbW92aW5nOjpZYXdTd2l0Y2hEZWxheVNlY29uZCI6WzZdLCJBQTo6TW92aW5nOjpZYXdSaWdodCI6WzBdLCJBQTo6TW92aW5nOjpKaXR0ZXJWYWx1ZSI6WzBdLCJBQTo6QWlyOjpCb2R5WWF3IjpbIk9mZiJdLCJBQTo6U2xvdy1tb3Rpb246Ollhd0xlZnQiOlswXSwiQUE6OlNsb3ctbW90aW9uOjpZYXdEZWxheSI6WzVdLCJBQTo6QWlyOjpZYXdUeXBlIjpbIk9mZiJdLCJBQTo6U3RhbmRpbmc6Ollhd0ppdHRlciI6WyJPZmYiXSwiQUE6OlN0YW5kaW5nOjpZYXdEZWxheSI6WzVdLCJBQTo6QWlyOjpKaXR0ZXJWYWx1ZSI6WzBdLCJBQTo6QWlyICYgQ3JvdWNoOjpZYXdTcGVlZCI6WzVdLCJBQTo6QWlyOjpFbmFibGVkIjpbZmFsc2VdLCJBQTo6RmFrZSBsYWc6OkVuYWJsZWQiOltmYWxzZV0sIkFBOjpTdGFuZGluZzo6WWF3U3dpdGNoRGVsYXkiOls2XSwiQUE6OkZha2UgbGFnOjpCb2R5WWF3IjpbIk9mZiJdLCJBQTo6Q3JvdWNoaW5nOjpQaXRjaCI6WyJPZmYiXSwiQUE6OkNyb3VjaGluZzo6WWF3U3dpdGNoRGVsYXkiOls2XSwiQUE6OkFpciAmIENyb3VjaDo6Sml0dGVyUmFuZG9taXplIjpbMF0sIkFBOjpNb3Zpbmc6Ollhd1N3aXRjaERlbGF5IjpbNl0sIkFBOjpHbG9iYWw6Ollhd1N3aXRjaERlbGF5IjpbNl0sIkFBOjpDcm91Y2ggbW92aW5nOjpKaXR0ZXJSYW5kb21pemUiOlswXSwiQUE6OkNyb3VjaGluZzo6WWF3RGVsYXkiOls1XSwiQUE6OkNyb3VjaGluZzo6UGl0Y2hDdXN0b20iOlswXSwiQUE6OkNyb3VjaCBtb3Zpbmc6OlBpdGNoIjpbIk9mZiJdLCJBQTo6U2xvdy1tb3Rpb246Ollhd1NwZWVkIjpbNV0sIkFBOjpBaXIgJiBDcm91Y2g6Ollhd0N1c3RvbSI6WzBdLCJBQTo6U3RhbmRpbmc6Ollhd0xlZnQiOlswXSwiQUE6OlN0YW5kaW5nOjpCb2R5VmFsdWUiOlswXSwiQUE6Okdsb2JhbDo6Qm9keVZhbHVlIjpbMF0sIkFBOjpDcm91Y2hpbmc6Ollhd0Jhc2UiOlsiTG9jYWwgdmlldyJdLCJBQTo6U2xvdy1tb3Rpb246Ollhd0Jhc2UiOlsiTG9jYWwgdmlldyJdLCJBQTo6RmFrZSBsYWc6Ollhd0RlbGF5ZWRTd2l0Y2giOltmYWxzZV0sIkFBOjpTbG93LW1vdGlvbjo6Sml0dGVyVmFsdWUiOlswXSwiQUE6OkZha2UgbGFnOjpQaXRjaEN1c3RvbSI6WzBdLCJBQTo6Q3JvdWNoIG1vdmluZzo6WWF3UmlnaHQiOlswXSwiQUE6OkZha2UgbGFnOjpZYXdTd2l0Y2hEZWxheSI6WzZdLCJBQTo6RmFrZSBsYWc6Ollhd1R5cGUiOlsiT2ZmIl0sIkFBOjpDcm91Y2ggbW92aW5nOjpZYXdDdXN0b20iOlswXSwiQUE6OkFpciAmIENyb3VjaDo6Qm9keVZhbHVlIjpbMF0sIkFBOjpHbG9iYWw6OlBpdGNoIjpbIk9mZiJdLCJBQTo6QWlyICYgQ3JvdWNoOjpZYXdTd2l0Y2hEZWxheSI6WzZdLCJBQTo6R2xvYmFsOjpCb2R5WWF3IjpbIk9mZiJdLCJBQTo6TW92aW5nOjpZYXdEZWxheSI6WzVdLCJBQTo6Q3JvdWNoaW5nOjpCb2R5VmFsdWUiOlswXSwiQUE6OkNyb3VjaCBtb3Zpbmc6Ollhd0Jhc2UiOlsiTG9jYWwgdmlldyJdLCJBQTo6Q3JvdWNoIG1vdmluZzo6WWF3VHlwZSI6WyJPZmYiXSwiQUE6OlNsb3ctbW90aW9uOjpQaXRjaEN1c3RvbSI6WzBdLCJBQTo6U2xvdy1tb3Rpb246Ollhd1N3aXRjaERlbGF5U2Vjb25kIjpbNl0sIkFBOjpDcm91Y2ggbW92aW5nOjpZYXdEZWxheSI6WzVdLCJBQTo6Q3JvdWNoIG1vdmluZzo6WWF3U3dpdGNoRGVsYXkiOls2XSwiQUE6OkFpcjo6Sml0dGVyUmFuZG9taXplIjpbMF0sIkFBOjpBaXI6Ollhd1N3aXRjaERlbGF5U2Vjb25kIjpbNl0sIkFBOjpNb3Zpbmc6Ollhd0Jhc2UiOlsiTG9jYWwgdmlldyJdLCJBQTo6R2xvYmFsOjpQaXRjaEN1c3RvbSI6WzBdLCJBQTo6RmFrZSBsYWc6OkppdHRlclJhbmRvbWl6ZSI6WzBdLCJBQTo6Q3JvdWNoIG1vdmluZzo6Qm9keVZhbHVlIjpbMF0sIkFBOjpTbG93LW1vdGlvbjo6UGl0Y2giOlsiT2ZmIl0sIkFBOjpDcm91Y2hpbmc6Ollhd0N1c3RvbSI6WzBdLCJBQTo6U2xvdy1tb3Rpb246OkppdHRlclJhbmRvbWl6ZSI6WzBdLCJBQTo6R2xvYmFsOjpZYXdSaWdodCI6WzBdLCJBQTo6Q3JvdWNoaW5nOjpZYXdTcGVlZCI6WzVdLCJBQTo6TW92aW5nOjpFbmFibGVkIjpbZmFsc2VdLCJBQTo6U3RhbmRpbmc6Ollhd1NwZWVkIjpbNV0sIkFBOjpDcm91Y2hpbmc6OkppdHRlclZhbHVlIjpbMF0sIkFBOjpDcm91Y2ggbW92aW5nOjpZYXdKaXR0ZXIiOlsiT2ZmIl0sIkFBOjpBaXI6Ollhd0xlZnQiOlswXSwiQUE6OkFpciAmIENyb3VjaDo6WWF3RGVsYXkiOls1XSwiQUE6Okdsb2JhbDo6WWF3TGVmdCI6WzBdLCJBQTo6U3RhbmRpbmc6OkppdHRlclJhbmRvbWl6ZSI6WzBdLCJBQTo6U2xvdy1tb3Rpb246Ollhd0ppdHRlciI6WyJPZmYiXSwiQUE6Ok1vdmluZzo6WWF3U3BlZWQiOls1XSwiQUE6Okdsb2JhbDo6WWF3VHlwZSI6WyJPZmYiXSwiQUE6OkFpciAmIENyb3VjaDo6WWF3Sml0dGVyIjpbIk9mZiJdLCJBQTo6TW92aW5nOjpQaXRjaEN1c3RvbSI6WzBdLCJBQTo6U2xvdy1tb3Rpb246OkVuYWJsZWQiOltmYWxzZV0sIkFBOjpDcm91Y2hpbmc6Ollhd1N3aXRjaERlbGF5U2Vjb25kIjpbNl0sIkFBOjpGYWtlIGxhZzo6WWF3RGVsYXkiOls1XSwiQUE6Ok1vdmluZzo6WWF3TGVmdCI6WzBdLCJBQTo6Q3JvdWNoIG1vdmluZzo6RW5hYmxlZCI6W2ZhbHNlXSwiQUE6OkFpcjo6WWF3UmlnaHQiOlswXSwiQUE6OlNsb3ctbW90aW9uOjpCb2R5WWF3IjpbIk9mZiJdLCJBQTo6QWlyOjpQaXRjaCI6WyJPZmYiXSwiQUE6Ok1vdmluZzo6WWF3VHlwZSI6WyJPZmYiXSwiQUE6OlNsb3ctbW90aW9uOjpCb2R5VmFsdWUiOlswXSwiQUE6Ok1vdmluZzo6Qm9keVZhbHVlIjpbMF0sIkFBOjpTdGFuZGluZzo6WWF3U3dpdGNoRGVsYXlTZWNvbmQiOls2XSwiQUE6Ok1vdmluZzo6WWF3RGVsYXllZFN3aXRjaCI6W2ZhbHNlXSwiQUE6OkZha2UgbGFnOjpZYXdDdXN0b20iOlswXSwiQUE6Okdsb2JhbDo6WWF3RGVsYXllZFN3aXRjaCI6W2ZhbHNlXSwiQUE6OkZha2UgbGFnOjpZYXdTd2l0Y2hEZWxheVNlY29uZCI6WzZdLCJBQTo6QWlyICYgQ3JvdWNoOjpZYXdCYXNlIjpbIkxvY2FsIHZpZXciXSwiQUE6Ok1vdmluZzo6WWF3U3dpdGNoRGVsYXlTZWNvbmQiOls2XSwiQUE6OlN0YW5kaW5nOjpZYXdDdXN0b20iOlswXSwiQUE6OlN0YW5kaW5nOjpZYXdUeXBlIjpbIk9mZiJdLCJBQTo6U2xvdy1tb3Rpb246Ollhd1JpZ2h0IjpbMF0sIkFBOjpDcm91Y2hpbmc6Ollhd1JpZ2h0IjpbMF0sIkFBOjpHbG9iYWw6OkppdHRlclZhbHVlIjpbMF0sIkFBOjpTdGFuZGluZzo6UGl0Y2hDdXN0b20iOlswXSwiQUE6Ok1vdmluZzo6WWF3Sml0dGVyIjpbIk9mZiJdLCJBQTo6R2xvYmFsOjpZYXdCYXNlIjpbIkxvY2FsIHZpZXciXSwiQUE6OkNyb3VjaGluZzo6WWF3RGVsYXllZFN3aXRjaCI6W2ZhbHNlXSwiQUE6OlNsb3ctbW90aW9uOjpZYXdUeXBlIjpbIk9mZiJdLCJBQTo6QWlyICYgQ3JvdWNoOjpFbmFibGVkIjpbZmFsc2VdLCJBQTo6Q3JvdWNoIG1vdmluZzo6WWF3RGVsYXllZFN3aXRjaCI6W2ZhbHNlXSwiQUE6Okdsb2JhbDo6WWF3U3BlZWQiOls1XSwiQUE6OkFpciAmIENyb3VjaDo6WWF3RGVsYXllZFN3aXRjaCI6W2ZhbHNlXSwiQUE6OkFpciAmIENyb3VjaDo6Qm9keVlhdyI6WyJPZmYiXSwiQUE6Okdsb2JhbDo6WWF3RGVsYXkiOls1XSwiQUE6OkFpciAmIENyb3VjaDo6Sml0dGVyVmFsdWUiOlswXSwiQUE6Ok1vdmluZzo6Sml0dGVyUmFuZG9taXplIjpbMF0sIkFBOjpDcm91Y2ggbW92aW5nOjpQaXRjaEN1c3RvbSI6WzBdLCJBQTo6QWlyICYgQ3JvdWNoOjpQaXRjaCI6WyJPZmYiXSwiQUE6OkFpcjo6WWF3Sml0dGVyIjpbIk9mZiJdLCJBQTo6Q3JvdWNoaW5nOjpCb2R5WWF3IjpbIk9mZiJdLCJBQTo6QWlyOjpZYXdTd2l0Y2hEZWxheSI6WzZdLCJBQTo6QWlyICYgQ3JvdWNoOjpZYXdMZWZ0IjpbMF0sIkFBOjpBaXI6Ollhd0N1c3RvbSI6WzBdLCJBQTo6Q3JvdWNoaW5nOjpZYXdKaXR0ZXIiOlsiT2ZmIl0sIkFBOjpBaXI6OkJvZHlWYWx1ZSI6WzBdLCJBQTo6RmFrZSBsYWc6Ollhd1NwZWVkIjpbNV0sIkFBOjpHbG9iYWw6OkppdHRlclJhbmRvbWl6ZSI6WzBdLCJBQTo6U2xvdy1tb3Rpb246Ollhd1N3aXRjaERlbGF5IjpbNl0sIkFBOjpBaXIgJiBDcm91Y2g6Ollhd1JpZ2h0IjpbMF19LCJ2aXN1YWxzIjp7ImRhbWFnZV9tYXJrZXIiOlt0cnVlXSwiZGFtYWdlX21hcmtlcl9jb2xvciI6WzI1NSwyNTUsMjU1LDI1NV0sImNvbnNvbGVfY29sb3IiOlsyNTUsMjU1LDI1NSwyNTVdLCJ3YXRlcm1hcmsiOltmYWxzZV0sImFzcGVjdF9yYXRpbyI6W2ZhbHNlXSwiYXNwZWN0X3JhdGlvX3ZhbHVlIjpbMTAwXSwidGhpcmRfcGVyc29uIjpbZmFsc2VdLCJ0aGlyZF9wZXJzb25fZGlzdGFuY2UiOlsxMDBdLCJ2aWV3bW9kZWwiOltmYWxzZV0sInZpZXdtb2RlbF9mb3YiOls2ODBdLCJ2aWV3bW9kZWxfeCI6WzI1XSwidmlld21vZGVsX3kiOlsyNV0sInZpZXdtb2RlbF96IjpbMjVdfSwiYW50aWFpbWJvdCI6eyJpZGVhbF90aWNrIjpbZmFsc2VdLCJhbmltYXRpb25fYnJlYWtlcl9haXIiOlsiV2Fsa2luZyJdLCJzYWZlX2hlYWRfY29uZGl0aW9ucyI6W1siQWlyIGtuaWZlIiwiQWlyIHpldXMiLCJBaXIgJiBDcm91Y2giLCJDcm91Y2ggbW92aW5nIiwiQ3JvdWNoaW5nIiwiU2xvdy1tb3Rpb24iLCJTdGFuZGluZyJdXSwic2FmZV9oZWFkIjpbdHJ1ZV0sIm9wdGlvbnMiOltbIk9uIHVzZSBhbnRpYWltIiwiRmFzdCBsYWRkZXIiXV0sIndhcm11cF9hYV9jb25kaXRpb25zIjpbWyJXYXJtdXAiLCJSb3VuZCBlbmQiXV0sImFuaW1hdGlvbl9icmVha2VyX2xlZyI6WyJXYWxraW5nIl0sIm1hbnVhbF9vcHRpb25zIjpbWyJKaXR0ZXIgZGlzYWJsZWQiXV0sImZyZWVzdGFuZGluZ19kaXNhYmxlcl9zdGF0ZXMiOltbIkFpciIsIkFpciAmIENyb3VjaCJdXSwid2FybXVwX2FhIjpbdHJ1ZV0sImFuaW1hdGlvbl9icmVha2VyX290aGVyIjpbWyJRdWljayBwZWVrIGxlZ3MiLCJQaXRjaCB6ZXJvIG9uIGxhbmQiXV0sImFuaW1hdGlvbl9icmVha2VyIjpbdHJ1ZV0sImlkZWFsX3RpY2tfaG90a2V5IjpbIk9uIGhvdGtleSJdLCJmc19vcHRpb25zIjpbWyJKaXR0ZXIgZGlzYWJsZWQiXV0sImJpbmRzIjpbdHJ1ZV0sImFudGlfa25pZmUiOltmYWxzZV0sImFudGlfa25pZmVfZGlzdGFuY2UiOlszMDBdfSwibWlzY2VsbGFuZW91cyI6eyJjbGFudGFnIjpbZmFsc2VdLCJ0cmFzaHRhbGsiOltmYWxzZV0sImNvbnNvbGVfZmlsdGVyIjpbdHJ1ZV0sImN1c3RvbV9vdXRwdXQiOlt0cnVlXSwiZXZlbnRfbG9nZ2VyIjpbdHJ1ZV0sImF1dG9fbGNfYnJlYWsiOltmYWxzZV0sImF1dG9fbGNfYnJlYWtfd2VhcG9ucyI6W1tdXSwiYXV0b19sY19icmVha19kZWxheSI6WzJdLCJzdXBlcl90b3NzIjpbZmFsc2VdLCJmYWtlZHVja19oZWxwZXIiOltmYWxzZV0sImxvZ2dpbmdfb3V0cHV0IjpbWyJDb25zb2xlIiwiT24gc2NyZWVuIl1dLCJsb2dnaW5nX2NvbG9yIjpbMjU1LDI1NSwyNTUsMjU1XSwiZnBzX2Jvb3N0IjpbZmFsc2VdfSwiZmFrZWxhZyI6eyJlbmFibGUiOlt0cnVlXSwidGlja3MiOlsxNF0sInR5cGUiOlsiUmFuZG9taXplIl19LCJyYWdlYm90Ijp7ImZvcmNlX2JvZHkiOltmYWxzZV0sImZvcmNlX2JvZHlfd2VhcG9ucyI6W1tdXSwiZm9yY2VfbGV0aGFsIjpbZmFsc2VdLCJmb3JjZV9sZXRoYWxfd2VhcG9ucyI6W1tdXSwiaGl0Y2hhbmNlIjpbZmFsc2VdLCJwcmVkaWN0IjpbZmFsc2VdLCJwcmVkaWN0X21vZGUiOlsiPDIwIHBpbmciXSwiaGl0Y2hhbmNlX2hvdGtleSI6WyJPbiBob3RrZXkiLDBdLCJoaXRjaGFuY2VfaW5kaWNhdG9yIjpbZmFsc2VdLCJjdXN0b21fcmVzb2x2ZXIiOltmYWxzZV0sInJlc29sdmVyX21vZGUiOlsiQmFsYW5jZWQiXSwiaGl0Y2hhbmNlX2F1dG9fc25pcGVycyI6WzUwXSwiaGl0Y2hhbmNlX2Rlc2VydF9lYWdsZSI6WzUwXSwiaGl0Y2hhbmNlX3Jldm9sdmVyX3I4IjpbNTBdLCJoaXRjaGFuY2VfcGlzdG9scyI6WzUwXSwiaGl0Y2hhbmNlX3Njb3V0IjpbNTBdLCJoaXRjaGFuY2VfYXdwIjpbNTBdLCJoaXRjaGFuY2Vfd2VhcG9uIjpbIlBpc3RvbHMiXSwiZm9yY2VfdGVhbW1hdGUiOltmYWxzZV19LCJiaW5kcyI6eyJyaWdodCI6WyJPbiBob3RrZXkiXSwibGVmdCI6WyJPbiBob3RrZXkiXSwiYmFja3dhcmQiOlsiT24gaG90a2V5Il0sImVkZ2UiOlsiT24gaG90a2V5Il0sImZvcndhcmQiOlsiT24gaG90a2V5Il0sInJlc2V0IjpbIk9uIGhvdGtleSJdLCJmcmVlc3RhbmRpbmciOlsiT24gaG90a2V5Il19fQ=="
            local list = {}

            local function clean_name(value)
                local name = tostring(value or '')
                name = name:gsub('[\r\n]', ''):gsub('^%s+', ''):gsub('%s+$', '')

                if name == '' then
                    return nil
                end

                return name
            end

            local function find(name)
                for i = 1, #list do
                    if list[i].name == name then
                        return list[i], i
                    end
                end
            end

            local function selected_index()
                return (config.settings.list:rawget() or 0) + 1
            end

            local function selected_name()
                local selected = list[selected_index() - 1]

                if selected then
                    return selected.name
                end

                return default_name
            end

            local function update_list()
                local names = {default_name}

                for i = 1, #list do
                    names[#names + 1] = list[i].name
                end

                ui.update(config.settings.list:get_ref(), names)
            end

            local function sync_name()
                config.settings.name:set(selected_name())
            end

            local function flush()
                local output = {}

                for i = 1, #list do
                    output[i] = {
                        name = list[i].name,
                        data = list[i].data
                    }
                end

                database.write(database_name, output)
            end

            local function selected_config()
                local name = selected_name()

                if name == default_name then
                    return nil, name
                end

                return find(name), name
            end

            function settings.is_default()
                return selected_name() == default_name
            end

            function settings.update_list()
                update_list()
                sync_name()
            end

            function settings.load()
                local entry, name = selected_config()
                local data = name == default_name and default_data or entry and entry.data

                if not data then
                    return logger.log_error('Config [%s] does not exist.', name)
                end

                local success, err = config_system.import_from_str(data)

                if not success then
                    return logger.log_error('Failed to load config [%s] due to [%s]', name, err)
                end

                logger.config('Loaded config : %s', name)
            end

            function settings.create()
                local name = clean_name(config.settings.name:rawget())

                if not name then
                    return logger.log_error('Enter a config name first.')
                end

                if name == default_name then
                    return logger.log_error('The default config is read-only.')
                end

                if find(name) then
                    return logger.log_error('Config [%s] already exists.', name)
                end

                list[#list + 1] = {
                    name = name,
                    data = config_system.export_to_str()
                }

                update_list()
                config.settings.list:set(#list)
                sync_name()
                flush()

                logger.config('Created config : %s', name)
            end

            function settings.save()
                local entry, name = selected_config()

                if not entry then
                    return logger.log_error('The default config can only be loaded.')
                end

                entry.data = config_system.export_to_str()
                flush()

                logger.config('Saved config : %s', name)
            end

            function settings.remove()
                local entry, name = selected_config()

                if not entry then
                    return logger.log_error('The default config can only be loaded.')
                end

                local _, index = find(name)
                table.remove(list, index)
                update_list()
                config.settings.list:set(0)
                sync_name()
                flush()

                logger.config('Deleted config : %s', name)
            end

            function settings.export()
                local entry, name = selected_config()

                if not entry then
                    return logger.log_error('The default config can only be loaded.')
                end

                clipboard.set(entry.data)
                logger.config('Exported config : %s', name)
            end

            function settings.import()
                local data = clipboard.get()
                local name = clean_name(config.settings.name:rawget())

                if not name or name == default_name then
                    return logger.log_error('The default config can only be loaded. Enter another name to import.')
                end

                local success, err = config_system.import_from_str(data)

                if not success then
                    return logger.log_error('Failed to import config due to [%s]', err)
                end

                local entry = find(name)

                if entry then
                    entry.data = data
                else
                    list[#list + 1] = {name = name, data = data}
                end

                update_list()
                local _, index = find(name)
                config.settings.list:set(index or 0)
                sync_name()
                flush()

                logger.config('Imported config : %s', name)
            end

            config.settings.list:set_callback(function ()
                sync_name()
            end)
            config.settings.load:set_callback(settings.load)
            config.settings.create:set_callback(settings.create)
            config.settings.save:set_callback(settings.save)
            config.settings.remove:set_callback(settings.remove)
            config.settings.export:set_callback(settings.export)
            config.settings.import:set_callback(settings.import)

            local database_list = database.read(database_name)

            if type(database_list) == 'table' then
                for i = 1, #database_list do
                    local item = database_list[i]

                    if type(item) == 'table' and clean_name(item.name) and item.name ~= default_name and type(item.data) == 'string' then
                        list[#list + 1] = {
                            name = clean_name(item.name),
                            data = item.data
                        }
                    end
                end
            end

            settings.update_list()
        end
    end

    local menu_state = {} do
        function menu_state.visibility(shutdown)
            local should_show_aa = shutdown
            local should_show_fl = shutdown

            if should_show_fl and not shutdown then
                should_show_fl = not config.fakelag.enable:get()
            end

            if should_show_aa then
                override.unset(reference.antiaim.master)
            else
                override.set(reference.antiaim.master, true)
            end

            ui.set_visible(reference.antiaim.master, should_show_aa)

            ui.set_visible(reference.antiaim.roll, should_show_aa)
            ui.set_visible(reference.antiaim.freestanding[1], should_show_aa)
            ui.set_visible(reference.antiaim.freestanding[2], should_show_aa)
            ui.set_visible(reference.antiaim.yaw.edge, should_show_aa)

            ui.set_visible(reference.antiaim.pitch.type, should_show_aa)
            ui.set_visible(reference.antiaim.pitch.value, should_show_aa and ui.get(reference.antiaim.pitch.type) == 'Custom')

            ui.set_visible(reference.antiaim.yaw.base, should_show_aa)

            ui.set_visible(reference.antiaim.yaw.yaw.type, should_show_aa)

            local should_show_yaw_value = ui.get(reference.antiaim.yaw.yaw.type) ~= 'Off'

            ui.set_visible(reference.antiaim.yaw.yaw.value, should_show_aa and should_show_yaw_value)

            ui.set_visible(reference.antiaim.yaw.jitter.type, should_show_aa)

            local should_show_yaw_jitter = ui.get(reference.antiaim.yaw.jitter.type) ~= 'Off'

            ui.set_visible(reference.antiaim.yaw.jitter.value, should_show_aa and should_show_yaw_jitter)

            ui.set_visible(reference.antiaim.body.yaw.type, should_show_aa)

            local body_yaw = ui.get(reference.antiaim.body.yaw.type)
            local should_show_body_yaw = body_yaw ~= 'Disabled' and body_yaw ~= 'Opposite'

            ui.set_visible(reference.antiaim.body.yaw.value, should_show_aa and should_show_body_yaw)

            ui.set_visible(reference.antiaim.body.freestanding, should_show_aa)

            ui.set_visible(reference.fakelag.amount, should_show_fl)
            ui.set_visible(reference.fakelag.enable[1], should_show_fl)
            ui.set_visible(reference.fakelag.enable[2], should_show_fl)
            ui.set_visible(reference.fakelag.limit, should_show_fl)
            ui.set_visible(reference.fakelag.variance, should_show_fl)

            local should_show_other = shutdown

            ui.set_visible(reference.misc.slowmotion[1], should_show_other)
            ui.set_visible(reference.misc.slowmotion[2], should_show_other)
            ui.set_visible(reference.misc.onshot_antiaim[1], should_show_other)
            ui.set_visible(reference.misc.onshot_antiaim[2], should_show_other)
            ui.set_visible(reference.misc.leg_movement, should_show_other)
            ui.set_visible(reference.misc.fake_peek[1], should_show_other)
            ui.set_visible(reference.misc.fake_peek[2], should_show_other)


        end

    end

    local callbacks, events = {}, {} do
        function callbacks.start()

            client.delay_call(0.25, function ()
                config.builder.antiaim_state:set('Standing')
                config_system:retrieve_local()
            end)
        end

        function callbacks.menu()
            config.navigation.tab:display()
            local tab = config.navigation.tab:get()
        
            if tab == config.navigation.tabs.antiaim then
                config.antiaimbot.options:display()

                do

                        local profile = config.antiaimbot.profile_mode:get()

                        if profile == "Constructor" then
                            config.builder.antiaim_state:display()

                            local state = config.builder.antiaim_state:get()
                            local list = antiaimbot_builder.settings[state]
                            local show = true

                            if list.enabled then
                                list.enabled:display()

                                show = list.enabled:get()
                            end

                            if show then
                                list.pitch:display()

                                if list.pitch:get() == "Custom" and list.pitch_amount then
                                    list.pitch_amount:display()
                                end

                                list.yaw_base:display()
                                list.yaw_type:display()

                                local yaw_type = list.yaw_type:get()
                                local delayed_switch = false

                                if yaw_type == "Left & Right" or yaw_type == "Flick" or yaw_type == "Sway" or yaw_type == "Spin between" or yaw_type == "2-way" or yaw_type == "3-way" then
                                    list.yaw_left:display()
                                    list.yaw_right:display()

                                    if yaw_type == "Left & Right" then
                                        list.yaw_delayed_switch:display()

                                        if list.yaw_delayed_switch:get() then
                                            delayed_switch = true

                                            list.yaw_switch_delay:display()
                                            list.yaw_switch_delay_second:display()
                                        end
                                    else
                                        if yaw_type == "3-way" then
                                            list.yaw_amount:display()
                                        end
                                        list.yaw_delay:display()
                                        if yaw_type == "2-way" or yaw_type == "3-way" then
                                            list.yaw_delay_second:display()
                                        end
                                        list.yaw_speed:display()
                                    end
                                elseif yaw_type ~= "Off" then
                                    list.yaw_amount:display()
                                end

                                list.yaw_jitter:display()

                                if list.yaw_jitter:get() ~= "Off" then
                                    list.jitter_value:display()
                                    list.jitter_randomize:display()
                                end

                                if not delayed_switch then
                                    list.body_yaw:display()

                                    if list.body_yaw:get() ~= "Off" then
                                        list.body_value:display()
                                    end
                                end
                            end
                        end
                    end

                    do
                        config.antiaimbot.safe_head:display()

                        if config.antiaimbot.safe_head:get() then
                            config.antiaimbot.safe_head_conditions:display()
                        end

                        config.antiaimbot.warmup_aa:display()
        
                        if config.antiaimbot.warmup_aa:get() then
                            config.antiaimbot.warmup_aa_conditions:display()
                        end

                        config.antiaimbot.animation_breaker:display()

                        config.antiaimbot.anti_knife:display()
                        if config.antiaimbot.anti_knife:get() then
                            config.antiaimbot.anti_knife_distance:display()
                        end

                        if config.antiaimbot.animation_breaker:get() then
                            config.antiaimbot.animation_breaker_leg:display()
                            config.antiaimbot.animation_breaker_air:display()
                            config.antiaimbot.animation_breaker_other:display()
                        end

                        config.antiaimbot.binds:display()

                        if config.antiaimbot.binds:get() then
                            for i=1, #config.binds do
                                config.binds[i]:display()
                            end

                            config.antiaimbot.edge_yaw:display()
                            config.antiaimbot.freestanding:display()
                            config.antiaimbot.manual_options:display()
                            config.antiaimbot.fs_options:display()
                            config.antiaimbot.freestanding_disabler_states:display()
                        end
                    end

            end

            if tab == config.navigation.tabs.ragebot then
                config.ragebot.force_body:display()
                if config.ragebot.force_body:get() then
                    config.ragebot.force_body_weapons:display()
                end

                config.ragebot.force_lethal:display()
                if config.ragebot.force_lethal:get() then
                    config.ragebot.force_lethal_weapons:display()
                end

                config.ragebot.hitchance:display()
                if config.ragebot.hitchance:get() then
                    config.ragebot.hitchance_weapon:display()
                    config.ragebot.hitchance_values[config.ragebot.hitchance_weapon:get()]:display()
                    config.ragebot.hitchance_hotkey:display()
                    config.ragebot.hitchance_indicator:display()
                end

                config.ragebot.predict:display()
                if config.ragebot.predict:get() then
                    config.ragebot.predict_mode:display()
                end

                config.ragebot.custom_resolver:display()
                if config.ragebot.custom_resolver:get() then
                    config.ragebot.resolver_mode:display()
                end

                config.ragebot.force_teammate:display()
            end

            if tab == config.navigation.tabs.global then
                config.global.header:display()
                config.global.discord:display()
                config.global.telegram:display()
                config.global.copy_discord:display()
                config.global.copy_telegram:display()

                config.fakelag.enable:display()

                if config.fakelag.enable:get() then
                    config.fakelag.type:display()
                    config.fakelag.ticks:display()
                end
            end

            if tab == config.navigation.tabs.visuals then
                config.visuals.damage_marker:display()

                if config.visuals.damage_marker:get() then
                    config.visuals.damage_marker_color:display()
                end

                config.visuals.watermark:display()
                config.visuals.aspect_ratio:display()
                if config.visuals.aspect_ratio:get() then
                    config.visuals.aspect_ratio_value:display()
                end

                config.visuals.third_person:display()
                if config.visuals.third_person:get() then
                    config.visuals.third_person_distance:display()
                end

                config.visuals.viewmodel:display()
                if config.visuals.viewmodel:get() then
                    config.visuals.viewmodel_fov:display()
                    config.visuals.viewmodel_x:display()
                    config.visuals.viewmodel_y:display()
                    config.visuals.viewmodel_z:display()
                end

                config.visuals.console_color:display()
            end

            if tab == config.navigation.tabs.miscellaneous then
                config.miscellaneous.clantag:display()

                config.miscellaneous.super_toss:display()
                config.miscellaneous.fakeduck_helper:display()

                config.miscellaneous.auto_lc_break:display()

                if config.miscellaneous.auto_lc_break:get() then
                    config.miscellaneous.auto_lc_break_weapons:display()
                    config.miscellaneous.auto_lc_break_delay:display()
                end

                config.miscellaneous.trashtalk:display()
                config.miscellaneous.custom_output:display()
                config.miscellaneous.event_logger:display()
                if config.miscellaneous.event_logger:get() then
                    config.miscellaneous.logging_output:display()
                    config.miscellaneous.logging_color:display()
                end
                config.miscellaneous.fps_boost:display()
                config.miscellaneous.console_filter:display()
            end

            if tab == config.navigation.tabs.stats then
                config.stats.header:display()
                config.stats.hours:display()
                config.stats.kills:display()
                config.stats.deaths:display()
                config.stats.assists:display()
                config.stats.kd:display()
            end

            if tab == config.navigation.tabs.configuration then
                config.settings.list:display()
                config.settings.name:display()
                config.settings.create:display()

                if settings.is_default() then
                    config.settings.load:display()
                else
                    config.settings.load:display()
                    config.settings.save:display()
                    config.settings.remove:display()
                    config.settings.export:display()
                    config.settings.import:display()
                end
            end
        end

        function callbacks.paint(ctx)
            visuals:paint()
        end

        function callbacks.paint_ui(ctx)
            if ui.is_menu_open() then
                menu_state.visibility()
                end

            animations:frame()
            session_stats:update()

            player:paint_ui()
            visuals:paint_ui()
            miscellaneous:paint_ui()
        end

        function callbacks.predict_command(cmd)
            local me = entity.get_local_player()
            local wpn = me and entity.get_player_weapon(me) or nil

            player:predict_command(cmd, me)
            antiaimbot:predict_command(cmd, me, wpn)
        end

        function callbacks.setup_command(cmd)
            local me = entity.get_local_player()
            local wpn = me and entity.get_player_weapon(me) or nil

            player:setup_command(cmd, me, wpn)
            fakelag:setup_command(cmd, me, wpn)
            ragebot_features:setup_command(me, wpn)
            antiaimbot:setup_command(cmd, me, wpn)
            ragebot_features:force_teammate(cmd, me)
            miscellaneous:setup_command(cmd, me, wpn)
        end

        function callbacks.run_command(cmd)
            player:run_command(cmd)
        end

        function callbacks.finish_command(cmd)
            local me = entity.get_local_player()
            local wpn = me and entity.get_player_weapon(me) or nil

            antiaimbot:finish_command(cmd, me, wpn)
            player:finish_command(cmd, me, wpn)
        end

        function callbacks.net_update_end()
            player:net_update_end()
            miscellaneous:net_update_end()
        end

        function callbacks.console_input(text)
            if text == 'fg_debug' then
                user.debug = not user.debug

                return true
            end
        end

        function callbacks.shutdown()
            miscellaneous.clantag.reset()

            antiaimbot.main.get_instance():reset()

            session_stats:save()
            config_system:save_local()

            client.exec('con_filter_enable 0;con_filter_text "";')

            override.unset(reference.ragebot.fakeduck)
            visuals.changers.restore()
            miscellaneous.fps_boost.restore()

            override.unset(reference.fakelag.enable)
            override.unset(reference.fakelag.amount)
            override.unset(reference.fakelag.limit)
            override.unset(reference.fakelag.variance)

            override.unset(reference.misc.draw_output)

            override.unset(reference.misc.air_strafe)

            menu_state.visibility(true)

        end

        function events.aim_fire(event)
            miscellaneous:aim_fire(event)
        end

        function events.aim_hit(event)
            miscellaneous:aim_hit(event)
        end

        function events.aim_miss(event)
            miscellaneous:aim_miss(event)
        end

        function events.player_hurt(event)
            miscellaneous:player_hurt(event)
            visuals:player_hurt(event)
        end

        function events.player_death(event)
            miscellaneous:player_death(event)
        end
    end


    do
        callbacks.start()

        menu.set_callback(callbacks.menu)
        menu.update()

        client.set_event_callback('paint', callbacks.paint)
        client.set_event_callback('paint_ui', callbacks.paint_ui)
        client.set_event_callback('predict_command', callbacks.predict_command)
        client.set_event_callback('setup_command', callbacks.setup_command)
        client.set_event_callback('run_command', callbacks.run_command)
        client.set_event_callback('finish_command', callbacks.finish_command)

        client.set_event_callback('net_update_end', callbacks.net_update_end)
        client.set_event_callback('console_input', callbacks.console_input)
        client.set_event_callback('shutdown', callbacks.shutdown)

        client.set_event_callback('aim_fire', events.aim_fire)
        client.set_event_callback('aim_hit', events.aim_hit)
        client.set_event_callback('aim_miss', events.aim_miss)

        client.set_event_callback('player_hurt', events.player_hurt)
        client.set_event_callback('player_death', events.player_death)
    end
end)()