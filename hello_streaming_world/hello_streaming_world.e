note
    description: "A streaming (non-buffered) Hello World example."
    author: "Paul Cohen <paul.cohen@seibostudio.se>"
    status: "Draft"
    
class HELLO_STREAMING_WORLD

inherit
    EWSGI_APPLICATION
    
creation
    make
    
feature {NONE}-- Basic operations

    response (request: EWSGI_REQUEST): EWSGI_RESPONSE
        do
            create {HELLO_WORLD_RESPONSE} Result.make
            Result.set_status ("200")
            Result.set_header ("Content-Type", "text/html; charset=utf-8")
        end
    
end
