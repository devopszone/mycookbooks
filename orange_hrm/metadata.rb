name 'orange_hrm'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures orange_hrm'
long_description 'Installs/Configures orange_hrm'
version '0.1.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/orange_hrm/issues' if respond_to?(:issues_url)

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/orange_hrm' if respond_to?(:source_url)

depends 'unzip', '~> 0.0.1'
depends 'archive', '~> 0.2.8'
depends 'zipfile', '~> 0.1.0'
depends 'mysql', '~> 8.2.0'

