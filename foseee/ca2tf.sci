//author :Vamsi Krishna Koppala
//function :ca2tf
//Input arguments : d1 and d2 real vectors 
//corresponding to denominators of allpass filters.
//Output arguments: b,a corresponds to numerator and
//denominator coefficients of transfer function
//source : http://in.mathworks.com/help/dsp/ref/ca2tf.html
function [b,a]=ca2tf(d1,d2);
    n1 = flipdim(d1,2);
    n2 = flipdim(d2,2);
    a = conv(d1,d2);
    b = (conv(n1,d2)+conv(n2,d1))/2;//numerator coeffcients n1*d2 + n2*d1
endfunction
