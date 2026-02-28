function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    if not amount then
        return count > 0
    else
        amount = tonumber(amount)
        return count >= amount
    end
end

function hasnot(item)
	local count2 = Tracker:ProviderCountForCode(item)
    if count2 > 0 then
		return false
	else return true
	end
end


function canReduceFallDamage()
    return has("Flying Feline Boots") or has("Silvercat Ring")
end

function canAccessPit()
    return canReduceFallDamage() or has("Ladder Miniature")
end

function canSB()
    return AccessibilityLevel.SequenceBreak
end

function needShards(amount)
    amount=tonumber(amount)
    local count=Tracker:ProviderCountForCode("Estus Flask Shards")
    if amount > count then
        return false
    else return true
    end
end

function needDusts(amount)
    amount=tonumber(amount)
    local count=Tracker:ProviderCountForCode("Sublime Bone Dusts")
    if amount > count then
        return false
    else return true
    end
end


--Combat logic for each area


function canFightSalamanderPit()
    local CombatDiff=Tracker:FindObjectForCode("Combat Logic").CurrentStage
    if CombatDiff>1 then
        return true
    end
    if CombatDiff==0 then
        if has("Estus Flask Shards", 6) and has("Sublime Bone Dusts", 3) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==1 then
        if has("Estus Flask Shards", 4) and has("Sublime Bone Dusts", 2) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
end

function canFightLostBatille()
    local CombatDiff=Tracker:FindObjectForCode("Combat Logic").CurrentStage
    if CombatDiff>2 then
        return true
    end
    if CombatDiff==0 then
        if has("Estus Flask Shards", 3) and has("Sublime Bone Dusts", 1) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==1 then
        if has("Estus Flask Shards", 1) and has("Sublime Bone Dusts", 1) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==2 then
        if has("Estus Flask Shards", 1) and has("Sublime Bone Dusts", 1) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
end

function canFightCathedralOfBlue()
    local CombatDiff=Tracker:FindObjectForCode("Combat Logic").CurrentStage
    if CombatDiff>1 then
        return true
    end
    if CombatDiff==0 then
        if has("Estus Flask Shards", 3) and has("Sublime Bone Dusts", 1) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==1 then
        if has("Estus Flask Shards", 2) and has("Sublime Bone Dusts", 1) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
end

function canFightSinnersRise()
    local CombatDiff=Tracker:FindObjectForCode("Combat Logic").CurrentStage
    if CombatDiff>2 then
        return true
    end
    if CombatDiff==0 then
        if has("Estus Flask Shards", 7) and has("Sublime Bone Dusts", 3) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==1 then
        if has("Estus Flask Shards", 5) and has("Sublime Bone Dusts", 2) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==2 then
        if has("Estus Flask Shards", 3) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
end

function canFightSkeletonLords()
    local CombatDiff=Tracker:FindObjectForCode("Combat Logic").CurrentStage
    if CombatDiff>1 then
        return true
    end
    if CombatDiff==0 then
        if has("Estus Flask Shards", 3) and has("Sublime Bone Dusts", 1) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==1 then
        if has("Estus Flask Shards", 2) and has("Sublime Bone Dusts", 1) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
end

function canFightChariot()
    local CombatDiff=Tracker:FindObjectForCode("Combat Logic").CurrentStage
    if CombatDiff>1 then
        return true
    end
    if CombatDiff==0 then
        if has("Estus Flask Shards", 2) and has("Sublime Bone Dusts", 1) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==1 then
        if has("Estus Flask Shards", 2) and has("Sublime Bone Dusts", 1) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
end

function canFightIronKeep()
    local CombatDiff=Tracker:FindObjectForCode("Combat Logic").CurrentStage
    if CombatDiff>1 then
        return true
    end
    if CombatDiff==0 then
        if has("Estus Flask Shards", 7) and has("Sublime Bone Dusts", 3) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==1 then
        if has("Estus Flask Shards", 5) and has("Sublime Bone Dusts", 2) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
end

