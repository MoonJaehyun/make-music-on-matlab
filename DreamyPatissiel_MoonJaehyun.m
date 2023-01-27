%% DreamyPatissiel
%% Playing the cello with piano sheet music
%Jaehyun_Moon
%want to describe cello.
clear;

A=16.9;     % amplitude
N=1.5;       % time scaling
fs = 44100; % sampling frequency
phi = .0;  % phase shifting

%% pitch in Hz
a0=0.0; %쉼표
%1옥타브
c1= 32.7; %도
d1= 36.7; %레
e1= 41.2; %미
f1= 43.7; %파
g1= 49.0; %솔
a1= 55.0; %라
b1= 61.7; %시
%2옥타브
c2= 65.4; %도
c2s= 69.3; %도샵
d2= 73.4; %레
d2s= 77.9; %레샵
e2= 82.4; %미
f2= 87.3; %파
f2s= 92.5; %파샵
g2= 98.0; %솔
g2s= 103.83; %솔샵
a2= 110.0; %라
a2s= 116.25; %라샵
b2= 122.5; %시
%3옥타브
c3= 130.8; %도
c3s = 138.85; %도샵
d3= 146.9; %레
d3s= 155.85; %레샵
e3= 164.8; %미
f3= 174.6; %파
f3s= 185.3; %파샵, 솔플렛
g3= 196.0; %솔
g3s= 208; %솔샵
a3= 220.0; %라
a3s= 233.08; %라샵, 시플렛
b3= 246.9; %시
%4옥타브
c4= 261.6; %도
c4s= 277.65; %도샵
d4= 293.7; %레
d4s= 311.7;%레샵
e4= 329.7; %미
f4= 349.2; %파
f4s= 370.6; %파샵
g4= 392.0; %솔
g4s= 416; % 솔샵
a4= 440.0; %라
a4s= 466.65; %라샵
b4= 493.9; %시
%5옥타브
c5= 523.25;
c5s= 554.37;
d5= 587.33;
d5s= 622.25;
e5= 659.26;
f5= 698.46;
f5s= 739.99;
g5= 783.99;
g5s= 830.61;
a5= 880.00;
a5s= 932.33;
b5= 987.77;



% dreamypatissel

music=[]; %new array to store samples in

for v=[1 2 3 4 5] %instruments
  
