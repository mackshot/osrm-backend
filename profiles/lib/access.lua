local ipairs = ipairs

--module "Access"

function find_access_tag(source,access_tags_hierarchy)
    for i,v in ipairs(access_tags_hierarchy) do
        local tag = source:get_value_by_key(v)
        if tag and tag ~= '' then
            return tag
        end
    end
    return nil
end
