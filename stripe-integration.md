## Install stripe
 run `pip install stripe`

## Create Credentials

### Step 1.Create account
1. signup here [https://dashboard.stripe.com/register](https://dashboard.stripe.com/register)
2. select the country carefully. This selection will enable config for you based on the selected country's rule.
3. Copy the publisher key and secret key for test mode.

### Frontend settings
1. Share the publisher key with frontend team
2. Frontend will hit the backend's charge api with a stripe token.

[You can refer to resource fashion frontend github repo for creating stripe token and calling charge api.]

### Django settings
1. Create the Payment and Order Models based on your usecase. 
2. Create a charge api. 
3. Create new key in settings with keyname `STRIPE_SECRET_KEY = ''`
4. Update your local settings with the test/production values.

[You can refer to resource fashion github backend repo for models schema and charge apis]