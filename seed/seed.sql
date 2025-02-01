-- Insert into instance table (table name is "instance", which is reserved)
INSERT INTO "instance" (id, name, ip, "createdAt", "updatedAt") 
VALUES (1, 'Instance-1', '192.168.1.1', '2025-01-29 11:30:22.765248', '2025-01-29 20:38:22.765286');
INSERT INTO "instance" (id, name, ip, "createdAt", "updatedAt") 
VALUES (2, 'Instance-2', '192.168.1.2', '2025-01-27 23:53:22.765289', '2025-01-29 20:38:22.765296');
INSERT INTO "instance" (id, name, ip, "createdAt", "updatedAt") 
VALUES (3, 'Instance-3', '192.168.1.3', '2025-01-29 10:40:22.765298', '2025-01-29 20:38:22.765308');
INSERT INTO "instance" (id, name, ip, "createdAt", "updatedAt") 
VALUES (4, 'Instance-4', '192.168.1.4', '2025-01-24 20:15:22.765309', '2025-01-29 20:38:22.765313');
INSERT INTO "instance" (id, name, ip, "createdAt", "updatedAt") 
VALUES (5, 'Instance-5', '192.168.1.5', '2025-01-22 23:17:22.765314', '2025-01-29 20:38:22.765317');

-- Insert CPU Usage
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (0, 2, 42.91, '2025-01-27 00:50:22.765473');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (1, 5, 28.94, '2025-01-29 00:55:22.765483');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (2, 3, 83.55, '2025-01-29 16:37:22.765489');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (3, 4, 74.82, '2025-01-29 00:48:22.765496');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (4, 1, 57.15, '2025-01-21 23:59:22.765501');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (5, 1, 13.54, '2025-01-26 05:04:22.765506');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (6, 3, 21.11, '2025-01-29 17:35:22.765512');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (7, 5, 43.7, '2025-01-26 17:21:22.765520');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (8, 3, 68.23, '2025-01-25 05:18:22.765526');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (9, 4, 43.98, '2025-01-29 15:39:22.765531');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (10, 3, 68.71, '2025-01-22 07:22:22.765535');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (11, 4, 35.27, '2025-01-28 05:10:22.765540');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (12, 4, 26.98, '2025-01-25 15:24:22.765545');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (13, 5, 38.47, '2025-01-24 23:57:22.765549');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (14, 3, 32.55, '2025-01-27 17:07:22.765554');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (15, 2, 19.0, '2025-01-29 02:12:22.765558');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (16, 5, 31.59, '2025-01-29 18:47:22.765563');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (17, 3, 59.33, '2025-01-25 02:14:22.765567');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (18, 4, 20.97, '2025-01-26 18:11:22.765583');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (19, 1, 86.83, '2025-01-25 12:38:22.765588');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (20, 4, 86.41, '2025-01-22 09:02:22.765592');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (21, 1, 67.33, '2025-01-25 21:45:22.765596');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (22, 5, 66.35, '2025-01-26 14:30:22.765601');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (23, 3, 75.19, '2025-01-25 10:35:22.765606');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (24, 4, 26.75, '2025-01-26 17:20:22.765610');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (25, 3, 74.31, '2025-01-21 21:20:22.765615');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (26, 2, 51.71, '2025-01-26 02:46:22.765619');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (27, 2, 85.5, '2025-01-28 00:28:22.765623');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (28, 1, 89.07, '2025-01-25 14:51:22.765628');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (29, 5, 38.32, '2025-01-23 17:58:22.765632');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (30, 3, 37.23, '2025-01-27 20:35:22.765637');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (31, 1, 89.13, '2025-01-23 06:50:22.765641');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (32, 3, 14.71, '2025-01-24 16:53:22.765646');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (33, 5, 49.62, '2025-01-22 04:39:22.765651');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (34, 5, 88.31, '2025-01-29 09:53:22.765657');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (35, 5, 41.75, '2025-01-29 15:41:22.765661');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (36, 1, 46.68, '2025-01-23 03:44:22.765665');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (37, 5, 23.12, '2025-01-22 21:36:22.765670');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (38, 4, 53.2, '2025-01-28 01:20:22.765675');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (39, 4, 53.46, '2025-01-24 02:27:22.765679');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (40, 4, 84.3, '2025-01-26 04:39:22.765683');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (41, 2, 24.61, '2025-01-22 21:04:22.765688');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (42, 1, 76.38, '2025-01-29 03:32:22.765693');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (43, 2, 58.3, '2025-01-29 16:21:22.765697');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (44, 2, 27.62, '2025-01-27 09:02:22.765702');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (45, 3, 67.28, '2025-01-24 07:05:22.765708');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (46, 4, 86.01, '2025-01-23 18:51:22.765715');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (47, 1, 35.04, '2025-01-26 22:11:22.765722');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (48, 5, 83.13, '2025-01-25 06:53:22.765729');
INSERT INTO cpu_usage (id, "instanceId", "usagePercentage", timestamp) 
VALUES (49, 3, 61.37, '2025-01-25 20:48:22.765736');

