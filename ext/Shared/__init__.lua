Events:Subscribe('Partition:Loaded', function(partition)
    for _, instance in pairs(partition.instances) do
        -- Guid for SoldierEntityData
        -- https://github.com/Powback/Venice-EBX/blob/master/Characters/Soldiers/MpSoldier.txt
        if instance.instanceGuid == Guid("A9FFE6B4-257F-4FE8-A950-B323B50D2112") then
            -- Cast `instance` to `SoldierEntityData`
            local data = SoldierEntityData(instance)

            -- Make it writable
            data:MakeWritable()

            -- Set the collisionInfo to nil
            data.collisionInfo = nil
        end
    end
end)