

clc;
clear all;
time1=cputime;

scalep=0.000015;

mt=24;

eeebus33_bidding_Real;

nbus=size(busdata1,1);
% pld1=busdata1(:,2)/1000;
% qld1=busdata1(:,3)/1000;
pgmax=busdata1(:,4)/1000;
qgmax=busdata1(:,5)/1000;
vsp=busdata1(:,6);
delsp=busdata1(:,7);
emx=busdata1(:,8);
emn=busdata1(:,9);
at=busdata1(:,10);
bt=busdata1(:,11);
ct=busdata1(:,12);
ae=busdata1(:,13);
be=busdata1(:,14);
ce=busdata1(:,15);
as=busdata1(:,16);
bs=busdata1(:,17);
cs=busdata1(:,18);

%  tp21mn=-0.75;
%  tp21mx=0.75;
%  
%  tp31mn=-0.75;
%  tp31mx=0.75;
%  
%  tp32mn=-0.75;
%  tp32mx=0.75;
% 
% tq21mn=-0.75;
%  tq21mx=0.75;
%  
%  tq31mn=-0.75;
%  tq31mx=0.75;
%  
%  tq32mn=-0.75;
%  tq32mx=0.75;


tp21mn=-0.5;
 tp21mx=0.5;
 
 tp31mn=-0.5;
 tp31mx=0.5;
 
 tp32mn=-0.5;
 tp32mx=0.5;

tq21mn=-0.5;
 tq21mx=0.5;
 
 tq31mn=-0.5;
 tq31mx=0.5;
 
 tq32mn=-0.5;
 tq32mx=0.5;

 

for m=1:10
    p_computer(m)=0;
    q_computer(m)=0;
end

for m=11:14
    p_computer(m)=0.2;
    q_computer(m)=0.2*((sqrt(1-0.95^2)))/0.95;
end

for m=15:24
    p_computer(m)=0;
    q_computer(m)=0;
end


for m=1:11
    p_microwave_oven(m)=0;
    q_microwave_oven(m)=0;
end

for m=12:24
    p_microwave_oven(m)=1.2;
    q_microwave_oven(m)=1.2*((sqrt(1-0.93^2)))/0.93;
end


for m=1:12
    p_oven(m)=0;
    q_oven(m)=0;
end

for m=13:20
    p_oven(m)=2.4;
    q_oven(m)=2.4*((sqrt(1-0.95^2)))/0.95;    
end

for m=21:24
    p_oven(m)=0;
    q_oven(m)=0;
end


for m=1:6
    p_kettle(m)=0;
    q_kettle(m)=0;
end

for m=7:8
    p_kettle(m)=2;
    q_kettle(m)=0;
end

for m=9:17
    p_kettle(m)=0;
    q_kettle(m)=0;
end

for m=18:19
    p_kettle(m)=2;
    q_kettle(m)=0;
end

for m=20:24
    p_kettle(m)=0;
    q_kettle(m)=0;
end


for m=1:24
    p_refrigerator(m)=1.66;
    q_refrigerator(m)=1.66*((sqrt(1-0.65^2)))/0.65;
end


for m=1:6
    p_television(m)=0;
    q_television(m)=0;
end

for m=7:8
    p_television(m)=0.28;
    q_television(m)=0.28*((sqrt(1-0.95^2)))/0.95;
end

for m=9:17
    p_television(m)=0;
    q_television(m)=0;
end

for m=18:22
    p_television(m)=0.28;
    q_television(m)=0.28*((sqrt(1-0.95^2)))/0.95;
end

for m=23:24
    p_television(m)=0;
    q_television(m)=0;
end


for m=1:16
    p_light(m)=0;
    q_light(m)=0;
end

for m=17:22
    p_light(m)=0.2;
    q_light(m)=0.2*((sqrt(1-0.8^2)))/0.8;
end

for m=23:24
    p_light(m)=0;
    q_light(m)=0;
end


for m=1:6
    p_street_light(m)=0.5;
    q_street_light(m)=0.5*((sqrt(1-0.8^2)))/0.8;
end

for m=7:17
    p_street_light(m)=0;
    q_street_light(m)=0;
end

for m=18:24
    p_street_light(m)=0.5;
    q_street_light(m)=0.5*((sqrt(1-0.8^2)))/0.8;
end


for m=1:5
    p_vacuum_cleaner(m)=0;
    q_vacuum_cleaner(m)=0;
end

for m=6:8
    p_vacuum_cleaner(m)=0.6;
    q_vacuum_cleaner(m)=0.6*((sqrt(1-0.75^2)))/0.75;
end

for m=9:16
    p_vacuum_cleaner(m)=0;
    q_vacuum_cleaner(m)=0;
end

for m=17:18
    p_vacuum_cleaner(m)=0.6;
    q_vacuum_cleaner(m)=0.6*((sqrt(1-0.75^2)))/0.75;
end

for m=19:24
    p_vacuum_cleaner(m)=0;
    q_vacuum_cleaner(m)=0;
end


for m=1:7
    p_iron(m)=0;
    q_iron(m)=0;
end

for m=8:9
    p_iron(m)=2.4;
    q_iron(m)=2.4*((sqrt(1-0.95^2)))/0.95;
end

for m=10:24
    p_iron(m)=0;
    q_iron(m)=0;
end


for m=1:24
    p_fan(m)=0.5;
    q_fan(m)=0.5*((sqrt(1-0.65^2)))/0.65;
end

for m=1:24
    p_ac(m)=2;
    q_ac(m)=2*((sqrt(1-0.75^2)))/0.75;
end


for m=1:5
    p_dishwasher(m)=0;
    q_dishwasher(m)=0;
end

for m=6:7
    p_dishwasher(m)=2;
    q_dishwasher(m)=2*((sqrt(1-0.6^2)))/0.6;
end


for m=8:16
    p_dishwasher(m)=0;
    q_dishwasher(m)=0;
end

for m=17:18
    p_dishwasher(m)=2;
    q_dishwasher(m)=2*((sqrt(1-0.6^2)))/0.6;
end


for m=19:24
    p_dishwasher(m)=0;
    q_dishwasher(m)=0;
end


for m=1:6
    p_washing_machine(m)=0;
    q_washing_machine(m)=0;
end

for m=7:8
    p_washing_machine(m)=0.45;
    q_washing_machine(m)=0.45*((sqrt(1-0.7^2)))/0.7;
end

for m=9:24
    p_washing_machine(m)=0;
    q_washing_machine(m)=0;
end


for m=1:6
    p_water_pump(m)=0;
    q_water_pump(m)=0;
end

for m=7:8
    p_water_pump(m)=0.75;
    q_water_pump(m)=0.75*((sqrt(1-0.7^2)))/0.7;
end

for m=9:16
    p_water_pump(m)=0;
    q_water_pump(m)=0;
end

for m=17:18
    p_water_pump(m)=0.75;
    q_water_pump(m)=0.75*((sqrt(1-0.7^2)))/0.7;
end

for m=19:24
    p_water_pump(m)=0;
    q_water_pump(m)=0;
end





% Domestic_loading

for m=1:24
    p_domestic_load(m)=8*(2*p_computer(m)+p_microwave_oven(m)+p_oven(m)+p_kettle(m)+p_refrigerator(m)+2*p_television(m)+ p_light(m)+ p_vacuum_cleaner(m)+p_iron(m)+p_fan(m)+5*p_ac(m)+p_dishwasher(m)+p_washing_machine(m))+p_water_pump(m)+p_street_light(m);
    q_domestic_load(m)=8*(2*q_computer(m)+q_microwave_oven(m)+q_oven(m)+q_kettle(m)+q_refrigerator(m)+2*q_television(m)+ q_light(m)+ q_vacuum_cleaner(m)+q_iron(m)+q_fan(m)+5*q_ac(m)+q_dishwasher(m)+q_washing_machine(m))+q_water_pump(m)+q_street_light(m);
end


% School_loading

for m=1:24
    p_school_load(m)=20*p_computer(m)+2*p_kettle(m)+2*p_television(m)+10*p_light(m)+2*p_vacuum_cleaner(m)+10*p_fan(m)+10*p_ac(m)+p_water_pump(m);
    q_school_load(m)=20*q_computer(m)+2*q_kettle(m)+2*q_television(m)+10*q_light(m)+2*q_vacuum_cleaner(m)+10*q_fan(m)+10*q_ac(m)+q_water_pump(m);
end


% University_loading



% Health_center_loading

for m=1:24
    p_heal_centre_load(m)=50*p_computer(m)+2*p_kettle(m)+2*p_television(m)+15*p_light(m)+2*p_vacuum_cleaner(m)+15*p_fan(m)+15*p_ac(m)+3*p_refrigerator(m)+p_water_pump(m);
    q_heal_centre_load(m)=50*q_computer(m)+2*q_kettle(m)+2*q_television(m)+15*q_light(m)+2*q_vacuum_cleaner(m)+15*q_fan(m)+15*q_ac(m)+3*q_refrigerator(m)+q_water_pump(m);
end


% Shopping_center_loading

for m=1:24
    p_shopping_center_load(m)=10*(1*p_computer(m)+p_refrigerator(m)+0.5*p_light(m)+ p_vacuum_cleaner(m)+2*p_fan(m)+1*p_ac(m));
    q_shopping_center_load(m)=10*(1*q_computer(m)+q_refrigerator(m)+0.5*q_light(m)+ q_vacuum_cleaner(m)+2*q_fan(m)+1*q_ac(m));
end

% Post_office_loading

for m=1:24
    p_post_office_load(m)=(10*p_computer(m)+p_kettle(m)+1*p_television(m)+2*p_light(m)+ p_vacuum_cleaner(m)+10*p_fan(m)+5*p_ac(m));
    q_post_office_load(m)=(10*q_computer(m)+q_kettle(m)+1*q_television(m)+2*q_light(m)+ q_vacuum_cleaner(m)+10*q_fan(m)+5*q_ac(m));
end


% Resort_loading

for m=1:24
    p_resort_load(m)=(5*p_computer(m)+1.5*p_oven(m)+p_kettle(m)+8*p_refrigerator(m)+25*p_television(m)+5*p_light(m)+3*p_vacuum_cleaner(m)+25*p_fan(m)+22*p_ac(m)+2*p_dishwasher(m))+2*p_water_pump(m);
    q_resort_load(m)=(5*q_computer(m)+1.5*q_oven(m)+q_kettle(m)+8*q_refrigerator(m)+25*q_television(m)+5*q_light(m)+3*q_vacuum_cleaner(m)+25*q_fan(m)+22*q_ac(m)+2*q_dishwasher(m))+2*q_water_pump(m);
end




for m=1:mt
    pld(m,1)=0;
    qld(m,1)=0;
    pld(m,2)=p_domestic_load(m)/1000;
    qld(m,2)=q_domestic_load(m)/1000;
    pld(m,3)=p_domestic_load(m)/1000;
    qld(m,3)=q_domestic_load(m)/1000;
    pld(m,4)=p_school_load(m)/1000;
    qld(m,4)=q_school_load(m)/1000;     
    pld(m,5)=2*p_domestic_load(m)/1000;
    qld(m,5)=2*q_domestic_load(m)/1000;
    pld(m,6)=0;
    qld(m,6)=0;
%     pld(m,6)=0.75*p_domestic_load(m)/1000;
%     qld(m,6)=0.75*q_domestic_load(m)/1000;
    pld(m,7)=2*p_domestic_load(m)/1000;
    qld(m,7)=2*q_domestic_load(m)/1000;
    pld(m,8)=p_shopping_center_load(m)/1000;
    qld(m,8)=q_shopping_center_load(m)/1000;    
    pld(m,9)=p_domestic_load(m)/1000;
    qld(m,9)=q_domestic_load(m)/1000;
    pld(m,10)=2*p_domestic_load(m)/1000;
    qld(m,10)=2*q_domestic_load(m)/1000;
    pld(m,11)=p_domestic_load(m)/1000;
    qld(m,11)=q_domestic_load(m)/1000;
    pld(m,12)=2*p_domestic_load(m)/1000;
    qld(m,12)=2*q_domestic_load(m)/1000;
    pld(m,13)=0;
    qld(m,13)=0;
%     pld(m,13)=0.75*p_domestic_load(m)/1000;
%     qld(m,13)=0.75*q_domestic_load(m)/1000; 
    pld(m,14)=p_domestic_load(m)/1000;
    qld(m,14)=q_domestic_load(m)/1000;
    pld(m,15)=0;
    qld(m,15)=0;
%     pld(m,15)=0.75*p_domestic_load(m)/1000;
%     qld(m,15)=0.75*q_domestic_load(m)/1000;
    pld(m,16)=p_domestic_load(m)/1000;
    qld(m,16)=q_domestic_load(m)/1000;
    pld(m,17)=p_domestic_load(m)/1000;
    qld(m,17)=q_domestic_load(m)/1000;
    pld(m,18)=p_domestic_load(m)/1000;
    qld(m,18)=q_domestic_load(m)/1000;
    pld(m,19)=p_domestic_load(m)/1000;
    qld(m,19)=q_domestic_load(m)/1000;
    pld(m,20)=p_heal_centre_load(m)/1000;
    qld(m,20)=q_heal_centre_load(m)/1000;
    pld(m,21)=p_domestic_load(m)/1000;
    qld(m,21)=q_domestic_load(m)/1000;
    pld(m,22)=p_domestic_load(m)/1000;
    qld(m,22)=q_domestic_load(m)/1000;
    pld(m,23)=2*p_domestic_load(m)/1000;
    qld(m,23)=2*q_domestic_load(m)/1000;
    pld(m,24)=2*p_domestic_load(m)/1000;
    qld(m,24)=2*q_domestic_load(m)/1000;
    pld(m,25)=2*p_domestic_load(m)/1000;
    qld(m,25)=2*q_domestic_load(m)/1000;
    pld(m,26)=p_post_office_load(m)/1000;
    qld(m,26)=q_post_office_load(m)/1000;
    pld(m,27)=0;
    qld(m,27)=0;
%     pld(m,27)=p_domestic_load(m)/1000;
%     qld(m,27)=q_domestic_load(m)/1000;
    pld(m,28)=2*p_domestic_load(m)/1000;
    qld(m,28)=2*q_domestic_load(m)/1000;
    pld(m,29)=2*p_domestic_load(m)/1000;
    qld(m,29)=2*q_domestic_load(m)/1000;
    pld(m,30)=0;
    qld(m,30)=0; 
%     pld(m,30)=2*p_domestic_load(m)/1000;
%     qld(m,30)=2*q_domestic_load(m)/1000;
    pld(m,31)=p_domestic_load(m)/1000;
    qld(m,31)=q_domestic_load(m)/1000;
    pld(m,32)= p_resort_load(m)/1000;
    qld(m,32)= q_resort_load(m)/1000;
    pld(m,33)=2*p_domestic_load(m)/1000;
    qld(m,33)=2*q_domestic_load(m)/1000;
end
    
for m=1:mt
    ploado(m)=0;
    qloado(m)=0;
    for n=1:nbus
        ploado(m)=ploado(m)+pld(m,n);
        qloado(m)=qloado(m)+qld(m,n);
    end
end
  
% x =1:mt;
%  plot(x,1000*ploado(x),'-k')
% ylabel('Real power before DRP (KW)')
% xlabel('Time  (Hour)')
    
    
pgen=sum(pgmax);
qgen=sum(qgmax);

nbranch=size(BranchData1,1);
fb=BranchData1(:,1);
eb=BranchData1(:,2);
r=BranchData1(:,3);
x=BranchData1(:,4);
linelimit=BranchData1(:,5);



for n=1:nbranch
    rl(fb(n),eb(n))=r(n)/(12.66*12.66);
    xl(fb(n),eb(n))=x(n)/(12.66*12.66); 
end



for n=1:nbus
    pld(1,n)=pld(1,n)+0.15*pld(7,n);
    qld(1,n)=qld(1,n)+0.15*qld(7,n);
    pld(2,n)=pld(2,n)+0.15*pld(8,n);
    qld(2,n)=qld(2,n)+0.15*qld(8,n);
    pld(3,n)=pld(3,n)+0.15*pld(17,n);
    qld(3,n)=qld(3,n)+0.15*qld(17,n);
    pld(4,n)=pld(4,n)+0.15*pld(18,n);
    qld(4,n)=qld(4,n)+0.15*qld(18,n);
    pld(5,n)=pld(5,n)+0.15*pld(19,n);
    qld(5,n)=qld(5,n)+0.15*qld(19,n);
    pld(6,n)=pld(6,n)+0.15*pld(20,n);
    qld(6,n)=qld(6,n)+0.15*qld(20,n);
end

for n=1:nbus
    pld(7,n)=0.85*pld(7,n);
    qld(7,n)=0.85*qld(7,n);
    pld(8,n)=0.85*pld(8,n);
    qld(8,n)=0.85*qld(8,n);
    pld(17,n)=0.85*pld(17,n);
    qld(17,n)=0.85*qld(17,n);
    pld(18,n)=0.85*pld(18,n);
    qld(18,n)=0.85*qld(18,n); 
    pld(19,n)=0.85*pld(19,n);
    qld(19,n)=0.85*qld(19,n);
    pld(20,n)=0.85*pld(20,n);
    qld(20,n)=0.85*qld(20,n);
end
        
 


for k=1:mt
    ploadn1(k)=0;
    qloadn1(k)=0;    
    
    for n=1:nbus
        ploadn1(k)=ploadn1(k)+pld(k,n);
        qloadn1(k)=qloadn1(k)+qld(k,n);        
    end
end
    
% x =1:mt;
%  plot(x,1000*ploadn1(x),'-k')
% ylabel('Real power after DRP (KW)')
% xlabel('Time  (Hour)')


 hddata=[-0.000042 -0.0042 0.030 0.90 10.0 -0.25 0.07 0.20 1.0 2.0 1.5 1.8  0 4;
         -0.000040 -0.0030 0.015 1.14  9.5 -0.35 0.06 0.18 0.6 1.2 0.8 1.0  0 3]


  rdata=[10 9 8 7 6 7 8 9 10 11 12 10 11 12 11 10 9 8 7 6 7 8 9 10  8 10 9 11 8 9;
             8 8 9 9 8 7 6 7 8 9 9 8 8 9 9 8 7 6 7 8 9 9 8 8  7 6 8 7 9 9]
     
      
          
nh=size(hddata,1);
for n=1:nh
    c11(n)=hddata(n,1);
    c12(n)=hddata(n,2);
    c13(n)=hddata(n,3);
    c14(n)=hddata(n,4);
    c15(n)=hddata(n,5);
    c16(n)=hddata(n,6);
    qmn(n)=hddata(n,7);
    qmx(n)=hddata(n,8);
    vmn(n)=hddata(n,9);
    vmx(n)=hddata(n,10);
    vi(n)=hddata(n,11);
    ve(n)=hddata(n,12);
    phmin(n)=hddata(n,13);
    phmax(n)=hddata(n,14);
end



for n=1:nh
    for m=1:mt
        ri(n,m)=1.5e-2*rdata(n,m);
    end
end  
   

phgmax=0.100;
phgmin=0;
phmmax=0;
phmmin=-0.100;

vpsi=3.000;
vpse= 3.000;






grmax= 1.0e+03 *[   0
         0
         0
         0
         0
    0.2990
    0.5106
    0.7286
    0.7982
    0.9424
    0.9746
    0.9566
    0.9369
    0.7380
    0.6500
    0.2695
    0.2978
    0.2152
         0
         0
         0
         0
         0
         0 ]
     
     grmin= 1.0e+03 *[    0
         0
         0
         0
         0
         0
    0.4184
    0.5886
    0.7462
    0.8260
    0.9231
    0.9019
    0.7720
    0.6410
    0.5708
    0.2146
    0.2029
         0
         0
         0
         0
         0
         0
         0] 

 temp=[23
    23
    24
    25
    25
    25
    26
    27
    27
    28
    29
    29
    29
    28
    28
    27
    26
    25
    24
    24
    24
    24
    23
    23]    
         

gc=120; %%input('Certain irradiance point:');
gstd=1000
kd=0.06; 


 
% dev1=1;   
%     while (dev1~=0)
%        ev_charge1=0;
%         for k=1:mt
%             if  ((k>=18) && (k<=24))
%                 pevp11(k)=unifrnd(-130,0);
%             else
%                 pevp11(k)=0;
%             end                       
%             ev_charge1 = ev_charge1 + pevp11(k);
%         end
%         charge_diff1=-750-ev_charge1;
%         
%         if (abs(charge_diff1)<0.05)
%             dev1=0;
%         else
%             dev1=1;
%         end
%     end  
% 
% dev2=1;   
%     while (dev2~=0)
%        ev_charge2=0;
%         for k=1:mt
%             if  ((k>=18) && (k<=24))
%                 pevp12(k)=unifrnd(-170,0);
%             else
%                 pevp12(k)=0;
%             end                       
%             ev_charge2 = ev_charge2 + pevp12(k);
%         end
%         charge_diff2=-1000-ev_charge2;
%         
%         if (abs(charge_diff2)<0.05)
%             dev2=0;
%         else
%             dev2=1;
%         end
%     end 


%  pevp11 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -106.3815  -72.9164 -112.8759 -123.5730 -115.8494  -98.9496 -119.4202]
%  pevp12 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -143.6076 -159.3038 -101.1603 -139.6393 -165.9391 -166.8612 -123.4791]

% pevp11 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -106.9129 -101.5177  -92.5042 -118.5321 -106.1810 -122.5159 -101.8493]
% pevp12 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -115.4932 -168.3928 -168.1125  -84.6698 -155.8462 -158.8276 -148.6493]

% pevp11 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0  -97.9358 -100.7685 -128.3322 -103.4610 -105.5368  -85.7274 -128.2366]
% pevp12 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -169.5549 -168.1150  -84.9833 -168.6825 -150.5541  -97.4557 -160.6460]

% pevp11 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -119.7220 -123.5355  -99.0478 -116.8480 -125.8780  -60.0696 -104.9284]
% pevp12 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -165.5256 -121.7679 -127.1533 -141.5069 -142.3040 -134.4163 -167.3528]


% pevp11 =[       0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -102.7583  -91.5296 -125.1471 -125.5820 -107.9834 -123.4082  -73.5835]
% pevp12 =[       0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -156.8808 -145.2719 -131.9932 -148.5947 -128.5344 -167.7200 -121.0537]


% pevp11 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -111.1255  -85.9477  -97.7729 -125.8608 -112.2854 -104.9272 -112.0778]
% pevp12 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -135.2861 -161.9592 -138.1444 -134.2287 -149.9431 -121.8348 -158.5591]


% pevp11 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0           0         0         0 -128.1033  -46.3370  -99.1772 -122.2503 -108.2904 -127.9181 -117.9387]
% pevp12 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0           0         0         0 -135.2861 -161.9592 -138.1444 -134.2287 -149.9431 -121.8348 -158.5591]


% pevp11 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0  -69.1737 -112.2880 -110.5645 -103.2155 -111.2963 -116.1797 -127.2665]
% pevp12 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -165.5256 -121.7679 -127.1533 -141.5069 -142.3040 -134.4163 -167.3528]


% pevp11 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0           0         0         0  -35.7747 -120.8614 -124.2094 -124.6589 -123.7400 -107.0297 -113.6922]
% pevp12 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0           0         0         0 -133.6618 -137.1747 -158.6636 -165.5867 -128.7795 -137.2563 -138.8301]


% pevp11 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -126.6093 -123.2498 -128.8404 -126.0540  -74.6926  -57.1775 -113.3822]
% pevp12 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -146.7229 -156.7830 -107.1008 -164.2543 -128.3355 -139.7633 -157.0580]


% pevp11 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -128.1033  -46.3370  -99.1772 -122.2503 -108.2904 -127.9181 -117.9387]
% pevp12 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -135.2861 -161.9592 -138.1444 -134.2287 -149.9431 -121.8348 -158.5591]


% pevp11 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -125.2899 -119.4468 -126.6680 -107.7513  -45.2353 -116.6753 -108.9707]
% pevp12 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -116.2749 -117.6914 -160.6507 -147.0763 -143.8643 -152.5108 -161.9584]


pevp11 =[          0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0  -94.2239  -92.9956 -117.1332 -128.6145 -100.9447  -97.3394 -118.7891]
pevp12 =[          0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -137.6488 -118.0692 -145.9920 -162.6133 -167.3098 -109.1997 -159.2067]


% pevp11 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0               0         0         0 -120.0285 -102.5587 -110.3966 -111.6754  -96.9008 -107.3084 -101.1070]
% pevp12 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0  -73.6225 -169.1253 -124.3157 -162.6919 -155.4815 -160.3334 -154.4114]


% pevp11 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -106.9129 -101.5177  -92.5042 -118.5321 -106.1810 -122.5159 -101.8493]
% pevp12 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -115.4932 -168.3928 -168.1125  -84.6698 -155.8462 -158.8276 -148.6493]


% pevp11 =[          0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -116.8012 -118.5970 -129.1406 -106.0237 -126.4434 -117.4359  -35.5834]
% pevp12 =[          0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -136.2743 -131.2542 -154.3195 -110.9997 -154.2237 -153.3081 -159.6042]


% pevp11 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0           0         0         0 -112.5612 -124.5788 -127.2113 -110.6625 -105.1713  -97.7576  -72.0262]
% pevp12 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0           0         0         0 -167.4708 -154.1713 -146.9259 -168.5135 -150.6183 -156.7767  -55.5734]






   for k=1:mt
    for n=1:nbus
        pl1(k,n)=pld(k,n);
        ql1(k,n)=qld(k,n);
     end