-- Insert GPU Usage
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (0, 5, 42.3, 39.59, '2025-01-25 07:59:22.765888');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (1, 5, 63.33, 67.91, '2025-01-27 22:32:22.765902');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (2, 4, 38.73, 61.01, '2025-01-28 04:25:22.765912');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (3, 2, 79.86, 17.9, '2025-01-26 17:31:22.765919');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (4, 3, 49.79, 77.09, '2025-01-27 01:24:22.765925');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (5, 3, 70.05, 48.51, '2025-01-22 15:11:22.765931');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (6, 4, 39.55, 77.82, '2025-01-24 00:42:22.765937');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (7, 1, 53.42, 63.4, '2025-01-22 11:42:22.765945');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (8, 1, 47.32, 19.68, '2025-01-27 06:57:22.765951');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (9, 2, 77.15, 30.81, '2025-01-23 09:04:22.765957');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (10, 4, 13.38, 19.69, '2025-01-27 11:09:22.765964');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (11, 2, 64.12, 88.81, '2025-01-28 07:06:22.765969');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (12, 2, 65.4, 29.01, '2025-01-23 07:17:22.765974');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (13, 4, 53.56, 87.86, '2025-01-22 15:45:22.765980');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (14, 1, 71.84, 17.25, '2025-01-26 10:19:22.765985');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (15, 2, 73.48, 35.47, '2025-01-26 10:03:22.765990');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (16, 5, 33.07, 54.38, '2025-01-22 18:04:22.765995');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (17, 2, 56.99, 85.7, '2025-01-23 16:36:22.766000');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (18, 3, 59.11, 60.52, '2025-01-29 14:02:22.766006');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (19, 3, 88.91, 84.82, '2025-01-26 09:02:22.766011');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (20, 1, 67.88, 23.98, '2025-01-26 11:46:22.766016');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (21, 1, 62.88, 24.1, '2025-01-25 12:33:22.766022');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (22, 5, 86.61, 62.14, '2025-01-28 22:18:22.766028');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (23, 4, 71.47, 83.27, '2025-01-25 23:34:22.766033');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (24, 3, 46.94, 82.15, '2025-01-22 20:01:22.766038');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (25, 3, 68.35, 45.0, '2025-01-22 15:20:22.766044');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (26, 1, 59.9, 46.65, '2025-01-25 02:39:22.766051');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (27, 3, 58.7, 81.2, '2025-01-29 06:26:22.766060');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (28, 1, 13.24, 33.42, '2025-01-27 17:30:22.766069');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (29, 4, 35.95, 81.1, '2025-01-24 13:35:22.766077');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (30, 2, 34.13, 24.79, '2025-01-25 15:49:22.766082');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (31, 2, 48.14, 46.21, '2025-01-28 18:43:22.766087');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (32, 2, 33.32, 44.53, '2025-01-25 21:21:22.766093');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (33, 2, 28.06, 44.17, '2025-01-24 22:59:22.766099');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (34, 5, 71.7, 71.07, '2025-01-26 11:31:22.766105');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (35, 5, 55.84, 48.44, '2025-01-28 17:02:22.766110');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (36, 4, 59.78, 50.1, '2025-01-23 06:26:22.766115');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (37, 1, 50.68, 28.67, '2025-01-25 07:19:22.766120');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (38, 2, 69.78, 18.16, '2025-01-22 03:50:22.766125');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (39, 3, 49.46, 20.01, '2025-01-24 11:42:22.766131');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (40, 2, 35.83, 74.3, '2025-01-22 10:06:22.766136');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (41, 5, 77.86, 85.2, '2025-01-27 04:29:22.766142');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (42, 2, 60.23, 82.61, '2025-01-22 11:48:22.766147');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (43, 3, 71.9, 22.09, '2025-01-24 14:48:22.766152');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (44, 4, 61.52, 12.18, '2025-01-29 02:43:22.766157');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (45, 4, 50.4, 48.88, '2025-01-27 14:27:22.766162');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (46, 1, 16.48, 86.21, '2025-01-22 11:56:22.766168');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (47, 3, 31.36, 59.14, '2025-01-27 23:38:22.766173');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (48, 1, 40.17, 31.51, '2025-01-25 20:34:22.766178');
INSERT INTO gpu_usage (id, "instanceId", "memoryUtilization", "smUtilization", timestamp) 
VALUES (49, 1, 63.38, 13.48, '2025-01-29 04:44:22.766183');

