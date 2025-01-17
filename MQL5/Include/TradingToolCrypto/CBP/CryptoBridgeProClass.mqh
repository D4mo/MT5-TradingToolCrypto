//+------------------------------------------------------------------+
//|                                                      ProjectName |
//|                                      Copyright 2020, CompanyName |
//|                                       http://www.companyname.net |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, TradingToolCrypto Corp."
#property link      "https://github.com/tradingtoolcrypto"
#define VERSION 1.40

#import "CBP_Functions.ex5"
string RemoveSymbolSeperator(string symbolname, string seperator);
int GetOrderNumberFromLineName(string linename);
string GetVolumeFromLineName(string linename);
string GetSideFromLineName(string linename);
string GetTypeFromLineName(string linename);
string GetObjectDesc(int what_order_number);
void DeleteOjectLinesByName(string linedesc);
void DeleteOjectLinesByDesc(string linedesc);
void DeleteOjectLines(string sym);
bool CreateOrderEntryLine(string name, string text, datetime time1, double price1, datetime time2, double price2, color col, int lineWidth, int lineStyle);
bool CreateTPLine(string name, string text, datetime time1, double price1, datetime time2, double price2, color col, int lineWidth, int lineStyle);
bool CreateEntryLine(string name, string text, datetime time1, double price1, datetime time2, double price2, color col, int lineWidth, int lineStyle);
void DeleteSubWindowObjectAll(long chart_id, string objectname);
void DeleteSubWindowObjectName(long id_order, string objectname);
double GetGlobal(string ExchangeName, string body);
void DeleteGlobalOrderName(string exchangeName, string sym, double value);
void DeleteGlobalPrefix(string prefix);
void SetSubWindowText(string name, string text, int x, int y, color colour, int size);
void RewriteGlobals(string checkifexist, string replacewith);
string NormalizeString(string value, int digit);
#import

#import "Binance_api.ex5"
string Binance_ExchangeInfo();
bool Binance_Cancel_Trade(string sym, long orderId,string clientOrderId);
bool Binance_Cancel_Trade_All(string sym);
bool Binance_Open_Trade(string sym, string side, string orderType, string orderSize, string orderPrice, int quoteDigit, int lotDigit, string newClientOrderId);
bool Binance_Open_Trade_Stop(string sym, string side, string orderType, string orderSize, string stopPrice, int quoteDigit, int lotDigit, string newClientOrderId);
bool Binance_Open_Trade_StopLimit(string sym, string side, string orderType, string orderSize, string orderPrice, string stopPrice, int quoteDigit, int lotDigit, string newClientOrderId);
bool Binance_Balance(string sym, string quotebase);
bool Binance_GetPriceBest(string sym, int quote_digit);
bool Binance_GetPrice(string sym);
bool Binance_GetServerTime();
bool Binance_Get_API_Key(string key, string secret);
bool Binance_GetOpenOrders(string sym, int quote_precision);
#import

#import "BinanceUS_api.ex5"
bool Binance_US_Cancel_Trade(string sym, long orderId, string  clientOrderId);
bool Binance_US_Cancel_Trade_All(string sym);
bool Binance_US_Open_Trade(string sym, string side, string orderType, string orderSize, string orderPrice, int quoteDigit, int lotDigit,string newClientOrderId);
bool Binance_US_Open_Trade_Stop(string sym, string side, string orderType, string orderSize, string stopPrice, int quoteDigit, int lotDigit,string newClientOrderId);
bool Binance_US_Open_Trade_StopLimit(string sym, string side, string orderType, string orderSize, string orderPrice, string stopPrice, int quoteDigit, int lotDigit,string newClientOrderId);
bool Binance_US_Balance(string sym, string quotebase);
bool Binance_US_GetPriceBest(string sym, int quote_digit);
bool Binance_US_GetPrice(string sym);
bool Binance_US_GetServerTime();
bool Binance_US_Get_API_Key(string key, string secret);
bool Binance_US_GetOpenOrders(string sym, int quote_precision);
#import

#import "BinanceFutures_api.ex5"
string BinanceFutures_ExchangeInfo();
bool BinanceFutures_HedgeMode(string hedgeOn_true_else_false);
bool BinanceFutures_Get_API_Key(string key, string secret, string livedemo);
bool BinanceFutures_Cancel_Trade(string sym, long orderId,string clientOrderId);
bool BinanceFutures_Cancel_Trade_ALL(string sym);
bool BinanceFutures_Open_Trade(string sym, string side, string orderType, string orderSize, string orderPrice,int quoteDigit, int lotDigit,string orderId);
bool BinanceFutures_Open_Trade_Stop(string sym, string side, string orderType, string orderSize, string stopPrice, int quoteDigit, int lotDigit,string orderId);
bool BinanceFutures_Open_Trade_StopLimit(string sym, string side, string orderType, string orderSize, string orderPrice, string stopPrice,int quoteDigit, int lotDigit,string orderId);
bool BinanceFutures_Close_Trade(string sym, string side, string orderType, string orderSize, string orderPrice, int quoteDigit, int lotDigit);
bool BinanceFutures_Balance(string sym, string quotebase);
bool BinanceFutures_GetPriceBest(string sym, int quote_digit);
bool BinanceFutures_GetPrice(string sym, int quoteDigit);
bool BinanceFutures_GetOpenInterest(string sym, int quoteDigit);
bool BinanceFutures_GetFundRate(string sym, int quoteDigit);
bool BinanceFutures_GetFundRate_All(double min_funding_rate);
bool BinanceFutures_GetOpenOrders(string sym, int quote_precision);
bool BinanceFutures_GetServerTime();
bool BinanceFutures_Set_Leverage(string sym, double leverage);
bool BinanceFutures_Positions(string sym, int quoteDigit); // returns the users open positions
string BinanceFutures_Transactions(string sym, string transactionType, long startTime, long endTime);
#import

#import "BinanceFuturesCoin_api.ex5"
string BinanceFuturesC_ExchangeInfo();
bool BinanceFuturesC_HedgeMode(string hedgeOn_true_else_false);
bool BinanceFuturesC_Get_API_Key(string key, string secret, string livedemo);
bool BinanceFuturesC_Cancel_Trade(string sym, long orderId,string clientOrderId);
bool BinanceFuturesC_Cancel_Trade_ALL(string sym);
bool BinanceFuturesC_Open_Trade(string sym, string side, string orderType, string orderSize, string orderPrice,int quoteDigit, int lotDigit,string orderId);
bool BinanceFuturesC_Open_Trade_Stop(string sym, string side, string orderType, string orderSize, string stopPrice, int quoteDigit, int lotDigit,string orderId);
bool BinanceFuturesC_Open_Trade_StopLimit(string sym, string side, string orderType, string orderSize, string orderPrice, string stopPrice,int quoteDigit, int lotDigit,string orderId);
bool BinanceFuturesC_Close_Trade(string sym, string side, string orderType, string orderSize, string orderPrice, int quoteDigit, int lotDigit);
bool BinanceFuturesC_Balance(string sym, string quotebase);
bool BinanceFuturesC_GetPriceBest(string sym, int quote_digit);
bool BinanceFuturesC_GetPrice(string sym, int quoteDigit);
bool BinanceFuturesC_GetOpenInterest(string sym, int quoteDigit);
bool BinanceFuturesC_GetFundRate(string sym, int quoteDigit);
bool BinanceFuturesC_GetOpenOrders(string sym, int quote_precision);
bool BinanceFuturesC_GetServerTime();
bool BinanceFuturesC_Set_Leverage(string sym, double leverage);
bool BinanceFuturesC_Positions(string sym, int quoteDigit); // returns the users open positions
#import
/*
#import "Binance_Dex_api.ex5"
bool Biance_Dex_Cancel_Trade(string sym, int orderId);
bool Binance_Dex_Open_Trade(string sym, string side, string orderType, string orderSize, string orderPrice, int quoteDigit, int lotDigit);
bool Binance_Dex_Balance(string sym, string quotebase);
bool Binance_Dex_GetPriceBest(string sym);
bool Binance_Dex_GetPrice(string sym);
bool Binance_Dex_Get_API_Key(string key, string secret);
bool Binance_Dex_BlockTime();
bool Binance_Dex_Account(string address);
bool Binance_Dex_Symbols(int List_total);
bool Binance_Dex_Markets(int List_total);
bool Binance_Dex_Order_List(string address);
bool Binance_Dex_Time_Sales(string symbol, int limit);
#import
*/
#import "Bybit_api.ex5"
string Bybit_ExchangeInfo();
bool Bybit_Modify_Trade(string sym, string orderId, string clientOrderId, string price, int quoteDigit, int lotDigit);
bool Bybit_Modify_Trade_Conditional(string sym, string orderId,string clientOrderId, string price, int quoteDigit, int lotDigit);
bool Bybit_Cancel_Trade(string sym, string orderId, string clientOrderId);
bool Bybit_Cancel_Trade_All(string sym);
bool Bybit_Cancel_Trade_Stop(string sym, string orderId, string clientOrderId);
bool Bybit_Open_Trade(string sym, string side, string orderType, string orderSize, string orderPrice, int quoteDigit, int lotDigit,string orderId);
bool Bybit_Open_Trade_Stop(string sym, string side, string orderType, string orderSize, string stopPrice, int quoteDigit, int lotDigit,string orderId);
bool Bybit_Open_Trade_StopLimit(string sym, string side, string orderType, string orderSize,string orderPrice, string stopPrice, int quoteDigit, int lotDigit, string newClientOrderId);
bool Bybit_Balance(string sym, string quotebase);
bool Bybit_GetOpenOrders(string sym, int quote_precision);
bool Bybit_GetPriceBest(string sym, int quoteDigit);
bool Bybit_GetPrice(string sym, int quoteDigit);
bool Bybit_GetOpenInterest(string sym, int quoteDigit);
bool Bybit_GetFundRate(string sym, int quoteDigit);
bool Bybit_GetServerTime();
bool Bybit_Get_API_Key(string key, string secret, string livedemo);
bool Bybit_Leverage(int liveOne_demoTwo);
bool Bybit_Positions(string sym, int quoteDigit);
bool Bybit_ClosePosition(string sym, string ordertype);
bool Bybit_Set_Leverage(string sym, double leverage);
#import

#import "Bitmex_api.ex5"
bool Bitmex_GetOpenOrders(string sym, int quote_precision);
bool Bitmex_Positions(string sym, int quote_precision);
bool Bitmex_Cancel_Trade(string sym, string orderId, string clientOrderId);
bool Bitmex_Cancel_Trade_All(string sym);
bool Bitmex_Open_Trade(string sym, string side, string orderType, string orderSize, string orderPrice, int quoteDigit, int lotDigit,string orderId);
bool Bitmex_Open_Trade_Stop(string sym, string side, string orderType, string orderSize, string stopPrice, int quoteDigit, int lotDigit, string orderId);
bool Bitmex_Open_Trade_StopLimit(string sym, string side, string orderType, string orderSize,string orderPrice, string stopPrice, int quoteDigit, int lotDigit, string orderId);
bool Bitmex_Modify_Trade(string sym, string side, string orderType, string orderSize, string orderPrice, string orderId,string clientOrderId, int quoteDigit, int lotDigit);
bool Bitmex_Balance(string sym, string quotebase);
bool Bitmex_GetPriceBest(string sym);
bool Bitmex_GetPrice(string sym);
bool Bitmex_GetServerTime();
bool Bitmex_Get_API_Key(string key, string secret);
bool Bitmex_GetAnnouncement();
bool Bitmex_GetChat(int id);
bool Bitmex_ClosePosition(string sym, string ordertype);
bool Bitmex_Set_Leverage(string sym, double leverage);
#import

#import "ftx_api.ex5"
bool FTX_Get_API_Key(string key, string secret);
bool FTX_GetServerTime();
bool FTX_GetPrice(string sym, int quoteDigit);
bool FTX_GetOpenInterest(string sym, int quoteDigit);
bool FTX_GetFundRate(string sym, int quoteDigit);
bool FTX_GetPriceBest(string sym, int quoteDigit);
bool FTX_Balance(string sym, string quotebase);
bool FTX_Positions(string sym, int quoteDigit);
bool FTX_Open_Trade(string sym, string side, string orderType, string orderSize, string orderPrice, int quoteDigit, int lotDigit, string newClientOrderId);
bool FTX_Open_Trade_Stop(string sym, string side, string orderType, string orderSize, string stopPrice, int quoteDigit, int lotDigit, string newClientOrderId);
bool FTX_Open_Trade_StopLimit(string sym, string side, string orderType, string orderSize,string orderPrice, string stopPrice, int quoteDigit, int lotDigit, string newClientOrderId);
bool FTX_Cancel_Trade(string sym, string orderId, string clientOrderId);
bool FTX_Cancel_Trade_All(string sym);
bool FTX_Modify_Trade(string sym, string orderId,string clientOrderId, string price, int quoteDigit, int lotDigit);
bool FTX_Modify_Trade_Conditional(string sym, string orderId, string price, int quoteDigit, int lotDigit);
bool FTX_GetOpenOrders(string sym, int quoteDigit);
bool FTX_Set_Leverage(string sym, double leverage);
#import