end


    for k=1:mt
         pl1(k,15)=pl1(k,15)-(pevp11(k)/1000);
         pl1(k,30)=pl1(k,30)-(pevp12(k)/1000); 
    end
    
% qp11 =[    0.1422    0.1678    0.1379    0.1258    0.1151    0.1825    0.1608    0.1573    0.1417    0.1067    0.0839    0.1192    0.1319    0.1301      0.1182    0.1005    0.1104    0.1593    0.0734    0.0784    0.0785    0.0775    0.0845    0.1014]
% qp12 =[    0.1302    0.0931    0.1462    0.1537    0.1873    0.1676    0.1211    0.1267    0.0715    0.0747    0.1041    0.0843    0.1094    0.1061      0.1025    0.1031    0.1001    0.0833    0.1060    0.1007    0.1192    0.1140    0.1143    0.0807]
   

% qp11 =[    0.1349    0.1474    0.1823    0.1581    0.1552    0.1771    0.1215    0.1083    0.1080    0.0749    0.0732    0.1080    0.1094    0.1421         0.1387    0.1262    0.1065    0.1130    0.1266    0.1027    0.1350    0.1021    0.0809    0.0930]
% qp12 =[    0.1707    0.1577    0.0709    0.1245    0.1158    0.1733    0.1497    0.1212    0.1247    0.0908    0.0842    0.0822    0.1137    0.0812         0.0941    0.1005    0.1221    0.1395    0.0853    0.1004    0.0883    0.1377    0.0763    0.0751]


% qp11 =[    0.1230    0.1471    0.1785    0.1707    0.1527    0.1946    0.1377    0.0948    0.1200    0.0713    0.0892    0.0919    0.1077    0.1076       0.1174    0.0899    0.1175    0.1413    0.1077    0.1126    0.1224    0.1291    0.0924    0.1480]
% qp12 =[    0.1703    0.1303    0.0623    0.1370    0.0970    0.1466    0.1479    0.1393    0.1090    0.1125    0.0893    0.1023    0.1126    0.0971       0.1186    0.1131    0.1330    0.1404    0.1178    0.1042    0.0718    0.0810    0.0784    0.0781]


qp11 =[    0.1571    0.1543    0.1553    0.1546    0.1529    0.1974    0.1387    0.1341    0.1290    0.0830    0.0987    0.1015    0.0728    0.0879       0.0951    0.1051    0.0885    0.1355    0.1273    0.1172    0.1350    0.1096    0.1047    0.0796]
qp12 =[    0.1350    0.1357    0.1357    0.1303    0.1347    0.1615    0.1216    0.1094    0.0916    0.0820    0.0893    0.0888    0.1320    0.1271       0.1024    0.1085    0.1205    0.1597    0.0937    0.1070    0.0652    0.1052    0.0699    0.0632]


% qp11 =[    0.1006    0.0868    0.1025    0.1449    0.1404    0.1973    0.1541    0.1553    0.1509    0.0860    0.0923    0.1096    0.1461    0.1525      0.1218    0.1486    0.1360    0.1249    0.1105    0.0927    0.1026    0.1089    0.0871    0.0724]
% qp12 =[    0.1607    0.1574    0.1466    0.1335    0.1122    0.1441    0.1262    0.1378    0.0649    0.0987    0.0779    0.0859    0.1114    0.0856      0.1087    0.1083    0.0836    0.1384    0.0879    0.0967    0.1260    0.1087    0.1050    0.0737]


% qp11 =[    0.1317    0.1568    0.1595    0.1793    0.1490    0.1854    0.1341    0.1482    0.1421    0.0983    0.0936    0.0776    0.1138    0.0879     0.1462    0.1041    0.1077    0.1404    0.1029    0.0995    0.1041    0.1023    0.0773    0.0832]
% qp12 =[    0.1665    0.1129    0.1213    0.0774    0.1419    0.1643    0.1335    0.0927    0.0943    0.0797    0.0810    0.1275    0.1025    0.1319     0.0921    0.0996    0.1037    0.0949    0.1053    0.1038    0.1370    0.1010    0.1397    0.0656]


% qp11 =[    0.1506    0.1600    0.1663    0.1572    0.1663    0.1975    0.1124    0.1028    0.1060    0.1038    0.0824    0.1129    0.1143    0.1203      0.1121    0.1016    0.1486    0.1519    0.1181    0.0740    0.1030    0.1083    0.0709    0.1540]
% qp12 =[    0.1465    0.1398    0.1258    0.1583    0.1092    0.1621    0.1435    0.1334    0.1148    0.0686    0.0879    0.0720    0.1309    0.0925      0.1100    0.1062    0.0807    0.1165    0.0660    0.0804    0.0887    0.1016    0.1234    0.1184]


% qp11 =[   0.1690    0.1674    0.1805    0.1948    0.1317    0.1920    0.1077    0.1180    0.1160    0.0755    0.0870    0.0935    0.1399    0.1421       0.1105    0.0944    0.1121    0.1257    0.1073    0.1057    0.0763    0.1064    0.1004    0.1112]
% qp12 =[   0.1372    0.1332    0.0904    0.1043    0.1476    0.1670    0.1715    0.1252    0.1133    0.1002    0.0857    0.0977    0.1259    0.0905       0.1091    0.1193    0.0996    0.1343    0.0690    0.0830    0.1271    0.1158    0.0657    0.0674]


% qp11 =[   0.1775    0.1353    0.1629    0.1389    0.1340    0.1908    0.1252    0.1488    0.1237    0.0811    0.0961    0.0975    0.1032    0.1409        0.1134    0.1132    0.1199    0.1191    0.1106    0.0992    0.0846    0.1106    0.0938    0.1047]
% qp12 =[   0.0822    0.1568    0.1307    0.1505    0.1593    0.1730    0.1379    0.1156    0.0909    0.0920    0.0845    0.0972    0.1237    0.1111        0.1114    0.0853    0.0802    0.1238    0.0910    0.0840    0.1275    0.1065    0.0830    0.1020]


% qp11 =[    0.1857    0.1494    0.1870    0.1314    0.1328    0.1907    0.1469    0.1473    0.1294    0.0886    0.0892    0.0987    0.1009    0.1232        0.1225    0.1055    0.0971    0.1359    0.0921    0.1033    0.1042    0.0924    0.0937    0.1071]
% qp12 =[    0.0655    0.1359    0.0651    0.1517    0.1735    0.1720    0.1184    0.1024    0.0926    0.0899    0.0897    0.0935    0.1656    0.1308        0.1331    0.1018    0.1128    0.1082    0.0931    0.0892    0.0924    0.0969    0.0898    0.1160]


% qp11 =[    0.1892    0.1567    0.1530    0.1712    0.1403    0.1902    0.1356    0.1334    0.1359    0.0803    0.0856    0.0920    0.1703    0.1287       0.1292    0.0784    0.1037    0.1260    0.0933    0.0812    0.1073    0.0811    0.0846    0.1077]
% qp12 =[    0.0685    0.0979    0.1465    0.0896    0.1653    0.1593    0.1492    0.1495    0.1152    0.0936    0.0932    0.0986    0.0946    0.1117       0.1290    0.1495    0.1230    0.1348    0.0922    0.0768    0.0603    0.0983    0.0920    0.1013]


% qp11 =[    0.1567    0.1671    0.1603    0.1625    0.1540    0.1998    0.1475    0.1304    0.1261    0.0885    0.0819    0.0981    0.1224    0.1245         0.0983    0.1014    0.1139    0.1288    0.1019    0.0949    0.1074    0.0980    0.0894    0.1011]
% qp12 =[    0.1445    0.0837    0.0876    0.1146    0.1367    0.1434    0.1488    0.1463    0.1404    0.0925    0.0988    0.0943    0.1348    0.1031         0.0959    0.0907    0.1153    0.1259    0.1087    0.1001    0.0971    0.0999    0.0923    0.0847]


% qp11 =[    0.1507    0.1479    0.1544    0.0939    0.1409    0.1933    0.1401    0.1218    0.1162    0.0842    0.0880    0.0977    0.1345    0.1230        0.1415    0.1144    0.1109    0.1369    0.1101    0.1029    0.1177    0.1036    0.1046    0.1058]
% qp12 =[    0.1585    0.1484    0.1085    0.1788    0.1400    0.1640    0.1232    0.0980    0.1150    0.0944    0.0980    0.0971    0.1036    0.1304        0.1047    0.1052    0.0913    0.1140    0.0919    0.0782    0.0847    0.0945    0.0899    0.0676]


% qp11 =[    0.1774    0.1604    0.1757    0.1483    0.1474    0.1723    0.1357    0.1061    0.1014    0.0717    0.0794    0.0985    0.1003    0.1218      0.1217    0.1297    0.1249    0.1342    0.1039    0.1008    0.1031    0.1074    0.1073    0.1057]
% qp12 =[    0.0900    0.1159    0.0679    0.1045    0.1136    0.1701    0.1317    0.1564    0.1275    0.0815    0.0903    0.0935    0.1192    0.1257      0.1054    0.1104    0.1185    0.1274    0.1220    0.1121    0.1128    0.1156    0.1059    0.0621]


% qp11 =[    0.1562    0.1441    0.1407    0.1464    0.1690    0.1863    0.1443    0.1388    0.1196    0.0756    0.0770    0.0987    0.1203    0.1220      0.1066    0.1471    0.1260    0.1349    0.1051    0.1020    0.1022    0.1053    0.0733    0.0835]
% qp12 =[    0.1157    0.1302    0.1278    0.1364    0.0904    0.1677    0.1269    0.1122    0.1179    0.0931    0.0952    0.0952    0.1319    0.1087      0.1170    0.1031    0.1164    0.1290    0.1170    0.1029    0.1065    0.0830    0.0946    0.0912]


% qp11 =[    0.1559    0.1506    0.1406    0.1424    0.1403    0.1939    0.1280    0.1192    0.1205    0.0804    0.0770    0.1008    0.1395    0.1265        0.1049    0.1271    0.1282    0.1377    0.1028    0.0988    0.1011    0.1029    0.0866    0.0993]
% qp12 =[    0.1224    0.1263    0.1467    0.1422    0.1460    0.1654    0.1194    0.1121    0.1167    0.0850    0.0991    0.0984    0.0710    0.1097        0.1121    0.1022    0.0904    0.1265    0.1071    0.0990    0.1012    0.1038    0.1026    0.0849]


% qp11 =[      0.1044    0.1419    0.1301    0.1743    0.1691    0.1817    0.1270    0.1024    0.1116    0.1001    0.0782    0.0967    0.1403    0.1586        0.1381    0.1112    0.1236    0.1392    0.1058    0.0988    0.1011    0.0927    0.1099    0.0983]
% qp12 =[      0.1772    0.1344    0.1507    0.0802    0.0772    0.1683    0.1535    0.1392    0.1233    0.0641    0.0973    0.0888    0.1194    0.0717        0.0704    0.1113    0.1172    0.1202    0.1146    0.0951    0.1012    0.1346    0.1059    0.0842]




dph1=1;
 while (dph1~=0)
 dqp1=1;
    nip1=0;
    while (dqp1~=0)
        nip1=nip1+1;
        dvmp1=1;
        while (dvmp1~=0)
%             for k=1:(mt-1)
%                 qp11(k)=qmn(1)+unifrnd(0,1)*(qmx(1)-qmn(1));
%             end
            for k=1:(mt-1)
                if (k==1)
                    vp11(k)=vi(1)+ri(1,k)-qp11(k);
                elseif (k>=2)
                    vp11(k)=vp11(k-1)+ri(1,k)-qp11(k);
                end
            end
            for k=1:(mt-1)
                if ((vp11(k)>vmx(1))|(vp11(k)<vmn(1)))
                    dvp1(k)=1;
                else
                    dvp1(k)=0;
                end
            end
            dvmp1=0;
            for k=1:(mt-1)
                if (dvp1(k)>dvmp1)
                    dvmp1=dvp1(k);
                end
            end
        end
        
        
        rt1=0;
        qt1=0;
        for k=1:mt
            rt1=rt1+ri(1,k);
        end
        for k=1:(mt-1)
            qt1=qt1+qp11(k);
        end
        qp11(mt)=vi(1)-ve(1)+rt1-qt1;
        if ((qp11(mt)>=qmn(1))&(qp11(mt)<=qmx(1)))
            dqp1=0;
        else
            dqp1=1;
        end
    end
    
    
    for k=1:mt
        if (k==1)
            php11(k)=(c11(1)*vi(1)^2+c12(1)*qp11(k)^2+c13(1)*vi(1)*qp11(k)+c14(1)*vi(1)+c15(1)*qp11(k)+c16(1));
            qhp11(k)=0.75*php11(k);
        else
            php11(k)=(c11(1)*vp11(k-1)^2+c12(1)*qp11(k)^2+c13(1)*vp11(k-1)*qp11(k)+c14(1)*vp11(k-1)+c15(1)*qp11(k)+c16(1));
%             qhp11(k)=0.75*php11(k);
            qhp11(k)=0.79*php11(k);  
        end
        
    end  
     for k=1:mt        
        if (php11(k)<0)
            dphp1(k)=1;
        else
             dphp1(k)=0;
        end
    end
    
    dph1=0;
    for k=1:mt
        if (dphp1(k)>dph1)
            dph1=dphp1(k);
        end
    end
    
 end  
 

 dph2=1;
 while (dph2~=0)
 dqp2=1;
    nip1=0;
    while (dqp2~=0)
        nip1=nip1+1;
        dvmp1=1;
        while (dvmp1~=0)
%             for k=1:(mt-1)
%                 qp12(k)=qmn(2)+unifrnd(0,1)*(qmx(2)-qmn(2));
%             end
            for k=1:(mt-1)
                if (k==1)
                    vp12(k)=vi(2)+ri(2,k)-qp12(k);
                elseif (k>=2)
                    vp12(k)=vp12(k-1)+ri(2,k)-qp12(k);
                end
            end
            for k=1:(mt-1)
                if ((vp12(k)>vmx(2))|(vp12(k)<vmn(2)))
                    dvp1(k)=1;
                else
                    dvp1(k)=0;
                end
            end
            dvmp1=0;
            for k=1:(mt-1)
                if (dvp1(k)>dvmp1)
                    dvmp1=dvp1(k);
                end
            end
        end
        
        
        rt2=0;
        qt2=0;
        for k=1:mt
            rt2=rt2+ri(2,k);
        end
        for k=1:(mt-1)
            qt2=qt2+qp12(k);
        end
        qp12(mt)=vi(2)-ve(2)+rt2-qt2;
        if ((qp12(mt)>=qmn(2))&(qp12(mt)<=qmx(2)))
            dqp2=0;
        else
            dqp2=1;
        end
    end
    
    
    for k=1:mt
        if (k==1)
            php12(k)=(c11(2)*vi(2)^2+c12(2)*qp12(k)^2+c13(2)*vi(2)*qp12(k)+c14(2)*vi(2)+c15(2)*qp12(k)+c16(2));
            qhp12(k)=0.75*php12(k);
        else
            php12(k)=(c11(2)*vp12(k-1)^2+c12(2)*qp12(k)^2+c13(2)*vp12(k-1)*qp12(k)+c14(2)*vp12(k-1)+c15(2)*qp12(k)+c16(2));
%             qhp12(k)=0.75*php12(k);
             qhp12(k)=0.79*php12(k);
        end
        
    end  
     for k=1:mt        
        if (php12(k)<0)
            dphp2(k)=1;
        else
             dphp2(k)=0;
        end
    end
    
    dph2=0;
    for k=1:mt
        if (dphp2(k)>dph2)
            dph2=dphp2(k);
        end
    end
    
 end   
   
dw11=1;
        while (dw11~=0)
            for m=1:7
                qhgp11(m)=-0.2;
                phgp11(m)=-0.1;
            end
            for m=1:7
                if (m==1)
                    vpsp11(m)=vpsi(1)-qhgp11(m);
                elseif (m>=2)
                    vpsp11(m)=vpsp11((m-1))-qhgp11(m);
                end
            end

             qhgp11(8)=0;
                phgp11(8)=0;
            
            vpsp11(8)=vpsp11(7);
            
            dvps=1;
        while (dvps~=0)
            for m=9:19
                phgp11(m)=unifrnd(phgmin,phgmax);
                qhgp11(m)=0.05+2*phgp11(m);
            end
            
            for m=9:19
                vpsp11(m)=vpsp11((m-1))-qhgp11(m);
                
               if (vpsp11(m)>=0.300)
                dvs(m)=0;
               else
                   dvs(m)=1;
               end
            end
            dvps=0;
           for m=9:19
               if (dvs(m)>dvps)
                  dvps=dvs(m);
               end
           end
        end 
           
           qhgp11(20)=0;
                phgp11(20)=0;
        
              vpsp11(20)=vpsp11(19);  
                
             for m=21:24
                  qhgp11(m)=-0.200;
                phgp11(m)=-0.100;
             end
             
              for m=21:24
                  vpsp11(m)=vpsp11((m-1))-qhgp11(m);
              end
              
              qtotal=0;
              
              for m=1:24
                 qtotal=qtotal+qhgp11(m);
              end 
              if (abs(qtotal)<0.001)
                  dw11=0;
              else
                  dw11=1;
              end
        end
  
     dw11     
 
 dw12=1;
        while (dw12~=0)
            for m=1:7
                qhgp12(m)=-0.2;
                phgp12(m)=-0.1;
            end
            for m=1:7
                if (m==1)
                    vpsp12(m)=vpsi(1)-qhgp12(m);
                elseif (m>=2)
                    vpsp12(m)=vpsp12((m-1))-qhgp12(m);
                end
            end

             qhgp12(8)=0;
                phgp12(8)=0;
            
            vpsp12(8)=vpsp12(7);
            
            dvps=1;
        while (dvps~=0)
            for m=9:19
                phgp12(m)=unifrnd(phgmin,phgmax);
                qhgp12(m)=0.05+2*phgp12(m);
            end
            
            for m=9:19
                vpsp12(m)=vpsp12((m-1))-qhgp12(m);
                
               if (vpsp12(m)>=0.300)
                dvs(m)=0;
               else
                   dvs(m)=1;
               end
            end
            dvps=0;
           for m=9:19
               if (dvs(m)>dvps)
                  dvps=dvs(m);
               end
           end
        end 
           
           qhgp12(20)=0;
                phgp12(20)=0;
        
              vpsp12(20)=vpsp12(19);  
                
             for m=21:24
                  qhgp12(m)=-0.200;
                phgp12(m)=-0.100;
             end
             
              for m=21:24
                  vpsp12(m)=vpsp12((m-1))-qhgp12(m);
              end
              
              qtotal=0;
              
              for m=1:24
                 qtotal=qtotal+qhgp12(m);
              end 
              if (abs(qtotal)<0.001)
                  dw12=0;
              else
                  dw12=1;
              end
        end
  
     dw12  
     
     

    
    dif1=1;
while (dif1~=0)
  
    for n=1:nbus
        pgp1(1,n)=0;
    end
    
   tp21(1)=unifrnd(tp21mn,tp21mx);
   tp31(1)=unifrnd(tp31mn,tp31mx); 
   
   tq21(1)=unifrnd(tq21mn,tq21mx);
   tq31(1)=unifrnd(tq31mn,tq31mx);  
    
for n=1:nbus
    qgp1(1,n)=unifrnd(0,qgmax(n));
end


pgp1(1,1)=unifrnd(0,pgmax(1));
qgp1(1,1)=unifrnd(0,qgmax(1));


       gr1(1)=unifrnd(grmin(1),grmax(1));
         if ((gr1(1)>=0)&(gr1(1)<gc))
              
%        pgp1(1,9) =pgmax(9)*((gr1(1)^2)/(gstd*gc));
       pgp1(1,11) =pgmax(11)*((gr1(1)^2)/(gstd*gc));
       pgp1(1,23) =pgmax(23)*((gr1(1)^2)/(gstd*gc));
        else
         if (gr1(1)>gc)
%              pgp1(1,9) =pgmax(9)*(gr1(1)/gstd);
             pgp1(1,11) =pgmax(11)*(gr1(1)/gstd);
             pgp1(1,23) =pgmax(23)*(gr1(1)/gstd);
         end
        end
         
               
       
        pgp1(1,13)=phgp11(1);
        pgp1(1,6)=php11(1);
         qgp1(1,6)=qhp11(1);
         
         pgp1(1,27)=php12(1);
         qgp1(1,27)=qhp12(1);
        
        
        
         % Backward Sweep


   p1(1,18)=pgp1(1,18)+tp21(1)-pl1(1,18);
   q1(1,18)=qgp1(1,18)+tq21(1)-ql1(1,18);

j=19;
for ki=1:12
    
    n=j-ki;    
    m=n-1;    


    p1(1,m)=pgp1(1,m)-pl1(1,m)-rl((m),n)*((p1(1,n)^2+q1(1,n)^2)/(vsp(n)^2));
    q1(1,m)=qgp1(1,m)-ql1(1,m)-xl((m),n)*((p1(1,n)^2+q1(1,n)^2)/(vsp(n)^2));
    
end

 p1(1,33)=pgp1(1,33)+tp31(1)-pl1(1,33);
 q1(1,33)=qgp1(1,33)+tq31(1)-ql1(1,33);


j=34;
for ki=1:7
    
    n=j-ki;    
    m=n-1;    

    p1(1,m)=pgp1(1,m)-pl1(1,m)-rl((m),n)*((p1(1,n)^2+q1(1,n)^2)/(vsp(n)^2));
    q1(1,m)=qgp1(1,m)-ql1(1,m)-xl((m),n)*((p1(1,n)^2+q1(1,n)^2)/(vsp(n)^2));
    
end


p1(1,25)=pgp1(1,25)-pl1(1,25);
q1(1,25)=qgp1(1,25)-ql1(1,25);


j=26;
for ki=1:2
    
    n=j-ki;    
    m=n-1;    

   
    p1(1,m)=pgp1(1,m)-pl1(1,m)-rl((m),n)*((p1(1,n)^2+q1(1,n)^2)/(vsp(n)^2));
    q1(1,m)=qgp1(1,m)-ql1(1,m)-xl((m),n)*((p1(1,n)^2+q1(1,n)^2)/(vsp(n)^2));
    
end


p1(1,22)=pgp1(1,22)-pl1(1,22);
q1(1,22)=qgp1(1,22)-ql1(1,22);


j=23;
for ki=1:3
    
    n=j-ki;    
    m=n-1;    

   

    p1(1,m)=pgp1(1,m)-pl1(1,m)-rl((m),n)*((p1(1,n)^2+q1(1,n)^2)/(vsp(n)^2));
    q1(1,m)=qgp1(1,m)-ql1(1,m)-xl((m),n)*((p1(1,n)^2+q1(1,n)^2)/(vsp(n)^2));
    
end


    p1(1,6)=p1(1,6)-rl((6),26)*((p1(1,26)^2+q1(1,26)^2)/(vsp(26)^2));
    q1(1,6)=q1(1,6)-xl((6),26)*((p1(1,26)^2+q1(1,26)^2)/(vsp(26)^2));  

   

  j=7;
for ki=1:3
    
    n=j-ki;    
    m=n-1;    

    
    p1(1,m)=pgp1(1,m)-pl1(1,m)-rl((m),n)*((p1(1,n)^2+q1(1,n)^2)/(vsp(n)^2));
    q1(1,m)=qgp1(1,m)-ql1(1,m)-xl((m),n)*((p1(1,n)^2+q1(1,n)^2)/(vsp(n)^2));
    
end
  

    p1(1,3)=p1(1,3)-rl((3),23)*((p1(1,23)^2+q1(1,23)^2)/(vsp(23)^2));
    q1(1,3)=q1(1,3)-xl((3),23)*((p1(1,23)^2+q1(1,23)^2)/(vsp(23)^2));  


    
    

    p1(1,2)=pgp1(1,2)-pl1(1,2)-rl((2),3)*((p1(1,3)^2+q1(1,3)^2)/(vsp(3)^2));
    q1(1,2)=qgp1(1,2)-ql1(1,2)-xl((2),3)*((p1(1,3)^2+q1(1,3)^2)/(vsp(3)^2));  
    
 
    p1(1,2)=p1(1,2)-rl((2),19)*((p1(1,19)^2+q1(1,19)^2)/(vsp(19)^2));
    q1(1,2)=q1(1,2)-xl((2),19)*((p1(1,19)^2+q1(1,19)^2)/(vsp(19)^2));  
    
  
    
    
    p1(1,1)=pgp1(1,1)-pl1(1,1)-rl((1),2)*((p1(1,2)^2+q1(1,2)^2)/(vsp(2)^2));
    q1(1,1)=qgp1(1,1)-ql1(1,1)-xl((1),2)*((p1(1,2)^2+q1(1,2)^2)/(vsp(2)^2)); 
    
    
% p
% q


% Forward Sweep

vc1(1,1)=vsp(1);
delc1(1,1)=delsp(1);
vcalp1(1,1)=vc1(1,1);
for ki=1:32
    j=ki+1;
    vc1(1,j)=sqrt(vc1(1,ki)*vc1(1,ki)-2*(p1(1,ki)*rl(ki,j)+q1(1,ki)*xl(ki,j))+(rl(ki,j)*rl(ki,j)+xl(ki,j)*xl(ki,j))*((p1(1,ki)*p1(1,ki)+q1(1,ki)*q1(1,ki))/vc1(1,ki)*vc1(1,ki)));

    delc1(1,j)=delc1(1,ki)+atan((q1(1,ki)*rl(ki,j)-p1(1,ki)*xl(ki,j))/(vc1(1,ki)*vc1(1,ki)-(p1(1,ki)*rl(ki,j)+q1(1,ki)*xl(ki,j))));
    
    delcd1(1,j)=delc1(1,j)*180/3.1429;
    delp1(1,j)=delc1(1,j);
    vcalp1(1,j)=vc1(1,j);
