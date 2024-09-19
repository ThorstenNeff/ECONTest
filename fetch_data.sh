#!/bin/bash

cd /content/ECON
mkdir -p data/smpl_related/models

# SMPL (Male, Female)
echo -e "\nDownloading SMPL..."
cp /content/drive/MyDrive/TechConda/SMPL_python_v.1.0.0.zip /content/ECON/data/smpl_related/models/SMPL_python_v.1.0.0.zip
unzip data/smpl_related/models/SMPL_python_v.1.0.0.zip -d data/smpl_related/models
mv data/smpl_related/models/smpl/models/basicModel_f_lbs_10_207_0_v1.0.0.pkl data/smpl_related/models/smpl/SMPL_FEMALE.pkl
mv data/smpl_related/models/smpl/models/basicmodel_m_lbs_10_207_0_v1.0.0.pkl data/smpl_related/models/smpl/SMPL_MALE.pkl
cd data/smpl_related/models
rm -rf *.zip __MACOSX smpl/models smpl/smpl_webuser
cd ../../..

# SMPL (Neutral, from SMPLIFY)
echo -e "\nDownloading SMPLify..."
cp /content/drive/MyDrive/TechConda/mpips_smplify_public_v2.zip /content/ECON/data/smpl_related/models/mpips_smplify_public_v2.zip
unzip data/smpl_related/models/mpips_smplify_public_v2.zip -d data/smpl_related/models
mv data/smpl_related/models/smplify_public/code/models/basicModel_neutral_lbs_10_207_0_v1.0.0.pkl data/smpl_related/models/smpl/SMPL_NEUTRAL.pkl
cd data/smpl_related/models
rm -rf *.zip smplify_public 
cd ../../..

# SMPL-X
echo -e "\nDownloading SMPL-X..."
cp /content/drive/MyDrive/TechConda/models_smplx_v1_1.zip /content/ECON/data/smpl_related/models/models_smplx_v1_1.zip
unzip data/smpl_related/models/models_smplx_v1_1.zip -d data/smpl_related
rm -f data/smpl_related/models/models_smplx_v1_1.zip

# ECON
echo -e "\nDownloading ECON..."
cp /content/drive/MyDrive/TechConda/econ_data.zip /content/ECON/data/econ_data.zip
cd data && unzip econ_data.zip
mv smpl_data smpl_related/
rm -f econ_data.zip
cd ..

mkdir -p data/HPS

# PIXIE
echo -e "\nDownloading PIXIE..."
cp /content/drive/MyDrive/TechConda/pixie_data.zip /content/ECON/data/HPS/pixie_data.zip
cd data/HPS && unzip pixie_data.zip
rm -f pixie_data.zip
cd ../..

# PyMAF-X
echo -e "\nDownloading PyMAF-X..."
cp /content/drive/MyDrive/TechConda/pymafx_data.zip /content/ECON/data/HPS/pymafx_data.zip
cd data/HPS && unzip pymafx_data.zip
rm -f pymafx_data.zip
cd ../..