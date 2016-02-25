#!/bin/bash

src=('app/bower_components/jquery/jquery.min.js'
         'app/bower_components/angular/angular.js'
         'app/bower_components/angular-resource/angular-resource.js'
         'app/bower_components/angular-cookies/angular-cookies.js'
         'app/bower_components/angular-ui-router/release/angular-ui-router.js'
         'app/bower_components/angular-ui-bootstrap/dist/ui-bootstrap-tpls-0.11.0.js'
         'app/bower_components/es5-shim/es5-shim.js'
         'app/bower_components/es5-shim/es5-sham.js'
         'app/bower_components/angular-file-upload/dist/angular-file-upload.min.js'
         'app/bower_components/highcharts/highcharts.js'
         'app/bower_components/highcharts-ng/dist/highcharts-ng.min.js'
         'app/bower_components/zeroclipboard/dist/ZeroClipboard.min.js'
         'app/bower_components/ng-clip/src/ngClip.js')

for var in ${src[@]};do
	echo $var
done
