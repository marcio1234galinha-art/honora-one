-- ============================================
-- HONORA ONE
-- Migration: 002_create_appointments.sql
-- Descrição: Criação da tabela de atendimentos
-- ============================================

CREATE TABLE IF NOT EXISTS public.appointments (

    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    client_id UUID NOT NULL REFERENCES public.clients(id) ON DELETE CASCADE,

    type TEXT NOT NULL,

    status TEXT NOT NULL DEFAULT 'scheduled',

    appointment_date TIMESTAMPTZ NOT NULL,

    notes TEXT,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()

);
