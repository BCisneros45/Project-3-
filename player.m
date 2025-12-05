
classdef player
   properties
        name 
        team 
        numHits 
        numWalks
        numAtBats 
    end

    properties (Dependent)
        battingAverage  
        onBasePct      
    end

    methods

        function obj = player(name, team, hits, walks, atBats)
            %  empty constructor
            if nargin > 0
                obj.name = name;
                obj.team  = team;
                obj.numHits = hits;
                obj.numWalks= walks;
                obj.numAtBats = atBats;
            end
        end

        % method for dpeendped
        function value = get.battingAverage(obj)
            value = obj.numHits / obj.numAtBats;
        end
    function value =get.onBasePct(obj)
    value = (obj.numHits + obj.numWalks) / ...
                    (obj.numAtBats + obj.numWalks);
        end

        % display
        function displayStats(obj)
            avg = round(obj.battingAverage, 3);
            obp = round(obj.onBasePct, 3);

            fprintf('%s:\n', obj.name);
            fprintf('Team: %s\n', obj.team);
            fprintf('Average: %.3f\n', avg);
            fprintf('On Base Percentage: %.3f\n\n', obp);
        end
    end
end
