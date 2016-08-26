//author :Vamsi Krishna Koppala
//function :firlp2lp
//input argument : w0 normalised notch frequency,bw notch bandwidth
//output argument :iir filter numerator and denominator coefficients
//source : http://ieeexplore.ieee.org/document/1164643/?arnumber=1164643&tag=1
function [num ,den]=iirnotch(w0,bw);
    num = [1 -2*cos(%pi*w0) 1]//numerator coefficients
    den = [1 -2*(1-bw)*cos(%pi*w0) (1-bw)^2]//denominator coefficients
endfunction
