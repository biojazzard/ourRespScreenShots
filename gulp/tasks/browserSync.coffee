'use strict'

browserSync = require('browser-sync')
gulp = require('gulp')

gulp.task 'browserSync', ->
  browserSync
    files: [ global.source.templates.app.watch ]
    proxy: 'localhost:80/1un.es'
    notify: false
  return
