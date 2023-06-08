
package:
	hugo

deploy: package
	export AWS_PROFILE=theater && hugo deploy
	export AWS_PROFILE=theater && aws cloudfront create-invalidation --distribution-id EOHU671VD39KC --paths '/*'