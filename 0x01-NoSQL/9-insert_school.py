#!/usr/bin/env python3
""" 9 insert school module """


def insert_school(mongo_collection, **kwargs):
    """insert school module"""
    document = kwargs
    doc_id = mongo_collection.insert_one(document)
    return doc_id.inserted_id
