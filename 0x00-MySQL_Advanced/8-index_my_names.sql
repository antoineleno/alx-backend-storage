-- Creates an index on the first character of names.
CREATE INDEX idx_name_first ON names(name(1));
