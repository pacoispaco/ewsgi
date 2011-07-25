class EWSGI_OUTPUT_STREAM

creation
    make
        
feature {NONE} -- Initialization

    make is
        do
            create std_files
        end
        
feature {EWSGI_APPLICATION} -- Basic operations

    write (s: STRING) is
        do
            std_files.output.put_string (s)
        end
    
    flush is
        do
            std_files.output.flush
        end

feature {NONE} -- Implementation

    std_files: STD_FILES
    
end