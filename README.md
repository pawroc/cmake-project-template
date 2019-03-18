# cmake-project-template

### Build
* Prepare environment by sourcing script prepare-env.sh
```bash
source app/buildscript/prepare-env.sh
```
* Create build directory
```bash
mkdir app/build
```
* Generate Makefile (or another build script by chosing different generator in cmake command)
```bash
cd app/build
cmake ..
```
* Build application
```bash
cmake --build .
```