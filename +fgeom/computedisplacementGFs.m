function Gd = computedisplacementGFs(rcv,ox)

xobs = ox(:,1);
zobs = ox(:,2);

Gd = zeros(length(xobs)*2,rcv.N);

for k = 1:rcv.N
    
    [Disp] = LDdispHS(xobs,zobs,rcv.xc(k,1),rcv.xc(k,2),rcv.W(k)/2,...
        -deg2rad(rcv.dip(k)),1,0,rcv.earthModel.nu);
    
    Gd(1:2:end,k) = Disp(:,1);
    Gd(2:2:end,k) = Disp(:,2);
end


end