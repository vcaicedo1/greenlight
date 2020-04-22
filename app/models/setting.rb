# frozen_string_literal: true

# BigBlueButton open source conferencing system - http://www.bigbluebutton.org/.
#
# Copyright (c) 2018 BigBlueButton Inc. and by respective authors (see below).
#
# This program is free software; you can redistribute it and/or modify it under the
# terms of the GNU Lesser General Public License as published by the Free Software
# Foundation; either version 3.0 of the License, or (at your option) any later
# version.
#
# BigBlueButton is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License along
# with BigBlueButton; if not, see <http://www.gnu.org/licenses/>.

class Setting < ApplicationRecord
  has_many :features

  # Updates the value of the feature and enables it
  def update_value(name, value)
    feature = features.find_or_create_by!(name: name)

    feature.update_attributes(value: value, enabled: true)
  end

  # Returns the value if enabled or the default if not enabled
  def get_value(name)
    # Return feature value if already exists
    features.each do |feature|
      next if feature.name != name

      return feature.value if feature.enabled
      return default_value(name)
    end

    # Create the feature since it doesn't exist
    features.create(name: name)
    default_value(name)
  end

  private

  def default_value(name)
    # return default value
    case name
    when "Branding Image"
      Rails.configuration.branding_image_claro
    when "Primary Color"
      Rails.configuration.primary_color_default
    when "Registration Method"
      Rails.configuration.registration_method_default
    when "Room Authentication"
      false
    when "Room Limit"
      Rails.configuration.number_of_rooms_default
    when "Shared Access"
      Rails.configuration.shared_access_default
    end
  end
end
