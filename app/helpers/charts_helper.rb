module ChartsHelper
  def orders_by_client(orders)
    pie_chart orders.group(:client).count.to_a.map {|c| [c[0].full_name, c[1]] },
              height: '500px',
              library: {
                  title: {
                      text: 'Количество заказов по клиентам'
                  },
                  tooltip: {
                      pointFormat: '{series.name}: <b>{point.y} </b>'
                  },
                  plotOptions: {
                      pie: {
                          allowPointSelect: true,
                          cursor: 'pointer'
                      }
                  }
              }
  end

  def flowers_by_garden_bed(flowers)
    bar_chart flowers.group(:garden_bed).count.to_a.map {|f| [f[0].id, f[1]] }.sort_by(&:last),
              height: '500px',
              library: {
                  title: {
                      text: 'Количество цветов по грядкам'
                  },
                  tooltip: {
                      pointFormat: '{series.name}: <b>{point.y} </b>'
                  },
                  plotOptions: {
                      pie: {
                          allowPointSelect: true,
                          cursor: 'pointer'
                      }
                  }
              }
  end

  def flowers_by_culture(flowers)
    column_chart flowers.group(:culture).count.to_a.map {|f| [f[0].name, f[1]] }.sort_by(&:last),
              height: '500px',
              library: {
                  title: {
                      text: 'Количество цветов по культурам'
                  },
                  tooltip: {
                      pointFormat: '{series.name}: <b>{point.y} </b>'
                  },
                  plotOptions: {
                      pie: {
                          allowPointSelect: true,
                          cursor: 'pointer'
                      }
                  }
              }
  end

  def orders_by_flowers(orders)
    column_chart orders.group(:flower).count.to_a.map {|f| [f[0].f_name, f[1]] }.sort_by(&:last).last(10).reverse,
                 height: '500px',
                 library: {
                     title: {
                         text: 'Заказы по цветам(топ-10)'
                     },
                     tooltip: {
                         pointFormat: '{series.name}: <b>{point.y} </b>'
                     },
                     plotOptions: {
                         pie: {
                             allowPointSelect: true,
                             cursor: 'pointer'
                         }
                     }
                 }
  end

  def orders_by_cultures(orders)
    column_chart orders.joins(flower: :culture).group('cultures.name').count.to_a.sort_by(&:last).last(10).reverse,
                 height: '500px',
                 library: {
                     title: {
                         text: 'Количество заказов по культурам(топ-10)'
                     },
                     tooltip: {
                         pointFormat: '{series.name}: <b>{point.y} </b>'
                     },
                     plotOptions: {
                         pie: {
                             allowPointSelect: true,
                             cursor: 'pointer'
                         }
                     }
                 }
  end


end
