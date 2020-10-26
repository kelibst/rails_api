json.id book.id
json.title book.title

json.body do
    json.description book.descriiption
end
json.dates do
    json.created_at book.created_at
    json.updated_at book.updated_at
end