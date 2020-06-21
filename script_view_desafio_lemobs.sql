CREATE VIEW VIEW_DESAFIO_LEMOBS as SELECT 
	akaName.name as name_aka, akaTitle.title as title_AKA, 
	akaTitle.production_year as production_Year_AKA, akaTitle.note,
	castInfo.note as note_castInfo, companyType.kind, keyword.keyword,
	movieInfo.info as info_movie, movieInfo.note as note_MOVIE,
	name12.name as name_name, name12.imdb_index as imdb_name, name12.gender, personInfo.info,
	personInfo.note as note_person, title.title, title.imdb_index,
	title.production_year 
FROM 
	aka_name as akaName
	join Cast_info as castInfo on (akaName.person_id = castInfo.person_id)
	join aka_title as akaTitle on (akaTitle.movie_id = castInfo.movie_id)
	join movie_companies as movieCompanies on (movieCompanies.movie_id=castInfo.movie_id)
	join Company_type as companyType on (companyType.id=movieCompanies.company_type_id)
	join movie_info as movieInfo on (movieCompanies.movie_id=movieInfo.movie_id)
	join movie_keyword as movKeyWord on (movKeyWord.movie_id=movieInfo.movie_id)
	join keyword as keyword on (keyword.id=movKeyWord.keyword_id)
	join name1 as name12 on (name12.id=castInfo.person_id)
	join person_info as personInfo on (personInfo.person_id=name12.id)
	join title as title on (title.kind_id=akaTitle.kind_id)
LIMIT 100000


