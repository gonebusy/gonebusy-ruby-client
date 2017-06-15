# Change Log
All notable changes to this project will be documented in this file.

## [0.1.2] - 2017-06-14 ##
### Changed
- [#13](https://github.com/gonebusy/gonebusy-nodejs-client/pull/13) - Booking item response now includes :resource_id and :service_id corresponding to Resource providing the Booking and the Service being performed.

## [0.1.1] - 2017-05-25 ##
### Changed
- [#12](https://github.com/gonebusy/gonebusy-nodejs-client/pull/12) - POST /bookings/new :user_id is now a required parameter.

### Added
- [#12](https://github.com/gonebusy/gonebusy-nodejs-client/pull/12) - GET /bookings now supports optional :booker_id parameter to filter retrieved bookings to those made on behalf of :booker_id.

## [0.1.0] - 2017-05-09 ##
### NOTE - This version introduces breaking changes and additions listed below.

### Changed
- [#11](https://github.com/gonebusy/gonebusy-ruby-client/pull/11) - CreateBookingBody `:date` attribute is now a DateTime rather than a String. - [@alexagranov](https://github.com/alexagranov)
- [#11](https://github.com/gonebusy/gonebusy-ruby-client/pull/11) - TimeWindow attribute `:negation` has been renamed to `:unavailable`. - [@alexagranov](https://github.com/alexagranov)

### Added
- [#11](https://github.com/gonebusy/gonebusy-ruby-client/pull/11) - POST /bookings/new now takes parameters supporting the creation of a recurring Booking. - [@alexagranov](https://github.com/alexagranov)
- [#11](https://github.com/gonebusy/gonebusy-ruby-client/pull/11) - PUT /bookings/:id now takes parameters supporting the modification of a recurring Booking or instance of such. - [@alexagranov](https://github.com/alexagranov)
- [#11](https://github.com/gonebusy/gonebusy-ruby-client/pull/11) - DELETE /bookings/:id now takes parameters supporting the cancellation of a recurring Booking or instance of such. - [@alexagranov](https://github.com/alexagranov)

## [0.0.9] - 2017-03-21 ##
### Added
- [#10](https://github.com/gonebusy/gonebusy-ruby-client/pull/10) - Add schedules array to ServiceResponse - [@alexagranov](https://github.com/alexagranov)

## [0.0.8] - 2017-03-18 ##
### Fixed
- [#9](https://github.com/gonebusy/gonebusy-ruby-client/pull/9) - Fix type of :gender to String; Add :primary_cal to ResourceResponse - [@alexagranov](https://github.com/alexagranov)

## [0.0.7] - 2017-03-06 ##
### Added
- update GET /schedules for query by resource_id, service_id

## [0.0.6] - 2017-02-13 ##
### Added
- Pull #7 - update for HTTPS

## [0.0.5] - 2017-01-19 ##
### Removed
- Unnecessary /user/pros endpoint

## [0.0.4] - 2017-01-19 ##
### Fixed
- PR #4 - Correct 'pricing_model' (instead of plural) response root for GET/PUT /pricing_models/:id and POST /pricing_models/new

## [0.0.3] - 2017-01-15 ##
### Added
- Pull #2 - adding Service :max_duration support
- CHANGELOG.md

## [0.0.2] - 2016-10-14 ##
- Initial public version

