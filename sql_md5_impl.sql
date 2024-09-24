-- Temp DB
ATTACH DATABASE ':memory:' AS md5;

-- Variables
CREATE TABLE IF NOT EXISTS md5.vars (name TEXT PRIMARY KEY, value TEXT);
CREATE TABLE IF NOT EXISTS md5.consts (name TEXT PRIMARY KEY, value INTEGER);

-- Message
INSERT INTO md5.vars VALUES ('msg', 'abc');

-- Constants
INSERT INTO md5.consts VALUES('0', 3614090360);
INSERT INTO md5.consts VALUES('1', 3905402710);
INSERT INTO md5.consts VALUES('2', 606105819);
INSERT INTO md5.consts VALUES('3', 3250441966);
INSERT INTO md5.consts VALUES('4', 4118548399);
INSERT INTO md5.consts VALUES('5', 1200080426);
INSERT INTO md5.consts VALUES('6', 2821735955);
INSERT INTO md5.consts VALUES('7', 4249261313);
INSERT INTO md5.consts VALUES('8', 1770035416);
INSERT INTO md5.consts VALUES('9', 2336552879);
INSERT INTO md5.consts VALUES('10', 4294925233);
INSERT INTO md5.consts VALUES('11', 2304563134);
INSERT INTO md5.consts VALUES('12', 1804603682);
INSERT INTO md5.consts VALUES('13', 4254626195);
INSERT INTO md5.consts VALUES('14', 2792965006);
INSERT INTO md5.consts VALUES('15', 1236535329);
INSERT INTO md5.consts VALUES('16', 4129170786);
INSERT INTO md5.consts VALUES('17', 3225465664);
INSERT INTO md5.consts VALUES('18', 643717713);
INSERT INTO md5.consts VALUES('19', 3921069994);
INSERT INTO md5.consts VALUES('20', 3593408605);
INSERT INTO md5.consts VALUES('21', 38016083);
INSERT INTO md5.consts VALUES('22', 3634488961);
INSERT INTO md5.consts VALUES('23', 3889429448);
INSERT INTO md5.consts VALUES('24', 568446438);
INSERT INTO md5.consts VALUES('25', 3275163606);
INSERT INTO md5.consts VALUES('26', 4107603335);
INSERT INTO md5.consts VALUES('27', 1163531501);
INSERT INTO md5.consts VALUES('28', 2850285829);
INSERT INTO md5.consts VALUES('29', 4243563512);
INSERT INTO md5.consts VALUES('30', 1735328473);
INSERT INTO md5.consts VALUES('31', 2368359562);
INSERT INTO md5.consts VALUES('32', 4294588738);
INSERT INTO md5.consts VALUES('33', 2272392833);
INSERT INTO md5.consts VALUES('34', 1839030562);
INSERT INTO md5.consts VALUES('35', 4259657740);
INSERT INTO md5.consts VALUES('36', 2763975236);
INSERT INTO md5.consts VALUES('37', 1272893353);
INSERT INTO md5.consts VALUES('38', 4139469664);
INSERT INTO md5.consts VALUES('39', 3200236656);
INSERT INTO md5.consts VALUES('40', 681279174);
INSERT INTO md5.consts VALUES('41', 3936430074);
INSERT INTO md5.consts VALUES('42', 3572445317);
INSERT INTO md5.consts VALUES('43', 76029189);
INSERT INTO md5.consts VALUES('44', 3654602809);
INSERT INTO md5.consts VALUES('45', 3873151461);
INSERT INTO md5.consts VALUES('46', 530742520);
INSERT INTO md5.consts VALUES('47', 3299628645);
INSERT INTO md5.consts VALUES('48', 4096336452);
INSERT INTO md5.consts VALUES('49', 1126891415);
INSERT INTO md5.consts VALUES('50', 2878612391);
INSERT INTO md5.consts VALUES('51', 4237533241);
INSERT INTO md5.consts VALUES('52', 1700485571);
INSERT INTO md5.consts VALUES('53', 2399980690);
INSERT INTO md5.consts VALUES('54', 4293915773);
INSERT INTO md5.consts VALUES('55', 2240044497);
INSERT INTO md5.consts VALUES('56', 1873313359);
INSERT INTO md5.consts VALUES('57', 4264355552);
INSERT INTO md5.consts VALUES('58', 2734768916);
INSERT INTO md5.consts VALUES('59', 1309151649);
INSERT INTO md5.consts VALUES('60', 4149444226);
INSERT INTO md5.consts VALUES('61', 3174756917);
INSERT INTO md5.consts VALUES('62', 718787259);
INSERT INTO md5.consts VALUES('63', 3951481745);

