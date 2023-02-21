function vals = matsolv(pars, x, Delta)

A1=pars(1);
b1=pars(2);
LW1=pars(3);
A2=pars(4);
b2=pars(5);
LW2=pars(6);
A3=pars(7);
b3=pars(8);
LW3=pars(9);
A4=pars(10);
b4=pars(11);
LW4=pars(12);
A5=pars(13);
b5=pars(14);
LW5=pars(15);
A6=pars(16);
b6=pars(17);
LW6=pars(18);


off=x;

%p= 100-A*(LW^2./(LW^2+4*(off).^2))+b;

%p= 100-A*((w1^2*T1w*LW)./(LW.^2+(off).^2+w1^2*T1w*LW));

%p= A*(LW.^2+(off*2*pi).^2)./(LW^2+(off*2*pi).^2+w1^2*T1w*LW).*(1-exp(-off.^2/b));


%p=1-(A1*1./(1+((off-b1)./(0.5.*LW1)).^2)+ A2*1./(1+((off-b2)./(0.5.*LW2)).^2));


%p=1./(1-(A1*1./(1+((off-b1)./(0.5.*LW1)).^2)+ A2*1./(1+((off-b2)./(0.5.*LW2)).^2)));

%p=1-A1*1./(1+((off-b1)./(0.5.*LW1)).^2)+
%A2*1./(1+((off-b2)./(0.5.*LW2)).^2);

p=A1*1./(1+((off-b1)./(0.5.*LW1)).^2)+ A2*1./(1+((off-b2)./(0.5.*LW2)).^2)+A3*1./(1+((off-b3)./(0.5.*LW3)).^2)+A4*1./(1+((off-b4)./(0.5.*LW4)).^2)+A5*1./(1+((off-b5)./(0.5.*LW5)).^2)+A6*1./(1+((off-b6)./(0.5.*LW6)).^2);

%p=1-((A1*1./(1+((off-b1)./(0.5.*LW1)).^2))+ A2*1./(1+((off-b2)./(0.5.*LW2)).^2)+A3*1./(1+((off-b3)./(0.5.*LW3)).^2));

 vals=p;
    end
