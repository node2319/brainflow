rmdir /S /Q build
mkdir build

cd build
cmake -G "Visual Studio 14 2015 Win64" -DCMAKE_SYSTEM_VERSION=8.1 ..
cmake --build .
cd ..

echo F | xcopy /Y .\compiled\Debug\BoardController.dll .\python-package\brainflow\lib\BoardController.dll

echo F | xcopy /Y .\compiled\Debug\BoardController.dll .\cpp-package\lib\BoardController.dll
echo F | xcopy /Y .\compiled\Debug\BoardController.lib .\cpp-package\lib\BoardController.lib
echo F | xcopy /Y .\src\board_controller\inc\board_controller.h .\cpp-package\inc\board_controller.h

echo F | xcopy /Y .\compiled\Debug\BoardController.dll .\matlab-package\brainflow\lib\BoardController.dll
echo F | xcopy /Y .\compiled\Debug\BoardController.lib .\matlab-package\brainflow\lib\BoardController.lib
echo F | xcopy /Y .\src\board_controller\inc\board_controller.h .\matlab-package\brainflow\inc\board_controller.h

echo F | xcopy /Y .\compiled\Debug\BoardController.dll .\java-package\brainflow\src\main\resources\BoardController.dll
echo F | xcopy /Y .\compiled\Debug\BoardController.lib .\java-package\brainflow\src\main\resources\BoardController.lib

echo F | xcopy /Y .\compiled\Debug\BoardController.dll .\csharp-package\brainflow\brainflow\BoardController.dll

echo F | xcopy /Y .\compiled\Debug\BoardController.dll .\data\lib\BoardController.dll
echo F | xcopy /Y .\compiled\Debug\BoardController.lib .\data\lib\BoardController.lib
echo F | xcopy /Y .\src\board_controller\inc\board_controller.h .\data\inc\board_controller.h