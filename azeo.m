function [p1,p2,p3,p4,X,Y,X1,Y1]= azeo(T1,x1,y1,T2,x2,y2,xx)
  %create matrices for raw data provided
  T1= [61.1;62;63;64;63;62;61;60;59;58;57;56;55.7];
  x1= [0;0.0761;0.1633;0.2955;0.5434;0.6146;0.6733;0.7265;0.7779;
       0.8302;0.8875;0.9620;1];
  y1= [0;0.0403;0.1007;0.2134;0.5925;0.6966;0.7731;0.8331;0.8822;
       0.9237;0.9597;0.9914;1];
  
  %plot the raw data with scatter as shown in figure 1
  scatter(x1,T1);
  hold on;
  scatter(y1,T1);
  title ('x-T and y-T curves');
  xlabel ('x/y');
  ylabel ('T (°C)');
  %the scatter plot is not continuous, need to transform the raw data into polynomial to get smoother curve
  
  %find polynomial coefficient for both x-T and y-T 9th order polynomial equations 
  p1= polyfit(x1,T1,9);
  p2= polyfit(y1,T1,9);

  %create a corresponding matrix with 1000 steps from 0 to 1
  xx= linspace(0,1,1000);
  
  %substitute the 1000 steps into the polynomial coefficients to get corresponding values for both x-T and y-T curves
  X=polyval(p1,xx);
  Y=polyval(p2,xx);
     
  %plot both curves together with scatter plot earlier as shown in figure 2  
  plot(xx,X,xx,Y);
  
  %azeotrope or interception of two curves has been found around x=0.4
  %remove the interceptions at both x=0 and x=1 by removing first and last set of data to optimise calculation
  T2= [62;63;64;63;62;61;60;59;58;57;56];
  x2= [0.0761;0.1633;0.2955;0.5434;0.6146;0.6733;0.7265;0.7779;
       0.8302;0.8875;0.9620];
  y2= [0.0403;0.1007;0.2134;0.5925;0.6966;0.7731;0.8331;0.8822;
       0.9237;0.9597;0.9914];
  

  %find polynomial coefficient for both new x-T and y-T 9th order polynomial equations  
  p3=polyfit(x2,T2,9);
  p4=polyfit(y2,T2,9); 
  
  %substitute the 1000 steps into the polynomial coefficients to get corresponding values for both new x-T and y-T curves
  X1=polyval(p3,xx);
  Y1=polyval(p4,xx);
  
  %plot together with previous curves to identify accuracy as shown in figure 3
  plot(xx,X1,xx,Y1);
  %new curves have almost similar intercept at around x=0.4

  %apply fzero function to find exact intercepting point
  %initial guess at x=0.42
  x_intercept=fzero(@(x) polyval(p3-p4,x),0.42)

  %substitute the x value obtained at azeotrope to obtain corresponding temperature
  y_intercept=polyval(p3,x_intercept)
  
  end

 
