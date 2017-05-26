
platform :ios, :deployment_target => "9.0"

def swift_pods
    use_frameworks!
    pod 'SnapKit'
end

def testing_pods
    use_frameworks!
    pod 'Nimble'
end

target 'ModularizedByFeatures' do
    swift_pods
end

target 'ModularizedByFeaturesTests' do
    swift_pods
    testing_pods
end

target 'ModularizedByFeaturesUITests' do
    testing_pods
end



