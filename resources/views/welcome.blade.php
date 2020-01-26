<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>PHP Calendar</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link rel="stylesheet" href="bootstrap.min.css" >
    <style>
        .container {
            font-family: 'Noto Sans', sans-serif;
            margin-top: 80px;
            background-color: #fff;
        }
        h3 {
            margin-bottom: 30px;
        }
        th {
            height: 30px;
            text-align: center;
        }
       
        .today {
            background: orange;
        }
        th:nth-of-type(1), td:nth-of-type(1) {
            color: red;
        }
        th:nth-of-type(7), td:nth-of-type(7) {
            color: blue;
        }

    </style>
</head>
<body> 


<h1>Booking Calender</h1>

@include('calender')

