2011-07-01

From now on XLS files must be saved as Excel95.
xlsread MUST be used in 'basic' mode...
THIS makes everything really faster!

For now, I still don't know how to create a new JXL WorkBook object as an Excel95,
THEREFORE we MUST (both for output.xls and groundtruth.xls):
1) open the Excel97-2000 file
2) save as Excel95

THEN, we can use Matlab scripts.


-----------------------------------------------------------------------------------------

UPDATE (2011-07-03): we don't use anymore basic mode because opening the file and saving it as Excel95 is slower
than reading in normal mode