/*
#import "Kucoin_api.ex5"
bool Kucoin_Cancel_Trade(string sym, int orderId);
bool Kucoin_Open_Trade(string sym, string side, string orderType, string orderSize, string orderPrice, int quoteDigit, int lotDigit, string newClientOrderId);
bool Kucoin_Balance(string sym, string quotebase);
bool Kucoin_GetPriceBest(string sym,int quoteDigit);
bool Kucoin_GetPrice(string sym);
bool Kucoin_GetServerTime();
bool Kucoin_Get_API_Key(string key, string secret, string passphase);
#import

#import "Deribit_api.ex5"
bool Deribit_Cancel_Trade(string sym, string orderId);
bool Deribit_Open_Trade(string sym, string side, string orderType, string orderSize, string orderPrice, int quoteDigit, int lotDigit);
bool Deribit_Balance(string sym, string quotebase);
bool Deribit_GetOpenOrders(string sym);
bool Deribit_GetPriceBest(string sym, int quoteDigit);
bool Deribit_GetPrice(string sym);
bool Deribit_GetServerTime();
bool Deribit_Get_API_Key(string key, string secret);
bool Deribit_Leverage(int liveOne_demoTwo);
bool Deribit_Positions(string sym, int quoteDigit);
bool Deribit_ClosePosition(string sym, string ordertype);
bool Deribit_Set_Leverage(string sym, double leverage);
bool Deribit_Cancel_Trade_All(string sym);
#import

#import "Okex_api.ex5"
bool Okex_Modify_Trade(string sym, string orderId, double price);
bool Okex_Cancel_Trade(string sym, string orderId);
bool Okex_Cancel_Trade_All(string sym);
bool Okex_Open_Trade(string sym, string side, string orderType, string orderSize, string orderPrice, int quoteDigit, int lotDigit);
bool Okex_Open_Trade_Stop(string sym, string side, string orderType, string orderSize, string stopPrice, int quoteDigit, int lotDigit);
bool Okex_Balance(string sym, string quotebase);
bool Okex_GetOpenOrders(string sym, int quote_precision);
bool Okex_GetPriceBest(string sym, int quoteDigit);
bool Okex_GetPrice(string sym, int quoteDigit);
bool Okex_GetServerTime();
bool Okex_Get_API_Key(string key, string secret, string livedemo, string market_type);
bool Okex_Leverage(int liveOne_demoTwo);
bool Okex_Positions(string sym, int quoteDigit);
bool Okex_ClosePosition(string sym, string ordertype);
bool Okex_Set_Leverage(string sym, double leverage);
#import
*/

/*
   include header files
*/
#include <TradingToolCrypto\CBP\ExchangeList.mqh>


input group "---------------CRYPTO BRIDGE API SETUP---------------"
input string Binance_Api_Key = "";
input string Binance_Api_Secret = "";

input string Binance_US_Api_Key = "";
input string Binance_US_Api_Secret = "";

input string BinanceFutures_Api_Key = "";
input string BinanceFutures_Api_Secret = "";
input string BinanceFutures_LiveDemo = "live";

input string Bitmex_Api_Key = "";
input string Bitmex_Api_Secret = "";

input string Bybit_Api_Key = "";
input string Bybit_Api_Secret = "";
input string Bybit_LiveDemo = "live";

input string FTX_Api_Key = "";
input string FTX_Api_Secret = "";

/*
input string Deribit_Api_Key = "";
input string Deribit_Api_Secret = "";

input string Kucoin_Api_Key = "";
input string Kucoin_Api_Secret = "";
input string Kucoin_Passphase = "";

input string Okex_Api_Key = "";
input string Okex_Api_Secret = "";
input string Okex_LiveDemo = "live";
input string Okex_text_0 = "Market Type: margin, spot, futures, swap, option";
input string Okex_Market_Type = "swap";
*/

input group "---------------CRYPTO BRIDGE VISUAL SETUP---------------"
input ENUM_LINE_STYLE TP_SL_lineStyle = STYLE_SOLID;
input int TP_SL_lineThickness = 2;
input color Takeprofit_Color = clrLightGreen;
input color Stoploss_Color = clrLightPink;


input ENUM_LINE_STYLE EntrylineStyle = STYLE_DASH;
input int EntrylineThickness = 1;
input color Entry_Color = clrLightGray;

input ENUM_LINE_STYLE PriceMarkerLineStyle = STYLE_SOLID;
input int PriceMarkerLineThickness = 2;
input color PriceMarker_Color = clrGoldenrod;


input ENUM_LINE_STYLE OrderlineStyle = STYLE_SOLID;
input int OrderlineThickness = 1;
input color Order_Color_Buy = clrBlueViolet;
input color Order_Color_Sell = clrRosyBrown;
input color Order_Color_StopLimit = clrGoldenrod;
/*
 Create an ENUM to have a droplist of the available exchanges within your robot's expert properties
*/
enum ENUM_TRADING_EXCHANGE
  {
// BINANCE_DEX = 0,
   BINANCE = 1,
   BINANCE_US = 6,
   BINANCE_FUTURES = 5,
   BITMEX = 3,
   BYBIT = 2,
// KUCOIN = 4,
//  DERIBIT = 7,
//  OKEX = 8
   FTX = 12,
   BINANCE_FUTURES_COIN = 21
  };


input group "-----ADJUSTMENTS BELOW ARE FOR CUSTOM ROBOTS------";
input ENUM_TRADING_EXCHANGE Exchange_Number;
input string Exchange_Symbol_Name = "BTCUSDT";
input double Exchange_Lotsize = 1.0;
input int Exchange_Lot_Precision = 8;
input int Exchange_Quote_Precision = 8;
input double Exchange_Leverage = 35;
input int Exchange_Millisecond_RateLimiter = 1000;
input group "---------------CRYPTO BRIDGE END SETUP---------------"
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
string GLOBAL_Parse_Separator = "#";
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
class CryptoBridge
  {
protected:
   string            my_name;
   int               unique_id;
   void              add_unique_id();
   int               delete_unique_id();

public:
   bool              Init_Api_Keys(int exchange);
   bool              Deinit_Api_Keys(int exchange);
   bool              Cancel_Trade_All(string sym, int exchangeNumber);
   bool              Cancel_Trade(string sym, string orderId, int exchangeNumber, int order_number, string clientOrderId);
   bool              Get_Balance(string sym, string quote_base, int exchangeNumber);
   string            Get_Exchange_Name(int exchangeNumber);
   bool              Get_Exchange_Server_Time(int exchangeNumber);
   bool              Get_FundRate(string sym, int exchangeNumber, int quote_precision);
   bool              Get_FundRateAll(int exchangeNumber,double minimum);
   bool              Get_OpenInterest(string sym, int exchangeNumber, int quote_precision);
   bool              Get_OpenOrders(string sym, int exchangeNumber, int quote_precision);
   bool              Get_PriceBest(string sym, int exchangeNumber, int quote_precision);
   bool              Get_Price(string sym, int exchangeNumber, int quote_precision);
   bool              Get_Position(string sym, int exchangeNumber, int quote_precision);
   double            Get_Wallet_Info(int robotInstance, string exchangeName, string walletInfoSymbol);
   bool              Hedge_Mode(bool on_true_off_false, int exchangeNumber);
   bool              Margin_Close_Position(string sym, string side, string orderType, string orderSize, string orderPrice, int quoteDigit, int lotDigit, int exchangeNumber);
   bool              Margin_Set_Leverage(string sym, double leverage, int exchangeNumber);
   bool              Modify_Trade(string sym, string side, string orderType, string orderSize,string orderPrice, string id,string clientId, int orderNumber,  int quoteDigit, int lotDigit,int exchangeNumber);
   bool              Open_Trade(string sym, string side, string orderType, string orderSize, string orderPrice, int quoteDigit, int lotDigit, int exchangeNumber,string orderId);
   bool              Open_Trade_Stop(string sym, string side, string orderType, string orderSize, string stopPrice, int quoteDigit, int lotDigit, int exchangeNumber,string orderId);
   bool              Open_Trade_StopLimit(string sym, string side, string orderType, string orderSize, string orderPrice, string stopPrice, int quoteDigit, int lotDigit, int exchangeNumber,string orderId);

   void              Parse_Positions(string exchangeName, int pos_location, int liq_location, int quoteDigit);
   void              Parse_Wallets(string exchangeName, int x, int y);

   void              Parse_Orders(string exchangeName, int order_location, int id_location);
   void              Parse_OrdersY(string exchangeName, int order_location_x,int order_location_y, int id_location_x, int id_location_y);
   void              Parse_Orders_v2(string exchangeName, int order_location, int id_location);

   string            Get_Transactions(int exchangeNumber, string sym, string transactionType, long startTime, long endTime);

   int               Get_SymbolVolumeDigit(int exchangeNumber, string sym);
   int               Get_SymbolQuoteDigit(int exchangeNumber, string sym);
  };
