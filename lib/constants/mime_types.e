note
	description: "[
        Internet media types as defined by IETF RFC 2045 and RFC 2046.
        This class does not contain all officially registered media types.
        It uses the Linux/Unix file /etc/mime.types if it is available.
        For the complete list of officially registered media types see:
        http://www.iana.org/assignments/media-types/index.html.
        ]"
	author: "Paul Cohen"
	date: "$Date$"
	revision: "$Revision$"

class
	MIME_TYPES
    
creation
    make
    
feature {NONE} -- Initialization

    make is
            -- Initialize.
        do
            if unix/linux then
                read file ("/etc/mime.types")
            end
        end
        
feature -- Basic operations

    has_subtype (subtype: STRING): BOOLEAN is
            -- Is the given 'subtype' registered with a MIME type?
        do
        end

    mime_types (subtype: STRING): LIST [STRING] is
            -- The MIME types for the given 'subtype'. Returns Void if none 
            -- found.
        require
            has_subtype (subtype)
        do
        end

    has_extension (s: STRING): BOOLEAN is
            -- Is the given extension 's' associated with at least one MIME 
            -- type? 's' may be a normal extension like 'jpg' or a file name
            -- like 'foobar.1.jpg'. In the latter case this feature will only
            -- consider the substring after the last '.' character.
        do
        end
        
    mime_type_by_extension (s: STRING): STRING is
            -- The MIME type Associated with the given extension 's'. 's' may
            -- be a normal extension like 'jpg' or a file name like 
            -- 'foobar.jpg'. In the latter case this feature will only consider
            -- the substring after the last '.' character.
        require
            has_extension 
        do
        end
        
    is_valid_mime_type (mime_type: STRING): BOOLEAN is
            -- Is 'mime_type' a valid MIME type (ie. registered in the local
            -- /etc/mime.types file)?
        do
        end
        
    extensions (mime_type: STRING): LIST [STRING] is
            -- The list of associated file name extensions for the given
            -- 'mime_type'.
        require
            is_valid_mime_type
        do
        end

    is_text (s: STRING): BOOLEAN is
        do
        end

    is_image (s: STRING): BOOLEAN is
        do
        end

    is_audio (s: STRING): BOOLEAN is
        do
        end

    is_video (s: STRING): BOOLEAN is
        do
        end

    is_application (s: STRING): BOOLEAN is
        do
        end

    is_multipart (s: STRING): BOOLEAN is
        do
        end

    is_model (s: STRING): BOOLEAN is
        do
        end

    is_message (s: STRING): BOOLEAN is
        do
        end

feature -- MIME types

	Text_html: STRING = "text/html"

feature {NONE} -- Implementation

    is_top_level_mime_type (s: STRING, top_level_mime_type: STRING): BOOLEAN is
            -- Does the mime_type 's' have the top level MIME type 
            -- 'top_level_mime_type' oris the extension of the file_name 's' 
            -- associated with a MIME type belonging to the top level MIME type
            -- 'top_level_mime_type'?
        do
        end

end