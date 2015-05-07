

Pod::Spec.new do |s|

 

  s.name         = "JMSGhostButton"
  s.version      = "1.0.1"
  s.summary      = "ghost button that uses ibdesignable and ibinspectable"
  s.description  = <<-DESC
                   A popular ghost button that takes advantage of ibdesignable and
                   ibspectable to see live result on your storyboard 
                   DESC

  s.homepage     = "https://github.com/onllm/JMSGhostButton"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "jin" => "jamesanse@gmail.com" }
  s.source       = { :git => "https://github.com/onllm/JMSGhostButton.git", :tag => "1.0.1" }
  s.source_files  = "ghostButton"
  s.resources = "ghostButtonResource/NRSGhostButton.xib"
  s.requires_arc = true
  s.platform     = :ios, "7.0"
  s.dependency 'FrameAccessor'
 

end
