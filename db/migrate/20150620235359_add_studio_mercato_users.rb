class AddStudioMercatoUsers < ActiveRecord::Migration
  def up
    User.create(
      canonical_name: 'Josh' ,
      trello_id: '4f060c78c3997be14b06c034',
      slack_name: 'josh'
    )

    User.create(
      canonical_name: 'Hari' ,
      trello_id: '523be7464ac28f9e01001f6c',
      slack_name: 'hari'
    )

    User.create(
      canonical_name: 'Ben' ,
      trello_id: '5215016c291aa47e3d001058',
      slack_name: 'ben'
    )

    User.create(
      canonical_name: 'Chris' ,
      trello_id: '523c8ec8313cd1776b0004df',
      slack_name: 'chris'
    )

    User.create(
      canonical_name: 'Neil' ,
      trello_id: '50aa802046ddf94e50000fbc',
      slack_name: 'neil'
    )

    User.create(
      canonical_name: 'Shu' ,
      trello_id: '52395abd878ea87525001ece',
      slack_name: 'shu'
    )
  end

  def down
    User.find_by(canonical_name: 'Josh').destroy
    User.find_by(canonical_name: 'Hari').destroy
    User.find_by(canonical_name: 'Ben').destroy
    User.find_by(canonical_name: 'Chris').destroy
    User.find_by(canonical_name: 'Neil').destroy
    User.find_by(canonical_name: 'Shu').destroy
  end
end
