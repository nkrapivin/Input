/// @param key
/// @param name

function __input_key_name_set(_key, _name)
{
    __INPUT_GLOBAL_STATIC_LOCAL
    _global.__key_name_dict[$ string(_key)] = string(_name);
}