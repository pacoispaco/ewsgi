note
    description: "EWSGI CGI connector"
    author: "Paul Cohen <paul.cohen@seibostudio.se>"
    status: "Draft"
    
class EWSGI_CONNECTOR
    
creation
    make
    
feature {NONE} -- Initialization

    make is
        local
            env: EXECUTION_ENVIRONMENT
            ip: EWSGI_INPUT_STREAM
            op: EWSGI_OUTPUT_STREAM
        do
            create env
            environment := env.starting_environment_variables
            create input.make
            create output.make
        end

feature {EWSGI_APPLICATION} -- Basic operations

    environment: HASH_TABLE [STRING, STRING]
    
    input: EWSGI_INPUT_STREAM
    
    output: EWSGI_OUTPUT_STREAM

end