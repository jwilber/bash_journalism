# Downloads baby names by state for us and buts them in ssa_baby_names

mkdir -p data-hold

cd data-hold

curl http://stash.compciv.org/ssa_baby_names/namesbystate.zip -o namesbystate.zip

unzip namesbystate.zip

rm namesbystate.zip

cd ..
