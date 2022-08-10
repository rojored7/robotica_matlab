t1=0;
d2=0;
d3=0;

close all;

for d2=0:0.5:15
    clf
    [T03]=RPP(t1,d2,d3);
    drawnow
end
for d3=0:0.5:7
    clf
    [T03]=RPP(t1,d2,d3);
    drawnow
end
for t1=0:0.5:50
    clf
    [T03]=RPP(t1,d2,d3);
    drawnow
end