#!/usr/bin/env python3
""" 10 update topic module """


def update_topics(mongo_collection, name, topics):
    """Update topics"""
    mongo_collection.update_many(
            {'name': name},
            {'$set': {'topics': topics}}
        )