//+------------------------------------------------------------------+
//|               Run this function any time you switch exchanges.   |
//+------------------------------------------------------------------+
bool CryptoBridge::Init_Api_Keys(int exchange)
  {
   Print("CBP InitAPIKEYS");
   bool checked = false;
   add_chart_indicator();
   add_unique_id();

   /*
   if(exchange == 0)
     {
      return (Binance_Dex_Get_API_Key(Binance_Api_Key, Binance_Api_Secret));
     }
    */
   if(exchange == 1)
     {
      checked = Binance_Get_API_Key(Binance_Api_Key, Binance_Api_Secret);
      add_exchange_info(exchange);
      return (checked);
     }
   if(exchange == 2)
     {
      checked = Bybit_Get_API_Key(Bybit_Api_Key, Bybit_Api_Secret, Bybit_LiveDemo);
      add_exchange_info(exchange);
      return (checked);
     }
   if(exchange == 3)
     {
      checked = Bitmex_Get_API_Key(Bitmex_Api_Key, Bitmex_Api_Secret);
      add_exchange_info(exchange);
      return (checked);
     }
   /*
   if(exchange == 4)
     {

      return (Kucoin_Get_API_Key(Kucoin_Api_Key, Kucoin_Api_Secret, Kucoin_Passphase));
     }
   */
   if(exchange == 5)
     {
      checked = BinanceFutures_Get_API_Key(BinanceFutures_Api_Key, BinanceFutures_Api_Secret, BinanceFutures_LiveDemo);
      add_exchange_info(exchange);
      return (checked);
     }
   if(exchange == 6)
     {
      checked = Binance_US_Get_API_Key(Binance_US_Api_Key, Binance_US_Api_Secret);
      add_exchange_info(exchange);
      return (checked);
     }
   /*
   if(exchange == 7)
     {

      return (Deribit_Get_API_Key(Deribit_Api_Key, Deribit_Api_Secret));
     }
   if(exchange == 8)
     {

      return (Okex_Get_API_Key(Okex_Api_Key, Okex_Api_Secret, Okex_LiveDemo, Okex_Market_Type));
     }
   */
   if(exchange == 12)
     {
      checked =  FTX_Get_API_Key(FTX_Api_Key, FTX_Api_Secret);
      add_exchange_info(exchange);
      return (checked);
     }
   if(exchange == 21)
     {
      checked = BinanceFuturesC_Get_API_Key(BinanceFutures_Api_Key, BinanceFutures_Api_Secret, BinanceFutures_LiveDemo);
      add_exchange_info(exchange);
      return (checked);
     }
   return (false);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool CryptoBridge::Deinit_Api_Keys(int exchange)
  {
   Comment("");
   /*
   exchange has not been activated
   */
   if(exchange== -1)
     {
      return(false);
     }
   string ex_name = Get_Exchange_Name(exchange);
   /*

   Delete any objects that exist for this exchange
   - Wallet information

   */
   DeleteSubWindowObjectAll(0, "sub_wallet_"+ex_name+"_");
   ObjectDelete(0,"sub_wallet_"+ex_name);



   int id = delete_unique_id();                                                     // Get the CBP unique ID number
   Print("CBP DEINIT()" + IntegerToString(id) + " Exchange Name " + ex_name);
   if(ex_name != "")
     {
      GlobalVariablesDeleteAll(ex_name,0);                                          // Delete all GV that belong to this exchange name
      if(id!=0)
        {
         GlobalVariablesDeleteAll(IntegerToString(id) + ex_name,0);                 //Delete all GV that belong to this exchange name + unique_id
        }
     }
   return(true);
  }

//+------------------------------------------------------------------+
//|   return the exchange name                                       |
//+------------------------------------------------------------------+
string CryptoBridge::Get_Exchange_Name(int exchange_number)
  {
   if(exchange_number == 0)
     {
      return ("BinanceDex");
     }
   if(exchange_number == 1)
     {
      return ("Binance");
     }
   if(exchange_number == 2)
     {
      return ("Bybit");
     }
   if(exchange_number == 3)
     {
      return ("Bitmex");
     }
   if(exchange_number == 4)
     {
      return ("Kucoin");
     }
   if(exchange_number == 5)
     {
      return ("BinanceFutures");
     }
   if(exchange_number == 6)
     {
      return ("BinanceUS");
     }
   if(exchange_number == 7)
     {
      return ("Deribit");
     }
   if(exchange_number == 8)
     {
      return ("Okex");
     }
   if(exchange_number == 12)
     {
      return ("FTX");
     }
   if(exchange_number == 21)
     {
      return ("BinanceFuturesC");
     }
   return ("");
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool CryptoBridge::Hedge_Mode(bool on_true_off_false, int exchangeNumber)
  {
   Print("CBP HedgeMode");
   if(exchangeNumber == 5)
     {
      if(on_true_off_false)
        {
         return (BinanceFutures_HedgeMode("true"));
        }
      else
        {
         return (BinanceFutures_HedgeMode("false"));
        }
     }
   if(exchangeNumber == 21)
     {
      if(on_true_off_false)
        {
         return (BinanceFuturesC_HedgeMode("true"));
        }
      else
        {
         return (BinanceFuturesC_HedgeMode("false"));
        }
     }
   return (false);
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool CryptoBridge::Modify_Trade(string sym, string side, string orderType, string orderSize,string orderPrice, string id, string clientId, int orderNumber,  int quoteDigit, int lotDigit,int exchangeNumber)
  {
   Print("CBP ModifyTrade | orderPrice " + orderPrice + " | ID " + id + " |  Client ID " + clientId + " | Order Type " + orderType + " | quoteDigit " + IntegerToString(quoteDigit) + " | lotDigit " + IntegerToString(lotDigit));
   if(exchangeNumber == 1)
     {
      CryptoBridge::Cancel_Trade(sym,id,exchangeNumber,0,clientId);

      if(orderType=="LIMIT")
        {
         return (Binance_Open_Trade(sym, side, orderType, orderSize, orderPrice,quoteDigit,lotDigit,id));
        }
     }
   if(exchangeNumber == 2)
     {
      if(orderType=="LIMIT")
        {
         return (Bybit_Modify_Trade(sym, id,clientId, orderPrice,quoteDigit,lotDigit));
        }
      if(orderType=="STOPMARKET")       //CBP returns on line drag/drop function
        {
         return(Bybit_Modify_Trade_Conditional(sym,id,clientId,orderPrice,quoteDigit,lotDigit));
        }
     }

   if(exchangeNumber == 3)
     {
      return (Bitmex_Modify_Trade(sym, side, orderType, orderSize, orderPrice, id,clientId, quoteDigit, lotDigit));
     }

   if(exchangeNumber == 4)
     {
      // return (Kucoin_Open_Trade(sym, side, orderType, orderSize, orderPrice));
     }

   if(exchangeNumber == 5)
     {

      if(orderType=="STOPMARKET")       //CBP returns on line drag/drop function
        {
         orderType="STOP_LOSS";           // Bug fixed Nov 11 - 2020
        }

      /*
      Cancel the order
      */
      CryptoBridge::Cancel_Trade(sym,id,exchangeNumber,0,clientId); // Bug fixed Nov 11 - 2020

      /*
      Place a new order
      */

      if(orderType=="LIMIT")
        {
         return (BinanceFutures_Open_Trade(sym, side, orderType, orderSize, orderPrice,quoteDigit,lotDigit,id));
        }
      if(orderType=="STOP_LOSS")
        {
         return (BinanceFutures_Open_Trade_Stop(sym, side, orderType, orderSize, orderPrice,quoteDigit,lotDigit,id));
        }

     }

   if(exchangeNumber == 6)
     {
      CryptoBridge::Cancel_Trade(sym,id,exchangeNumber,0,clientId);
      if(orderType=="LIMIT")
        {
         return (Binance_US_Open_Trade(sym, side, orderType, orderSize, orderPrice,quoteDigit,lotDigit,id));
        }
     }

   if(exchangeNumber == 7)
     {
      //  return (Deribit_Open_Trade(sym, side, orderType, orderSize, orderPrice));
     }

   if(exchangeNumber == 12)
     {
      if(orderType=="LIMIT")
        {
         return (FTX_Modify_Trade(sym, id,clientId, orderPrice,quoteDigit,lotDigit));
        }
      if(orderType=="STOPMARKET")
        {
         return(FTX_Modify_Trade_Conditional(sym,id,orderPrice,quoteDigit,lotDigit));
        }

     }

   if(exchangeNumber == 21)
     {

      if(orderType=="STOPMARKET")       //CBP returns on line drag/drop function
        {
         orderType="STOP_LOSS";           // Bug fixed Nov 11 - 2020
        }

      /*
      Cancel the order
      */
      CryptoBridge::Cancel_Trade(sym,id,exchangeNumber,0,clientId); // Bug fixed Nov 11 - 2020

      /*
      Place a new order
      */

      if(orderType=="LIMIT")
        {
         return (BinanceFuturesC_Open_Trade(sym, side, orderType, orderSize, orderPrice,quoteDigit,lotDigit,id));
        }
      if(orderType=="STOP_LOSS")
        {
         return (BinanceFuturesC_Open_Trade_Stop(sym, side, orderType, orderSize, orderPrice,quoteDigit,lotDigit,id));
        }

     }

   return (false);
  }
//+------------------------------------------------------------------+
//|     market or limit order                                        |
//+------------------------------------------------------------------+
bool CryptoBridge::Open_Trade(string sym, string side, string orderType, string orderSize, string orderPrice, int quoteDigit, int lotDigit, int exchangeNumber, string orderId)
  {
   Print("CBP OpenTrade " + sym + " | " + side + " | " + orderType + " | " + orderSize + " | " + orderPrice+ " | " + IntegerToString(quoteDigit) + " | " + IntegerToString(lotDigit) + " | " + IntegerToString(exchangeNumber) + " | " + orderId);

   if(exchangeNumber == 1)
     {
      return (Binance_Open_Trade(sym, side, orderType, orderSize, orderPrice,quoteDigit,lotDigit,orderId));
     }
   if(exchangeNumber == 2)
     {
      return (Bybit_Open_Trade(sym, side, orderType, orderSize, orderPrice,quoteDigit,lotDigit,orderId));
     }
   if(exchangeNumber == 3)
     {
      return (Bitmex_Open_Trade(sym, side, orderType, orderSize, orderPrice,quoteDigit,lotDigit,orderId));
     }
   /*
   if(exchangeNumber == 4)
     {
      return (Kucoin_Open_Trade(sym, side, orderType, orderSize, orderPrice,quoteDigit,lotDigit, orderId));
     }
   */
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_Open_Trade(sym, side, orderType, orderSize, orderPrice,quoteDigit,lotDigit,orderId));
     }
   if(exchangeNumber == 6)
     {
      return (Binance_US_Open_Trade(sym, side, orderType, orderSize, orderPrice,quoteDigit,lotDigit,orderId));
     }
   /*
   if(exchangeNumber == 7)
     {
      return (Deribit_Open_Trade(sym, side, orderType, orderSize, orderPrice,quoteDigit,lotDigit));
     }
   */
   if(exchangeNumber == 12)
     {
      return (FTX_Open_Trade(sym, side, orderType, orderSize, orderPrice,quoteDigit,lotDigit,orderId));
     }
   if(exchangeNumber == 21)
     {
      return (BinanceFuturesC_Open_Trade(sym, side, orderType, orderSize, orderPrice,quoteDigit,lotDigit,orderId));
     }
   return (false);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool CryptoBridge::Open_Trade_Stop(string sym, string side, string orderType, string orderSize, string stopPrice, int quoteDigit, int lotDigit, int exchangeNumber, string orderId)
  {
   Print("CBP OpenTradeStop " + sym + " | " + side + " | " + orderType + " | " + orderSize + " | " + stopPrice + " | " + IntegerToString(quoteDigit) + " | " + IntegerToString(lotDigit) + " | " + IntegerToString(exchangeNumber) + " | " + orderId);

   if(exchangeNumber == 1)
     {
      return (Binance_Open_Trade_Stop(sym, side, orderType, orderSize,stopPrice,quoteDigit,lotDigit,orderId));
     }
   if(exchangeNumber == 2)
     {
      return (Bybit_Open_Trade_Stop(sym, side, orderType, orderSize, stopPrice,quoteDigit,lotDigit,orderId));
     }
   if(exchangeNumber == 3)
     {
      return (Bitmex_Open_Trade_Stop(sym, side, orderType, orderSize, stopPrice,quoteDigit,lotDigit,orderId));
     }
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_Open_Trade_Stop(sym, side, orderType, orderSize, stopPrice,quoteDigit,lotDigit,orderId));
     }
   if(exchangeNumber == 6)
     {
      return (Binance_US_Open_Trade_Stop(sym, side, orderType, orderSize,stopPrice,quoteDigit,lotDigit,orderId));
     }
   if(exchangeNumber == 12)
     {
      return (FTX_Open_Trade_Stop(sym, side, orderType, orderSize,stopPrice,quoteDigit,lotDigit,orderId));
     }
   if(exchangeNumber == 21)
     {
      return (BinanceFuturesC_Open_Trade_Stop(sym, side, orderType, orderSize, stopPrice,quoteDigit,lotDigit,orderId));
     }
   return (false);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool CryptoBridge::Open_Trade_StopLimit(string sym, string side, string orderType, string orderSize, string orderPrice, string stopPrice, int quoteDigit, int lotDigit, int exchangeNumber, string orderId)
  {
   Print("CBP OpenTradeStopLimit " + sym + " | " + side + " | " + orderType + " | " + orderSize +" | " + orderPrice +  " | " + stopPrice + " | " + IntegerToString(quoteDigit) + " | " + IntegerToString(lotDigit) + " | " + IntegerToString(exchangeNumber) + " | " + orderId);

   if(exchangeNumber == 1)
     {
      return (Binance_Open_Trade_StopLimit(sym, side, orderType, orderSize, orderPrice, stopPrice,quoteDigit,lotDigit,orderId));
     }
   if(exchangeNumber == 2)
     {
      return (Bybit_Open_Trade_StopLimit(sym, side, orderType, orderSize, orderPrice, stopPrice,quoteDigit,lotDigit,orderId));
     }
   if(exchangeNumber == 3)
     {
      return (Bitmex_Open_Trade_StopLimit(sym, side, orderType, orderSize, orderPrice, stopPrice,quoteDigit,lotDigit,orderId));
     }
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_Open_Trade_StopLimit(sym, side, orderType, orderSize, orderPrice, stopPrice,quoteDigit,lotDigit,orderId));
     }
   if(exchangeNumber == 6)
     {
      return (Binance_US_Open_Trade_StopLimit(sym, side, orderType, orderSize, orderPrice, stopPrice,quoteDigit,lotDigit,orderId));
     }
   if(exchangeNumber == 12)
     {
      return (FTX_Open_Trade_StopLimit(sym, side, orderType, orderSize, orderPrice, stopPrice,quoteDigit,lotDigit,orderId));
     }
   if(exchangeNumber == 21)
     {
      return (BinanceFuturesC_Open_Trade_StopLimit(sym, side, orderType, orderSize, orderPrice, stopPrice,quoteDigit,lotDigit,orderId));
     }
   return (false);
  }
