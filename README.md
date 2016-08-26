# foseedsp
Contains iirnotch, ca2tf, firlp2lp matlab functions coded in scilab

ca2tf : 

  calculates average of two all pass filter (coupled all pass filter)
  and provides a new transfer function H(z)
  H(z)=B(z)/A(z)=1/2*[H1(z)+H2(z)]
  where H1(z) and H2(z) are all pass filters
  syntax: [b,a] = ca2tf(d1,d2)
  example: d1 = 1:10; d2 = [1 2 3 4 5];
  [b,a]= ca2tf[d1,d2];
  
  
firlp2lp:

  Convert Fir TypeI low pass filter to fir type I lowpass filter of inverse bandwidth
  Syntax: a = firlp2lp(b) 
  It transforms Type I lowpass FIR filter b with zero-phase response Hr(w) to a 
  Type I lowpass FIR filter a with zero-phase response [1 - Hr(π-w)].
  The bandwidth and pass band stop band ripples get exchanged from stop band to pass band
  and pass band to stop band.
  Example:[x]=ffilt("lp",15,.1,.4);c = firlp2lp(x);
  [hzm,fr]=frmag(x,1,256);plot(2*fr,hzm);
  [hzm,fr]=frmag(c,1,256);plot(2*fr,hzm);
  //Note: 2*fr since it ranges values from 0 to 1/2 hence extend twice.
  
iirnotch:

  Create a digital notching filter which can filter out specific frequency
  Syntax:[num,den] = iirnotch(w0,bw);
  Creates a digital notching filter with the notch located at w0, 
  and with the bandwidth at the -3 dB point set to bw. Where w0 must lie in range 0.0<w0<1.0,
  where 1.0 corresponds to π radians per sample in the frequency range.
  Example:wo = 60/(300/2);  bw = wo/35;
  [b,a] = iirnotch(wo,bw);
  [hzm,fr]=frmag(b,a,256);plot(2*fr,hzm);
  //Note: 2*fr since it ranges values from 0 to 1/2 hence extend twice.
  
  
  
