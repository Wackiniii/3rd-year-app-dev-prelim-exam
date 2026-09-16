INSERT INTO client (id, first_name, last_name, email, contact_num, created_at) VALUES
(1, 'Marcus', 'Vance', 'marcus.vance@example.com', '09171234501', CURRENT_TIMESTAMP),
(2, 'Elena', 'Reyes', 'elena.reyes@example.com', '09171234502', CURRENT_TIMESTAMP),
(3, 'Julian', 'Mercado', 'julian.m@example.com', '09171234503', CURRENT_TIMESTAMP),
(4, 'Clara', 'Oswald', 'clara.oswald@example.com', '09171234504', CURRENT_TIMESTAMP),
(5, 'Dominic', 'Torres', 'dom.torres@example.com', '09171234505', CURRENT_TIMESTAMP),
(6, 'Sophia', 'Alvarez', 'sophia.a@example.com', '09171234506', CURRENT_TIMESTAMP),
(7, 'Liam', 'Chen', 'liam.chen@example.com', '09171234507', CURRENT_TIMESTAMP),
(8, 'Carlos', 'Reyes', 'carlos.reyes@example.com', '09171234508', CURRENT_TIMESTAMP),
(9, 'Maria', 'Santos', 'maria.s@example.com', '09171234509', CURRENT_TIMESTAMP),
(10, 'Daniel', 'Vance', 'daniel.vance@example.com', '09171234510', CURRENT_TIMESTAMP),
(11, 'Angela', 'Santos', 'angela.santos@example.com', '09171234511', CURRENT_TIMESTAMP),
(12, 'Julian', 'Cruz', 'julian.cruz@example.com', '09171234512', CURRENT_TIMESTAMP);

INSERT INTO instrument (id, client_id, type, brand_model, serial_number, created_at) VALUES
(1, 1, 'Electric Guitar', 'Fender Player Stratocaster', 'MX21049281', CURRENT_TIMESTAMP),
(2, 2, 'Acoustic Guitar', 'Taylor 214ce DLX', 'TY20220811', CURRENT_TIMESTAMP),
(3, 3, 'Bass Guitar', 'Music Man StingRay Special', 'SR88301920', CURRENT_TIMESTAMP),
(4, 4, 'Keyboard / Synth', 'Nord Stage 3 88', 'ND388-9021', CURRENT_TIMESTAMP),
(5, 5, 'Saxophone', 'Yamaha YAS-62III Alto', 'YAS62-4410', CURRENT_TIMESTAMP),
(6, 6, 'Drum Hardware', 'DW 9000 Double Pedal', 'DW9K-77182', CURRENT_TIMESTAMP),
(7, 7, 'Violin', 'Strunal Schonbach 260', 'SS260-1092', CURRENT_TIMESTAMP);
(8, 1, 'Electric Guitar', 'Fender Player Stratocaster', 'MX21049999', CURRENT_TIMESTAMP),
(9, 2, 'Acoustic Guitar', 'Taylor 214ce DLX', 'TY20239011', CURRENT_TIMESTAMP),
(10, 3, 'Bass Guitar', 'Fender Player Precision', 'MX22019912', CURRENT_TIMESTAMP),
(11, 8, 'Electric Guitar', 'Gibson Les Paul Studio', 'GB20218841', CURRENT_TIMESTAMP),
(12, 9, 'Saxophone', 'Yamaha YAS-62III Alto', 'YAS62-8821', CURRENT_TIMESTAMP),
(13, 10, 'Acoustic Guitar', 'Martin D-28', 'MN20204122', CURRENT_TIMESTAMP);

INSERT INTO technician (id, first_name, last_name, email, contact_num, specialty, created_at) VALUES
(1, 'Arthur', 'Pendleton', 'arthur.p@shoprepairs.com', '09281112201', 'Luthier / Fretwork', CURRENT_TIMESTAMP),
(2, 'Siddharth', 'Nair', 'sid.nair@shoprepairs.com', '09281112202', 'Audio Electronics', CURRENT_TIMESTAMP),
(3, 'Chloe', 'Bennett', 'chloe.b@shoprepairs.com', '09281112203', 'Woodwinds & Brass', CURRENT_TIMESTAMP),
(4, 'Mateo', 'Silva', 'mateo.s@shoprepairs.com', '09281112204', 'Orchestral Strings', CURRENT_TIMESTAMP),
(5, 'Gwen', 'Stacy', 'gwen.s@shoprepairs.com', '09281112205', 'Drum & Percussion Hardware', CURRENT_TIMESTAMP),
(6, 'Tariq', 'Mansoor', 'tariq.m@shoprepairs.com', '09281112206', 'Keyboards & Synthesizers', CURRENT_TIMESTAMP),
(7, 'Fiona', 'Gallagher', 'fiona.g@shoprepairs.com', '09281112207', 'General Setup & Maintenance', CURRENT_TIMESTAMP);
(8, 'Nathan', 'Drake', 'nathan.d@shoprepairs.com', '09281112208', 'Luthier / Fretwork', CURRENT_TIMESTAMP),
(9, 'Hannah', 'Abbott', 'hannah.a@shoprepairs.com', '09281112209', 'Audio Electronics', CURRENT_TIMESTAMP),
(10, 'Marco', 'Reyes', 'marco.r@shoprepairs.com', '09281112210', 'General Setup & Maintenance', CURRENT_TIMESTAMP);