switch v
    case 1 %high 1
      pitch    = [c4 d4 e4 a4        g4 f4 e4 a0       f4 g4s a4 c5      b4 a4 b4 d5 a4        a0 a4 a4 g4 f4 e4          b4 a4 a0 c4 d4        a0 d4 d4 e4 f4 a4         f4 f4 c5 c5 b4 a4          a4 c4 e4 a4 e4         g4 a4 e4 a0        a4 e4 a4 e4 a4 e4 a4           a0 a4 a4 a4 b4         f3 e3 a0      d2 e3 a0       a0 c4 g4 c4       g4 f4 f4 a0         e4 f4 e4 f4 g4         e4 d4 c4 a0        a0 c4 g4 c4        g4 f4 f4 b4  g4        g3 g4 g3 c4 g3 g4 g3            c4 g3 f4 g3 g3 c4 d4 f4 g4 c5 d5                    g4 c5 g4 c5 c5           d4 c5 c5 c5        c4 d4 e4 a4        g4 f4 f4 a0 a0         f4 g4 a4 c5         b4 a4 b4 c5 a4         a0 a4 a4 g4 a4 a4          a0 a4 a4 g4 a4 a4          a0 a4 a4 g4 a4 a4          c5 b4 a4 c5 b4            c4 d4 e4 a4        g4 f4 f4 a0 a0          f4 g4 a4 c5          b4 a4 b4 c5 a4        a0 a4 a4 g4 f4 e4          b4 a4 c4 d4        a0 d4 e4 f4 a4                 f4 f4 c5 c5 b4 b4 b2 c3 d3                e5 a4 c5 e5 g5 a5 g5 e5 c5 a4 e4 c4 a3                                    c4 d4 e4 a4            g4 f4 f4 a0        f4 g4 a4 c5        b4 a4 b4 c5 a4              d4 d4 e4 f4 a4           c5 c5 b4 a4];
      duration = [1/4 1/4 1/4 1/4    1/4 1/8 3/8 1/4   1/4 1/4 1/4 1/4   3/8 1/8 1/4 1/8 1/4   1/4 1/8 1/8 1/8 1/8 1/4    1/4 1/4 1/8 1/8 1/4   1/4 1/8 1/8 1/8 1/8 1/4   1/8 1/8 1/8 1/8 1/8 1/2    1/8 1/8 1/8 1/4 1/4    3/8 1/8 1/4 1/4    1/8 1/8 1/8 1/8 1/8 1/8 1/4    1/8 1/8 1/4 1/4 1/4    3/8 1/2 1/8   3/8 1/2 1/8    1/4 1/4 5/8 1/8   1/4 1/8 1/2 1/8     1/4 1/8 1/4 1/4 1/4    1/8 1/8 1/2 1/8    1/4 1/4 3/8 1/8    1/4 1/8 1/4 1/4 1/4    1/8 1/8 1/8 1/8 1/8 1/8 1/8     1/8 1/8 1/8 1/8 1/16 1/16 1/16 1/16 1/16 1/16 1/4      1/8 1/8 1/8 3/8 1/4   1/8 1/4 1/4 1/4    1/4 1/4 1/4 1/4    1/4 1/8 1/4 1/4 1/8    1/4 1/4 1/4 1/4     1/4 1/8 1/4 1/8 1/4    1/4 1/8 1/8 1/8 1/8 1/4    1/4 1/8 1/8 1/8 1/8 1/4    1/4 1/8 1/8 1/8 1/8 1/4    1/8 1/8 1/8 1/4 1/4       1/4 1/4 1/4 1/4    1/4 1/8 1/4 1/4 1/8     1/4 1/4 1/4 1/4      3/8 1/8 1/4 1/8 1/4   1/4 1/8 1/8 1/8 1/8 1/4    1/4 3/8 1/8 1/4    1/4 1/8 1/8 1/8 1/4            1/8 1/8 1/8 1/8 1/8 1/4 1/8 1/8 1/8       1/4 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16           1/4 1/4 1/4 1/4        1/4 1/8 1/8 3/8    1/4 1/4 1/4 1/4    3/8 1/8 1/4 1/8 1/4         1/8 1/8 1/8 1/8 1/2      1/8 1/8 1/8 1/4];
      harmonics= [2 .5 .7 .1 .2 .1 .15  ];
      harmonics=harmonics/4;
      tA=0.12; tD=0.5; tS=0.9; ED=1; ES=1;
      loop = 1;
    case 2 %high 2
      pitch    = [a3 b3 c4 e4        e4 d4 c4 a0       d4 e4 f4 a4       g4 f4 g4 b4 f4        a0 f4 f4 e4 d4 c4          g4 f4 a0 a3 b3         a0 b3 b3 c4 d4 f4         d4 d4 a4 a4 g4 f4          f4 a3 c4 f4 c4        d1 d2 a2 d2 f2 c2 d2 e2             c3 g3 c3 g3 c3 a3 c3           a0 a3 a3 a3 b3         d3 b2 a0       b2 c3 a0       a0 e3 b3 c1       g3 f3 f3 a0         e3 f3 e3 f3 g3         g3 f3 e3 a0        a0 c3 g3 c3        g3 f3 f3 b3 g3          a0 c4 a0 a0 a0 c4              a0 a0 c4 a0 a0 a0 a0 a0 a0 a0 b3                         b3 g3 b3 g3 g3         a0 d4 d4 d4          c3 d3 e3 a3         g3 f3 f3 a0 a0        f3 g3 a3 b3        b3 a3 b3 c4 a3         a0 a3 a3 g3 a3 a3            a0 a3 a3 g3 a3 a3            a0 a3 a3 g3 a3 a3          b4 b3 a3 c4  b3          a3 b3 c4 f4         e4 d4 c4 a0 a0         c4 d4 e4 a4        g4 f4 g4 a4 f4          a0 a3 a3 g3 f3 e3          b3 a3 c3 d3        a0 d3 e3 f3 a3            c4 c4 c4 c4 b3 a3 a0 a0 a0                   c4 a0 a0 a0 a0 a0 a0 a0 a0 a0 a0 a0 a0                                   a3 b3 c4 f4             e4 d4 c4 a0       c4 d4 e4 a4        g4 f4 g4 a4 f4              d3 d3 e3 f3 c4           c4 c4 b4 a4];
      duration = [1/4 1/4 1/4 1/4    1/4 1/8 3/8 1/4   1/4 1/4 1/4 1/4   3/8 1/8 1/4 1/8 1/4   1/4 1/8 1/8 1/8 1/8 1/4    1/4 1/4 1/8 1/8 1/4   1/4 1/8 1/8 1/8 1/8 1/4   1/8 1/8 1/8 1/8 1/8 1/2    1/8 1/8 1/8 1/4 1/4    1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8     1/8 1/8 1/8 1/8 1/8 1/8 1/4    1/8 1/8 1/4 1/4 1/4    3/8 1/2 1/8    3/8 1/2 1/8    1/4 1/4 5/8 1/8   1/4 1/8 1/2 1/8     1/4 1/8 1/4 1/4 1/4    1/8 1/8 1/2 1/8    1/4 1/4 3/8 1/8    1/4 1/8 1/4 1/4 1/4     1/8 1/8 1/8 1/8 1/8 1/8 1/8    1/8 1/8 1/8 1/8 1/16 1/16 1/16 1/16 1/16 1/16 1/4       1/8 1/8 1/8 3/8 1/4     1/8 1/4 1/4 1/4      1/4 1/4 1/4 1/4    1/4 1/8 1/4 1/4 1/8    1/4 1/4 1/4 1/4    1/4 1/8 1/4 1/8 1/4    1/4 1/8 1/8 1/8 1/8 1/4      1/4 1/8 1/8 1/8 1/8 1/4      1/4 1/8 1/8 1/8 1/8 1/4    1/8 1/8 1/8 1/4 1/4      1/4 1/4 1/4 1/4     1/4 1/8 1/4 1/4 1/8    1/4 1/4 1/4 1/4    3/8 1/8 1/4 1/8 1/4     1/4 1/8 1/8 1/8 1/8 1/4    1/4 3/8 1/8 1/4    1/4 1/8 1/8 1/8 1/4       1/8 1/8 1/8 1/8 1/8 1/4 1/8 1/8 1/8          1/4 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16          1/4 1/4 1/4 1/4        1/4 1/8 1/8 3/8    1/4 1/4 1/4 1/4    3/8 1/8 1/4 1/8 1/4         1/8 1/8 1/8 1/8 1/2      1/8 1/8 1/8 1/4];
      harmonics= [2 .5 .7 .1 .2 .1 .15  ];
      harmonics=harmonics/4;
      tA=0.1; tD=0.5; tS=0.9; ED=1; ES=1;
      loop = 1;
    case 3 %low 1
      pitch    = [a1 e2 b2         g1 g2 c1 c2 g2         f1 f2 e1       c1 e2 b2 e2 e1 b2 d2            d2 c3 d1 d2 d2 c3            c1 c2 b2 c1 c2 a2              c1 b1 a2  b1 d2  f2 a2                a2 a2 a0 a1 b1 c1 e2 f2 g2 a2                                 c1 a1 f2 a1 f2 a1 f2 a1            d1 d2 a1 d2 f2 c2 d2 e2              c1 a1 f2 a1 e2 a1 f2           f1 b2 b2 c2 b2 g2          c2 g1 c3 c3 g1 c3          b1 g1 b1 c2 g1 c2          a1 c2  e2 c3 a2 c3 c2              e2 d3 c3       c2 e2 g2 e3 b2 e3 b2          g3 e3 c3        a1 c2 e2 c3 a2 c3 a2          b3 f3 d3          g1 d2 b2 d2 g2 d2 b2 d2              g2 d2 c3 d2 g2 d2 g1 g1                   g2 d3 g2 g3 g2 d3 g2           c3 g2 c3 g2 a1 b1 c2 d2 e2 f2 g2 a2                          a1 e2 a1 a2 a1 e2 a1             g2 e2 g1 c2 c2 e2 f2           f2 c3 f2 g3 f2 c3 f2           g2 c2 d2 c2 e2 e2 d2               d2 d3 d1 d2 d2 d3 d2              d2 b2 c1 c2 c2 d3 d2           d2 a2 c1 c2 c2 a2 b1           b1 a2 b1 f1 g1 a1 b1 e2 g2 b2 e3                             a1 e2 a1 a2 a1 e2 a1           g2 e2 g1 c2 c2 e2 f2            f2 c1 f2 f3 f2 c1 f2             g2 c2 d2 c2 e2 c1 e2 d2             d2 d3 d1 d2 d2 d3 c2           d2 b2 c2 c2 a2 b1         d2 a2 d2 b2 c3 d3 e3                d3 d3 a0 a1 b1 c2 d2 e2 f2 g2 a2                   a1 a1 a2 a1 e3 a2 a2 a1                  a1 a2 a1 g2 a1 c3 a1            e3 e1 e2 e1 c1 e2 c1 e2             f1 f1 f2 f1 a2 f1 a2 f1               g3 f1 g2 f1 g2 e1 g2 e1                  b1 a2 b1 b1 c2 d2 e2            a0 a0];
      duration = [3/8 3/8 1/4      1/4 1/8 1/4 1/8 1/4    3/8 3/8 1/4    1/4 1/8 1/8 1/8 1/8 1/8 1/4     1/8 1/8 1/8 1/8 1/8 1/4      1/8 1/8 1/8 1/4 1/8 1/4        1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/4       1/8 1/8 1/8 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16           1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8    1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8      1/8 1/8 1/8 1/8 1/8 1/8 1/4    1/8 1/8 1/8 1/8 1/4 1/4    1/8 1/8 1/8 1/4 1/8 1/4    1/8 1/8 1/8 1/4 1/8 1/4    1/8 1/8 1/8 1/4 1/8 1/8 1/8        3/8 3/8 1/4    1/8 1/8 1/8 1/4 1/8 1/8 1/8   3/8 3/8 1/4     1/8 1/8 1/8 1/4 1/8 1/8 1/8   3/8 3/8 1/4       1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8      1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/4           1/8 1/8 1/8 1/8 1/8 1/8 1/8    1/8 1/8 1/8 1/8 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16      1/4 1/8 1/8 1/8 1/8 1/8 1/8      1/8 1/8 1/8 1/4 1/8 1/8 1/8    1/4 1/8 1/8 1/8 1/8 1/8 1/8    1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/4    1/8 1/8 1/8 1/8 1/8 1/8 1/4       1/8 1/8 1/8 1/8 1/8 1/8 1/4    1/8 1/8 1/8 1/8 1/8 1/8 1/4    1/8 1/8 1/8 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16          1/4 1/8 1/8 1/8 1/8 1/8 1/8    1/8 1/8 1/8 1/4 1/8 1/8 1/8     1/4 1/8 1/8 1/8 1/8 1/8 1/8      1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/4     1/8 1/8 1/8 1/8 1/8 1/8 1/4    1/8 1/8 1/4 1/8 1/8 1/4   1/8 1/8 1/8 1/8 1/8 1/8 1/4         1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8        1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/4          1/4 1/8 1/8 1/8 1/8 1/8 1/8     1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8     1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8       1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/4          1/8 1/8 1/8 1/8 1/8 1/8 1/4     1/4 3/8];
      harmonics= [2 .5 .7 .1 .2 .1 .15  ];
      harmonics=harmonics/4;
      tA=0.12; tD=0.5; tS=0.9; ED=1; ES=1;
      loop = 1;
    case 4 %low 2
      pitch    = [a0 c2 a2         a0 e2      a0 c2 a0       b2 a0 g2 b1 a0 b1            a0 g2 a0 g2        a0 e2 a0 e2        a0 d2 a0 b1 d2 f2 e2               e2 e2 a0       a0 c2 a0 c2 a0 c2 a0             a0 f2 a0 f1 a0 d1 a0           a0 c2 a0 c2 a0 c2           a0 f2 f2 a0 f2 g1             d1 a0 a0 d1 a0 a0        c1 a0 a0 c1 a0 a0          a0      c3 b2 f2       c1 a0 a0 b2 a0 c3 a0           d3 b2 g2         c1 a0 a0 a2 a0 b2 a0            c3 b2 f2         a0 a0 g2 a0 a0 a0 g2 a0                  a0 a0 g2 a0 g1 a0 a0 c1                 a0 b2 a0 b2 a0 b2 a0              b2 a0 b2 a0 a0 a0 a0 a0 a0 a0 a0 a0                         c1 c2 a0 c2 a0 c2 a0              g1 a0 g1 c1 c1 e1 f1            f1 a2 a0 a2 a0 a2 a0           g1 a0 a0 a0 b1 a0 b1 d1             a0 a0 d1 a0 a0 f2 c1                 a0 a0 d1 a0 a0 f2 c1              a0 a0 d1 a0 a0 f2 c1           a0 f2 a0 a0 a0 a0 a0 a0 a0 a0 a0                              c1 c2 a0 c2 a0 c2 a0          g1 a0 g1 c1 c1 e1 f1             f1 a2 a0 a2 a0 a2 a0                 g1 a0 a0 a0 b1 a0 b1 d1             a0 f2 a0 a0 a0 f2 c1           a0 e2 c1 a0 d2 c1         a0 f2 a0 b1 c2 d2 e2                 g2 g2 a0 a0 a0 a0 a0 a0 a0 a0 a0                        c1 a0 e2 a0 c3 a0 e2 a0                   c1 a0 a0 a2 a0 a2 a0            b2 a0 a0 a0 a0 c2 a0 c2             c1 a0 a0 a0 f2 a0 f2 a0               d3 a0 a0 a0 e2 a0 e2 a1              a0 a0 a0 c1 c1 d1 e1            a0 a0];
      duration = [3/8 3/8 1/4      3/4 1/4    3/8 3/8 1/4    1/4 1/8 1/8 1/8 1/8 1/4      1/8 1/8 3/8 1/4    1/4 1/8 3/8 1/4    1/4 1/8 1/8 1/8 1/8 1/8 1/4        1/8 1/8 5/8    1/4 1/8 1/8 1/8 1/8 1/8 1/8      1/4 1/8 1/8 1/8 1/8 1/8 1/8    1/4 1/8 1/8 1/8 1/8 1/8     1/8 1/8 1/8 1/8 1/8 1/8       1/8 1/8 1/8 1/4 1/8 1/4  1/8 1/8 1/8 1/4 1/8 1/4    1       3/8 3/8 1/4    1/8 1/8 1/8 1/4 1/8 1/8 1/8    3/8 3/8 1/4      1/8 1/8 1/8 1/4 1/8 1/8 1/8     3/8 3/8 1/4      1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8          1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/4         1/8 1/8 1/8 1/8 1/8 1/8 1/8       1/8 1/8 1/8 1/8 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16     1/4 1/8 1/8 1/8 1/8 1/8 1/8       1/8 1/8 1/8 1/4 1/8 1/8 1/8     1/4 1/8 1/8 1/8 1/8 1/8 1/8    1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/4     1/8 1/8 1/8 1/8 1/8 1/8 1/4          1/8 1/8 1/8 1/8 1/8 1/8 1/4       1/8 1/8 1/8 1/8 1/8 1/8 1/4    1/8 1/8 1/8 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16           1/4 1/8 1/8 1/8 1/8 1/8 1/8   1/8 1/8 1/8 1/4 1/8 1/8 1/8      1/4 1/8 1/8 1/8 1/8 1/8 1/8          1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/4     1/8 1/8 1/8 1/8 1/8 1/8 1/4    1/8 1/8 1/4 1/8 1/8 1/4   1/8 1/8 1/8 1/8 1/8 1/8 1/4          1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8             1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/4           1/4 1/8 1/8 1/8 1/8 1/8 1/8     1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8     1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/8       1/8 1/8 1/8 1/8 1/8 1/8 1/8 1/4      1/8 1/8 1/8 1/8 1/8 1/8 1/4     1/4 3/8];
      harmonics= [2 .5 .7 .1 .2 .1 .15  ];
      harmonics=harmonics/4;
      tA=0.12; tD=0.5; tS=0.9; ED=1; ES=1;
      loop = 1;
    case 5 %high 3
      pitch    = [a0 a0 a0 a0        a0 a0 a0 a0       a0 a0 a0 a0      a0 a0 a0 a0 a0        a0 a0 a0 a0 a0 a0          a0 a0 a0 a0 a0        a0 a0 a0 a0 a0 a0         a0 a0 a0 a0 a0 a0          a0 a0 a0 a0 a0         a0 a0 a0 a0        a0 a0 a0 a0 a0 a0 a0           a0 a0 a0 a0 a0         a0 a0 a0      a0 a0 a0       a0 a0 a0 a0       a0 a0 a0 a0         a0 a0 a0 a0 a0         a0 a0 a0 a0        a0 a0 a0 a0        a0 a0 a0 a0  a0        a0 a0 a0 a0 a0 a0 a0            a0 a0 a0 a0 a0 a0 a0 a0 a0 a0 a0                    a0 a0 a0 a0 a0           a0 a0 a0 a0        a0 a0 a0 a0        a0 a0 a0 a0 a0         a0 a0 a0 a0         a0 a0 a0 a0 a0         a0 a0 a0 a0 a0 a0          a0 a0 a0 a0 a0 a0          a0 a0 a0 a0 a0 a0             c4 b3 a3 c4 b3           c3 d3 e3 a3         g3 f3 f3 a0 a0         f3 g3 a3 c4               b3 a3 b3 c4 a3          a0  a0 a0 a0 a0 a0         a0 a0 a0 a0        a0 a0 a0 a0 a3               a3 a3 a3 a0 a0 a0 a0 a0 a0 a0                   e4 a0 a0 a0 a0 a0 a0 a0 a0 a0 a0 a0 a0                                      c3 d3 e3 a3            g3 f3 f3 a0        f3 g3 a3 c4        b3 a3 b3 c4 a3              a0 a0 a0 a0 a3           a0 a0 a0 a0];
      duration = [1/4 1/4 1/4 1/4    1/4 1/8 3/8 1/4   1/4 1/4 1/4 1/4   3/8 1/8 1/4 1/8 1/4   1/4 1/8 1/8 1/8 1/8 1/4    1/4 1/4 1/8 1/8 1/4   1/4 1/8 1/8 1/8 1/8 1/4   1/8 1/8 1/8 1/8 1/8 1/2    1/8 1/8 1/8 1/4 1/4    3/8 1/8 1/4 1/4    1/8 1/8 1/8 1/8 1/8 1/8 1/4    1/8 1/8 1/4 1/4 1/4    3/8 1/2 1/8   3/8 1/2 1/8    1/4 1/4 5/8 1/8   1/4 1/8 1/2 1/8     1/4 1/8 1/4 1/4 1/4    1/8 1/8 1/2 1/8    1/4 1/4 3/8 1/8    1/4 1/8 1/4 1/4 1/4    1/8 1/8 1/8 1/8 1/8 1/8 1/8     1/8 1/8 1/8 1/8 1/16 1/16 1/16 1/16 1/16 1/16 1/4      1/8 1/8 1/8 3/8 1/4   1/8 1/4 1/4 1/4    1/4 1/4 1/4 1/4    1/4 1/8 1/4 1/4 1/8    1/4 1/4 1/4 1/4     1/4 1/8 1/4 1/8 1/4    1/4 1/8 1/8 1/8 1/8 1/4    1/4 1/8 1/8 1/8 1/8 1/4    1/4 1/8 1/8 1/8 1/8 1/4      1/8 1/8 1/8 1/4 1/4      1/4 1/4 1/4 1/4     1/4 1/8 1/4 1/4 1/8    1/4 1/4 1/4 1/4           3/8 1/8 1/4 1/8 1/4     1/4 1/8 1/8 1/8 1/8 1/4    1/4 3/8 1/8 1/4    1/4 1/8 1/8 1/8 1/4          1/8 1/8 1/8 1/8 1/8 1/4 1/8 1/8 1/8 1/8         1/4 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16 1/16             1/4 1/4 1/4 1/4        1/4 1/8 1/8 3/8    1/4 1/4 1/4 1/4    3/8 1/8 1/4 1/8 1/4         1/8 1/8 1/8 1/8 1/2      1/8 1/8 1/8 1/4];
      harmonics= [2 .5 .7 .1 .2 .1 .15  ];
      harmonics=harmonics/4;
      tA=0.12; tD=0.5; tS=0.9; ED=1; ES=1;
      loop = 1;
   
      
  otherwise 
        
 end %switch


    
