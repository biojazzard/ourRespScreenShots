'use strict'

fs = require('fs')
argv = require('yargs').argv
onlyScripts = require('./util/scriptFilter')
onlyJades = require('./util/jadeFilter')

gulp = require('gulp')
jade = require('gulp-jade')
less = require('gulp-less')
_path = require('path')
marked = require('marked')
htmlhint = require('gulp-htmlhint')

tasks = fs.readdirSync('./gulp/tasks/').filter(onlyScripts)

#global.isProduction = if argv.production or argv.prod then true else false

global.isProduction = false

jades = fs.readdirSync('./src/jade/').filter(onlyJades)

###
# SOURCE & BUILD
###

global.source =
  templates:
    php:
      files: 'src/jade/*.jade'
      watch: 'src/jade/**/*.jade'
    app:
      watch: [ 'src/jade/**/*.jade', 'src/**/*.less' ]
  styles:
    app:
      files: [ 'src/less/index.less' ]
      watch: [ 'src/less/**/*.less' ]
      dir: 'css'

global.build =
  app: 'app'
  styles: 'app/assets/css'
  scripts: 'app/assets/js'
  fonts: 'app/assets/fonts'
  templates:
    app: './'
  screens: 'app/screenshots'


###
# REQUIRE ALL TASKS
###

tasks.forEach (task) ->
  require './tasks/' + task
  return
