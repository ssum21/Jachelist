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

double newCustomFunction2(
  List<bool> onOff,
  List<int> priorityLevel,
  List<double> avgReview,
) {
  int l_bool = onOff.length,
      l_level = priorityLevel.length,
      l_review = avgReview.length;
  int iter_n = 0;
  double review_sum = 0.0;
  double count = 0.0;

  // list 길이가 모두 같으면 동작
  if ((l_bool == l_level) && (l_level == l_review) && (l_review > 0)) {
    for (int i = 0; i < l_bool; ++i) {
      if (onOff[i]) {
        int level = priorityLevel[i];
        switch (level) {
          case 1:
            iter_n = 5;
            break;
          case 2:
            iter_n = 3;
            break;
          case 3:
            iter_n = 2;
            break;
          case 4:
            iter_n = 1;
            break;
          default:
            iter_n = 0;
            break;
        } // switch-case 구문

        double review = avgReview[i];
        for (int j = 0; j < iter_n; ++j) {
          review_sum += review;
          count += 1;
          ;
        } // for 구문
      } // if 구문
    } // for 구문

    if (count > 0) {
      return review_sum / count;
    } else {
      return 0;
    } // if-else 구문
  } else {
    return 0;
  } // if-else 구문
}

double newCustomFunction(
  List<double> avgReviewList,
  List<bool>? onOff,
) {
  int listLength = avgReviewList.length;
  int count = 0;
  double result = 0.0;

  if (onOff != null && listLength == onOff.length) {
    for (int i = 0; i < listLength; ++i) {
      if (onOff[i]) {
        result += avgReviewList[i];
        count++;
      }
    }
    if (count > 0) {
      return result / count;
    }
  }

  return 0.0;
}
