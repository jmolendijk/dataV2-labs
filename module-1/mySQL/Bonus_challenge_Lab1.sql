{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 # BONUS CHALLENGE ANSWERS \
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 UPDATE SALESPERSONS\
SET store_id = "Miami"\
WHERE staff_name = 'Paige Turner';\
\
UPDATE CUSTOMERS\
SET customer_email = "ppicasso@gmail.com"\
WHERE customer_name = 'Pablo Picasso';\
\
UPDATE CUSTOMERS\
SET customer_email = "lincoln@us.gov"\
WHERE customer_name = 'Abraham Lincoln';\
\
UPDATE CUSTOMERS\
SET customer_email = "hello@napoleon.me"\
WHERE customer_name = 'Napol\'e9on Bonaparte';\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 \
\
######## MY NOTES\
\
# rename column\
\
ALTER TABLE "table_name"\
RENAME COLUMN "column 1" TO "column 2";\
\
\
# rename table\
ALTER TABLE Customer CHANGE Address Addr char(50);\
\
#rename column with data type\
ALTER TABLE "table_name"\
Change "column 1" "column 2" ["Data Type"];\
\
}