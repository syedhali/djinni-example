// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from song.djinni

#pragma once

#include <string>
#include <utility>

struct Song final {
    std::string title;
    std::string artist;

    Song(std::string title_,
         std::string artist_)
    : title(std::move(title_))
    , artist(std::move(artist_))
    {}
};
