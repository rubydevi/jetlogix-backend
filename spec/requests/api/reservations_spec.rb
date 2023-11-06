require 'swagger_helper'

describe '/reservations' do
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

  # index of reservations
  path '/api/v1/users/{user_id}/reservations' do
    get 'Retrieves reservations' do
      tags 'Reservations'
      produces 'application/json'
      parameter name: 'reservations', in: :path, type: :string, description: 'reservations'
      response '200', 'reservations found' do
        run_test!
      end
    end
  end

  path '/api/v1/users/{user_id}/reservations' do
    post 'Creates a Reservations' do
      tags 'Reservations'
      consumes 'application/json'
      parameter name: 'reservations', in: :path, type: :string, description: 'reservations'
      response '200', 'reservations created' do
        let(:reservations) do
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
        run_test!
      end
      response '422', 'Reservations creation failed' do
        let(:reservations) do
          {
            reserved_date: '2021-04-20',
            start_time: '2021-04-20 12:00:00',
            end_time: '2021-04-20 13:00:00',
            start_location: 'Test',
            destination: 'Thailand',
            aeroplane_id: 14
          }
        end
        run_test!
      end
    end
  end
end
