function [frameT] = RS_Decoder(frameR, alpha)
    recieved_A = zeros(1, 255);
    for i =1:255
        recieved_A(i) = find(alpha == frameR(i)) - 2;
    end
    recieved_noisy = recieved_A;
    S_noisy = syndromeComputation(recieved_noisy);
    
    
    [sigma, l] = error_Locator_Calculator(alpha, S_noisy);
    
    
    beta = zeros(255, 1);
    for a = 0:254
        x = 1;
        for i = 1:8
            x = bitxor(x, alpha(mod((sigma(i)+a*i), 255)+2));
        end
        beta(a+1) = find(alpha == x) - 2;
    end

    error_locations = sort(257 - find(beta==-1));
    
    
    z = z_Calculator([0,sigma], S_noisy, alpha);
    err_Mag = error_Magnitude_BMP(error_locations, z, alpha);
    
    
    vec_corrector = bitxor(alpha(recieved_noisy(error_locations)+2), alpha(err_Mag+2));

    vec3 = zeros(1, 8);
    for i = 1:8
        vec3(i) = find(alpha == vec_corrector(i)) - 2;
    end
    recieved_corrected = recieved_noisy;
    recieved_corrected(error_locations) = vec3;
    
    
    frameT = alpha(recieved_corrected+2);
end