function canFightThePit()
    local CombatDiff=Tracker:FindObjectForCode("Combat Logic").CurrentStage
    if CombatDiff>2 then
        return true
    end
    if CombatDiff==0 then
        if has("Estus Flask Shards", 3) and has("Sublime Bone Dusts", 1) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==1 then
        if has("Estus Flask Shards", 2) and has("Sublime Bone Dusts", 1) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==2 then
        if has("Estus Flask Shards", 2) and has("Sublime Bone Dusts", 1) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
end



function canFightTheGutter()
    local CombatDiff=Tracker:FindObjectForCode("Combat Logic").CurrentStage
    if CombatDiff>1 then
        return true
    end
    if CombatDiff==0 then
        if has("Estus Flask Shards", 5) and has("Sublime Bone Dusts", 2) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==1 then
        if has("Estus Flask Shards", 3) and has("Sublime Bone Dusts", 2) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
end

function canFightDoorsOfPharros()
    local CombatDiff=Tracker:FindObjectForCode("Combat Logic").CurrentStage
    if CombatDiff>1 then
        return true
    end
    if CombatDiff==0 then
        if has("Estus Flask Shards", 5) and has("Sublime Bone Dusts", 2) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==1 then
        if has("Estus Flask Shards", 3) and has("Sublime Bone Dusts", 1) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
end

function canFightTseldora()
    local CombatDiff=Tracker:FindObjectForCode("Combat Logic").CurrentStage
    if CombatDiff>1 then
        return true
    end
    if CombatDiff==0 then
        if has("Estus Flask Shards", 7) and has("Sublime Bone Dusts", 3) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==1 then
        if has("Estus Flask Shards", 5) and has("Sublime Bone Dusts", 2) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
end

function canFightDrangleic()
    local CombatDiff=Tracker:FindObjectForCode("Combat Logic").CurrentStage
    if CombatDiff>1 then
        return true
    end
    if CombatDiff==0 then
        if has("Estus Flask Shards", 9) and has("Sublime Bone Dusts", 4) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==1 then
        if has("Estus Flask Shards", 8) and has("Sublime Bone Dusts", 3) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
end

function canFightAldiasKeep()
    local CombatDiff=Tracker:FindObjectForCode("Combat Logic").CurrentStage
    if CombatDiff>1 then
        return true
    end
    if CombatDiff==0 then
        if has("Estus Flask Shards", 9) and has("Sublime Bone Dusts", 4) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==1 then
        if has("Estus Flask Shards", 8) and has("Sublime Bone Dusts", 3) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
end

function canFightShulva()
    local CombatDiff=Tracker:FindObjectForCode("Combat Logic").CurrentStage
    if CombatDiff>2 then
        return true
    end
    if CombatDiff==0 then
        if has("Estus Flask Shards", 12) and has("Sublime Bone Dusts", 5) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==1 then
        if has("Estus Flask Shards", 9) and has("Sublime Bone Dusts", 4) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==2 then
        if has("Estus Flask Shards", 6) and has("Sublime Bone Dusts", 3) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
end

function canFightBrumeTower()
    local CombatDiff=Tracker:FindObjectForCode("Combat Logic").CurrentStage
    if CombatDiff>2 then
        return true
    end
    if CombatDiff==0 then
        if has("Estus Flask Shards", 12) and has("Sublime Bone Dusts", 5) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==1 then
        if has("Estus Flask Shards", 9) and has("Sublime Bone Dusts", 4) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==2 then
        if has("Estus Flask Shards", 6) and has("Sublime Bone Dusts", 3) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
end

function canFightEleumLoyce()
    local CombatDiff=Tracker:FindObjectForCode("Combat Logic").CurrentStage
    if CombatDiff>2 then
        return true
    end
    if CombatDiff==0 then
        if has("Estus Flask Shards", 12) and has("Sublime Bone Dusts", 5) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==1 then
        if has("Estus Flask Shards", 9) and has("Sublime Bone Dusts", 4) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
    if CombatDiff==2 then
        if has("Estus Flask Shards", 6) and has("Sublime Bone Dusts", 3) then
            return true
        else return AccessibilityLevel.SequenceBreak
        end
    end
end

function returnFalse()
    return false
end