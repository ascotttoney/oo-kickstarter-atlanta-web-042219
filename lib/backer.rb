require 'pry'
require_relative './project'

class Backer
    attr_reader :name, :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(proj_inst)
        @backed_projects << proj_inst
        proj_inst.backers << self
    end
end