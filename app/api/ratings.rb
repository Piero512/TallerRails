module Ratings
    class API < Grape::API
        format :json
    get do
        View.all()
    end
    params do
        requires :id, type: Integer, desc: "Product id"
    end
    get ':id' do
        begin
          product = View.find(params[:id])
        rescue ActiveRecord::RecordNotFound
          error!({ status: :not_found }, 404)
        end
      end
    

end
end
        