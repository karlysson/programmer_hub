# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|

      ## My Dados
      t.string :name, null: false, comment: 'Nome'
      t.string :description, null: false, comment: 'Descrição'

      ## Database authenticatable
      t.string :email,              null: false, default: '', comment: 'Email'
      t.string :encrypted_password, null: false, default: '', comment: 'Senha Criptografada'

      ## Recoverable
      t.string   :reset_password_token, comment: 'Token do Reset Senha'
      t.datetime :reset_password_sent_at, comment: 'Data que o Reset Senha, foi enviado'

      ## Rememberable
      t.datetime :remember_created_at, comment: 'Data de Criação do Remember'

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.inet     :current_sign_in_ip
      # t.inet     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
