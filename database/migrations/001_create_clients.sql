-- =====================================================
-- HONORA ONE
-- Migration: 001_create_clients.sql
-- Descrição: Criação da tabela de clientes
-- =====================================================

CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE IF NOT EXISTS public.clients (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    full_name TEXT NOT NULL,
    whatsapp TEXT NOT NULL,

    instagram TEXT,
    email TEXT,

    city TEXT,
    state TEXT,

    top_size TEXT,
    bottom_size TEXT,

    style_profile TEXT,

    vip BOOLEAN NOT NULL DEFAULT FALSE,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
