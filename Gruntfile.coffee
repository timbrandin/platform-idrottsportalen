module.exports = (grunt) ->
  # Project configuration.
  themePath = "web/profiles/idrottsportalen/themes/custom/idpo"
  mainFile = themePath + "/css/main"
  paths = ["components/bootstrap/less", themePath + "/css/"]
  console.log mainFile + ".less"
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    less:
      development:
        options:
          paths: paths 
        files:
          "web/profiles/idrottsportalen/themes/custom/idpo/css/main.css": "web/profiles/idrottsportalen/themes/custom/idpo/css/main.less"
      production:
        options:
          paths: paths
          yuicompress: true
        files:
          mainFile + ".css": mainFile + ".less"
    watch:
      scripts:
        files: [themePath + "/css/*.less"]
        tasks: ['less']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-contrib-watch'
