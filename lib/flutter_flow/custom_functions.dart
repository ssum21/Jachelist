import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String ratingSummaryList(List<ReviewsRecord> rating) {
  if (rating.isEmpty) {
    return '-';
  }
  var ratingsSum = 0.0;
  for (final comment in rating) {
    ratingsSum += comment.rating!;
  }
  return (ratingsSum / rating.length).toStringAsFixed(1);
}

double fourRatingSummary(
  double? ratingvalue1,
  double? ratingvalue2,
  double? ratingvalue3,
  double? ratingvalue4,
) {
  double safeRatingValue1 = ratingvalue1 ?? 0.0;
  double safeRatingValue2 = ratingvalue2 ?? 0.0;
  double safeRatingValue3 = ratingvalue3 ?? 0.0;
  double safeRatingValue4 = ratingvalue4 ?? 0.0;

  double safetotalRatings =
      safeRatingValue1 + safeRatingValue2 + safeRatingValue3 + safeRatingValue4;

  // Calculate the average rating to one decimal point from list of reviews
  if (safetotalRatings > 0) {
    double averageRating = safetotalRatings / 4;
    return averageRating;
  } else {
    return 0.0;
  }
}

double fiveRatingSummary(
  double? ratingvalue1,
  double? ratingvalue2,
  double? ratingvalue3,
  double? ratingvalue4,
  double? ratingvalue5,
) {
  double safeRatingValue1 = ratingvalue1 ?? 0.0;
  double safeRatingValue2 = ratingvalue2 ?? 0.0;
  double safeRatingValue3 = ratingvalue3 ?? 0.0;
  double safeRatingValue4 = ratingvalue4 ?? 0.0;
  double safeRatingValue5 = ratingvalue5 ?? 0.0;

  double totalRatings = safeRatingValue1 +
      safeRatingValue2 +
      safeRatingValue3 +
      safeRatingValue4 +
      safeRatingValue5;

  // Calculate the average rating to one decimal point from list of reviews
  if (totalRatings > 0) {
    double averageRating = totalRatings / 5;
    return double.parse(
        averageRating.toStringAsFixed(1)); // Round to one decimal place
  } else {
    return 0.0;
  }
}

double threeRatingSummary(
  double? ratingvalue1,
  double? ratingvalue2,
  double? ratingvalue3,
) {
  double safeRatingValue1 = ratingvalue1 ?? 0.0;
  double safeRatingValue2 = ratingvalue2 ?? 0.0;
  double safeRatingValue3 = ratingvalue3 ?? 0.0;

  double totalRatings = safeRatingValue1 + safeRatingValue2 + safeRatingValue3;

  // Calculate the average rating to one decimal point from list of reviews
  if (totalRatings > 0) {
    double averageRating = totalRatings / 3;
    return double.parse(
        averageRating.toStringAsFixed(1)); // Round to one decimal place
  } else {
    return 0.0;
  }
}

double twoRatingSummary(
  double? ratingvalue1,
  double? ratingvalue2,
) {
  double safeRatingValue1 = ratingvalue1 ?? 0.0;
  double safeRatingValue2 = ratingvalue2 ?? 0.0;

  double totalRatings = safeRatingValue1 + safeRatingValue2;

  // Calculate the average rating to one decimal point from list of reviews
  if (totalRatings > 0) {
    double averageRating = totalRatings / 2;
    return double.parse(
        averageRating.toStringAsFixed(1)); // Round to one decimal place
  } else {
    return 0.0;
  }
}
