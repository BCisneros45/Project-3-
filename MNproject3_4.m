% Baseball Statistics

numPlayers= input('How many players do you want to enter: ');
players(numPlayers)  = player;

%input
for k = 1:numPlayers
    fprintf('\nEnter the name of the baseball player: ');
  name = input('', 's');

    fprintf('Enter the name of the team they play on: ');
  team = input('', 's');

    hits = input('Enter their number of hits: ');    atBats = input('Enter their number of at-bats: ');
    walks = input('Enter their number of walks: ');

    % Create player object
    players(k) = player(name, team, hits, walks, atBats);
end

% ----- Find players with batting average > 0.300 -----
fprintf('\nThe players with a batting average higher than 0.300 are:\n\n');

foundBA = false;

for k = 1:numPlayers
    if players(k).battingAverage > 0.300
        players(k).displayStats();
        foundBA = true;
    end
end

if ~foundBA
    fprintf('None\n\n');

end

% perecnet withat base percentaghe

fprintf('The players with an on-base percentage higher than 0.350 are:\n\n');

foundOBP  = false;

for k= 1:numPlayers
  if players(k).onBasePct > 0.350
        players(k).displayStats();
    foundOBP = true;
    end
end

if ~foundOBP
    fprintf('None\n');
end

