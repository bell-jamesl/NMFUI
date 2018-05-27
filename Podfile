# CocoaPods script for mFind workspace
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '10.0'
inhibit_all_warnings!
use_frameworks!

def import_pods
end

target "NMFUI" do
    import_pods
    
    target 'NMFUITests' do
       inherit! :complete
    end
end

project 'NMFUI/NMFUI'
