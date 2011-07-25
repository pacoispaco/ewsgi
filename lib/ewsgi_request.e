note
    description: "[
        An EWSGI response. This may be used as is or specialized (subclassed) if
        a developer wishes to implement their own version of 'entity_body_block'
        ]"
    author: "Paul Cohen <paul.cohen@seibostudio.se>"
    status: "Draft"
    
class EWSGI_REQUEST
    
creation
    make
    
feature {NONE} -- Initialization

    make (an_environment: HASH_TABLE [STRING, STRING]; an_input: EWSGI_INPUT_STREAM) is
        do
            environment := an_environment
            input := an_input
        end
        
feature {EWSGI_APPLICATION} -- Basic operations

    environment: HASH_TABLE [STRING, STRING]
    
    input: EWSGI_INPUT_STREAM
        -- Input stream.
            
end