end

% vc
% delc
% delcd



tplossp1(1)=0;
tqlossp1(1)=0;

for n=1:nbranch
   
   cc(1,n)=(complex(vc1(1,fb(n))*cos(delc1(1,fb(n))),(vc1(1,fb(n))*sin(delc1(1,fb(n))))));
   dd(1,n)=(complex(vc1(1,eb(n))*cos(delc1(1,eb(n))),(vc1(1,eb(n))*sin(delc1(1,eb(n))))));
   
   cd(1,n)=cc(1,n)-dd(1,n);
   zz(1,n)=(complex((rl(fb(n),eb(n))),(xl(fb(n),eb(n)))));
   cr1(1,n)=((cc(1,n)-dd(1,n))/zz(1,n));
   plossp1(1,n)=(rl(fb(n),eb(n)))*(abs(cr1(1,n)))^2;
   qlossp1(1,n)=(xl(fb(n),eb(n)))*(abs(cr1(1,n)))^2;
    tplossp1(1)=tplossp1(1)+plossp1(1,n);
    tqlossp1(1)=tqlossp1(1)+qlossp1(1,n);
end

vprofileph1(1)=0;

for n=1:nbus
    vprop1(1,n)=abs(1-vc1(1,n));
    vprofileph1(1)=vprofileph1(1)+abs(1-vc1(1,n));
end


stabilityp1(1,1)=0;
vsiph1(1)=0;
for n=1:32
    j=n+1;
    stabilityp1(1,j)=1/((vc1(1,n))^4-4*(p1(1,j)*xl(n,j)-q1(1,j)*rl(n,j))^2-4*(p1(1,j)*rl(n,j)+q1(1,j)*xl(n,j))*(vc1(1,n))^2);
    
   if (stabilityp1(1,j)>vsiph1(1))
        vsiph1(1)=stabilityp1(1,j);
    end
end

pgt1(1)=0;
qgt1(1)=0;
for n=1:nbus
    pgt1(1)=pgt1(1)+pgp1(1,n);
    qgt1(1)=qgt1(1)+qgp1(1,n);
end

pdpl1(1)=ploadn1(1)+tplossp1(1);
qdql1(1)=qloadn1(1)+tqlossp1(1);

difp1=pgt1(1)-pdpl1(1);
difq1=qgt1(1)-qdql1(1);

if ((abs(difp1)<=0.21)&&(abs(difq1)<=0.21))
    dif1=0;
else
    dif1=1;    
end
end

dif1

for k=2:mt
  
    dif1=1;
while (dif1~=0)
    
   tp21(k)=unifrnd(tp21mn,tp21mx);
   tp31(k)=unifrnd(tp31mn,tp31mx); 
   
   tq21(k)=unifrnd(tq21mn,tq21mx);
   tq31(k)=unifrnd(tq31mn,tq31mx);  
    
  
    for n=1:nbus
        pgp1(k,n)=0;
    end
    
for n=1:nbus
    qgp1(k,n)=unifrnd(0,qgmax(n));
end


qgp1(k,1)=unifrnd(0,qgmax(1));


  dp11=1;
       while (dp11~=0)
           pgp1(k,1)=unifrnd(0,pgmax(1));
           if (pgp1(k,1)>pgp1((k-1),1))
               ur=pgp1(k,1)-pgp1((k-1),1);
               if (ur>0.3)
                    dp11=1;                   
                else
                    dp11=0;
                end
            elseif (pgp1(k,1)<pgp1((k-1),1))
                dr=-pgp1(k,1)+pgp1((k-1),1);
                if (dr>0.3)
                    dp11=1;                  
                else
                    dp11=0;
                end
            end
       end


  
       gr1(k)=unifrnd(grmin(k),grmax(k));
         if ((gr1(k)>=0)&(gr1(k)<gc))
              
       pgp1(k,11) =pgmax(11)*((gr1(k)^2)/(gstd*gc));
       pgp1(k,23) =pgmax(23)*((gr1(k)^2)/(gstd*gc));
     
        else
         if (gr1(k)>gc)
            pgp1(k,11) =pgmax(11)*(gr1(k)/gstd);
            pgp1(k,23) =pgmax(23)*(gr1(k)/gstd);
          
         end
         end

  
        pgp1(k,13)=phgp11(k);

         pgp1(k,6)=php11(k);
         qgp1(k,6)=qhp11(k);
         
         pgp1(k,27)=php12(k);
         qgp1(k,27)=qhp12(k);
         
         
% Backward Sweep


   p1(k,18)=pgp1(k,18)+tp21(k)-pl1(k,18);
   q1(k,18)=qgp1(k,18)+tq21(k)-ql1(k,18);

j=19;
for ki=1:12
    
    n=j-ki;    
    m=n-1;    


    p1(k,m)=pgp1(k,m)-pl1(k,m)-rl((m),n)*((p1(k,n)^2+q1(k,n)^2)/(vsp(n)^2));
    q1(k,m)=qgp1(k,m)-ql1(k,m)-xl((m),n)*((p1(k,n)^2+q1(k,n)^2)/(vsp(n)^2));
    
end

 p1(k,33)=pgp1(k,33)+tp31(k)-pl1(k,33);
 q1(k,33)=qgp1(k,33)+tq31(k)-ql1(k,33);


j=34;
for ki=1:7
    
    n=j-ki;    
    m=n-1;    

    p1(k,m)=pgp1(k,m)-pl1(k,m)-rl((m),n)*((p1(k,n)^2+q1(k,n)^2)/(vsp(n)^2));
    q1(k,m)=qgp1(k,m)-ql1(k,m)-xl((m),n)*((p1(k,n)^2+q1(k,n)^2)/(vsp(n)^2));
    
end


p1(k,25)=pgp1(k,25)-pl1(k,25);
q1(k,25)=qgp1(k,25)-ql1(k,25);


j=26;
for ki=1:2
    
    n=j-ki;    
    m=n-1;    

   
    p1(k,m)=pgp1(k,m)-pl1(k,m)-rl((m),n)*((p1(k,n)^2+q1(k,n)^2)/(vsp(n)^2));
    q1(k,m)=qgp1(k,m)-ql1(k,m)-xl((m),n)*((p1(k,n)^2+q1(k,n)^2)/(vsp(n)^2));
    
end


p1(k,22)=pgp1(k,22)-pl1(k,22);
q1(k,22)=qgp1(k,22)-ql1(k,22);


j=23;
for ki=1:3
    
    n=j-ki;    
    m=n-1;    

   

    p1(k,m)=pgp1(k,m)-pl1(k,m)-rl((m),n)*((p1(k,n)^2+q1(k,n)^2)/(vsp(n)^2));
    q1(k,m)=qgp1(k,m)-ql1(k,m)-xl((m),n)*((p1(k,n)^2+q1(k,n)^2)/(vsp(n)^2));
    
end


    p1(k,6)=p1(k,6)-rl((6),26)*((p1(k,26)^2+q1(k,26)^2)/(vsp(26)^2));
    q1(k,6)=q1(k,6)-xl((6),26)*((p1(k,26)^2+q1(k,26)^2)/(vsp(26)^2));  

   

  j=7;
for ki=1:3
    
    n=j-ki;    
    m=n-1;    

    
    p1(k,m)=pgp1(k,m)-pl1(k,m)-rl((m),n)*((p1(k,n)^2+q1(k,n)^2)/(vsp(n)^2));
    q1(k,m)=qgp1(k,m)-ql1(k,m)-xl((m),n)*((p1(k,n)^2+q1(k,n)^2)/(vsp(n)^2));
    
end
  

    p1(k,3)=p1(k,3)-rl((3),23)*((p1(k,23)^2+q1(k,23)^2)/(vsp(23)^2));
    q1(k,3)=q1(k,3)-xl((3),23)*((p1(k,23)^2+q1(k,23)^2)/(vsp(23)^2));  


    
    

    p1(k,2)=pgp1(k,2)-pl1(k,2)-rl((2),3)*((p1(k,3)^2+q1(k,3)^2)/(vsp(3)^2));
    q1(k,2)=qgp1(k,2)-ql1(k,2)-xl((2),3)*((p1(k,3)^2+q1(k,3)^2)/(vsp(3)^2));  
    
 
    p1(k,2)=p1(k,2)-rl((2),19)*((p1(k,19)^2+q1(k,19)^2)/(vsp(19)^2));
    q1(k,2)=q1(k,2)-xl((2),19)*((p1(k,19)^2+q1(k,19)^2)/(vsp(19)^2));  
    
  
    
    
    p1(k,1)=pgp1(k,1)-pl1(k,1)-rl((1),2)*((p1(k,2)^2+q1(k,2)^2)/(vsp(2)^2));
    q1(k,1)=qgp1(k,1)-ql1(k,1)-xl((1),2)*((p1(k,2)^2+q1(k,2)^2)/(vsp(2)^2)); 
    
    
% p
% q


% Forward Sweep

vc1(k,1)=vsp(1);
delc1(k,1)=delsp(1);
  vcalp1(k,1)=vc1(k,1);
for ki=1:32
    j=ki+1;
    vc1(k,j)=sqrt(vc1(k,ki)*vc1(k,ki)-2*(p1(k,ki)*rl(ki,j)+q1(k,ki)*xl(ki,j))+(rl(ki,j)*rl(ki,j)+xl(ki,j)*xl(ki,j))*((p1(k,ki)*p1(k,ki)+q1(k,ki)*q1(k,ki))/vc1(k,ki)*vc1(k,ki)));

    delc1(k,j)=delc1(k,ki)+atan((q1(k,ki)*rl(ki,j)-p1(k,ki)*xl(ki,j))/(vc1(k,ki)*vc1(k,ki)-(p1(k,ki)*rl(ki,j)+q1(k,ki)*xl(ki,j))));
    
    delcd1(k,j)=delc1(k,j)*180/3.1429;
    delp1(k,j)=delc1(k,j);
    vcalp1(k,j)=vc1(k,j);
end


tplossp1(k)=0;
tqlossp1(k)=0;

for n=1:nbranch
   
   cc(k,n)=(complex(vc1(k,fb(n))*cos(delc1(k,fb(n))),(vc1(k,fb(n))*sin(delc1(k,fb(n))))));
   dd(k,n)=(complex(vc1(k,eb(n))*cos(delc1(k,eb(n))),(vc1(k,eb(n))*sin(delc1(k,eb(n))))));
   
   cd(k,n)=cc(k,n)-dd(k,n);
   zz(k,n)=(complex((rl(fb(n),eb(n))),(xl(fb(n),eb(n)))));
   cr1(k,n)=((cc(k,n)-dd(k,n))/zz(k,n));
   plossp1(k,n)=(rl(fb(n),eb(n)))*(abs(cr1(k,n)))^2;
   qlossp1(k,n)=(xl(fb(n),eb(n)))*(abs(cr1(k,n)))^2;
   tplossp1(k)=tplossp1(k)+plossp1(k,n);
   tqlossp1(k)=tqlossp1(k)+qlossp1(k,n);
end

vprofileph1(k)=0;

for n=1:nbus
    vprop1(k,n)=abs(1-vc1(k,n)); 
    vprofileph1(k)=vprofileph1(k)+abs(1-vc1(k,n));
end

% vprofile

% stability
% vsi
stabilityp1(k,1)=0;
vsiph1(k)=0;
for n=1:32
    j=n+1;
    stabilityp1(k,j)=1/((vc1(k,n))^4-4*(p1(k,j)*xl(n,j)-q1(k,j)*rl(n,j))^2-4*(p1(k,j)*rl(n,j)+q1(k,j)*xl(n,j))*(vc1(k,n))^2);
    
    if (stabilityp1(k,j)>vsiph1(k))
        vsiph1(k)=stabilityp1(k,j);
    end
end


pgt1(k)=0;
qgt1(k)=0;
for n=1:nbus
    pgt1(k)=pgt1(k)+pgp1(k,n);
    qgt1(k)=qgt1(k)+qgp1(k,n);
end

pdpl1(k)=ploadn1(k)+tplossp1(k);
qdql1(k)=qloadn1(k)+tqlossp1(k);

difp1=pgt1(k)-pdpl1(k);
difq1=qgt1(k)-qdql1(k);
if ((abs(difp1)<=0.21)&&(abs(difq1)<=0.25))
    dif1=0;
else
    dif1=1;    
end

end

k
end



tfcpt1=0;
tfept1=0;
for k=1:mt
tfcp1(k)=62.5*pgp1(k,1)+6*(pgp1(k,11)+pgp1(k,23));
% tfep1(k)=ae(1)+be(1)*pgp1(k,1)+ce(1)*(pgp1(k,1))^2+ae(6)+be(6)*pgp1(k,6)+ce(6)*(pgp1(k,6))^2;
tfcpt1=tfcpt1+tfcp1(k);
% tfept1=tfept1+tfep1(k);
end


vprofilep1=0;
vsip1=0;
reallossp1=0;
reactivelossp1=0;
for k=1:mt
    
    vprofilep1=vprofilep1+vprofileph1(k);
    vsip1=vsip1+ vsiph1(k);
    reallossp1=reallossp1+tplossp1(k);
    reactivelossp1=reactivelossp1+tqlossp1(k);
end



 for k=1:mt
        pg111(k)=pgp1(k,11);
        pg123(k)=pgp1(k,23);
        
        pg113(k)=pgp1(k,13);
       
        pg11(k)=pgp1(k,1);
        pg16(k)=pgp1(k,6);
        pg127(k)=pgp1(k,27);

        
        qg11(k)=qgp1(k,1);
        qg16(k)=qgp1(k,6);
        qg127(k)=qgp1(k,27);
    end

 pg111
 pg123

   
 pg11
 pg16
 pg113
 pg127

 
 qg11
 qg16
 qg127
 
 
 
 
 pevp11
 pevp12
 
 tp21
 tq21
 
 tp31
 tq21
 
 ploado
 qloado
 
ploadn1
qloadn1
 

vprofilep1
vsip1
 reallossp1  


% >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
% % MG 2


eeebus15_bidding_Real;

nbus2=size(busdata2,1);
% pld2=busdata2(:,2)/1000;
% qld2=busdata2(:,3)/1000;
pgmax2=busdata2(:,4)/1000;
qgmax2=busdata2(:,5)/1000;
vsp2=busdata2(:,6);
delsp2=busdata2(:,7);
emx2=busdata2(:,8);
emn2=busdata2(:,9);

for n=1:nbus2
    pgmin2(n)=0;
    qgmin2(n)=0;
end


for m=1:mt
    pld2(m,1)=0;
    qld2(m,1)=0;
    pld2(m,2)=p_domestic_load(m)/1000;
    qld2(m,2)=q_domestic_load(m)/1000;
    pld2(m,3)=p_domestic_load(m)/1000;
    qld2(m,3)=q_domestic_load(m)/1000;
    pld2(m,4)=p_school_load(m)/1000;
    qld2(m,4)=q_school_load(m)/1000;     
    pld2(m,5)=0;
    qld2(m,5)=0;
    pld2(m,6)=2*p_domestic_load(m)/1000;
    qld2(m,6)=2*q_domestic_load(m)/1000;
    pld2(m,7)=0;
    qld2(m,7)=0;
    pld2(m,8)=p_shopping_center_load(m)/1000;
    qld2(m,8)=q_shopping_center_load(m)/1000;    
    pld2(m,9)=p_domestic_load(m)/1000;
    qld2(m,9)=q_domestic_load(m)/1000;
    pld2(m,10)=p_domestic_load(m)/1000;
    qld2(m,10)=q_domestic_load(m)/1000;
    pld2(m,11)=p_domestic_load(m)/1000;
    qld2(m,11)=q_domestic_load(m)/1000;
    pld2(m,12)=p_heal_centre_load(m)/1000;
    qld2(m,12)=q_heal_centre_load(m)/1000;
    pld2(m,13)=p_post_office_load(m)/1000;
    qld2(m,13)=q_post_office_load(m)/1000;
    pld2(m,14)=p_domestic_load(m)/1000;
    qld2(m,14)=q_domestic_load(m)/1000;
    pld2(m,15)= p_resort_load(m)/1000;
    qld2(m,15)= q_resort_load(m)/1000;
   
end
    
for m=1:mt
    ploado2(m)=0;
    qloado2(m)=0;
    for n=1:nbus2
        ploado2(m)=ploado2(m)+pld2(m,n);
        qloado2(m)=qloado2(m)+qld2(m,n);
    end
end
  
% x =1:mt;
%  plot(x,1000*ploado2(x),'-k')
% ylabel('Real power before DRP (KW)')
% xlabel('Time  (Hour)')


for n=1:nbus2
    pld2(1,n)=pld2(1,n)+0.15*pld2(7,n);
    qld2(1,n)=qld2(1,n)+0.15*pld2(7,n);
    pld2(2,n)=pld2(2,n)+0.15*pld2(8,n);
    qld2(2,n)=qld2(2,n)+0.15*pld2(8,n);
    pld2(3,n)=pld2(3,n)+0.15*pld2(17,n);
    qld2(3,n)=qld2(3,n)+0.15*pld2(17,n);
    pld2(4,n)=pld2(4,n)+0.15*pld2(18,n);
    qld2(4,n)=qld2(4,n)+0.15*qld2(18,n);
    pld2(5,n)=pld2(5,n)+0.15*pld2(19,n);
    qld2(5,n)=qld2(5,n)+0.15*qld2(19,n);
    pld2(6,n)=pld2(6,n)+0.15*pld2(20,n);
    qld2(6,n)=qld2(6,n)+0.15*qld2(20,n);
end

for n=1:nbus2
    pld2(7,n)=0.85*pld2(7,n);
    qld2(7,n)=0.85*qld2(7,n);
    pld2(8,n)=0.85*pld2(8,n);
    qld2(8,n)=0.85*qld2(8,n);
    pld2(17,n)=0.85*pld2(17,n);
    qld2(17,n)=0.85*qld2(17,n);
    pld2(18,n)=0.85*pld2(18,n);
    qld2(18,n)=0.85*qld2(18,n); 
    pld2(19,n)=0.85*pld2(19,n);
    qld2(19,n)=0.85*qld2(19,n);
    pld2(20,n)=0.85*pld2(20,n);
    qld2(20,n)=0.85*qld2(20,n);
end

for m=1:mt
    ploado2(m)=0;
    qloado2(m)=0;
    for n=1:nbus2
        ploado2(m)=ploado2(m)+pld2(m,n);
        qloado2(m)=qloado2(m)+qld2(m,n);
    end
end


nbranch2=size(BranchData2,1);
fb2=BranchData2(:,1);
eb2=BranchData2(:,2);
r2=BranchData2(:,3);
x2=BranchData2(:,4);
linelimit=BranchData2(:,5);

r2
x2

for n=1:nbranch2
    r2(fb2(n),eb2(n))=r2(n)/(11*11);
    x2(fb2(n),eb2(n))=x2(n)/(11*11); 
end

r2
x2

mt=24;

        

for k=1:mt
    ploadn2(k)=0;
    qloadn2(k)=0;
    
    
    
    for n=1:nbus2
        ploadn2(k)=ploadn2(k)+pld2(k,n);
        qloadn2(k)=qloadn2(k)+qld2(k,n);
        
       
        
    end
end
    
 hddata2=[-0.0000042 -0.00042 0.0030 0.09 1.0 -0.025 0.07 0.2 1 2 1.5 1.8  0 4;
           -0.0000040 -0.00030 0.0035 0.09 0.9 -0.035 0.06 0.18 0.6 1.2 0.8 1.0 0 3]
  
    hddata2=[-0.0000042 -0.00042 0.0030 0.09 1.0 -0.025 0.07 0.2 1 2 1.5 1.8  0 4;
              -0.000030 -0.0030 0.012 0.70  5.5 -0.20 0.05 0.15 0.6 1.2 0.8 1.0 0 3]


 


  rdata2=[10 9 8 7 6 7 8 9 10 11 12 10 11 12 11 10 9 8 7 6 7 8 9 10 ;
             8 8 9 9 8 7 6 7 8 9 9 8 8 9 9 8 7 6 7 8 9 9 8 8  ]
     
         
          
nh=size(hddata2,1);
for n=1:nh
    c12(n)=hddata2(n,1);
    c22(n)=hddata2(n,2);
    c32(n)=hddata2(n,3);
    c42(n)=hddata2(n,4);
    c52(n)=hddata2(n,5);
    c62(n)=hddata2(n,6);
    qmn2(n)=hddata2(n,7);
    qmx2(n)=hddata2(n,8);
    vmn2(n)=hddata2(n,9);
    vmx2(n)=hddata2(n,10);
    vi2(n)=hddata2(n,11);
    ve2(n)=hddata2(n,12);
    phmin2(n)=hddata2(n,13);
    phmax2(n)=hddata2(n,14);
end



for n=1:nh
    for m=1:mt
        ri2(n,m)=1.5e-2*rdata2(n,m);
    end
end  
   


% dev1=1;   
%     while (dev1~=0)
%        ev_charge1=0;
%         for k=1:mt
%             if  ((k>=18) && (k<=24))
%                 pevp21(k)=unifrnd(-90,0);
%             else
%                 pevp21(k)=0;
%             end                       
%             ev_charge1 = ev_charge1 + pevp21(k);
%         end
%         charge_diff1=-500-ev_charge1;
%         
%         if (abs(charge_diff1)<0.05)
%             dev1=0;
%         else
%             dev1=1;
%         end
%     end  
% 
% dev2=1;   
%     while (dev2~=0)
%        ev_charge2=0;
%         for k=1:mt
%             if  ((k>=18) && (k<=24))
%                 pevp22(k)=unifrnd(-130,0);
%             else
%                 pevp22(k)=0;
%             end                       
%             ev_charge2 = ev_charge2 + pevp22(k);
%         end
%         charge_diff2=-750-ev_charge2;
%         
%         if (abs(charge_diff2)<0.05)
%             dev2=0;
%         else
%             dev2=1;
%         end
%     end 


% pevp21 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0        0         0         0  -78.1329  -88.1622  -69.3826  -78.1096  -81.5939  -48.3454  -56.3191]
% pevp22 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0        0         0         0 -124.5737  -71.2764 -106.6059  -93.6623 -118.4134 -119.1867 -116.2815]
% qp21 =[  0.1518    0.1536    0.1571    0.1486    0.1596    0.1607    0.1610    0.1444    0.1201    0.0846    0.0814    0.0899    0.1546    0.0852     0.0766    0.0856    0.0775    0.0895    0.0673    0.1554    0.0933    0.1153    0.1607    0.0812]
% qp22 =[  0.1549    0.1534    0.1519    0.1546    0.1239    0.1192    0.0641    0.1019    0.1176    0.0769    0.0767    0.0672    0.0796    0.1168     0.1156    0.0649    0.1098    0.1379    0.1370    0.0604    0.1375    0.1327    0.0988    0.1265]


% pevp21 =[       0         0         0         0         0         0         0         0         0         0         0         0         0         0           0         0         0  -80.4976  -83.1373  -66.7335  -76.2606  -79.6946  -55.6420  -58.0591]
% pevp22 =[       0         0         0         0         0         0         0         0         0         0         0         0         0         0           0         0         0  -75.0846 -122.3648 -114.2952  -84.7054 -122.4023 -123.2591 -107.9066]
% qp21 =[    0.1847    0.1421    0.1402    0.1407    0.1309    0.1205    0.0915    0.1227    0.1724    0.0780    0.0947    0.0765    0.0801    0.1096     0.0776    0.1662    0.1783    0.1152    0.1246    0.1223    0.1385    0.1059    0.1157    0.1662]
% qp22 =[    0.1136    0.1735    0.1494    0.1402    0.1422    0.1289    0.1347    0.1087    0.0750    0.0693    0.0706    0.0630    0.0900    0.1201     0.1176    0.0659    0.0883    0.1464    0.1236    0.1038    0.0973    0.1200    0.1098    0.1479]


% pevp21 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0  -44.1464  -81.7309  -86.1227  -88.9605  -83.2670  -67.5651  -48.1756]
% pevp22 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0  -95.7256  -85.1849 -115.5505 -121.9464 -126.4271  -94.7460 -110.4327]
% qp21 =[    0.1393    0.1367    0.1306    0.1955    0.1311    0.1934    0.1174    0.1340    0.0958    0.0716    0.0740    0.0874    0.1638    0.0960      0.0785    0.1366    0.1139    0.1181    0.1299    0.1255    0.1414    0.1291    0.1135    0.0720]
% qp22 =[    0.1445    0.1530    0.1660    0.1259    0.1539    0.1213    0.1498    0.0759    0.0617    0.0646    0.0813    0.06031    0.0677    0.0927      0.1100    0.1002    0.0926    0.1514    0.1175    0.1181    0.0948    0.1159    0.1238    0.1143]


