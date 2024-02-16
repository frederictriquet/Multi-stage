
```shell
./build.sh
```
Output:

| TAG         | SIZE  |
| ----------- | ----- |
| multi       | 212MB |
| clever      | 428MB |
| simple      | 427MB |
| worst-multi | 212MB |
| dummy       | 445MB |
| worst       | 446MB |

Conclusions:

* combining multiple `RUN` statements remains useful
* always prefer multi-stage builds
  * you can keep writing a readable builder stage (whithout necessarily combining the `RUN`s there)
  * focus your optimizations on the runner stage

* More tests could be relevant, especially using more realistic Dockerfiles

