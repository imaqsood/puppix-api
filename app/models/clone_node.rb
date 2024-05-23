# frozen_string_literal: true

class CloneNode < ApplicationRecord
  enum status: { pending: 'pending', running: 'running', success: 'success' }
end
