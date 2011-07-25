note
	description: "Summary description for {HTTP_CONSTANTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HTTP_CONSTANTS

feature -- General stuff

	http_version_1_1: STRING = "HTTP/1.1"
	http_version_1_0: STRING = "HTTP/1.0"
	crlf: STRING = "%/13/%/10/"

feature -- Status codes

    http_status: HTTP_STATUS_CODES is
            -- Enables you to write:
            -- http_status.Ok
            -- http_status.reasons @ http_status.Ok or
            -- http_status.reasons @ "200" or
            -- http_status.reasons @ code (assuming some local STRING entity 'code')
        once
            create Result
        end

feature -- content types
        
    media: MIME_TYPES is
            -- Enables you to write:
            -- is_valid := media.is_valid_mime_type ("text/html")
            -- content_type := media.mime_type_by_extension ("foobar.1.jpg")
            -- is_image := media.is_image ("foobar.1.jpg")
        once
            create Result
        end

feature -- General Header Fields

	-- There are a few header fields which have general applicability for both request and response messages,
	-- but which do not apply to the entity being transferred.
	-- These header fields apply only to the message being transmitted.

	Cache_control 		: STRING = "Cache-Control"
	Connection    		: STRING = "Connection"
	Date          		: STRING = "Date"
	Pragma		  		: STRING = "PRAGMA"
	Trailer       		: STRING = "Trailer"
	Transfer_encoding 	: STRING = "Transfer-Encoding"
	Upgrade           	: STRING = "Upgrade"
	Via               	: STRING = "Via"
	Warning           	: STRING = "Warning"


feature -- Request Header
	Accept	 			: STRING = "Accept"
	Accept_charset 		: STRING = "Accept-Charset"
	Accept_encoding 	: STRING = "Accept-Encoding"
	Accept_language 	: STRING = "Accept-Language"
	Authorization 		: STRING =  "Authorization"
	Expect 		  		: STRING = "Expect"
	From_header   		: STRING = "From"
	Host				: STRING = "Host"
	If_match			: STRING = "If-Match"
	If_modified_since 	: STRING = "If-Modified-Since"
	If_none_match		: STRING = "If-None-Match"
	If_range			: STRING = "If-Range"
	If_unmodified_since : STRING = "If-Unmodified-Since"
	Max_forwards 		: STRING = "Max-Forwards"
	Proxy_authorization	: STRING = "Proxy-Authorization"
	Range				: STRING = "Range"
    Referer             : STRING = "Referrer"
    TE					: STRING = "TE"
    User_agent 			: STRING = "User-Agent"


feature -- Entity Header

	Allow 				: STRING = "Allow"
	Content_encoding 	: STRING = "Content-Encoding"
	Content_language 	: STRING = "Content-Language"
	Content_length	 	: STRING = "Content-Length"
	Content_location 	: STRING = "Content-Location"
	Content_MD5			: STRING = "Content-MD5"
	Content_range 		: STRING = "Content-Range"
	Content_type		: STRING = "Content-Type"
	Expires				: STRING = "Expires"
	Last_modified		: STRING = "Last-Modified"


feature -- Http Method
	Options : STRING = "OPTIONS"
	Get : STRING = "GET"
	Head : STRING = "HEAD"
	Post : STRING = "POST"
	Put  : STRING = "PUT"
	Delete : STRING = "DELETE"
	Trace : STRING = "TRACE"
	Connect : STRING = "CONNECT"
end
