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
end
