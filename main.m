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
client = websocket(HOST);

% Authorize 
if client.status
    client.send(AUTH_TYPE);
    client.send(AUTH_ID);
end

% Closing connection 
client.close();
