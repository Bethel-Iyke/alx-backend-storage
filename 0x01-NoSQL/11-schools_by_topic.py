#!/usr/bin/env python3
"""
Code that returns the list of school having a specific topic
"""


def schools_by_topic(mongo_collection, topic):
    """
    returns the list of school having a specific topic using pymongo as collection object
    """

    school_topic = mongo_collection.find({"topics": topic})
    return school_topic