//+------------------------------------------------------------------+
//|       cancel specific order based on order ID                    |
//+------------------------------------------------------------------+
bool CryptoBridge::Cancel_Trade(string sym, string orderId, int exchangeNumber, int order_number, string clientOrderId)
  {
   Print("CBP CancelTrade" + " | orderID " + orderId + " | clientID " + clientOrderId + " UI orderNumber " + order_number);

   string customsymbol = RemoveSymbolSeperator(sym,"_");
   string name = CryptoBridge::Get_Exchange_Name(exchangeNumber);

   if(order_number != -1)
     {
      DeleteGlobalOrderName(name, customsymbol, order_number + 1);  // Globals start at a value of 1
      DeleteSubWindowObjectName(0, "order_id" + IntegerToString(order_number));
      DeleteSubWindowObjectName(0, "orderid" + IntegerToString(order_number));
      DeleteSubWindowObjectName(0, "sub_order_" + IntegerToString(order_number));
     }

   if(orderId != "")
     {
      DeleteOjectLinesByDesc(orderId);
     }

   if(exchangeNumber == 1)
     {
      return (Binance_Cancel_Trade(sym, StringToInteger(orderId), clientOrderId));
     }
   if(exchangeNumber == 2)
     {
      return (Bybit_Cancel_Trade(sym, orderId,clientOrderId));
     }
   if(exchangeNumber == 3)
     {
      return (Bitmex_Cancel_Trade(sym, orderId,clientOrderId));
     }
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_Cancel_Trade(sym, StringToInteger(orderId),clientOrderId));
     }
   if(exchangeNumber == 6)
     {
      return (Binance_US_Cancel_Trade(sym, StringToInteger(orderId), clientOrderId));
     }
   /*
   if(exchangeNumber == 7)
     {
      return (Deribit_Cancel_Trade(sym, orderId));
     }
   */
   if(exchangeNumber == 12)
     {
      return (FTX_Cancel_Trade(sym, orderId,clientOrderId));
     }
   if(exchangeNumber == 21)
     {
      return (BinanceFuturesC_Cancel_Trade(sym, StringToInteger(orderId),clientOrderId));
     }
   return (false);
  }
//+------------------------------------------------------------------+
//|       cancel all orders                                          |
//+------------------------------------------------------------------+
bool CryptoBridge::Cancel_Trade_All(string sym, int exchangeNumber)
  {
   Print("CBP CancelAllTrades");
   string prefix = CryptoBridge::Get_Exchange_Name(exchangeNumber);

   DeleteGlobalPrefix(prefix +GLOBAL_Parse_Separator + "Order"+GLOBAL_Parse_Separator + sym); //- this is the global assigned to the orders
   DeleteSubWindowObjectAll(0, "sub_order_");   //  - this is the order string
   DeleteSubWindowObjectAll(0, "order_id");     //    - this is the order id string
   DeleteSubWindowObjectAll(0, "orderid");      //     - this is the order edit button "X" to cancel individual orders
   DeleteOjectLines(sym);                                        // - deletes the lines on the chart

   if(exchangeNumber == 1)
     {
      return (Binance_Cancel_Trade_All(sym));
     }
   if(exchangeNumber == 2)
     {
      return (Bybit_Cancel_Trade_All(sym));
     }
   if(exchangeNumber == 3)
     {
      return (Bitmex_Cancel_Trade_All(sym));
     }
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_Cancel_Trade_ALL(sym));
     }
   if(exchangeNumber == 6)
     {
      return (Binance_US_Cancel_Trade_All(sym));
     }
   if(exchangeNumber == 12)
     {
      return (FTX_Cancel_Trade_All(sym));
     }
   if(exchangeNumber == 21)
     {
      return (BinanceFuturesC_Cancel_Trade_ALL(sym));
     }
   return (false);
  }
//+------------------------------------------------------------------+
//|  fetch server time                                               |
//+------------------------------------------------------------------+
bool CryptoBridge::Get_Exchange_Server_Time(int exchangeNumber)
  {
   Print("CBP ServerTime");
   /*
   if(exchangeNumber == 0)
     {
      return (Binance_Dex_BlockTime());
     }
    */
   if(exchangeNumber == 1)
     {
      return (Binance_GetServerTime());
     }
   if(exchangeNumber == 2)
     {
      return (Bybit_GetServerTime());
     }
   if(exchangeNumber == 3)
     {
      return (Bitmex_GetServerTime());
     }
   /*
   if(exchangeNumber == 4)
     {
      return (Kucoin_GetServerTime());
     }
   */
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_GetServerTime());
     }
   if(exchangeNumber == 6)
     {
      return (Binance_US_GetServerTime());
     }
   /*
   if(exchangeNumber == 7)
     {
      return (Deribit_GetServerTime());
     }
   if(exchangeNumber == 8)
     {
      return (Okex_GetServerTime());
     }
   */
   if(exchangeNumber == 12)
     {
      return (FTX_GetServerTime());
     }
   if(exchangeNumber == 21)
     {
      return (BinanceFuturesC_GetServerTime());
     }
   return (false);
  }
//+------------------------------------------------------------------+
//|  Returns the top of the orderbook values: best bid and ask       |
//+------------------------------------------------------------------+
bool CryptoBridge::Get_PriceBest(string sym, int exchangeNumber, int quote_precision)
  {
   Print("CBP PriceBest");
   /*
   if(exchangeNumber == 0)
     {
      return (Binance_Dex_GetPriceBest(sym));
     }
   */
   if(exchangeNumber == 1)
     {
      return (Binance_GetPriceBest(sym, quote_precision));
     }
   if(exchangeNumber == 2)
     {
      return (Bybit_GetPriceBest(sym, quote_precision));
     }
   if(exchangeNumber == 3)
     {
      return (Bitmex_GetPriceBest(sym));
     }
   /*
   if(exchangeNumber == 4)
     {
      return (Kucoin_GetPriceBest(sym,quote_precision));
     }
   */
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_GetPriceBest(sym, quote_precision));
     }
   if(exchangeNumber == 6)
     {
      return (Binance_US_GetPriceBest(sym, quote_precision));
     }
   /*
   if(exchangeNumber == 7)
     {
      return (Deribit_GetPriceBest(sym, quote_precision));
     }
   if(exchangeNumber == 8)
     {
      return (Okex_GetPriceBest(sym, quote_precision));
     }
   */
   if(exchangeNumber == 12)
     {
      return (FTX_GetPriceBest(sym, quote_precision));
     }
   if(exchangeNumber == 21)
     {
      return (BinanceFuturesC_GetPriceBest(sym, quote_precision));
     }
   return (false);
  }
//+------------------------------------------------------------------+
//|   fetch   the last traded price                                  |
//+------------------------------------------------------------------+
bool CryptoBridge::Get_Price(string sym, int exchangeNumber, int quote_precision)
  {
   Print("CBP Price");
   /*
   if(exchangeNumber == 0)
     {
      return (Binance_Dex_GetPrice(sym));
     }
   */
   if(exchangeNumber == 1)
     {
      return (Binance_GetPrice(sym));
     }
   if(exchangeNumber == 2)
     {
      return (Bybit_GetPrice(sym, quote_precision));
     }
   if(exchangeNumber == 3)
     {
      return (Bitmex_GetPrice(sym));
     }
   /*
   if(exchangeNumber == 4)
     {
      return (Kucoin_GetPrice(sym));
     }
   */
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_GetPrice(sym, quote_precision));
     }
   if(exchangeNumber == 6)
     {
      return (Binance_US_GetPrice(sym));
     }
   /*
   if(exchangeNumber == 7)
     {
      return (Deribit_GetPrice(sym));
     }
   if(exchangeNumber == 8)
     {
      return (Okex_GetPrice(sym, quote_precision));
     }
   */
   if(exchangeNumber == 12)
     {
      return (FTX_GetPrice(sym, quote_precision));
     }
   if(exchangeNumber == 21)
     {
      return (BinanceFuturesC_GetPrice(sym, quote_precision));
     }
   return (false);
  }
//+------------------------------------------------------------------+
//|   fetch OpenInterest                                             |
//+------------------------------------------------------------------+
bool CryptoBridge::Get_OpenInterest(string sym, int exchangeNumber, int quote_precision)
  {
   Print("CBP OpenInterest");
   if(exchangeNumber == 0)
     {
      // return (Binance_Dex_GetPrice(sym));
     }
   if(exchangeNumber == 1)
     {
      //  return (Binance_GetPrice(sym));
     }
   if(exchangeNumber == 2)
     {
      return (Bybit_GetOpenInterest(sym, quote_precision));
     }
   if(exchangeNumber == 3)
     {
      //  return (Bitmex_GetPrice(sym));
     }
   if(exchangeNumber == 4)
     {
      //  return (Kucoin_GetPrice(sym));
     }
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_GetOpenInterest(sym, quote_precision));
     }
   if(exchangeNumber == 6)
     {
      //  return (Binance_US_GetPrice(sym));
     }
   if(exchangeNumber == 7)
     {
      //  return (Deribit_GetPrice(sym));
     }
   if(exchangeNumber == 8)
     {
      // return (Okex_GetPrice(sym,quote_precision));
     }
   if(exchangeNumber == 12)
     {
      return (FTX_GetOpenInterest(sym, quote_precision));
     }
   if(exchangeNumber == 21)
     {
      return (BinanceFuturesC_GetOpenInterest(sym, quote_precision));
     }
   return (false);
  }
//+------------------------------------------------------------------+
//|   fetch FundRate                                                 |
//+------------------------------------------------------------------+
bool CryptoBridge::Get_FundRate(string sym, int exchangeNumber, int quote_precision)
  {
   Print("CBP FundRate");
   if(exchangeNumber == 0)
     {
      //  return (Binance_Dex_GetPrice(sym));
     }
   if(exchangeNumber == 1)
     {
      //  return (Binance_GetPrice(sym));
     }
   if(exchangeNumber == 2)
     {
      return (Bybit_GetFundRate(sym, quote_precision));
     }
   if(exchangeNumber == 3)
     {
      //  return (Bitmex_GetPrice(sym));
     }
   if(exchangeNumber == 4)
     {
      //  return (Kucoin_GetPrice(sym));
     }
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_GetFundRate(sym, quote_precision));
     }
   if(exchangeNumber == 6)
     {
      //return (Binance_US_GetPrice(sym));
     }
   if(exchangeNumber == 7)
     {
      //  return (Deribit_GetPrice(sym));
     }
   if(exchangeNumber == 8)
     {
      //  return (Okex_GetPrice(sym,quote_precision));
     }
   if(exchangeNumber == 12)
     {
      return (FTX_GetFundRate(sym, quote_precision));
     }
   if(exchangeNumber == 21)
     {
      return (BinanceFuturesC_GetFundRate(sym, quote_precision));
     }
   return (false);
  }

//+------------------------------------------------------------------+
//| sets orders information within subwindow                         |
//+------------------------------------------------------------------+
bool CryptoBridge::Get_OpenOrders(string sym, int exchangeNumber, int quote_precision)
  {

   string prefix = CryptoBridge::Get_Exchange_Name(exchangeNumber);
   Print("CBP GetOpenOrders " + sym + " ExchangeName " + prefix);
   string ok = prefix +GLOBAL_Parse_Separator +"Order"+GLOBAL_Parse_Separator + sym;
   DeleteGlobalPrefix(ok);
   DeleteSubWindowObjectAll(0, "sub_order_"); // - this is the order string
   DeleteSubWindowObjectAll(0, "order_id");   //   - this is the order id string
   DeleteSubWindowObjectAll(0, "orderid");    //    - this is the order edit button "X" to cancel individual orders
   DeleteOjectLines(sym);

   if(exchangeNumber == 1)
     {
      return (Binance_GetOpenOrders(sym, quote_precision));
     }
   if(exchangeNumber == 2)
     {
      return (Bybit_GetOpenOrders(sym, quote_precision));
     }
   if(exchangeNumber == 3)
     {
      return (Bitmex_GetOpenOrders(sym, quote_precision));
     }
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_GetOpenOrders(sym, quote_precision));
     }
   if(exchangeNumber == 6)
     {
      return (Binance_US_GetOpenOrders(sym, quote_precision));
     }
   /*
   if(exchangeNumber == 7)
     {
      return (Deribit_GetOpenOrders(sym));
     }
   */
   if(exchangeNumber == 12)
     {
      return (FTX_GetOpenOrders(sym, quote_precision));
     }
   if(exchangeNumber == 21)
     {
      return (BinanceFuturesC_GetOpenOrders(sym, quote_precision));
     }
   return (false);
  }

