Rails.configuration.stripe = {

  :publishable_key => "pk_test_1MTPzVFB7OHCsoK0EFtRRNUI",

  :secret_key => "sk_test_fkZaVLyclkwbRsfjOr5JZ7zF"

}



Stripe.api_key = Rails.configuration.stripe[:secret_key]