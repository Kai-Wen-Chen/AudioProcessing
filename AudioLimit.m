function outputSignal = AudioLimit(inputSignal, max, min)
    outputSignal = zeros(length(inputSignal), 1);
    for i=1:length(inputSignal)
        if inputSignal(i) < min
            outputSignal(i) = min;
        elseif inputSignal(i) > max
            outputSignal(i) = max;
        else
            outputSignal(i) = inputSignal(i);
        end
    end
end