//+------------------------------------------------------------------+
//| return true if pos closed on                                     |
//+------------------------------------------------------------------+
bool CryptoBridge::Margin_Close_Position(string sym, string side, string orderType, string orderSize, string orderPrice, int quoteDigit, int lotDigit, int exchangeNumber)
  {
   Print("CBP MarginClosePosition");
   if(exchangeNumber == 2)
     {
      return (Bybit_ClosePosition(sym, orderType));
     }
   if(exchangeNumber == 3)
     {
      return (Bitmex_ClosePosition(sym, orderType));
     }
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_Close_Trade(sym, side, orderType, orderSize, orderPrice,quoteDigit, lotDigit));
     }
   if(exchangeNumber == 21)
     {
      return (BinanceFuturesC_Close_Trade(sym, side, orderType, orderSize, orderPrice,quoteDigit, lotDigit));
     }
   return (false);
  }
//+------------------------------------------------------------------+
//| return the new leverage value                                    |
//+------------------------------------------------------------------+
bool CryptoBridge::Margin_Set_Leverage(string sym, double leverage, int exchangeNumber)
  {
   Print("CBP MarginSetLeverage");
   if(exchangeNumber == 2)
     {
      return (Bybit_Set_Leverage(sym, leverage));
     }
   if(exchangeNumber == 3)
     {
      return (Bitmex_Set_Leverage(sym, leverage));
     }
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_Set_Leverage(sym, leverage));
     }
   if(exchangeNumber == 12)
     {
      return (FTX_Set_Leverage("",leverage));
     }
   if(exchangeNumber == 21)
     {
      return (BinanceFuturesC_Set_Leverage(sym, leverage));
     }
   return (false);
  }
//+------------------------------------------------------------------+
//| return all wallet balances                                       |
//+------------------------------------------------------------------+
bool CryptoBridge::Get_Balance(string sym, string quote_base, int exchangeNumber)
  {
   Print("CBP GetBalance");
   string prefix = CryptoBridge::Get_Exchange_Name(exchangeNumber);
   DeleteGlobalPrefix(prefix + GLOBAL_Parse_Separator+ "Wallet");

   if(exchangeNumber == 1)
     {
      return (Binance_Balance(sym, quote_base));
     }
   if(exchangeNumber == 2)
     {
      return (Bybit_Balance(sym, quote_base));
     }
   if(exchangeNumber == 3)
     {
      return (Bitmex_Balance(sym, quote_base));
     }
   /*
   if(exchangeNumber == 4)
     {
      return (Kucoin_Balance(sym, quote_base));
     }
   */
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_Balance(sym, quote_base));
     }
   if(exchangeNumber == 6)
     {
      return (Binance_US_Balance(sym, quote_base));
     }
   /*
   if(exchangeNumber == 7)
     {
      return (Deribit_Balance(sym, quote_base));
     }
   */
   if(exchangeNumber == 12)
     {
      return (FTX_Balance(sym, quote_base));
     }
   if(exchangeNumber == 21)
     {
      return (BinanceFuturesC_Balance(sym, quote_base));
     }
   return (false);
  }

//+------------------------------------------------------------------+
//| Binance_Order_GVTETH_LIMIT_SELL_0.00750000_8.00000000            |
//+------------------------------------------------------------------+
string exchange_name[];
string exchange_symbol[];
string exchange_ordertype[];
string exchange_orderside[];
double exchange_orderprice[];
double exchange_ordersize[];
int exchange_orderindex[];
void CryptoBridge::Parse_Orders(string exchangeName, int order_location, int id_location)
  {
   Print(" CBP ParseOrders " + exchangeName);
   SetSubWindowText("sub_orders_text_", "Orders", order_location, 0, Gray, 10);

   int dash0 = 0;
   string name = "";
   string order_info = "";
   int counterD = 0;
   string orderstring = "";
   string exchange ="";
   int dash1,dash2,dash3,dash4,dash5,dash6,dash7;
   string wal,named_order,symbol,ordertype,ordersize,orderprice,orderside;
//--  Empty previous data
   ArrayFree(exchange_name);
   ArrayFree(exchange_symbol);
   ArrayFree(exchange_ordertype);
   ArrayFree(exchange_orderside);
   ArrayFree(exchange_orderprice);
   ArrayFree(exchange_ordersize);
   ArrayFree(exchange_orderindex);




   datetime bar_close = iTime(NULL, PERIOD_CURRENT, 0);
   int total = GlobalVariablesTotal();

   for(int i = 0; i < total; i++)
     {

      name = GlobalVariableName(i);
      dash0 = StringFind(name, GLOBAL_Parse_Separator, 0);
      exchange = StringSubstr(name, 0, dash0);

      if(exchange == exchangeName && dash0 != -1)
        {
         dash1 = StringFind(name, GLOBAL_Parse_Separator, dash0 + 1);   // SCAN AFTER THE PREVIOUS DASH
         wal = StringSubstr(name, dash0 + 1, -1); //
         dash2 = StringFind(wal, GLOBAL_Parse_Separator, 0);            // SCAN AFTER THE PREVIOUS DASH

         named_order = StringSubstr(wal, 0, 5); // Binance_Order_

         if("Order" == named_order && dash2 != -1)
           {

            order_info = StringSubstr(name, dash1 + 1, -1); // DONT INCLUDE THE DASH2

            //GVTETH_LIMIT_SELL_0.00750000_8.00000000
            dash3 = StringFind(order_info, GLOBAL_Parse_Separator, 0);
            symbol = StringSubstr(order_info, 0, dash3);
            //  Print("Dash3 (symbol) : " + symbol);

            dash4 = StringFind(order_info, GLOBAL_Parse_Separator, dash3 + 1);
            ordertype = StringSubstr(order_info, dash3 + 1, (dash4 - dash3) - 1);
            //  Print("Dash4 (ordertype) : " + ordertype + " dash3 (length) " + dash3 + " dash4 (length) " + dash4 );

            dash5 = StringFind(order_info, GLOBAL_Parse_Separator, dash4 + 1);
            orderside = StringSubstr(order_info, dash4 + 1, (dash5 - dash4) - 1);
            //   Print("Dash5 (orderside) : " + orderside + " dash4 (length) " + dash4 + " dash5 (length) " + dash5 );

            dash6 = StringFind(order_info, GLOBAL_Parse_Separator, dash5 + 1);
            orderprice = StringSubstr(order_info, dash5 + 1, (dash6 - dash5) - 1);
            // Print("Dash6 (orderprice) : " + orderprice + " dash5 (length) " + dash5 + " dash6 (length) " + dash6 );

            dash7 = StringFind(order_info, GLOBAL_Parse_Separator, dash6 + 1);
            ordersize = StringSubstr(order_info, dash6 + 1, (dash7 - dash6) - 1);
            //  Print("Dash7 (ordersize) : " + ordersize + " dash6 (length) " + dash6 + " dash7 (length) " + dash7 );

            // COUNTER STARTS AT ZERO SO WE ADD ONE
            ArrayResize(exchange_name, counterD + 1, 0);
            ArrayResize(exchange_symbol, counterD + 1, 0);
            ArrayResize(exchange_ordertype, counterD + 1, 0);
            ArrayResize(exchange_orderside, counterD + 1, 0);
            ArrayResize(exchange_orderprice, counterD + 1, 0);
            ArrayResize(exchange_ordersize, counterD + 1, 0);
            ArrayResize(exchange_orderindex, counterD + 1, 0);

            // COUNTER STARTS AT ZERO for array[0] =
            exchange_name[counterD] = exchange;
            exchange_symbol[counterD] = symbol;
            exchange_ordertype[counterD] = ordertype;
            exchange_orderside[counterD] = orderside;
            exchange_orderprice[counterD] = StringToDouble(orderprice);
            exchange_ordersize[counterD] = StringToDouble(ordersize);
            exchange_orderindex[counterD] = (int) GlobalVariableGet(name);
            counterD++;
           }
        }
     }
   /*
          Create order object on the chart
   */

   int loop_main = ArraySize(exchange_name);
   if(loop_main > 0)
     {
      // for(int i =0; i < loop_main; i++) // working for bitmex oct25 - 2020 ( does this break other exchanges?)
      for(int i = loop_main - 1; i > -1; i--) // Testing binance futures ( this was the default) Nov 15 (working - bug fixed)
        {
         if(exchange_orderside[i] == "BUY" && exchange_ordertype[i] != "STOPLIMIT")
           {
            CreateOrderEntryLine(exchange_symbol[i] +GLOBAL_Parse_Separator+exchange_ordertype[i]+ GLOBAL_Parse_Separator +"BUY" + GLOBAL_Parse_Separator  +exchange_ordersize[i] + GLOBAL_Parse_Separator + IntegerToString(i), GetObjectDesc(exchange_orderindex[i]-1), bar_close - 6000, exchange_orderprice[i], bar_close, exchange_orderprice[i], Order_Color_Buy, OrderlineThickness, OrderlineStyle);
           }
         if(exchange_orderside[i] == "SELL" && exchange_ordertype[i] != "STOPLIMIT")
           {
            CreateOrderEntryLine(exchange_symbol[i] +GLOBAL_Parse_Separator+exchange_ordertype[i]+ GLOBAL_Parse_Separator + "SELL"+ GLOBAL_Parse_Separator  +exchange_ordersize[i] + GLOBAL_Parse_Separator + IntegerToString(i), GetObjectDesc(exchange_orderindex[i]-1), bar_close - 6000, exchange_orderprice[i], bar_close, exchange_orderprice[i], Order_Color_Sell, OrderlineThickness, OrderlineStyle);
           }
         /*
         stop limit orders need to be a different color because these orders require two prices and drag to modify will be disabled
         Order_Color_StopLimit
         */
         if(exchange_orderside[i] == "BUY" && exchange_ordertype[i] == "STOPLIMIT")
           {
            CreateOrderEntryLine(exchange_symbol[i] +GLOBAL_Parse_Separator+exchange_ordertype[i]+ GLOBAL_Parse_Separator + "BUY"+ GLOBAL_Parse_Separator   +exchange_ordersize[i] + GLOBAL_Parse_Separator + IntegerToString(i), GetObjectDesc(exchange_orderindex[i]-1), bar_close - 6000, exchange_orderprice[i], bar_close, exchange_orderprice[i], Order_Color_StopLimit, OrderlineThickness, OrderlineStyle);
           }
         if(exchange_orderside[i] == "SELL" && exchange_ordertype[i] == "STOPLIMIT")
           {
            CreateOrderEntryLine(exchange_symbol[i] +GLOBAL_Parse_Separator+exchange_ordertype[i]+ GLOBAL_Parse_Separator + "SELL"+ GLOBAL_Parse_Separator  +exchange_ordersize[i] + GLOBAL_Parse_Separator + IntegerToString(i), GetObjectDesc(exchange_orderindex[i]-1), bar_close - 6000, exchange_orderprice[i], bar_close, exchange_orderprice[i], Order_Color_StopLimit, OrderlineThickness, OrderlineStyle);
           }
        }
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void CryptoBridge::Parse_OrdersY(string exchangeName, int order_location_x,int order_location_y, int id_location_x, int id_location_y)
  {
   Print(" CBP ParseOrders " + exchangeName);
   SetSubWindowText("sub_orders_text_", "Orders", order_location_x, order_location_y, Gray, 10);

   int dash0 = 0;
   string name = "";
   string order_info = "";
   int counterD = 0;
   string orderstring = "";
   string exchange ="";
   int dash1,dash2,dash3,dash4,dash5,dash6,dash7;
   string wal,named_order,symbol,ordertype,ordersize,orderprice,orderside;
//--  Empty previous data
   ArrayFree(exchange_name);
   ArrayFree(exchange_symbol);
   ArrayFree(exchange_ordertype);
   ArrayFree(exchange_orderside);
   ArrayFree(exchange_orderprice);
   ArrayFree(exchange_ordersize);
   ArrayFree(exchange_orderindex);




   datetime bar_close = iTime(NULL, PERIOD_CURRENT, 0);
   int total = GlobalVariablesTotal();

   for(int i = 0; i < total; i++)
     {

      name = GlobalVariableName(i);
      dash0 = StringFind(name, "_", 0);
      exchange = StringSubstr(name, 0, dash0);

      if(exchange == exchangeName && dash0 != -1)
        {
         dash1 = StringFind(name, "_", dash0 + 1);   // SCAN AFTER THE PREVIOUS DASH
         wal = StringSubstr(name, dash0 + 1, -1); //
         dash2 = StringFind(wal, "_", 0);            // SCAN AFTER THE PREVIOUS DASH

         named_order = StringSubstr(wal, 0, 5); // Binance_Order_

         if("Order" == named_order && dash2 != -1)
           {

            order_info = StringSubstr(name, dash1 + 1, -1); // DONT INCLUDE THE DASH2

            //GVTETH_LIMIT_SELL_0.00750000_8.00000000
            dash3 = StringFind(order_info, "_", 0);
            symbol = StringSubstr(order_info, 0, dash3);
            //  Print("Dash3 (symbol) : " + symbol);

            dash4 = StringFind(order_info, "_", dash3 + 1);
            ordertype = StringSubstr(order_info, dash3 + 1, (dash4 - dash3) - 1);
            //  Print("Dash4 (ordertype) : " + ordertype + " dash3 (length) " + dash3 + " dash4 (length) " + dash4 );

            dash5 = StringFind(order_info, "_", dash4 + 1);
            orderside = StringSubstr(order_info, dash4 + 1, (dash5 - dash4) - 1);
            //   Print("Dash5 (orderside) : " + orderside + " dash4 (length) " + dash4 + " dash5 (length) " + dash5 );

            dash6 = StringFind(order_info, "_", dash5 + 1);
            orderprice = StringSubstr(order_info, dash5 + 1, (dash6 - dash5) - 1);
            // Print("Dash6 (orderprice) : " + orderprice + " dash5 (length) " + dash5 + " dash6 (length) " + dash6 );

            dash7 = StringFind(order_info, "_", dash6 + 1);
            ordersize = StringSubstr(order_info, dash6 + 1, (dash7 - dash6) - 1);
            //  Print("Dash7 (ordersize) : " + ordersize + " dash6 (length) " + dash6 + " dash7 (length) " + dash7 );

            // COUNTER STARTS AT ZERO SO WE ADD ONE
            ArrayResize(exchange_name, counterD + 1, 0);
            ArrayResize(exchange_symbol, counterD + 1, 0);
            ArrayResize(exchange_ordertype, counterD + 1, 0);
            ArrayResize(exchange_orderside, counterD + 1, 0);
            ArrayResize(exchange_orderprice, counterD + 1, 0);
            ArrayResize(exchange_ordersize, counterD + 1, 0);
            ArrayResize(exchange_orderindex, counterD + 1, 0);

            // COUNTER STARTS AT ZERO for array[0] =
            exchange_name[counterD] = exchange;
            exchange_symbol[counterD] = symbol;
            exchange_ordertype[counterD] = ordertype;
            exchange_orderside[counterD] = orderside;
            exchange_orderprice[counterD] = StringToDouble(orderprice);
            exchange_ordersize[counterD] = StringToDouble(ordersize);
            exchange_orderindex[counterD] = (int) GlobalVariableGet(name);
            counterD++;
           }
        }
     }
   /*
          Create order object on the chart
   */

   int loop_main = ArraySize(exchange_name);
   if(loop_main > 0)
     {
      // for(int i =0; i < loop_main; i++) // working for bitmex oct25 - 2020 ( does this break other exchanges?)
      for(int i = loop_main - 1; i > -1; i--) // Testing binance futures ( this was the default) Nov 15 (working - bug fixed)
        {
         if(exchange_orderside[i] == "BUY" && exchange_ordertype[i] != "STOPLIMIT")
           {
            CreateOrderEntryLine(exchange_symbol[i] +"_"+exchange_ordertype[i]+ "_BUY_"  +exchange_ordersize[i] + "_" + IntegerToString(i), GetObjectDesc(exchange_orderindex[i]-1), bar_close - 6000, exchange_orderprice[i], bar_close, exchange_orderprice[i], Order_Color_Buy, OrderlineThickness, OrderlineStyle);
           }
         if(exchange_orderside[i] == "SELL" && exchange_ordertype[i] != "STOPLIMIT")
           {
            CreateOrderEntryLine(exchange_symbol[i] +"_"+exchange_ordertype[i]+ "_SELL_" +exchange_ordersize[i] + "_" + IntegerToString(i), GetObjectDesc(exchange_orderindex[i]-1), bar_close - 6000, exchange_orderprice[i], bar_close, exchange_orderprice[i], Order_Color_Sell, OrderlineThickness, OrderlineStyle);
           }
         /*
         stop limit orders need to be a different color because these orders require two prices and drag to modify will be disabled
         Order_Color_StopLimit
         */
         if(exchange_orderside[i] == "BUY" && exchange_ordertype[i] == "STOPLIMIT")
           {
            CreateOrderEntryLine(exchange_symbol[i] +"_"+exchange_ordertype[i]+ "_BUY_"  +exchange_ordersize[i] + "_" + IntegerToString(i), GetObjectDesc(exchange_orderindex[i]-1), bar_close - 6000, exchange_orderprice[i], bar_close, exchange_orderprice[i], Order_Color_StopLimit, OrderlineThickness, OrderlineStyle);
           }
         if(exchange_orderside[i] == "SELL" && exchange_ordertype[i] == "STOPLIMIT")
           {
            CreateOrderEntryLine(exchange_symbol[i] +"_"+exchange_ordertype[i]+ "_SELL_" +exchange_ordersize[i] + "_" + IntegerToString(i), GetObjectDesc(exchange_orderindex[i]-1), bar_close - 6000, exchange_orderprice[i], bar_close, exchange_orderprice[i], Order_Color_StopLimit, OrderlineThickness, OrderlineStyle);
           }
        }
     }
  }
//+------------------------------------------------------------------+
//|   fetch the open positions                                       |
//+------------------------------------------------------------------+
bool CryptoBridge::Get_Position(string sym, int exchangeNumber, int quote_precision)
  {
   Print("CBP GetPosition on Symbol(" + sym + ")");
   DeleteOjectLinesByDesc("ENTRY_BUY");
   DeleteOjectLinesByDesc("ENTRY_SELL");
   string prefix = CryptoBridge::Get_Exchange_Name(exchangeNumber);
   DeleteGlobalPrefix(prefix +GLOBAL_Parse_Separator +"POS" + GLOBAL_Parse_Separator);     // - this is the position global variable
   DeleteGlobalPrefix(prefix +GLOBAL_Parse_Separator +"LIQ"+ GLOBAL_Parse_Separator);     // - this is the pos  liq global variable
   DeleteSubWindowObjectAll(0, "sub_pos_"); // - this is the position string
   DeleteSubWindowObjectAll(0, "sub_liq_"); // - this is the liquidation string
   /*
   delete the TP and SL lines on the chart if exists
   */
   DeleteOjectLinesByName("TP1b");
   DeleteOjectLinesByName("TP2b");
   DeleteOjectLinesByName("TP3b");
   DeleteOjectLinesByName("TP4b");
   DeleteOjectLinesByName("SL1b");
   DeleteOjectLinesByName("SL2b");
   DeleteOjectLinesByName("SL3b");
   DeleteOjectLinesByName("SL4b");
   DeleteOjectLinesByName("TP1s");
   DeleteOjectLinesByName("TP2s");
   DeleteOjectLinesByName("TP3s");
   DeleteOjectLinesByName("TP4s");
   DeleteOjectLinesByName("SL1s");
   DeleteOjectLinesByName("SL2s");
   DeleteOjectLinesByName("SL3s");
   DeleteOjectLinesByName("SL4s");

   if(exchangeNumber == 2)
     {
      return (Bybit_Positions(sym, quote_precision));
     }
   if(exchangeNumber == 3)
     {
      return (Bitmex_Positions(sym, quote_precision));
     }
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_Positions(sym, quote_precision));
     }
   /*
   if(exchangeNumber == 7)
     {
      return (Deribit_Positions(sym, quote_precision));
     }
   */
   if(exchangeNumber == 12)
     {
      return (FTX_Positions(sym, quote_precision));
     }
   if(exchangeNumber == 21)
     {
      return (BinanceFuturesC_Positions(sym, quote_precision));
     }
   return (false);
  }
