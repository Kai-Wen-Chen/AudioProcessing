function outputSignal = Normalization(inputSignal)
    outputSignal = inputSignal * 2;
    outputSignal = outputSignal / max(abs(outputSignal));
end