# Robot Framework Browser GitHub Action
Github action can be used to run Robot Framework tests.
Based on https://github.com/tarathep/robotframework-github-action
using https://hub.docker.com/r/ppodgorsek/robot-framework for base image.

But supports also a modified version of https://github.com/MarketSquare/robotframework-browser/tree/main/docker

## Example usage

Example run with Custom image

```yaml
jobs:
  robot_test:
    runs-on: ubuntu-latest
    - name: Robot Framework
      uses: GoleeTeam/robotframework-github-action@v1.0
      with:
        image: ???
        image_version: latest
        tests_dir: '${{ github.workspace }}/tests/robot'
        reports_dir: '${{ github.workspace }}/tests/robot/reports'
```


## Configurations

Available configurations in with block:

| Name                     | Default                    | Description                                               |
| ------------------------ | -------------              | ----------------------------------------------            |
| image                    | ppodgorsek/robot-framework | Custom image name for execute robot framework             |
| image_version            | latest                     | Custom tag verion image for execute robot framework       |
| tests_dir                | robot_tests                | Directory where Robot tests are located in the repository |
| reports_dir              | reports                    | Where will the report from test be saved                  |
| allowed_shared_memory    | '1g'                       | How much container can use shared memory                  |
| browser                  | 'chrome'                   | Available options chrome / firefox                        |
| robot_threads            | 1                          | Change this > 1 if you want to run tests in parallel      |
| pabot_options            | ''                         | These are only used if robot_threads > 1                  |
| robot_options            | ''                         | Pass extra settings for robot command                     |
| screen_color_depth       | 24                         | Color depth of the virtual screen                         |
| screen_height            | 1080                       | Height of the virtual screen                              |
| screen_width             | 1920                       | Width of the virtual screen                               |



credit ref. https://github.com/joonvena/robotframework-docker-action
