'use strict'

gulp = require('gulp')
sequence = require('run-sequence')

devTasks = [
  #'webpack:dev'
  'php'
  'coffee'
  'uglify'
  'concat'
  'less'
  'concatcss'
  'minifycss'
]

buildTasks = [
  #'webpack:build'
  'php'
  'coffee'
  'uglify'
  'concat'
  'less'
  'concatcss'
  'minifycss'
]

if global.isProduction
  gulp.task 'build', ->
    console.log '1unes is in production'
    sequence buildTasks
else
  gulp.task 'build', ->
    console.log '1unes is in dev'
    sequence devTasks
