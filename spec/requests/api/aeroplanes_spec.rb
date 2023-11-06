require 'swagger_helper'

RSpec.describe '/aeroplanes', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Aeroplane. As you add validations to Aeroplane, be sure to
  # adjust the attributes here as well.
  # let(:aeroplane) do
  #   skip('Add a hash of attributes valid for your model')
  # end

  # let(:aeroplane) do
  #   skip('Add a hash of attributes invalid for your model')
  # end

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # AeroplanesController, or in your router and rack
  # middleware. Be sure to keep this updated too.

  let(:user) do
    {
      id: 3,
      name: 'Aeroplane 3',
      email: 'ri@gmail.com',
      password: 'https://images.unsplash.com/photo-1464037866556-6812c9d1c72e?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      role: 'user'

    }
  end

  let(:aeroplane) do
    {
      name: 'Aeroplane 3',
      model: 'Jet',
      image: 'https://images.unsplash.com/photo-1464037866556-6812c9d1c72e?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      description: 'yolo',
      number_of_seats: 6,
      location: 'test',
      fee: 90.0,
      reserved: false

    }
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      path '/aeroplanes' do
        Aeroplane.create! aeroplane
        get api_v1_user_aeroplanes_path, as: :json
        expect(response).to be_successful
      end
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      path '/aeroplanes' do
        aeroplane = Aeroplane.create! aeroplane
        get api_v1_user_aeroplane_path(aeroplane), as: :json
        expect(response).to be_successful
      end
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Aeroplane' do
        path '/aeroplanes' do
          expect do
            post api_v1_user_aeroplane_path,
                 params: { aeroplane: }, headers: valid_headers, as: :json
          end.to change(Aeroplane, :count).by(1)
        end
      end
    end
  end


      it 'renders a JSON response with the new aeroplane' do
        path '/aeroplanes' do
        post api_v1_user_aeroplane_path,
             params: { aeroplane: aeroplane }, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end


    context 'with invalid parameters' do
      it 'does not create a new Aeroplane' do
         path '/aeroplanes' do
        expect do
          post api_v1_user_aeroplane_path,
               params: { aeroplane: aero }, as: :json
        end.to change(Aeroplane, :count).by(0)
      end
      end
    end

      it 'renders a JSON response with errors for the new aeroplane' do
           path '/aeroplanes' do
        post api_v1_user_aeroplane_path,
             params: { aeroplane: aero }, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end
  end


  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end



  #     it 'renders a JSON response with the aeroplane' do
  #       aeroplane = Aeroplane.create! aeroplane
  #       patch aeroplane_url(aeroplane),
  #             params: { aeroplane: new_attributes }, headers: valid_headers, as: :json
  #       expect(response).to have_http_status(:ok)
  #       expect(response.content_type).to match(a_string_including('application/json'))
  #     end
  #   end

  #   context 'with invalid parameters' do
  #     it 'renders a JSON response with errors for the aeroplane' do
  #       aeroplane = Aeroplane.create! aeroplane
  #       patch aeroplane_url(aeroplane),
  #             params: { aeroplane:aero }, headers: valid_headers, as: :json
  #       expect(response).to have_http_status(:unprocessable_entity)
  #       expect(response.content_type).to match(a_string_including('application/json'))
  #     end
  #   end
  # end

  # describe 'DELETE /destroy' do
  #   it 'destroys the requested aeroplane' do
  #     aeroplane = Aeroplane.create! aeroplane
  #     expect do
  #       delete aeroplane_url(aeroplane), headers: valid_headers, as: :json
  #     end.to change(Aeroplane, :count).by(-1)
  #   end
  # end

