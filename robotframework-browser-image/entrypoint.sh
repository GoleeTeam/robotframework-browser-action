#!/bin/sh
# Inspired by https://github.com/ppodgorsek/docker-robot-framework/blob/master/bin/run-tests-in-virtual-screen.sh
# to keep compatibility with ppodgorsek/docker-robot-framework

if [ "${ROBOT_TEST_RUN_ID}" = "" ]
then
    ROBOT_REPORTS_FINAL_DIR="${ROBOT_REPORTS_DIR}"
else
    REPORTS_DIR_HAS_TRAILING_SLASH=`echo ${ROBOT_REPORTS_DIR} | grep '/$'`

    if [ ${REPORTS_DIR_HAS_TRAILING_SLASH} -eq 0 ]
    then
        ROBOT_REPORTS_FINAL_DIR="${ROBOT_REPORTS_DIR}${ROBOT_TEST_RUN_ID}"
    else
        ROBOT_REPORTS_FINAL_DIR="${ROBOT_REPORTS_DIR}/${ROBOT_TEST_RUN_ID}"
    fi
fi

robot \
        --outputDir ${ROBOT_REPORTS_FINAL_DIR} \
        ${ROBOT_OPTIONS} \
        ${ROBOT_TESTS_DIR}