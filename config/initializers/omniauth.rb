Rails.application.config.middleware.use OmniAuth::Builder do    
  provider :facebook, '190883397603308', '05b4eaed9001db262ba94ceb58ce8094'   
end