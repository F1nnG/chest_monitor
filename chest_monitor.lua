function printInventoryOnMonitor(chest, monitor)
    local width, height = monitor.getSize()

    monitor.clear()
    for k,v in pairs(chest.list()) do
        local cursorX = math.ceil((width - string.len(v.name)) / 2)

        monitor.setCursorPos(cursorX, k * 2 + k)
        monitor.setTextColor(colors.white)
        monitor.write(v.name)

        local amount = v.count .. 'x'
        cursorX = math.ceil((width - string.len(amount)) / 2)

        monitor.setCursorPos(cursorX, k * 2 + 1 + k)
        monitor.setTextColor(colors.lightGray)
        monitor.write(amount)
    end
end

-- while true do
    local monitor = peripheral.find("monitor")
    local chest = peripheral.find("chest")

    printInventoryOnMonitor(chest, monitor)

    -- sleep(10)
-- end