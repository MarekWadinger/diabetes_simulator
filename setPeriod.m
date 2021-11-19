function [time, data] = setPeriod(time, data, t_start, t_end)
    idx = find(time > t_start & time < t_end);
    time = time(idx);
    data = data(idx);
    [~,idx] = unique(time, 'last');
    time = time(idx);
    data = data(idx);
end