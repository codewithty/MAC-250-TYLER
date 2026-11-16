SELECT
    a.id AS account_id,
    a.email,
    t.title AS tv_show_title
FROM watched AS w
JOIN account AS a ON a.id = w.account_id
JOIN tv_show AS t ON t.id = w.tv_show_id
WHERE w.is_watched = TRUE
  AND w.tv_show_id IS NOT NULL
ORDER BY t.title, a.email;