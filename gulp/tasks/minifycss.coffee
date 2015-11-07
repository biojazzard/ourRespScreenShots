'use strict'

csso = undefined
gulp = undefined
handleErrors = undefined
size = undefined

gulp = require('gulp')
csso = require('gulp-csso')
size = require('gulp-size')

handleErrors = require('../util/handleErrors')

gulp.task 'minifycss', ->
  gulp.src [
    'app/assets/css/build.css'
  ]
  .on('error', handleErrors)
  .pipe csso()
  .pipe gulp.dest(global.build.styles)
  .pipe size()
