note
    description: "A buffered Hello World example."
    author: "Paul Cohen <paul.cohen@seibostudio.se>"
    status: "Draft"
    
class HELLO_WORLD

inherit
    EWSGI_APPLICATION
    
creation
    make
    
feature {NONE}-- Basic oprations

    response (request: EWSGI_REQUEST): EWSGI_RESPONSE
        do
            create Result.make
            Result.set_status ("200")
            Result.set_header ("Content-Type", "text/html; charset=utf-8")
            Result.set_message_body ("<html><body>Hello World</body></html>")
        end
    
end
