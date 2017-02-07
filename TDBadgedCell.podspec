Pod::Spec.new do |s|
  s.name     = 'TDBadgedCell'
  s.version  = '3.0'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.summary  = 'UITableViewCell subclass that adds a "badgeString" property ' \
               'to table view cells.'
  s.homepage = 'https://github.com/tmdvs/TDBadgedCell'
  s.author   = { 'Tim Davies' => 'hi@tmdvs.me' }

  s.source   = { :git => 'https://github.com/tmdvs/TDBadgedCell.git',
                 :branch => 'deprecated-objective-c' }

  s.description = 'TDBadgedCell grew out of the need for TableViewCell ' \
                  'badges and the lack of them in iOS. TDBadgedCell was ' \
                  'written originally using CGPaths but as more people ' \
                  'began to use TDBadgeCell the more customisation ' \
                  'people wanted.'

  s.platform = :ios
  s.source_files = 'TDBadgedCell (xcode project)/TDBadgedCell.{h,m}'
  s.requires_arc = true
  s.frameworks = 'QuartzCore'
end
