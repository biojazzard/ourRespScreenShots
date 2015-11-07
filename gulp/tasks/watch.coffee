'use strict'

gulp = require('gulp')

gulp.task 'watch', [
  'setWatch'
  'less'
  'php'
  'browserSync'
], ->
  gulp.watch [global.source.templates.app.watch], [
    'php'
  ]
  gulp.watch [global.source.styles.app.watch], [
    'less'
  ]
  return