% pevp21 =[       0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0  -89.9296  -62.7353  -65.3160  -68.0224  -82.3847  -83.6749  -47.9428]
% pevp22 =[       0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -123.8434 -119.7775  -29.8137 -127.6735 -122.6522 -122.8481 -103.3856]
% qp21 =[    0.1406    0.1401    0.1258    0.1228    0.1705    0.1854    0.1019    0.1582    0.1089    0.0753    0.0721    0.0969    0.0710    0.1474        0.1319    0.1288    0.1097    0.0970    0.1378    0.1260    0.1267    0.1726    0.1002    0.0771]
% qp22 =[    0.1604    0.1639    0.1698    0.1622    0.1381    0.0745    0.1485    0.0656    0.1182    0.0610    0.0680    0.0747    0.0683    0.0847        0.0896    0.1119    0.1194    0.1292    0.1292    0.1153    0.0975    0.0724    0.1284    0.1795]


% pevp21 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0           0         0         0  -81.5608  -84.5649  -77.6832  -58.5094  -66.6492  -81.3014  -49.7189]
% pevp22 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -128.0718 -112.1934  -38.1676 -104.6017 -124.1021 -113.9027 -128.9663]
% qp21 =[    0.1122    0.1090    0.1126    0.1680    0.1600    0.1203    0.1205    0.1331    0.1184    0.0710    0.0891    0.1062    0.1592    0.1466      0.1310    0.0952    0.0743    0.1060    0.1466    0.1377    0.0865    0.1987    0.1522    0.0808]
% qp22 =[    0.1592    0.1662    0.1500    0.0905    0.0948    0.1300    0.1292    0.0997    0.1112    0.0632    0.0657    0.0712    0.0982    0.1035      0.0933    0.1161    0.1121    0.1232    0.1207    0.1029    0.1534    0.0686    0.1238    0.1431]


% pevp21 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0          0         0         0  -84.6403  -87.4157  -56.5250  -89.8242  -78.4911  -46.4623  -56.6101]
% pevp22 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0          0         0         0 -120.3428 -109.3662  -91.7094  -80.5140  -95.0879 -125.7260 -127.2693]
% qp21 =[    0.1957    0.1605    0.1540    0.1575    0.1599    0.1580    0.1479    0.1125    0.0702    0.0934    0.0900    0.0711    0.1335    0.1171       0.1170    0.0971    0.0916    0.1814    0.0915    0.1243    0.1047    0.1071    0.1119    0.0972]
% qp22 =[    0.1159    0.1602    0.1496    0.1433    0.1345    0.1081    0.1041    0.1226    0.1146    0.0683    0.0692    0.0690    0.0980    0.1085       0.0913    0.1145    0.1055    0.1092    0.1324    0.1034    0.1289    0.1268    0.0649    0.0771]


% pevp21 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0  -51.8639  -53.3369  -86.0139  -69.8474  -82.4960  -67.4943  -88.9631]
% pevp22 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -115.9288 -106.5351 -102.7659  -99.6463 -101.8660 -100.6059 -122.6784]
% qp21 =[    0.1680    0.1667    0.1630    0.1693    0.1469    0.1779    0.1999    0.1297    0.0791    0.0998    0.1138    0.0860    0.0998    0.1063       0.1038    0.0991    0.0983    0.1387    0.1013    0.0742    0.0930    0.1186    0.1029    0.0887]
% qp22 =[    0.1641    0.1607    0.1590    0.1656    0.1688    0.0770    0.0744    0.1333    0.0763    0.0656    0.0614    0.0635    0.0665    0.1005       0.1075    0.1053    0.1013    0.0814    0.1182    0.1185    0.1314    0.1242    0.1165    0.1388]


% pevp21 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0  -86.2359  -74.7224  -62.0003  -64.1275  -74.4004  -83.3126  -55.1934]
% pevp22 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -110.6251 -113.4903 -129.0126  -50.4373 -109.5042 -115.2442 -121.6961]
% qp21 =[    0.1620    0.1418    0.1084    0.1431    0.1463    0.1177    0.1251    0.1018    0.1692    0.1007    0.1103    0.0997    0.1042    0.1109       0.1174    0.0950    0.1027    0.1376    0.1091    0.1182    0.1754    0.1199    0.1182    0.0704]
% qp22 =[    0.1569    0.1422    0.1607    0.1467    0.1492    0.1078    0.1033    0.1081    0.0771    0.0719    0.0683    0.0672    0.1141    0.1106       0.0998    0.0906    0.1204    0.1271    0.0673    0.1227    0.1083    0.1176    0.1132    0.1189]


% pevp21 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0  -78.6153  -85.0069  -70.6177  -71.4572  -70.3011  -88.9131  -35.0800]
% pevp22 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -118.4085 -127.4920  -95.5014  -75.5275 -119.5141 -123.1908  -90.3916]
% qp21 =[    0.1673    0.1671    0.1757    0.1464    0.1480    0.1045    0.1851    0.1009    0.1148    0.0958    0.0997    0.0761    0.1067    0.0968      0.0843    0.1051    0.0941    0.1084    0.1844    0.1316    0.1124    0.1376    0.0887    0.1032]
% qp22 =[    0.1554    0.1530    0.0914    0.1649    0.1665    0.1765    0.0686    0.1294    0.1214    0.0673    0.0728    0.0745    0.1071    0.1063      0.1186    0.1068    0.1204    0.1405    0.0724    0.1122    0.1493    0.0721    0.0605    0.0722]


% pevp21 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0  -81.7546  -59.8587  -76.4886  -78.9166  -89.4635  -47.5589  -65.9205]
% pevp22 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -118.5375 -107.1309 -122.2458 -108.3629 -124.3543  -54.9413 -114.4488]
% qp21 =[    0.1223    0.1887    0.1854    0.1742    0.1379    0.1283    0.0948    0.1333    0.1238    0.0721    0.0750    0.0849    0.0739    0.1655     0.1162    0.1673    0.0796    0.1203    0.1642    0.1205    0.1393    0.1092    0.0738    0.0744]
% qp22 =[    0.1714    0.1622    0.1278    0.0711    0.1302    0.1360    0.1520    0.1338    0.1064    0.0717    0.0887    0.0860    0.1109    0.0687     0.1034    0.0601    0.1201    0.0868    0.1082    0.0876    0.1286    0.1209    0.1077    0.1197]


pevp21 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0           0         0         0  -85.8357  -64.1405  -79.0934  -59.8603  -63.8904  -61.2607  -85.9429]
pevp22 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0           0         0         0 -111.6594 -105.0244 -102.4470 -114.1279  -90.1657 -100.1170 -126.4839]
qp21 =[    0.1476    0.1303    0.1262    0.1243    0.1182    0.1220    0.1606    0.1390    0.1271    0.0768    0.0738    0.0923    0.1752    0.1637       0.0996    0.1040    0.1102    0.1312    0.1309    0.1345    0.1113    0.1485    0.1041    0.0733]
qp22 =[    0.1345    0.1582    0.1592    0.1421    0.1513    0.1265    0.1237    0.1337    0.1006    0.0607    0.0818    0.0889    0.0981    0.0700       0.1023    0.1119    0.1064    0.0962    0.1034    0.1015    0.1287    0.1048    0.1092    0.0962]



% pevp21 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0  -73.8941  -81.8432  -66.1683  -33.0123  -76.9134  -86.8080  -81.4064]
% pevp22 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -112.0445 -121.3186  -85.9124 -114.1657 -123.1352 -108.0811  -85.3007]
% qp21 =[    0.1446    0.1422    0.1460    0.1498    0.1440    0.1466    0.1468    0.1340    0.1338    0.0743    0.0796    0.0791    0.1225    0.1024       0.1274    0.1479    0.1141    0.1117    0.1381    0.0807    0.1254    0.0777    0.1618    0.0946]
% qp22 =[    0.1495    0.1535    0.1568    0.1505    0.1479    0.1348    0.1264    0.0817    0.0853    0.0698    0.0591    0.0817    0.0716    0.1128       0.0937    0.0934    0.1017    0.1125    0.1020    0.1066    0.1346    0.1310    0.1047    0.1482]
% 

% pevp21 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0           0         0         0  -84.9652  -50.3002  -69.7527  -53.9425  -83.3428  -81.2089  -76.4503]
% pevp22 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0           0         0         0  -85.5810 -121.7792 -109.2586 -128.2598  -87.7265 -119.0755  -98.3320]
% qp21 =[    0.1445    0.1442    0.1461    0.1237    0.1412    0.1155    0.1176    0.1335    0.1106    0.0799    0.0799    0.0738    0.0815    0.1559      0.1267    0.1377    0.1380    0.1312    0.1442    0.1184    0.1383    0.1029    0.1337    0.1058]
% qp22 =[    0.1072    0.1453    0.1429    0.1793    0.1467    0.1433    0.1444    0.1023    0.1223    0.0688    0.0692    0.0872    0.1117    0.1141      0.0942    0.1037    0.1012    0.1088    0.0916    0.0765    0.0927    0.1418    0.0861    0.1088]


% pevp21 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0  -83.4874  -75.5315  -66.7003  -86.0382  -81.0592  -35.7491  -71.4305]
% pevp22 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0  -79.2778  -94.7010 -110.4779 -109.1693 -110.5946 -122.3337 -123.3959]
% qp21 =[    0.1455    0.1554    0.1874    0.1494    0.1438    0.1219    0.1559    0.1272    0.1753    0.0759    0.0728    0.0749    0.1039    0.1029       0.1050    0.1072    0.1181    0.1091    0.1139    0.1202    0.1274    0.0843    0.1268    0.1209]
% qp22 =[    0.1469    0.1467    0.1058    0.1575    0.1582    0.1543    0.1161    0.1275    0.0686    0.0725    0.0647    0.0750    0.0866    0.1058       0.1018    0.1033    0.1125    0.1100    0.1097    0.1031    0.1301    0.1384    0.1036    0.0712]



% pevp21 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0  -81.5709  -63.5242  -84.3954  -64.2236  -89.7442  -36.6391  -79.8817]
% pevp22 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0  -87.7141 -118.9298 -110.7953 -102.6454  -96.3116 -119.6203 -113.9690]
% qp21 =[    0.1678    0.1660    0.1695    0.1829    0.1470    0.1473    0.1353    0.1378    0.0701    0.0701    0.0704    0.0778    0.1469    0.0998       0.1117    0.1276    0.1131    0.1130    0.1200    0.1174    0.1171    0.1108    0.1115    0.0809]
% qp22 =[    0.1431    0.1497    0.1465    0.0944    0.1560    0.1586    0.1238    0.1208    0.0899    0.0608    0.0600    0.0689    0.0793    0.1001       0.0950    0.1039    0.1025    0.1293    0.1095    0.1094    0.1226    0.1411    0.1090    0.0939]


% pevp21 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0               0         0         0  -78.2859  -85.0701  -58.5334  -73.2121  -89.2130  -81.8696  -33.7988]
% pevp22 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0               0         0         0  -91.7888 -117.4662 -108.0830  -80.3126 -113.9166 -111.8679 -126.6090]
% qp21 =[    0.1562    0.1932    0.1540    0.1861    0.1436    0.1134    0.1088    0.0852    0.0929    0.0717    0.0971    0.0778    0.1270    0.0795        0.0752    0.1997    0.1141    0.1471    0.1213    0.1137    0.1129    0.1209    0.1380    0.0857]
% qp22 =[    0.1561    0.1096    0.1534    0.0953    0.1489    0.1630    0.1640    0.1362    0.0801    0.0655    0.0659    0.0617    0.0832    0.0853        0.1046    0.0886    0.1135    0.0961    0.1159    0.1239    0.1296    0.1188    0.0923    0.1184]



% pevp21 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0  -81.3754  -87.2473  -66.0689  -43.7219  -65.5587  -84.9602  -71.1171]
% pevp22 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0 -111.4435 -118.3099 -106.9690 -110.7406 -124.7393  -65.7258 -112.1129]
% qp21 =[    0.1592    0.1598    0.1495    0.1771    0.1455    0.1515    0.1807    0.0967    0.0968    0.0725    0.0948    0.0781    0.1286    0.0813    0.0738    0.1287    0.1059    0.1205    0.1293    0.1113    0.1352    0.1219    0.0992    0.1271]
% qp22 =[    0.1526    0.1585    0.1600    0.0966    0.1435    0.1624    0.1252    0.0823    0.0846    0.0627    0.0628    0.0626    0.0954    0.0803    0.0935    0.1084    0.1124    0.1226    0.1210    0.1068    0.1139    0.1299    0.1367    0.0952]




 dph21=1;
 while (dph21~=0)
 dqp1=1;
    nip1=0;
    while (dqp1~=0)
        nip1=nip1+1;
        dvmp1=1;
        while (dvmp1~=0)
%             for k=1:(mt-1)
%                 qp21(k)=qmn2(1)+unifrnd(0,1)*(qmx2(1)-qmn2(1));
%             end
            for k=1:(mt-1)
                if (k==1)
                    vp21(k)=vi2(1)+ri(1,k)-qp21(k);
                elseif (k>=2)
                    vp21(k)=vp21(k-1)+ri(1,k)-qp21(k);
                end
            end
            for k=1:(mt-1)
                if ((vp21(k)>vmx2(1))||(vp21(k)<vmn2(1)))
                    dvp1(k)=1;
                else
                    dvp1(k)=0;
                end
            end
            dvmp1=0;
            for k=1:(mt-1)
                if (dvp1(k)>dvmp1)
                    dvmp1=dvp1(k);
                end
            end
        end
        
        
        rt1=0;
        qt2=0;
        for k=1:mt
            rt1=rt1+ri(1,k);
        end
        for k=1:(mt-1)
            qt2=qt2+qp21(k);
        end
        qp21(mt)=vi2(1)-ve2(1)+rt1-qt2;
        if ((qp21(mt)>=qmn2(1))&&(qp21(mt)<=qmx2(1)))
            dqp1=0;
        else
            dqp1=1;
        end
    end
    
    
    for k=1:mt
        if (k==1)
            php21(k)=(c12(1)*vi2(1)^2+c22(1)*qp21(k)^2+c32(1)*vi2(1)*qp21(k)+c42(1)*vi2(1)+c52(1)*qp21(k)+c62(1));
            qhp21(k)=0.4843*php21(k);
        else
            php21(k)=(c12(1)*vp21(k-1)^2+c22(1)*qp21(k)^2+c32(1)*vp21(k-1)*qp21(k)+c42(1)*vp21(k-1)+c52(1)*qp21(k)+c62(1));
            qhp21(k)=0.75*php21(k);
        end
        
    end  
     for k=1:mt        
        if (php21(k)<0)
            dphp2(k)=1;
        else
             dphp2(k)=0;
        end
    end
    
    dph21=0;
    for k=1:mt
        if (dphp2(k)>dph21)
            dph21=dphp2(k);
        end
    end
    
 end
 
 dph21
 
  
 dph22=1;
 while (dph22~=0)
 dqp2=1;
    nip1=0;
    while (dqp2~=0)
        nip1=nip1+1;
        dvmp2=1;
        while (dvmp2~=0)
%             for k=1:(mt-1)
%                 qp22(k)=qmn(2)+unifrnd(0,1)*(qmx(2)-qmn(2));
%             end
            for k=1:(mt-1)
                if (k==1)
                    vp22(k)=vi(2)+ri(2,k)-qp22(k);
                elseif (k>=2)
                    vp22(k)=vp22(k-1)+ri(2,k)-qp22(k);
                end
            end
            for k=1:(mt-1)
                if ((vp22(k)>vmx(2))||(vp22(k)<vmn(2)))
                    dvp2(k)=1;
                else
                    dvp2(k)=0;
                end
            end
            dvmp2=0;
            for k=1:(mt-1)
                if (dvp2(k)>dvmp2)
                    dvmp2=dvp2(k);
                end
            end
        end
        
        
        rt2=0;
        qt2=0;
        for k=1:mt
            rt2=rt2+ri(2,k);
        end
        for k=1:(mt-1)
            qt2=qt2+qp22(k);
        end
        qp22(mt)=vi(2)-ve(2)+rt2-qt2;
        if ((qp22(mt)>=qmn(2))&&(qp22(mt)<=qmx(2)))
            dqp2=0;
        else
            dqp2=1;
        end
    end
    
    
    for k=1:mt
        if (k==1)
            php22(k)=(c12(2)*vi(2)^2+c22(2)*qp22(k)^2+c32(2)*vi(2)*qp22(k)+c42(2)*vi(2)+c52(2)*qp22(k)+c62(2));
            qhp22(k)=0.4843*php22(k);
        else
            php22(k)=(c12(2)*vp22(k-1)^2+c22(2)*qp22(k)^2+c32(2)*vp22(k-1)*qp22(k)+c42(2)*vp22(k-1)+c52(2)*qp22(k)+c62(2));
            qhp22(k)=0.75*php22(k);
        end
        
    end  
     for k=1:mt        
        if (php22(k)<0)
            dphp2(k)=1;
        else
             dphp2(k)=0;
        end
    end
    
    dph22=0;
    for k=1:mt
        if (dphp2(k)>dph22)
            dph22=dphp2(k);
        end
    end
    
 end   


dph22

dw21=1;
        while (dw21~=0)
            for m=1:7
                qhgp21(m)=-0.2;
                phgp21(m)=-0.1;
            end
            for m=1:7
                if (m==1)
                    vpsp21(m)=vpsi(1)-qhgp21(m);
                elseif (m>=2)
                    vpsp21(m)=vpsp21((m-1))-qhgp21(m);
                end
            end

             qhgp21(8)=0;
                phgp21(8)=0;
            
            vpsp21(8)=vpsp21(7);
            
            dvps=1;
        while (dvps~=0)
            for m=9:19
                phgp21(m)=unifrnd(phgmin,phgmax);
                qhgp21(m)=0.05+2*phgp21(m);
            end
            
            for m=9:19
                vpsp21(m)=vpsp21((m-1))-qhgp21(m);
                
               if (vpsp21(m)>=0.300)
                dvs(m)=0;
               else
                   dvs(m)=1;
               end
            end
            dvps=0;
           for m=9:19
               if (dvs(m)>dvps)
                  dvps=dvs(m);
               end
           end
        end 
           
           qhgp21(20)=0;
                phgp21(20)=0;
        
              vpsp21(20)=vpsp21(19);  
                
             for m=21:24
                  qhgp21(m)=-0.200;
                phgp21(m)=-0.100;
             end
             
              for m=21:24
                  vpsp21(m)=vpsp21((m-1))-qhgp21(m);
              end
              
              qtotal=0;
              
              for m=1:24
                 qtotal=qtotal+qhgp21(m);
              end 
              if (abs(qtotal)<0.001)
                  dw21=0;
              else
                  dw21=1;
              end
        end
  
     dw21     
 
  for k=1:mt
    for n=1:nbus2
        pl2(k,n)=pld2(k,n);
        ql2(k,n)=qld2(k,n);
     end
end


    for k=1:mt
         pl2(k,5)=pld2(k,5)-(pevp21(k)/1000);
         pl2(k,7)=pld2(k,7)-(pevp22(k)/1000); 
    end
 

 dif2=1;
while (dif2~=0)
  
    for n=1:nbus2
        pgp2(1,n)=0;
    end
    
    tp32(1)=unifrnd(tp32mn,tp32mx);
    tq32(1)=unifrnd(tq32mn,tq32mx);
    
for n=1:nbus2
    qgp2(1,n)=unifrnd(0,qgmax2(n));
end


% pgp2(1,1)=unifrnd(0,pgmax2(1));
pgp2(1,4)=unifrnd(0,pgmax2(4));




       gr2(1)=unifrnd(grmin(1),grmax(1));
         if ((gr2(1)>=0)&(gr2(1)<gc))
              
       pgp2(1,9) =pgmax2(9)*((gr2(1)^2)/(gstd*gc));

        else
         if (gr2(1)>gc)
             pgp2(1,9) =pgmax2(9)*(gr1(1)/gstd);

         end
         end

         
         pgp2(1,14)=phgp21(1);
         
         pgp2(1,1)=php21(1);
         qgp2(1,1)=qhp21(1);  
       
         pgp2(1,3)=php22(1);
         qgp2(1,3)=qhp22(1);  


% %          Backward Sweep


   p2(1,5)=pgp2(1,5)-pl2(1,5)-tp21(5);
   q2(1,5)=qgp2(1,5)-ql2(1,5)-tq21(5);

   p2(1,14)=pgp2(1,14)-pl2(1,14);
   q2(1,14)=qgp2(1,14)-ql2(1,14);
   
   p2(1,15)=pgp2(1,15)-pl2(1,15);
   q2(1,15)=qgp2(1,15)-ql2(1,15);
   
   
 p2(1,4)=pgp2(1,4)-pl2(1,4)-r2((4),5)*((p2(1,5)^2+q2(1,5)^2)/(vsp2(5)^2))-r2((4),14)*((p2(1,14)^2+q2(1,14)^2)/(vsp2(14)^2))-r2((4),15)*((p2(1,15)^2+q2(1,15)^2)/(vsp2(15)^2));
 q2(1,4)=qgp2(1,4)-ql2(1,4)-x2((4),5)*((p2(1,5)^2+q2(1,5)^2)/(vsp2(5)^2))-x2((4),14)*((p2(1,14)^2+q2(1,14)^2)/(vsp2(14)^2))-x2((4),15)*((p2(1,15)^2+q2(1,15)^2)/(vsp2(15)^2));
      
   
   p2(1,13)=pgp2(1,13)-pl2(1,13);
   q2(1,13)=qgp2(1,13)-ql2(1,13);
 
  j=14;
for ki=1:2
    
    n=j-ki;    
    m=n-1;    

    p2(1,m)=pgp2(1,m)-pl2(1,m)-r2((m),n)*((p2(1,n)^2+q2(1,n)^2)/(vsp2(n)^2));
    q2(1,m)=qgp2(1,m)-ql2(1,m)-x2((m),n)*((p2(1,n)^2+q2(1,n)^2)/(vsp2(n)^2));
    
end

 
    p2(1,3)=pgp2(1,3)+tp32(1)-pl2(1,3)-r2((3),4)*((p2(1,4)^2+q2(1,4)^2)/(vsp2(4)^2));
    q2(1,3)=qgp2(1,3)+tq32(1)-ql2(1,3)-x2((3),4)*((p2(1,4)^2+q2(1,4)^2)/(vsp2(4)^2));  
    
 
    p2(1,3)=p2(1,3)-r2((3),11)*((p2(1,11)^2+q2(1,11)^2)/(vsp2(11)^2));
    q2(1,3)=q2(1,3)-x2((3),11)*((p2(1,11)^2+q2(1,11)^2)/(vsp2(11)^2));  
 
    
    p2(1,10)=pgp2(1,10)-pl2(1,10);
   q2(1,10)=qgp2(1,10)-ql2(1,10);
    
    
     j=11;
for ki=1:1
    
    n=j-ki;    
    m=n-1;    

    p2(1,m)=pgp2(1,m)-pl2(1,m)-r2((m),n)*((p2(1,n)^2+q2(1,n)^2)/(vsp2(n)^2));
    q2(1,m)=qgp2(1,m)-ql2(1,m)-x2((m),n)*((p2(1,n)^2+q2(1,n)^2)/(vsp2(n)^2));
    
end

    
     p2(1,8)=pgp2(1,8)-pl2(1,8);
   q2(1,8)=qgp2(1,8)-ql2(1,8);
    
   
   p2(1,7)=pgp2(1,7)-pl2(1,7);
   q2(1,7)=qgp2(1,7)-ql2(1,7);
  
   
 p2(1,6)=pgp2(1,6)-pl2(1,6)-r2((6),8)*((p2(1,8)^2+q2(1,8)^2)/(vsp2(8)^2))-r2((6),7)*((p2(1,7)^2+q2(1,7)^2)/(vsp2(7)^2));
 q2(1,6)=qgp2(1,6)-ql2(1,6)-x2((6),8)*((p2(1,8)^2+q2(1,8)^2)/(vsp2(8)^2))-x2((6),7)*((p2(1,7)^2+q2(1,7)^2)/(vsp2(7)^2));
      
 
 
 p2(1,2)=pgp2(1,2)-pl2(1,2)-r2((2),3)*((p2(1,3)^2+q2(1,3)^2)/(vsp2(3)^2))-r2((2),9)*((p2(1,9)^2+q2(1,9)^2)/(vsp2(9)^2))-r2((2),6)*((p2(1,6)^2+q2(1,6)^2)/(vsp2(6)^2));
 q2(1,2)=qgp2(1,2)-ql2(1,2)-x2((2),3)*((p2(1,3)^2+q2(1,3)^2)/(vsp2(3)^2))-x2((2),9)*((p2(1,9)^2+q2(1,9)^2)/(vsp2(9)^2))-x2((2),6)*((p2(1,6)^2+q2(1,6)^2)/(vsp2(6)^2));

 
   p2(1,1)=pgp2(1,1)-pl2(1,1)-r2((1),2)*((p2(1,2)^2+q2(1,2)^2)/(vsp2(2)^2));
    q2(1,1)=qgp2(1,1)-ql2(1,1)-x2((1),2)*((p2(1,2)^2+q2(1,2)^2)/(vsp2(2)^2)); 
 
 
 
% Forward Sweep

vc2(1,1)=vsp2(1);
delc2(1,1)=delsp2(1);
vcalp2(1,1)=vc2(1,1);
for ki=1:4
    j=ki+1;
     vc2(1,j)=sqrt(vc2(1,ki)*vc2(1,ki)-2*(p2(1,ki)*r2(ki,j)+q2(1,ki)*x2(ki,j))+(r2(ki,j)*r2(ki,j)+x2(ki,j)*x2(ki,j))*((p2(1,ki)*p2(1,ki)+q2(1,ki)*q2(1,ki))/vc2(1,ki)*vc2(1,ki)));
    delc2(1,j)=delc2(1,ki)+atan((q2(1,ki)*r2(ki,j)-p2(1,ki)*x2(ki,j))/(vc2(1,ki)*vc2(1,ki)-(p2(1,ki)*r2(ki,j)+q2(1,ki)*x2(ki,j))));
    
    delcd2(1,j)=delc2(1,j)*180/3.1429;
    delp2(1,j)=delc2(1,j);
    vcalp2(1,j)=vc2(1,j);
