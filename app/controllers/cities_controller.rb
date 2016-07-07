class CitiesController < ApplicationController
  def index
    bariloche_array = [0,7,14,5,2,2,0]
    @bariloche_chart = Gchart.bar(
            :type => 'bar',
            :size => '600x400',
            :bar_colors => ['0088FF'],
            :title => "My Title",
            :bg => 'EFEFEF',
            :legend => ['prices'],
            :data => [bariloche_array],
            :filename => 'images/bar_chart.png',
            :stacked => false,
            :legend_position => 'bottom',
            :axis_with_labels => [['x'], ['y']],
            :max_value => 15,
            :min_value => 0,
            :axis_labels => [["0-5|6-10|11-15|16-20|21-25|26-30|31-35"]],
            )

    @bar_chart = Gchart.bar(:data => [6,7,8,9])
  end
end
