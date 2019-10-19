function x = nan2num(x)
    if(isnan(x))
        x = 0;
    elseif(isinf(x))
        x = sign(x)*123e200;
    end
end