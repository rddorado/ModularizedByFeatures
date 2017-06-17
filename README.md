# ModularizedByFeatures

This sample project shows how to break a monolithic ios app into smaller frameworks using Cocoapods.
Each small framework has its own sample micro app which can be launched and unit/ui tested.
It is intended that the micro apps are used for the development of features.
Once the feature is completed and with all tests passing as a micro app, it can be then inegrated into the Main app using Cocoapods.
The process of working with micro apps hopefully will speed up build process and avoid commit conflicts for large iOS teams.
