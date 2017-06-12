
platform :ios, :deployment_target => "9.0"

def swift_pods
    use_frameworks!
    pod 'SnapKit'
    pod 'Context', :path => 'LocalPods/Context' 
    pod 'DogFeature', :path => 'LocalPods/DogFeature' 
    pod 'CatFeature', :path => 'LocalPods/CatFeature'
    pod 'HomeFeature', :path => 'LocalPods/HomeFeature'
end

def testing_pods
    use_frameworks!
    pod 'Nimble'
end

target 'ModularizedByFeatures' do
xcodeproj 'ModularizedByFeatures'
    swift_pods
end

target 'ModularizedByFeaturesTests' do
    swift_pods
    testing_pods
end

target 'ModularizedByFeaturesUITests' do
    testing_pods
end

workspace 'ModularizedByFeatures.xcworkspace'




