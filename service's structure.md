my_fastapi_project/
│
├── app/
│   ├── __init__.py
│   ├── main.py
│   ├── api/
│   │   ├── __init__.py
│   │   │── endpoints/
│   │   │   ├── __init__.py
│   │   │   ├── item_route.py  # Example route
│   ├── core/
│   │   ├── __init__.py
│   │   ├── logger.py  # Logger configuration
│   ├── models/
│   ├── schemas/
|     |    ├── __init__.py 
│    │   ├── validate_item.py   # Pydantic models with custom validation logic
│   ├── services/
│   ├── db/
│   │   ├── __init__.py
│   │   ├── session.py  # DB connection and session
│   ├── tests/
│   ├── utils/
