Rails.application.config.middleware.use OmniAuth::Builder do
  provider :saml,
           assertion_consumer_service_url: "http://localhost:3000/users/auth/saml/callback",
           issuer: "http://localhost:3000",
           idp_sso_target_url: "https://accounts.google.com/o/saml2/idp?idpid=C00hftqc9",
           idp_cert: <<-CERT.strip_heredoc,
-----BEGIN CERTIFICATE-----
MIIDdDCCAlygAwIBAgIGAXGo5TqGMA0GCSqGSIb3DQEBCwUAMHsxFDASBgNVBAoTC0dvb2dsZSBJ
bmMuMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MQ8wDQYDVQQDEwZHb29nbGUxGDAWBgNVBAsTD0dv
b2dsZSBGb3IgV29yazELMAkGA1UEBhMCVVMxEzARBgNVBAgTCkNhbGlmb3JuaWEwHhcNMjAwNDIz
MjExNTI2WhcNMjUwNDIyMjExNTI2WjB7MRQwEgYDVQQKEwtHb29nbGUgSW5jLjEWMBQGA1UEBxMN
TW91bnRhaW4gVmlldzEPMA0GA1UEAxMGR29vZ2xlMRgwFgYDVQQLEw9Hb29nbGUgRm9yIFdvcmsx
CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
MIIBCgKCAQEAob3lkaktU+xwRSSbPd3iJduAmeQxMI218mHYgx7zq23BODtFKkIBFr+EOjeCZ+MU
M5X8ZxmeYHVN8jeIecy+whOIx0EcA7mJMNHvYAlg/q6l2WBWqMElOqqvKWp6SD3D/MmhsBK3XsWU
RZFxhz50fy2R5YzHtfZt2Ky3fnakNGpm+jNitP4cSqFy/w3+rptJRY4OkDCDBqsr9scJyL6i0rd9
L//IDbkyS2FJ43dEbfC5bb7tiu37ke+3P99vqz5Lki0sPelE9HrjUg4lOu/2FBd1V8/FT01k4Z1x
6D/LKStsrCmwBZX2NpspwctEK/TxJb756YckuY517Q8QiW3AvQIDAQABMA0GCSqGSIb3DQEBCwUA
A4IBAQBV70CukzaTWxCDByB7zMjhhctmjnitLNGxNja2Tc3OafoshibJFc8kbgPNypFdknviYjpg
WC0dF0CU1MJqWM/etfyCTRB9Ci+qpkWAu8Q81qa3t5HGGagCfvoYtGmlYeXj0DbyFSqjKmheRRxT
osm00niCxFkEEOSpIYlNiM7r9Ljuoiag5xTtgxhLnd9TTx/fXy/RGnpOhDvds7nOBneKh6V3j7Wi
cXrOXZw0OGRCrXAyDkuaFMWCz9f5dOzhHhoHWJfzBcJbYNoQyrA+h2GzJNsIi75ePO95NshHMLE3
zawKn8+HOmVAGFvYVBLc3NRARXpF4nWiFYfoGZRdnQWF
-----END CERTIFICATE-----
           CERT
           name_identifier_format: "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"
end