INSERT INTO md5.consts VALUES('rotate0', 7);
INSERT INTO md5.consts VALUES('rotate1', 12);
INSERT INTO md5.consts VALUES('rotate2', 17);
INSERT INTO md5.consts VALUES('rotate3', 22);
INSERT INTO md5.consts VALUES('rotate4', 7);
INSERT INTO md5.consts VALUES('rotate5', 12);
INSERT INTO md5.consts VALUES('rotate6', 17);
INSERT INTO md5.consts VALUES('rotate7', 22);
INSERT INTO md5.consts VALUES('rotate8', 7);
INSERT INTO md5.consts VALUES('rotate9', 12);
INSERT INTO md5.consts VALUES('rotate10', 17);
INSERT INTO md5.consts VALUES('rotate11', 22);
INSERT INTO md5.consts VALUES('rotate12', 7);
INSERT INTO md5.consts VALUES('rotate13', 12);
INSERT INTO md5.consts VALUES('rotate14', 17);
INSERT INTO md5.consts VALUES('rotate15', 22);
INSERT INTO md5.consts VALUES('rotate16', 5);
INSERT INTO md5.consts VALUES('rotate17', 9);
INSERT INTO md5.consts VALUES('rotate18', 14);
INSERT INTO md5.consts VALUES('rotate19', 20);
INSERT INTO md5.consts VALUES('rotate20', 5);
INSERT INTO md5.consts VALUES('rotate21', 9);
INSERT INTO md5.consts VALUES('rotate22', 14);
INSERT INTO md5.consts VALUES('rotate23', 20);
INSERT INTO md5.consts VALUES('rotate24', 5);
INSERT INTO md5.consts VALUES('rotate25', 9);
INSERT INTO md5.consts VALUES('rotate26', 14);
INSERT INTO md5.consts VALUES('rotate27', 20);
INSERT INTO md5.consts VALUES('rotate28', 5);
INSERT INTO md5.consts VALUES('rotate29', 9);
INSERT INTO md5.consts VALUES('rotate30', 14);
INSERT INTO md5.consts VALUES('rotate31', 20);
INSERT INTO md5.consts VALUES('rotate32', 4);
INSERT INTO md5.consts VALUES('rotate33', 11);
INSERT INTO md5.consts VALUES('rotate34', 16);
INSERT INTO md5.consts VALUES('rotate35', 23);
INSERT INTO md5.consts VALUES('rotate36', 4);
INSERT INTO md5.consts VALUES('rotate37', 11);
INSERT INTO md5.consts VALUES('rotate38', 16);
INSERT INTO md5.consts VALUES('rotate39', 23);
INSERT INTO md5.consts VALUES('rotate40', 4);
INSERT INTO md5.consts VALUES('rotate41', 11);
INSERT INTO md5.consts VALUES('rotate42', 16);
INSERT INTO md5.consts VALUES('rotate43', 23);
INSERT INTO md5.consts VALUES('rotate44', 4);
INSERT INTO md5.consts VALUES('rotate45', 11);
INSERT INTO md5.consts VALUES('rotate46', 16);
INSERT INTO md5.consts VALUES('rotate47', 23);
INSERT INTO md5.consts VALUES('rotate48', 6);
INSERT INTO md5.consts VALUES('rotate49', 10);
INSERT INTO md5.consts VALUES('rotate50', 15);
INSERT INTO md5.consts VALUES('rotate51', 21);
INSERT INTO md5.consts VALUES('rotate52', 6);
INSERT INTO md5.consts VALUES('rotate53', 10);
INSERT INTO md5.consts VALUES('rotate54', 15);
INSERT INTO md5.consts VALUES('rotate55', 21);
INSERT INTO md5.consts VALUES('rotate56', 6);
INSERT INTO md5.consts VALUES('rotate57', 10);
INSERT INTO md5.consts VALUES('rotate58', 15);
INSERT INTO md5.consts VALUES('rotate59', 21);
INSERT INTO md5.consts VALUES('rotate60', 6);
INSERT INTO md5.consts VALUES('rotate61', 10);
INSERT INTO md5.consts VALUES('rotate62', 15);
INSERT INTO md5.consts VALUES('rotate63', 21);

INSERT INTO md5.consts VALUES('A', 0x67452301);
INSERT INTO md5.consts VALUES('B', 0xefcdab89);
INSERT INTO md5.consts VALUES('C', 0x98badcfe);
INSERT INTO md5.consts VALUES('D', 0x10325476);

-- Buffer to work on.
CREATE TABLE md5.process (byte INTEGER);

