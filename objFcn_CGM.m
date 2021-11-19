function e = objFcn_PD(x0, tspan, plt)
    Sg = x0(1);
    TD = x0(2);
    %D0 = x0(3);
    %Ra0 = x0(4);
   
    set_param('full_sim/BMM/Gain_Sg', 'Gain', num2str(Sg));
    set_param('full_sim/GAM/T_D', 'Value', num2str(TD));
    %set_param('full_sim/GAM/Integrator_D', 'Gain', num2str(D0));
    %set_param('full_sim/GAM/Integrator_Ra', 'Gain', num2str(Ra0));

    out = sim('full_sim.slx');

    g = interp1(out.G_est(:,1), out.G_est(:,2), tspan);
    g_est = interp1(out.G_est(:,1), out.G_est(:,3), tspan);

    e = sum((g - g_est).^2); 
    
    if plt==1    
        figure(10)
        plot(tspan, g, '.', 'LineWidth', 2); hold on
        plot(out.G_est(:,1), out.G_est(:,3), 'LineWidth', 2); hold off 
        legend('Raw Data', 'Model');
        xlabel('time [min]'); ylabel('glycemia [mmol/L]');drawnow 
    end
