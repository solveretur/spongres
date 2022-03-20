CREATE TABLE public.coin_toss
(
    event_ts timestamp default now(),
    outcome  TEXT NOT NULL
);

INSERT INTO public.coin_toss(outcome)
SELECT CASE WHEN RANDOM() < 0.5 THEN 'heads' ELSE 'tails' END
FROM generate_series(1, 1000);
