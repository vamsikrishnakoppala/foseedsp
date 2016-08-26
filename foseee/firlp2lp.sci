//author :Vamsi Krishna Koppala
//function :firlp2lp
//input argument : fir typeI filter coefficient vector(Hr(w))
//output argument :fir typeI filter of coefficients[1 - Hr(π-w)].
// source http://www.mathworks.com/help/dsp/ref/firlp2lp.html
function a=firlp2lp(b);
    r = length(b);
    a =b;
    a(int16(r/2+1)) = 1-a(int16(r/2+1));
    i=int16(r/2+3);
    while i<=r
        a(i)=-a(i);
        i=i+2;
    end
    i=int16(r/2-1);
    while i>0
        a(i)=-a(i);
        i=i-2;
    end
endfunction
