%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                         SIGNAL REGISTRY
%                 https://instr.signalregistry.net                        
%
%              Instrument Client for Signal Registry
%                     
%                         Hüseyin YİĞİT
%                   contact@huseyinyigit.com.tr
%             https://www.linkedin.com/in/huseyin-yigit
%                   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

HOST = 'wss://socket.instr.signalregistry.net';

AUTH_TYPE = 'LinkedIN';
AUTH_ID   = 'huseyin-yigit';

% Initializing connection
clear client;
client = websocket(HOST);

% Authorize 
if client.Status
    client.send(AUTH_TYPE);
    client.send(AUTH_ID);
end

% Closing connection 
client.close();
