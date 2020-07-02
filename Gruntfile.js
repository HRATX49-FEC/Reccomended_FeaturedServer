module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    uglify: {
      options: {
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
      },
      build: {
        src: 'client/dist/bundle.js',
        dest: 'build/bundle.min.js'
      }
    },
  });

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-uglify');

  //Eventually you can set up grunt to watch your files. So a new build folder will be made everytime you change your bundle or css files
  // Auto deploy to S3

  // Default task(s).
  grunt.registerTask('default', ['uglify']);
};