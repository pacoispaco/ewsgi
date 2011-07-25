note
	description: "HTTP status codes. Use these via HTTP_CONSTANTS"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HTTP_STATUS_CODES
    
feature -- Status codes

	-- 1xx Informational -Request received, continuing process
	Continue : STRING = "100"
	Switching_Protocols : STRING = "101"

	-- 2xx Success - The action was successfully received, understood, and accepted
	Ok: STRING = "200"
	Created : STRING = "201"
	Accepted : STRING = "202"
	Non_Authoritative_Information : STRING = "203"
	No_Content : STRING = "204"
	Reset_Content : STRING = "205"
	Partial_Content : STRING = "206"

	-- 3xx Redirection - Further Action must be taken in order to complete the request
	Multiple_Choices : STRING = "300"
	Moved_Permanently: STRING = "301"
	Found : STRING = "302"
	See_Other	: STRING = "303"
	Not_Modified : STRING  = "304"
	Use_Proxy	: STRING = "305"
	Temporary_Redirect : STRING = "307"

	--4xx Client Error - The request contains bad syntax or cannot be fulfilled
	Bad_Request : STRING = "400"
	Unauthorized : STRING = "401"
	Payment_Required : STRING = "402"
	Forbidden : STRING = "403"
	Not_Found : STRING = "404"
	Method_Not_Allowed : STRING = "405"
	Not_Acceptable : STRING = "406"
	Proxy_Authentication_Required : STRING = "407"
	Request_Time_out	: STRING = "408"
	Conflict : STRING = "409"
	Gone : STRING = "410"
	Length_Required : STRING = "411"
	Precondition_Failed : STRING = "412"
	Request_Entity_Too_Large : STRING = "413"
	Request_URI_Too_Large : STRING = "414"
	Unsupported_Media_Type : STRING = "415"
	Requested_range_not_satisfiable : STRING = "416"
	Expectation_Failed : STRING = "417"

	--5xx Server Error - The server failed to fulfill an apparently valid request
	server_error: STRING = "500"
	Internal_Server_Error : STRING = "500"
	Not_Implemented : STRING = "501"
	Bad_Gateway : STRING = "502"
	Service_Unavailable : STRING = "503"
	Gateway_Time_out : STRING = "504"
	HTTP_Version_not_supported : STRING = "505"

	-- Messages
	ok_message: STRING = "OK"
	continue_message : STRING = "Continue"
	not_found_message: STRING = "URI not found"
	not_implemented_message: STRING = "Not Implemented"

    codes: HASH_TABLE [STRING, STRING] is
            -- Enable writing of 'status_code := status_codes @ "No Content"'.
        once
            Create Result.make (25)
            Result ["Continue"] = "100"
            Result ["Switching Protocols"] = "101"
            Result ["OK"] = "200"
            Result ["Created"] = "201"
            Result ["Accepted"] = "202"
            Result ["Non Authoritative Information"] = "203"
            Result ["No Content"] = "204"
            Result ["Reset Content"] = "205"
            Result ["Partial Content"] = "206"
            Result ["Multiple_Choices"] = "300"
            Result ["Moved_Permanently"] = "301"
            Result ["Found"] = "302"
            Result ["See_Other"] = "303"
            Result ["Not_Modified"] = "304"
            Result ["Use_Proxy"] = "305"
            Result ["Temporary_Redirect"] = "307"
            Result ["Bad_Request"] = "400"
            Result ["Unauthorized"] = "401"
            Result ["Payment_Required"] = "402"
            Result ["Forbidden"] = "403"
            Result ["Not_Found"] = "404"
            Result ["Method_Not_Allowed"] = "405"
            Result ["Not_Acceptable"] = "406"
            Result ["Proxy_Authentication_Required"] = "407"
            Result ["Request_Time_out"] = "408"
            Result ["Conflict"] = "409"
            Result ["Gone"] = "410"
            Result ["Length_Required"] = "411"
            Result ["Precondition_Failed"] = "412"
            Result ["Request_Entity_Too_Large"] = "413"
            Result ["Request_URI_Too_Large"] = "414"
            Result ["Unsupported_Media_Type"] = "415"
            Result ["Requested_range_not_satisfiable"] = "416"
            Result ["Expectation_Failed"] = "417"
            Result ["server_error"] = "500"
            Result ["Internal_Server_Error"] = "500"
            Result ["Not_Implemented"] = "501"
            Result ["Bad_Gateway"] = "502"
            Result ["Service_Unavailable"] = "503"
            Result ["Gateway_Time_out"] = "504"
            Result ["HTTP_Version_not_supported"] = "505"
        end

    reasons: HASH_TABLE [STRING, STRING] is
            -- Enable writing of 'status_reason := status_reasons @ "200"'.
        once
            Create Result.make (25)
            Result ["100"] = "Continue"
            Result ["101"] = "Switching Protocols"
            Result ["200"] = "OK"
            Result ["201"] = "Created"
            Result ["202"] = "Accepted"
            Result ["203"] = "Non Authoritative Information"
            Result ["204"] = "No Content"
            Result ["205"] = "Reset Content"
            Result ["206"] = "Partial Content"
            Result ["300"] = "Multiple_Choices"
            Result ["301"] = "Moved_Permanently"
            Result ["302"] = "Found"
            Result ["303"] = "See_Other"
            Result ["304"] = "Not_Modified"
            Result ["305"] = "Use_Proxy"
            Result ["307"] = "Temporary_Redirect"
            Result ["400"] = "Bad_Request"
            Result ["401"] = "Unauthorized"
            Result ["402"] = "Payment_Required"
            Result ["403"] = "Forbidden"
            Result ["404"] = "Not_Found"
            Result ["405"] = "Method_Not_Allowed"
            Result ["406"] = "Not_Acceptable"
            Result ["407"] = "Proxy_Authentication_Required"
            Result ["408"] = "Request_Time_out"
            Result ["409"] = "Conflict"
            Result ["410"] = "Gone"
            Result ["411"] = "Length_Required"
            Result ["412"] = "Precondition_Failed"
            Result ["413"] = "Request_Entity_Too_Large"
            Result ["414"] = "Request_URI_Too_Large"
            Result ["415"] = "Unsupported_Media_Type"
            Result ["416"] = "Requested_range_not_satisfiable"
            Result ["417"] = "Expectation_Failed"
            Result ["500"] = "server_error"
            Result ["500"] = "Internal_Server_Error"
            Result ["501"] = "Not_Implemented"
            Result ["502"] = "Bad_Gateway"
            Result ["503"] = "Service_Unavailable"
            Result ["504"] = "Gateway_Time_out"
            Result ["505"] = "HTTP_Version_not_supported"
        end

end
