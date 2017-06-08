class StatsController < ApplicationController
  def index
    sql = <<-SQL.squish
      SELECT 
        c.name,
        COUNT(o.flower_id) AS sold_flowers,
        COUNT(f.id) AS total_flowers,
        SUM(f.cost) AS income,
        SUM(d.cost) AS expense,
        SUM(f.cost) - SUM(d.cost) AS difference
      FROM
          cultures c
              LEFT OUTER JOIN
          flowers f ON f.culture_id = c.id
              LEFT OUTER JOIN
          elevations e ON e.flower_id = f.id
              LEFT OUTER JOIN
          deeds d ON d.id = e.deed_id
              LEFT OUTER JOIN
          orders o ON o.flower_id = f.id
      GROUP BY c.id;
    SQL
    @statistics = ActiveRecord::Base.connection.select_rows(sql).to_a
  end
end
