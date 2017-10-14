# This file is generated automatically. Do not edit.
# Use project properties -> Build -> Qt -> Expert -> Custom Definitions.
TEMPLATE = app
DESTDIR = dist/Release/GNU-Linux
TARGET = HETEVAL
VERSION = 1.0.0
CONFIG -= debug_and_release app_bundle lib_bundle
CONFIG += release 
PKGCONFIG +=
QT = core gui widgets opengl printsupport
SOURCES += ../../2D_Laplace/2D_Laplace/BTC.cpp ../../2D_Laplace/2D_Laplace/BTCSet.cpp ../../2D_Laplace/2D_Laplace/Copula.cpp ../../2D_Laplace/2D_Laplace/Distribution.cpp ../../2D_Laplace/2D_Laplace/Grid.cpp ../../2D_Laplace/2D_Laplace/Matrix.cpp ../../2D_Laplace/2D_Laplace/Matrix_arma.cpp ../../2D_Laplace/2D_Laplace/Matrix_arma_sp.cpp ../../2D_Laplace/2D_Laplace/NormalDist.cpp ../../2D_Laplace/2D_Laplace/QuickSort.cpp ../../2D_Laplace/2D_Laplace/StringOP.cpp ../../2D_Laplace/2D_Laplace/Vector.cpp ../../2D_Laplace/2D_Laplace/Vector_arma.cpp ../../Qt_version/HETEVAL/HETEVAL/Pathway.cpp ../../Qt_version/HETEVAL/HETEVAL/PathwaySet.cpp ../../Qt_version/HETEVAL/HETEVAL/Plots.cpp ../../Qt_version/HETEVAL/HETEVAL/Position.cpp ../../Qt_version/HETEVAL/HETEVAL/Spectogram.cpp ../../Qt_version/HETEVAL/HETEVAL/_command.cpp ../../Qt_version/HETEVAL/HETEVAL/heteval.cpp ../../Qt_version/HETEVAL/HETEVAL/main.cpp ../../Qt_version/HETEVAL/HETEVAL/newForm.cpp
HEADERS += ../../2D_Laplace/2D_Laplace/BTC.h ../../2D_Laplace/2D_Laplace/BTCSet.h ../../2D_Laplace/2D_Laplace/Copula.h ../../2D_Laplace/2D_Laplace/Distribution.h ../../2D_Laplace/2D_Laplace/Grid.h ../../2D_Laplace/2D_Laplace/Matrix.h ../../2D_Laplace/2D_Laplace/Matrix_arma.h ../../2D_Laplace/2D_Laplace/Matrix_arma_sp.h ../../2D_Laplace/2D_Laplace/NormalDist.h ../../2D_Laplace/2D_Laplace/QuickSort.h ../../2D_Laplace/2D_Laplace/StringOP.h ../../2D_Laplace/2D_Laplace/Vector.h ../../2D_Laplace/2D_Laplace/Vector_arma.h ../../Qt_version/HETEVAL/HETEVAL/Pathway.h ../../Qt_version/HETEVAL/HETEVAL/PathwaySet.h ../../Qt_version/HETEVAL/HETEVAL/Position.h ../../Qt_version/HETEVAL/HETEVAL/Spectogram.h ../../Qt_version/HETEVAL/HETEVAL/_command.h ../../Qt_version/HETEVAL/HETEVAL/heteval.h ../../Qt_version/HETEVAL/HETEVAL/newForm.h ../../Qt_version/HETEVAL/HETEVAL/vtk.h
FORMS += ../../Qt_version/HETEVAL/HETEVAL/heteval.ui ../../Qt_version/HETEVAL/HETEVAL/newForm.ui
RESOURCES += ../../Qt_version/HETEVAL/HETEVAL/heteval.qrc
TRANSLATIONS +=
OBJECTS_DIR = build/Release/GNU-Linux
MOC_DIR = 
RCC_DIR = 
UI_DIR = 
QMAKE_CC = gcc
QMAKE_CXX = g++
DEFINES += 
INCLUDEPATH += ../../2D_Laplace/2D_Laplace/armadillo-header ../../2D_Laplace/2D_Laplace ../.. ../../gsl ../../../../VTK ../../Qt_version/HETEVAL ../../Qt_version/HETEVAL/HETEVAL ../../../../VTK/Common/Core ../../../../VTK/Common/Color ../../../../VTK/Common/ComputationalGeometry ../../../../VTK/Common/DataModel ../../../../VTK/Common/ExecutionModel ../../../../VTK/Common/Math ../../../../VTK/Common/Misc ../../../../VTK/Common/System ../../../../VTK/Common/Transforms ../../../../VTK/Rendering/Core ../../../../VTK/Rendering/Annotation ../../../../VTK/Rendering/Context2D ../../../../VTK/Charts/Core ../../../../VTK/Views/Context2D ../../../../VTK/Views/Core ../../../../VTK/Interaction/Style ../../../../VTK/Filters/Modeling ../../../../VTK/Interaction/Widgets ../../../../VTK/Interaction/Image ../../../../VTK/Filters/Core ../../../../VTK/IO/XML ../../../../VTK/Filters/Sources ../../../../VTK/Filters/General ../../../../VTK/IO/Image ../../../../VTK/Imaging/Core ../../../../VTK-build/Common/Core ../../../../VTK-build/Utilities/KWIML ../../../../VTK/Utilities/KWIML/vtkkwiml/include ../../../../VTK/Utilities/KWIML ../../../../VTK-build/Rendering/Core ../../../../VTK-build/Filters/Core ../../../../VTK-build/Charts/Core ../../../../VTK-build/Filters/General ../../../../VTK-build/Rendering/Context2D ../../../../VTK-build/Common/DataModel ../../../../VTK-build/Views/Context2D ../../../../VTK-build/Views/Core ../../../../VTK-build/Interaction/Widgets ../../../../VTK-build/Interaction/Style ../../../../VTK-build/Filters/Modeling ../../../../VTK-build/Common/ExecutionModel ../../../../VTK-build/Common/Misc ../../../../VTK-build/IO/XML ../../../../VTK-build/Filters/Sources ../../../../VTK-build/IO/Image ../../../../VTK-build/Imaging/Core ../../../../Qt/5.8/gcc_64/include/QtWidgets ../../../../Qt/5.8/gcc_64/include/QtSvg ../../../../Qt/5.8/gcc_64/include ../../Qt_version/HETEVAL/HETEVAL/qwt-6.1.3/src 
LIBS += -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkChartsCore-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkCommonColor-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkCommonComputationalGeometry-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkCommonCore-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkCommonDataModel-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkCommonExecutionModel-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkCommonMath-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkCommonMisc-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkCommonSystem-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkCommonTransforms-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkDICOMParser-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkDomainsChemistry-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkDomainsChemistryOpenGL2-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersAMR-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersCore-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersExtraction-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersFlowPaths-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersGeneral-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersGeneric-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersGeometry-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersHybrid-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersHyperTree-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersImaging-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersModeling-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersParallel-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersParallelImaging-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersPoints-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersProgrammable-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersSMP-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersSelection-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersSources-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersStatistics-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersTexture-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersTopology-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkFiltersVerdict-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkGeovisCore-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOAMR-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOCore-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOEnSight-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOExodus-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOExport-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOExportOpenGL2-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOGeometry-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOImage-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOImport-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOInfovis-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOLSDyna-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOLegacy-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOMINC-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOMovie-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIONetCDF-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOPLY-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOParallel-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOParallelXML-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOSQL-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOTecplotTable-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOVideo-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOXML-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkIOXMLParser-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkImagingColor-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkImagingCore-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkImagingFourier-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkImagingGeneral-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkImagingHybrid-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkImagingMath-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkImagingMorphological-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkImagingSources-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkImagingStatistics-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkImagingStencil-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkInfovisCore-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkInfovisLayout-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkInteractionImage-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkInteractionStyle-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkInteractionWidgets-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkNetCDF-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkParallelCore-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkRenderingAnnotation-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkRenderingContext2D-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkRenderingContextOpenGL2-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkRenderingCore-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkRenderingFreeType-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkRenderingGL2PSOpenGL2-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkRenderingImage-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkRenderingLOD-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkRenderingLabel-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkRenderingOpenGL2-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkRenderingVolume-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkRenderingVolumeOpenGL2-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkTestingGenericBridge-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkTestingIOSQL-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkTestingRendering-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkViewsContext2D-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkViewsCore-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkViewsInfovis-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkalglib-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkexoIIc-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkexpat-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkfreetype-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkgl2ps-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkglew-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkhdf5-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkhdf5_hl-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkjpeg-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkjsoncpp-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtklibharu-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtklibxml2-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtklz4-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkmetaio-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtknetcdfcpp-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkoggtheora-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkpng-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkproj4-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtksqlite-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtksys-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtktiff-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkverdict-8.1.so -Wl,-rpath,../../../../VTK-build/lib ../../../../VTK-build/lib/libvtkzlib-8.1.so -Wl,-rpath,../../../../qwt-6.1.3/lib ../../../../qwt-6.1.3/lib/libqwt.so -Wl,-rpath,../../../../Qt/5.8/gcc_64/lib ../../../../Qt/5.8/gcc_64/lib/libQt5Widgets.so -Wl,-rpath,../../../../Qt/5.8/gcc_64/lib ../../../../Qt/5.8/gcc_64/lib/libQt5PrintSupport.so -Wl,-rpath,../../../../Qt/5.8/gcc_64/lib ../../../../Qt/5.8/gcc_64/lib/libQt5Core.so -Wl,-rpath,../../../../Qt/5.8/gcc_64/lib ../../../../Qt/5.8/gcc_64/lib/libQt5Gui.so -Wl,-rpath,../../../../Qt/5.8/gcc_64/lib ../../../../Qt/5.8/gcc_64/lib/libQt5OpenGL.so -Wl,-rpath,../../../../Qt/5.8/gcc_64/lib ../../../../Qt/5.8/gcc_64/lib/libQt5Svg.so -larmadillo -lblas -llapack -lgslcblas -lgsl -lsuperlu  
equals(QT_MAJOR_VERSION, 4) {
QMAKE_CXXFLAGS += -std=c++11
}
equals(QT_MAJOR_VERSION, 5) {
CONFIG += c++11
}
