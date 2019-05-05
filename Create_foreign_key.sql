ALTER TABLE vk.profiles ADD CONSTRAINT profiles_users_fk FOREIGN KEY (user_id) REFERENCES vk.users(id) ON DELETE CASCADE;
ALTER TABLE vk.messages ADD CONSTRAINT messages_users_fk FOREIGN KEY (from_user_id) REFERENCES vk.users(id);
ALTER TABLE vk.messages ADD CONSTRAINT messages_users_fk_1 FOREIGN KEY (to_user_id) REFERENCES vk.users(id);
ALTER TABLE vk.friendship ADD CONSTRAINT friendship_users_fk FOREIGN KEY (user_id) REFERENCES vk.users(id);
ALTER TABLE vk.friendship ADD CONSTRAINT friendship_users_fk_1 FOREIGN KEY (friend_id) REFERENCES vk.users(id);
ALTER TABLE vk.communities_users ADD CONSTRAINT communities_users_users_fk FOREIGN KEY (user_id) REFERENCES vk.users(id) ON DELETE CASCADE;
ALTER TABLE vk.communities_users ADD CONSTRAINT communities_users_communities_fk FOREIGN KEY (community_id) REFERENCES vk.communities(id) ON DELETE CASCADE;
ALTER TABLE vk.media ADD CONSTRAINT media_users_fk FOREIGN KEY (user_id) REFERENCES vk.users(id) ON DELETE CASCADE;
ALTER TABLE vk.media ADD CONSTRAINT media_media_types_fk FOREIGN KEY (media_type_id) REFERENCES vk.media_types(id) ON DELETE RESTRICT;
ALTER TABLE vk.likes ADD CONSTRAINT likes_users_fk FOREIGN KEY (from_user_id) REFERENCES vk.users(id) ON DELETE CASCADE;
ALTER TABLE vk.likes ADD CONSTRAINT likes_subject_types_fk FOREIGN KEY (subject_type_id) REFERENCES vk.subject_types(id) ON DELETE RESTRICT;