end

  vc2(1,6)=sqrt(vc2(1,2)*vc2(1,2)-2*(p2(1,2)*r2(2,6)+q2(1,2)*x2(2,6))+(r2(2,6)*r2(2,6)+x2(2,6)*x2(2,6))*((p2(1,2)*p2(1,2)+q2(1,2)*q2(1,2))/vc2(1,2)*vc2(1,2)));
    delc2(1,6)=delc2(1,2)+atan((q2(1,2)*r2(2,6)-p2(1,2)*x2(2,6))/(vc2(1,2)*vc2(1,2)-(p2(1,2)*r2(2,6)+q2(1,2)*x2(2,6))));
    
    delcd2(1,6)=delc2(1,6)*180/3.1429;
    delp2(1,6)=delc2(1,6);
    vcalp2(1,6)=vc2(1,6);

       vc2(1,8)=sqrt(vc2(1,6)*vc2(1,6)-2*(p2(1,6)*r2(6,8)+q2(1,6)*x2(6,8))+(r2(6,8)*r2(6,8)+x2(6,8)*x2(6,8))*((p2(1,6)*p2(1,6)+q2(1,6)*q2(1,6))/vc2(1,6)*vc2(1,6)));
    delc2(1,8)=delc2(1,6)+atan((q2(1,6)*r2(6,8)-p2(1,6)*x2(6,8))/(vc2(1,6)*vc2(1,6)-(p2(1,6)*r2(6,8)+q2(1,6)*x2(6,8))));
    
    delcd2(1,8)=delc2(1,8)*180/3.1429;
    delp2(1,8)=delc2(1,8);
    vcalp2(1,8)=vc2(1,8);
    
   
     vc2(1,7)=sqrt(vc2(1,6)*vc2(1,6)-2*(p2(1,6)*r2(6,7)+q2(1,6)*x2(6,7))+(r2(6,7)*r2(6,7)+x2(6,7)*x2(6,7))*((p2(1,6)*p2(1,6)+q2(1,6)*q2(1,6))/vc2(1,6)*vc2(1,6)));
    delc2(1,7)=delc2(1,6)+atan((q2(1,6)*r2(6,7)-p2(1,6)*x2(6,7))/(vc2(1,6)*vc2(1,6)-(p2(1,6)*r2(6,7)+q2(1,6)*x2(6,7))));
    
    delcd2(1,7)=delc2(1,7)*180/3.1429;
    delp2(1,7)=delc2(1,7);
    vcalp2(1,7)=vc2(1,7);
 
    
   
    vc2(1,9)=sqrt(vc2(1,2)*vc2(1,2)-2*(p2(1,2)*r2(2,9)+q2(1,2)*x2(2,9))+(r2(2,9)*r2(2,9)+x2(2,9)*x2(2,9))*((p2(1,2)*p2(1,2)+q2(1,2)*q2(1,2))/vc2(1,2)*vc2(1,2)));
    delc2(1,9)=delc2(1,2)+atan((q2(1,2)*r2(2,9)-p2(1,2)*x2(2,9))/(vc2(1,2)*vc2(1,2)-(p2(1,2)*r2(2,9)+q2(1,2)*x2(2,9))));
    
    delcd2(1,9)=delc2(1,9)*180/3.1429;
    delp2(1,9)=delc2(1,9);
    vcalp2(1,9)=vc2(1,9);
    
     vc2(1,10)=sqrt(vc2(1,9)*vc2(1,9)-2*(p2(1,9)*r2(9,10)+q2(1,9)*x2(9,10))+(r2(9,10)*r2(9,10)+x2(9,10)*x2(9,10))*((p2(1,9)*p2(1,9)+q2(1,9)*q2(1,9))/vc2(1,9)*vc2(1,9)));
    delc2(1,10)=delc2(1,9)+atan((q2(1,9)*r2(9,10)-p2(1,9)*x2(9,10))/(vc2(1,9)*vc2(1,9)-(p2(1,9)*r2(9,10)+q2(1,9)*x2(9,10))));
    
    delcd2(1,10)=delc2(1,10)*180/3.1429;
    delp2(1,10)=delc2(1,10);
    vcalp2(1,10)=vc2(1,10);
   
    
      vc2(1,11)=sqrt(vc2(1,3)*vc2(1,3)-2*(p2(1,3)*r2(3,11)+q2(1,3)*x2(3,11))+(r2(3,11)*r2(3,11)+x2(3,11)*x2(3,11))*((p2(1,3)*p2(1,3)+q2(1,3)*q2(1,3))/vc2(1,3)*vc2(1,3)));
    delc2(1,11)=delc2(1,3)+atan((q2(1,3)*r2(3,11)-p2(1,3)*x2(3,11))/(vc2(1,3)*vc2(1,3)-(p2(1,3)*r2(3,11)+q2(1,3)*x2(3,11))));
    
    delcd2(1,11)=delc2(1,11)*180/3.1429;
    delp2(1,11)=delc2(1,11);
    vcalp2(1,11)=vc2(1,11);
    
    for ki=11:12
    j=ki+1;
     vc2(1,j)=sqrt(vc2(1,ki)*vc2(1,ki)-2*(p2(1,ki)*r2(ki,j)+q2(1,ki)*x2(ki,j))+(r2(ki,j)*r2(ki,j)+x2(ki,j)*x2(ki,j))*((p2(1,ki)*p2(1,ki)+q2(1,ki)*q2(1,ki))/vc2(1,ki)*vc2(1,ki)));
    delc2(1,j)=delc2(1,ki)+atan((q2(1,ki)*r2(ki,j)-p2(1,ki)*x2(ki,j))/(vc2(1,ki)*vc2(1,ki)-(p2(1,ki)*r2(ki,j)+q2(1,ki)*x2(ki,j))));
    
    delcd2(1,j)=delc2(1,j)*180/3.1429;
    delp2(1,j)=delc2(1,j);
    vcalp2(1,j)=vc2(1,j);
    end

    vc2(1,14)=sqrt(vc2(1,4)*vc2(1,4)-2*(p2(1,4)*r2(4,14)+q2(1,4)*x2(4,14))+(r2(4,14)*r2(4,14)+x2(4,14)*x2(4,14))*((p2(1,4)*p2(1,4)+q2(1,4)*q2(1,4))/vc2(1,4)*vc2(1,4)));
    delc2(1,14)=delc2(1,4)+atan((q2(1,4)*r2(4,14)-p2(1,4)*x2(4,14))/(vc2(1,4)*vc2(1,4)-(p2(1,4)*r2(4,14)+q2(1,4)*x2(4,14))));
    
    delcd2(1,14)=delc2(1,14)*180/3.1429;
    delp2(1,14)=delc2(1,14);
    vcalp2(1,14)=vc2(1,14); 

  
   vc2(1,15)=sqrt(vc2(1,4)*vc2(1,4)-2*(p2(1,4)*r2(4,15)+q2(1,4)*x2(4,15))+(r2(4,15)*r2(4,15)+x2(4,15)*x2(4,15))*((p2(1,4)*p2(1,4)+q2(1,4)*q2(1,4))/vc2(1,4)*vc2(1,4)));
    delc2(1,15)=delc2(1,4)+atan((q2(1,4)*r2(4,15)-p2(1,4)*x2(4,15))/(vc2(1,4)*vc2(1,4)-(p2(1,4)*r2(4,15)+q2(1,4)*x2(4,15))));
    
    delcd2(1,15)=delc2(1,15)*180/3.1429;
    delp2(1,15)=delc2(1,15);
    vcalp2(1,15)=vc2(1,15);  
    
% vc
% delc
% delcd



tplossp2(1)=0;
tqlossp2(1)=0;

for n=1:nbranch2
   
   cc(1,n)=(complex(vc2(1,fb2(n))*cos(delc2(1,fb2(n))),(vc2(1,fb2(n))*sin(delc2(1,fb2(n))))));
   dd(1,n)=(complex(vc2(1,eb2(n))*cos(delc2(1,eb2(n))),(vc2(1,eb2(n))*sin(delc2(1,eb2(n))))));
   
   cd(1,n)=cc(1,n)-dd(1,n);
   zz(1,n)=(complex((r2(fb2(n),eb2(n))),(x2(fb2(n),eb2(n)))));
   cr2(1,n)=((cc(1,n)-dd(1,n))/zz(1,n));
   plossp2(1,n)=(r2(fb2(n),eb2(n)))*(abs(cr2(1,n)))^2;
   qlossp2(1,n)=(x2(fb2(n),eb2(n)))*(abs(cr2(1,n)))^2;
    tplossp2(1)=tplossp2(1)+plossp2(1,n);
    tqlossp2(1)=tqlossp2(1)+qlossp2(1,n);
end

vprofileph2(1)=0;

for n=1:nbus2
    vprop2(1,n)=abs(1-vc2(1,n));
    vprofileph2(1)=vprofileph2(1)+abs(1-vc2(1,n));
end

stabilityp2(1,1)=0;
vsiph2(1)=0;
for n=1:4
    j=n+1;
    stabilityp2(1,j)=1/((vc2(1,n))^4-4*(p2(1,j)*x2(n,j)-q2(1,j)*r2(n,j))^2-4*(p2(1,j)*r2(n,j)+q2(1,j)*x2(n,j))*(vc2(1,n))^2);
    
   if (stabilityp2(1,j)>vsiph2(1))
        vsiph2(1)=stabilityp2(1,j);
    end
end


 stabilityp2(1,6)=1/((vc2(1,2))^4-4*(p2(1,6)*x2(2,6)-q2(1,6)*r2(2,6))^2-4*(p2(1,6)*r2(2,6)+q2(1,6)*x2(2,6))*(vc2(1,2))^2);
    
   if (stabilityp2(1,6)>vsiph2(1))
        vsiph2(1)=stabilityp2(1,6);
   end


   stabilityp2(1,7)=1/((vc2(1,6))^4-4*(p2(1,7)*x2(6,7)-q2(1,7)*r2(6,7))^2-4*(p2(1,7)*r2(6,7)+q2(1,7)*x2(6,7))*(vc2(1,6))^2);
    
   if (stabilityp2(1,7)>vsiph2(1))
        vsiph2(1)=stabilityp2(1,7);
    end 
   
   
stabilityp2(1,8)=1/((vc2(1,6))^4-4*(p2(1,8)*x2(6,8)-q2(1,8)*r2(6,8))^2-4*(p2(1,8)*r2(6,8)+q2(1,8)*x2(6,8))*(vc2(1,6))^2);
    
   if (stabilityp2(1,8)>vsiph2(1))
        vsiph2(1)=stabilityp2(1,8);
   end 
   

  stabilityp2(1,9)=1/((vc2(1,2))^4-4*(p2(1,9)*x2(2,9)-q2(1,9)*r2(2,9))^2-4*(p2(1,9)*r2(2,9)+q2(1,9)*x2(2,9))*(vc2(1,2))^2);
    
   if (stabilityp2(1,9)>vsiph2(1))
        vsiph2(1)=stabilityp2(1,9);
   end 
   
   stabilityp2(1,10)=1/((vc2(1,9))^4-4*(p2(1,10)*x2(9,10)-q2(1,10)*r2(9,10))^2-4*(p2(1,10)*r2(9,10)+q2(1,10)*x2(9,10))*(vc2(1,9))^2);
    
   if (stabilityp2(1,10)>vsiph2(1))
        vsiph2(1)=stabilityp2(1,10);
   end 
   
   
   stabilityp2(1,11)=1/((vc2(1,3))^4-4*(p2(1,11)*x2(3,11)-q2(1,11)*r2(3,11))^2-4*(p2(1,11)*r2(3,11)+q2(1,11)*x2(3,11))*(vc2(1,3))^2);
    
   if (stabilityp2(1,11)>vsiph2(1))
        vsiph2(1)=stabilityp2(1,11);
   end  
   
   
    for n=11:12
    j=n+1;
    stabilityp2(1,j)=1/((vc2(1,n))^4-4*(p2(1,j)*x2(n,j)-q2(1,j)*r2(n,j))^2-4*(p2(1,j)*r2(n,j)+q2(1,j)*x2(n,j))*(vc2(1,n))^2);
    
   if (stabilityp2(1,j)>vsiph2(1))
        vsiph2(1)=stabilityp2(1,j);
    end
    end
   
   
 stabilityp2(1,14)=1/((vc2(1,4))^4-4*(p2(1,14)*x2(4,14)-q2(1,14)*r2(4,14))^2-4*(p2(1,14)*r2(4,14)+q2(1,14)*x2(4,14))*(vc2(1,4))^2);
    
   if (stabilityp2(1,14)>vsiph2(1))
        vsiph2(1)=stabilityp2(1,14);
   end
    
stabilityp2(1,15)=1/((vc2(1,4))^4-4*(p2(1,15)*x2(4,15)-q2(1,15)*r2(4,15))^2-4*(p2(1,15)*r2(4,15)+q2(1,15)*x2(4,15))*(vc2(1,4))^2);
    
   if (stabilityp2(1,15)>vsiph2(1))
        vsiph2(1)=stabilityp2(1,15);
    end
    
   
   
tfcph2(1)=(1243.53110 +38.30553*pgp2(1,1)+0.03546*pgp2(1,1)*pgp2(1,1)+1658.56960+36.32782*pgp2(1,4)+0.02111*pgp2(1,4)*pgp2(1,4))+7*(pgp2(1,9)+pgp2(1,14));

pgt2(1)=0;
qgt2(1)=0;
for n=1:nbus2
    pgt2(1)=pgt2(1)+pgp2(1,n);
    qgt2(1)=qgt2(1)+qgp2(1,n);
end

pdpl2(1)=ploadn2(1)+tplossp2(1);
qdql2(1)=qloadn2(1)+tqlossp2(1);

difp2=pgt2(1)-pdpl2(1);
difq2=qgt2(1)-qdql2(1);
if ((abs(difp2)<=0.25)&&(abs(difq2)<=0.25))
    dif2=0;
else
    dif2=1;    
end
end

% tfcph2(1)


for k=2:mt
  
    dif2=1;
while (dif2~=0)
  
    for n=1:nbus2
        pgp2(k,n)=0;
    end
    
    tp32(k)=unifrnd(tp32mn,tp32mx); 
    tq32(k)=unifrnd(tq32mn,tq32mx); 
    
for n=1:nbus2
    qgp2(k,n)=unifrnd(0,qgmax2(n));
end



dp12=1;
       while (dp12~=0)
           pgp2(k,4)=unifrnd(0,pgmax2(4));
           if (pgp2(k,4)>pgp2((k-1),4))
               ur=pgp2(k,4)-pgp2((k-1),4);
               if (ur>0.3)
                    dp12=1;                   
                else
                    dp12=0;
                end
            elseif (pgp2(k,4)<pgp2((k-1),4))
                dr=-pgp2(k,4)+pgp2((k-1),4);
                if (dr>0.3)
                    dp12=1;                  
                else
                    dp12=0;
                end
            end
       end

       
  
       gr1(k)=unifrnd(grmin(k),grmax(k));
         if ((gr1(k)>=0)&(gr1(k)<gc))
              
       pgp2(k,9) =pgmax2(9)*((gr1(k)^2)/(gstd*gc));

        else
         if (gr1(k)>gc)
            pgp2(k,9) =pgmax2(9)*(gr1(k)/gstd);

         end
         end
         
         pgp2(k,14)=phgp21(k);

         pgp2(k,1)=php21(k);
         qgp2(k,1)=qhp21(k);
         
         pgp2(k,3)=php22(k);
         qgp2(k,3)=qhp22(k);

% % Backward Sweep


  p2(k,5)=pgp2(k,5)-pl2(k,5)-tp21(k);
   q2(k,5)=qgp2(k,5)-ql2(k,5)-tq21(k);

   p2(k,14)=pgp2(k,14)-pl2(k,14);
   q2(k,14)=qgp2(k,14)-ql2(k,14);
   
   p2(k,15)=pgp2(k,15)-pl2(k,15);
   q2(k,15)=qgp2(k,15)-ql2(k,15);
   
   
 p2(k,4)=pgp2(k,4)-pl2(k,4)-r2((4),5)*((p2(k,5)^2+q2(k,5)^2)/(vsp2(5)^2))-r2((4),14)*((p2(k,14)^2+q2(k,14)^2)/(vsp2(14)^2))-r2((4),15)*((p2(k,15)^2+q2(k,15)^2)/(vsp2(15)^2));
 q2(k,4)=qgp2(k,4)-ql2(k,4)-x2((4),5)*((p2(k,5)^2+q2(k,5)^2)/(vsp2(5)^2))-x2((4),14)*((p2(k,14)^2+q2(k,14)^2)/(vsp2(14)^2))-x2((4),15)*((p2(k,15)^2+q2(k,15)^2)/(vsp2(15)^2));
      
   
   p2(k,13)=pgp2(k,13)-pl2(k,13);
   q2(k,13)=qgp2(k,13)-ql2(k,13);
 
  j=14;
for ki=1:2
    
    n=j-ki;    
    m=n-1;    

    p2(k,m)=pgp2(k,m)-pl2(k,m)-r2((m),n)*((p2(k,n)^2+q2(k,n)^2)/(vsp2(n)^2));
    q2(k,m)=qgp2(k,m)-ql2(k,m)-x2((m),n)*((p2(k,n)^2+q2(k,n)^2)/(vsp2(n)^2));
    
end

 
    p2(k,3)=pgp2(k,3)+tp32(k)-pl2(k,3)-r2((3),4)*((p2(k,4)^2+q2(k,4)^2)/(vsp2(4)^2));
    q2(k,3)=qgp2(k,3)+tq32(k)-ql2(k,3)-x2((3),4)*((p2(k,4)^2+q2(k,4)^2)/(vsp2(4)^2));  
    
 
    p2(k,3)=p2(k,3)-r2((3),11)*((p2(k,11)^2+q2(k,11)^2)/(vsp2(11)^2));
    q2(k,3)=q2(k,3)-x2((3),11)*((p2(k,11)^2+q2(k,11)^2)/(vsp2(11)^2));  
 
    
    p2(k,10)=pgp2(k,10)-pl2(k,10);
    q2(k,10)=qgp2(k,10)-ql2(k,10);
    
    
     j=11;
for ki=1:1
    
    n=j-ki;    
    m=n-1;    

    p2(k,m)=pgp2(k,m)-pl2(k,m)-r2((m),n)*((p2(k,n)^2+q2(k,n)^2)/(vsp2(n)^2));
    q2(k,m)=qgp2(k,m)-ql2(k,m)-x2((m),n)*((p2(k,n)^2+q2(k,n)^2)/(vsp2(n)^2));
    
end

    
   p2(k,8)=pgp2(k,8)-pl2(k,8);
   q2(k,8)=qgp2(k,8)-ql2(k,8);
    
   
   p2(k,7)=pgp2(k,7)-pl2(k,7);
   q2(k,7)=qgp2(k,7)-ql2(k,7);
  
   
 p2(k,6)=pgp2(k,6)-pl2(k,6)-r2((6),8)*((p2(k,8)^2+q2(k,8)^2)/(vsp2(8)^2))-r2((6),7)*((p2(k,7)^2+q2(k,7)^2)/(vsp2(7)^2));
 q2(k,6)=qgp2(k,6)-ql2(k,6)-x2((6),8)*((p2(k,8)^2+q2(k,8)^2)/(vsp2(8)^2))-x2((6),7)*((p2(k,7)^2+q2(k,7)^2)/(vsp2(7)^2));
      
 
 
 p2(k,2)=pgp2(k,2)-pl2(k,2)-r2((2),3)*((p2(k,3)^2+q2(k,3)^2)/(vsp2(3)^2))-r2((2),9)*((p2(k,9)^2+q2(k,9)^2)/(vsp2(9)^2))-r2((2),6)*((p2(k,6)^2+q2(k,6)^2)/(vsp2(6)^2));
 q2(k,2)=qgp2(k,2)-ql2(k,2)-x2((2),3)*((p2(k,3)^2+q2(k,3)^2)/(vsp2(3)^2))-x2((2),9)*((p2(k,9)^2+q2(k,9)^2)/(vsp2(9)^2))-x2((2),6)*((p2(k,6)^2+q2(k,6)^2)/(vsp2(6)^2));

 
   p2(k,1)=pgp2(k,1)-pl2(k,1)-r2((1),2)*((p2(k,2)^2+q2(k,2)^2)/(vsp2(2)^2));
   q2(k,1)=qgp2(k,1)-ql2(k,1)-x2((1),2)*((p2(k,2)^2+q2(k,2)^2)/(vsp2(2)^2)); 
 
 
 

% Forward Sweep

vc2(k,1)=vsp2(1);
delc2(k,1)=delsp2(1);
  vcalp2(k,1)=vc2(k,1);
for ki=1:4
    j=ki+1;
     vc2(k,j)=sqrt(vc2(k,ki)*vc2(k,ki)-2*(p2(k,ki)*r2(ki,j)+q2(k,ki)*x2(ki,j))+(r2(ki,j)*r2(ki,j)+x2(ki,j)*x2(ki,j))*((p2(k,ki)*p2(k,ki)+q2(k,ki)*q2(k,ki))/vc2(k,ki)*vc2(k,ki)));
    delc2(k,j)=delc2(k,ki)+atan((q2(k,ki)*r2(ki,j)-p2(k,ki)*x2(ki,j))/(vc2(k,ki)*vc2(k,ki)-(p2(k,ki)*r2(ki,j)+q2(k,ki)*x2(ki,j))));
    
    delcd2(k,j)=delc2(k,j)*180/3.1429;
    delp2(k,j)=delc2(k,j);
    vcalp2(k,j)=vc2(k,j);