//+------------------------------------------------------------------+
//| Binance_Pos_GVTETH_MARKET_SELL_0.00750000_8.00000000            |
//+------------------------------------------------------------------+
string exchange_name_p[];
string exchange_symbol_p[];
string exchange_orderside_p[];
double exchange_orderprice_p[];
double exchange_ordersize_p[];
double exchange_orderliquidation_p[];
void CryptoBridge::Parse_Positions(string exchangeName, int pos_location, int liq_location, int quoteDigit)
  {
   Print(" CBP ParsePositions " + exchangeName);
// Empty previous data
   ArrayFree(exchange_name_p);
   ArrayFree(exchange_symbol_p);
   ArrayFree(exchange_orderside_p);
   ArrayFree(exchange_orderprice_p);
   ArrayFree(exchange_ordersize_p);
   ArrayFree(exchange_orderliquidation_p);



// Positions Lable on the chart
   SetSubWindowText("sub_position_text_", "Positions", pos_location, 0, Gray, 10);
   SetSubWindowText("sub_liq_text_", "LIQ", 210, 0, Gray, 10);

   string positionarray[];
   int total = GlobalVariablesTotal();
   string name = "";
   string position_info = "";

   int counterB = 0; // COUNTER STARTS AT ZERO
   int counterD = 0; // COUNTER STARTS AT ZERO

   for(int i = 0; i < total; i++)
     {
      name = GlobalVariableName(i);
      int dash1 = StringFind(name, GLOBAL_Parse_Separator, 0);

      string exchange = StringSubstr(name, 0, dash1);
      if(exchange == exchangeName && dash1 != -1)
        {

         int dash2 = StringFind(name, GLOBAL_Parse_Separator, dash1 + 1);
         string wal = StringSubstr(name, dash1 + 1, -1);

         int dash3 = StringFind(wal, GLOBAL_Parse_Separator, 0);

         string wall = StringSubstr(wal, 0, 3); // POS"

         if("POS" == wall && dash3 != -1)
           {

            ArrayResize(positionarray, counterB + 1, 0);             // COUNTER STARTS AT ZERO SO WE ADD ONE
            position_info = StringSubstr(name, dash2 + 1, -1); // DONT INCLUDE THE DASH2

            //GVTETH
            int dash4 = StringFind(position_info, GLOBAL_Parse_Separator, 0);
            string symbol = StringSubstr(position_info, 0, dash4);
            //  Print("Dash4 (symbol) : " + symbol);

            //MARKET
            int dash5 = StringFind(position_info, GLOBAL_Parse_Separator, dash4 + 1);
            string ordertype = StringSubstr(position_info, dash4 + 1, (dash5 - dash4) - 1);
            //  Print("Dash5 (ordertype) : " + ordertype  );//+ " dash4 (length) " + dash4 + " dash5 (length) " + dash5

            //Buy or Sell or None(bybit) or BOTH for binanceFutures
            int dash6 = StringFind(position_info, GLOBAL_Parse_Separator, dash5 + 1);
            string orderside = StringSubstr(position_info, dash5 + 1, (dash6 - dash5) - 1);
            //  Print("Dash6 (orderside) : " + orderside  );//+ " dash4 (length) " + dash4 + " dash5 (length) " + dash5

            // Price
            int dash7 = StringFind(position_info, GLOBAL_Parse_Separator, dash6 + 1);
            string orderprice = StringSubstr(position_info, dash6 + 1, (dash7 - dash6) - 1);
            //  Print("Dash7 (orderprice) : " + orderprice  );//+ " dash5 (length) " + dash5 + " dash6 (length) " + dash6

            // volume
            int dash8 = StringFind(position_info, GLOBAL_Parse_Separator, dash7 + 1);
            string ordersize = StringSubstr(position_info, dash7 + 1, (dash8 - dash7) - 1);
            //  Print("Dash8 (ordersize) : " + ordersize );// + " dash6 (length) " + dash6 + " dash7 (length) " + dash7

            // COUNTER STARTS AT ZERO SO WE ADD ONE
            ArrayResize(exchange_name_p, counterD + 1, 0);
            ArrayResize(exchange_symbol_p, counterD + 1, 0);

            ArrayResize(exchange_orderside_p, counterD + 1, 0);
            ArrayResize(exchange_orderprice_p, counterD + 1, 0);
            ArrayResize(exchange_ordersize_p, counterD + 1, 0);

            // COUNTER STARTS AT ZERO for array[0] =
            exchange_name_p[counterD] = exchange;
            exchange_symbol_p[counterD] = symbol;
            exchange_orderside_p[counterD] = orderside;
            exchange_orderprice_p[counterD] = StringToDouble(orderprice);
            exchange_ordersize_p[counterD] = StringToDouble(ordersize);

            positionarray[counterB] = position_info; // COUNTER STARTS AT ZERO for array[0] =
            counterB++;                        // COUNTER ADDS ONE
            counterD++;                        // COUNTER ADDS ONE
           }
        }
     }



   if(counterB > 0)
     {
      ArrayResize(positionarray, counterB, 0);
      datetime bar_close = iTime(NULL, PERIOD_CURRENT, 0);
      for(int i = 0; i < counterB; i++)
        {

         if(exchange_ordersize_p[i] != 0)
           {
            SetSubWindowText("sub_pos_" + IntegerToString(i), positionarray[i], pos_location, 20 + (25 * i), Gray, 10);
            CreateEntryLine(exchange_symbol_p[i] +GLOBAL_Parse_Separator +  "ENTRY", "ENTRY_"+exchange_orderside_p[i], bar_close - 6000, exchange_orderprice_p[i], bar_close, exchange_orderprice_p[i], Entry_Color, EntrylineThickness, EntrylineStyle);
           }
        }
     }

   /*
     - Need to loop over the
     - Bybit_LIQ_ETHUSD global( double price )
   */
   double liquidationarray[];
   int counterE = 0;
   for(int i = 0; i < total; i++)
     {
      name = GlobalVariableName(i);
      int dash1 = StringFind(name, GLOBAL_Parse_Separator, 0);

      string exchange = StringSubstr(name, 0, dash1);
      if(exchange == exchangeName && dash1 != -1)
        {

         int dash2 = StringFind(name, GLOBAL_Parse_Separator, dash1 + 1);
         string wal = StringSubstr(name, dash1 + 1, -1);

         int dash3 = StringFind(wal, GLOBAL_Parse_Separator, 0);

         string wall = StringSubstr(wal, 0, 3); // LIQ"

         if("LIQ" == wall && dash3 != -1)
           {

            string liq_info = StringSubstr(name, dash2 + 1, -1); // DONT INCLUDE THE DASH2
            int dash4 = StringFind(liq_info, GLOBAL_Parse_Separator, 0);
            string symbol = StringSubstr(liq_info, 0, dash4);
            // Print("LIQ Dash4 (symbol) : " + symbol);
            double liq = GlobalVariableGet(name);

            // COUNTER STARTS AT ZERO SO WE ADD ONE
            ArrayResize(exchange_orderliquidation_p, counterE + 1, 0);
            exchange_orderliquidation_p[counterE] = liq;

            // COUNTER STARTS AT ZERO SO WE ADD ONE
            ArrayResize(liquidationarray, counterE + 1, 0);
            liquidationarray[counterE] = StringToDouble(DoubleToString(liq, quoteDigit));
            counterE++;
           }
        }
     }

   int loop_liq = ArraySize(liquidationarray);

   if(loop_liq > 0)
     {
      ArrayResize(liquidationarray, loop_liq);
      for(int i = 0; i < loop_liq; i++)
        {

         if(liquidationarray[i] > 0)
           {
            SetSubWindowText("sub_liq_" + IntegerToString(i), DoubleToString(liquidationarray[i], quoteDigit), liq_location, 20 + (25 * i), Gray, 10);
           }
        }
     }
  }