%% Tone generation
voice = [];  
for k=1:length(pitch)
  L = N*fs*duration(k);
  n = 0:L-1;          % normalized time
  w = (2*pi/fs)*pitch(k);                     % normalized radian frequency5
  s = 1.38*sin(w*n);                         % tone
  s = s + 107*sin(2*w*n);                  % 1.Oberton
  s = s + 60*sin(3*w*n);                   % 2.Oberton
  s = s + 16*sin(4*w*n);                   % 3.Oberton
  s = s + 14*sin(5*w*n);                   % 4.Oberton
  s = s + 33*sin(6*w*n);                   % 5.Oberton
  s = s + 11*sin(7*w*n);                   % 5.Oberton
  s = s + 2*sin(8*w*n);                    % 6.0berton 
  s = s + 2.6*sin(9*w*n);                  % 6.0berton 
for h=1:length(harmonics)
  w  = (2*pi/fs)*(pitch(k)); % normalized radian frequency
  s1 = (A*harmonics(h)) * sin(w*n + phi);   % tone
  s = s + s1;
  
end %h

% adsr 0.12 0.5 0.9 1 1 일 때 가장 유사하였다.
% 'cello1.wav' 파일을 읽고 했으며 유사하게 표현한 코드는 'excello1.m' 이다.
  sADSR = DSP_ADSR( tA, tD, tS, ED, ED, s); % tone shaping with ADSR
  voice = [voice sADSR];
%  voice = [voice s];
end %k


voice1= voice;
for i=2:loop
voice= [voice voice1]; 
end


%soundvectors must have same length
if (isempty(music))
music = voice; 
else
if (length(voice)>length(music))
  voice=voice(1:length(music));      % cut end if to long
end
if (length(voice)<length(music))
  voice=[voice zeros(1, length(music)-length(voice) )];  %fill with 0 if to short
end




music = music + voice; 

end

end %v

%music = [music music];


%% normalizing the amplitudes
 %fact = max(abs(music));
 %music = music/fact;
 %sound=(music,fs);

 %% graphics
t=0:length(music)-1; t=t/fs;                            % time scale
FIG1 = figure('Name','cello','NumberTitle','off');
plot(t,music)
grid, xlabel('Time (s)'), ylabel('X(t)')
%% spectrogram
specgram(music, fs);

% soundsc 를 쓰므로 굳이 amplituides nomarlizing 생략해도 된다.
soundsc(music,fs);
audiowrite('202021017_문재현_DreamyPatissiel.wav',music/max(abs(music)),fs)%오디오 파일 저장