end

  vc2(k,6)=sqrt(vc2(k,2)*vc2(k,2)-2*(p2(k,2)*r2(2,6)+q2(k,2)*x2(2,6))+(r2(2,6)*r2(2,6)+x2(2,6)*x2(2,6))*((p2(k,2)*p2(k,2)+q2(k,2)*q2(k,2))/vc2(k,2)*vc2(k,2)));
    delc2(k,6)=delc2(k,2)+atan((q2(k,2)*r2(2,6)-p2(k,2)*x2(2,6))/(vc2(k,2)*vc2(k,2)-(p2(k,2)*r2(2,6)+q2(k,2)*x2(2,6))));
    
    delcd2(k,6)=delc2(k,6)*180/3.1429;
    delp2(k,6)=delc2(k,6);
    vcalp2(k,6)=vc2(k,6);

       vc2(k,8)=sqrt(vc2(k,6)*vc2(k,6)-2*(p2(k,6)*r2(6,8)+q2(k,6)*x2(6,8))+(r2(6,8)*r2(6,8)+x2(6,8)*x2(6,8))*((p2(k,6)*p2(k,6)+q2(k,6)*q2(k,6))/vc2(k,6)*vc2(k,6)));
    delc2(k,8)=delc2(k,6)+atan((q2(k,6)*r2(6,8)-p2(k,6)*x2(6,8))/(vc2(k,6)*vc2(k,6)-(p2(k,6)*r2(6,8)+q2(k,6)*x2(6,8))));
    
    delcd2(k,8)=delc2(k,8)*180/3.1429;
    delp2(k,8)=delc2(k,8);
    vcalp2(k,8)=vc2(k,8);
    
   
     vc2(k,7)=sqrt(vc2(k,6)*vc2(k,6)-2*(p2(k,6)*r2(6,7)+q2(k,6)*x2(6,7))+(r2(6,7)*r2(6,7)+x2(6,7)*x2(6,7))*((p2(k,6)*p2(k,6)+q2(k,6)*q2(k,6))/vc2(k,6)*vc2(k,6)));
    delc2(k,7)=delc2(k,6)+atan((q2(k,6)*r2(6,7)-p2(k,6)*x2(6,7))/(vc2(k,6)*vc2(k,6)-(p2(k,6)*r2(6,7)+q2(k,6)*x2(6,7))));
    
    delcd2(k,7)=delc2(k,7)*180/3.1429;
    delp2(k,7)=delc2(k,7);
    vcalp2(k,7)=vc2(k,7);
 
    
   
    vc2(k,9)=sqrt(vc2(k,2)*vc2(k,2)-2*(p2(k,2)*r2(2,9)+q2(k,2)*x2(2,9))+(r2(2,9)*r2(2,9)+x2(2,9)*x2(2,9))*((p2(k,2)*p2(k,2)+q2(k,2)*q2(k,2))/vc2(k,2)*vc2(k,2)));
    delc2(k,9)=delc2(k,2)+atan((q2(k,2)*r2(2,9)-p2(k,2)*x2(2,9))/(vc2(k,2)*vc2(k,2)-(p2(k,2)*r2(2,9)+q2(k,2)*x2(2,9))));
    
    delcd2(k,9)=delc2(k,9)*180/3.1429;
    delp2(k,9)=delc2(k,9);
    vcalp2(k,9)=vc2(k,9);
    
     vc2(k,10)=sqrt(vc2(k,9)*vc2(k,9)-2*(p2(k,9)*rl(9,10)+q2(k,9)*x2(9,10))+(r2(9,10)*r2(9,10)+x2(9,10)*x2(9,10))*((p2(k,9)*p2(k,9)+q2(k,9)*q2(k,9))/vc2(k,9)*vc2(k,9)));
    delc2(k,10)=delc2(k,9)+atan((q2(k,9)*rl(9,10)-p2(k,9)*x2(9,10))/(vc2(k,9)*vc2(k,9)-(p2(k,9)*r2(9,10)+q2(k,9)*x2(9,10))));
    
    delcd2(k,10)=delc2(k,10)*180/3.1429;
    delp2(k,10)=delc2(k,10);
    vcalp2(k,10)=vc2(k,10);
   
    
      vc2(k,11)=sqrt(vc2(k,3)*vc2(k,3)-2*(p2(k,3)*r2(3,11)+q2(k,3)*x2(3,11))+(r2(3,11)*r2(3,11)+x2(3,11)*x2(3,11))*((p2(k,3)*p2(k,3)+q2(k,3)*q2(k,3))/vc2(k,3)*vc2(k,3)));
    delc2(k,11)=delc2(k,3)+atan((q2(k,3)*r2(3,11)-p2(k,3)*x2(3,11))/(vc2(k,3)*vc2(k,3)-(p2(k,3)*r2(3,11)+q2(k,3)*x2(3,11))));
    
    delcd2(k,11)=delc2(k,11)*180/3.1429;
    delp2(k,11)=delc2(k,11);
    vcalp2(k,11)=vc2(k,11);
    
    for ki=11:12
    j=ki+1;
     vc2(k,j)=sqrt(vc2(k,ki)*vc2(k,ki)-2*(p2(k,ki)*r2(ki,j)+q2(k,ki)*x2(ki,j))+(r2(ki,j)*r2(ki,j)+x2(ki,j)*x2(ki,j))*((p2(k,ki)*p2(k,ki)+q2(k,ki)*q2(k,ki))/vc2(k,ki)*vc2(k,ki)));
    delc2(k,j)=delc2(k,ki)+atan((q2(k,ki)*r2(ki,j)-p2(k,ki)*x2(ki,j))/(vc2(k,ki)*vc2(k,ki)-(p2(k,ki)*r2(ki,j)+q2(k,ki)*x2(ki,j))));
    
    delcd2(k,j)=delc2(k,j)*180/3.1429;
    delp2(k,j)=delc2(k,j);
    vcalp2(k,j)=vc2(k,j);
    end

    vc2(k,14)=sqrt(vc2(k,4)*vc2(k,4)-2*(p2(k,4)*r2(4,14)+q2(k,4)*x2(4,14))+(r2(4,14)*r2(4,14)+x2(4,14)*x2(4,14))*((p2(k,4)*p2(k,4)+q2(k,4)*q2(k,4))/vc2(k,4)*vc2(k,4)));
    delc2(k,14)=delc2(k,4)+atan((q2(k,4)*r2(4,14)-p2(k,4)*x2(4,14))/(vc2(k,4)*vc2(k,4)-(p2(k,4)*r2(4,14)+q2(k,4)*x2(4,14))));
    
    delcd2(k,14)=delc2(k,14)*180/3.1429;
    delp2(k,14)=delc2(k,14);
    vcalp2(k,14)=vc2(k,14); 

  
   vc2(k,15)=sqrt(vc2(k,4)*vc2(k,4)-2*(p2(k,4)*r2(4,15)+q2(k,4)*x2(4,15))+(r2(4,15)*r2(4,15)+x2(4,15)*x2(4,15))*((p2(k,4)*p2(k,4)+q2(k,4)*q2(k,4))/vc2(k,4)*vc2(k,4)));
    delc2(k,15)=delc2(k,4)+atan((q2(k,4)*r2(4,15)-p2(k,4)*x2(4,15))/(vc2(k,4)*vc2(k,4)-(p2(k,4)*r2(4,15)+q2(k,4)*x2(4,15))));
    
    delcd2(k,15)=delc2(k,15)*180/3.1429;
    delp2(k,15)=delc2(k,15);
    vcalp2(k,15)=vc2(k,15);  
% vc
% delc
% delcd



tplossp2(k)=0;
tqlossp2(k)=0;

for n=1:nbranch2
   
   cc(k,n)=(complex(vc2(k,fb2(n))*cos(delc2(k,fb2(n))),(vc2(k,fb2(n))*sin(delc2(k,fb2(n))))));
   dd(k,n)=(complex(vc2(k,eb2(n))*cos(delc2(k,eb2(n))),(vc2(k,eb2(n))*sin(delc2(k,eb2(n))))));
   
   cd(k,n)=cc(k,n)-dd(k,n);
   zz(k,n)=(complex((r2(fb2(n),eb2(n))),(x2(fb2(n),eb2(n)))));
   cr2(k,n)=((cc(k,n)-dd(k,n))/zz(k,n));
   plossp2(k,n)=(r2(fb2(n),eb2(n)))*(abs(cr2(k,n)))^2;
   qlossp2(k,n)=(xl(fb2(n),eb2(n)))*(abs(cr2(k,n)))^2;
   tplossp2(k)=tplossp2(k)+plossp2(k,n);
   tqlossp2(k)=tqlossp2(k)+qlossp2(k,n);
end

vprofileph2(k)=0;

for n=1:nbus2
    vprop2(k,n)=abs(1-vc2(k,n)); 
    vprofileph2(k)=vprofileph2(k)+abs(1-vc2(k,n));
end

stabilityp2(k,1)=0;
vsiph2(k)=0;
for n=1:4
    j=n+1;
    stabilityp2(k,j)=1/((vc2(k,n))^4-4*(p2(k,j)*x2(n,j)-q2(k,j)*r2(n,j))^2-4*(p2(k,j)*r2(n,j)+q2(k,j)*x2(n,j))*(vc2(k,n))^2);
    
   if (stabilityp2(k,j)>vsiph2(k))
        vsiph2(k)=stabilityp2(k,j);
    end
end


 stabilityp2(k,6)=1/((vc2(k,2))^4-4*(p2(k,6)*x2(2,6)-q2(k,6)*r2(2,6))^2-4*(p2(k,6)*r2(2,6)+q2(k,6)*x2(2,6))*(vc2(k,2))^2);
    
   if (stabilityp2(k,6)>vsiph2(k))
        vsiph2(k)=stabilityp2(k,6);
   end


   stabilityp2(k,7)=1/((vc2(k,6))^4-4*(p2(k,7)*x2(6,7)-q2(k,7)*r2(6,7))^2-4*(p2(k,7)*r2(6,7)+q2(k,7)*x2(6,7))*(vc2(k,6))^2);
    
   if (stabilityp2(k,7)>vsiph2(k))
        vsiph2(k)=stabilityp2(k,7);
    end 
   
   
stabilityp2(k,8)=1/((vc2(k,6))^4-4*(p2(k,8)*x2(6,8)-q2(k,8)*r2(6,8))^2-4*(p2(k,8)*r2(6,8)+q2(k,8)*x2(6,8))*(vc2(k,6))^2);
    
   if (stabilityp2(k,8)>vsiph2(k))
        vsiph2(k)=stabilityp2(k,8);
   end 
   

  stabilityp2(k,9)=1/((vc2(k,2))^4-4*(p2(k,9)*x2(2,9)-q2(k,9)*r2(2,9))^2-4*(p2(k,9)*r2(2,9)+q2(k,9)*x2(2,9))*(vc2(k,2))^2);
    
   if (stabilityp2(k,9)>vsiph2(k))
        vsiph2(k)=stabilityp2(k,9);
   end 
   
   stabilityp2(k,10)=1/((vc2(k,9))^4-4*(p2(k,10)*x2(9,10)-q2(k,10)*r2(9,10))^2-4*(p2(k,10)*r2(9,10)+q2(k,10)*x2(9,10))*(vc2(k,9))^2);
    
   if (stabilityp2(k,10)>vsiph2(k))
        vsiph2(k)=stabilityp2(k,10);
   end 
   
   
   stabilityp2(k,11)=1/((vc2(k,3))^4-4*(p2(k,11)*x2(3,11)-q2(k,11)*r2(3,11))^2-4*(p2(k,11)*r2(3,11)+q2(k,11)*x2(3,11))*(vc2(k,3))^2);
    
   if (stabilityp2(k,11)>vsiph2(k))
        vsiph2(k)=stabilityp2(k,11);
   end  
   
   
    for n=11:12
    j=n+1;
    stabilityp2(k,j)=1/((vc2(k,n))^4-4*(p2(k,j)*x2(n,j)-q2(k,j)*r2(n,j))^2-4*(p2(k,j)*r2(n,j)+q2(k,j)*x2(n,j))*(vc2(k,n))^2);
    
   if (stabilityp2(k,j)>vsiph2(k))
        vsiph2(k)=stabilityp2(k,j);
    end
    end
   
   
 stabilityp2(k,14)=1/((vc2(k,4))^4-4*(p2(k,14)*x2(4,14)-q2(k,14)*r2(4,14))^2-4*(p2(k,14)*r2(4,14)+q2(k,14)*x2(4,14))*(vc2(k,4))^2);
    
   if (stabilityp2(k,14)>vsiph2(k))
        vsiph2(k)=stabilityp2(k,14);
   end
    
stabilityp2(k,15)=1/((vc2(k,4))^4-4*(p2(k,15)*x2(4,15)-q2(k,15)*r2(4,15))^2-4*(p2(k,15)*r2(4,15)+q2(k,15)*x2(4,15))*(vc2(k,4))^2);
    
   if (stabilityp2(k,15)>vsiph2(k))
        vsiph2(k)=stabilityp2(k,15);
    end
    




% tfcph2(k)=(1243.53110+38.30553*pgp2(k,1)+0.03546*pgp2(k,1)*pgp2(k,1)+1658.56960+36.32782*pgp2(k,4)+0.02111*pgp2(k,4)*pgp2(k,4))+7*(pgp2(k,9)+pgp2(k,14));


pgt2(k)=0;
qgt2(k)=0;
for n=1:nbus2
    pgt2(k)=pgt2(k)+pgp2(k,n);
    qgt2(k)=qgt2(k)+qgp2(k,n);
end

pdpl2(k)=ploadn2(k)+tplossp2(k);
qdql2(k)=qloadn2(k)+tqlossp2(k);

difp2=pgt2(k)-pdpl2(k);
difq2=qgt2(k)-qdql2(k);
if ((abs(difp2)<=0.25)&&(abs(difq2)<=0.25))
    dif2=0;
else
    dif2=1;    
end
end


k
end

tfcpt2=0;
for k=1:mt
tfcp2(k)=62.5*(pgp2(k,4))+6*pgp2(k,9);
tfcpt2=tfcpt2+tfcp2(k);
end

vprofilep2=0;
vsip2=0;
reallossp2=0;
reactivelossp2=0;
for k=1:mt
    vprofilep2=vprofilep2+vprofileph2(k);
    vsip2=vsip2+ vsiph2(k);
    reallossp2=reallossp2+tplossp2(k);
    reactivelossp2=reactivelossp2+tqlossp2(k);
    
end

for k=1:mt
        pg29(k)=pgp2(k,9);
        pg214(k)=pgp2(k,14);
        pg23(k)=pgp2(k,3);
       
        pg21(k)=pgp2(k,1);
        pg24(k)=pgp2(k,4);
                
        qg21(k)=qgp2(k,1);
        qg24(k)=qgp2(k,4);
        qg23(k)=qgp2(k,3);
         qg214(k)=qgp2(k,14);
 end

pg21
pg23
pg24
pg29
pg214

 
 qg21
qg23
qg24


 qp21
 qp22
 phgp21
 qhgp21

tfcpt2

vprofilep2

vsip2

reallossp2
% >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
% % MG 3


eeebus69_bidding_Real;

nbus3=size(busdata3,1);
% pld3=busdata3(:,2)/1000;
% qld3=busdata3(:,3)/1000;
pgmax3=busdata3(:,4)/1000;
qgmax3=busdata3(:,5)/1000;
vsp3=busdata3(:,6);
delsp3=busdata3(:,7);
emx3=busdata3(:,8);
emn3=busdata3(:,9);
% at3=busdata3(:,10);
% bt3=busdata3(:,11);
% ct3=busdata3(:,12);
% ae3=busdata3(:,13);
% be3=busdata3(:,14);
% ce3=busdata3(:,15);
% as3=busdata3(:,16);
% bs3=busdata3(:,17);
% cs3=busdata3(:,18);
% ft3mn=busdata3(:,19);
% ft3mx=busdata3(:,20);
% vt3mn=busdata3(:,21);
% vt3mx=busdata3(:,22); 


for n=1:nbus3
    pgmin3(n)=0;
    qgmin3(n)=0;
end

% pload3=sum(pld3);
% qload3=sum(qld3);
pgen3=sum(pgmax3);
qgen3=sum(qgmax3);


nbranch3=size(BranchData3,1);
fb3=BranchData3(:,1);
eb3=BranchData3(:,2);
r3=BranchData3(:,3);
x3=BranchData3(:,4);
% linelimit3=BranchData3(:,5);



for n=1:nbranch3
    r3(fb3(n),eb3(n))=r3(n)/(11*11);
    x3(fb3(n),eb3(n))=x3(n)/(11*11); 
end


mt=24;


for m=1:mt
    pl3n(m,1)=0;
    ql3n(m,1)=0;
    pl3n(m,2)=p_domestic_load(m)/1000;
    ql3n(m,2)=q_domestic_load(m)/1000;
    pl3n(m,3)=p_domestic_load(m)/1000;
    ql3n(m,3)=q_domestic_load(m)/1000;
    pl3n(m,4)=p_school_load(m)/1000;
    ql3n(m,4)=q_school_load(m)/1000;     
   pl3n(m,5)=0;
    ql3n(m,5)=0;
   pl3n(m,6)=0;
    ql3n(m,6)=0;
   pl3n(m,7)=p_domestic_load(m)/1000;
    ql3n(m,7)=q_domestic_load(m)/1000;
    pl3n(m,8)=p_shopping_center_load(m)/1000;
    ql3n(m,8)=q_shopping_center_load(m)/1000;    
   pl3n(m,9)=0;
    ql3n(m,9)=0;
   pl3n(m,10)=p_domestic_load(m)/1000;
    ql3n(m,10)=q_domestic_load(m)/1000;
    pl3n(m,11)=p_domestic_load(m)/1000;
    ql3n(m,11)=q_domestic_load(m)/1000;
    pl3n(m,12)=p_domestic_load(m)/1000;
   ql3n(m,12)=q_domestic_load(m)/1000;
   pl3n(m,13)=p_domestic_load(m)/1000;;
    ql3n(m,13)=q_domestic_load(m)/1000;;
    pl3n(m,14)=p_domestic_load(m)/1000;
    ql3n(m,14)=q_domestic_load(m)/1000;
    pl3n(m,15)=0;
   ql3n(m,15)=0;
   pl3n(m,16)=p_domestic_load(m)/1000;
    ql3n(m,16)=q_domestic_load(m)/1000;
    pl3n(m,17)=p_domestic_load(m)/1000;
    ql3n(m,17)=q_domestic_load(m)/1000;
    pl3n(m,18)=0;
    ql3n(m,18)=0;
    pl3n(m,19)=p_domestic_load(m)/1000;
    ql3n(m,19)=q_domestic_load(m)/1000;
    pl3n(m,20)=p_heal_centre_load(m)/1000;
    ql3n(m,20)=q_heal_centre_load(m)/1000;
    pl3n(m,21)=0;
    ql3n(m,21)=0;
   pl3n(m,22)=0;
    ql3n(m,22)=0;
    pl3n(m,23)=p_domestic_load(m)/1000;
    ql3n(m,23)=q_domestic_load(m)/1000;
    pl3n(m,24)=p_domestic_load(m)/1000;
    ql3n(m,24)=q_domestic_load(m)/1000;
   pl3n(m,25)=0;
    ql3n(m,25)=0;
    pl3n(m,26)=p_post_office_load(m)/1000;
   ql3n(m,26)=q_post_office_load(m)/1000;
    pl3n(m,27)=p_domestic_load(m)/1000;
   ql3n(m,27)=q_domestic_load(m)/1000;
   pl3n(m,28)=p_domestic_load(m)/1000;
    ql3n(m,28)=q_domestic_load(m)/1000;
    pl3n(m,29)=0;
    ql3n(m,29)=0;
    pl3n(m,30)=0;
    ql3n(m,30)=0; 
   pl3n(m,31)=p_domestic_load(m)/1000;
    ql3n(m,31)=q_domestic_load(m)/1000;
    pl3n(m,32)= p_resort_load(m)/1000;
    ql3n(m,32)= q_resort_load(m)/1000;
   pl3n(m,33)=p_domestic_load(m)/1000;
    ql3n(m,33)=q_domestic_load(m)/1000;
    
    pl3n(m,34)=p_domestic_load(m)/1000;
    ql3n(m,34)=q_domestic_load(m)/1000;
    pl3n(m,35)=p_domestic_load(m)/1000;
    ql3n(m,35)=q_domestic_load(m)/1000;
    pl3n(m,36)=p_domestic_load(m)/1000;
    ql3n(m,36)=q_domestic_load(m)/1000;
    pl3n(m,37)=p_school_load(m)/1000;
    ql3n(m,37)=q_school_load(m)/1000;     
   pl3n(m,38)=p_domestic_load(m)/1000;
    ql3n(m,38)=q_domestic_load(m)/1000;
   pl3n(m,39)=p_domestic_load(m)/1000;
    ql3n(m,39)=q_domestic_load(m)/1000;
   pl3n(m,40)=p_domestic_load(m)/1000;
    ql3n(m,40)=q_domestic_load(m)/1000;
    pl3n(m,41)=p_shopping_center_load(m)/1000;
    ql3n(m,41)=q_shopping_center_load(m)/1000;    
   pl3n(m,42)=p_domestic_load(m)/1000;
    ql3n(m,42)=q_domestic_load(m)/1000;
   pl3n(m,43)=p_domestic_load(m)/1000;
    ql3n(m,43)=q_domestic_load(m)/1000;
    pl3n(m,44)=p_domestic_load(m)/1000;
    ql3n(m,44)=q_domestic_load(m)/1000;
    pl3n(m,45)=0;
   ql3n(m,45)=0;
   pl3n(m,46)=p_domestic_load(m)/1000;;
    ql3n(m,46)=q_domestic_load(m)/1000;;
    pl3n(m,47)=p_domestic_load(m)/1000;
    ql3n(m,47)=q_domestic_load(m)/1000;
    pl3n(m,48)=p_domestic_load(m)/1000;
   ql3n(m,48)=q_domestic_load(m)/1000;
   pl3n(m,49)=p_domestic_load(m)/1000;
    ql3n(m,49)=q_domestic_load(m)/1000;
    pl3n(m,50)=p_domestic_load(m)/1000;
    ql3n(m,50)=q_domestic_load(m)/1000;
    pl3n(m,51)=p_domestic_load(m)/1000;
    ql3n(m,51)=q_domestic_load(m)/1000;
    pl3n(m,52)=p_domestic_load(m)/1000;
    ql3n(m,52)=q_domestic_load(m)/1000;
    pl3n(m,53)=p_heal_centre_load(m)/1000;
    ql3n(m,53)=q_heal_centre_load(m)/1000;
    pl3n(m,54)=p_domestic_load(m)/1000;
    ql3n(m,54)=p_domestic_load(m)/1000;
   pl3n(m,55)=p_domestic_load(m)/1000;
    ql3n(m,55)=q_domestic_load(m)/1000;
    pl3n(m,56)=p_domestic_load(m)/1000;
    ql3n(m,56)=q_domestic_load(m)/1000;
    pl3n(m,57)=p_domestic_load(m)/1000;
    ql3n(m,57)=q_domestic_load(m)/1000;
   pl3n(m,58)=p_domestic_load(m)/1000;
    ql3n(m,58)=q_domestic_load(m)/1000;
    pl3n(m,59)=p_domestic_load(m)/1000;
   ql3n(m,59)=q_domestic_load(m)/1000;
    pl3n(m,607)=p_domestic_load(m)/1000;
   ql3n(m,60)=q_domestic_load(m)/1000;
   pl3n(m,61)=0;
    ql3n(m,61)=0;
    pl3n(m,62)=p_domestic_load(m)/1000;
    ql3n(m,62)=q_domestic_load(m)/1000;
    pl3n(m,63)=q_domestic_load(m)/1000;
    ql3n(m,63)=q_domestic_load(m)/1000; 
    pl3n(m,64)=p_domestic_load(m)/1000;
    ql3n(m,64)=q_domestic_load(m)/1000;
    pl3n(m,65)= 0;
    ql3n(m,65)= 0;
    pl3n(m,66)=p_domestic_load(m)/1000;
    ql3n(m,66)=q_domestic_load(m)/1000;
    pl3n(m,67)=p_domestic_load(m)/1000;
    ql3n(m,67)=q_domestic_load(m)/1000;
    pl3n(m,68)= p_domestic_load(m)/1000;
    ql3n(m,68)=q_domestic_load(m)/1000;
   pl3n(m,69)=p_domestic_load(m)/1000;
    ql3n(m,69)=q_domestic_load(m)/1000; 
end
    
for m=1:mt
    ploado(m)=0;
    qloado(m)=0;
    for n=1:nbus3
        ploado(m)=ploado(m)+pl3n(m,n);
        qloado(m)=qloado(m)+ql3n(m,n);
    end
end
  
% x =1:mt;
%  plot(x,1000*ploado(x),'-k')
% ylabel('Real power before DRP (KW)')
% xlabel('Time  (Hour)')
 


for n=1:nbus3
    pl3n(1,n)=pl3n(1,n)+0.15*pl3n(7,n);
    ql3n(1,n)=ql3n(1,n)+0.15*ql3n(7,n);
    pl3n(2,n)=pl3n(2,n)+0.15*pl3n(8,n);
    ql3n(2,n)=ql3n(2,n)+0.15*ql3n(8,n);
    pl3n(3,n)=pl3n(3,n)+0.15*pl3n(17,n);
    ql3n(3,n)=ql3n(3,n)+0.15*ql3n(17,n);
    pl3n(4,n)=pl3n(4,n)+0.15*pl3n(18,n);
    ql3n(4,n)=ql3n(4,n)+0.15*ql3n(18,n);
    pl3n(5,n)=pl3n(5,n)+0.15*pl3n(19,n);
    ql3n(5,n)=ql3n(5,n)+0.15*ql3n(19,n);
    pl3n(6,n)=pl3n(6,n)+0.15*pl3n(20,n);
    ql3n(6,n)=ql3n(6,n)+0.15*ql3n(20,n);
end

for n=1:nbus3
   pl3n(7,n)=0.85*pl3n(7,n);
   ql3n(7,n)=0.85*ql3n(7,n);
    pl3n(8,n)=0.85*pl3n(8,n);
    ql3n(8,n)=0.85*ql3n(8,n);
    pl3n(17,n)=0.85*pl3n(17,n);
    ql3n(17,n)=0.85*ql3n(17,n);
    pl3n(18,n)=0.85*pl3n(18,n);
   ql3n(18,n)=0.85*ql3n(18,n); 
    pl3n(19,n)=0.85*pl3n(19,n);
    ql3n(19,n)=0.85*ql3n(19,n);
    pl3n(20,n)=0.85*pl3n(20,n);
    ql3n(20,n)=0.85*ql3n(20,n);
end
        



for k=1:mt
    ploadn3(k)=0;
    qloadn3(k)=0;
    
    
    
    for n=1:nbus3
        ploadn3(k)=ploadn3(k)+pl3n(k,n);
        qloadn3(k)=qloadn3(k)+ql3n(k,n);      
    end
end
    
    

     

   hddata3=[-0.000054 -0.0054 0.0430 1.0 12.0 -0.35 0.07 0.2 1 2 1.5 1.8  0 4;
            -0.000030 -0.0030 0.0412 0.70  5.5 -0.20 0.05 0.15 0.6 1.2 0.8 1.0 0 3]
    
      
      
      
      
  rdata3=[10 9 8 7 6 7 8 9 10 11 12 10 11 12 11 10 9 8 7 6 7 8 9 10  8 10 9 11 8 9;
           8 8 9 9 8 7 6 7 8 9 9 8 8 9 9 8 7 6 7 8 9 9 8 8  7 6 8 7 9 9]
   
         
          
nh=size(hddata3,1);
for n=1:nh
    c13(n)=hddata3(n,1);
    c23(n)=hddata3(n,2);
    c33(n)=hddata3(n,3);
    c43(n)=hddata3(n,4);
    c53(n)=hddata3(n,5);
    c63(n)=hddata3(n,6);
    qmn3(n)=hddata3(n,7);
    qmx3(n)=hddata3(n,8);
    vmn3(n)=hddata3(n,9);
    vmx3(n)=hddata3(n,10);
    vi3(n)=hddata3(n,11);
    ve3(n)=hddata3(n,12);
    phmin3(n)=hddata3(n,13);
    phmax3(n)=hddata3(n,14);
end



for n=1:nh
    for m=1:mt
        ri3(n,m)=1.5e-2*rdata3(n,m);
    end
end  
   

