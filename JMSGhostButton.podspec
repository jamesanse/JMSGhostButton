

Pod::Spec.new do |s|

 

  s.name         = "JMSGhostButton"
  s.version      = "0.0.1"
  s.summary      = "ghost button that uses ibdesignable and ibinspectable"
  s.description  = <<-DESC
                   A longer description of JMSGhostButton in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/onllm/JMSGhostButton"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "jin" => "jamesanse@gmail.com" }
  s.source       = { :git => "https://github.com/onllm/JMSGhostButton.git", :tag => "0.0.1" }
  s.source_files  = "ghostButton"
  s.requires_arc = true
  s.platform     = :ios, "8.0"
  s.dependency 'FrameAccessor'
 

end