/*
 parse exchange#Wallet#Symbol

 Feb 20 - change the names to allow more than one exchange data within the indicator window

 need to delete the values from the indicator window


*/
string exchange_wallets[];
double exchange_wallets_balance[];
void CryptoBridge::Parse_Wallets(string exchangeName, int x, int y)
  {

   ArrayFree(exchange_wallets);
   ArrayFree(exchange_wallets_balance);

   DeleteSubWindowObjectAll(0, "sub_wallet_"+exchangeName+"_");

   SetSubWindowText("sub_wallet_"+exchangeName, exchangeName + " Wallets", x, y, Gray, 10);

   string walletarray[];
   int total = GlobalVariablesTotal();
   string name = "";
   string wallet = "";

   int countD = 0; // COUNTER STARTS AT ZERO

   for(int i = 0; i < total; i++)
     {
      name = GlobalVariableName(i);
      int dash1 = StringFind(name, GLOBAL_Parse_Separator, 0); // exchange_wallet_SYMBOL

      string exchange = StringSubstr(name, 0, dash1);
      if(exchange == exchangeName && dash1 != -1)
        {
         // Print(" MATCH exchange name " + exchange);

         int dash2 = StringFind(name, GLOBAL_Parse_Separator, dash1 + 1);   // SCAN AFTER THE PREVIOUS DASH
         string wal = StringSubstr(name, dash1 + 1, -1); // FIND THE "Wallet_sym"

         int dash3 = StringFind(wal, GLOBAL_Parse_Separator, 0); // SCAN AFTER THE PREVIOUS DASH
         //Wallet_GVT

         string wall = StringSubstr(wal, 0, 6); // Wallet"
         //  Print("DEBUG2: " + wall);

         if("Wallet" == wall && dash3 != -1)
           {
            ArrayResize(walletarray, countD + 1, 0);        // count STARTS AT ZERO SO WE ADD ONE
            wallet = StringSubstr(name, dash2 + 1, -1); // DONT INCLUDE THE DASH2
            walletarray[countD] = wallet;                   // count STARTS AT ZERO for array[0] =
            countD++;                                   // count ADDS ONE
           }
        }
     }

   if(countD > 0)
     {
      ArrayResize(walletarray, countD, 0);
      ArrayResize(exchange_wallets, countD, 0);
      ArrayResize(exchange_wallets_balance, countD, 0);
      
      for(int i = 0; i < countD; i++)
        {
         exchange_wallets[i] = walletarray[i];
         exchange_wallets_balance[i] = GetGlobal(exchangeName, GLOBAL_Parse_Separator + "Wallet" +GLOBAL_Parse_Separator + walletarray[i]);
         SetSubWindowText("sub_wallet_"+exchangeName+"_" + IntegerToString(i), walletarray[i] + "(" + DoubleToString(exchange_wallets_balance[i], 8) + ")", x, (y+16) + (20 * i), Green, 12);
         
         RewriteGlobals(exchangeName + GLOBAL_Parse_Separator + "Wallet" + GLOBAL_Parse_Separator +walletarray[i], 
            unique_id + exchangeName + GLOBAL_Parse_Separator + "Wallet" + GLOBAL_Parse_Separator + walletarray[i]);

       
        }
     }
  }

