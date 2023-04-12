#!/usr/bin/env python3
"""Lists all documents in a collection:."""

import pymongo


def list_all(mongo_collection):
    """ list documents in collection and return empty list if none """
    doc_content = mongo_collection.find({})
    if not doc_content:
        return []
    return list(doc_content)
