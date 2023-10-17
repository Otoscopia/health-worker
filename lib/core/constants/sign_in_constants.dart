const String welcomeLabel = "Welcome Back School Nurse!";
const String passwordLabel = "Password";
const String emailLabel = "Email Address";
const String signInButton = "Sign In";

const String emptyInputsError = "Please input your email and password";

const String emailEmpty = "Please input your email";
const String emailError = "Please validate your email";

const String passwordEmpty = "Please input your password";
const String passwordError = "Password must be greater than 8";

const String formsError = "All the forms are required. Please input all before pressing Sign up";
const String connectionError = "Please check your connection";

Map<String, String> errorMessageObject = {
  "general_access_forbidden" : "general_access_forbidden",
  "general_unauthorized_scope" : "The current user or API key does not have the required scopes to access the requested resource.",
  "user_email_not_whitelisted" : "Console registration is restricted to specific emails. Contact your administrator for more information.",
  "user_jwt_invalid" : "The JWT token is invalid. Please check the value of the X-Appwrite-JWT header to ensure the correct token is being used.",
  "user_blocked" : "The current user has been blocked. You can unblock the user by making a request to the User API's \"Update User Status\" endpoint or in the Appwrite Console's Auth section.",
  "user_invalid_token" : "Invalid token passed in the request.",
  "user_ip_not_whitelisted" : "Console registration is restricted to specific IPs. Contact your administrator for more information.",
  "user_invalid_credentials" : "Invalid credentials. Please check the email and password.",
  "user_anonymous_console_prohibited" : "Anonymous users cannot be created for the console project.",
  "user_invalid_code" : "The specified code is not valid. Contact your administrator for more information.",
  "user_session_already_exists" : "Creation of anonymous users is prohibited when a session is active.",
  "user_unauthorized" : "The current user is not authorized to perform the requested action.",
  "user_oauth2_unauthorized" : "OAuth2 provider rejected the unauthorized request.",
  "team_invalid_secret" : "	The team invitation secret is invalid. Please request a new invitation and try again.",
  "team_invite_mismatch" : "The invite does not belong to the current user.",
  "project_key_expired" : "The project key has expired. Please generate a new key using the Appwrite console.",
  "rule_verification_failed" : "Domain verification failed. Please check if your DNS records are correct and try again.",
  "project_template_default_deletion" : "You can't delete default template. If you are trying to reset your template changes, you can ignore this error as it's already been reset.",
};