'use strict'

gulp = require('gulp')
coffee = require('gulp-coffee')
_path = require('path')

browserSync = require('browser-sync')

handleErrors = require('../util/handleErrors')

gulp.task 'coffee', ->
  gulp.src [
    'src/coffee/webflow-ix.coffee'
    'src/coffee/webflow-slider.coffee'
    'src/coffee/index.coffee'
    'src/coffee/plugins/_debouncedresize.coffee'
    'src/coffee/plugins/_vimeo.coffee'
  ]
  .on('error', handleErrors)
  .pipe coffee
    bare: true
    compress: true
  .pipe gulp.dest('src/js')
