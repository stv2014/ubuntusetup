#!/bin/sh
VERSION=2016-10-31
URL=https://nlp.stanford.edu/software/stanford-ner-$VERSION.zip

VERSION_TAGGER=$VERSION
URL_TAGGER=https://nlp.stanford.edu/software/stanford-postagger-full-$VERSION_TAGGER.zip

VERSION_CLASSIFIER=$VERSION
URL_CLASSIFIER=https://nlp.stanford.edu/software/stanford-classifier-$VERSION_CLASSIFIER.zip

VERSION_CORE_NLP=$VERSION
URL_CORE_NLP=http://nlp.stanford.edu/software/stanford-english-corenlp-$VERSION_CORE_NLP-models.jar

cd ~/Software
mkdir stanford
cd stanford
rm -f *zip

# NER
rm -f stanford-ner-$VERSION.zip
wget $URL
unzip *.zip
rm -f *zip

ln -s stanford-ner-$VERSION ner


#POSTAGGER
wget $URL_TAGGER
unzip *.zip
rm -f *zip

ln -s stanford-postagger-full-$VERSION_TAGGER postagger

#CLASSIFIER
wget $URL_CLASSIFIER
unzip *.zip
rm -f *zip

ln -s stanford-classifier-$VERSION_CLASSIFIER classifier

#CORE-NLP
#GPL V3 !
wget $URL_CORE_NLP
