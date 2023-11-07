require 'swagger_helper'

describe '/aeroplanes/api' do
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

  # index of aeroplanes
  path '/api/v1/users/{user_id}/aeroplanes' do
    get 'Retrieves aeroplanes' do
      tags 'Aeroplanes'
      produces 'application/json'
      parameter name: :user_id, in: :path, type: :string, required: true
      response '200', 'aeroplane found' do
        run_test!
      end
    end
  end

  # create aeroplanes
  path '/api/v1/users/{user_id}/aeroplanes' do
    post 'Creates an Aeroplane' do
      tags 'Aeroplanes'
      consumes 'application/json'
      parameter name: :user_id, in: :path, type: :string, required: true
      parameter name: 'aeroplane', in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          model: { type: :string },
          image: { type: :string },
          description: { type: :string },
          number_of_seats: { type: :integer },
          location: { type: :string },
          fee: { type: :number },
          reserved: { type: :boolean }
        },
        required: %w[name model image description number_of_seats location fee reserved]
      }
      response '200', 'aeroplane created' do
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
        run_test!
      end
    end
  end

  # show  aeroplanes
  path '/api/v1/users/{user_id}/aeroplanes/{id}' do
    get 'Retrieves an aeroplane' do
      tags 'Aeroplanes'
      produces 'application/json'
      parameter name: :user_id, in: :path, type: :string, required: true
      parameter name: :id, in: :path, type: :string, required: true
      response '200', 'aeroplane found' do
        run_test!
      end
    end
  end

  # delete  aeroplanes
  path '/api/v1/users/{user_id}/aeroplanes/{id}' do
    delete 'Delete an aeroplane' do
      tags 'Aeroplanes'
      produces 'application/json'
      parameter name: :user_id, in: :path, type: :string, required: true
      parameter name: :id, in: :path, type: :string, required: true
      response '204', 'Aeroplane deleted successfully' do
        run_test!
      end
      response '404', 'Failed to delete aeroplane' do
        run_test!
      end
    end
  end
end
