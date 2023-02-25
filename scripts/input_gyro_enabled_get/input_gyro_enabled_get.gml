/// @desc    Gets whether a player may use gamepad gyro to drive the cursor
/// @param   [playerIndex=0]

function input_gyro_enabled_get(_player_index = 0)
{
    __INPUT_GLOBAL_STATIC_LOCAL
    __INPUT_VERIFY_PLAYER_INDEX

    return _global.__players[_player_index].__gyro_enabled;
}
