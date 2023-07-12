module Types
  class QueryType < GraphQL::Schema::Object
    description "The query root of this schema"
  
    # First describe the field signature:
    field :post, PostType, "Find a post by ID" do
      argument :id, ID
    end
  
    # Then provide an implementation:
    def post(id:)
      Post.find(id)
    end
  end
end