-- Insert Memory Usage
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (0, 3, 48.23, '2025-01-22 01:04:22.766314');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (1, 4, 16.91, '2025-01-22 22:36:22.766322');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (2, 4, 51.34, '2025-01-22 05:49:22.766327');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (3, 1, 41.29, '2025-01-28 04:27:22.766332');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (4, 1, 48.18, '2025-01-22 04:28:22.766339');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (5, 1, 6.62, '2025-01-23 00:57:22.766347');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (6, 5, 30.87, '2025-01-23 05:48:22.766355');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (7, 1, 51.17, '2025-01-22 08:27:22.766364');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (8, 4, 23.36, '2025-01-22 00:44:22.766374');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (9, 2, 49.82, '2025-01-24 20:10:22.766381');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (10, 4, 62.51, '2025-01-26 08:54:22.766388');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (11, 4, 46.47, '2025-01-24 03:32:22.766394');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (12, 2, 19.25, '2025-01-28 19:45:22.766402');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (13, 5, 45.04, '2025-01-22 13:27:22.766410');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (14, 4, 29.29, '2025-01-22 23:31:22.766421');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (15, 5, 49.77, '2025-01-22 10:23:22.766428');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (16, 3, 15.79, '2025-01-26 15:56:22.766435');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (17, 5, 57.06, '2025-01-22 18:57:22.766441');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (18, 5, 8.57, '2025-01-26 21:44:22.766446');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (19, 4, 53.54, '2025-01-23 08:21:22.766450');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (20, 1, 38.38, '2025-01-29 03:50:22.766457');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (21, 4, 40.02, '2025-01-29 02:09:22.766465');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (22, 3, 16.92, '2025-01-28 07:08:22.766472');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (23, 5, 11.07, '2025-01-23 04:42:22.766479');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (24, 1, 30.7, '2025-01-23 19:34:22.766487');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (25, 4, 0.76, '2025-01-22 03:01:22.766495');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (26, 2, 10.12, '2025-01-29 10:09:22.766500');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (27, 2, 23.46, '2025-01-24 10:32:22.766506');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (28, 1, 13.87, '2025-01-29 09:52:22.766514');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (29, 2, 3.28, '2025-01-22 15:05:22.766522');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (30, 2, 28.44, '2025-01-26 10:30:22.766530');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (31, 5, 30.82, '2025-01-27 15:20:22.766538');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (32, 3, 58.09, '2025-01-25 14:54:22.766545');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (33, 3, 21.85, '2025-01-28 16:41:22.766550');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (34, 3, 54.21, '2025-01-23 21:41:22.766558');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (35, 1, 10.27, '2025-01-22 03:56:22.766566');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (36, 5, 17.26, '2025-01-24 05:48:22.766574');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (37, 3, 53.65, '2025-01-21 22:49:22.766581');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (38, 3, 25.16, '2025-01-24 09:19:22.766589');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (39, 2, 20.32, '2025-01-24 21:13:22.766595');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (40, 4, 27.46, '2025-01-24 17:35:22.766599');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (41, 4, 38.72, '2025-01-25 03:49:22.766604');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (42, 4, 14.28, '2025-01-23 16:24:22.766608');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (43, 4, 40.41, '2025-01-22 02:35:22.766613');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (44, 2, 45.28, '2025-01-24 18:27:22.766617');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (45, 1, 20.57, '2025-01-29 18:12:22.766622');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (46, 2, 53.04, '2025-01-27 20:25:22.766626');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (47, 4, 2.11, '2025-01-23 23:58:22.766632');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (48, 3, 37.79, '2025-01-28 05:30:22.766636');
INSERT INTO memory_usage (id, "instanceId", "usedMemoryGB", timestamp) 
VALUES (49, 4, 45.0, '2025-01-24 03:32:22.766641');

