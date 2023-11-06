require 'swagger_helper'

RSpec.describe '/reservations', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Reservation. As you add validations to Reservation, be sure to
  # adjust the attributes here as well.
  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # ReservationsController, or in your router and rack
  # middleware. Be sure to keep this updated too.
    let(:user) do
    {
      id: 3,
      name: 'Reservation 3',
      email: 'ri@gmail.com',
      password: 'https://images.unsplash.com/photo-1464037866556-6812c9d1c72e?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      role: 'user'

    }
  end

  let(:reservation) do
    {
      reserved_date: '2021-04-20',
      start_time: '2021-04-20 12:00:00',
      end_time: '2021-04-20 13:00:00',
      start_location: 'Test',
      destination: 'Thailand',
      user_id: 3,
      aeroplane_id: 14

    }
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      path '/reservations' do
      Reservation.create! reservation
      get api_v1_user_reservations_path, as: :json
      expect(response).to be_successful
    end
  end
end


  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Reservation' do
         path '/reservations' do
        expect do
          post api_v1_user_reservations_path,
               params: { reservation: }, as: :json
        end.to change(Reservation, :count).by(1)
      end
    end

      it 'renders a JSON response with the new reservation' do
         path '/reservations' do
        post api_v1_user_reservations_path,
             params: { reservation: },as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end
  end

    context 'with invalid parameters' do
      it 'does not create a new Reservation' do
         path '/reservations' do
        expect do
          post api_v1_user_reservations_path,
               params: { reservation: reserve }, as: :json
        end.to change(Reservation, :count).by(0)
      end
    end

      it 'renders a JSON response with errors for the new reservation' do
         path '/reservations' do
        post api_v1_user_reservations_path,
             params: { reservation: reserving }, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to match(a_string_including('application/json'))
      end
    end
  end


  end
end