-- Create bytebuffer.
INSERT INTO md5.process
WITH RECURSIVE
cnt(x) AS (
 SELECT 1
 UNION ALL
 SELECT x+1 FROM cnt
  LIMIT (SELECT LENGTH(value) FROM md5.vars WHERE name='msg')
)
SELECT unicode(substr((SELECT value FROM md5.vars WHERE name='msg'),x,1)) FROM cnt;

-- Start padding.
INSERT INTO md5.process VALUES(0x80);

-- Padding as much as needed.
INSERT INTO md5.process
WITH RECURSIVE
padding(x) AS (
 SELECT 1
 UNION ALL
 SELECT x+1 FROM padding
  LIMIT (SELECT ABS(count(byte)%64-56) FROM md5.process)
)
SELECT 0 FROM padding;

-- Append length, little endian.
INSERT INTO md5.process
WITH RECURSIVE
embed_length(x,y) AS (
 SELECT 255,1
 UNION ALL
 SELECT x<<8,y+1 FROM embed_length
  LIMIT 8
)
SELECT (x&(SELECT (LENGTH(value)*8)&0xffffffffffffffff FROM md5.vars WHERE name='msg'))>>(8*(y-1)) FROM embed_length;


CREATE TABLE IF NOT EXISTS md5.process_after_i (iteration INTEGER);
CREATE TRIGGER md5.process_after_i_trigger AFTER INSERT ON md5.process_after_i  
BEGIN  
    INSERT OR REPLACE INTO vars VALUES ('block_4_bytes', (((SELECT byte FROM process LIMIT ((SELECT value FROM md5.vars WHERE name='block_offset')+((SELECT value FROM md5.vars WHERE name='G')*4)), 1) << 0)+((SELECT byte FROM process LIMIT ((SELECT value FROM md5.vars WHERE name='block_offset')+((SELECT value FROM md5.vars WHERE name='G')*4)+1), 1) << 8)+((SELECT byte FROM process LIMIT ((SELECT value FROM md5.vars WHERE name='block_offset')+((SELECT value FROM md5.vars WHERE name='G')*4)+2), 1) << 16)+((SELECT byte FROM process LIMIT ((SELECT value FROM md5.vars WHERE name='block_offset')+((SELECT value FROM md5.vars WHERE name='G')*4)+3), 1) << 24)));


    INSERT OR REPLACE INTO vars VALUES ('to_rotate', ((SELECT value FROM md5.vars WHERE name='A')+(SELECT value FROM md5.vars WHERE name='F')+(SELECT value FROM md5.consts WHERE name=(SELECT value FROM vars WHERE name='i'))+(SELECT value FROM md5.vars WHERE name='block_4_bytes')));


    -- leftRotate + newB
    INSERT OR REPLACE INTO vars VALUES ('newB', ( (SELECT value FROM md5.vars WHERE name='B') + (SELECT ((((SELECT value FROM md5.vars WHERE name='to_rotate')&0xffffffff) << (SELECT value FROM md5.consts WHERE name='rotate'||(SELECT value FROM vars WHERE name='i'))) | (((SELECT value FROM md5.vars WHERE name='to_rotate')&0xffffffff) >> (32-(SELECT value FROM md5.consts WHERE name='rotate'||(SELECT value FROM vars WHERE name='i'))))) & 0xffffffff) ) & 0xffffffff);


    -- Update state
    INSERT OR REPLACE INTO vars VALUES ('A_temp', (SELECT value FROM md5.vars WHERE name='A'));
    INSERT OR REPLACE INTO vars VALUES ('B_temp', (SELECT value FROM md5.vars WHERE name='B'));
    INSERT OR REPLACE INTO vars VALUES ('C_temp', (SELECT value FROM md5.vars WHERE name='C'));
    INSERT OR REPLACE INTO vars VALUES ('D_temp', (SELECT value FROM md5.vars WHERE name='D'));

    INSERT OR REPLACE INTO vars VALUES ('A', (SELECT value FROM md5.vars WHERE name='D_temp'));
    INSERT OR REPLACE INTO vars VALUES ('B', (SELECT value FROM md5.vars WHERE name='newB'));
    INSERT OR REPLACE INTO vars VALUES ('C', (SELECT value FROM md5.vars WHERE name='B_temp'));
    INSERT OR REPLACE INTO vars VALUES ('D', (SELECT value FROM md5.vars WHERE name='C_temp'));

    INSERT OR REPLACE INTO vars VALUES ('i', ((SELECT value FROM vars WHERE name='i')+1));
    DELETE FROM process_after_i WHERE 1=1;
END; 

