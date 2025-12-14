# Federated Innovation Hub — Minimal Prototype

**Goal:** Demonstrate privacy-safe cross-company collaboration via federated learning + differential privacy.

## What this prototype does
- Runs a **coordinator** (FastAPI) and **two clients** (Python) locally.
- Each client trains a tiny logistic regression on synthetic CSV data.
- Clients send model weight updates to the coordinator.
- Coordinator aggregates updates (simple averaging), applies differential privacy noise, and exposes metrics + audit log.
- A minimal static dashboard polls coordinator to show status.

## Quickstart (local)
1. Install Docker and Docker Compose.
2. Clone repo and from repo root run:
   ```bash
   docker-compose up --build
