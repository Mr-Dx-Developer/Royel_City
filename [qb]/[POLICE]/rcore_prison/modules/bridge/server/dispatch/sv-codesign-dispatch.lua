
CreateThread(function()
    if (isBridgeLoaded('Dispatch', DispatchList.CD)) then
        Dispatch.Breakout = function()
            local text = _U('DISPATCH.BREAKOUT_ACTIVE_MESSAGE')
            local coords = vec3(SH.data.prisonYard.x,SH.data.prisonYard.y, SH.data.prisonYard.z)
            local data = {
                job_table = Config.Escape.NotifyJobs,
                coords = coords,
                title = _U('DISPATCH.BREAKOUT_BLIP_TEXT'),
                message = text,
                flash = 0,
                unique_id = tostring(math.random(0000000,9999999)),
                sound = 1,
                blip = {
                    sprite = 431,
                    scale = 1.2,
                    colour = 3,
                    flashes = false,
                    text = _U('DISPATCH.BREAKOUT_BLIP_TEXT'),
                    time = 5,
                    radius = 0,
                }
            }

            TriggerClientEvent('cd_dispatch:AddNotification', -1, data)

            dbg.info('Dispatch.Breakout: Prison break started!')
        end
    end
end)
