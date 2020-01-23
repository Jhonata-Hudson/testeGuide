require 'tiny_tds'
require 'pry'

class Data_Base

    def select_from(query)
        
        server = 'testeserverguide.database.windows.net'
        database = 'testeGuide'
        username = 'Guide2020'
        password = 'guide@2020'

        client = TinyTds::Client.new username: username, password: password, host: server, database: database, azure: true
        
        tsql = query
        result = client.execute(tsql)
        names = Array.new
        
        result.each do |row|
            names << row['nome']
        end
        return names
     end



end