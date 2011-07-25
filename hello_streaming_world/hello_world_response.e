note
    description: "A streaming (non-buffered) Hello World example."
    author: "Paul Cohen <paul.cohen@seibostudio.se>"
    status: "Draft"
    
class HELLO_WORLD_RESPONSE

inherit
    EWSGI_RESPONSE
        redefine
            make,
            read_block
        end
    
creation
    make
    
feature {NONE} -- Initialization

  make is
        do
            precursor
            set_ready_to_transmit
            current_hello := 0
        end
    
feature {NONE} -- Entity body

    read_block
        -- Reads a block of 100000 lines of "Hello World". 
        local
            i: INTEGER
        do
            if current_hello >= 100000 then
                end_of_blocks := True
            else
                if current_hello = 0 then
                    current_block := "<html><body>%N"
                end
                from
                    i := 0
                until
                    i = 10000
                loop
                    current_block.append ("Hello World%N")
                    i := i + 1
                end
                current_hello := current_hello + i
                if current_hello = 100000 then
                    current_block.append ("</body></html>")
                end
            end
        end

    current_hello: INTEGER
      
end