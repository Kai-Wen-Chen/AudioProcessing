function outputSignal = NoiseShaping(inputSignal, ditherSignal)
    %inputSignal: original bit-reduction signal
    %ditherSignal: inputSignal + noise
    row = length(inputSignal);
    error = zeros(size(inputSignal));
    error(1, :) = [0, 0]; %first error = 0
    c = 0.9; %coefficient
        
    for i=1:row
        ditherSignal(i, :) = ditherSignal(i, :) + c * error(i, :); %F_in = F_in + d + c*E, F_out = F_in
        ditherSignal(i, :) = floor(ditherSignal(i, :));
        if i < row
            error(i+1, :) = inputSignal(i, :) - ditherSignal(i, :); % ith error = (i-1)th original input - (i-1)th signal after quantized and dithered
        end
    end
    
    outputSignal = ditherSignal / 128; %recover the scale
end