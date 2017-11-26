
       if ngx.req.get_method() == "POST" then
             local cjson = require("cjson")
             ngx.req.read_body()
             local my_json_str = ngx.var.request_body
             local spec = cjson.new().decode(my_json_str)
             local h = ngx.req.get_headers()

             local movie = spec["movie"]
             if movie == "true" then
                  -- ngx.req.set_uri("/simple",true)
                  -- local res = ngx.location.capture("/printmulti")
                  ngx.req.set_header("Content-Type", "application/json")
                  local res = ngx.location.capture("/printmulti",
                      { method = ngx.HTTP_POST, body = my_json_str  })
                  if res.status >= 500 then 
                    ngx.exit(res.status) 
                  end
                  ngx.status = res.status
                  ngx.print(res.body)
              else

                 ngx.say(movie)
            end
      else

      ngx.say("not a POST request")

      end