grmax= 1.0e+03 *[   0
         0
         0
         0
         0
    0.2990
    0.5106
    0.7286
    0.7982
    0.9424
    0.9646
    0.9866
    0.9369
    0.7380
    0.6500
    0.2695
    0.2978
    0.2152
         0
         0
         0
         0
         0
         0 ]
     
     grmin= 1.0e+03 *[    0
         0
         0
         0
         0
         0
    0.4184
    0.5886
    0.7462
    0.8260
    0.9031
    0.9219
    0.7720
    0.6410
    0.5708
    0.2146
    0.2029
         0
         0
         0
         0
         0
         0
         0] 

 temp=[23
    23
    24
    25
    25
    25
    26
    27
    27
    28
    29
    29
    29
    28
    28
    27
    26
    25
    24
    24
    24
    24
    23
    23]    
         

gc=120; %%input('Certain irradiance point:');
gstd=1000
kd=0.06; 


      
% dev1=1;   
%     while (dev1~=0)
%        ev_charge1=0;
%         for k=1:mt
%             if  ((k>=18) && (k<=24))
%                 pevp31(k)=unifrnd(-170,0);
%             else
%                 pevp31(k)=0;
%             end                       
%             ev_charge1 = ev_charge1 + pevp31(k);
%         end
%         charge_diff1=-1000-ev_charge1;
%         
%         if (abs(charge_diff1)<0.05)
%             dev1=0;
%         else
%             dev1=1;
%         end
%     end  
% 
% dev2=1;   
%     while (dev2~=0)
%        ev_charge2=0;
%         for k=1:mt
%             if  ((k>=18) && (k<=24))
%                 pevp32(k)=unifrnd(-250,0);
%             else
%                 pevp32(k)=0;
%             end                       
%             ev_charge2 = ev_charge2 + pevp32(k);
%         end
%         charge_diff2=-1500-ev_charge2;
%         
%         if (abs(charge_diff2)<0.05)
%             dev2=0;
%         else
%             dev2=1;
%         end
%     end  
    
    
% pevp31 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -102.4713 -167.1272 -165.4157 -122.7627 -129.7528 -163.7475 -148.7705]
% pevp32 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -107.2250  -20.3968  -49.2092  -10.6329 -147.7588 -249.3222  -44.8329]

% pevp31 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -150.2873 -144.1496 -157.6239 -129.1988 -135.6474 -164.2556 -118.8118]
% pevp32 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -248.2181 -249.6170 -217.7120 -221.5225 -174.9881 -191.4468 -196.5353]


% pevp31 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -155.5449  -70.5890 -166.0121 -129.2795 -168.7510 -167.6761 -142.1088]
% pevp32 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -228.5122 -213.4514 -164.6643 -229.5895 -216.5424 -242.9184 -204.2992]

% pevp31 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0           0         0         0 -161.3073 -145.2894 -105.3435 -132.6937 -160.6155 -151.9438 -142.8219]
% pevp32 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -196.6207 -239.5647 -228.8052 -235.8036 -165.8343 -246.4646 -186.9505]


% pevp31 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -152.2356 -151.7011 -152.1009 -125.5849 -132.1262 -144.7927 -141.4407]
% pevp32 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -203.3329 -204.1168 -208.4213 -247.1171 -193.4924 -203.7442 -239.7992]


% pevp31 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0           0         0         0 -163.9590  -98.9997 -161.3171 -157.3096 -155.1589 -155.5102 -107.7410]
% pevp32 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0           0         0         0 -212.8536 -235.6539 -207.0481 -237.9354 -136.7620 -249.0508 -220.7274]


% pevp31 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -131.0001 -162.9949 -138.9635 -115.2926 -161.8523 -143.7702 -146.0878]
% pevp32 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -204.2409 -234.2788 -165.4602 -237.4109 -236.1962 -237.2663 -185.1822]


% pevp31 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -164.3904 -168.8630 -159.0526 -117.9598  -65.1172 -161.7162 -162.8623]
% pevp32 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -135.5780 -247.4330 -235.5888 -232.4327 -186.3885 -226.8867 -235.6685]


% pevp31 =[      0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -167.4708 -154.1713 -146.9259 -168.5135 -150.6183 -156.7767  -55.5734]
% pevp32 =[      0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -248.6947 -143.5395 -233.4172 -229.4325 -161.3451 -239.9364 -243.6646]


% pevp31 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -115.3427 -136.1810 -141.1154 -167.7563 -133.1530 -138.1741 -168.2959]
% pevp32 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -247.9842 -159.5684 -194.1981 -245.8650 -182.6359 -231.2351 -238.5180]


% pevp31 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -103.8896 -157.7808 -169.0507 -169.7947 -148.5583 -165.3520  -85.5663]
% pevp32 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -248.9553 -144.0057 -238.2124 -227.0973 -160.3479 -247.5130 -233.8541]


pevp31 =[       0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -156.4498 -151.2844 -118.0387 -157.7864 -110.0104 -138.9840 -167.4555]
pevp32 =[       0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -196.3543 -205.3574 -184.1351 -236.8621 -231.1302 -242.1336 -204.0488]


% pevp31 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0          0         0         0 -134.9911 -160.9154 -151.1865 -156.5181 -103.9288 -160.0777 -132.4157]
% pevp32 =[         0         0         0         0         0         0         0         0         0         0         0         0         0         0          0         0         0 -235.1457 -243.2093 -201.7607 -169.8373 -159.4581 -246.6903 -243.8645]


% pevp31 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -141.5354 -166.0934 -151.3851 -169.5706  -79.8402 -131.6793 -159.9379]
% pevp32 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -146.1072 -249.0132 -206.6420 -249.6189 -205.0861 -224.7821 -218.7502]


% pevp31 =[      0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -129.9067 -164.5555  -99.8504 -109.6645 -169.1849 -158.7850 -168.0305]
% pevp32 =[      0         0         0         0         0         0         0         0         0         0         0         0         0         0             0         0         0 -176.7609 -189.8674 -235.8010 -203.8005 -230.6012 -227.5565 -235.6220]


% pevp31 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0              0         0         0 -165.0991 -155.3128 -144.5490  -62.0887 -167.9449 -150.2703 -154.6872]
% pevp32 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0               0         0         0 -218.5846 -247.5430 -196.4559 -239.2041 -200.5567 -170.2469 -227.4213]


% pevp31 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -141.7189 -153.1020 -154.1290 -127.8244 -152.2664 -149.6811 -121.2379]
% pevp32 =[        0         0         0         0         0         0         0         0         0         0         0         0         0         0            0         0         0 -223.1616 -236.5242 -241.2092 -244.7344 -202.2894 -132.9574 -219.1608]





    for k=1:mt
    for n=1:nbus3
        pl3(k,n)=pl3n(k,n);
        ql3(k,n)=ql3n(k,n);
     end
end
    
    for k=1:mt
         pl3(k,15)=pl3n(k,15)-(pevp31(k)/1000);
         pl3(k,30)=pl3n(k,30)-(pevp32(k)/1000); 
    end
    
    
% qp31 =[  0.1273    0.1129    0.0970    0.0924    0.0900    0.1794    0.1130    0.1520    0.1548    0.1343    0.0872    0.1749    0.1259    0.1076       0.1072    0.1342    0.1112    0.1434    0.1453    0.0877    0.1309    0.1025    0.1326    0.0815]
% qp32 =[  0.1118    0.1045    0.1168    0.1457    0.0957    0.1067    0.1135    0.1080    0.1198    0.1047    0.1107    0.0867    0.1003    0.0984       0.1248    0.1184    0.1419    0.0965    0.1471    0.0915    0.1116    0.0776    0.1208    0.1266]

% qp31 =[    0.1276    0.1875    0.1299    0.1365    0.1633    0.1576    0.1050    0.1929    0.0968    0.1069    0.0750    0.1306    0.0743    0.1089       0.1589    0.1424    0.0754    0.1152    0.0710    0.1026    0.1489    0.0717    0.1227    0.1234]
% qp32 =[    0.0767    0.1324    0.0772    0.0708    0.1354    0.1098    0.1397    0.0520    0.1229    0.1293    0.1194    0.1338    0.1236    0.1470       0.1221    0.1456    0.0932    0.1455    0.0891    0.0935    0.1418    0.1277    0.0776    0.0739]


% qp31 =[    0.1091    0.1249    0.1492    0.1201    0.1251    0.1734    0.1148    0.1148    0.1217    0.0749    0.0975    0.1571    0.1113    0.1205      0.1750    0.0932    0.1256    0.1310    0.1287    0.0906    0.1299    0.0785    0.1832    0.0752]
% qp32 =[    0.1301    0.0654    0.1144    0.1044    0.1326    0.0934    0.1493    0.1447    0.1005    0.0875    0.0965    0.1398    0.1279    0.1340      0.1255    0.0633    0.1147    0.1228    0.1352    0.1281    0.0834    0.0575    0.1078    0.1212]


% qp31 =[   0.1238    0.1212    0.0940    0.1045    0.1264    0.1720    0.0813    0.1717    0.1876    0.1361    0.0742    0.1077    0.1012    0.1647     0.0912    0.1706    0.1205    0.1204    0.1016    0.0826    0.0850    0.1062    0.1056    0.1751]
% qp32 =[   0.1159    0.1307    0.1494    0.1372    0.1116    0.0980    0.0694    0.0856    0.1080    0.1348    0.0977    0.1467    0.1368    0.1089     0.1321    0.1207    0.0910    0.1117    0.1206    0.0956    0.0894    0.1001    0.1234    0.0549]


% qp31 =[   0.0809    0.1277    0.0944    0.1947    0.1423    0.1595    0.0961    0.1348    0.0957    0.1349    0.0949    0.1341    0.1521    0.0886      0.1624    0.1471    0.0833    0.1397    0.0747    0.1248    0.1241    0.1327    0.0808    0.1246]
% qp32 =[   0.1362    0.1158    0.1035    0.0852    0.1424    0.1283    0.0896    0.1173    0.1097    0.0566    0.1438    0.1205    0.1419    0.1400     0.1384    0.1253    0.1187    0.0519    0.1033    0.0935    0.1013    0.1462    0.1148    0.0557]


qp31 =[    0.1509    0.0884    0.1528    0.1179    0.1235    0.1214    0.1272    0.1127    0.1284    0.1454    0.1155    0.0958    0.0724    0.0916      0.0802    0.1823    0.1934    0.1795    0.1399    0.0817    0.1117    0.0968    0.1077    0.1679]
qp32 =[    0.1230    0.1403    0.0873    0.1275    0.1300    0.1491    0.1369    0.1249    0.1171    0.0879    0.1378    0.0901    0.0687    0.1156      0.1135    0.0739    0.1013    0.0653    0.1226    0.1398    0.1207    0.0664    0.1456    0.0946]


% qp31 =[    0.0905    0.0886    0.1409    0.1248    0.0968    0.1387    0.0778    0.1944    0.1939    0.0902    0.1110    0.1063    0.0828    0.1409       0.1856    0.1019    0.1937    0.1766    0.0932    0.0799    0.1211    0.0867    0.1187    0.0899]
% qp32 =[    0.0527    0.0742    0.0986    0.1444    0.1029    0.0989    0.1422    0.1426    0.0596    0.1309    0.1337    0.1106    0.1281    0.0566       0.1480    0.1368    0.0933    0.1260    0.1415    0.1130    0.1212    0.1320    0.0841    0.1481]


% qp31 =[    0.1287    0.1772    0.1129    0.1284    0.0727    0.1337    0.0823    0.1515    0.1128    0.1256    0.1013    0.1545    0.1353    0.1708         0.0822    0.1620    0.1395    0.1731    0.1448    0.0760    0.0796    0.0955    0.0933    0.0914]
% qp32 =[    0.1422    0.0562    0.0815    0.0752    0.1263    0.0965    0.1471    0.1337    0.1423    0.1059    0.1239    0.1444    0.0980    0.0881         0.1048    0.0856    0.1257    0.1241    0.1341    0.1084    0.1107    0.1089    0.1149    0.1416]


% qp31 =[    0.1582    0.1333    0.1301    0.1053    0.1264    0.1463    0.1638    0.0733    0.1143    0.1283    0.0726    0.1821    0.1787    0.1229           0.0714    0.0785    0.0843    0.0787    0.1550    0.1758    0.0901    0.1211    0.1360    0.1086]
% qp32 =[    0.0768    0.1268    0.1337    0.0900    0.0737    0.1445    0.1300    0.1374    0.1439    0.1095    0.1354    0.1490    0.1116    0.1114           0.1266    0.0790    0.0761    0.1139    0.0980    0.1199    0.0703    0.0691    0.1056    0.1178]


% qp31 =[    0.1260    0.1149    0.1323    0.1192    0.1579    0.1624    0.0861    0.1134    0.1525    0.0992    0.1107    0.1487    0.1643    0.0859       0.0747    0.0829    0.1236    0.1393    0.1399    0.1035    0.1118    0.1366    0.1208    0.1182]
% qp32 =[    0.1423    0.0569    0.1075    0.1498    0.0841    0.1051    0.1438    0.1074    0.0826    0.0776    0.1495    0.1237    0.0974    0.1245       0.1377    0.1308    0.1433    0.1220    0.1337    0.0886    0.0557    0.1401    0.1065    0.0695]


% qp31 =[    0.1589    0.0922    0.1198    0.1419    0.1106    0.1421    0.1395    0.1365    0.0992    0.1189    0.0897    0.1368    0.0807    0.1774      0.0770    0.1534    0.1831    0.1401    0.1346    0.1129    0.1012    0.1034    0.0886    0.1063]
% qp32 =[    0.0675    0.1428    0.0946    0.1302    0.1449    0.1161    0.0761    0.1287    0.1463    0.0602    0.1031    0.0522    0.0994    0.1183      0.1443    0.1410    0.0854    0.1061    0.1171    0.1179    0.1464    0.1114    0.1242    0.1060]


% qp31 =[   0.1401    0.1306    0.1336    0.1507    0.1912    0.1925    0.0716    0.0909    0.1515    0.1195    0.0972    0.0906    0.1036    0.0928         0.1729    0.1694    0.0753    0.1305    0.1402    0.1253    0.0863    0.0976    0.0972    0.0840]
% qp32 =[   0.0880    0.1306    0.1304    0.1018    0.1398    0.1303    0.1475    0.1428    0.0693    0.0832    0.1450    0.1373    0.1277    0.1383         0.0655    0.0612    0.1205    0.1024    0.1181    0.1199    0.1311    0.1069    0.0701    0.0923]


% qp31 =[    0.1327    0.1409    0.0828    0.1277    0.0945    0.1838    0.1567    0.0778    0.1010    0.1171    0.1052    0.1297    0.0898    0.1225      0.1383    0.0979    0.1126    0.1971    0.1094    0.1495    0.1066    0.1948    0.0825    0.0738]
% qp32 =[    0.1277    0.0975    0.1379    0.1347    0.0877    0.0526    0.0660    0.1338    0.1470    0.0863    0.0958    0.1252    0.1402    0.1436      0.1362    0.1460    0.0779    0.1363    0.1446    0.1117    0.0950    0.0939    0.1004    0.0620]


% qp31 =[    0.1230    0.1215    0.1184    0.1639    0.1493    0.1522    0.1442    0.1359    0.1292    0.1212    0.1235    0.0923    0.1222    0.1177       0.1021    0.1002    0.1402    0.1842    0.1040    0.1174    0.1087    0.1030    0.0700    0.0907]
% qp32 =[    0.1013    0.1317    0.1060    0.0612    0.1443    0.1202    0.0801    0.1417    0.1416    0.1253    0.1339    0.0551    0.1396    0.1245       0.1142    0.1149    0.1039    0.0917    0.1218    0.0792    0.1092    0.1146    0.1182    0.1358]


% qp31 =[    0.1443    0.1484    0.1436    0.1432    0.1528    0.1917    0.1790    0.1184    0.0842    0.0879    0.1108    0.0880    0.1328    0.1147       0.0891    0.1098    0.0864    0.1446    0.1231    0.0955    0.1465    0.1094    0.1022    0.0787]
% qp32 =[    0.1410    0.1432    0.1273    0.1267    0.0910    0.1630    0.0706    0.1122    0.0753    0.0982    0.1378    0.1489    0.1429    0.1020       0.0649    0.1398    0.1319    0.1051    0.0678    0.1006    0.0621    0.1134    0.1031    0.1011]


% qp31 =[    0.1405    0.1434    0.1524    0.0958    0.1915    0.1939    0.0799    0.0812    0.0894    0.1020    0.1249    0.1077    0.0919    0.0733          0.0918    0.0982    0.1297    0.1312    0.1233    0.1085    0.1936    0.1447    0.0879    0.1685]
% qp32 =[    0.1347    0.1436    0.1154    0.1364    0.0940    0.0940    0.1084    0.0503    0.1358    0.1026    0.1372    0.1228    0.0698    0.1110          0.0879    0.1000    0.1400    0.1429    0.0855    0.1422    0.0948    0.1471    0.1126    0.0711]


% qp31 =[    0.1477    0.1286    0.0990    0.1024    0.1476    0.1732    0.1021    0.1123    0.1465    0.1001    0.1552    0.1450    0.1977    0.1253       0.1147    0.0726    0.1267    0.1292    0.1240    0.0891    0.1175    0.1106    0.0863    0.0715]
% qp32 =[    0.1491    0.1049    0.0532    0.1227    0.1221    0.1395    0.1380    0.1062    0.0631    0.1067    0.1285    0.1254    0.0929    0.1150       0.1321    0.1349    0.1048    0.1293    0.1284    0.0892    0.0980    0.0920    0.1352    0.0687]



 dph3=1;
 while (dph3~=0)
 dqp1=1;
    nip1=0;
    while (dqp1~=0)
        nip1=nip1+1;
        dvmp1=1;
        while (dvmp1~=0)
%             for k=1:(mt-1)
%                 qp31(k)=qmn3(1)+unifrnd(0,1)*(qmx3(1)-qmn3(1));
%             end
            for k=1:(mt-1)
                if (k==1)
                    vp31(k)=vi3(1)+ri3(1,k)-qp31(k);
                elseif (k>=2)
                    vp31(k)=vp31(k-1)+ri3(1,k)-qp31(k);
                end
            end
            for k=1:(mt-1)
                if ((vp31(k)>vmx3(1))|(vp31(k)<vmn3(1)))
                    dvp1(k)=1;
                else
                    dvp1(k)=0;
                end
            end
            dvmp1=0;
            for k=1:(mt-1)
                if (dvp1(k)>dvmp1)
                    dvmp1=dvp1(k);
                end
            end
        end
        
        
        rt1=0;
        qt1=0;
        for k=1:mt
            rt1=rt1+ri3(1,k);
        end
        for k=1:(mt-1)
            qt1=qt1+qp31(k);
        end
        qp31(mt)=vi3(1)-ve3(1)+rt1-qt1;
        if ((qp31(mt)>=qmn3(1))&(qp31(mt)<=qmx3(1)))
            dqp1=0;
        else
            dqp1=1;
        end
    end
    
    
    for k=1:mt
        if (k==1)
            php31(k)=(c13(1)*vi3(1)^2+c23(1)*qp31(k)^2+c33(1)*vi3(1)*qp31(k)+c43(1)*vi3(1)+c53(1)*qp31(k)+c63(1));
            qhp31(k)=0.8*php31(k);
        else
            php31(k)=(c13(1)*vp31(k-1)^2+c23(1)*qp31(k)^2+c33(1)*vp31(k-1)*qp31(k)+c43(1)*vp31(k-1)+c53(1)*qp31(k)+c63(1));
            qhp31(k)=0.8*php31(k);
        end
        
    end  
     for k=1:mt        
        if (php31(k)<0)
            dphp1(k)=1;
        else
             dphp1(k)=0;
        end
    end
    
    dph3=0;
    for k=1:mt
        if (dphp1(k)>dph3)
            dph3=dphp1(k);
        end
    end
    
 end
 
 
  dph1=1;
 while (dph1~=0)
 dqp1=1;
    nip1=0;
    while (dqp1~=0)
        nip1=nip1+1;
        dvmp1=1;
        while (dvmp1~=0)
%             for k=1:(mt-1)
%                 qp32(k)=qmn3(2)+unifrnd(0,1)*(qmx3(2)-qmn3(2));
%             end
            for k=1:(mt-1)
                if (k==1)
                    vp32(k)=vi3(2)+ri3(2,k)-qp32(k);
                elseif (k>=2)
                    vp32(k)=vp32(k-1)+ri3(2,k)-qp32(k);
                end
            end
            for k=1:(mt-1)
                if ((vp32(k)>vmx3(2))|(vp32(k)<vmn3(2)))
                    dvp1(k)=1;
                else
                    dvp1(k)=0;
                end
            end
            dvmp1=0;
            for k=1:(mt-1)
                if (dvp1(k)>dvmp1)
                    dvmp1=dvp1(k);
                end
            end
        end
        
        
        rt2=0;
        qt2=0;
        for k=1:mt
            rt2=rt2+ri3(2,k);
        end
        for k=1:(mt-1)
            qt2=qt2+qp32(k);
        end
        qp32(mt)=vi3(2)-ve3(2)+rt2-qt2;
        if ((qp32(mt)>=qmn3(2))&(qp32(mt)<=qmx3(2)))
            dqp1=0;
        else
            dqp1=1;
        end
    end
    
    
    for k=1:mt
        if (k==1)
            php32(k)=(c13(2)*vi3(2)^2+c23(2)*qp32(k)^2+c33(2)*vi3(2)*qp32(k)+c43(2)*vi3(2)+c53(2)*qp32(k)+c63(2));
            qhp32(k)=0.8*php32(k);
        else
            php32(k)=(c13(2)*vp32(k-1)^2+c23(2)*qp32(k)^2+c33(2)*vp32(k-1)*qp32(k)+c43(2)*vp32(k-1)+c53(2)*qp32(k)+c63(2));
            qhp32(k)=0.8*php32(k);
        end
        
    end  
     for k=1:mt        
        if (php32(k)<0)
            dphp1(k)=1;
        else
             dphp1(k)=0;
        end
    end
    
    dph1=0;
    for k=1:mt
        if (dphp1(k)>dph1)
            dph1=dphp1(k);
        end
    end
    
 end
 
 dw31=1;
        while (dw31~=0)
            for m=1:7
                qhgp31(m)=-0.2;
                phgp31(m)=-0.1;
            end
            for m=1:7
                if (m==1)
                    vpsp31(m)=vpsi(1)-qhgp31(m);
                elseif (m>=2)
                    vpsp31(m)=vpsp31((m-1))-qhgp31(m);
                end
            end

             qhgp31(8)=0;
                phgp31(8)=0;
            
            vpsp31(8)=vpsp31(7);
            
            dvps=1;
        while (dvps~=0)
            for m=9:19
                phgp31(m)=unifrnd(phgmin,phgmax);
                qhgp31(m)=0.05+2*phgp31(m);
            end
            
            for m=9:19
                vpsp31(m)=vpsp31((m-1))-qhgp31(m);
                
               if (vpsp31(m)>=0.300)
                dvs(m)=0;
               else
                   dvs(m)=1;
               end
            end
            dvps=0;
           for m=9:19
               if (dvs(m)>dvps)
                  dvps=dvs(m);
               end
           end
        end 
           
           qhgp31(20)=0;
                phgp31(20)=0;
        
              vpsp31(20)=vpsp31(19);  
                
             for m=21:24
                  qhgp31(m)=-0.200;
                phgp31(m)=-0.100;
             end
             
              for m=21:24
                  vpsp31(m)=vpsp31((m-1))-qhgp31(m);
              end
              
              qtotal=0;
              
              for m=1:24
                 qtotal=qtotal+qhgp31(m);
              end 
              if (abs(qtotal)<0.001)
                  dw31=0;
              else
                  dw31=1;
              end
        end
  
     dw31     
 
 dw32=1;
        while (dw32~=0)
            for m=1:7
                qhgp32(m)=-0.2;
                phgp32(m)=-0.1;
            end
            for m=1:7
                if (m==1)
                    vpsp32(m)=vpsi(1)-qhgp32(m);
                elseif (m>=2)
                    vpsp32(m)=vpsp32((m-1))-qhgp32(m);
                end
            end

             qhgp32(8)=0;
                phgp32(8)=0;
            
            vpsp32(8)=vpsp32(7);
            
            dvps=1;
        while (dvps~=0)
            for m=9:19
                phgp32(m)=unifrnd(phgmin,phgmax);
                qhgp32(m)=0.05+2*phgp32(m);
            end
            
            for m=9:19
                vpsp32(m)=vpsp32((m-1))-qhgp32(m);
                
               if (vpsp32(m)>=0.300)
                dvs(m)=0;
               else
                   dvs(m)=1;
               end
            end
            dvps=0;
           for m=9:19
               if (dvs(m)>dvps)
                  dvps=dvs(m);
               end
           end
        end 
           
           qhgp32(20)=0;
                phgp32(20)=0;
        
              vpsp32(20)=vpsp32(19);  
                
             for m=21:24
                  qhgp32(m)=-0.200;
                phgp32(m)=-0.100;
             end
             
              for m=21:24
                  vpsp32(m)=vpsp32((m-1))-qhgp32(m);
              end
              
              qtotal=0;
              
              for m=1:24
                 qtotal=qtotal+qhgp32(m);
              end 
              if (abs(qtotal)<0.001)
                  dw32=0;
              else
                  dw32=1;
              end
        end
  
     dw32     
 
 
 
 
for k=1:1
  
    dif3=1;
while (dif3~=0)
    

for n=1:nbus3
    pgp3(k,n)=0;
    qgp3(k,n)=0;
