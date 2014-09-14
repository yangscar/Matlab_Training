function currentFix=getCurrentFix(el)
% return eye location [x y] where [0 0] for center
global EXP
EXP.screen_center_p = [400,300];
currentFix = [400, 300];% fix @ corner as default
if Eyelink( 'NewFloatSampleAvailable') > 0
    % get the sample in the form of an event structure
    evt = Eyelink( 'NewestFloatSample');
    % if we do, get current gaze position from sample
    x = evt.gx(el.LEFT_EYE+1); % +1 since MATLAB array
    y = evt.gy(el.LEFT_EYE+1);
    if x~=el.MISSING_DATA && y~=el.MISSING_DATA && evt.pa(1)>0
        currentFix = [x,y]-EXP.screen_center_p;
    end
end % if sample available
end