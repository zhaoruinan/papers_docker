git clone https://github.com/alex04072000/ObstructionRemoval.git
rsync -a ObstructionRemoval/tfoptflow ObstructionRemoval/temp_tfoptflow
rm -r ObstructionRemoval/tfoptflow
git clone https://github.com/philferriere/tfoptflow.git ObstructionRemoval/tfoptflow
cp -rf ObstructionRemoval/temp_tfoptflow/tfoptflow/tfoptflow/model_pwcnet.py ObstructionRemoval/tfoptflow/tfoptflow/model_pwcnet.py 
cp -rf ObstructionRemoval/temp_tfoptflow/tfoptflow/tfoptflow/model_base.py ObstructionRemoval/tfoptflow/tfoptflow/model_base.py 
mkdir ObstructionRemoval/code_and_ckpt 
cd ObstructionRemoval/code_and_ckpt
wget https://www.cmlab.csie.ntu.edu.tw/~yulunliu/ObstructionRemoval_/code_and_ckpt.zip
unzip code_and_ckpt.zip 
cd ~
cp -r ObstructionRemoval/code_and_ckpt/tfoptflow/tfoptflow/models/* ObstructionRemoval/tfoptflow/tfoptflow/models/ 
cp -r ObstructionRemoval/code_and_ckpt/ckpt* ObstructionRemoval/

