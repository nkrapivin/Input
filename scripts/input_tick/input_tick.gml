/// @param [ignoreWarning=false]

function input_tick(_ignore_warning = false)
{
    __INPUT_GLOBAL_STATIC_LOCAL  //Set static _global
    
    if (_global.__time_source != undefined)
    {
        //Developer is calling input_tick() manually, let's cancel the automatic update since they know what they're doing (...presumably)
        time_source_stop(_global.__time_source);
        _global.__time_source = undefined;
        
        static _seen = false;
        if (!_seen)
        {
            _seen = true;
            
            if (!_ignore_warning)
            {
                __input_error("In GMS2022.5 and later you don't need to manually call input_tick() if you're not checking player input in the Begin Step event");
            }
            
            return;
        }
    }
    
    return __input_system_tick();
}