-- Dummy table for iteration simulation (Round 1)
CREATE TABLE IF NOT EXISTS md5.iteration_16 (iteration INTEGER);
CREATE TRIGGER md5.iteration_16_trigger AFTER INSERT ON md5.iteration_16  
BEGIN  
    INSERT OR REPLACE INTO vars VALUES ('F', (SELECT ((SELECT value FROM md5.vars WHERE name='B')&(SELECT value FROM md5.vars WHERE name='C')) | ((~(SELECT value FROM md5.vars WHERE name='B')) & (SELECT value FROM md5.vars WHERE name='D'))));

    INSERT OR REPLACE INTO vars VALUES ('G', (SELECT value FROM vars WHERE name='i'));

    
    -- Trigger the rest of the flow.
    INSERT INTO process_after_i VALUES (0);

    DELETE FROM iteration_16 WHERE 1=1;
END; 


CREATE TABLE IF NOT EXISTS md5.iteration_32 (iteration INTEGER);
CREATE TRIGGER md5.iteration_32_trigger AFTER INSERT ON md5.iteration_32
BEGIN      
    INSERT OR REPLACE INTO vars VALUES ('F', ((SELECT value FROM md5.vars WHERE name='D') & (SELECT value FROM md5.vars WHERE name='B') | ((~(SELECT value FROM md5.vars WHERE name='D')) & (SELECT value FROM md5.vars WHERE name='C'))));
    
    INSERT OR REPLACE INTO vars VALUES ('G', (SELECT ((SELECT value FROM vars WHERE name='i')*5+1)%16));

    
    -- Trigger the rest of the flow.
    INSERT INTO process_after_i VALUES (0);

    DELETE FROM iteration_32 WHERE 1=1;
END; 


CREATE TABLE IF NOT EXISTS md5.iteration_48 (iteration INTEGER);
CREATE TRIGGER md5.iteration_48_trigger AFTER INSERT ON md5.iteration_48
BEGIN  
    INSERT OR REPLACE INTO vars VALUES ('F', (((((SELECT value FROM md5.vars WHERE name='B') | (SELECT value FROM md5.vars WHERE name='C')) - ((SELECT value FROM md5.vars WHERE name='B') & (SELECT value FROM md5.vars WHERE name='C'))) | (SELECT value FROM md5.vars WHERE name='D')) - ((((SELECT value FROM md5.vars WHERE name='B') | (SELECT value FROM md5.vars WHERE name='C')) - ((SELECT value FROM md5.vars WHERE name='B') & (SELECT value FROM md5.vars WHERE name='C'))) & (SELECT value FROM md5.vars WHERE name='D'))));
    
    INSERT OR REPLACE INTO vars VALUES ('G', (SELECT ((SELECT value FROM vars WHERE name='i')*3+5)%16));


    -- Trigger the rest of the flow.
    INSERT INTO process_after_i VALUES (0);

    DELETE FROM iteration_48 WHERE 1=1;
END; 


CREATE TABLE IF NOT EXISTS md5.iteration_64 (iteration INTEGER);
CREATE TRIGGER md5.iteration_64_trigger AFTER INSERT ON md5.iteration_64
BEGIN  
    INSERT OR REPLACE INTO vars VALUES ('F', (((SELECT value FROM md5.vars WHERE name='C') | ((SELECT value FROM md5.vars WHERE name='B') | ~(SELECT value FROM md5.vars WHERE name='D') )) - ((SELECT value FROM md5.vars WHERE name='C') & ((SELECT value FROM md5.vars WHERE name='B') | ~(SELECT value FROM md5.vars WHERE name='D') ))));
    
    INSERT OR REPLACE INTO vars VALUES ('G', (SELECT ((SELECT value FROM vars WHERE name='i')*7)%16));


    -- Trigger the rest of the flow.
    INSERT INTO process_after_i VALUES (0);
    
    DELETE FROM iteration_64 WHERE 1=1;
END; 


-- Main loop of process message
CREATE TABLE IF NOT EXISTS md5.iteration_top (iteration INTEGER);