/*
 parse RobotInstance_exchange_wallet_
 PNL
 MARGIN
 SYMBOL
*/
double CryptoBridge::Get_Wallet_Info(int robotInstance, string exchangeName, string walletInfoSymbol)
  {

   int total = GlobalVariablesTotal();
   string name = "";
   for(int i = 0; i < total; i++)
     {
      name = GlobalVariableName(i);
      int dash1 = StringFind(name, "_", 0); // robot_instance
      string robot_number = StringSubstr(name, 0, dash1);
      long str_num = StringToInteger(robot_number);

      if(str_num == robotInstance  && dash1 != -1)
        {

         int dash2 = StringFind(name, "_", dash1);
         int dash3 = StringFind(name, "_", dash2+1);
         int dash4 = StringFind(name, "_", dash3+1);
         int dash5 = StringFind(name, "_", dash4+1);
         int dash6 = StringFind(name, "_", dash5+1);
         string ex_number = StringSubstr(name, 0,dash1);
         string ex_name = StringSubstr(name, dash1+1,(dash3-dash2)-1);
         string ex_wallet = StringSubstr(name, dash3+1, (dash4-dash3)-1);
         string ex_info = StringSubstr(name, dash4+1,-1);

         if(ex_name == exchangeName)
           {

            if(ex_wallet == "Wallet")
              {

               if(ex_info == walletInfoSymbol)
                 {
                  return(GlobalVariableGet(name));
                 }
              }
           }
        }
     }
   return(0);
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void add_chart_indicator()
  {
   bool exist = false;
//--- The number of windows on the chart (at least one main window is always present)
   int windows=(int)ChartGetInteger(0,CHART_WINDOWS_TOTAL);
//--- Check all windows
   for(int w=0; w<windows; w++)
     {
      //--- the number of indicators in this window/subwindow
      int total=ChartIndicatorsTotal(0,w);
      //--- Go through all indicators in the window
      for(int i=0; i<total; i++)
        {
         //--- get the short name of an indicator
         string name=ChartIndicatorName(0,w,i);

         if(name == "SubWindow")
           {
            //--- get the handle of an indicator
            int handle=ChartIndicatorGet(0,w,name);
            IndicatorRelease(handle);
            exist  = true;
            break;
           }
        }
      if(exist)
         break;
     }

   if(exist)
      return;
   /*
   else the indicator does not exist and
   - place the indicator on the chart automatically
   - dir - "Examples\\Custom Moving Average
   */
   int indicator_handle=iCustom(NULL,PERIOD_CURRENT,"SubWindow");
   int subwindow=(int)ChartGetInteger(0,CHART_WINDOWS_TOTAL);

   ChartIndicatorAdd(0,subwindow,indicator_handle);
  }
//+------------------------------------------------------------------+
void CryptoBridge::add_unique_id()
  {
   const string id = "CBP";
   double value = GlobalVariableGet(id);
   if(value == 0)
     {
      GlobalVariableSet(id,1);
      unique_id = 1;
     }

   if(value > 0)
     {
      GlobalVariableSet(id,value+1);
      unique_id = value+1;
     }
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int CryptoBridge::delete_unique_id()
  {
   const string id = "CBP";
   double value = GlobalVariableGet(id);
   if(value > 0)
     {
      GlobalVariableSet(id,value-1);
     }
   else
     {
      GlobalVariableSet(id,0);
     }
   return(value);
  }


//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void CryptoBridge::Parse_Orders_v2(string exchangeName, int order_location, int id_location)
  {
   Print(" CBP ParseOrders " + exchangeName);

   int dash0 = 0;
   string name = "";
   string order_info = "";
   int counterD = 0;
   string orderstring = "";
   string exchange ="";
   int dash1,dash2,dash3,dash4,dash5,dash6,dash7;
   string wal,named_order,symbol,ordertype,ordersize,orderprice,orderside;
//--  Empty previous data
   ArrayFree(exchange_name);
   ArrayFree(exchange_symbol);
   ArrayFree(exchange_ordertype);
   ArrayFree(exchange_orderside);
   ArrayFree(exchange_orderprice);
   ArrayFree(exchange_ordersize);
   ArrayFree(exchange_orderindex);

   SetSubWindowText("sub_orders_text_", "Orders", order_location, 0, Gray, 10);


   datetime bar_close = iTime(NULL, PERIOD_CURRENT, 0);
   int total = GlobalVariablesTotal();

   for(int i = 0; i < total; i++)
     {

      name = GlobalVariableName(i);



      string sep=GLOBAL_Parse_Separator;
      ushort u_sep;
      string result[];
      u_sep=StringGetCharacter(sep,0);
      int k=StringSplit(name,u_sep,result);
































      dash0 = StringFind(name, "_", 0);
      exchange = StringSubstr(name, 0, dash0);

      if(exchange == exchangeName && dash0 != -1)
        {
         dash1 = StringFind(name, "_", dash0 + 1);   // SCAN AFTER THE PREVIOUS DASH
         wal = StringSubstr(name, dash0 + 1, -1); //
         dash2 = StringFind(wal, "_", 0);            // SCAN AFTER THE PREVIOUS DASH

         named_order = StringSubstr(wal, 0, 5); // Binance_Order_

         if("Order" == named_order && dash2 != -1)
           {

            order_info = StringSubstr(name, dash1 + 1, -1); // DONT INCLUDE THE DASH2

            //GVTETH_LIMIT_SELL_0.00750000_8.00000000
            dash3 = StringFind(order_info, "_", 0);
            symbol = StringSubstr(order_info, 0, dash3);
            //  Print("Dash3 (symbol) : " + symbol);

            dash4 = StringFind(order_info, "_", dash3 + 1);
            ordertype = StringSubstr(order_info, dash3 + 1, (dash4 - dash3) - 1);
            //  Print("Dash4 (ordertype) : " + ordertype + " dash3 (length) " + dash3 + " dash4 (length) " + dash4 );

            dash5 = StringFind(order_info, "_", dash4 + 1);
            orderside = StringSubstr(order_info, dash4 + 1, (dash5 - dash4) - 1);
            //   Print("Dash5 (orderside) : " + orderside + " dash4 (length) " + dash4 + " dash5 (length) " + dash5 );

            dash6 = StringFind(order_info, "_", dash5 + 1);
            orderprice = StringSubstr(order_info, dash5 + 1, (dash6 - dash5) - 1);
            // Print("Dash6 (orderprice) : " + orderprice + " dash5 (length) " + dash5 + " dash6 (length) " + dash6 );

            dash7 = StringFind(order_info, "_", dash6 + 1);
            ordersize = StringSubstr(order_info, dash6 + 1, (dash7 - dash6) - 1);
            //  Print("Dash7 (ordersize) : " + ordersize + " dash6 (length) " + dash6 + " dash7 (length) " + dash7 );

            // COUNTER STARTS AT ZERO SO WE ADD ONE
            ArrayResize(exchange_name, counterD + 1, 0);
            ArrayResize(exchange_symbol, counterD + 1, 0);
            ArrayResize(exchange_ordertype, counterD + 1, 0);
            ArrayResize(exchange_orderside, counterD + 1, 0);
            ArrayResize(exchange_orderprice, counterD + 1, 0);
            ArrayResize(exchange_ordersize, counterD + 1, 0);
            ArrayResize(exchange_orderindex, counterD + 1, 0);

            // COUNTER STARTS AT ZERO for array[0] =
            exchange_name[counterD] = exchange;
            exchange_symbol[counterD] = symbol;
            exchange_ordertype[counterD] = ordertype;
            exchange_orderside[counterD] = orderside;
            exchange_orderprice[counterD] = StringToDouble(orderprice);
            exchange_ordersize[counterD] = StringToDouble(ordersize);
            exchange_orderindex[counterD] = (int) GlobalVariableGet(name);
            counterD++;
           }
        }
     }
   /*
          Create order object on the chart
   */

   int loop_main = ArraySize(exchange_name);
   if(loop_main > 0)
     {
      // for(int i =0; i < loop_main; i++) // working for bitmex oct25 - 2020 ( does this break other exchanges?)
      for(int i = loop_main - 1; i > -1; i--) // Testing binance futures ( this was the default) Nov 15 (working - bug fixed)
        {
         if(exchange_orderside[i] == "BUY" && exchange_ordertype[i] != "STOPLIMIT")
           {
            CreateOrderEntryLine(exchange_symbol[i] +"_"+exchange_ordertype[i]+ "_BUY_"  +exchange_ordersize[i] + "_" + IntegerToString(i), GetObjectDesc(exchange_orderindex[i]-1), bar_close - 6000, exchange_orderprice[i], bar_close, exchange_orderprice[i], Order_Color_Buy, OrderlineThickness, OrderlineStyle);
           }
         if(exchange_orderside[i] == "SELL" && exchange_ordertype[i] != "STOPLIMIT")
           {
            CreateOrderEntryLine(exchange_symbol[i] +"_"+exchange_ordertype[i]+ "_SELL_" +exchange_ordersize[i] + "_" + IntegerToString(i), GetObjectDesc(exchange_orderindex[i]-1), bar_close - 6000, exchange_orderprice[i], bar_close, exchange_orderprice[i], Order_Color_Sell, OrderlineThickness, OrderlineStyle);
           }
         /*
         stop limit orders need to be a different color because these orders require two prices and drag to modify will be disabled
         Order_Color_StopLimit
         */
         if(exchange_orderside[i] == "BUY" && exchange_ordertype[i] == "STOPLIMIT")
           {
            CreateOrderEntryLine(exchange_symbol[i] +"_"+exchange_ordertype[i]+ "_BUY_"  +exchange_ordersize[i] + "_" + IntegerToString(i), GetObjectDesc(exchange_orderindex[i]-1), bar_close - 6000, exchange_orderprice[i], bar_close, exchange_orderprice[i], Order_Color_StopLimit, OrderlineThickness, OrderlineStyle);
           }
         if(exchange_orderside[i] == "SELL" && exchange_ordertype[i] == "STOPLIMIT")
           {
            CreateOrderEntryLine(exchange_symbol[i] +"_"+exchange_ordertype[i]+ "_SELL_" +exchange_ordersize[i] + "_" + IntegerToString(i), GetObjectDesc(exchange_orderindex[i]-1), bar_close - 6000, exchange_orderprice[i], bar_close, exchange_orderprice[i], Order_Color_StopLimit, OrderlineThickness, OrderlineStyle);
           }
        }
     }
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
string CryptoBridge::Get_Transactions(int exchangeNumber, string sym,string transactionType,long startTime,long endTime)
  {
   Print("CBP GetTransactions");
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_Transactions(sym, transactionType,startTime,endTime));
     }

   return("");
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool CryptoBridge::Get_FundRateAll(int exchangeNumber, double minimum)
  {
   Print("CBP GetFundRateAll");
   if(exchangeNumber == 5)
     {
      return (BinanceFutures_GetFundRate_All(minimum));
     }
   return(false);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int CryptoBridge::Get_SymbolQuoteDigit(int exchangeNumber, string sym)
  {
   Print("CBP SymbolQuoteDigit");
   if(exchangeNumber == 2)
     {
      int loop = ArraySize(BybitSymbols);
      for(int i = 0; i<loop; i++)
        {
         if(sym == BybitSymbols[i])
           {
            return(BybitSymbolsQuoteDigit[i]);
           }
        }
     }


   if(exchangeNumber == 5)
     {
      int loop = ArraySize(BinanceFuturesSymbols);
      for(int i = 0; i<loop; i++)
        {
         if(sym == BinanceFuturesSymbols[i])
           {
            return(BinanceFuturesSymbolsQuoteDigit[i]);
           }
        }
     }
   if(exchangeNumber == 21)
     {
      int loop = ArraySize(BinanceFuturesCSymbols);
      for(int i = 0; i<loop; i++)
        {
         if(sym == BinanceFuturesCSymbols[i])
           {
            return(BinanceFuturesCSymbolsQuoteDigit[i]);
           }
        }
     }
   return(0);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int CryptoBridge::Get_SymbolVolumeDigit(int exchangeNumber, string sym)
  {
   Print("CBP SymbolVolumeDigit");
   if(exchangeNumber == 2)
     {
      int loop = ArraySize(BybitSymbols);
      for(int i = 0; i<loop; i++)
        {
         if(sym == BybitSymbols[i])
           {
            return(BybitSymbolsVolumeDigit[i]);
           }
        }
     }
   if(exchangeNumber == 5)
     {
      int loop = ArraySize(BinanceFuturesSymbols);
      for(int i = 0; i<loop; i++)
        {
         if(sym == BinanceFuturesSymbols[i])
           {
            return(BinanceFuturesSymbolsVolumeDigit[i]);
           }
        }
     }
   if(exchangeNumber == 21)
     {
      int loop = ArraySize(BinanceFuturesCSymbols);
      for(int i = 0; i<loop; i++)
        {
         if(sym == BinanceFuturesCSymbols[i])
           {
            return(BinanceFuturesCSymbolsVolumeDigit[i]);
           }
        }
     }
   return(0);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void add_exchange_info(int exchangeNumber)
  {
   Print("CBP ExchangeInfo");
   if(exchangeNumber == 1)
     {
      string info = Binance_ExchangeInfo();
      jasonClass.Clear();
      jasonClass.Deserialize(info);
      ArrayFree(BinanceSymbols);
      ArrayResize(BinanceSymbols,5000);
      ArrayFree(BinanceSymbolsQuoteDigit);
      ArrayResize(BinanceSymbolsQuoteDigit,5000);
      ArrayFree(BinanceSymbolsVolumeDigit);
      ArrayResize(BinanceSymbolsVolumeDigit,5000);
      string sym = "";
      int count_index=0;
      for(int i =0; i<5000; i++)
        {
         sym = jasonClass["symbols"][i]["symbol"].ToStr();;
         if(sym=="")
            break;
         BinanceSymbols[i] = jasonClass["symbols"][i]["symbol"].ToStr();
         BinanceSymbolsQuoteDigit[i] = jasonClass["symbols"][i]["pricePrecision"].ToInt();
         BinanceSymbolsVolumeDigit[i] = jasonClass["symbols"][i]["quantityPrecision"].ToInt();
         count_index++;
        }
      ArrayResize(BinanceSymbols,count_index);
      ArrayResize(BinanceSymbolsQuoteDigit,count_index);
      ArrayResize(BinanceSymbolsVolumeDigit,count_index);
     }
   if(exchangeNumber ==2)
     {
      string info = Bybit_ExchangeInfo();
      jasonClass.Clear();
      jasonClass.Deserialize(info);
      ArrayFree(BybitSymbols);
      ArrayResize(BybitSymbols,100);
      ArrayFree(BybitSymbolsQuoteDigit);
      ArrayResize(BybitSymbolsQuoteDigit,100);
      ArrayFree(BybitSymbolsVolumeDigit);
      ArrayResize(BybitSymbolsVolumeDigit,100);
      string sym = "";
      int count_index=0;
      for(int i =0; i<100; i++)
        {
         sym = jasonClass["result"][i]["name"].ToStr();
         if(sym=="")
            break;
         BybitSymbols[i] = sym;
         BybitSymbolsQuoteDigit[i]  =   jasonClass["result"][i]["price_scale"].ToStr();
         BybitSymbolsVolumeDigit[i] = 0;
         count_index++;
        }
      ArrayResize(BybitSymbols,count_index);
      ArrayResize(BybitSymbolsQuoteDigit,count_index);
      ArrayResize(BybitSymbolsVolumeDigit,count_index);
     }
   if(exchangeNumber == 5)
     {
      string info = BinanceFutures_ExchangeInfo();
      jasonClass.Clear();
      jasonClass.Deserialize(info);
      ArrayFree(BinanceFuturesSymbols);
      ArrayResize(BinanceFuturesSymbols,5000);
      ArrayFree(BinanceFuturesSymbolsQuoteDigit);
      ArrayResize(BinanceFuturesSymbolsQuoteDigit,5000);
      ArrayFree(BinanceFuturesSymbolsVolumeDigit);
      ArrayResize(BinanceFuturesSymbolsVolumeDigit,5000);
      string sym = "";
      int count_index=0;
      for(int i =0; i<5000; i++)
        {
         sym = jasonClass["symbols"][i]["symbol"].ToStr();;
         if(sym=="")
            break;
         BinanceFuturesSymbols[i] = jasonClass["symbols"][i]["symbol"].ToStr();
         BinanceFuturesSymbolsQuoteDigit[i] = jasonClass["symbols"][i]["pricePrecision"].ToInt();
         BinanceFuturesSymbolsVolumeDigit[i] = jasonClass["symbols"][i]["quantityPrecision"].ToInt();
         count_index++;
        }
      ArrayResize(BinanceFuturesSymbols,count_index);
      ArrayResize(BinanceFuturesSymbolsQuoteDigit,count_index);
      ArrayResize(BinanceFuturesSymbolsVolumeDigit,count_index);
     }
   if(exchangeNumber == 21)
     {
      string info = BinanceFuturesC_ExchangeInfo();
      jasonClass.Clear();
      jasonClass.Deserialize(info);
      ArrayFree(BinanceFuturesCSymbols);
      ArrayResize(BinanceFuturesCSymbols,5000);
      ArrayFree(BinanceFuturesCSymbolsQuoteDigit);
      ArrayResize(BinanceFuturesCSymbolsQuoteDigit,5000);
      ArrayFree(BinanceFuturesCSymbolsVolumeDigit);
      ArrayResize(BinanceFuturesCSymbolsVolumeDigit,5000);
      string sym = "";
      int count_index=0;
      for(int i =0; i<5000; i++)
        {
         sym = jasonClass["symbols"][i]["symbol"].ToStr();;
         if(sym=="")
            break;
         BinanceFuturesCSymbols[i] = jasonClass["symbols"][i]["symbol"].ToStr();
         BinanceFuturesCSymbolsQuoteDigit[i] = jasonClass["symbols"][i]["pricePrecision"].ToInt();
         BinanceFuturesCSymbolsVolumeDigit[i] = jasonClass["symbols"][i]["quantityPrecision"].ToInt();
         count_index++;
        }
      ArrayResize(BinanceFuturesCSymbols,count_index);
      ArrayResize(BinanceFuturesCSymbolsQuoteDigit,count_index);
      ArrayResize(BinanceFuturesCSymbolsVolumeDigit,count_index);
     }
  }
//+------------------------------------------------------------------+
