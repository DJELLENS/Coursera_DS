% dellens@umich.edu

% make directories for R00XX in the SkilledReaching folder on nas (or
% anywhere you direct)
% see leventhal nas data directory structure.doc for lab data folder
% structuture
% nas 1 = 172.20.138.142
% nas 2 = 172.20.138.143

%nasIP = '172.20.138.142'
%rootNasDir = ['//' nasIP];

 if ispc
     nasAddress = '\\nasIP\RecordingsLeventhal3';
 elseif ismac
     nasAddress = '/Volumes/RecordingsLeventhal3';
 end

 workingDir = uigetdir(fullfile(nasAddress,'SkilledReaching'));
 
 disp('Please enter the # (XX) for the subject(s):')
 result = input('XX=');
 ratNum = num2str(result);
 ratName = strcat('R00',ratNum); %change to R0 when rat number exceeds 99
 ratHisto = strcat(ratName, '-histology');
 ratLfp = strcat(ratName, '-lfp');
 ratRawdata = strcat(ratName, '-rawdata');
 ratProcessed = strcat(ratName, '-processed');
 
 mkdir(fullfile(workingDir, ratName, ratHisto, 'Nissl'));
 mkdir(fullfile(workingDir, ratName, ratHisto, 'IHC'));
 mkdir(fullfile(workingDir, ratName, ratLfp)); 
 mkdir(fullfile(workingDir, ratName, ratRawdata)); 
 mkdir(fullfile(workingDir, ratName, ratProcessed)); 
 
 %mkdir('//172.20.138.142/RecordingsLeventhal3/SkilledReaching/', fullfile(ratName, ratRawdata))
 %mkdir('/Users/damienjellens/Desktop/', fullfile(ratName, ratHisto, 'Nissl'));
 %mkdir('/Users/damienjellens/Desktop/', fullfile(ratName, ratHisto, 'IHC'));
 %mkdir('/Users/damienjellens/Desktop/', fullfile(ratName, ratLfp)); 
 %mkdir('/Users/damienjellens/Desktop/', fullfile(ratName, ratRawdata)); 
 %mkdir('/Users/damienjellens/Desktop/', fullfile(ratName, ratProcessed)); 
 %test
 
close;