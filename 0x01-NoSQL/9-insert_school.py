#!/usr/bin/env python3
"""inserts a new document in a collection based on kwargs. """

import pymongo


def insert_school(mongo_collection, **kwargs):
    """inserts new document and return new id."""
    new_doc = mongo_collection.insert_one(kwargs)
    return new_doc
