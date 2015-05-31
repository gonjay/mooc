class SectionsController < ApplicationController
  def index
    @sections = Section
    .where(course_id:params[:author])
    .limit(params[:limit])
    .offset(params[:offset])
  end

  def getchapters
    @chapters = Chapter
    .where(course_id:params[:course_id])
    .limit(params[:limit])
    .offset(params[:offset])
  end

  def getsections
    @sections = Section
    .where(chapter_id:params[:chapter_id])
    .limit(params[:limit])
    .offset(params[:offset])
  end

  def getvideourl
    @url = YoukuVideo::M3U8.getVideoURL(params[:vid], params[:type])
  end
end
