-- Find libraries who haven't provided the email address in circulation year 2016 but their notice preference definition is set to email

-- https://platform.stratascratch.com/coding/9924-find-libraries-who-havent-provided-the-email-address-in-2016-but-their-notice-preference-definition-is-set-to-email?code_type=3

-- Solution:

select home_library_code from library_usage
where provided_email_address = "FALSE"
and circulation_active_year = 2016
and notice_preference_definition = "email"

