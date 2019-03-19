# cmake-project-template

### Build
* Prepare environment by sourcing script prepare-env.sh
```bash
source scripts/prepare-env.sh
```
* Create build directory
```bash
mkdir build
```
* Generate Makefile (or another build script by chosing different generator in cmake command)
```bash
cd build
cmake ..
```
* Build application
```bash
cmake --build .
```