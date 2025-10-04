# OwnTracks-Monitoring-Setup

OwnTracks Monitoring Setup (HTTP)
Overview

This repository provides a setup for monitoring location data from the OwnTracks app via HTTP. It includes:

      OwnTracks Recorder to receive HTTP location data

      Scripts to push data to your existing InfluxDB v2

      A pre-configured Grafana dashboard for visualizing locations and movement trends

Note: You must already have self-hosted InfluxDB v2 and Grafana servers running. This setup does not deploy them.

Repository Contents

      owntracks-setup.pdf: Guide for configuring OwnTracks to send data via HTTP.

      delete_all_records_from_DB.ps1: PowerShell script to clear all database records.

      owntracks_to_influx.ps1: PowerShell script to push OwnTracks data to your InfluxDB v2 instance.

      grafana_dashboard.json: Pre-made Grafana dashboard for visualizing location data.
