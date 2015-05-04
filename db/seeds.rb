# Admin
Admin.where(email: "admin@admin.ru").first_or_create(password: "admin")
