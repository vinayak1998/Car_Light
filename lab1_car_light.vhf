--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : lab1_car_light.vhf
-- /___/   /\     Timestamp : 08/01/2017 15:57:29
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/unwrapped/sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl lab1_car_light.vhf -w /home/btech/cs1160345/lab1_car_light/lab1_car_light.sch
--Design Name: lab1_car_light
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity lab1_car_light is
   port ( D1      : in    std_logic; 
          D2      : in    std_logic; 
          D3      : in    std_logic; 
          D4      : in    std_logic; 
          SW_DOOR : in    std_logic; 
          SW_OFF  : in    std_logic; 
          SW_ON   : in    std_logic; 
          INVALID : out   std_logic; 
          LIGHT   : out   std_logic);
end lab1_car_light;

architecture BEHAVIORAL of lab1_car_light is
   attribute BOX_TYPE   : string ;
   signal XLXN_4        : std_logic;
   signal XLXN_5        : std_logic;
   signal XLXN_6        : std_logic;
   signal XLXN_7        : std_logic;
   signal XLXN_10       : std_logic;
   signal XLXN_31       : std_logic;
   signal XLXN_32       : std_logic;
   signal XLXN_33       : std_logic;
   signal INVALID_DUMMY : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component AND3B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B3 : component is "BLACK_BOX";
   
begin
   INVALID <= INVALID_DUMMY;
   XLXI_2 : AND2
      port map (I0=>SW_DOOR,
                I1=>SW_OFF,
                O=>XLXN_31);
   
   XLXI_3 : AND2
      port map (I0=>SW_ON,
                I1=>SW_DOOR,
                O=>XLXN_4);
   
   XLXI_4 : AND2
      port map (I0=>SW_ON,
                I1=>SW_OFF,
                O=>XLXN_5);
   
   XLXI_5 : OR3
      port map (I0=>XLXN_33,
                I1=>XLXN_4,
                I2=>XLXN_5,
                O=>INVALID_DUMMY);
   
   XLXI_6 : AND2B1
      port map (I0=>INVALID_DUMMY,
                I1=>XLXN_7,
                O=>LIGHT);
   
   XLXI_7 : OR2
      port map (I0=>XLXN_6,
                I1=>SW_ON,
                O=>XLXN_7);
   
   XLXI_8 : AND2
      port map (I0=>SW_DOOR,
                I1=>XLXN_10,
                O=>XLXN_6);
   
   XLXI_9 : OR4
      port map (I0=>D4,
                I1=>D3,
                I2=>D2,
                I3=>D1,
                O=>XLXN_10);
   
   XLXI_11 : AND3B3
      port map (I0=>SW_ON,
                I1=>SW_DOOR,
                I2=>SW_OFF,
                O=>XLXN_32);
   
   XLXI_12 : OR2
      port map (I0=>XLXN_32,
                I1=>XLXN_31,
                O=>XLXN_33);
   
end BEHAVIORAL;



