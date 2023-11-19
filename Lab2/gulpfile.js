//Первая простейшая задача Gulp
// var gulp = require('gulp');

// gulp.task ('mytask', function () {
// 	console.log('The first task was completed!');
// });

const gulp = require('gulp');
const browserSync = require('browser-sync').create();

gulp.task ('browserSync', function() {
  browserSync.init({
  	server: {
  		baseDir: './Layout/'
  	}
  	});
  gulp.watch('C:/Users/smirn/web/lab2/GulpTusk/Layout/index.html').on('change', browserSync.reload);
});

gulp.task('sync', gulp.series('browserSync'));
