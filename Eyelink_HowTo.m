%% Eyelink Example

% using the PsychToolbox's Screen function.
screenNumber=max(Screen('Screens'));
window=Screen('OpenWindow', screenNumber); 

%% eye calibration
el=EyelinkInitDefaults(window);

EyelinkInit(dummymode, 1)

% ????????
Eyelink('Command', 'link_sample_data = LEFT,RIGHT,GAZE,PUPIL,AREA');
Eyelink('Command', 'link_event_data = ?
GAZE,GAZERES,HREF,AREA,VELOCITY?);
Eyelink('command', 'link_event_filter = ?LEFT,RIGHT,FIXATION,BLINK,SACCADE,BUTTON?);
% open file to record data to
Eyelink('Openfile', file_name);

% ????
EyelinkDoTrackerSetup(el);

Eyelink('StartRecording');

% ?????mark
Eyelink('Message', ?write_what_u_like?);

% ??????
Eyelink('CloseFile');

% ????Eyelink???????
try
    status=Eyelink(?ReceiveFile',file_name);
    if status > 0
        fprintf('ReceiveFile status %d\n', status);
    end
catch rdf
    fprintf('Problem receiving data file ''%s''\n', file_name );
end


Eyelink(?Shutdown');
% Restore keyboard output to Matlab:
ListenChar(0);
sca;