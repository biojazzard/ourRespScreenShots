'use strict'

gulp = require('gulp')
concat = require('gulp-concat')
_path = require('path')

browserSync = require('browser-sync')

handleErrors = require('../util/handleErrors')

gulp.task 'concat', ->
  gulp.src [
    'src/components/jquery/dist/jquery.min.js'
    'src/components/underscore/underscore-min.js'
    'src/components/bootstrap/dist/js/bootstrap.min.js'
    'src/components/snackbarjs/dist/snackbar.min.js'
    'src/components/holderjs/holder.min.js'
    'src/components/tram/dist/tram-min.js'
    'src/components/jquery-ajaxtransport-xdomainrequest/jquery.xdomainrequest.min.js'
    'src/components/owl-carousel2/dist/owl.carousel.min.js'
    'src/components/flexslider/jquery.flexslider-min.js',
    'src/components/froogaloop/froogaloop.min.js',
    'src/jsmin/jquery.fittext.js',
    'src/jsmin/js.cookie.js',
    'src/jsmin/jquery.cookiecuttr.js',
    'src/jsmin/_debouncedresize.js'
    'src/jsmin/_vimeo.js'
    'src/jsmin/webflow.js'
    'src/jsmin/webflow-ix.js'
    'src/jsmin/webflow-slider.js'
    'src/jsmin/index.js'
  ]
  .on('error', handleErrors)
  .pipe concat(path: 'build.js')
  .pipe gulp.dest(global.build.scripts)

gulp.task 'concatcss', ->
  gulp.src [
    'src/css/webflow.css'
    'app/assets/css/index.css'
  ]
  .on('error', handleErrors)
  .pipe concat(path: 'build.css')
  .pipe gulp.dest(global.build.styles)