end


     pgp3(k,1)=unifrnd(0,pgmax3(1));
     pgp3(k,6)=unifrnd(0,pgmax3(6));
     pgp3(k,25)=unifrnd(0,pgmax3(25));
  pgp3(k,29)=unifrnd(0,pgmax3(29));
   
    qgp3(k,1)=unifrnd(0,qgmax3(1));
     qgp3(k,6)=unifrnd(0,qgmax3(6));
    qgp3(k,25)=unifrnd(0,qgmax3(25)); 
      qgp3(k,29)=unifrnd(0,qgmax3(29)); 
  
%      pgp3(k,1)=unifrnd(0,pgmax3(1));
%      pgp3(k,25)=unifrnd(0,pgmax3(25));
%   
%     qgp3(k,1)=unifrnd(0,qgmax3(1));
%     qgp3(k,25)=unifrnd(0,qgmax3(25)); 
 

pgp3(k,5)=phgp31(k);
pgp3(k,18)=phgp32(k);


 gr3(k)=unifrnd(grmin(k),grmax(k));
         if ((gr3(k)>=0)&(gr3(k)<gc))
              
       pgp3(k,9) =pgmax3(9)*((gr3(k)^2)/(gstd*gc));    
       pgp3(k,21) =pgmax3(21)*((gr3(k)^2)/(gstd*gc));
       pgp3(k,22) =pgmax3(22)*((gr3(k)^2)/(gstd*gc));
        else
         if (gr3(k)>gc)
             pgp3(k,9) =pgmax3(9)*(gr3(k)/gstd);    
             pgp3(k,21) =pgmax3(21)*(gr3(k)/gstd);
             pgp3(k,22) =pgmax3(22)*(gr3(k)/gstd);
         end
         end

        


         pgp3(k,45)=php31(k);
         qgp3(k,45)=qhp31(k);

         pgp3(k,61)=php32(k);
         qgp3(k,61)=qhp32(k);
   
         
         
% 
% % Backward Sweep

p3(k,27)=pgp3(k,27)-pl3(k,27)-tp31(k);
   q3(k,27)=qgp3(k,27)-ql3(k,27)-tq31(k);


j=28;
for ki=1:15
    
    n=j-ki;    
    m=n-1;    


      p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end






 p3(k,69)=pgp3(k,69)-pl3(k,69);
 q3(k,69)=qgp3(k,69)-ql3(k,69);

 
j=70;
for ki=1:1
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end


    p3(k,12)=p3(k,12)-r3((12),68)*((p3(k,68)^2+q3(k,68)^2)/(vsp3(68)^2));
    q3(k,12)=q3(k,12)-x3((12),68)*((p3(k,68)^2+q3(k,68)^2)/(vsp3(68)^2)); 


   p3(k,67)=pgp3(k,67)-pl3(k,67);
   q3(k,67)=qgp3(k,67)-ql3(k,67); 
    
    
   j=68;
for ki=1:1
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end 
    
    
    
 p3(k,11)=pgp3(k,11)-pl3(k,11)-r3((11),12)*((p3(k,12)^2+q3(k,12)^2)/(vsp3(12)^2))-r3((11),66)*((p3(k,66)^2+q3(k,66)^2)/(vsp3(66)^2));
 q3(k,11)=qgp3(k,11)-ql3(k,11)-x3((11),12)*((p3(k,12)^2+q3(k,12)^2)/(vsp3(12)^2))-x3((11),66)*((p3(k,66)^2+q3(k,66)^2)/(vsp3(66)^2));
    
    
   j=12;
for ki=1:2
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end 
    
 p3(k,65)=pgp3(k,65)-pl3(k,65);
 q3(k,65)=qgp3(k,65)-ql3(k,65);

 
j=66;
for ki=1:12
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end   
    
    
    p3(k,9)=p3(k,9)-r3((9),53)*((p3(k,53)^2+q3(k,53)^2)/(vsp3(53)^2));
    q3(k,9)=q3(k,9)-x3((9),53)*((p3(k,53)^2+q3(k,53)^2)/(vsp3(53)^2));   



 j=10;
for ki=1:1
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end 

   p3(k,52)=pgp3(k,52)-pl3(k,52);
   q3(k,52)=qgp3(k,52)-ql3(k,52); 
    
    
   j=53;
for ki=1:1
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end 


    p3(k,8)=p3(k,8)-r3((8),51)*((p3(k,51)^2+q3(k,51)^2)/(vsp3(51)^2));
    q3(k,8)=q3(k,8)-x3((8),51)*((p3(k,51)^2+q3(k,51)^2)/(vsp3(51)^2));   


   j=9;
for ki=1:4
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end  



   p3(k,50)=pgp3(k,50)-pl3(k,50);
   q3(k,50)=qgp3(k,50)-ql3(k,50); 
    
    
   j=51;
for ki=1:3
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end 


    p3(k,4)=p3(k,4)-r3((4),47)*((p3(k,47)^2+q3(k,47)^2)/(vsp3(47)^2));
    q3(k,4)=q3(k,4)-x3((4),47)*((p3(k,47)^2+q3(k,47)^2)/(vsp3(47)^2));




   p3(k,46)=pgp3(k,46)-pl3(k,46)-tp32(k);
   q3(k,46)=qgp3(k,46)-ql3(k,46)-tq32(k); 
    
    
   j=47;
for ki=1:10
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end 


   p3(k,35)=pgp3(k,35)-pl3(k,35);
   q3(k,35)=qgp3(k,35)-ql3(k,35); 
    
    
   j=36;
for ki=1:7
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end 


 p3(k,3)=pgp3(k,3)-pl3(k,3)-r3((3),4)*((p3(k,4)^2+q3(k,4)^2)/(vsp3(4)^2))-r3((3),28)*((p3(k,28)^2+q3(k,28)^2)/(vsp3(28)^2))-r3((3),36)*((p3(k,36)^2+q3(k,36)^2)/(vsp3(36)^2));
 q3(k,3)=qgp3(k,3)-ql3(k,3)-x3((3),4)*((p3(k,4)^2+q3(k,4)^2)/(vsp3(4)^2))-x3((3),28)*((p3(k,28)^2+q3(k,28)^2)/(vsp3(28)^2))-x3((3),36)*((p3(k,36)^2+q3(k,36)^2)/(vsp3(36)^2));
    

 j=4;
for ki=1:2
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end 




% Forward Sweep

vc3(k,1)=vsp3(1);
delc3(k,1)=delsp3(1);
  vcalp3(k,1)=vc3(k,1);
for ki=1:68
    j=ki+1;
    vc3(k,j)=sqrt(vc3(k,ki)*vc3(k,ki)-2*(p3(k,ki)*r3(ki,j)+q3(k,ki)*x3(ki,j))+(r3(ki,j)*r3(ki,j)+x3(ki,j)*x3(ki,j))*((p3(k,ki)*p3(k,ki)+q3(k,ki)*q3(k,ki))/vc3(k,ki)*vc3(k,ki)));

    delc3(k,j)=delc3(k,ki)+atan((q3(k,ki)*r3(ki,j)-p3(k,ki)*x3(ki,j))/(vc3(k,ki)*vc3(k,ki)-(p3(k,ki)*r3(ki,j)+q3(k,ki)*x3(ki,j))));
    
    delcd3(k,j)=delc3(k,j)*180/3.1429;
    vcalp3(k,j)=vc3(k,j);
    
end

% vc
% delc
% delcd



tplossp3(k)=0;
tqlossp3(k)=0;

for n=1:nbranch3
   
   cc(k,n)=(complex(vc3(k,fb3(n))*cos(delc3(k,fb3(n))),(vc3(k,fb3(n))*sin(delc3(k,fb3(n))))));
   dd(k,n)=(complex(vc3(k,eb3(n))*cos(delc3(k,eb3(n))),(vc3(k,eb3(n))*sin(delc3(k,eb3(n))))));
   
   cd(k,n)=cc(k,n)-dd(k,n);
   zz(k,n)=(complex((r3(fb3(n),eb3(n))),(x3(fb3(n),eb3(n)))));
   cr3(k,n)=((cc(k,n)-dd(k,n))/zz(k,n));
   plossp3(k,n)=(r3(fb3(n),eb3(n)))*(abs(cr3(k,n)))^2;
   qlossp3(k,n)=(x3(fb3(n),eb3(n)))*(abs(cr3(k,n)))^2;
    tplossp3(k)=tplossp3(k)+plossp3(k,n);
    tqlossp3(k)=tqlossp3(k)+qlossp3(k,n);
end

vprofileph3(k)=0;

for n=1:nbus3
    vprop3(k,n)=abs(1-vc3(k,n)); 
    vprofileph3(k)=vprofileph3(k)+abs(1-vc3(k,n));
end



stabilityp3(k,1)=0;
vsiph3(k)=0;
for n=1:68
    j=n+1;
    stabilityp3(k,j)=1/((vc3(k,n))^4-4*(p3(k,j)*x3(n,j)-q3(k,j)*r3(n,j))^2-4*(p3(k,j)*r3(n,j)+q3(k,j)*x3(n,j))*(vc3(k,n))^2);
 
    if (stabilityp3(k,j)>vsiph3(k))
        vsiph3(k)=stabilityp3(k,j);
    end
end

 

pgt3(k)=0;
qgt3(k)=0;
for n=1:nbus3
    pgt3(k)=pgt3(k)+pgp3(k,n);
    qgt3(k)=qgt3(k)+qgp3(k,n);
end

pdpl3(k)=ploadn3(k)+tplossp3(k);
qdql3(k)=qloadn3(k)+tqlossp3(k);

difp3=pgt3(k)-pdpl3(k);
difq3=qgt3(k)-qdql3(k);
if ((abs(difp3)<=0.25)&&(abs(difq3)<=0.25))
    dif3=0;
else
    dif3=1;    
end
end


k


end

for k=2:mt
  
    dif3=1;
while (dif3~=0)
    

for n=1:nbus3
    pgp3(k,n)=0;
    qgp3(k,n)=0;
end

pgp3(k,5)=phgp31(k);
pgp3(k,18)=phgp32(k);
  
  
      dp11=1;
       while (dp11~=0)
           pgp3(k,1)=unifrnd(0,pgmax3(1));
           if (pgp3(k,1)>pgp3((k-1),1))
               ur=pgp3(k,1)-pgp3((k-1),1);
               if (ur>0.4)
                    dp11=1;                   
                else
                    dp11=0;
                end
            elseif (pgp3(k,1)<pgp3((k-1),1))
                dr=-pgp3(k,1)+pgp3((k-1),1);
                if (dr>0.4)
                    dp11=1;                  
                else
                    dp11=0;
                end
            end
       end

       dp12=1;
       while (dp12~=0)
           pgp3(k,6)=unifrnd(0,pgmax3(6));
           if (pgp3(k,6)>pgp3((k-1),6))
               ur=pgp3(k,6)-pgp3((k-1),6);
               if (ur>0.4)
                    dp12=1;                   
                else
                    dp12=0;
                end
            elseif (pgp3(k,6)<pgp3((k-1),6))
                dr=-pgp3(k,6)+pgp3((k-1),6);
                if (dr>0.4)
                    dp12=1;                  
                else
                    dp12=0;
                end
            end
       end
       
       
    dp13=1;
       while (dp13~=0)
           pgp3(k,25)=unifrnd(0,pgmax3(25));
           if (pgp3(k,25)>pgp3((k-1),25))
               ur=pgp3(k,25)-pgp3((k-1),25);
               if (ur>0.4)
                    dp13=1;                   
                else
                    dp13=0;
                end
            elseif (pgp3(k,25)<pgp3((k-1),25))
                dr=-pgp3(k,25)+pgp3((k-1),25);
                if (dr>0.4)
                    dp13=1;                  
                else
                    dp13=0;
                end
            end
       end   

            dp14=1;
       while (dp14~=0)
           pgp3(k,29)=unifrnd(0,pgmax3(29));
           if (pgp3(k,29)>pgp3((k-1),29))
               ur=pgp3(k,29)-pgp3((k-1),29);
               if (ur>0.4)
                    dp14=1;                   
                else
                    dp14=0;
                end
            elseif (pgp3(k,29)<pgp3((k-1),29))
                dr=-pgp3(k,29)+pgp3((k-1),29);
                if (dr>0.4)
                    dp14=1;                  
                else
                    dp14=0;
                end
            end
       end   
  qgp3(k,1)=unifrnd(0,qgmax3(1));
     qgp3(k,6)=unifrnd(0,qgmax3(6));
    qgp3(k,25)=unifrnd(0,qgmax3(25)); 
      qgp3(k,29)=unifrnd(0,qgmax3(29)); 
       
  

 gr3(k)=unifrnd(grmin(k),grmax(k));
         if ((gr3(k)>=0)&(gr3(k)<gc))
              
       pgp3(k,9) =pgmax3(9)*((gr3(k)^2)/(gstd*gc));    
       pgp3(k,21) =pgmax3(21)*((gr3(k)^2)/(gstd*gc));
       pgp3(k,22) =pgmax3(22)*((gr3(k)^2)/(gstd*gc));
        else
         if (gr3(k)>gc)
             pgp3(k,9) =pgmax3(9)*(gr3(k)/gstd);    
             pgp3(k,21) =pgmax3(21)*(gr3(k)/gstd);
             pgp3(k,22) =pgmax3(22)*(gr3(k)/gstd);
         end
         end

         pgp3(k,45)=php31(k);
         qgp3(k,45)=qhp31(k);

         pgp3(k,61)=php32(k);
         qgp3(k,61)=qhp32(k);
   
         
         
% 
% % Backward Sweep

p3(k,27)=pgp3(k,27)-pl3(k,27)-tp31(k);
   q3(k,27)=qgp3(k,27)-ql3(k,27)-tq31(k);


j=28;
for ki=1:15
    
    n=j-ki;    
    m=n-1;    


      p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end






 p3(k,69)=pgp3(k,69)-pl3(k,69);
 q3(k,69)=qgp3(k,69)-ql3(k,69);

 
j=70;
for ki=1:1
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end


    p3(k,12)=p3(k,12)-r3((12),68)*((p3(k,68)^2+q3(k,68)^2)/(vsp3(68)^2));
    q3(k,12)=q3(k,12)-x3((12),68)*((p3(k,68)^2+q3(k,68)^2)/(vsp3(68)^2)); 


   p3(k,67)=pgp3(k,67)-pl3(k,67);
   q3(k,67)=qgp3(k,67)-ql3(k,67); 
    
    
   j=68;
for ki=1:1
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end 
    
    
    
 p3(k,11)=pgp3(k,11)-pl3(k,11)-r3((11),12)*((p3(k,12)^2+q3(k,12)^2)/(vsp3(12)^2))-r3((11),66)*((p3(k,66)^2+q3(k,66)^2)/(vsp3(66)^2));
 q3(k,11)=qgp3(k,11)-ql3(k,11)-x3((11),12)*((p3(k,12)^2+q3(k,12)^2)/(vsp3(12)^2))-x3((11),66)*((p3(k,66)^2+q3(k,66)^2)/(vsp3(66)^2));
    
    
   j=12;
for ki=1:2
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end 
    
 p3(k,65)=pgp3(k,65)-pl3(k,65);
 q3(k,65)=qgp3(k,65)-ql3(k,65);

 
j=66;
for ki=1:12
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end   
    
    
    p3(k,9)=p3(k,9)-r3((9),53)*((p3(k,53)^2+q3(k,53)^2)/(vsp3(53)^2));
    q3(k,9)=q3(k,9)-x3((9),53)*((p3(k,53)^2+q3(k,53)^2)/(vsp3(53)^2));   



 j=10;
for ki=1:1
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end 

   p3(k,52)=pgp3(k,52)-pl3(k,52);
   q3(k,52)=qgp3(k,52)-ql3(k,52); 
    
    
   j=53;
for ki=1:1
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end 


    p3(k,8)=p3(k,8)-r3((8),51)*((p3(k,51)^2+q3(k,51)^2)/(vsp3(51)^2));
    q3(k,8)=q3(k,8)-x3((8),51)*((p3(k,51)^2+q3(k,51)^2)/(vsp3(51)^2));   


   j=9;
for ki=1:4
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end  



   p3(k,50)=pgp3(k,50)-pl3(k,50);
   q3(k,50)=qgp3(k,50)-ql3(k,50); 
    
    
   j=51;
for ki=1:3
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end 


    p3(k,4)=p3(k,4)-r3((4),47)*((p3(k,47)^2+q3(k,47)^2)/(vsp3(47)^2));
    q3(k,4)=q3(k,4)-x3((4),47)*((p3(k,47)^2+q3(k,47)^2)/(vsp3(47)^2));




   p3(k,46)=pgp3(k,46)-pl3(k,46)-tp32(k);
   q3(k,46)=qgp3(k,46)-ql3(k,46)-tq32(k); 
    
    
   j=47;
for ki=1:10
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end 


   p3(k,35)=pgp3(k,35)-pl3(k,35);
   q3(k,35)=qgp3(k,35)-ql3(k,35); 
    
    
   j=36;
for ki=1:7
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end 


 p3(k,3)=pgp3(k,3)-pl3(k,3)-r3((3),4)*((p3(k,4)^2+q3(k,4)^2)/(vsp3(4)^2))-r3((3),28)*((p3(k,28)^2+q3(k,28)^2)/(vsp3(28)^2))-r3((3),36)*((p3(k,36)^2+q3(k,36)^2)/(vsp3(36)^2));
 q3(k,3)=qgp3(k,3)-ql3(k,3)-x3((3),4)*((p3(k,4)^2+q3(k,4)^2)/(vsp3(4)^2))-x3((3),28)*((p3(k,28)^2+q3(k,28)^2)/(vsp3(28)^2))-x3((3),36)*((p3(k,36)^2+q3(k,36)^2)/(vsp3(36)^2));
    

 j=4;
for ki=1:2
    
    n=j-ki;    
    m=n-1;    

    p3(k,m)=pgp3(k,m)-pl3(k,m)-r3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    q3(k,m)=qgp3(k,m)-ql3(k,m)-x3((m),n)*((p3(k,n)^2+q3(k,n)^2)/(vsp3(n)^2));
    
end 



% 
% % Forward Sweep

vc3(k,1)=vsp3(1);
delc3(k,1)=delsp3(1);
  vcalp3(k,1)=vc3(k,1);
for ki=1:68
    j=ki+1;
    vc3(k,j)=sqrt(vc3(k,ki)*vc3(k,ki)-2*(p3(k,ki)*r3(ki,j)+q3(k,ki)*x3(ki,j))+(r3(ki,j)*r3(ki,j)+x3(ki,j)*x3(ki,j))*((p3(k,ki)*p3(k,ki)+q3(k,ki)*q3(k,ki))/vc3(k,ki)*vc3(k,ki)));

    delc3(k,j)=delc3(k,ki)+atan((q3(k,ki)*r3(ki,j)-p3(k,ki)*x3(ki,j))/(vc3(k,ki)*vc3(k,ki)-(p3(k,ki)*r3(ki,j)+q3(k,ki)*x3(ki,j))));
    
    delcd3(k,j)=delc3(k,j)*180/3.1429;
    vcalp3(k,j)=vc3(k,j);
    
end

% vc
% delc
% delcd



tplossp3(k)=0;
tqlossp3(k)=0;

for n=1:nbranch3
   
   cc(k,n)=(complex(vc3(k,fb3(n))*cos(delc3(k,fb3(n))),(vc3(k,fb3(n))*sin(delc3(k,fb3(n))))));
   dd(k,n)=(complex(vc3(k,eb3(n))*cos(delc3(k,eb3(n))),(vc3(k,eb3(n))*sin(delc3(k,eb3(n))))));
   
   cd(k,n)=cc(k,n)-dd(k,n);
   zz(k,n)=(complex((r3(fb3(n),eb3(n))),(x3(fb3(n),eb3(n)))));
   cr3(k,n)=((cc(k,n)-dd(k,n))/zz(k,n));
   plossp3(k,n)=(r3(fb3(n),eb3(n)))*(abs(cr3(k,n)))^2;
   qlossp3(k,n)=(x3(fb3(n),eb3(n)))*(abs(cr3(k,n)))^2;
    tplossp3(k)=tplossp3(k)+plossp3(k,n);
    tqlossp3(k)=tqlossp3(k)+qlossp3(k,n);
end

vprofileph3(k)=0;

for n=1:nbus3
    vprop3(k,n)=abs(1-vc3(k,n)); 
    vprofileph3(k)=vprofileph3(k)+abs(1-vc3(k,n));
end



stabilityp3(k,1)=0;
vsiph3(k)=0;
for n=1:68
    j=n+1;
    stabilityp3(k,j)=1/((vc3(k,n))^4-4*(p3(k,j)*x3(n,j)-q3(k,j)*r3(n,j))^2-4*(p3(k,j)*r3(n,j)+q3(k,j)*x3(n,j))*(vc3(k,n))^2);
 
    if (stabilityp3(k,j)>vsiph3(k))
        vsiph3(k)=stabilityp3(k,j);
    end
end

 

pgt3(k)=0;
qgt3(k)=0;
for n=1:nbus3
    pgt3(k)=pgt3(k)+pgp3(k,n);
    qgt3(k)=qgt3(k)+qgp3(k,n);
end

pdpl3(k)=ploadn3(k)+tplossp3(k);
qdql3(k)=qloadn3(k)+tqlossp3(k);

difp3=pgt3(k)-pdpl3(k);
difq3=qgt3(k)-qdql3(k);
if ((abs(difp3)<=0.25)&&(abs(difq3)<=0.25))
    dif3=0;
else
    dif3=1;    
end
end

k
end




tfcpt3=0;
for k=1:mt
tfcp3(k)=62.5*(pgp3(k,1)+pgp3(k,25))+6*(pgp3(k,9)+pgp3(k,21)+pgp3(k,22));
tfcpt3=tfcpt3+tfcp3(k);
end

vprofilep3=0;
vsip3=0;
reallossp3=0;
reactivelossp3=0;
for k=1:mt
    vprofilep3=vprofilep3+vprofileph3(k);
    vsip3=vsip3+ vsiph3(k);
    reallossp3=reallossp3+tplossp3(k);
    reactivelossp3=reactivelossp3+tqlossp3(k);
    
end


tfcpt3 

% vprofilep3


 for k=1:mt
        pg39(k)=pgp3(k,9);
        pg321(k)=pgp3(k,21);
        pg322(k)=pgp3(k,22);
        pg329(k)=pgp3(k,29);
       
        pg31(k)=pgp3(k,1);
        pg36(k)=pgp3(k,6);
        pg35(k)=pgp3(k,5);
        pg318(k)=pgp3(k,18);
        
        pg325(k)=pgp3(k,25);
        pg345(k)=pgp3(k,45);
        pg361(k)=pgp3(k,61);
        
        qg31(k)=qgp3(k,1);        
        qg36(k)=qgp3(k,6);
        qg325(k)=qgp3(k,25);
          qg329(k)=qgp3(k,29); 
        qg345(k)=qgp3(k,45);
        qg361(k)=qgp3(k,61);
    end

 
    

 pg39
       
        pg321
        pg322
        
       
        pg31
        pg36
        pg325
        pg329
        pg35
        pg318
        pg345
        pg361
        
     
    
    
     
        
        qg31
        qg36
        qg325
        qg329
        qg345
        qg361 
     
     
%        vprofilep3
%      vsip3
%      reallossp3
%      reactivelossp3
     
     
     
     pevp11
     pevp12
     pevp21
     pevp22    
     pevp31
     pevp32
     
     
     qp11
     qp12
     qp21
     qp22
     qp31
     qp32
     
     phgp11
     phgp12
     phgp21
     phgp31
     phgp32
     
     qhgp11
     qhgp12
     qhgp21     
     qhgp31
     qhgp32
      
    tp21
    tp31
    tp32
 
 
   tq21
    tq31
    tq32  
    
    
  tfcpt3
 
vprofilep3

vsip3
reallossp3

tfcpt=tfcpt1+tfcpt2+tfcpt3;

vsip=vsip1+vsip2+vsip3;

 vprofilep= vprofilep1+ vprofilep2+ vprofilep3;
 
reallossp=reallossp1+reallossp2+reallossp3;

tfcpt
vsip
vprofilep 
reallossp


 

   
  vcalp1
  
    
    delp1
   
    
  
    pg111
    pg123
      
    pg11
    pg16
    pg113
    pg127
    
    pevp11
    pevp12
    phgp11
    phgp12
    
    qg11
    qg16   
    qg127
   
    qhgp11
    qhgp12
    
%      vprofilep1
%      vsip1
%      reallossp1
%      reactivelossp1
     
    
    
    

  
     qp11
    qp12
    
     qhgp11
     qhgp12
     
     tfcpt1
     
     
  pg29
     pg214
     pg21
     pg23
     pg24
     
      pevp21
     pevp22
     
     phgp21
     
     qg21
     qg23
     qg24
    
     
     
     qp21
     qp22
     qhgp21
    
%       vprofilep2
%      vsip2
%      reallossp2
%      reactivelossp2
     
          
    
     tfcpt2 
    
     
      pg39
       
        pg321
        pg322
       
       
        pg31
        pg36
        pg325
        pg329
        pg345
        pg361
        
     pevp31
     pevp32
    
     phgp31
     phgp32
    
     
        
        qg31
        qg36
        qg325
        qg329
        qg345
        qg361 
     
     qp31
     qp32
     qhgp31
     qhgp32
          
%        vprofilep3
%      vsip3
%      reallossp3
%      reactivelossp3 
     
     tfcpt3
     
     
     tp21
     tp31
     tp32
     
     tq21
     tq31
     tq32
     
     
     
    tfcpt
vsip
vprofilep 
reallossp

     



















