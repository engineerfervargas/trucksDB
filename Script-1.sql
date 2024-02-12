INSERT INTO master.dbo.clients
(first_name, last_name, address, phone_number)
VALUES('Juan', 'Garcia', 'Siempre viva #123', '4491112233'),
('Roberto', 'Flores', 'Siempre viva #123', '4491242233'),
('Mario', 'Sanchez', 'Siempre viva #123', '4490821233'),
('Ernesto', 'Zamarripa', 'Siempre viva #123', '4491198364'),
('Francisco', 'Garcia', 'street viva #123', '4109312234');

INSERT INTO master.dbo.trucks
(description, quantity, price, discount)
VALUES('Ford LOBO', 10, 1500000, 0.05),
('RAM', 12, 2200000, 0.01),
('RAPTOR', 12, 1900000, 0.01),
('F150', 12, 1110000, 0.01),
('RAM 2.5', 12, 1750000, 0.1),
('MERCEDEZ', 12, 1700000, 0.01),
('RAM', 12, 600000, 0.01),
('F250', 12, 940000, 0.01),
('FRONTIER', 12, 500000, 0.03),
('HILUX', 12, 890000, 0.01),
('TACOMA', 12, 750000, 0.01),
('TUNDRA', 12, 800000, 0.00),
('CYBER TRUCK', 12, 2000000, 0.01);

INSERT INTO master.dbo.stores
(name)
VALUES('CENTRAL'),('SUR'),('NORTE'),('ARBOLEDAS'),('AGROPECUARIO');

INSERT INTO master.dbo.users
(first_name, last_name, email, password, [role], account_non_expired, account_non_locked, credentials_non_expired, enabled)
VALUES(N'Fernando', N'Vargas', N'fernando@gmail.com', N'$2a$10$Cp4uRyzJwok2a75RfONhneBY2zik9mqzvnSRJzLMR7nhhOcJCxI1W', N'USER', 1, 1, 1, 1);

