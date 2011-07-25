class EWSGI_INPUT_STREAM

creation
    make
        
feature {NONE} -- Initialization

    make is
        do
            create std_files
        end
        
feature {EWSGI_APPLICATION} -- Basic operations

    read_string is
        do
            std_files.input.read_stream (65536)
        end
        
    last_string: STRING is
        do
            Result := std_files.input.last_string
        end
    
feature {NONE} -- Implementation

    std_files: STD_FILES
    
end