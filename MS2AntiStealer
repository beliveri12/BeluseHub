local old

old = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if self.Name == "SendTradeRequest" or self.Name == "TradeAddItem" or self.Name == "ReadyTrade" or self.Name == "ConfirmTrade" and method == "FireServer" then
        return print("Beluse Hub - Mining Simulator 2 Anti Stealer [Blocked Trade]")
    end

    return old(self, ...)
end)