INSERT INTO service (id, service_type, instrument_type, estimated_hour, created_at) VALUES
(1, 'Full Setup & Restring', 'Guitar / Bass', 1.50, CURRENT_TIMESTAMP),
(2, 'Fret Level, Crown & Polish', 'Guitar / Bass', 3.00, CURRENT_TIMESTAMP),
(3, 'Potentiometer & Jack Replacement', 'Electric Guitar / Bass', 1.00, CURRENT_TIMESTAMP),
(4, 'Key Contact Cleaning & Calibration', 'Keyboard / Synth', 2.50, CURRENT_TIMESTAMP),
(5, 'Pad Replacement & Regulation', 'Woodwinds', 4.00, CURRENT_TIMESTAMP),
(6, 'Bearing Overhaul & Linkage Lube', 'Drum Hardware', 1.25, CURRENT_TIMESTAMP),
(7, 'Bridge Reseating & Soundpost Reset', 'Violin', 2.00, CURRENT_TIMESTAMP);
(8, 'Basic Setup & Cleaning', 'Guitar / Bass', 1.00, CURRENT_TIMESTAMP),
(9, 'Complete Rewire & Shielding', 'Electric Guitar / Bass', 2.00, CURRENT_TIMESTAMP),
(10, 'Saxophone Overhaul & Re-cork', 'Woodwinds', 4.00, CURRENT_TIMESTAMP);

INSERT INTO repair (id, instrument_id, technician_id, service_id, status, issue, cost, date_received, date_finished, created_at) VALUES
(1, 1, 2, 3, 'completed', 'Heavy crackle from pickup selector switch and loose 1/4" output jack', 120.00, '2026-08-01', '2026-08-02', CURRENT_TIMESTAMP),
(2, 2, 1, 1, 'completed', 'High action across upper frets and noticeable fret buzz at the 5th fret', 75.00, '2026-08-03', '2026-08-04', CURRENT_TIMESTAMP),
(3, 3, 1, 2, 'in-progress', 'Uneven fret wear along positions 1-7 causing dead notes on the D string', 210.00, '2026-08-10', NULL, CURRENT_TIMESTAMP),
(4, 4, 6, 4, 'in-progress', 'Middle C and adjacent octave keys register inconsistent velocity values', 180.00, '2026-08-11', NULL, CURRENT_TIMESTAMP),
(5, 5, 3, 5, 'checked-in', 'Low Bb and C keys leaking air; lower stack regulation out of sync', 260.00, '2026-08-15', NULL, CURRENT_TIMESTAMP),
(6, 6, 5, 6, 'completed', 'Slave pedal linkage is loose with sluggish rebound on the primary beater', 65.00, '2026-08-05', '2026-08-06', CURRENT_TIMESTAMP),
(7, 7, 4, 7, 'waiting-parts', 'Soundpost collapsed following seasonal humidity drop; bridge tilted', 140.00, '2026-08-12', NULL, CURRENT_TIMESTAMP);
(8, 8, 1, 1, 'completed', 'Routine setup, string change, and truss rod adjustment', 75.00, '2026-08-16', '2026-08-17', CURRENT_TIMESTAMP),
(9, 9, 1, 1, 'completed', 'Standard setup and high action correction', 75.00, '2026-08-17', '2026-08-18', CURRENT_TIMESTAMP),
(10, 10, 2, 3, 'completed', 'Scratchy volume potentiometer and grounding noise', 120.00, '2026-08-18', '2026-08-19', CURRENT_TIMESTAMP),
(11, 11, 8, 2, 'in-progress', 'Fret sprout along fretboard edge and high 12th fret', 210.00, '2026-08-20', NULL, CURRENT_TIMESTAMP),
(12, 12, 3, 5, 'in-progress', 'Leaking G key pad and bent octave key lever', 260.00, '2026-08-21', NULL, CURRENT_TIMESTAMP),
(13, 13, 1, 8, 'checked-in', 'General dust cleanup and new string installation', 50.00, '2026-08-22', NULL, CURRENT_TIMESTAMP),
(14, 1, 9, 9, 'checked-in', 'Intermittent output signal and missing control knobs', 120.00, '2026-08-23', NULL, CURRENT_TIMESTAMP),
(15, 2, 1, 1, 'completed', 'Action lowered for slide play and seasonal tune-up', 75.00, '2026-08-24', '2026-08-25', CURRENT_TIMESTAMP);
