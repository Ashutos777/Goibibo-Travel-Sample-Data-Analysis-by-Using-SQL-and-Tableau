## FIRST WE HAVE TO SELECT THE DATABASE BY USING THE FOLLOWING COMMAND BELOW.
use goibibo_dataset;
## THEN WE HAVE TO SEE THE ENTIRE DATASET BY USING THE FOLLOWING COMMAND BELOW.
select* from goibibo_com_travel_sample1;
## AFTER THAT I HAVE FOUND THE 5 STAR HOTEL STAR RATING ACCORDING TO THE CITY AND TO EXCLUDE THE NULLS I HAVE USED THE NOT NULL BELOW.
select city, hotel_star_rating from goibibo_com_travel_sample1 where hotel_star_rating=5 and city is not null;
## NOW I HAVE FOUND THE CITY AND AREA OF THE 5 STAR HOTEL RATINGS AND TO EXCLUDE THE NULLS I HAVE AGAIN USED THE NOT NULL CONSTRAINT.
select city, area from goibibo_com_travel_sample1 where hotel_star_rating=5 and city is not null;
## NOW I HAVE DONE THE AGGREGATION THAT IS THE AVERAGE OF HOTEL_STAR_RATING ACCORDING TO THE SELECTED CITY.
select avg(hotel_star_rating),city from goibibo_com_travel_sample1 where city='manali';
## HERE ALSO I HAVE DONE THE AGGREGATION THAT IS THE AVERAGE OF HOTEL_STAR_RATING ACCORDING TO THE SELECTED CITY.
select avg(hotel_star_rating),city from goibibo_com_travel_sample1 where city='bangalore';
## SAME HERE I HAVE DONE THE AGGREGATION THAT IS THE AVERAGE OF HOTEL_STAR_RATING ACCORDING TO THE SELECTED CITY CHECK BELOW.
select avg(hotel_star_rating),city from goibibo_com_travel_sample1 where city='goa';
 ## HERE I HAVE DONE THE AGGREGATION THAT IS THE MAXIMUM OF HOTEL_STAR_RATING ACCORDING TO THE SELECTED CITY AND THE AREA.
select max(hotel_star_rating),city,area from goibibo_com_travel_sample1 where city ='pune';
## NOW I HAVE DONE THE AGGREGATION THAT IS THE MINIMUM OF HOTEL_STAR_RATING ACCORDING TO THE SELECTED CITY AND THE AREA.
select min(hotel_star_rating),city,area from goibibo_com_travel_sample1 where city='delhi';
## NOW HERE I HAVE FOUND THE PROPERTY_TYPE, CITY OF ALL THE 5 STAR HOTEL RATINGS SEE BELOW.
select property_type,city, hotel_star_rating from goibibo_com_travel_sample1 where hotel_star_rating=5;
## HERE I HAVE FOUND THE CITY AND HOTEL_STAR_RATING ACCORDING TO THE SELECTED PROPERTY TYPE.
select property_type,city, hotel_star_rating from goibibo_com_travel_sample1 where property_type='resort';
## HERE I HAVE FOUND THE ROOM_COUNT,AREA,CRAWL_DATE, LATITUDE AND LONGITUDE ACCORDING TO THE STATE.
select room_count, area,crawl_date,latitude,longitude from goibibo_com_travel_sample1 where state='assam';
## NOW I HAVE FOUND THE HOTEL_BRAND, HOTEL_STAR_RATING AND THE CITY ACCORDING TO THE SELECTED STATE AND TO EXCLUDE THE NULLS I HAVE USED THE NOT NULL CONSTRAINT.
select hotel_brand,hotel_star_rating,city from goibibo_com_travel_sample1 where state='west bengal'and hotel_brand is not null;
## HERE I HAVE DONE THE AGGREGATION THAT IS THE SUM OF GUEST_RECOMMENDATION AS MENTIONED BY PROVINCE.
select sum(guest_recommendation), province from goibibo_com_travel_sample1 where province='jaipur';
## HERE I HAVE DONE THE AGGREGATION THAT IS THE SUM OF THE IMAGE_COUNT OF THE SITE NAME.
select sum(image_count),sitename from goibibo_com_travel_sample1;
## HERE ALSO I HAVE DONE THE AGGREGATION THAT IS THE COUNT OF GUEST_RECOMMENDATION CLAIMED BY SITE NAME.
select count(guest_recommendation),sitename from goibibo_com_travel_sample1;
## I HAVE FOUND HERE THE GUEST_RECOMMENDATION, SITENAME AND THE AGGREGATION THAT IS AVERAGE OF THE SITE_REVIEW_RATING ACCORDING TO THE SELECTED PROVINCE.
select avg(site_review_rating),guest_recommendation, province, sitename from goibibo_com_travel_sample1 where province='chennai';
## AT LAST I HAVE USED THE SUB QUERY TO FOUND THE HOTEL_BRAND, PROVINCE AND THE AGGREGATION THAT IS MAXIMUM OF HOTEL_STAR_RATING AND ALSO I HAVE USED THE NOT NULL CONSTRAINT TO EXCLUDE THE NULL VALUES. 
select hotel_star_rating,hotel_brand, province from goibibo_com_travel_sample1 where hotel_star_rating in (select max(hotel_star_rating) from goibibo_com_travel_sample1) and hotel_brand is not null;
