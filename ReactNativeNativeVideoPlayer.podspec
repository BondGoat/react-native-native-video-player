Pod::Spec.new do |spec|
  spec.name = 'ReactNativeNativeVideoPlayer'
  spec.version = '1.3.4.2'

  spec.homepage = 'https://github.com/ericmgoeken/react-native-native-video-player'  
  spec.summary = 'Native App Video Player'

  spec.author           = { 'BondGoat' => 'bondsupergoat@gmail.com' }
  spec.source           = { :git => 'https://github.com/ericmgoeken/react-native-native-video-player' }

  spec.source_files = 'ios/RNVideoPlayer/*.{h,m}'

  # Pinning to the same version as React.podspec.
  spec.platforms = { :ios => "9.0" }
  
  spec.dependency             "React/Core"
 
end
