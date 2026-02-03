# Django Blog Application

A full-featured blog application built with Django that includes user authentication, CRUD operations for blog posts, comments, and more.

## Features

- User authentication (login, registration, password reset)
- Create, read, update, and delete blog posts
- Add comments to blog posts
- Search functionality
- Pagination
- Responsive design
- Admin interface for content management

## Prerequisites

- Python 3.8+
- pip (Python package manager)
- Virtual environment (recommended)

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/blog_site.git
   cd blog_site
   ```

2. Create and activate a virtual environment:
   ```bash
   # On Windows
   python -m venv venv
   .\venv\Scripts\activate
   
   # On macOS/Linux
   python3 -m venv venv
   source venv/bin/activate
   ```

3. Install the required packages:
   ```bash
   pip install -r requirements.txt
   ```

4. Run database migrations:
   ```bash
   python manage.py makemigrations
   python manage.py migrate
   ```

5. Create a superuser (admin) account:
   ```bash
   python manage.py createsuperuser
   ```

6. Run the development server:
   ```bash
   python manage.py runserver
   ```

7. Open your web browser and navigate to `http://127.0.0.1:8000/`

## Project Structure

```
blog_site/
├── blog/                    # Main blog application
│   ├── migrations/          # Database migrations
│   ├── static/              # Static files (CSS, JS, images)
│   ├── templates/           # HTML templates
│   ├── __init__.py
│   ├── admin.py             # Admin site configuration
│   ├── apps.py              # Application configuration
│   ├── forms.py             # Form definitions
│   ├── models.py            # Database models
│   ├── urls.py              # URL routing
│   └── views.py             # View functions/classes
├── config/                  # Project configuration
│   ├── __init__.py
│   ├── asgi.py
│   ├── settings.py          # Django settings
│   ├── urls.py              # Main URL configuration
│   └── wsgi.py
├── static/                  # Project-wide static files
│   └── css/
│       └── style.css        # Custom CSS
├── templates/               # Base templates
│   └── base.html            # Base template
├── .gitignore
├── db.sqlite3               # SQLite database (created after migrations)
├── manage.py                # Django command-line utility
└── requirements.txt         # Project dependencies
```

## Customizing the Blog

### Changing the Theme

You can customize the blog's appearance by modifying the CSS in `static/css/style.css`.

### Adding New Features

1. **Categories/Tags**: Add a new model for categories or tags and create a many-to-many relationship with the Post model.
2. **User Profiles**: Extend the User model to include profile pictures, bios, etc.
3. **Social Media Sharing**: Add social media sharing buttons to blog posts.
4. **Email Notifications**: Send email notifications for new comments or replies.

## Contributing

1. Fork the repository
2. Create a new branch for your feature (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Contact

**Mahmudjanov Muhammadsher**  
📧 Email: [mahmudjanovmuhammadsher.it@gmail.com](mailto:mahmudjanovmuhammadsher.it@gmail.com)  
📱 Phone: [+998 90 691 20 09](tel:+998906912009)  
💬 Telegram: [@Mahmudjanov_2404](https://t.me/Mahmudjanov_2404)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Django Documentation](https://docs.djangoproject.com/)
- [Bootstrap](https://getbootstrap.com/)
- [Font Awesome](https://fontawesome.com/)
