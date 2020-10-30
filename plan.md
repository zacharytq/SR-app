# Southern Reach App

- Will primarily be used for document storage. The documents will contain information the Southern Reach has gathered about Area X. 
- Users can access documents based on their security clearance, and the security clearance required by the document.
- Users can write notes about the documents, which can be viewed only by them, or users with a higher security clearance than them.
- Users have a detailed bio, and event calendar for their life. Only the assistant director and director can access these files.
- The security clearance of documents can be changed by the director or assistant director only.
- New members of the team can be added to the system, but will be unable to access any material until the director or assitant director assign them a security clearance.

## Models

- Documents: title, date_created, event_id, creator, content
- Users: name, password, title, date_started, bio, security_clearance
- User_Events: user_id, event_id
- Notes: user_id, document_id, title, content, date_created, security_clearance
- Events: date, location, title, description, security_clearance.

## Requirements

- [ x ] Include 1 has_many, 1 belongs_to, 2 has_many through relationships.
- [ x ] Include a many to many relationship through a join table that has at least one user submittable attribute.
- [  ] Models must validate for simple attributes.
- [  ] Must use 1 ActiveRecord scope method. Must be chainable. Must use ActiveRecord Query methods.
- [ x ] Must has standard user authentication.
- [  ] Must have omniauth login.
- [  ] Must use nested routes with appropriate RESTful API.
- [  ] Forms must present validation errors with a fields_with_errors class.
- [  ] Application must be reasonably DRY. 

## TODO

- [  ] Make validations for all models.
- [  ] Set up nested routes.
- [  ] Make Admin namespace.
- [  ] 
