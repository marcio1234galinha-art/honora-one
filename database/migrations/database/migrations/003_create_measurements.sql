-- ============================================
-- HONORA ONE
-- Migration: 003_create_measurements.sql
-- Descrição: Medidas corporais das clientes
-- ============================================

CREATE TABLE IF NOT EXISTS public.measurements (

    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    client_id UUID NOT NULL REFERENCES public.clients(id) ON DELETE CASCADE,

    bust NUMERIC,

    waist NUMERIC,

    hips NUMERIC,

    shoulder NUMERIC,

    height NUMERIC,

    notes TEXT,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()

);
