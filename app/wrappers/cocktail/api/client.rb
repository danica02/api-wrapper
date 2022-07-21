module Cocktail
    module Api
        class Client
            BASE_URL = "https://www.thecocktaildb.com".freeze
            def random_drinks
                send_request(:get, "/api/json/v1/1/random.php")
            end

            def cocktail_info(id)
                send_request(:get,"/api/json/v1/1/lookup.php?i=#{id}")
            end

            def search_cocktail_name(name)
                send_request(:get,"/api/json/v1/1/search.php?s=#{name}")
            end

            def search_ingredient_name(ingredient)
                send_request(:get,"/api/json/v1/1/search.php?i=#{ingredient}")
            end

            private

            def send_request(http_method,path_to_resource)
                connection = Faraday.new(url: BASE_URL)
                response = connection.public_send(http_method, path_to_resource)
                JSON.parse(response.body)
            end
        end
    end
end