note
    description: "[
        An EWSGI application. This should be subclassed by the application
        developer. The subclass must be the root class of the Eiffel application.
        ]"
    author: "Paul Cohen <paul.cohen@seibostudio.se>"
    status: "Draft"
    
deferred class EWSGI_APPLICATION

feature {NONE} -- Initialization

    make is
        local
            c: EWSGI_CONNECTOR
        do
            create c.make
            process (c.environment, c.input, c.output)
        end
        
feature {NONE} -- Basic operations

    process (environment: HASH_TABLE [STRING, STRING]; input: EWSGI_INPUT_STREAM; output: EWSGI_OUTPUT_STREAM) is
            -- Process new request.
        local
            rq: EWSGI_REQUEST
            rs: EWSGI_RESPONSE
            s: STRING
        do
            create rq.make (environment, input)
            rs := response (rq)
            if rs.ready_to_transmit then
                --output.write (rs.start_line)
                output.write (rs.headers)
                from
                    rs.read_block
                    output.write (rs.last_block)
                    output.flush
                until
                    rs.end_of_blocks
                loop
                    rs.read_block
                    output.write (rs.last_block)
                    output.flush
                end
            else
                -- Report internal server error. 
                -- Response not ready to transmit!
                -- Implementor of EWSGI_APPLICATION has not done his job!
                create rs.make
                rs.set_status ("500")
                rs.set_header ("Content-Type", "text/plain")
                rs.set_message_body ("Incomplete server implementation: Response not ready to transmit.%NTell the programmer to finish his/her job!")
                output.write (rs.start_line)
                output.write (rs.headers)
                rs.read_block
                output.write (rs.last_block)
                output.flush
            end
        end

    response (request: EWSGI_REQUEST): EWSGI_RESPONSE
            -- HTTP response for given 'request'.
        deferred
        ensure
            ready_to_transmit: Result.ready_to_transmit
        end

    process_2 (c: EWSGI_CONNECTOR) is
            -- Process new request from the connector 'c'.
        local
            rq: EWSGI_REQUEST
            rs: EWSGI_RESPONSE
            s: STRING
        do
            create rq.make (c.environment, c.input)
            rs := response (rq)
            if rs.ready_to_transmit then
                --c.transmit_response (rs)
            else
                -- Report internal server error. 
                -- Response not ready to transmit!
                -- Implementor of EWSGI_APPLICATION has not done his job!
                create rs.make
                rs.set_status ("500")
                rs.set_header ("Content-Type", "text/plain")
                rs.set_message_body ("Incomplete server implementation: Response not ready to transmit.%NTell the programmer to finish his/her job!")
                --c.transmit_response (rs)
            end
        end

end