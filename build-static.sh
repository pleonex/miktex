rm -rf /workspaces/miktex/build
mkdir /workspaces/miktex/build
cd /workspaces/miktex/build
cmake -DMIKTEX_SELF_CONTAINED=TRUE -DWITH_UI_QT=FALSE -DLINK_EVERYTHING_STATICALLY=FALSE -DUSE_SYSTEM_LOG4CXX=FALSE -DUSE_SYSTEM_MSPACK=FALSE -DUSE_SYSTEM_URIPARSER=FALSE ..
cd build
make -j4
