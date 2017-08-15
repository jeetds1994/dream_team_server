# require 'httparty'
# require 'nokogiri'

class Api::V1::ClubsController < ApplicationController
  def index
    # render json: Club.all.order(:name)
    paginate json: Club.all.order(:name), per_page: 25
  end

  def show
    render json: Club.find(params[:id])
  end
end

#############################################################################
# Since all teams do not have a 256px image, the path forward for badges is
# To make all badges 50px, as this will allow for consistency across entire website for all teams

# This function below was previously in the Club#show action to scrape for a single club's badge, taking into account all possible values for club.badge
# including undefined, 50px image, valid 256px image, and invalid 256px image:

# def show
#   club = Club.find(params[:id])
#   render json: club
#
#   if club.badge
#
#     if club.badge.split('/')[-3].to_i === 50
#       badge = club.badge.split('/')
#       badge[-3] = 256
#       badge = badge.join('/')
#       club.badge = badge
#     end
#
#     response = HTTParty.get(club.badge)
#     parse_page = Nokogiri::HTML(response)
#     test1 = parse_page.css('body > center:nth-child(1) > h1')
#
#     if test1[0].children[0].text === "404 Not Found"
#       badge = club.badge.split('/')
#       badge[-3] = 50
#       badge = badge.join('/')
#       club.badge = badge
#       club.save
#     end
#
#   else
#     name = I18n.transliterate(club.name).split(' ')
#     name1 = name[-2]
#     name2 = name[-1]
#     if name1
#       response = HTTParty.get("https://www.fifaindex.com/teams/?name=#{name1}+#{name2}")
#       parse_page = Nokogiri::HTML(response)
#       img = parse_page.css('#no-more-tables > table > tbody > tr > td:nth-child(1) > a > img')
#       img_url = img[0].attributes["src"].value.split('/')
#       img_url[5] = 256
#       img_url = img_url.join('/')
#       club.badge = "https://www.fifaindex.com#{img_url}"
#     else
#       response = HTTParty.get("https://www.fifaindex.com/teams/?name=#{name2}")
#       parse_page = Nokogiri::HTML(response)
#       img = parse_page.css('#no-more-tables > table > tbody > tr > td:nth-child(1) > a > img')
#       img_url = img[0].attributes["src"].value.split('/')
#       img_url[5] = 256
#       img_url = img_url.join('/')
#       club.badge = "https://www.fifaindex.com#{img_url}"
#     end
#
#     response2 = HTTParty.get("https://www.fifaindex.com#{img_url}")
#     parse_page2 = Nokogiri::HTML(response2)
#     test2 = parse_page2.css('body > center:nth-child(1) > h1')
#
#     if test2[0].children[0].text === "404 Not Found"
#       img_url = img_url.split('/')
#       img_url[5] = 50
#       img_url = img_url.join('/')
#     end
#
#     club.badge = "https://www.fifaindex.com#{img_url}"
#     club.save
#   end
#
# end

#############################################################################
#############################################################################
#############################################################################
# The function below was for the Club#index to scrape for ALL clubs for the 50px badge
# Since all clubs now have a badge, I removed from controller action
#
# def index
#   # render json: Club.all
#   clubs = Club.all
#   paginate json: clubs, per_page: 25
#   clubs.map do |club|
#
#     if club.badge
#       if club.badge.split('/')[-3].to_i != 50
#         badge = club.badge.split('/')
#         badge[-3] = 50
#         badge = badge.join('/')
#         club.badge = badge
#         club.save
#       end
#     else
#       name = I18n.transliterate(club.name).split(' ')
#       name1 = name[-2]
#       name2 = name[-1]
#
#       if name1
#         response = HTTParty.get("https://www.fifaindex.com/teams/?name=#{name1}+#{name2}")
#         parse_page = Nokogiri::HTML(response)
#         img = parse_page.css('#no-more-tables > table > tbody > tr > td:nth-child(1) > a > img')
#         img_url = img[0].attributes["src"].value
#         club.badge = "https://www.fifaindex.com#{img_url}"
#         club.save
#       else
#         response = HTTParty.get("https://www.fifaindex.com/teams/?name=#{name2}")
#         parse_page = Nokogiri::HTML(response)
#         img = parse_page.css('#no-more-tables > table > tbody > tr > td:nth-child(1) > a > img')
#         img_url = img[0].attributes["src"].value
#         club.badge = "https://www.fifaindex.com#{img_url}"
#         club.save
#       end
#     end
#   end

#############################################################################
#############################################################################
#############################################################################
# The following method for Club#index will change all 50px images that led to 404 pages to change DB value to '404'
# Club.all.map do |club|
#   if club.badge != '404'
#     response = HTTParty.get(club.badge)
#     parse_page = Nokogiri::HTML(response)
#     test1 = parse_page.css('body > center:nth-child(1) > h1')
    # if test1.empty?
    #   club.save
    # else
    #   if test1[0].children[0].text != "404 Not Found"
    #     club.save
    #   end
    # end
#   end
# end

#############################################################################
# The following method for Club#index will change all 404 images to a default badge
# clubs = Club.where("badge = '404'")
# clubs.map do |club|
#   club.badge = "http://surepredictions.com/public/img/flag/default.jpg"
#   club.save
# end

#############################################################################
# The following method for Club#index will check all '404' images for better 256px images. If they exist, it will update DB entry
# Club.where("badge = '404'").map do |club|
#   badge = club.badge.split('/')
#   badge[-3] = 256
#   badge = badge.join('/')
#   club.badge = badge
#
#
#   response = HTTParty.get(club.badge)
#   parse_page = Nokogiri::HTML(response)
#   test1 = parse_page.css('body > center:nth-child(1) > h1')
#
#   unless test1[0].children[0].text === "404 Not Found"
#     club.save
#   end
#
# end

#############################################################################
# UNUSED
# BASEURL = 'http://api.football-data.org/v1/competitions//teams'
# APIKEY = 'd11ba92d23c149e0af4e334b424cd226'
