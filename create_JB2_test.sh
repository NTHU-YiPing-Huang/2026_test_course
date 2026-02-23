#!/bin/bash
#
# We need the GNU gettext utilities

# Definition of environment variables
export book_name="2026_JB2_Test" # The folder name on the machine, so we need the _
export author="Yi-Ping Huang"
export course_name="2026 Test course" # The project name that shows up on the html page
export git_repo_name="2026_test_course" # The git repo name for gh to create the repo automatically

#export file_dir="/Users/yi-pinghuang/Dropbox/AsProfessor/Teaching/files_for_course_website_template/" #The file directory for required files
#
#export Logo=$file_dir"Logo/logo.png"
#export Script_path=$file_dir"useful_scripts"
#export Environment="book" #On macbook pro M1
#
#
## Run jupyter book
#
#echo "We will create the jupyter book. First, activate the book environment"
#
#source activate
#
#conda activate $Environment
#
#echo "We will next generate the template for jupyter book."
#
#jupyter-book create $book_name
#
#
## Copy useful scripts and data
#
#echo "We will put a suitable logo to our website."
#cp $Logo $book_name
#
#echo "We will put some useful scripts to the folder with suitable variables."
#
#envsubst < $Script_path/buildhtml.sh >> buildhtml.sh
#envsubst < $Script_path/buildpdf.sh >> buildpdf.sh
#envsubst < $Script_path/publish_online.sh >> publish_online.sh
#
## Remove the ipython file where including graphics is problematic
#
#rm $book_name/notebooks.ipynb
#rm $book_name/markdown-notebooks.md
#rm $book_name/intro.md
#rm $book_name/markdown.md
#
#echo "# $course_name" > $book_name/syllabus.md
#echo "# Introduction" > $book_name/introduction.md
#
## Replace the key words in the yml files sed on mac and sed on linux works differently. one need -i '' on macos 
#sed -i '' 's/My\ sample\ book/'"$course_name"'/g' $book_name/_config.yml
#sed -i '' 's/The\ Jupyter\ Book\ Community/'"$author"'/g' $book_name/_config.yml
#
#sed -i '' -e $'$a\\\n\\' $book_name/_config.yml
#sed -i '' -e $'$a\\\n\\parse:' $book_name/_config.yml
#sed -i '' -e $'$a\\\n\\  myst_enable_extensions:' $book_name/_config.yml
#sed -i '' -e $'$a\\\n\\    - amsmath' $book_name/_config.yml
#sed -i '' -e $'$a\\\n\\    - dollarmath' $book_name/_config.yml
#
#sed -i '' 's/intro/'syllabus'/g' $book_name/_toc.yml
#sed -i '' 's/markdown/'introduction'/g' $book_name/_toc.yml
#sed -i '' '8d;9d' $book_name/_toc.yml
#
## build the html
#
#sh buildhtml.sh

# Create a github repo; might need to run gh auth login to get the right credential
gh repo create $git_repo_name --public

### Create github pages
##cp -r $book_name Online_$book_name
#cd $book_name
#git init
#git add _build/html syllabus.md
#git commit -m "first commit"
#
#git remote add origin git@github.com:NTHU-YiPing-Huang/$git_repo_name.git
#ghp-import -n -p -f _build/html
#
##git push
#
##git remote add origin git@github.com:NTHU-YiPing-Huang/$book_name.git
##git push -u origin master

