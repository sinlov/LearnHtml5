.PHONY: test check clean build dist all

TOP_DIR := $(shell pwd)

ROOT_DIST ?= ./dist
ROOT_REPO ?= ./dist
ROOT_LOG_PATH ?= ./log

init:
	yarn add html5-boilerplate

cleanBuild:
	@if [ -d ${ROOT_BUILD_PATH} ]; then rm -rf ${ROOT_BUILD_PATH} && echo "~> cleaned ${ROOT_BUILD_PATH}"; else echo "~> has cleaned ${ROOT_BUILD_PATH}"; fi

cleanLog:
	@if [ -d ${ROOT_LOG_PATH} ]; then rm -rf ${ROOT_LOG_PATH} && echo "~> cleaned ${ROOT_LOG_PATH}"; else echo "~> has cleaned ${ROOT_LOG_PATH}"; fi

cleanDist:
	@if [ -d ${ROOT_DIST} ]; then rm -rf ${ROOT_DIST} && echo "~> cleaned ${ROOT_DIST}"; else echo "~> has cleaned ${ROOT_DIST}"; fi

clean: cleanBuild cleanLog
	@echo "~> clean finish"

dependencies:
	@echo "this project need [ node ] [ yarn ] [ gulp ]"
	@echo "just install yarn by https://yarnpkg.com"
	@echo "just install gulp by -> npm install --global gulp"

build:
	gulp build

help:
	@echo "make init ~> just init this"
	@echo "make clean ~> just clean"
	@echo "make dependencies ~> just print dependencies"
	@echo ""
	@echo "make build ~> will run script to build"