# cmake-project-template

### Build
* Prepare environment by sourcing script prepare-env.sh
```bash
source scripts/prepare-env.sh
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

Because in the project there is no libraries' types specified, you can choose what type you need by passing `-DBUILD_SHARED_LIBS=ON/OFF` switch do `cmake` command, e.g.
```bash
cmake .. -DBUILD_SHARED_LIBS=ON
```
Above command will generate all unspecified libraries added using `add_library()` as __shared__