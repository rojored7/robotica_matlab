d1=0;
d2=0;
d3=0;

close all;
for d1=0:1:10
    clf
    [T03]=PPP(d1,d2,d3);
    drawnow
end
for d2=0:1:15
    clf
    [T03]=PPP(d1,d2,d3);
    drawnow
end
for d3=0:1:7
    clf
    [T03]=PPP(d1,d2,d3);
    drawnow
end