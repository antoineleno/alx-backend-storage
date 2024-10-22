#!/usr/bin/env python3
""" 8-all module """


def list_all(mongo_collection):
    """list all function"""
    result = [doc for doc in mongo_collection.find()]
    return result
