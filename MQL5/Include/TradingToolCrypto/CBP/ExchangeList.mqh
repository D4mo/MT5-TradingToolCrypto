//+------------------------------------------------------------------+
//| defines                                                          |
//+------------------------------------------------------------------+
// #define MacrosYear    2010
#define EXCHANGE_BINANCE_DEX ".bnx"
#define EXCHANGE_BINANCE ".bnc"
#define EXCHANGE_BYBIT ".byb"
#define EXCHANGE_BITMEX ".mex"
#define EXCHANGE_KUCOIN ".kuc"
#define EXCHANGE_BINANCE_FUTURES ".bnf"
#define EXCHANGE_BINANCE_US ".bnu"
#define EXCHANGE_DERIBIT ".der"
#define EXCHANGE_OKEX ".okx"
#define EXCHANGE_COINBASE ".cbs"
#define EXCHANGE_BITFINEX ".btf"
#define EXCHANGE_BITSTAMP ".bsp"
#define EXCHANGE_FTX ".ftx"
#define EXCHANGE_SATANG ".sat"
#define EXCHANGE_DIGITEX ".dig"
#define EXCHANGE_HUOBI ".huo"
#define EXCHANGE_PHEMEX ".pme"
#define EXCHANGE_ZBG ".zbg"
#define EXCHANGE_KRAKEN ".kra"
#define EXCHANGE_KUCOIN_FUTURES ".kuf"
#define EXCHANGE_BTSE ".bts"

string GLOBAL_exchange = "";
string get_suffix_exchange_name(string suffix, int id)
  {
   if(suffix == "")
     {
      if(id == 0)
        {
         return(".bnx");
        }
      if(id == 1)
        {
         GLOBAL_exchange = "Binance";
         return(".bnc");
        }
      if(id == 2)
        {
         GLOBAL_exchange = "Bybit";
         return(".byb");
        }
      if(id == 3)
        {
         GLOBAL_exchange = "Binance";
         return(".mex");
        }
      if(id == 4)
        {
         GLOBAL_exchange = "Kucoin";
         return(".kuc");
        }
      if(id == 5)
        {
        GLOBAL_exchange = "BinanceFutures";
         return(".bnf");
        }
      if(id == 6)
        {
        GLOBAL_exchange = "BinanceUS";
         return(".bnu");
        }
      if(id == 7)
        {
         GLOBAL_exchange = "Deribit";
         return(".der");
        }
      if(id == 8)
        {
         GLOBAL_exchange = "Okex";
         return(".okx");
        }
      if(id == 9)
        {
         GLOBAL_exchange = "Coinbase";
         return(".cbs");
        }

      if(id == 10)
        {
         GLOBAL_exchange = "Bitfinex";
         return(".btf");
        }

      if(id == 11)
        {
         GLOBAL_exchange = "Bitstamp";
         return(".bsp");
        }
      if(id == 12)
        {
         GLOBAL_exchange = "FTX";
         return(".ftx");
        }
      if(id == 13)
        {
         GLOBAL_exchange = "Satang";
         return(".sat");
        }
      if(id == 14)
        {
         GLOBAL_exchange = "Digitex";
         return(".dig");
        }
      if(id == 15)
        {
         GLOBAL_exchange = "Huobia";
         return(".huo");
        }
      if(id == 16)
        {
        GLOBAL_exchange = "Phemex";
         return(".phe");
        }
      if(id == 17)
        {
         GLOBAL_exchange = "ZBG";
         return(".zbg");
        }
      if(id == 18)
        {
         GLOBAL_exchange = "Kraken";
         return(".kra");
        }
      if(id == 19)
        {
         GLOBAL_exchange = "KucoinFutures";
         return(".kuf");
        }

      if(id == 20)
        {
         GLOBAL_exchange = "BTSE";
         return(".bts");
        }

      if(id == 21)
        {
         GLOBAL_exchange = "BinanceFuturesC";
         return(".bnd");
        }

      if(id == 22)
        {
         GLOBAL_exchange = "BybitU";
         return(".byt");
        }
      if(id == 23)
        {
         GLOBAL_exchange = "Bybit";
         return(".bybt");
        }
      if(id == 24)
        {
         GLOBAL_exchange = "BybitU";
         return(".bytt");
        }

     }
   return(suffix);

  }
 