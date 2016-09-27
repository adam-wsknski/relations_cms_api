ActiveModel::Serializer::Adapter.register(:json_api_dasherized, JsonApiDasherized)
ActiveModel::Serializer.config.adapter = :json_api_dasherized
