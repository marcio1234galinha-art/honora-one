-- ============================================
-- HONORA ONE
-- Migration: 004_create_sales.sql
-- Descrição: Histórico de vendas
-- ============================================

CREATE TABLE IF NOT EXISTS public.sales (

    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    client_id UUID NOT NULL REFERENCES public.clients(id) ON DELETE CASCADE,

    product_name TEXT NOT NULL,

    category TEXT,

    size TEXT,

    color TEXT,

    quantity INTEGER NOT NULL DEFAULT 1,

    unit_price NUMERIC(10,2) NOT NULL,

    total_price NUMERIC(10,2) NOT NULL,

    sale_date TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()

);
