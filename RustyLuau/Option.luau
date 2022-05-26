local Option = {}

export type Option<T> = T?

function Option.unwrap<T>(option: Option<T>): T
    assert(option ~= nil)
    return option
end

function Option.expect<T>(option: Option<T>, error_message: string): T
    assert(option ~= nil, error_message)
    return option
end

function Option.is_none<T>(option: Option<T>): bool
    return option == nil
end

function Option.is_some<T>(option: Option<T>): bool
    return option ~= nil
end

return Option
