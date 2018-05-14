function outputSignal = AudioDithering(inputSignal)
    %To generate numbers between (a, b), then the formula is r = a + (b - a) * rand(size);
    %Thus, the noise is between (-0.1, 0.1), then r = -0.1 + (0.1 - (-0.1)) * rand(size(inputSignal));
    noise = -0.1 + 0.2 .* rand(size(inputSignal));
    outputSignal = inputSignal + noise;
    outputSignal(:, 1) = outputSignal(:, 1) / max(abs(outputSignal(:, 1)));
    outputSignal(:, 2) = outputSignal(:, 2) / max(abs(outputSignal(:, 2)));
end