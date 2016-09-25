/* Sample SQL queries (Data inserted into tables) */

INSERT INTO users (email, name) VALUES ('abc@example.com', 'abc');
INSERT INTO users (email, name) VALUES ('john_smith@gmail.com', 'John Smith');
INSERT INTO users (email, name) VALUES ('blackr@yahoo.com', 'Rebacca Black');
INSERT INTO users (email, name) VALUES ('huawei@huawei.com', 'Hua Wei');
INSERT INTO users (email, name) VALUES ('ahmadzaki@hotmail.com', 'Ahmad Zaki');
INSERT INTO users (email, name) VALUES ('lily_angel@nus.edu.com', 'Lily');
INSERT INTO users (email, name) VALUES ('lily_devil@ntu.edu.com', 'Lily');
INSERT INTO users (email, name) VALUES ('johnlittle@johnlittle.com', 'John Little');
INSERT INTO users (email, name) VALUES ('stephan_bressan@comp.nus.edu.com', 'Stephan Bressan');
INSERT INTO users (email, name) VALUES ('lmljanice@comp.nus.edu.com', 'Lee Mong Li Janice');


INSERT INTO projects (owner, title, start_date, duration, amount) VALUES
('abc@example.com', 'test project', '2008-01-01', 20, 100);
INSERT INTO projects (owner, title, start_date, duration, amount) VALUES
('stephan_bressan@comp.nus.edu.com', 'Crowdfunding database', '2016-09-23', 3, 10);

INSERT INTO fundings (p_id, funder, amount) VALUES
(1, 'huawei@huawei.com', 1000);
INSERT INTO fundings (p_id, funder, amount) VALUES
(2, 'lmljanice@comp@nus.edu.com', 550);