CREATE TRIGGER md5.iteration_top_trigger AFTER INSERT ON md5.iteration_top  
BEGIN

    -- Init A,B,C,D    
    INSERT OR REPLACE INTO vars VALUES ('A', (SELECT value FROM vars WHERE name='state_A'));
    INSERT OR REPLACE INTO vars VALUES ('B', (SELECT value FROM vars WHERE name='state_B'));
    INSERT OR REPLACE INTO vars VALUES ('C', (SELECT value FROM vars WHERE name='state_C'));
    INSERT OR REPLACE INTO vars VALUES ('D', (SELECT value FROM vars WHERE name='state_D'));


    -- Block
    INSERT OR REPLACE INTO vars VALUES ('block_offset', new.iteration);
    INSERT OR REPLACE INTO vars VALUES ('i', 0);
    
    -- 16 iterations
    INSERT INTO iteration_16
    WITH RECURSIVE
    cnt(x) AS (
     SELECT 0
     UNION ALL
     SELECT x+1 FROM cnt
      LIMIT 16
    )SELECT x FROM cnt;

    -- 16 iterations
    INSERT INTO iteration_32
    WITH RECURSIVE
    cnt(x) AS (
     SELECT 16
     UNION ALL
     SELECT x+1 FROM cnt
      LIMIT 16
    )SELECT x FROM cnt;

    -- 16 iterations
    INSERT INTO iteration_48
    WITH RECURSIVE
    cnt(x) AS (
     SELECT 32
     UNION ALL
     SELECT x+1 FROM cnt
      LIMIT 16
    )SELECT x FROM cnt;

    -- 16 iterations
    INSERT INTO iteration_64
    WITH RECURSIVE
    cnt(x) AS (
     SELECT 48
     UNION ALL
     SELECT x+1 FROM cnt
      LIMIT 16
    )SELECT x FROM cnt;


    -- Update state
    INSERT OR REPLACE INTO vars VALUES ('state_A', ((SELECT value FROM vars WHERE name='A')+(SELECT value FROM vars WHERE name='state_A'))&0xffffffff);

    INSERT OR REPLACE INTO vars VALUES ('state_B', ((SELECT value FROM vars WHERE name='B')+(SELECT value FROM vars WHERE name='state_B'))&0xffffffff);

    INSERT OR REPLACE INTO vars VALUES ('state_C', ((SELECT value FROM vars WHERE name='C')+(SELECT value FROM vars WHERE name='state_C'))&0xffffffff);

    INSERT OR REPLACE INTO vars VALUES ('state_D', ((SELECT value FROM vars WHERE name='D')+(SELECT value FROM vars WHERE name='state_D'))&0xffffffff);


    DELETE FROM iteration_top WHERE 1=1;
END;

-- Copy state
INSERT OR REPLACE INTO vars VALUES ('state_A', (SELECT value FROM consts WHERE name='A'));
INSERT OR REPLACE INTO vars VALUES ('state_B', (SELECT value FROM consts WHERE name='B'));
INSERT OR REPLACE INTO vars VALUES ('state_C', (SELECT value FROM consts WHERE name='C'));
INSERT OR REPLACE INTO vars VALUES ('state_D', (SELECT value FROM consts WHERE name='D'));

INSERT INTO md5.iteration_top
WITH RECURSIVE
cnt(x) AS (
 SELECT 0
 UNION ALL
 SELECT x+64 FROM cnt
  LIMIT ((SELECT count(*) FROM md5.process)/64)
)SELECT x FROM cnt;

SELECT printf('%02x', (SELECT value FROM md5.vars WHERE name='state_A') & 0xff)||printf('%02x', (SELECT value FROM md5.vars WHERE name='state_A') & 0xff00 >> 8)||printf('%02x', (SELECT value FROM md5.vars WHERE name='state_A') & 0xff0000 >> 16)||printf('%02x', (SELECT value FROM md5.vars WHERE name='state_A') & 0xff000000 >> 24)||printf('%02x', (SELECT value FROM md5.vars WHERE name='state_B') & 0xff)||printf('%02x', (SELECT value FROM md5.vars WHERE name='state_B') & 0xff00 >> 8)||printf('%02x', (SELECT value FROM md5.vars WHERE name='state_B') & 0xff0000 >> 16)||printf('%02x', (SELECT value FROM md5.vars WHERE name='state_B') & 0xff000000 >> 24)||printf('%02x', (SELECT value FROM md5.vars WHERE name='state_C') & 0xff)||printf('%02x', (SELECT value FROM md5.vars WHERE name='state_C') & 0xff00 >> 8)||printf('%02x', (SELECT value FROM md5.vars WHERE name='state_C') & 0xff0000 >> 16)||printf('%02x', (SELECT value FROM md5.vars WHERE name='state_C') & 0xff000000 >> 24)||printf('%02x', (SELECT value FROM md5.vars WHERE name='state_D') & 0xff)||printf('%02x', (SELECT value FROM md5.vars WHERE name='state_D') & 0xff00 >> 8)||printf('%02x', (SELECT value FROM md5.vars WHERE name='state_D') & 0xff0000 >> 16)||printf('%02x', (SELECT value FROM md5.vars WHERE name='state_D') & 0xff000000 >> 24);