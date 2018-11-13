%PSEUDOCODE FOR GAME
%1. make a grid
%2. Initialize everything (x max, x y, plot morty and villains)
%3. make movement of characters possible (up and down only)
%4. make villain's column of movement shift to the left one every s
%5. if morty's coordinates = villain's coordinates
%   game over
% maybe do a while loop? while morty's coordinates ~= villain's coordinates
% and then do the main game loop?
% at x max you win? or a certain column
% add sound and images
% joystick and buttons


% create world
close all
fig = figure(1);
ax = axes(fig)
ax.XLim = [0 40];
ax.YLim = [-10 10];
ax.DataAspectRatio = [1 1 1];

% connect game pad to world
gamepad = KeyboardEmulator(fig);

% create blue square and move it to ax
f2 = figure(2);
hblue = fill([0 1 1 0 0],[0 0 1 1 0],'b');
hblue.Parent = ax;
close(f2);

%create villain
f3 = figure(3);
villain = fill([0 1 1 0 0],[0 0 1 1 0],'g');
villain.Parent = ax;
villain.XData = villain.XData + 20; 
villain.YData = villain.YData - 10;
close(f3);

%move villain

% main game loop
while(1)
    gamepad.update()
    
    hblue.XData = hblue.XData + gamepad.jlx;
    hblue.YData = hblue.YData + gamepad.jly;
    
    pause(0.1);
end
