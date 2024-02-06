const gulp = require('gulp');
const sass = require('gulp-sass')(require('sass'));
const browserSync = require('browser-sync').create();

function styles() {
	return gulp.src('./scss/main.scss')
	.pipe(sass().on('error', sass.logError))
	.pipe(gulp.dest('./css'))
	.pipe(browserSync.stream())
};

function watch_dev() {
  browserSync.init({
  	server: {
  		baseDir: './'
  	}
  	});
  gulp.watch('./index.html').on('change', browserSync.reload);

  gulp.watch('./scss/**/*.scss', styles);
};

exports.styles = styles;

exports.default = gulp.parallel(
	styles,
	watch_dev
);


exports.default = gulp.series(
	styles,
	watch_dev
	);
