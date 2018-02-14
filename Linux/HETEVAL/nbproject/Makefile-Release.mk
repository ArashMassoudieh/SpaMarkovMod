#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as
QMAKE=qmake

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES=


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=${vtk_build}/lib/libvtkChartsCore-8.1.so ${vtk_build}/lib/libvtkCommonColor-8.1.so ${vtk_build}/lib/libvtkCommonComputationalGeometry-8.1.so ${vtk_build}/lib/libvtkCommonCore-8.1.so ${vtk_build}/lib/libvtkCommonDataModel-8.1.so ${vtk_build}/lib/libvtkCommonExecutionModel-8.1.so ${vtk_build}/lib/libvtkCommonMath-8.1.so ${vtk_build}/lib/libvtkCommonMisc-8.1.so ${vtk_build}/lib/libvtkCommonSystem-8.1.so ${vtk_build}/lib/libvtkCommonTransforms-8.1.so ${vtk_build}/lib/libvtkDICOMParser-8.1.so ${vtk_build}/lib/libvtkDomainsChemistry-8.1.so ${vtk_build}/lib/libvtkDomainsChemistryOpenGL2-8.1.so ${vtk_build}/lib/libvtkFiltersAMR-8.1.so ${vtk_build}/lib/libvtkFiltersCore-8.1.so ${vtk_build}/lib/libvtkFiltersExtraction-8.1.so ${vtk_build}/lib/libvtkFiltersFlowPaths-8.1.so ${vtk_build}/lib/libvtkFiltersGeneral-8.1.so ${vtk_build}/lib/libvtkFiltersGeneric-8.1.so ${vtk_build}/lib/libvtkFiltersGeometry-8.1.so ${vtk_build}/lib/libvtkFiltersHybrid-8.1.so ${vtk_build}/lib/libvtkFiltersHyperTree-8.1.so ${vtk_build}/lib/libvtkFiltersImaging-8.1.so ${vtk_build}/lib/libvtkFiltersModeling-8.1.so ${vtk_build}/lib/libvtkFiltersParallel-8.1.so ${vtk_build}/lib/libvtkFiltersParallelImaging-8.1.so ${vtk_build}/lib/libvtkFiltersPoints-8.1.so ${vtk_build}/lib/libvtkFiltersProgrammable-8.1.so ${vtk_build}/lib/libvtkFiltersSMP-8.1.so ${vtk_build}/lib/libvtkFiltersSelection-8.1.so ${vtk_build}/lib/libvtkFiltersSources-8.1.so ${vtk_build}/lib/libvtkFiltersStatistics-8.1.so ${vtk_build}/lib/libvtkFiltersTexture-8.1.so ${vtk_build}/lib/libvtkFiltersTopology-8.1.so ${vtk_build}/lib/libvtkFiltersVerdict-8.1.so ${vtk_build}/lib/libvtkGeovisCore-8.1.so ${vtk_build}/lib/libvtkIOAMR-8.1.so ${vtk_build}/lib/libvtkIOCore-8.1.so ${vtk_build}/lib/libvtkIOEnSight-8.1.so ${vtk_build}/lib/libvtkIOExodus-8.1.so ${vtk_build}/lib/libvtkIOExport-8.1.so ${vtk_build}/lib/libvtkIOExportOpenGL2-8.1.so ${vtk_build}/lib/libvtkIOGeometry-8.1.so ${vtk_build}/lib/libvtkIOImage-8.1.so ${vtk_build}/lib/libvtkIOImport-8.1.so ${vtk_build}/lib/libvtkIOInfovis-8.1.so ${vtk_build}/lib/libvtkIOLSDyna-8.1.so ${vtk_build}/lib/libvtkIOLegacy-8.1.so ${vtk_build}/lib/libvtkIOMINC-8.1.so ${vtk_build}/lib/libvtkIOMovie-8.1.so ${vtk_build}/lib/libvtkIONetCDF-8.1.so ${vtk_build}/lib/libvtkIOPLY-8.1.so ${vtk_build}/lib/libvtkIOParallel-8.1.so ${vtk_build}/lib/libvtkIOParallelXML-8.1.so ${vtk_build}/lib/libvtkIOSQL-8.1.so ${vtk_build}/lib/libvtkIOTecplotTable-8.1.so ${vtk_build}/lib/libvtkIOVideo-8.1.so ${vtk_build}/lib/libvtkIOXML-8.1.so ${vtk_build}/lib/libvtkIOXMLParser-8.1.so ${vtk_build}/lib/libvtkImagingColor-8.1.so ${vtk_build}/lib/libvtkImagingCore-8.1.so ${vtk_build}/lib/libvtkImagingFourier-8.1.so ${vtk_build}/lib/libvtkImagingGeneral-8.1.so ${vtk_build}/lib/libvtkImagingHybrid-8.1.so ${vtk_build}/lib/libvtkImagingMath-8.1.so ${vtk_build}/lib/libvtkImagingMorphological-8.1.so ${vtk_build}/lib/libvtkImagingSources-8.1.so ${vtk_build}/lib/libvtkImagingStatistics-8.1.so ${vtk_build}/lib/libvtkImagingStencil-8.1.so ${vtk_build}/lib/libvtkInfovisCore-8.1.so ${vtk_build}/lib/libvtkInfovisLayout-8.1.so ${vtk_build}/lib/libvtkInteractionImage-8.1.so ${vtk_build}/lib/libvtkInteractionStyle-8.1.so ${vtk_build}/lib/libvtkInteractionWidgets-8.1.so ${vtk_build}/lib/libvtkNetCDF-8.1.so ${vtk_build}/lib/libvtkParallelCore-8.1.so ${vtk_build}/lib/libvtkRenderingAnnotation-8.1.so ${vtk_build}/lib/libvtkRenderingContext2D-8.1.so ${vtk_build}/lib/libvtkRenderingContextOpenGL2-8.1.so ${vtk_build}/lib/libvtkRenderingCore-8.1.so ${vtk_build}/lib/libvtkRenderingFreeType-8.1.so ${vtk_build}/lib/libvtkRenderingGL2PSOpenGL2-8.1.so ${vtk_build}/lib/libvtkRenderingImage-8.1.so ${vtk_build}/lib/libvtkRenderingLOD-8.1.so ${vtk_build}/lib/libvtkRenderingLabel-8.1.so ${vtk_build}/lib/libvtkRenderingOpenGL2-8.1.so ${vtk_build}/lib/libvtkRenderingVolume-8.1.so ${vtk_build}/lib/libvtkRenderingVolumeOpenGL2-8.1.so ${vtk_build}/lib/libvtkViewsContext2D-8.1.so ${vtk_build}/lib/libvtkViewsCore-8.1.so ${vtk_build}/lib/libvtkViewsInfovis-8.1.so ${vtk_build}/lib/libvtkalglib-8.1.so ${vtk_build}/lib/libvtkexoIIc-8.1.so ${vtk_build}/lib/libvtkexpat-8.1.so ${vtk_build}/lib/libvtkfreetype-8.1.so ${vtk_build}/lib/libvtkgl2ps-8.1.so ${vtk_build}/lib/libvtkglew-8.1.so ${vtk_build}/lib/libvtkhdf5-8.1.so ${vtk_build}/lib/libvtkhdf5_hl-8.1.so ${vtk_build}/lib/libvtkjpeg-8.1.so ${vtk_build}/lib/libvtkjsoncpp-8.1.so ${vtk_build}/lib/libvtklibharu-8.1.so ${vtk_build}/lib/libvtklibxml2-8.1.so ${vtk_build}/lib/libvtklz4-8.1.so ${vtk_build}/lib/libvtkmetaio-8.1.so ${vtk_build}/lib/libvtknetcdfcpp-8.1.so ${vtk_build}/lib/libvtkoggtheora-8.1.so ${vtk_build}/lib/libvtkpng-8.1.so ${vtk_build}/lib/libvtkproj4-8.1.so ${vtk_build}/lib/libvtksqlite-8.1.so ${vtk_build}/lib/libvtksys-8.1.so ${vtk_build}/lib/libvtktiff-8.1.so ${vtk_build}/lib/libvtkverdict-8.1.so ${vtk_build}/lib/libvtkzlib-8.1.so ../../../../qwt-6.1.3/lib/libqwt.so -larmadillo -lblas -llapack -lgslcblas -lgsl -lsuperlu

nbproject/qt-${CND_CONF}.mk: nbproject/qt-${CND_CONF}.pro FORCE
	${QMAKE} VPATH=. -o qttmp-${CND_CONF}.mk nbproject/qt-${CND_CONF}.pro
	mv -f qttmp-${CND_CONF}.mk nbproject/qt-${CND_CONF}.mk

FORCE:

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS} nbproject/qt-${CND_CONF}.mk
	"${MAKE}" -f nbproject/qt-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/HETEVAL

${CND_BUILDDIR}/Release/%.o: nbproject/qt-${CND_CONF}.mk
	${MAKE} -f nbproject/qt-${CND_CONF}.mk "$@"

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS} nbproject/qt-${CND_CONF}.mk
	${MAKE} -f nbproject/qt-${CND_CONF}.mk distclean

# Subprojects
.clean-subprojects:
