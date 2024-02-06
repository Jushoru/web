var gulp = require('gulp');
const browserSync = require('browser-sync').create();


// Первая простейшая задача Gulp
gulp.task ('mytask', function () {
	console.log('The first task was completed!');
});


// Task для работы с BrowserSync
gulp.task ('browserSync', function() {
  browserSync.init({
  	server: {
  		baseDir: './Layout/'
  	}
  	});
  gulp.watch('./Layout/index.html').on('change', browserSync.reload);
});

gulp.task('sync', gulp.series('browserSync'));
