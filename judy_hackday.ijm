//pre_process

run("Split Channels");
selectWindow("C1-the good one DGML.tif");
run("Duplicate...", "duplicate");
run("Gaussian Blur 3D...", "x=1 y=1 z=1");

// Folder contains binary images only output from WEKA
dir= getDirectory("choose tiffs");
DirRaw = getDirectory("choose tiffs")

list = getFileList(dir);
list = Array.sort(list);
Array.show(list);

RawimNames= getFileList(DirRaw); //channel2 images only
RawimNames = Array.sort(RawimNames);
Array.show(RawimNames);

//setBatchMode("hide");
for (i=0; i<list.length; i++) {
open(dir+list[i]);
run("Make Binary", "method=Default background=Default calculate");
rename("Original");
run("Duplicate...", "duplicate","title=Dilated");
run("Options...", "iterations=3 count=1");
run("Dilate");
imageCalculator("Subtract create stack", "Dilated","Original");
rename("FinalMask");
run("Set Measurements...", "area redirect=None decimal=3");
run("Analyze Particles...", "size=0.2-Infinity show=Masks display clear summarize add stack");

open(DirRaw+RawimNames[i]);
run("Subtract Background...","rolling=50");
roiManager("Associate", "True");
roiManager("Measure");

save(path);
save(path);
save(path);

