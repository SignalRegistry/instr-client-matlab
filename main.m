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
user.auth = AUTH_TYPE;
user.id = AUTH_ID;
if client.Status
    client.send(jsonencode(user));
end

% Closing connection 
client.close();
