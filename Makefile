all: build

build:
	mvn clean verify

get:
	get-pdf get-xsd

get-xsd:
	wget https://www.fio.cz/schema/importIB.xsd -O src/main/resources/importIB.xsd
	wget https://www.fio.cz/schema/responseImportIB.xsd -O src/main/resources/responseImportIB.xsd
	wget https://www.fio.cz/schema/fio_xml_type.xsd -O src/main/resources/fio_xml_type.xsd

get-pdf:
	wget https://www.fio.cz/docs/cz/API_Bankovnictvi.pdf -O API_Bankovnictvi.pdf
	mkdir -p docs
	wget http://www.fio.cz/docs/cz/struktura-abo.pdf -O struktura-abo.pdf