%  Copyright (c) 2012 Howard Hughes Medical Institute.
%  All rights reserved.
%  Use is subject to Janelia Farm Research Campus Software Copyright 1.1 license terms.
%  http://license.janelia.org/license/jfrc_copyright_1_1.html

classdef IOData < Symphony.Core.IIOData
   
    properties
        Time
    end
    
    methods
        function obj = IOData(data, sampleRate, deviceConfig, streamConfig)
            obj = obj@Symphony.Core.IIOData(data, sampleRate);
            
            obj.Time = [];
            
            if nargin > 3
                obj.ExternalDeviceConfiguration = deviceConfig;
            end
            if nargin > 4
                obj.StreamConfiguration = streamConfig;
            end
        end
    end
    
end