-- Insert Disk Usage
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (0, 5, 3.95, '2025-01-23 11:08:22.766777');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (1, 1, 1.41, '2025-01-26 07:09:22.766785');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (2, 5, 14.95, '2025-01-26 13:22:22.766790');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (3, 1, 19.81, '2025-01-26 12:43:22.766795');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (4, 3, 2.32, '2025-01-29 07:53:22.766800');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (5, 3, 10.83, '2025-01-23 02:14:22.766805');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (6, 3, 11.34, '2025-01-23 22:55:22.766810');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (7, 2, 4.88, '2025-01-24 09:56:22.766816');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (8, 2, 1.3, '2025-01-28 23:11:22.766821');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (9, 3, 15.97, '2025-01-24 18:53:22.766826');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (10, 4, 19.53, '2025-01-27 02:13:22.766834');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (11, 1, 0.04, '2025-01-26 09:17:22.766842');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (12, 4, 12.69, '2025-01-24 00:59:22.766849');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (13, 1, 17.76, '2025-01-23 07:43:22.766856');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (14, 1, 9.86, '2025-01-24 05:41:22.766863');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (15, 1, 10.78, '2025-01-23 20:40:22.766871');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (16, 4, 2.52, '2025-01-29 02:27:22.766878');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (17, 1, 8.74, '2025-01-28 12:01:22.766883');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (18, 4, 17.49, '2025-01-28 03:33:22.766888');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (19, 1, 6.07, '2025-01-29 14:01:22.766893');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (20, 2, 12.26, '2025-01-26 19:52:22.766897');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (21, 4, 10.6, '2025-01-24 19:49:22.766902');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (22, 1, 17.06, '2025-01-22 08:09:22.766906');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (23, 5, 19.44, '2025-01-27 20:54:22.766911');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (24, 5, 15.08, '2025-01-24 16:32:22.766915');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (25, 4, 11.66, '2025-01-21 21:45:22.766920');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (26, 5, 3.74, '2025-01-23 13:05:22.766925');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (27, 4, 9.81, '2025-01-26 21:44:22.766929');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (28, 3, 18.1, '2025-01-25 12:13:22.766934');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (29, 4, 0.17, '2025-01-27 11:44:22.766940');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (30, 3, 18.98, '2025-01-28 18:52:22.766944');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (31, 5, 19.03, '2025-01-24 10:35:22.766949');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (32, 4, 17.94, '2025-01-27 15:29:22.766954');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (33, 4, 5.72, '2025-01-28 22:58:22.766962');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (34, 4, 9.19, '2025-01-27 15:55:22.766970');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (35, 3, 14.64, '2025-01-21 22:59:22.766977');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (36, 1, 12.27, '2025-01-28 13:30:22.766984');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (37, 3, 18.47, '2025-01-28 01:11:22.766992');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (38, 2, 3.59, '2025-01-22 20:33:22.766997');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (39, 5, 4.82, '2025-01-26 22:08:22.767002');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (40, 1, 7.41, '2025-01-27 10:42:22.767007');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (41, 4, 11.5, '2025-01-24 19:51:22.767012');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (42, 4, 1.86, '2025-01-27 12:27:22.767016');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (43, 3, 16.88, '2025-01-22 13:06:22.767021');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (44, 4, 18.92, '2025-01-23 19:11:22.767026');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (45, 5, 10.39, '2025-01-26 07:01:22.767030');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (46, 1, 15.75, '2025-01-22 22:08:22.767034');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (47, 2, 4.48, '2025-01-24 10:49:22.767039');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (48, 3, 16.0, '2025-01-23 00:44:22.767044');
INSERT INTO disk_usage (id, "instanceId", "usedDiskTB", timestamp) 
VALUES (49, 1, 0.18, '2025-01-27 23:13:22.767048');
