// EA48 — standalone MQL4. Reference v2 + 20.51 (Q20/Q61).
#property strict
#property version "2.11"
#property description "48-Step EA — independent BUY/SELL paths; panel-controlled."

enum PanelPreset { Small=0, Medium=1, Large=2 };
enum OrderPriority { BuyFirst=0, SellFirst=1 };
input double BuyDistance01=0.0;
input double BuyDistance02=0.0;
input double BuyDistance03=0.0;
input double BuyDistance04=0.0;
input double BuyDistance05=0.0;
input double BuyDistance06=0.0;
input double BuyDistance07=0.0;
input double BuyDistance08=0.0;
input double BuyDistance09=0.0;
input double BuyDistance10=0.0;
input double BuyDistance11=0.0;
input double BuyDistance12=0.0;
input double BuyDistance13=0.0;
input double BuyDistance14=0.0;
input double BuyDistance15=0.0;
input double BuyDistance16=0.0;
input double BuyDistance17=0.0;
input double BuyDistance18=0.0;
input double BuyDistance19=0.0;
input double BuyDistance20=0.0;
input double BuyDistance21=0.0;
input double BuyDistance22=0.0;
input double BuyDistance23=0.0;
input double BuyDistance24=0.0;
input double BuyDistance25=0.0;
input double BuyDistance26=0.0;
input double BuyDistance27=0.0;
input double BuyDistance28=0.0;
input double BuyDistance29=0.0;
input double BuyDistance30=0.0;
input double BuyDistance31=0.0;
input double BuyDistance32=0.0;
input double BuyDistance33=0.0;
input double BuyDistance34=0.0;
input double BuyDistance35=0.0;
input double BuyDistance36=0.0;
input double BuyDistance37=0.0;
input double BuyDistance38=0.0;
input double BuyDistance39=0.0;
input double BuyDistance40=0.0;
input double BuyDistance41=0.0;
input double BuyDistance42=0.0;
input double BuyDistance43=0.0;
input double BuyDistance44=0.0;
input double BuyDistance45=0.0;
input double BuyDistance46=0.0;
input double BuyDistance47=0.0;
input double BuyDistance48=0.0;
input double BuySL01=0.0;
input double BuySL02=0.0;
input double BuySL03=0.0;
input double BuySL04=0.0;
input double BuySL05=0.0;
input double BuySL06=0.0;
input double BuySL07=0.0;
input double BuySL08=0.0;
input double BuySL09=0.0;
input double BuySL10=0.0;
input double BuySL11=0.0;
input double BuySL12=0.0;
input double BuySL13=0.0;
input double BuySL14=0.0;
input double BuySL15=0.0;
input double BuySL16=0.0;
input double BuySL17=0.0;
input double BuySL18=0.0;
input double BuySL19=0.0;
input double BuySL20=0.0;
input double BuySL21=0.0;
input double BuySL22=0.0;
input double BuySL23=0.0;
input double BuySL24=0.0;
input double BuySL25=0.0;
input double BuySL26=0.0;
input double BuySL27=0.0;
input double BuySL28=0.0;
input double BuySL29=0.0;
input double BuySL30=0.0;
input double BuySL31=0.0;
input double BuySL32=0.0;
input double BuySL33=0.0;
input double BuySL34=0.0;
input double BuySL35=0.0;
input double BuySL36=0.0;
input double BuySL37=0.0;
input double BuySL38=0.0;
input double BuySL39=0.0;
input double BuySL40=0.0;
input double BuySL41=0.0;
input double BuySL42=0.0;
input double BuySL43=0.0;
input double BuySL44=0.0;
input double BuySL45=0.0;
input double BuySL46=0.0;
input double BuySL47=0.0;
input double BuySL48=0.0;
input double BuyTP01=0.0;
input double BuyTP02=0.0;
input double BuyTP03=0.0;
input double BuyTP04=0.0;
input double BuyTP05=0.0;
input double BuyTP06=0.0;
input double BuyTP07=0.0;
input double BuyTP08=0.0;
input double BuyTP09=0.0;
input double BuyTP10=0.0;
input double BuyTP11=0.0;
input double BuyTP12=0.0;
input double BuyTP13=0.0;
input double BuyTP14=0.0;
input double BuyTP15=0.0;
input double BuyTP16=0.0;
input double BuyTP17=0.0;
input double BuyTP18=0.0;
input double BuyTP19=0.0;
input double BuyTP20=0.0;
input double BuyTP21=0.0;
input double BuyTP22=0.0;
input double BuyTP23=0.0;
input double BuyTP24=0.0;
input double BuyTP25=0.0;
input double BuyTP26=0.0;
input double BuyTP27=0.0;
input double BuyTP28=0.0;
input double BuyTP29=0.0;
input double BuyTP30=0.0;
input double BuyTP31=0.0;
input double BuyTP32=0.0;
input double BuyTP33=0.0;
input double BuyTP34=0.0;
input double BuyTP35=0.0;
input double BuyTP36=0.0;
input double BuyTP37=0.0;
input double BuyTP38=0.0;
input double BuyTP39=0.0;
input double BuyTP40=0.0;
input double BuyTP41=0.0;
input double BuyTP42=0.0;
input double BuyTP43=0.0;
input double BuyTP44=0.0;
input double BuyTP45=0.0;
input double BuyTP46=0.0;
input double BuyTP47=0.0;
input double BuyTP48=0.0;
input double SellDistance01=0.0;
input double SellDistance02=0.0;
input double SellDistance03=0.0;
input double SellDistance04=0.0;
input double SellDistance05=0.0;
input double SellDistance06=0.0;
input double SellDistance07=0.0;
input double SellDistance08=0.0;
input double SellDistance09=0.0;
input double SellDistance10=0.0;
input double SellDistance11=0.0;
input double SellDistance12=0.0;
input double SellDistance13=0.0;
input double SellDistance14=0.0;
input double SellDistance15=0.0;
input double SellDistance16=0.0;
input double SellDistance17=0.0;
input double SellDistance18=0.0;
input double SellDistance19=0.0;
input double SellDistance20=0.0;
input double SellDistance21=0.0;
input double SellDistance22=0.0;
input double SellDistance23=0.0;
input double SellDistance24=0.0;
input double SellDistance25=0.0;
input double SellDistance26=0.0;
input double SellDistance27=0.0;
input double SellDistance28=0.0;
input double SellDistance29=0.0;
input double SellDistance30=0.0;
input double SellDistance31=0.0;
input double SellDistance32=0.0;
input double SellDistance33=0.0;
input double SellDistance34=0.0;
input double SellDistance35=0.0;
input double SellDistance36=0.0;
input double SellDistance37=0.0;
input double SellDistance38=0.0;
input double SellDistance39=0.0;
input double SellDistance40=0.0;
input double SellDistance41=0.0;
input double SellDistance42=0.0;
input double SellDistance43=0.0;
input double SellDistance44=0.0;
input double SellDistance45=0.0;
input double SellDistance46=0.0;
input double SellDistance47=0.0;
input double SellDistance48=0.0;
input double SellSL01=0.0;
input double SellSL02=0.0;
input double SellSL03=0.0;
input double SellSL04=0.0;
input double SellSL05=0.0;
input double SellSL06=0.0;
input double SellSL07=0.0;
input double SellSL08=0.0;
input double SellSL09=0.0;
input double SellSL10=0.0;
input double SellSL11=0.0;
input double SellSL12=0.0;
input double SellSL13=0.0;
input double SellSL14=0.0;
input double SellSL15=0.0;
input double SellSL16=0.0;
input double SellSL17=0.0;
input double SellSL18=0.0;
input double SellSL19=0.0;
input double SellSL20=0.0;
input double SellSL21=0.0;
input double SellSL22=0.0;
input double SellSL23=0.0;
input double SellSL24=0.0;
input double SellSL25=0.0;
input double SellSL26=0.0;
input double SellSL27=0.0;
input double SellSL28=0.0;
input double SellSL29=0.0;
input double SellSL30=0.0;
input double SellSL31=0.0;
input double SellSL32=0.0;
input double SellSL33=0.0;
input double SellSL34=0.0;
input double SellSL35=0.0;
input double SellSL36=0.0;
input double SellSL37=0.0;
input double SellSL38=0.0;
input double SellSL39=0.0;
input double SellSL40=0.0;
input double SellSL41=0.0;
input double SellSL42=0.0;
input double SellSL43=0.0;
input double SellSL44=0.0;
input double SellSL45=0.0;
input double SellSL46=0.0;
input double SellSL47=0.0;
input double SellSL48=0.0;
input double SellTP01=0.0;
input double SellTP02=0.0;
input double SellTP03=0.0;
input double SellTP04=0.0;
input double SellTP05=0.0;
input double SellTP06=0.0;
input double SellTP07=0.0;
input double SellTP08=0.0;
input double SellTP09=0.0;
input double SellTP10=0.0;
input double SellTP11=0.0;
input double SellTP12=0.0;
input double SellTP13=0.0;
input double SellTP14=0.0;
input double SellTP15=0.0;
input double SellTP16=0.0;
input double SellTP17=0.0;
input double SellTP18=0.0;
input double SellTP19=0.0;
input double SellTP20=0.0;
input double SellTP21=0.0;
input double SellTP22=0.0;
input double SellTP23=0.0;
input double SellTP24=0.0;
input double SellTP25=0.0;
input double SellTP26=0.0;
input double SellTP27=0.0;
input double SellTP28=0.0;
input double SellTP29=0.0;
input double SellTP30=0.0;
input double SellTP31=0.0;
input double SellTP32=0.0;
input double SellTP33=0.0;
input double SellTP34=0.0;
input double SellTP35=0.0;
input double SellTP36=0.0;
input double SellTP37=0.0;
input double SellTP38=0.0;
input double SellTP39=0.0;
input double SellTP40=0.0;
input double SellTP41=0.0;
input double SellTP42=0.0;
input double SellTP43=0.0;
input double SellTP44=0.0;
input double SellTP45=0.0;
input double SellTP46=0.0;
input double SellTP47=0.0;
input double SellTP48=0.0;
input double PipSize=0.0;
input long BuyMagic=0;
input long SellMagic=0;
input double BuyTrailThreshold=100.0;
input double SellTrailThreshold=100.0;
input double BuyTrailStep=10.0;
input double SellTrailStep=10.0;
input int RetryIntervalSeconds=1;
input double CloseSlippagePips=-1.0;
input PanelPreset PanelSize=Medium;
input string InstanceID="";
input OrderPriority InitialOrderPriority=BuyFirst;
input int MaxQuoteAgeSeconds=10;

#define BUY_SIDE 0
#define SELL_SIDE 1
#define SIDES 2
#define STAGES 48
#define SCHEMA_VERSION 211

enum GlobalState { GS_STANDBY=0, GS_STARTING, GS_RUNNING, GS_EXITING, GS_RECOVERING, GS_BLOCKED };
enum SideControl { SC_PLAYING=0, SC_PAUSED, SC_APPLYING_PAUSE, SC_RESUMING };
enum OrderPhase { OP_NONE=0, OP_PENDING, OP_OPEN, OP_REBUILD, OP_NEXT, OP_UNRESOLVED };
enum TimerMode { TM_OFF=0, TM_RUNNING, TM_EXPIRED };
enum ExitReason { XR_NONE=0, XR_STOP, XR_PROFIT, XR_LOSS, XR_INCONSISTENT, XR_DUPLICATE, XR_ABSENCE, XR_STANDBY_ORDERS, XR_START_FAILURE, XR_MARKET_CLOSED, XR_NEW_MAGICS };
enum ResultKind { RK_CURRENT=0, RK_FINISHED, RK_FAILED_START, RK_UNAVAILABLE };
enum IntentKind { IK_NONE=0, IK_INITIAL, IK_NEXT, IK_REBUILD, IK_TRAIL, IK_PAUSE, IK_PLAY, IK_ROLLBACK, IK_DELETE, IK_CLOSE };
enum IntentStatus { IS_PREPARED=0, IS_UNKNOWN, IS_CONFIRMED, IS_FAILED, IS_CANCELLED };

struct Configuration {
 double buyDistance[48]; double buySL[48]; double buyTP[48];
 double sellDistance[48]; double sellSL[48]; double sellTP[48];
 double pip; int buyMagic; int sellMagic;
 double buyThreshold; double sellThreshold; double buyStep; double sellStep;
 int retrySeconds; double closeSlippage; int maxQuoteAge; int priority;
};
struct SideState {
 int control; int phase; int stage; int targetStage; long occurrence;
 int ticket; double orderLot; double lastPending; double finalClose; datetime finalCloseTime;
 bool finalKnown; bool initialConfirmed; bool tradeSeen; bool trailing;
 bool nextLotApplied; double nextLot;
 double targetLot; bool targetLotFrozen;
 bool pauseRequested; bool rollbackSL; bool rollbackTP;
 ulong retryAt; long playGeneration;
};
struct OrderSnapshot {
 int ticket; int type; int magic; int side;
 string symbol; double lots; double price; double sl; double tp;
 datetime openTime; datetime closeTime; double closePrice;
 double profit; double commission; double swap;
};
struct OrderLink {
 int ticket; long cycle; long occurrence; int side; int stage;
 string symbol; int magic; int originType; int parentTicket;
 double initialLot; double observedLot; double entry; datetime openTime;
 bool pendingOrigin; bool live; bool settled; bool finalProcessed;
 datetime lastSeenServer; long sequence;
};
struct LedgerRecord {
 int ticket; long cycle; long occurrence; int side; int stage; int type;
 double lots; double price; datetime time;
 double profit; double commission; double swap;
 bool counted; bool finalEvidence; long observationSequence;
};
struct OperationIntent {
 long id; int kind; int status; int side; long cycle; long occurrence; int stage;
 int ticket; int orderType; string symbol; int magic;
 double lots; double price; double sl; double tp;
 double beforePrice; double beforeSL; double beforeTP; double beforeLots;
 int slippage; datetime serverTime; ulong attemptedAt; int error; int resultTicket;
 bool essential; bool sent; bool obsolete; bool changedSL; bool changedTP;
 bool effectsApplied; bool cleanupSettled;
};
struct CycleArchive { long id; double net; int resultKind; datetime ended; };
struct ProblemEntry { string key; string side; string action; string reason; string detail; long sequence; bool active; };
struct QuoteState { double bid; double ask; datetime serverTime; ulong receivedAt; bool valid; };
struct SymbolRules { double point; double tick; int digits; double minLot; double maxLot; double lotStep; double stopDistance; double freezeDistance; bool valid; };

Configuration g_active,g_next;
SideState g_side[2];
OrderSnapshot g_orders[];
OrderLink g_links[];
LedgerRecord g_ledger[];
OperationIntent g_intents[];
CycleArchive g_archives[];
ProblemEntry g_problems[];
QuoteState g_quote;
SymbolRules g_rules;
int g_state=GS_STANDBY, g_savedState=GS_STANDBY;
int g_timer=TM_OFF, g_exitReason=XR_NONE, g_resultKind=RK_CURRENT;
long g_cycle=0, g_cycleSerial=0, g_intentSerial=0, g_observationSerial=0, g_problemSerial=0;
long g_saveSequence=0;
bool g_haveActive=false, g_exitLatched=false, g_restartCancelled=false;
bool g_autoRestart=false, g_expiryBlock=false, g_symbolChanged=false, g_autoPending=false;
bool g_storeHealthy=true, g_dirty=true, g_owned=false, g_identityKnown=true;
bool g_accountBlocked=false, g_processing=false, g_apiInFlight=false, g_absent=false;
bool g_recoveryReady=false, g_graceActive=false, g_reinstallMagicChange=false;
bool g_historyReady=false;
long g_activeApiIntent=0;
string g_managedSymbol="", g_installServer="", g_installID="", g_identityHash="", g_storageDir="";
int g_installAccount=0;
long g_installToken=0, g_ownerToken=0;
string g_blockReason="", g_prefix="", g_lifecycleReason="";
int g_previousDeinit=-1;
ulong g_now=0, g_lastCounter=0, g_logicalElapsed=0;
uint g_rawCounter=0;
datetime g_lastUtc=0, g_savedUtc=0, g_lastActivityServer=0;
long g_duration=6000;
long g_timerRemainingSaved=0;
ulong g_timerDeadline=0, g_graceDeadline=0, g_saveRetryAt=0;
int g_savedTimer=TM_OFF;
long g_savedRemaining=0;
double g_profitTarget=0.0, g_lossLimit=0.0, g_net=0.0, g_lastResult=0.0;
double g_startBid=0.0, g_startAsk=0.0;
int g_initialProgress=0;
bool g_netAvailable=true;
int g_panelX=10,g_panelY=10;
bool g_collapsed=false,g_dragging=false;
int g_dragX=0,g_dragY=0;
string g_draftBuy="",g_draftSell="",g_draftProfit="0",g_draftLoss="0";
string g_draftHours="1",g_draftMinutes="40",g_draftSeconds="0";
bool g_draftBuyDirty=false,g_draftSellDirty=false,g_draftFinancialDirty=false,g_draftTimeDirty=false;
bool g_confirmReset=false;
int g_commands[];
int g_commandSides[];
long g_commandSerials[];
long g_commandSerial=0;
// Command identifiers are internal, never additional Inputs.
enum CommandKind { CMD_RUN=1,CMD_STOP,CMD_PAUSE,CMD_PLAY,CMD_TRAIL,CMD_LOT,CMD_LIMITS,CMD_TIMER_START,CMD_TIMER_RESET,CMD_TIME,CMD_AUTO,CMD_RESET_SAVED,CMD_CONFIRM_RESET };



// ---------- Inputs, validation, units and price policy (spec 2,3,7,8,9,17) ----------
bool g_quoteReceipt=false;
bool g_quoteFreshKnown=false;
void MarkDirty(){g_dirty=true;}
string SideName(int side){return side==BUY_SIDE ? "BUY" : "SELL";}
int SidePendingType(int side){return side==BUY_SIDE ? OP_BUYSTOP : OP_SELLSTOP;}
ulong RetryDelay(){int n=g_haveActive?g_active.retrySeconds:g_next.retrySeconds; if(n<1)n=1; return (ulong)n*1000;}
void CopyConfiguration(Configuration &dst,Configuration &src){
 for(int i=0;i<48;i++){
  dst.buyDistance[i]=src.buyDistance[i]; dst.buySL[i]=src.buySL[i]; dst.buyTP[i]=src.buyTP[i];
  dst.sellDistance[i]=src.sellDistance[i]; dst.sellSL[i]=src.sellSL[i]; dst.sellTP[i]=src.sellTP[i];
 }
 dst.pip=src.pip;dst.buyMagic=src.buyMagic;dst.sellMagic=src.sellMagic;
 dst.buyThreshold=src.buyThreshold;dst.sellThreshold=src.sellThreshold;
 dst.buyStep=src.buyStep;dst.sellStep=src.sellStep;dst.retrySeconds=src.retrySeconds;
 dst.closeSlippage=src.closeSlippage;dst.maxQuoteAge=src.maxQuoteAge;dst.priority=src.priority;
}
void ReadNextConfiguration(){
 g_next.buyDistance[0]=BuyDistance01;
 g_next.buyDistance[1]=BuyDistance02;
 g_next.buyDistance[2]=BuyDistance03;
 g_next.buyDistance[3]=BuyDistance04;
 g_next.buyDistance[4]=BuyDistance05;
 g_next.buyDistance[5]=BuyDistance06;
 g_next.buyDistance[6]=BuyDistance07;
 g_next.buyDistance[7]=BuyDistance08;
 g_next.buyDistance[8]=BuyDistance09;
 g_next.buyDistance[9]=BuyDistance10;
 g_next.buyDistance[10]=BuyDistance11;
 g_next.buyDistance[11]=BuyDistance12;
 g_next.buyDistance[12]=BuyDistance13;
 g_next.buyDistance[13]=BuyDistance14;
 g_next.buyDistance[14]=BuyDistance15;
 g_next.buyDistance[15]=BuyDistance16;
 g_next.buyDistance[16]=BuyDistance17;
 g_next.buyDistance[17]=BuyDistance18;
 g_next.buyDistance[18]=BuyDistance19;
 g_next.buyDistance[19]=BuyDistance20;
 g_next.buyDistance[20]=BuyDistance21;
 g_next.buyDistance[21]=BuyDistance22;
 g_next.buyDistance[22]=BuyDistance23;
 g_next.buyDistance[23]=BuyDistance24;
 g_next.buyDistance[24]=BuyDistance25;
 g_next.buyDistance[25]=BuyDistance26;
 g_next.buyDistance[26]=BuyDistance27;
 g_next.buyDistance[27]=BuyDistance28;
 g_next.buyDistance[28]=BuyDistance29;
 g_next.buyDistance[29]=BuyDistance30;
 g_next.buyDistance[30]=BuyDistance31;
 g_next.buyDistance[31]=BuyDistance32;
 g_next.buyDistance[32]=BuyDistance33;
 g_next.buyDistance[33]=BuyDistance34;
 g_next.buyDistance[34]=BuyDistance35;
 g_next.buyDistance[35]=BuyDistance36;
 g_next.buyDistance[36]=BuyDistance37;
 g_next.buyDistance[37]=BuyDistance38;
 g_next.buyDistance[38]=BuyDistance39;
 g_next.buyDistance[39]=BuyDistance40;
 g_next.buyDistance[40]=BuyDistance41;
 g_next.buyDistance[41]=BuyDistance42;
 g_next.buyDistance[42]=BuyDistance43;
 g_next.buyDistance[43]=BuyDistance44;
 g_next.buyDistance[44]=BuyDistance45;
 g_next.buyDistance[45]=BuyDistance46;
 g_next.buyDistance[46]=BuyDistance47;
 g_next.buyDistance[47]=BuyDistance48;
 g_next.buySL[0]=BuySL01;
 g_next.buySL[1]=BuySL02;
 g_next.buySL[2]=BuySL03;
 g_next.buySL[3]=BuySL04;
 g_next.buySL[4]=BuySL05;
 g_next.buySL[5]=BuySL06;
 g_next.buySL[6]=BuySL07;
 g_next.buySL[7]=BuySL08;
 g_next.buySL[8]=BuySL09;
 g_next.buySL[9]=BuySL10;
 g_next.buySL[10]=BuySL11;
 g_next.buySL[11]=BuySL12;
 g_next.buySL[12]=BuySL13;
 g_next.buySL[13]=BuySL14;
 g_next.buySL[14]=BuySL15;
 g_next.buySL[15]=BuySL16;
 g_next.buySL[16]=BuySL17;
 g_next.buySL[17]=BuySL18;
 g_next.buySL[18]=BuySL19;
 g_next.buySL[19]=BuySL20;
 g_next.buySL[20]=BuySL21;
 g_next.buySL[21]=BuySL22;
 g_next.buySL[22]=BuySL23;
 g_next.buySL[23]=BuySL24;
 g_next.buySL[24]=BuySL25;
 g_next.buySL[25]=BuySL26;
 g_next.buySL[26]=BuySL27;
 g_next.buySL[27]=BuySL28;
 g_next.buySL[28]=BuySL29;
 g_next.buySL[29]=BuySL30;
 g_next.buySL[30]=BuySL31;
 g_next.buySL[31]=BuySL32;
 g_next.buySL[32]=BuySL33;
 g_next.buySL[33]=BuySL34;
 g_next.buySL[34]=BuySL35;
 g_next.buySL[35]=BuySL36;
 g_next.buySL[36]=BuySL37;
 g_next.buySL[37]=BuySL38;
 g_next.buySL[38]=BuySL39;
 g_next.buySL[39]=BuySL40;
 g_next.buySL[40]=BuySL41;
 g_next.buySL[41]=BuySL42;
 g_next.buySL[42]=BuySL43;
 g_next.buySL[43]=BuySL44;
 g_next.buySL[44]=BuySL45;
 g_next.buySL[45]=BuySL46;
 g_next.buySL[46]=BuySL47;
 g_next.buySL[47]=BuySL48;
 g_next.buyTP[0]=BuyTP01;
 g_next.buyTP[1]=BuyTP02;
 g_next.buyTP[2]=BuyTP03;
 g_next.buyTP[3]=BuyTP04;
 g_next.buyTP[4]=BuyTP05;
 g_next.buyTP[5]=BuyTP06;
 g_next.buyTP[6]=BuyTP07;
 g_next.buyTP[7]=BuyTP08;
 g_next.buyTP[8]=BuyTP09;
 g_next.buyTP[9]=BuyTP10;
 g_next.buyTP[10]=BuyTP11;
 g_next.buyTP[11]=BuyTP12;
 g_next.buyTP[12]=BuyTP13;
 g_next.buyTP[13]=BuyTP14;
 g_next.buyTP[14]=BuyTP15;
 g_next.buyTP[15]=BuyTP16;
 g_next.buyTP[16]=BuyTP17;
 g_next.buyTP[17]=BuyTP18;
 g_next.buyTP[18]=BuyTP19;
 g_next.buyTP[19]=BuyTP20;
 g_next.buyTP[20]=BuyTP21;
 g_next.buyTP[21]=BuyTP22;
 g_next.buyTP[22]=BuyTP23;
 g_next.buyTP[23]=BuyTP24;
 g_next.buyTP[24]=BuyTP25;
 g_next.buyTP[25]=BuyTP26;
 g_next.buyTP[26]=BuyTP27;
 g_next.buyTP[27]=BuyTP28;
 g_next.buyTP[28]=BuyTP29;
 g_next.buyTP[29]=BuyTP30;
 g_next.buyTP[30]=BuyTP31;
 g_next.buyTP[31]=BuyTP32;
 g_next.buyTP[32]=BuyTP33;
 g_next.buyTP[33]=BuyTP34;
 g_next.buyTP[34]=BuyTP35;
 g_next.buyTP[35]=BuyTP36;
 g_next.buyTP[36]=BuyTP37;
 g_next.buyTP[37]=BuyTP38;
 g_next.buyTP[38]=BuyTP39;
 g_next.buyTP[39]=BuyTP40;
 g_next.buyTP[40]=BuyTP41;
 g_next.buyTP[41]=BuyTP42;
 g_next.buyTP[42]=BuyTP43;
 g_next.buyTP[43]=BuyTP44;
 g_next.buyTP[44]=BuyTP45;
 g_next.buyTP[45]=BuyTP46;
 g_next.buyTP[46]=BuyTP47;
 g_next.buyTP[47]=BuyTP48;
 g_next.sellDistance[0]=SellDistance01;
 g_next.sellDistance[1]=SellDistance02;
 g_next.sellDistance[2]=SellDistance03;
 g_next.sellDistance[3]=SellDistance04;
 g_next.sellDistance[4]=SellDistance05;
 g_next.sellDistance[5]=SellDistance06;
 g_next.sellDistance[6]=SellDistance07;
 g_next.sellDistance[7]=SellDistance08;
 g_next.sellDistance[8]=SellDistance09;
 g_next.sellDistance[9]=SellDistance10;
 g_next.sellDistance[10]=SellDistance11;
 g_next.sellDistance[11]=SellDistance12;
 g_next.sellDistance[12]=SellDistance13;
 g_next.sellDistance[13]=SellDistance14;
 g_next.sellDistance[14]=SellDistance15;
 g_next.sellDistance[15]=SellDistance16;
 g_next.sellDistance[16]=SellDistance17;
 g_next.sellDistance[17]=SellDistance18;
 g_next.sellDistance[18]=SellDistance19;
 g_next.sellDistance[19]=SellDistance20;
 g_next.sellDistance[20]=SellDistance21;
 g_next.sellDistance[21]=SellDistance22;
 g_next.sellDistance[22]=SellDistance23;
 g_next.sellDistance[23]=SellDistance24;
 g_next.sellDistance[24]=SellDistance25;
 g_next.sellDistance[25]=SellDistance26;
 g_next.sellDistance[26]=SellDistance27;
 g_next.sellDistance[27]=SellDistance28;
 g_next.sellDistance[28]=SellDistance29;
 g_next.sellDistance[29]=SellDistance30;
 g_next.sellDistance[30]=SellDistance31;
 g_next.sellDistance[31]=SellDistance32;
 g_next.sellDistance[32]=SellDistance33;
 g_next.sellDistance[33]=SellDistance34;
 g_next.sellDistance[34]=SellDistance35;
 g_next.sellDistance[35]=SellDistance36;
 g_next.sellDistance[36]=SellDistance37;
 g_next.sellDistance[37]=SellDistance38;
 g_next.sellDistance[38]=SellDistance39;
 g_next.sellDistance[39]=SellDistance40;
 g_next.sellDistance[40]=SellDistance41;
 g_next.sellDistance[41]=SellDistance42;
 g_next.sellDistance[42]=SellDistance43;
 g_next.sellDistance[43]=SellDistance44;
 g_next.sellDistance[44]=SellDistance45;
 g_next.sellDistance[45]=SellDistance46;
 g_next.sellDistance[46]=SellDistance47;
 g_next.sellDistance[47]=SellDistance48;
 g_next.sellSL[0]=SellSL01;
 g_next.sellSL[1]=SellSL02;
 g_next.sellSL[2]=SellSL03;
 g_next.sellSL[3]=SellSL04;
 g_next.sellSL[4]=SellSL05;
 g_next.sellSL[5]=SellSL06;
 g_next.sellSL[6]=SellSL07;
 g_next.sellSL[7]=SellSL08;
 g_next.sellSL[8]=SellSL09;
 g_next.sellSL[9]=SellSL10;
 g_next.sellSL[10]=SellSL11;
 g_next.sellSL[11]=SellSL12;
 g_next.sellSL[12]=SellSL13;
 g_next.sellSL[13]=SellSL14;
 g_next.sellSL[14]=SellSL15;
 g_next.sellSL[15]=SellSL16;
 g_next.sellSL[16]=SellSL17;
 g_next.sellSL[17]=SellSL18;
 g_next.sellSL[18]=SellSL19;
 g_next.sellSL[19]=SellSL20;
 g_next.sellSL[20]=SellSL21;
 g_next.sellSL[21]=SellSL22;
 g_next.sellSL[22]=SellSL23;
 g_next.sellSL[23]=SellSL24;
 g_next.sellSL[24]=SellSL25;
 g_next.sellSL[25]=SellSL26;
 g_next.sellSL[26]=SellSL27;
 g_next.sellSL[27]=SellSL28;
 g_next.sellSL[28]=SellSL29;
 g_next.sellSL[29]=SellSL30;
 g_next.sellSL[30]=SellSL31;
 g_next.sellSL[31]=SellSL32;
 g_next.sellSL[32]=SellSL33;
 g_next.sellSL[33]=SellSL34;
 g_next.sellSL[34]=SellSL35;
 g_next.sellSL[35]=SellSL36;
 g_next.sellSL[36]=SellSL37;
 g_next.sellSL[37]=SellSL38;
 g_next.sellSL[38]=SellSL39;
 g_next.sellSL[39]=SellSL40;
 g_next.sellSL[40]=SellSL41;
 g_next.sellSL[41]=SellSL42;
 g_next.sellSL[42]=SellSL43;
 g_next.sellSL[43]=SellSL44;
 g_next.sellSL[44]=SellSL45;
 g_next.sellSL[45]=SellSL46;
 g_next.sellSL[46]=SellSL47;
 g_next.sellSL[47]=SellSL48;
 g_next.sellTP[0]=SellTP01;
 g_next.sellTP[1]=SellTP02;
 g_next.sellTP[2]=SellTP03;
 g_next.sellTP[3]=SellTP04;
 g_next.sellTP[4]=SellTP05;
 g_next.sellTP[5]=SellTP06;
 g_next.sellTP[6]=SellTP07;
 g_next.sellTP[7]=SellTP08;
 g_next.sellTP[8]=SellTP09;
 g_next.sellTP[9]=SellTP10;
 g_next.sellTP[10]=SellTP11;
 g_next.sellTP[11]=SellTP12;
 g_next.sellTP[12]=SellTP13;
 g_next.sellTP[13]=SellTP14;
 g_next.sellTP[14]=SellTP15;
 g_next.sellTP[15]=SellTP16;
 g_next.sellTP[16]=SellTP17;
 g_next.sellTP[17]=SellTP18;
 g_next.sellTP[18]=SellTP19;
 g_next.sellTP[19]=SellTP20;
 g_next.sellTP[20]=SellTP21;
 g_next.sellTP[21]=SellTP22;
 g_next.sellTP[22]=SellTP23;
 g_next.sellTP[23]=SellTP24;
 g_next.sellTP[24]=SellTP25;
 g_next.sellTP[25]=SellTP26;
 g_next.sellTP[26]=SellTP27;
 g_next.sellTP[27]=SellTP28;
 g_next.sellTP[28]=SellTP29;
 g_next.sellTP[29]=SellTP30;
 g_next.sellTP[30]=SellTP31;
 g_next.sellTP[31]=SellTP32;
 g_next.sellTP[32]=SellTP33;
 g_next.sellTP[33]=SellTP34;
 g_next.sellTP[34]=SellTP35;
 g_next.sellTP[35]=SellTP36;
 g_next.sellTP[36]=SellTP37;
 g_next.sellTP[37]=SellTP38;
 g_next.sellTP[38]=SellTP39;
 g_next.sellTP[39]=SellTP40;
 g_next.sellTP[40]=SellTP41;
 g_next.sellTP[41]=SellTP42;
 g_next.sellTP[42]=SellTP43;
 g_next.sellTP[43]=SellTP44;
 g_next.sellTP[44]=SellTP45;
 g_next.sellTP[45]=SellTP46;
 g_next.sellTP[46]=SellTP47;
 g_next.sellTP[47]=SellTP48;
 g_next.pip=PipSize;
 g_next.buyMagic=(BuyMagic>0 && BuyMagic<=2147483647)?(int)BuyMagic:0;
 g_next.sellMagic=(SellMagic>0 && SellMagic<=2147483647)?(int)SellMagic:0;
 g_next.buyThreshold=BuyTrailThreshold;g_next.sellThreshold=SellTrailThreshold;
 g_next.buyStep=BuyTrailStep;g_next.sellStep=SellTrailStep;
 g_next.retrySeconds=RetryIntervalSeconds;g_next.closeSlippage=CloseSlippagePips;
 g_next.maxQuoteAge=MaxQuoteAgeSeconds;g_next.priority=(int)InitialOrderPriority;
 MarkDirty();
}
int SideMagic(int side){
 // Scope survives a missing trading-config snapshot and does not follow new Inputs.
 int b=g_active.buyMagic, s=g_active.sellMagic;
 if(b>0 && s>0 && b!=s)return side==BUY_SIDE?b:s;
 return side==BUY_SIDE?g_next.buyMagic:g_next.sellMagic;
}
double StageDistance(int side,int stage){int i=stage-1;if(i<0||i>=48)return 0;return side==BUY_SIDE?g_active.buyDistance[i]:g_active.sellDistance[i];}
double StageSL(int side,int stage){int i=stage-1;if(i<0||i>=48)return 0;return side==BUY_SIDE?g_active.buySL[i]:g_active.sellSL[i];}
double StageTP(int side,int stage){int i=stage-1;if(i<0||i>=48)return 0;return side==BUY_SIDE?g_active.buyTP[i]:g_active.sellTP[i];}
bool LimitsManagedSL(int side){return StageSL(side,g_side[side].stage)>0;}
bool LimitsManagedTP(int side){return StageTP(side,g_side[side].stage)>0;}
bool PositiveFinite(double v){return MathIsValidNumber(v)&&v>0;}
bool NonNegativeFinite(double v){return MathIsValidNumber(v)&&v>=0;}
string RejectedNumber(double value){return DoubleToString(value,-16);}
string InvalidNumber(string field,double value,string required){return field+" rejected "+RejectedNumber(value)+"; required "+required;}
bool ValidatePriceDistance(string field,double value,double pip,string &why){
 double converted=value*pip;
 if(!MathIsValidNumber(converted)||(value>0&&converted<=0)){
  why=InvalidNumber(field,value,"a representable finite price distance, greater than 0 when the input is nonzero; PipSize="+RejectedNumber(pip));return false;
 }
 return true;
}
bool ParseNumber(string value,double &out){
 int n=StringLen(value),digits=0,dots=0;if(n==0)return false;
 for(int i=0;i<n;i++){ushort c=StringGetCharacter(value,i);if(c>=48&&c<=57)digits++;else if(c==46)dots++;else return false;}
 if(digits==0||dots>1)return false;
 out=StringToDouble(value);
 if(!NonNegativeFinite(out))return false;
 if(out==0.0){
  // A nonzero decimal that underflows must not silently disable a financial
  // target or become an accepted zero. Literal decimal zero remains valid.
  for(int p=0;p<n;p++){ushort digit=StringGetCharacter(value,p);if(digit>=49&&digit<=57)return false;}
 }
 return true;
}
bool ParseInteger(string value,int &out){
 int n=StringLen(value);if(n==0)return false;long v=0;
 for(int i=0;i<n;i++){ushort c=StringGetCharacter(value,i);if(c<48||c>57)return false;int digit=(int)c-48;if(v>(2147483647-digit)/10)return false;v=v*10+digit;}
 out=(int)v;return true;
}
bool ValidateConfiguration(Configuration &cfg,string &why){
 if(!PositiveFinite(cfg.pip)){why=InvalidNumber("PipSize",cfg.pip,"a finite value greater than 0");return false;}
 if(cfg.buyMagic<=0){why="BuyMagic rejected "+IntegerToString(BuyMagic>2147483647||BuyMagic<=0?BuyMagic:(long)cfg.buyMagic)+"; required integer 1..2147483647";return false;}
 if(cfg.sellMagic<=0){why="SellMagic rejected "+IntegerToString(SellMagic>2147483647||SellMagic<=0?SellMagic:(long)cfg.sellMagic)+"; required integer 1..2147483647";return false;}
 if(cfg.buyMagic==cfg.sellMagic){why="BuyMagic/SellMagic rejected "+IntegerToString(cfg.buyMagic)+"/"+IntegerToString(cfg.sellMagic)+"; required different positive 32-bit integers";return false;}
 for(int i=0;i<48;i++){
  string k=StringFormat("%02d",i+1);
  if(!PositiveFinite(cfg.buyDistance[i])){why=InvalidNumber("BuyDistance"+k,cfg.buyDistance[i],"a finite value greater than 0");return false;}
  if(!PositiveFinite(cfg.sellDistance[i])){why=InvalidNumber("SellDistance"+k,cfg.sellDistance[i],"a finite value greater than 0");return false;}
  if(!NonNegativeFinite(cfg.buySL[i])){why=InvalidNumber("BuySL"+k,cfg.buySL[i],"a finite value at least 0");return false;}
  if(!NonNegativeFinite(cfg.buyTP[i])){why=InvalidNumber("BuyTP"+k,cfg.buyTP[i],"a finite value at least 0");return false;}
  if(!NonNegativeFinite(cfg.sellSL[i])){why=InvalidNumber("SellSL"+k,cfg.sellSL[i],"a finite value at least 0");return false;}
  if(!NonNegativeFinite(cfg.sellTP[i])){why=InvalidNumber("SellTP"+k,cfg.sellTP[i],"a finite value at least 0");return false;}
  if(!ValidatePriceDistance("BuyDistance"+k,cfg.buyDistance[i],cfg.pip,why)||
     !ValidatePriceDistance("SellDistance"+k,cfg.sellDistance[i],cfg.pip,why)||
     !ValidatePriceDistance("BuySL"+k,cfg.buySL[i],cfg.pip,why)||
     !ValidatePriceDistance("BuyTP"+k,cfg.buyTP[i],cfg.pip,why)||
     !ValidatePriceDistance("SellSL"+k,cfg.sellSL[i],cfg.pip,why)||
     !ValidatePriceDistance("SellTP"+k,cfg.sellTP[i],cfg.pip,why))return false;
 }
 if(!PositiveFinite(cfg.buyThreshold)){why=InvalidNumber("BuyTrailThreshold",cfg.buyThreshold,"a finite value greater than 0");return false;}
 if(!PositiveFinite(cfg.sellThreshold)){why=InvalidNumber("SellTrailThreshold",cfg.sellThreshold,"a finite value greater than 0");return false;}
 if(!PositiveFinite(cfg.buyStep)){why=InvalidNumber("BuyTrailStep",cfg.buyStep,"a finite value greater than 0");return false;}
 if(!PositiveFinite(cfg.sellStep)){why=InvalidNumber("SellTrailStep",cfg.sellStep,"a finite value greater than 0");return false;}
 if(!ValidatePriceDistance("BuyTrailThreshold",cfg.buyThreshold,cfg.pip,why)||
    !ValidatePriceDistance("SellTrailThreshold",cfg.sellThreshold,cfg.pip,why)||
    !ValidatePriceDistance("BuyTrailStep",cfg.buyStep,cfg.pip,why)||
    !ValidatePriceDistance("SellTrailStep",cfg.sellStep,cfg.pip,why))return false;
 if(cfg.retrySeconds<1){why="RetryIntervalSeconds rejected "+IntegerToString(cfg.retrySeconds)+"; required integer 1..2147483647";return false;}
 if(cfg.maxQuoteAge<1){why="MaxQuoteAgeSeconds rejected "+IntegerToString(cfg.maxQuoteAge)+"; required integer 1..2147483647";return false;}
 if(!NonNegativeFinite(cfg.closeSlippage)){why=InvalidNumber("CloseSlippagePips",cfg.closeSlippage,"an explicitly selected finite value at least 0");return false;}
 if(cfg.priority!=BuyFirst&&cfg.priority!=SellFirst){why="InitialOrderPriority rejected "+IntegerToString(cfg.priority)+"; required BuyFirst or SellFirst";return false;}
 if(!g_rules.valid){why="Managed symbol properties are unavailable";return false;}
 double points=MathFloor(cfg.closeSlippage*cfg.pip/g_rules.point);
 if(!MathIsValidNumber(points)||points<0||points>2147483647){why=InvalidNumber("CloseSlippagePips",cfg.closeSlippage,"conversion to integer Points in 0..2147483647; PipSize="+RejectedNumber(cfg.pip)+", Point="+RejectedNumber(g_rules.point));return false;}
 return true;
}
bool RefreshSymbolRules(){
 string symbol=g_managedSymbol;if(symbol=="")symbol=Symbol();
 g_rules.valid=false;
 g_rules.point=MarketInfo(symbol,MODE_POINT);
 double tickPoints=MarketInfo(symbol,MODE_TICKSIZE);
 g_rules.tick=tickPoints*g_rules.point; // 17.1: MODE_TICKSIZE is measured in Points.
 g_rules.digits=(int)MarketInfo(symbol,MODE_DIGITS);
 g_rules.minLot=MarketInfo(symbol,MODE_MINLOT);g_rules.maxLot=MarketInfo(symbol,MODE_MAXLOT);g_rules.lotStep=MarketInfo(symbol,MODE_LOTSTEP);
 g_rules.stopDistance=MarketInfo(symbol,MODE_STOPLEVEL)*g_rules.point;
 g_rules.freezeDistance=MarketInfo(symbol,MODE_FREEZELEVEL)*g_rules.point;
 if(!PositiveFinite(g_rules.point)||!PositiveFinite(g_rules.tick)||!PositiveFinite(g_rules.minLot)||
    !PositiveFinite(g_rules.maxLot)||!PositiveFinite(g_rules.lotStep)||g_rules.maxLot<g_rules.minLot||
    g_rules.digits<0||g_rules.digits>16||!NonNegativeFinite(g_rules.stopDistance)||!NonNegativeFinite(g_rules.freezeDistance)){
  Problem("symbol-rules","SYSTEM","Read symbol","Symbol properties are invalid",symbol);return false;
 }
 g_rules.valid=true;ResolveProblem("symbol-rules");return true;
}
bool ValidateLot(double lot,string &why){
 if(!g_rules.valid){why=InvalidNumber("Lot",lot,"available symbol minimum, maximum and LotStep");return false;}
 if(!PositiveFinite(lot)||lot<g_rules.minLot-1e-10||lot>g_rules.maxLot+1e-10){why=InvalidNumber("Lot",lot,"a finite value in "+RejectedNumber(g_rules.minLot)+".."+RejectedNumber(g_rules.maxLot));return false;}
 double n=(lot-g_rules.minLot)/g_rules.lotStep;
 if(!MathIsValidNumber(n)||MathAbs(n-MathRound(n))>1e-7){why=InvalidNumber("Lot",lot,"minimum "+RejectedNumber(g_rules.minLot)+" plus an integer multiple of LotStep="+RejectedNumber(g_rules.lotStep)+"; no automatic rounding");return false;}
 return true;
}
bool RefreshQuote(){
 MqlTick tick;string symbol=g_managedSymbol;if(symbol=="")symbol=Symbol();
 if(!SymbolInfoTick(symbol,tick)||!PositiveFinite(tick.bid)||!PositiveFinite(tick.ask)||tick.ask<tick.bid||tick.time<=0){
  g_quote.valid=false;g_quoteFreshKnown=false;Problem("quote","SYSTEM","Read quote","No valid managed-symbol Bid/Ask",symbol);return false;
 }
 bool update=g_quoteReceipt || (g_quote.valid && (tick.time!=g_quote.serverTime||tick.bid!=g_quote.bid||tick.ask!=g_quote.ask));
 g_quote.bid=tick.bid;g_quote.ask=tick.ask;g_quote.serverTime=tick.time;g_quote.valid=true;
 if(update){g_quote.receivedAt=g_now;g_quoteFreshKnown=true;}
 g_quoteReceipt=false;
 if(QuoteFresh())ResolveProblem("quote");
 else Problem("quote","SYSTEM","Wait for quote","A fresh managed-symbol quote is required",symbol);
 return g_quote.valid;
}
bool QuoteFresh(){
 int n=g_haveActive?g_active.maxQuoteAge:g_next.maxQuoteAge;
 if(n<1||!g_quote.valid||!g_quoteFreshKnown||g_now<g_quote.receivedAt)return false;
 return g_now-g_quote.receivedAt<=(ulong)n*1000;
}
bool SlippagePairPoints(double pip,double slip,int &points){
 points=0;
 if(!g_rules.valid||!PositiveFinite(pip)||!NonNegativeFinite(slip))return false;
 double converted=MathFloor(slip*pip/g_rules.point);
 if(!MathIsValidNumber(converted)||converted<0||converted>2147483647)return false;
 points=(int)converted;return true;
}
int CloseSlippagePoints(bool &valid){
 valid=false;int points=0;
 // A live cycle uses its frozen pair even when new Inputs would be usable.
 if(g_haveActive){valid=SlippagePairPoints(g_active.pip,g_active.closeSlippage,points);return points;}
 // A02: a previous explicitly selected pair is preferred only when its full
 // integer-Point conversion is valid. Corrected explicit Inputs may unblock
 // cleanup outside a cycle; no implicit zero or symbol-derived pip is added.
 if(SlippagePairPoints(g_active.pip,g_active.closeSlippage,points)){valid=true;return points;}
 valid=SlippagePairPoints(PipSize,CloseSlippagePips,points);
 return points;
}
double GridPrice(double value,bool upward){
 if(!g_rules.valid||!MathIsValidNumber(value))return 0;
 double v=value/g_rules.tick;
 double n=upward?MathCeil(v-1e-10):MathFloor(v+1e-10);
 return NormalizeDouble(n*g_rules.tick,g_rules.digits);
}
bool BuildPendingPrices(int side,int stage,double raw,bool paused,double &entry,double &sl,double &tp,string &why){
 if(!g_rules.valid||!QuoteFresh()||!MathIsValidNumber(raw)){why="Fresh quote and valid symbol rules are required";return false;}
 double separation=MathMax(g_rules.stopDistance,g_rules.tick);
 entry=side==BUY_SIDE?GridPrice(MathMax(raw,g_quote.ask+separation),true):GridPrice(MathMin(raw,g_quote.bid-separation),false);
 if(!PositiveFinite(entry)){why="Pending entry cannot be represented at a valid price";return false;}
 sl=0;tp=0;if(paused)return true;
 double sd=StageSL(side,stage)*g_active.pip,td=StageTP(side,stage)*g_active.pip;
 if(sd>0){sd=MathMax(sd,MathMax(g_rules.stopDistance,g_rules.tick));sl=GridPrice(side==BUY_SIDE?entry-sd:entry+sd,side!=BUY_SIDE);}
 if(td>0){td=MathMax(td,MathMax(g_rules.stopDistance,g_rules.tick));tp=GridPrice(side==BUY_SIDE?entry+td:entry-td,side==BUY_SIDE);}
 if((sd>0&&!PositiveFinite(sl))||(td>0&&!PositiveFinite(tp))){why="Required pending SL/TP cannot be represented";return false;}
 if((sd>0&&(side==BUY_SIDE?entry-sl:sl-entry)<=0)||(td>0&&(side==BUY_SIDE?tp-entry:entry-tp)<=0)){
  why="Required pending SL/TP cannot be represented at a strictly positive legal distance";return false;
 }
 return true;
}
bool ValidateDesiredStops(int side,int type,double entry,double sl,double tp,string &why,bool checkFreeze=true){
 double reference=type==OP_BUY?g_quote.bid:(type==OP_SELL?g_quote.ask:entry);
 double tiny=g_rules.tick*1e-8;
 if(sl>0){double d=side==BUY_SIDE?reference-sl:sl-reference;if(d<=tiny||d+tiny<g_rules.stopDistance){why="Required SL is invalid; Play does not widen broker distance";return false;}}
 if(tp>0){double d=side==BUY_SIDE?tp-reference:reference-tp;if(d<=tiny||d+tiny<g_rules.stopDistance){why="Required TP is invalid; Play does not widen broker distance";return false;}}
 if(!checkFreeze)return true;
 if(type==OP_BUY||type==OP_SELL){
  if(sl>0&&g_rules.freezeDistance>0&&MathAbs(reference-sl)<=g_rules.freezeDistance+tiny){why="SL modification is inside FreezeLevel";return false;}
  if(tp>0&&g_rules.freezeDistance>0&&MathAbs(reference-tp)<=g_rules.freezeDistance+tiny){why="TP modification is inside FreezeLevel";return false;}
 }else if(g_rules.freezeDistance>0){
  double gap=side==BUY_SIDE?entry-g_quote.ask:g_quote.bid-entry;
  if(gap<=g_rules.freezeDistance+tiny){why="Pending modification is inside FreezeLevel";return false;}
 }
 return true;
}
bool BuildPlayLimits(int side,OrderSnapshot &o,double &sl,double &tp,string &why){
 if(!g_rules.valid||!QuoteFresh()){why="A fresh managed-symbol quote is required for Play";return false;}
 double sd=StageSL(side,g_side[side].stage)*g_active.pip,td=StageTP(side,g_side[side].stage)*g_active.pip;
 sl=o.sl;tp=o.tp; // 7.6: zero-input manually added limits stay unchanged.
 if(o.type==OP_BUYSTOP||o.type==OP_SELLSTOP){
  if(sd>0)sl=GridPrice(side==BUY_SIDE?o.price-sd:o.price+sd,side!=BUY_SIDE);
  if(td>0)tp=GridPrice(side==BUY_SIDE?o.price+td:o.price-td,side==BUY_SIDE);
 }else{
  if(sd>0)sl=GridPrice(side==BUY_SIDE?g_quote.bid-sd:g_quote.ask+sd,side!=BUY_SIDE);
  if(td>0){
   double target=side==BUY_SIDE?o.price+td:o.price-td;
   if(side==BUY_SIDE&&g_quote.bid>=target)target=g_quote.bid+td;
   if(side==SELL_SIDE&&g_quote.ask<=target)target=g_quote.ask-td;
   tp=GridPrice(target,side==BUY_SIDE);
  }
 }
 if((sd>0&&!PositiveFinite(sl))||(td>0&&!PositiveFinite(tp))){why="Play SL/TP cannot be represented";return false;}
 // Exempt manual limits are preserved values, not required Play targets.
 // A no-op Play has no broker modification or FreezeLevel restriction.
 if(sd<=0&&td<=0)return true;
 bool changes=!TR_Same(sl,o.sl)||!TR_Same(tp,o.tp);
 return ValidateDesiredStops(side,o.type,o.price,sd>0?sl:0,td>0?tp:0,why,changes);
}
bool BuildTrailingPrices(int side,OrderSnapshot &o,double &entry,double &sl,double &tp,string &why){
 if(o.type!=SidePendingType(side)||!QuoteFresh()||!g_rules.valid){why="Trailing requires a fresh pending-order quote";return false;}
 double threshold=side==BUY_SIDE?g_active.buyThreshold:g_active.sellThreshold;
 double step=side==BUY_SIDE?g_active.buyStep:g_active.sellStep;
 double d=side==BUY_SIDE?(o.price-g_quote.ask)/g_active.pip:(g_quote.bid-o.price)/g_active.pip;
 if(!MathIsValidNumber(d)||d<threshold+step){why="";return false;}
 double n=MathFloor((d-threshold)/step),move=n*step*g_active.pip;
 if(!PositiveFinite(move)){why="Trailing movement overflow";return false;}
 entry=GridPrice(side==BUY_SIDE?o.price-move:o.price+move,side==BUY_SIDE);
 if((side==BUY_SIDE&&entry>=o.price)||(side==SELL_SIDE&&entry<=o.price)){why="";return false;}
 double gap=side==BUY_SIDE?entry-g_quote.ask:g_quote.bid-entry;
 if(gap<=0||gap+g_rules.tick*1e-8<g_rules.stopDistance||
    (g_rules.freezeDistance>0&&(side==BUY_SIDE?o.price-g_quote.ask:g_quote.bid-o.price)<=g_rules.freezeDistance)){
  why="Trailing target cannot be executed; entry is not substituted";return false;
 }
 sl=o.sl;tp=o.tp;
 double sd=StageSL(side,g_side[side].stage)*g_active.pip,td=StageTP(side,g_side[side].stage)*g_active.pip;
 if(sd>0){sd=MathMax(sd,MathMax(g_rules.stopDistance,g_rules.tick));sl=GridPrice(side==BUY_SIDE?entry-sd:entry+sd,side!=BUY_SIDE);}
 if(td>0){td=MathMax(td,MathMax(g_rules.stopDistance,g_rules.tick));tp=GridPrice(side==BUY_SIDE?entry+td:entry-td,side==BUY_SIDE);}
 if((sd>0&&!PositiveFinite(sl))||(td>0&&!PositiveFinite(tp))){why="Required trailing stops cannot be represented";return false;}
 if(!ValidateDesiredStops(side,o.type,entry,sl,tp,why))return false;
 return true;
}
bool IsManagedOrder(OrderSnapshot &o){return o.symbol==g_managedSymbol&&(o.magic==SideMagic(BUY_SIDE)||o.magic==SideMagic(SELL_SIDE));}
bool ScopeEntryReady(){
 // Pure readiness for UI and new-cycle entry. An unresolved creation in
 // this exact scope overlaps a new initial even after its cycle is archived.
 for(int i=0;i<ArraySize(g_intents);i++){
  int kind=g_intents[i].kind;
  if(kind!=IK_INITIAL&&kind!=IK_NEXT&&kind!=IK_REBUILD)continue;
  if(g_intents[i].symbol!=g_managedSymbol||
     (g_intents[i].magic!=SideMagic(BUY_SIDE)&&g_intents[i].magic!=SideMagic(SELL_SIDE)))continue;
  if(g_intents[i].status==IS_UNKNOWN||(g_intents[i].sent&&g_intents[i].status==IS_PREPARED))return false;
 }
 return true;
}
bool ScopeHandoffReady(){
 // Preserve the old scope's late-result watch; this is not a failure verdict.
 if(!ScopeEntryReady()){
  Problem("scope-handoff","SYSTEM","Prepare managed scope","A previous entry result remains unknown",
          "The scope remains observable and owned until exact reconciliation; Run and scope changes wait without repeating a request or guessing success.");return false;
 }
 ResolveProblem("scope-handoff");return true;
}
bool AdoptStartScope(){
 if(g_accountBlocked||!g_identityKnown||g_apiInFlight)return false;
 if(g_managedSymbol!=""&&(g_managedSymbol!=Symbol()||SideMagic(0)!=g_next.buyMagic||SideMagic(1)!=g_next.sellMagic)){
  if(!ScanOrders()||!ScopeEmpty()){LatchExit(XR_STANDBY_ORDERS);return false;}
  // Empty-scope cleanup can finish while an old creation result stays UNKNOWN.
  // Switching scope would stop observing a possible late order, so this
  // dependent handoff waits for exact reconciliation of that old request.
  if(!ScopeHandoffReady())return false;
  ReleaseOwnership(false);g_managedSymbol=Symbol();CopyConfiguration(g_active,g_next);
  g_quote.valid=false;g_quoteFreshKnown=false;
  if(!AcquireOwnership())return false;
 }else{g_managedSymbol=Symbol();if(!g_haveActive)CopyConfiguration(g_active,g_next);if(!AcquireOwnership())return false;}
 return RefreshSymbolRules();
}


// Durable local storage, typed JSON, chart lifecycle and terminal-local ownership.
// Files below are terminal Files sandbox files; FILE_COMMON is deliberately absent.
#define ST_MAX_BYTES 67108864
#define ST_MAX_TOKENS 2000000
#define ST_MAX_RECORDS 200000
enum ST_JsonType { ST_OBJECT=1,ST_ARRAY,ST_STRING,ST_NUMBER,ST_BOOL,ST_NULL };
struct ST_JsonNode { int type; int begin; int end; int first; int next; string key; string value; };
// Numeric-only structures copy their bytes without member-wise conversion in
// MQL4 (official Typecasting / Simple Structure Types). No union or DLL is used.
struct ST_RealBits { double value; };
struct ST_IntegerBits { long value; };
ST_JsonNode ST_nodes[];
string ST_json="",ST_parseError="",ST_lockKeys[],ST_chartSymbol="";
int ST_pos=0;
bool ST_retainDrafts=false,ST_sameInstallation=false,ST_accountSessionMismatch=false;
long ST_lifecycleToken=0;

string ST_Long(long v) { return StringFormat("%I64d",v); }
string ST_Unsigned(ulong v) { return StringFormat("%I64u",v); }
string ST_Double(double v) { return StringFormat("%.17g",v); }
string ST_Boolean(bool v) { return v?"true":"false"; }
string ST_Escape(string s) {
 string r="\""; int n=StringLen(s);
 for(int i=0;i<n;i++) {
  ushort c=StringGetCharacter(s,i);
  if(c==34) r+="\\\""; else if(c==92) r+="\\\\";
  else if(c==8) r+="\\b"; else if(c==9) r+="\\t"; else if(c==10) r+="\\n";
  else if(c==12) r+="\\f"; else if(c==13) r+="\\r";
  else if(c<32 || (c>=0xD800 && c<=0xDFFF)) r+=StringFormat("\\u%04x",(int)c);
  else r+=ShortToString(c);
 }
 return r+"\"";
}
string ST_ConfigDouble(double value) {
 if(MathIsValidNumber(value)) return ST_Double(value);
 // NEXT and an unapplied Standby configuration may contain invalid Inputs.
 // Preserve the exact IEEE-754 value in a tagged JSON string; never substitute
 // zero or let invalid NEXT prevent journalling a healthy ACTIVE cycle.
 ST_RealBits real; ST_IntegerBits bits; real.value=value; bits=real;
 return ST_Escape("ieee754:"+StringFormat("%016I64X",bits.value));
}
string ST_SHA256(string text) {
 uchar bytes[],key[],out[];
 int n=StringToCharArray(text,bytes,0,WHOLE_ARRAY,CP_UTF8);
 if(n<=0) return "";
 ArrayResize(bytes,n-1); ArrayResize(key,0);
 if(CryptEncode(CRYPT_HASH_SHA256,bytes,key,out)!=32) return "";
 string digest=""; for(int i=0;i<32;i++) digest+=StringFormat("%02x",(int)out[i]);
 return digest;
}
string IdentityDigest(string server,int account,string id) {
 return ST_SHA256("["+ST_Escape(server)+","+IntegerToString(account)+","+ST_Escape(id)+"]");
}
void ST_Whitespace() {
 while(ST_pos<StringLen(ST_json)) {
  ushort c=StringGetCharacter(ST_json,ST_pos);
  if(c!=32 && c!=9 && c!=10 && c!=13) break;
  ST_pos++;
 }
}
int ST_Hex(ushort c) {
 if(c>=48 && c<=57) return (int)c-48;
 if(c>=65 && c<=70) return (int)c-55;
 if(c>=97 && c<=102) return (int)c-87;
 return -1;
}
bool ST_ReadString(string &value) {
 value=""; int len=StringLen(ST_json);
 if(ST_pos>=len || StringGetCharacter(ST_json,ST_pos)!=34) return false;
 ST_pos++;
 while(ST_pos<len) {
  ushort c=StringGetCharacter(ST_json,ST_pos++);
  if(c==34) return true;
  if(c<32) return false;
  if(c==92) {
   if(ST_pos>=len) return false;
   c=StringGetCharacter(ST_json,ST_pos++);
   if(c==34 || c==92 || c==47) value+=ShortToString(c);
   else if(c==98) value+=ShortToString(8); else if(c==102) value+=ShortToString(12);
   else if(c==110) value+=ShortToString(10); else if(c==114) value+=ShortToString(13);
   else if(c==116) value+=ShortToString(9);
   else if(c==117) {
    if(ST_pos+4>len) return false;
    int u=0;
    for(int k=0;k<4;k++) { int h=ST_Hex(StringGetCharacter(ST_json,ST_pos++)); if(h<0) return false; u=u*16+h; }
    if(u>=0xD800 && u<=0xDBFF) {
     if(ST_pos+6>len || StringGetCharacter(ST_json,ST_pos)!=92 || StringGetCharacter(ST_json,ST_pos+1)!=117) return false;
     ST_pos+=2; int low=0;
     for(int j=0;j<4;j++) { int h=ST_Hex(StringGetCharacter(ST_json,ST_pos++)); if(h<0) return false; low=low*16+h; }
     if(low<0xDC00 || low>0xDFFF) return false;
     value+=ShortToString((ushort)u)+ShortToString((ushort)low);
    } else { if(u>=0xDC00 && u<=0xDFFF) return false; value+=ShortToString((ushort)u); }
   } else return false;
  } else {
   if(c>=0xD800 && c<=0xDBFF) {
    if(ST_pos>=len) return false; ushort low=StringGetCharacter(ST_json,ST_pos++);
    if(low<0xDC00 || low>0xDFFF) return false; value+=ShortToString(c)+ShortToString(low);
   } else { if(c>=0xDC00 && c<=0xDFFF) return false; value+=ShortToString(c); }
  }
 }
 return false;
}
bool ST_ReadNumber(string &value) {
 int start=ST_pos,len=StringLen(ST_json);
 if(ST_pos<len && StringGetCharacter(ST_json,ST_pos)==45) ST_pos++;
 if(ST_pos>=len) return false;
 ushort c=StringGetCharacter(ST_json,ST_pos);
 if(c==48) ST_pos++;
 else {
  if(c<49 || c>57) return false;
  while(ST_pos<len) { c=StringGetCharacter(ST_json,ST_pos); if(c<48 || c>57) break; ST_pos++; }
 }
 if(ST_pos<len && StringGetCharacter(ST_json,ST_pos)==46) {
  ST_pos++; int begin=ST_pos;
  while(ST_pos<len) { c=StringGetCharacter(ST_json,ST_pos); if(c<48 || c>57) break; ST_pos++; }
  if(ST_pos==begin) return false;
 }
 if(ST_pos<len && (StringGetCharacter(ST_json,ST_pos)==101 || StringGetCharacter(ST_json,ST_pos)==69)) {
  ST_pos++;
  if(ST_pos<len && (StringGetCharacter(ST_json,ST_pos)==43 || StringGetCharacter(ST_json,ST_pos)==45)) ST_pos++;
  int begin=ST_pos;
  while(ST_pos<len) { c=StringGetCharacter(ST_json,ST_pos); if(c<48 || c>57) break; ST_pos++; }
  if(ST_pos==begin) return false;
 }
 value=StringSubstr(ST_json,start,ST_pos-start); return true;
}
int ST_ParseValue(int depth) {
 if(depth>24 || ArraySize(ST_nodes)>=ST_MAX_TOKENS) return -1;
 ST_Whitespace(); int len=StringLen(ST_json);
 if(ST_pos>=len) return -1;
 int index=ArraySize(ST_nodes);
 if(ArrayResize(ST_nodes,index+1,4096)!=index+1) return -1;
 ST_nodes[index].begin=ST_pos; ST_nodes[index].end=ST_pos; ST_nodes[index].first=-1; ST_nodes[index].next=-1;
 ST_nodes[index].key=""; ST_nodes[index].value="";
 ushort c=StringGetCharacter(ST_json,ST_pos); int last=-1;
 if(c==123 || c==91) {
  bool object=(c==123); ushort finish=(object?125:93);
  ST_nodes[index].type=(object?ST_OBJECT:ST_ARRAY); ST_pos++; ST_Whitespace();
  if(ST_pos<len && StringGetCharacter(ST_json,ST_pos)==finish) ST_pos++;
  else {
   while(true) {
    string key="";
    if(object) {
     if(!ST_ReadString(key)) return -1;
     for(int old=ST_nodes[index].first;old>=0;old=ST_nodes[old].next) if(ST_nodes[old].key==key) return -1;
     ST_Whitespace(); if(ST_pos>=len || StringGetCharacter(ST_json,ST_pos++)!=58) return -1;
    }
    int child=ST_ParseValue(depth+1); if(child<0) return -1;
    ST_nodes[child].key=key;
    if(last<0) ST_nodes[index].first=child; else ST_nodes[last].next=child;
    last=child; ST_Whitespace(); if(ST_pos>=len) return -1;
    c=StringGetCharacter(ST_json,ST_pos++);
    if(c==finish) break;
    if(c!=44) return -1;
    ST_Whitespace();
   }
  }
 } else if(c==34) {
  ST_nodes[index].type=ST_STRING; string value="";
  if(!ST_ReadString(value)) return -1; ST_nodes[index].value=value;
 } else if(c==116 || c==102 || c==110) {
  string literal=(c==116?"true":(c==102?"false":"null"));
  if(StringSubstr(ST_json,ST_pos,StringLen(literal))!=literal) return -1;
  ST_pos+=StringLen(literal); ST_nodes[index].type=(c==110?ST_NULL:ST_BOOL); ST_nodes[index].value=literal;
 } else {
  ST_nodes[index].type=ST_NUMBER; string value="";
  if(!ST_ReadNumber(value)) return -1; ST_nodes[index].value=value;
 }
 ST_nodes[index].end=ST_pos; return index;
}
bool ST_Parse(string source) {
 ST_json=source; ST_pos=0; ST_parseError=""; ArrayResize(ST_nodes,0);
 if(StringLen(source)==0 || StringLen(source)>ST_MAX_BYTES || ST_ParseValue(0)!=0) { ST_parseError="Malformed JSON or resource limit"; return false; }
 ST_Whitespace(); if(ST_pos!=StringLen(ST_json)) { ST_parseError="Trailing JSON content"; return false; }
 return true;
}
int ST_Member(int object,string key) {
 if(object<0 || object>=ArraySize(ST_nodes) || ST_nodes[object].type!=ST_OBJECT) return -1;
 for(int i=ST_nodes[object].first;i>=0;i=ST_nodes[i].next) if(ST_nodes[i].key==key) return i;
 return -1;
}
int ST_Count(int node) {
 if(node<0 || node>=ArraySize(ST_nodes)) return -1;
 int count=0; for(int i=ST_nodes[node].first;i>=0;i=ST_nodes[i].next) count++;
 return count;
}
bool ST_GetString(int node,string &value) {
 if(node<0 || ST_nodes[node].type!=ST_STRING) return false;
 value=ST_nodes[node].value; return true;
}
bool ST_GetBool(int node,bool &value) {
 if(node<0 || ST_nodes[node].type!=ST_BOOL) return false;
 value=(ST_nodes[node].value=="true"); return true;
}
bool ST_GetLong(int node,long &value) {
 if(node<0 || ST_nodes[node].type!=ST_NUMBER) return false;
 string s=ST_nodes[node].value; int n=StringLen(s),first=0;
 bool negative=(n>0 && StringGetCharacter(s,0)==45); if(negative) first=1;
 if(first==n) return false;
 for(int i=first;i<n;i++) { ushort c=StringGetCharacter(s,i); if(c<48 || c>57) return false; }
 string digits=StringSubstr(s,first); string bound=(negative?"9223372036854775808":"9223372036854775807");
 if(StringLen(digits)>19 || (StringLen(digits)==19 && StringCompare(digits,bound)>0)) return false;
 value=StringToInteger(s); return true;
}
bool ST_GetInt(int node,int &value) { long v=0; if(!ST_GetLong(node,v) || v<-2147483648 || v>2147483647) return false; value=(int)v; return true; }
bool ST_GetUnsigned(int node,ulong &value) { long v=0; if(!ST_GetLong(node,v) || v<0) return false; value=(ulong)v; return true; }
bool ST_GetDate(int node,datetime &value) { long v=0; if(!ST_GetLong(node,v) || v<0 || v>32535215999) return false; value=(datetime)v; return true; }
bool ST_GetDouble(int node,double &value) {
 if(node<0 || ST_nodes[node].type!=ST_NUMBER) return false;
 value=StringToDouble(ST_nodes[node].value);
 if(!MathIsValidNumber(value)) return false;
 // Underflow to zero loses authoritative price/lot data and is rejected.
 if(value==0.0) {
  string s=ST_nodes[node].value; int e=StringFind(s,"e"); if(e<0) e=StringFind(s,"E"); if(e<0) e=StringLen(s);
  for(int i=0;i<e;i++) { ushort c=StringGetCharacter(s,i); if(c>=49 && c<=57) return false; }
 }
 return true;
}
bool ST_GetConfigDouble(int node,double &value) {
 if(node<0) return false;
 if(ST_nodes[node].type==ST_NUMBER) return ST_GetDouble(node,value);
 if(ST_nodes[node].type!=ST_STRING) return false;
 string text=ST_nodes[node].value;
 if(StringLen(text)!=24 || StringSubstr(text,0,8)!="ieee754:") return false;
 ulong raw=0;
 for(int i=8;i<24;i++) {
  int digit=ST_Hex(StringGetCharacter(text,i)); if(digit<0) return false;
  raw=(raw<<4)|(ulong)digit;
 }
 // The tag is reserved for nonfinite configuration Inputs only. Operational
 // prices, volumes, money and clocks still use the strict numeric readers.
 ST_IntegerBits bits; ST_RealBits real; bits.value=(long)raw; real=bits;
 value=real.value; return !MathIsValidNumber(value);
}
bool ST_ReadFile(string name,string &contents) {
 contents=""; int h=FileOpen(name,FILE_READ|FILE_BIN);
 if(h==INVALID_HANDLE) return false;
 ulong size=FileSize(h);
 if(size==0 || size>ST_MAX_BYTES) { FileClose(h); return false; }
 uchar bytes[]; int count=(int)size;
 if(ArrayResize(bytes,count)!=count) { FileClose(h); return false; }
 int got=(int)FileReadArray(h,bytes,0,count); FileClose(h);
 if(got!=count) return false;
 // UTF-8 must round trip byte for byte: reject BOM, invalid sequences and NUL.
 if(count>=3 && bytes[0]==239 && bytes[1]==187 && bytes[2]==191) return false;
 for(int i=0;i<count;i++) if(bytes[i]==0) return false;
 contents=CharArrayToString(bytes,0,count,CP_UTF8);
 uchar check[]; int encoded=StringToCharArray(contents,check,0,WHOLE_ARRAY,CP_UTF8)-1;
 if(encoded!=count) return false;
 for(int j=0;j<count;j++) if(bytes[j]!=check[j]) return false;
 return true;
}
bool ST_WriteFile(string name,string contents) {
 uchar bytes[]; int count=StringToCharArray(contents,bytes,0,WHOLE_ARRAY,CP_UTF8)-1;
 if(count<=0 || count>ST_MAX_BYTES) return false;
 int h=FileOpen(name,FILE_WRITE|FILE_BIN); if(h==INVALID_HANDLE) return false;
 uint written=FileWriteArray(h,bytes,0,count); FileFlush(h); FileClose(h);
 return written==(uint)count;
}


// The complete schema uses named JSON members; no binary or encoded state blob.
string ST_Write_Configuration(Configuration &v) {
 string text="{";
 text+="\"buyDistance\":";
 text+="[";
 for(int i=0;i<48;i++) { if(i>0) text+=","; text+=ST_ConfigDouble(v.buyDistance[i]); }
 text+="]";
 text+=",\"buySL\":";
 text+="[";
 for(int i=0;i<48;i++) { if(i>0) text+=","; text+=ST_ConfigDouble(v.buySL[i]); }
 text+="]";
 text+=",\"buyTP\":";
 text+="[";
 for(int i=0;i<48;i++) { if(i>0) text+=","; text+=ST_ConfigDouble(v.buyTP[i]); }
 text+="]";
 text+=",\"sellDistance\":";
 text+="[";
 for(int i=0;i<48;i++) { if(i>0) text+=","; text+=ST_ConfigDouble(v.sellDistance[i]); }
 text+="]";
 text+=",\"sellSL\":";
 text+="[";
 for(int i=0;i<48;i++) { if(i>0) text+=","; text+=ST_ConfigDouble(v.sellSL[i]); }
 text+="]";
 text+=",\"sellTP\":";
 text+="[";
 for(int i=0;i<48;i++) { if(i>0) text+=","; text+=ST_ConfigDouble(v.sellTP[i]); }
 text+="]";
 text+=",\"pip\":";
 text+=ST_ConfigDouble(v.pip);
 text+=",\"buyMagic\":";
 text+=IntegerToString(v.buyMagic);
 text+=",\"sellMagic\":";
 text+=IntegerToString(v.sellMagic);
 text+=",\"buyThreshold\":";
 text+=ST_ConfigDouble(v.buyThreshold);
 text+=",\"sellThreshold\":";
 text+=ST_ConfigDouble(v.sellThreshold);
 text+=",\"buyStep\":";
 text+=ST_ConfigDouble(v.buyStep);
 text+=",\"sellStep\":";
 text+=ST_ConfigDouble(v.sellStep);
 text+=",\"retrySeconds\":";
 text+=IntegerToString(v.retrySeconds);
 text+=",\"closeSlippage\":";
 text+=ST_ConfigDouble(v.closeSlippage);
 text+=",\"maxQuoteAge\":";
 text+=IntegerToString(v.maxQuoteAge);
 text+=",\"priority\":";
 text+=IntegerToString(v.priority);
 return text+"}";
}
bool ST_Read_Configuration(int object,Configuration &v) {
 if(object<0 || ST_nodes[object].type!=ST_OBJECT || ST_Count(object)!=17) return false;
 int node=-1,child=-1,count=0;
 node=ST_Member(object,"buyDistance");
 if(node<0 || ST_nodes[node].type!=ST_ARRAY) return false;
 if(ST_Count(node)!=48) return false;
 child=ST_nodes[node].first;
 for(int i=0;i<48;i++) {
  if(!ST_GetConfigDouble(child,v.buyDistance[i])) return false;
  child=ST_nodes[child].next;
 }
 node=ST_Member(object,"buySL");
 if(node<0 || ST_nodes[node].type!=ST_ARRAY) return false;
 if(ST_Count(node)!=48) return false;
 child=ST_nodes[node].first;
 for(int i=0;i<48;i++) {
  if(!ST_GetConfigDouble(child,v.buySL[i])) return false;
  child=ST_nodes[child].next;
 }
 node=ST_Member(object,"buyTP");
 if(node<0 || ST_nodes[node].type!=ST_ARRAY) return false;
 if(ST_Count(node)!=48) return false;
 child=ST_nodes[node].first;
 for(int i=0;i<48;i++) {
  if(!ST_GetConfigDouble(child,v.buyTP[i])) return false;
  child=ST_nodes[child].next;
 }
 node=ST_Member(object,"sellDistance");
 if(node<0 || ST_nodes[node].type!=ST_ARRAY) return false;
 if(ST_Count(node)!=48) return false;
 child=ST_nodes[node].first;
 for(int i=0;i<48;i++) {
  if(!ST_GetConfigDouble(child,v.sellDistance[i])) return false;
  child=ST_nodes[child].next;
 }
 node=ST_Member(object,"sellSL");
 if(node<0 || ST_nodes[node].type!=ST_ARRAY) return false;
 if(ST_Count(node)!=48) return false;
 child=ST_nodes[node].first;
 for(int i=0;i<48;i++) {
  if(!ST_GetConfigDouble(child,v.sellSL[i])) return false;
  child=ST_nodes[child].next;
 }
 node=ST_Member(object,"sellTP");
 if(node<0 || ST_nodes[node].type!=ST_ARRAY) return false;
 if(ST_Count(node)!=48) return false;
 child=ST_nodes[node].first;
 for(int i=0;i<48;i++) {
  if(!ST_GetConfigDouble(child,v.sellTP[i])) return false;
  child=ST_nodes[child].next;
 }
 node=ST_Member(object,"pip");
 if(!ST_GetConfigDouble(node,v.pip)) return false;
 node=ST_Member(object,"buyMagic");
 if(!ST_GetInt(node,v.buyMagic)) return false;
 node=ST_Member(object,"sellMagic");
 if(!ST_GetInt(node,v.sellMagic)) return false;
 node=ST_Member(object,"buyThreshold");
 if(!ST_GetConfigDouble(node,v.buyThreshold)) return false;
 node=ST_Member(object,"sellThreshold");
 if(!ST_GetConfigDouble(node,v.sellThreshold)) return false;
 node=ST_Member(object,"buyStep");
 if(!ST_GetConfigDouble(node,v.buyStep)) return false;
 node=ST_Member(object,"sellStep");
 if(!ST_GetConfigDouble(node,v.sellStep)) return false;
 node=ST_Member(object,"retrySeconds");
 if(!ST_GetInt(node,v.retrySeconds)) return false;
 node=ST_Member(object,"closeSlippage");
 if(!ST_GetConfigDouble(node,v.closeSlippage)) return false;
 node=ST_Member(object,"maxQuoteAge");
 if(!ST_GetInt(node,v.maxQuoteAge)) return false;
 node=ST_Member(object,"priority");
 if(!ST_GetInt(node,v.priority)) return false;
 return true;
}
string ST_Write_SideState(SideState &v) {
 string text="{";
 text+="\"control\":";
 text+=IntegerToString(v.control);
 text+=",\"phase\":";
 text+=IntegerToString(v.phase);
 text+=",\"stage\":";
 text+=IntegerToString(v.stage);
 text+=",\"targetStage\":";
 text+=IntegerToString(v.targetStage);
 text+=",\"occurrence\":";
 text+=ST_Long(v.occurrence);
 text+=",\"ticket\":";
 text+=IntegerToString(v.ticket);
 text+=",\"orderLot\":";
 text+=ST_Double(v.orderLot);
 text+=",\"lastPending\":";
 text+=ST_Double(v.lastPending);
 text+=",\"finalClose\":";
 text+=ST_Double(v.finalClose);
 text+=",\"finalCloseTime\":";
 text+=ST_Long(v.finalCloseTime);
 text+=",\"finalKnown\":";
 text+=ST_Boolean(v.finalKnown);
 text+=",\"initialConfirmed\":";
 text+=ST_Boolean(v.initialConfirmed);
 text+=",\"tradeSeen\":";
 text+=ST_Boolean(v.tradeSeen);
 text+=",\"trailing\":";
 text+=ST_Boolean(v.trailing);
 text+=",\"nextLotApplied\":";
 text+=ST_Boolean(v.nextLotApplied);
 text+=",\"nextLot\":";
 text+=ST_Double(v.nextLot);
 text+=",\"targetLot\":";
 text+=ST_Double(v.targetLot);
 text+=",\"targetLotFrozen\":";
 text+=ST_Boolean(v.targetLotFrozen);
 text+=",\"pauseRequested\":";
 text+=ST_Boolean(v.pauseRequested);
 text+=",\"rollbackSL\":";
 text+=ST_Boolean(v.rollbackSL);
 text+=",\"rollbackTP\":";
 text+=ST_Boolean(v.rollbackTP);
 text+=",\"retryAt\":";
 text+=ST_Unsigned(v.retryAt);
 text+=",\"playGeneration\":";
 text+=ST_Long(v.playGeneration);
 return text+"}";
}
bool ST_Read_SideState(int object,SideState &v) {
 if(object<0 || ST_nodes[object].type!=ST_OBJECT || ST_Count(object)!=23) return false;
 int node=-1,child=-1,count=0;
 node=ST_Member(object,"control");
 if(!ST_GetInt(node,v.control)) return false;
 node=ST_Member(object,"phase");
 if(!ST_GetInt(node,v.phase)) return false;
 node=ST_Member(object,"stage");
 if(!ST_GetInt(node,v.stage)) return false;
 node=ST_Member(object,"targetStage");
 if(!ST_GetInt(node,v.targetStage)) return false;
 node=ST_Member(object,"occurrence");
 if(!ST_GetLong(node,v.occurrence)) return false;
 node=ST_Member(object,"ticket");
 if(!ST_GetInt(node,v.ticket)) return false;
 node=ST_Member(object,"orderLot");
 if(!ST_GetDouble(node,v.orderLot)) return false;
 node=ST_Member(object,"lastPending");
 if(!ST_GetDouble(node,v.lastPending)) return false;
 node=ST_Member(object,"finalClose");
 if(!ST_GetDouble(node,v.finalClose)) return false;
 node=ST_Member(object,"finalCloseTime");
 if(!ST_GetDate(node,v.finalCloseTime)) return false;
 node=ST_Member(object,"finalKnown");
 if(!ST_GetBool(node,v.finalKnown)) return false;
 node=ST_Member(object,"initialConfirmed");
 if(!ST_GetBool(node,v.initialConfirmed)) return false;
 node=ST_Member(object,"tradeSeen");
 if(!ST_GetBool(node,v.tradeSeen)) return false;
 node=ST_Member(object,"trailing");
 if(!ST_GetBool(node,v.trailing)) return false;
 node=ST_Member(object,"nextLotApplied");
 if(!ST_GetBool(node,v.nextLotApplied)) return false;
 node=ST_Member(object,"nextLot");
 if(!ST_GetDouble(node,v.nextLot)) return false;
 node=ST_Member(object,"targetLot");
 if(!ST_GetDouble(node,v.targetLot)) return false;
 node=ST_Member(object,"targetLotFrozen");
 if(!ST_GetBool(node,v.targetLotFrozen)) return false;
 node=ST_Member(object,"pauseRequested");
 if(!ST_GetBool(node,v.pauseRequested)) return false;
 node=ST_Member(object,"rollbackSL");
 if(!ST_GetBool(node,v.rollbackSL)) return false;
 node=ST_Member(object,"rollbackTP");
 if(!ST_GetBool(node,v.rollbackTP)) return false;
 node=ST_Member(object,"retryAt");
 if(!ST_GetUnsigned(node,v.retryAt)) return false;
 node=ST_Member(object,"playGeneration");
 if(!ST_GetLong(node,v.playGeneration)) return false;
 return true;
}
string ST_Write_OrderSnapshot(OrderSnapshot &v) {
 string text="{";
 text+="\"ticket\":";
 text+=IntegerToString(v.ticket);
 text+=",\"type\":";
 text+=IntegerToString(v.type);
 text+=",\"magic\":";
 text+=IntegerToString(v.magic);
 text+=",\"side\":";
 text+=IntegerToString(v.side);
 text+=",\"symbol\":";
 text+=ST_Escape(v.symbol);
 text+=",\"lots\":";
 text+=ST_Double(v.lots);
 text+=",\"price\":";
 text+=ST_Double(v.price);
 text+=",\"sl\":";
 text+=ST_Double(v.sl);
 text+=",\"tp\":";
 text+=ST_Double(v.tp);
 text+=",\"openTime\":";
 text+=ST_Long(v.openTime);
 text+=",\"closeTime\":";
 text+=ST_Long(v.closeTime);
 text+=",\"closePrice\":";
 text+=ST_Double(v.closePrice);
 text+=",\"profit\":";
 text+=ST_Double(v.profit);
 text+=",\"commission\":";
 text+=ST_Double(v.commission);
 text+=",\"swap\":";
 text+=ST_Double(v.swap);
 return text+"}";
}
bool ST_Read_OrderSnapshot(int object,OrderSnapshot &v) {
 if(object<0 || ST_nodes[object].type!=ST_OBJECT || ST_Count(object)!=15) return false;
 int node=-1,child=-1,count=0;
 node=ST_Member(object,"ticket");
 if(!ST_GetInt(node,v.ticket)) return false;
 node=ST_Member(object,"type");
 if(!ST_GetInt(node,v.type)) return false;
 node=ST_Member(object,"magic");
 if(!ST_GetInt(node,v.magic)) return false;
 node=ST_Member(object,"side");
 if(!ST_GetInt(node,v.side)) return false;
 node=ST_Member(object,"symbol");
 if(!ST_GetString(node,v.symbol)) return false;
 node=ST_Member(object,"lots");
 if(!ST_GetDouble(node,v.lots)) return false;
 node=ST_Member(object,"price");
 if(!ST_GetDouble(node,v.price)) return false;
 node=ST_Member(object,"sl");
 if(!ST_GetDouble(node,v.sl)) return false;
 node=ST_Member(object,"tp");
 if(!ST_GetDouble(node,v.tp)) return false;
 node=ST_Member(object,"openTime");
 if(!ST_GetDate(node,v.openTime)) return false;
 node=ST_Member(object,"closeTime");
 if(!ST_GetDate(node,v.closeTime)) return false;
 node=ST_Member(object,"closePrice");
 if(!ST_GetDouble(node,v.closePrice)) return false;
 node=ST_Member(object,"profit");
 if(!ST_GetDouble(node,v.profit)) return false;
 node=ST_Member(object,"commission");
 if(!ST_GetDouble(node,v.commission)) return false;
 node=ST_Member(object,"swap");
 if(!ST_GetDouble(node,v.swap)) return false;
 return true;
}
string ST_Write_OrderLink(OrderLink &v) {
 string text="{";
 text+="\"ticket\":";
 text+=IntegerToString(v.ticket);
 text+=",\"cycle\":";
 text+=ST_Long(v.cycle);
 text+=",\"occurrence\":";
 text+=ST_Long(v.occurrence);
 text+=",\"side\":";
 text+=IntegerToString(v.side);
 text+=",\"stage\":";
 text+=IntegerToString(v.stage);
 text+=",\"symbol\":";
 text+=ST_Escape(v.symbol);
 text+=",\"magic\":";
 text+=IntegerToString(v.magic);
 text+=",\"originType\":";
 text+=IntegerToString(v.originType);
 text+=",\"parentTicket\":";
 text+=IntegerToString(v.parentTicket);
 text+=",\"initialLot\":";
 text+=ST_Double(v.initialLot);
 text+=",\"observedLot\":";
 text+=ST_Double(v.observedLot);
 text+=",\"entry\":";
 text+=ST_Double(v.entry);
 text+=",\"openTime\":";
 text+=ST_Long(v.openTime);
 text+=",\"pendingOrigin\":";
 text+=ST_Boolean(v.pendingOrigin);
 text+=",\"live\":";
 text+=ST_Boolean(v.live);
 text+=",\"settled\":";
 text+=ST_Boolean(v.settled);
 text+=",\"finalProcessed\":";
 text+=ST_Boolean(v.finalProcessed);
 text+=",\"lastSeenServer\":";
 text+=ST_Long(v.lastSeenServer);
 text+=",\"sequence\":";
 text+=ST_Long(v.sequence);
 return text+"}";
}
bool ST_Read_OrderLink(int object,OrderLink &v) {
 if(object<0 || ST_nodes[object].type!=ST_OBJECT || ST_Count(object)!=19) return false;
 int node=-1,child=-1,count=0;
 node=ST_Member(object,"ticket");
 if(!ST_GetInt(node,v.ticket)) return false;
 node=ST_Member(object,"cycle");
 if(!ST_GetLong(node,v.cycle)) return false;
 node=ST_Member(object,"occurrence");
 if(!ST_GetLong(node,v.occurrence)) return false;
 node=ST_Member(object,"side");
 if(!ST_GetInt(node,v.side)) return false;
 node=ST_Member(object,"stage");
 if(!ST_GetInt(node,v.stage)) return false;
 node=ST_Member(object,"symbol");
 if(!ST_GetString(node,v.symbol)) return false;
 node=ST_Member(object,"magic");
 if(!ST_GetInt(node,v.magic)) return false;
 node=ST_Member(object,"originType");
 if(!ST_GetInt(node,v.originType)) return false;
 node=ST_Member(object,"parentTicket");
 if(!ST_GetInt(node,v.parentTicket)) return false;
 node=ST_Member(object,"initialLot");
 if(!ST_GetDouble(node,v.initialLot)) return false;
 node=ST_Member(object,"observedLot");
 if(!ST_GetDouble(node,v.observedLot)) return false;
 node=ST_Member(object,"entry");
 if(!ST_GetDouble(node,v.entry)) return false;
 node=ST_Member(object,"openTime");
 if(!ST_GetDate(node,v.openTime)) return false;
 node=ST_Member(object,"pendingOrigin");
 if(!ST_GetBool(node,v.pendingOrigin)) return false;
 node=ST_Member(object,"live");
 if(!ST_GetBool(node,v.live)) return false;
 node=ST_Member(object,"settled");
 if(!ST_GetBool(node,v.settled)) return false;
 node=ST_Member(object,"finalProcessed");
 if(!ST_GetBool(node,v.finalProcessed)) return false;
 node=ST_Member(object,"lastSeenServer");
 if(!ST_GetDate(node,v.lastSeenServer)) return false;
 node=ST_Member(object,"sequence");
 if(!ST_GetLong(node,v.sequence)) return false;
 return true;
}
string ST_Write_LedgerRecord(LedgerRecord &v) {
 string text="{";
 text+="\"ticket\":";
 text+=IntegerToString(v.ticket);
 text+=",\"cycle\":";
 text+=ST_Long(v.cycle);
 text+=",\"occurrence\":";
 text+=ST_Long(v.occurrence);
 text+=",\"side\":";
 text+=IntegerToString(v.side);
 text+=",\"stage\":";
 text+=IntegerToString(v.stage);
 text+=",\"type\":";
 text+=IntegerToString(v.type);
 text+=",\"lots\":";
 text+=ST_Double(v.lots);
 text+=",\"price\":";
 text+=ST_Double(v.price);
 text+=",\"time\":";
 text+=ST_Long(v.time);
 text+=",\"profit\":";
 text+=ST_Double(v.profit);
 text+=",\"commission\":";
 text+=ST_Double(v.commission);
 text+=",\"swap\":";
 text+=ST_Double(v.swap);
 text+=",\"counted\":";
 text+=ST_Boolean(v.counted);
 text+=",\"finalEvidence\":";
 text+=ST_Boolean(v.finalEvidence);
 text+=",\"observationSequence\":";
 text+=ST_Long(v.observationSequence);
 return text+"}";
}
bool ST_Read_LedgerRecord(int object,LedgerRecord &v) {
 if(object<0 || ST_nodes[object].type!=ST_OBJECT || ST_Count(object)!=15) return false;
 int node=-1,child=-1,count=0;
 node=ST_Member(object,"ticket");
 if(!ST_GetInt(node,v.ticket)) return false;
 node=ST_Member(object,"cycle");
 if(!ST_GetLong(node,v.cycle)) return false;
 node=ST_Member(object,"occurrence");
 if(!ST_GetLong(node,v.occurrence)) return false;
 node=ST_Member(object,"side");
 if(!ST_GetInt(node,v.side)) return false;
 node=ST_Member(object,"stage");
 if(!ST_GetInt(node,v.stage)) return false;
 node=ST_Member(object,"type");
 if(!ST_GetInt(node,v.type)) return false;
 node=ST_Member(object,"lots");
 if(!ST_GetDouble(node,v.lots)) return false;
 node=ST_Member(object,"price");
 if(!ST_GetDouble(node,v.price)) return false;
 node=ST_Member(object,"time");
 if(!ST_GetDate(node,v.time)) return false;
 node=ST_Member(object,"profit");
 if(!ST_GetDouble(node,v.profit)) return false;
 node=ST_Member(object,"commission");
 if(!ST_GetDouble(node,v.commission)) return false;
 node=ST_Member(object,"swap");
 if(!ST_GetDouble(node,v.swap)) return false;
 node=ST_Member(object,"counted");
 if(!ST_GetBool(node,v.counted)) return false;
 node=ST_Member(object,"finalEvidence");
 if(!ST_GetBool(node,v.finalEvidence)) return false;
 node=ST_Member(object,"observationSequence");
 if(!ST_GetLong(node,v.observationSequence)) return false;
 return true;
}
string ST_Write_OperationIntent(OperationIntent &v) {
 string text="{";
 text+="\"id\":";
 text+=ST_Long(v.id);
 text+=",\"kind\":";
 text+=IntegerToString(v.kind);
 text+=",\"status\":";
 text+=IntegerToString(v.status);
 text+=",\"side\":";
 text+=IntegerToString(v.side);
 text+=",\"cycle\":";
 text+=ST_Long(v.cycle);
 text+=",\"occurrence\":";
 text+=ST_Long(v.occurrence);
 text+=",\"stage\":";
 text+=IntegerToString(v.stage);
 text+=",\"ticket\":";
 text+=IntegerToString(v.ticket);
 text+=",\"orderType\":";
 text+=IntegerToString(v.orderType);
 text+=",\"symbol\":";
 text+=ST_Escape(v.symbol);
 text+=",\"magic\":";
 text+=IntegerToString(v.magic);
 text+=",\"lots\":";
 text+=ST_Double(v.lots);
 text+=",\"price\":";
 text+=ST_Double(v.price);
 text+=",\"sl\":";
 text+=ST_Double(v.sl);
 text+=",\"tp\":";
 text+=ST_Double(v.tp);
 text+=",\"beforePrice\":";
 text+=ST_Double(v.beforePrice);
 text+=",\"beforeSL\":";
 text+=ST_Double(v.beforeSL);
 text+=",\"beforeTP\":";
 text+=ST_Double(v.beforeTP);
 text+=",\"beforeLots\":";
 text+=ST_Double(v.beforeLots);
 text+=",\"slippage\":";
 text+=IntegerToString(v.slippage);
 text+=",\"serverTime\":";
 text+=ST_Long(v.serverTime);
 text+=",\"attemptedAt\":";
 text+=ST_Unsigned(v.attemptedAt);
 text+=",\"error\":";
 text+=IntegerToString(v.error);
 text+=",\"resultTicket\":";
 text+=IntegerToString(v.resultTicket);
 text+=",\"essential\":";
 text+=ST_Boolean(v.essential);
 text+=",\"sent\":";
 text+=ST_Boolean(v.sent);
 text+=",\"obsolete\":";
 text+=ST_Boolean(v.obsolete);
 text+=",\"changedSL\":";
 text+=ST_Boolean(v.changedSL);
 text+=",\"changedTP\":";
 text+=ST_Boolean(v.changedTP);
 text+=",\"effectsApplied\":";
 text+=ST_Boolean(v.effectsApplied);
 text+=",\"cleanupSettled\":";
 text+=ST_Boolean(v.cleanupSettled);
 return text+"}";
}
bool ST_Read_OperationIntent(int object,OperationIntent &v) {
 if(object<0 || ST_nodes[object].type!=ST_OBJECT || ST_Count(object)!=31) return false;
 int node=-1,child=-1,count=0;
 node=ST_Member(object,"id");
 if(!ST_GetLong(node,v.id)) return false;
 node=ST_Member(object,"kind");
 if(!ST_GetInt(node,v.kind)) return false;
 node=ST_Member(object,"status");
 if(!ST_GetInt(node,v.status)) return false;
 node=ST_Member(object,"side");
 if(!ST_GetInt(node,v.side)) return false;
 node=ST_Member(object,"cycle");
 if(!ST_GetLong(node,v.cycle)) return false;
 node=ST_Member(object,"occurrence");
 if(!ST_GetLong(node,v.occurrence)) return false;
 node=ST_Member(object,"stage");
 if(!ST_GetInt(node,v.stage)) return false;
 node=ST_Member(object,"ticket");
 if(!ST_GetInt(node,v.ticket)) return false;
 node=ST_Member(object,"orderType");
 if(!ST_GetInt(node,v.orderType)) return false;
 node=ST_Member(object,"symbol");
 if(!ST_GetString(node,v.symbol)) return false;
 node=ST_Member(object,"magic");
 if(!ST_GetInt(node,v.magic)) return false;
 node=ST_Member(object,"lots");
 if(!ST_GetDouble(node,v.lots)) return false;
 node=ST_Member(object,"price");
 if(!ST_GetDouble(node,v.price)) return false;
 node=ST_Member(object,"sl");
 if(!ST_GetDouble(node,v.sl)) return false;
 node=ST_Member(object,"tp");
 if(!ST_GetDouble(node,v.tp)) return false;
 node=ST_Member(object,"beforePrice");
 if(!ST_GetDouble(node,v.beforePrice)) return false;
 node=ST_Member(object,"beforeSL");
 if(!ST_GetDouble(node,v.beforeSL)) return false;
 node=ST_Member(object,"beforeTP");
 if(!ST_GetDouble(node,v.beforeTP)) return false;
 node=ST_Member(object,"beforeLots");
 if(!ST_GetDouble(node,v.beforeLots)) return false;
 node=ST_Member(object,"slippage");
 if(!ST_GetInt(node,v.slippage)) return false;
 node=ST_Member(object,"serverTime");
 if(!ST_GetDate(node,v.serverTime)) return false;
 node=ST_Member(object,"attemptedAt");
 if(!ST_GetUnsigned(node,v.attemptedAt)) return false;
 node=ST_Member(object,"error");
 if(!ST_GetInt(node,v.error)) return false;
 node=ST_Member(object,"resultTicket");
 if(!ST_GetInt(node,v.resultTicket)) return false;
 node=ST_Member(object,"essential");
 if(!ST_GetBool(node,v.essential)) return false;
 node=ST_Member(object,"sent");
 if(!ST_GetBool(node,v.sent)) return false;
 node=ST_Member(object,"obsolete");
 if(!ST_GetBool(node,v.obsolete)) return false;
 node=ST_Member(object,"changedSL");
 if(!ST_GetBool(node,v.changedSL)) return false;
 node=ST_Member(object,"changedTP");
 if(!ST_GetBool(node,v.changedTP)) return false;
 node=ST_Member(object,"effectsApplied");
 if(!ST_GetBool(node,v.effectsApplied)) return false;
 node=ST_Member(object,"cleanupSettled");
 if(!ST_GetBool(node,v.cleanupSettled)) return false;
 return true;
}
string ST_Write_CycleArchive(CycleArchive &v) {
 string text="{";
 text+="\"id\":";
 text+=ST_Long(v.id);
 text+=",\"net\":";
 text+=ST_Double(v.net);
 text+=",\"resultKind\":";
 text+=IntegerToString(v.resultKind);
 text+=",\"ended\":";
 text+=ST_Long(v.ended);
 return text+"}";
}
bool ST_Read_CycleArchive(int object,CycleArchive &v) {
 if(object<0 || ST_nodes[object].type!=ST_OBJECT || ST_Count(object)!=4) return false;
 int node=-1,child=-1,count=0;
 node=ST_Member(object,"id");
 if(!ST_GetLong(node,v.id)) return false;
 node=ST_Member(object,"net");
 if(!ST_GetDouble(node,v.net)) return false;
 node=ST_Member(object,"resultKind");
 if(!ST_GetInt(node,v.resultKind)) return false;
 node=ST_Member(object,"ended");
 if(!ST_GetDate(node,v.ended)) return false;
 return true;
}
string ST_Write_ProblemEntry(ProblemEntry &v) {
 string text="{";
 text+="\"key\":";
 text+=ST_Escape(v.key);
 text+=",\"side\":";
 text+=ST_Escape(v.side);
 text+=",\"action\":";
 text+=ST_Escape(v.action);
 text+=",\"reason\":";
 text+=ST_Escape(v.reason);
 text+=",\"detail\":";
 text+=ST_Escape(v.detail);
 text+=",\"sequence\":";
 text+=ST_Long(v.sequence);
 text+=",\"active\":";
 text+=ST_Boolean(v.active);
 return text+"}";
}
bool ST_Read_ProblemEntry(int object,ProblemEntry &v) {
 if(object<0 || ST_nodes[object].type!=ST_OBJECT || ST_Count(object)!=7) return false;
 int node=-1,child=-1,count=0;
 node=ST_Member(object,"key");
 if(!ST_GetString(node,v.key)) return false;
 node=ST_Member(object,"side");
 if(!ST_GetString(node,v.side)) return false;
 node=ST_Member(object,"action");
 if(!ST_GetString(node,v.action)) return false;
 node=ST_Member(object,"reason");
 if(!ST_GetString(node,v.reason)) return false;
 node=ST_Member(object,"detail");
 if(!ST_GetString(node,v.detail)) return false;
 node=ST_Member(object,"sequence");
 if(!ST_GetLong(node,v.sequence)) return false;
 node=ST_Member(object,"active");
 if(!ST_GetBool(node,v.active)) return false;
 return true;
}
string ST_Write_QuoteState(QuoteState &v) {
 string text="{";
 text+="\"bid\":";
 text+=ST_Double(v.bid);
 text+=",\"ask\":";
 text+=ST_Double(v.ask);
 text+=",\"serverTime\":";
 text+=ST_Long(v.serverTime);
 text+=",\"receivedAt\":";
 text+=ST_Unsigned(v.receivedAt);
 text+=",\"valid\":";
 text+=ST_Boolean(v.valid);
 return text+"}";
}
bool ST_Read_QuoteState(int object,QuoteState &v) {
 if(object<0 || ST_nodes[object].type!=ST_OBJECT || ST_Count(object)!=5) return false;
 int node=-1,child=-1,count=0;
 node=ST_Member(object,"bid");
 if(!ST_GetDouble(node,v.bid)) return false;
 node=ST_Member(object,"ask");
 if(!ST_GetDouble(node,v.ask)) return false;
 node=ST_Member(object,"serverTime");
 if(!ST_GetDate(node,v.serverTime)) return false;
 node=ST_Member(object,"receivedAt");
 if(!ST_GetUnsigned(node,v.receivedAt)) return false;
 node=ST_Member(object,"valid");
 if(!ST_GetBool(node,v.valid)) return false;
 return true;
}
string ST_Write_SymbolRules(SymbolRules &v) {
 string text="{";
 text+="\"point\":";
 text+=ST_Double(v.point);
 text+=",\"tick\":";
 text+=ST_Double(v.tick);
 text+=",\"digits\":";
 text+=IntegerToString(v.digits);
 text+=",\"minLot\":";
 text+=ST_Double(v.minLot);
 text+=",\"maxLot\":";
 text+=ST_Double(v.maxLot);
 text+=",\"lotStep\":";
 text+=ST_Double(v.lotStep);
 text+=",\"stopDistance\":";
 text+=ST_Double(v.stopDistance);
 text+=",\"freezeDistance\":";
 text+=ST_Double(v.freezeDistance);
 text+=",\"valid\":";
 text+=ST_Boolean(v.valid);
 return text+"}";
}
bool ST_Read_SymbolRules(int object,SymbolRules &v) {
 if(object<0 || ST_nodes[object].type!=ST_OBJECT || ST_Count(object)!=9) return false;
 int node=-1,child=-1,count=0;
 node=ST_Member(object,"point");
 if(!ST_GetDouble(node,v.point)) return false;
 node=ST_Member(object,"tick");
 if(!ST_GetDouble(node,v.tick)) return false;
 node=ST_Member(object,"digits");
 if(!ST_GetInt(node,v.digits)) return false;
 node=ST_Member(object,"minLot");
 if(!ST_GetDouble(node,v.minLot)) return false;
 node=ST_Member(object,"maxLot");
 if(!ST_GetDouble(node,v.maxLot)) return false;
 node=ST_Member(object,"lotStep");
 if(!ST_GetDouble(node,v.lotStep)) return false;
 node=ST_Member(object,"stopDistance");
 if(!ST_GetDouble(node,v.stopDistance)) return false;
 node=ST_Member(object,"freezeDistance");
 if(!ST_GetDouble(node,v.freezeDistance)) return false;
 node=ST_Member(object,"valid");
 if(!ST_GetBool(node,v.valid)) return false;
 return true;
}
struct ST_Snapshot {
 Configuration g_active;
 Configuration g_next;
 SideState g_side[2];
 OrderSnapshot g_orders[];
 OrderLink g_links[];
 LedgerRecord g_ledger[];
 OperationIntent g_intents[];
 CycleArchive g_archives[];
 ProblemEntry g_problems[];
 QuoteState g_quote;
 SymbolRules g_rules;
 int g_state;
 int g_savedState;
 int g_timer;
 int g_exitReason;
 int g_resultKind;
 long g_cycle;
 long g_cycleSerial;
 long g_intentSerial;
 long g_observationSerial;
 long g_problemSerial;
 long g_saveSequence;
 bool g_haveActive;
 bool g_exitLatched;
 bool g_restartCancelled;
 bool g_autoRestart;
 bool g_expiryBlock;
 bool g_symbolChanged;
 bool g_autoPending;
 bool g_storeHealthy;
 bool g_dirty;
 bool g_owned;
 bool g_identityKnown;
 bool g_accountBlocked;
 bool g_processing;
 bool g_apiInFlight;
 bool g_absent;
 bool g_recoveryReady;
 bool g_graceActive;
 bool g_reinstallMagicChange;
 bool g_historyReady;
 long g_activeApiIntent;
 string g_managedSymbol;
 string g_installServer;
 string g_installID;
 int g_installAccount;
 long g_installToken;
 long g_ownerToken;
 string g_blockReason;
 string g_lifecycleReason;
 int g_previousDeinit;
 ulong g_now;
 ulong g_lastCounter;
 ulong g_logicalElapsed;
 uint g_rawCounter;
 datetime g_lastUtc;
 datetime g_savedUtc;
 datetime g_lastActivityServer;
 long g_duration;
 long g_timerRemainingSaved;
 ulong g_timerDeadline;
 ulong g_graceDeadline;
 ulong g_saveRetryAt;
 int g_savedTimer;
 long g_savedRemaining;
 double g_profitTarget;
 double g_lossLimit;
 double g_net;
 double g_lastResult;
 double g_startBid;
 double g_startAsk;
 int g_initialProgress;
 bool g_netAvailable;
 int g_panelX;
 int g_panelY;
 bool g_collapsed;
 bool g_dragging;
 int g_dragX;
 int g_dragY;
 string g_draftBuy;
 string g_draftSell;
 string g_draftProfit;
 string g_draftLoss;
 string g_draftHours;
 string g_draftMinutes;
 string g_draftSeconds;
 bool g_draftBuyDirty;
 bool g_draftSellDirty;
 bool g_draftFinancialDirty;
 bool g_draftTimeDirty;
 bool g_confirmReset;
 int g_commands[];
 int g_commandSides[];
 long g_commandSerials[];
 long g_commandSerial;
};
string ST_Payload() {
 string text="{";
 text+="\"g_active\":";
 text+=ST_Write_Configuration(g_active);
 text+=",\"g_next\":";
 text+=ST_Write_Configuration(g_next);
 text+=",\"g_side\":";
 text+="[";
 for(int i=0;i<2;i++) { if(i>0) text+=","; text+=ST_Write_SideState(g_side[i]); }
 text+="]";
 text+=",\"g_orders\":";
 text+="[";
 for(int i=0;i<ArraySize(g_orders);i++) { if(i>0) text+=","; text+=ST_Write_OrderSnapshot(g_orders[i]); }
 text+="]";
 text+=",\"g_links\":";
 text+="[";
 for(int i=0;i<ArraySize(g_links);i++) { if(i>0) text+=","; text+=ST_Write_OrderLink(g_links[i]); }
 text+="]";
 text+=",\"g_ledger\":";
 text+="[";
 for(int i=0;i<ArraySize(g_ledger);i++) { if(i>0) text+=","; text+=ST_Write_LedgerRecord(g_ledger[i]); }
 text+="]";
 text+=",\"g_intents\":";
 text+="[";
 for(int i=0;i<ArraySize(g_intents);i++) { if(i>0) text+=","; text+=ST_Write_OperationIntent(g_intents[i]); }
 text+="]";
 text+=",\"g_archives\":";
 text+="[";
 for(int i=0;i<ArraySize(g_archives);i++) { if(i>0) text+=","; text+=ST_Write_CycleArchive(g_archives[i]); }
 text+="]";
 text+=",\"g_problems\":";
 text+="[";
 for(int i=0;i<ArraySize(g_problems);i++) { if(i>0) text+=","; text+=ST_Write_ProblemEntry(g_problems[i]); }
 text+="]";
 text+=",\"g_quote\":";
 text+=ST_Write_QuoteState(g_quote);
 text+=",\"g_rules\":";
 text+=ST_Write_SymbolRules(g_rules);
 text+=",\"g_state\":";
 text+=IntegerToString(g_state);
 text+=",\"g_savedState\":";
 text+=IntegerToString(g_savedState);
 text+=",\"g_timer\":";
 text+=IntegerToString(g_timer);
 text+=",\"g_exitReason\":";
 text+=IntegerToString(g_exitReason);
 text+=",\"g_resultKind\":";
 text+=IntegerToString(g_resultKind);
 text+=",\"g_cycle\":";
 text+=ST_Long(g_cycle);
 text+=",\"g_cycleSerial\":";
 text+=ST_Long(g_cycleSerial);
 text+=",\"g_intentSerial\":";
 text+=ST_Long(g_intentSerial);
 text+=",\"g_observationSerial\":";
 text+=ST_Long(g_observationSerial);
 text+=",\"g_problemSerial\":";
 text+=ST_Long(g_problemSerial);
 text+=",\"g_saveSequence\":";
 text+=ST_Long(g_saveSequence);
 text+=",\"g_haveActive\":";
 text+=ST_Boolean(g_haveActive);
 text+=",\"g_exitLatched\":";
 text+=ST_Boolean(g_exitLatched);
 text+=",\"g_restartCancelled\":";
 text+=ST_Boolean(g_restartCancelled);
 text+=",\"g_autoRestart\":";
 text+=ST_Boolean(g_autoRestart);
 text+=",\"g_expiryBlock\":";
 text+=ST_Boolean(g_expiryBlock);
 text+=",\"g_symbolChanged\":";
 text+=ST_Boolean(g_symbolChanged);
 text+=",\"g_autoPending\":";
 text+=ST_Boolean(g_autoPending);
 text+=",\"g_storeHealthy\":";
 text+=ST_Boolean(g_storeHealthy);
 text+=",\"g_dirty\":";
 text+=ST_Boolean(g_dirty);
 text+=",\"g_owned\":";
 text+=ST_Boolean(g_owned);
 text+=",\"g_identityKnown\":";
 text+=ST_Boolean(g_identityKnown);
 text+=",\"g_accountBlocked\":";
 text+=ST_Boolean(g_accountBlocked);
 text+=",\"g_processing\":";
 text+=ST_Boolean(g_processing);
 text+=",\"g_apiInFlight\":";
 text+=ST_Boolean(g_apiInFlight);
 text+=",\"g_absent\":";
 text+=ST_Boolean(g_absent);
 text+=",\"g_recoveryReady\":";
 text+=ST_Boolean(g_recoveryReady);
 text+=",\"g_graceActive\":";
 text+=ST_Boolean(g_graceActive);
 text+=",\"g_reinstallMagicChange\":";
 text+=ST_Boolean(g_reinstallMagicChange);
 text+=",\"g_historyReady\":";
 text+=ST_Boolean(g_historyReady);
 text+=",\"g_activeApiIntent\":";
 text+=ST_Long(g_activeApiIntent);
 text+=",\"g_managedSymbol\":";
 text+=ST_Escape(g_managedSymbol);
 text+=",\"g_installServer\":";
 text+=ST_Escape(g_installServer);
 text+=",\"g_installID\":";
 text+=ST_Escape(g_installID);
 text+=",\"g_installAccount\":";
 text+=IntegerToString(g_installAccount);
 text+=",\"g_installToken\":";
 text+=ST_Long(g_installToken);
 text+=",\"g_ownerToken\":";
 text+=ST_Long(g_ownerToken);
 text+=",\"g_blockReason\":";
 text+=ST_Escape(g_blockReason);
 text+=",\"g_lifecycleReason\":";
 text+=ST_Escape(g_lifecycleReason);
 text+=",\"g_previousDeinit\":";
 text+=IntegerToString(g_previousDeinit);
 text+=",\"g_now\":";
 text+=ST_Unsigned(g_now);
 text+=",\"g_lastCounter\":";
 text+=ST_Unsigned(g_lastCounter);
 text+=",\"g_logicalElapsed\":";
 text+=ST_Unsigned(g_logicalElapsed);
 text+=",\"g_rawCounter\":";
 text+=ST_Unsigned(g_rawCounter);
 text+=",\"g_lastUtc\":";
 text+=ST_Long(g_lastUtc);
 text+=",\"g_savedUtc\":";
 text+=ST_Long(g_savedUtc);
 text+=",\"g_lastActivityServer\":";
 text+=ST_Long(g_lastActivityServer);
 text+=",\"g_duration\":";
 text+=ST_Long(g_duration);
 text+=",\"g_timerRemainingSaved\":";
 text+=ST_Long(g_timerRemainingSaved);
 text+=",\"g_timerDeadline\":";
 text+=ST_Unsigned(g_timerDeadline);
 text+=",\"g_graceDeadline\":";
 text+=ST_Unsigned(g_graceDeadline);
 text+=",\"g_saveRetryAt\":";
 text+=ST_Unsigned(g_saveRetryAt);
 text+=",\"g_savedTimer\":";
 text+=IntegerToString(g_savedTimer);
 text+=",\"g_savedRemaining\":";
 text+=ST_Long(g_savedRemaining);
 text+=",\"g_profitTarget\":";
 text+=ST_Double(g_profitTarget);
 text+=",\"g_lossLimit\":";
 text+=ST_Double(g_lossLimit);
 text+=",\"g_net\":";
 text+=ST_Double(g_net);
 text+=",\"g_lastResult\":";
 text+=ST_Double(g_lastResult);
 text+=",\"g_startBid\":";
 text+=ST_Double(g_startBid);
 text+=",\"g_startAsk\":";
 text+=ST_Double(g_startAsk);
 text+=",\"g_initialProgress\":";
 text+=IntegerToString(g_initialProgress);
 text+=",\"g_netAvailable\":";
 text+=ST_Boolean(g_netAvailable);
 text+=",\"g_panelX\":";
 text+=IntegerToString(g_panelX);
 text+=",\"g_panelY\":";
 text+=IntegerToString(g_panelY);
 text+=",\"g_collapsed\":";
 text+=ST_Boolean(g_collapsed);
 text+=",\"g_dragging\":";
 text+=ST_Boolean(g_dragging);
 text+=",\"g_dragX\":";
 text+=IntegerToString(g_dragX);
 text+=",\"g_dragY\":";
 text+=IntegerToString(g_dragY);
 text+=",\"g_draftBuy\":";
 text+=ST_Escape(g_draftBuy);
 text+=",\"g_draftSell\":";
 text+=ST_Escape(g_draftSell);
 text+=",\"g_draftProfit\":";
 text+=ST_Escape(g_draftProfit);
 text+=",\"g_draftLoss\":";
 text+=ST_Escape(g_draftLoss);
 text+=",\"g_draftHours\":";
 text+=ST_Escape(g_draftHours);
 text+=",\"g_draftMinutes\":";
 text+=ST_Escape(g_draftMinutes);
 text+=",\"g_draftSeconds\":";
 text+=ST_Escape(g_draftSeconds);
 text+=",\"g_draftBuyDirty\":";
 text+=ST_Boolean(g_draftBuyDirty);
 text+=",\"g_draftSellDirty\":";
 text+=ST_Boolean(g_draftSellDirty);
 text+=",\"g_draftFinancialDirty\":";
 text+=ST_Boolean(g_draftFinancialDirty);
 text+=",\"g_draftTimeDirty\":";
 text+=ST_Boolean(g_draftTimeDirty);
 text+=",\"g_confirmReset\":";
 text+=ST_Boolean(g_confirmReset);
 text+=",\"g_commands\":";
 text+="[";
 for(int i=0;i<ArraySize(g_commands);i++) { if(i>0) text+=","; text+=IntegerToString(g_commands[i]); }
 text+="]";
 text+=",\"g_commandSides\":";
 text+="[";
 for(int i=0;i<ArraySize(g_commandSides);i++) { if(i>0) text+=","; text+=IntegerToString(g_commandSides[i]); }
 text+="]";
 text+=",\"g_commandSerials\":";
 text+="[";
 for(int i=0;i<ArraySize(g_commandSerials);i++) { if(i>0) text+=","; text+=ST_Long(g_commandSerials[i]); }
 text+="]";
 text+=",\"g_commandSerial\":";
 text+=ST_Long(g_commandSerial);
 return text+"}";
}
bool ST_ReadSnapshot(int object,ST_Snapshot &v) {
 if(object<0 || ST_nodes[object].type!=ST_OBJECT || ST_Count(object)!=95) return false;
 int node=-1,child=-1,count=0;
 node=ST_Member(object,"g_active");
 if(!ST_Read_Configuration(node,v.g_active)) return false;
 node=ST_Member(object,"g_next");
 if(!ST_Read_Configuration(node,v.g_next)) return false;
 node=ST_Member(object,"g_side");
 if(node<0 || ST_nodes[node].type!=ST_ARRAY) return false;
 if(ST_Count(node)!=2) return false;
 child=ST_nodes[node].first;
 for(int i=0;i<2;i++) {
  if(!ST_Read_SideState(child,v.g_side[i])) return false;
  child=ST_nodes[child].next;
 }
 node=ST_Member(object,"g_orders");
 if(node<0 || ST_nodes[node].type!=ST_ARRAY) return false;
 count=ST_Count(node); if(count<0 || count>ST_MAX_RECORDS) return false;
 if(ArrayResize(v.g_orders,count)!=count) return false;
 child=ST_nodes[node].first;
 for(int i=0;i<count;i++) {
  if(!ST_Read_OrderSnapshot(child,v.g_orders[i])) return false;
  child=ST_nodes[child].next;
 }
 node=ST_Member(object,"g_links");
 if(node<0 || ST_nodes[node].type!=ST_ARRAY) return false;
 count=ST_Count(node); if(count<0 || count>ST_MAX_RECORDS) return false;
 if(ArrayResize(v.g_links,count)!=count) return false;
 child=ST_nodes[node].first;
 for(int i=0;i<count;i++) {
  if(!ST_Read_OrderLink(child,v.g_links[i])) return false;
  child=ST_nodes[child].next;
 }
 node=ST_Member(object,"g_ledger");
 if(node<0 || ST_nodes[node].type!=ST_ARRAY) return false;
 count=ST_Count(node); if(count<0 || count>ST_MAX_RECORDS) return false;
 if(ArrayResize(v.g_ledger,count)!=count) return false;
 child=ST_nodes[node].first;
 for(int i=0;i<count;i++) {
  if(!ST_Read_LedgerRecord(child,v.g_ledger[i])) return false;
  child=ST_nodes[child].next;
 }
 node=ST_Member(object,"g_intents");
 if(node<0 || ST_nodes[node].type!=ST_ARRAY) return false;
 count=ST_Count(node); if(count<0 || count>ST_MAX_RECORDS) return false;
 if(ArrayResize(v.g_intents,count)!=count) return false;
 child=ST_nodes[node].first;
 for(int i=0;i<count;i++) {
  if(!ST_Read_OperationIntent(child,v.g_intents[i])) return false;
  child=ST_nodes[child].next;
 }
 node=ST_Member(object,"g_archives");
 if(node<0 || ST_nodes[node].type!=ST_ARRAY) return false;
 count=ST_Count(node); if(count<0 || count>ST_MAX_RECORDS) return false;
 if(ArrayResize(v.g_archives,count)!=count) return false;
 child=ST_nodes[node].first;
 for(int i=0;i<count;i++) {
  if(!ST_Read_CycleArchive(child,v.g_archives[i])) return false;
  child=ST_nodes[child].next;
 }
 node=ST_Member(object,"g_problems");
 if(node<0 || ST_nodes[node].type!=ST_ARRAY) return false;
 count=ST_Count(node); if(count<0 || count>ST_MAX_RECORDS) return false;
 if(ArrayResize(v.g_problems,count)!=count) return false;
 child=ST_nodes[node].first;
 for(int i=0;i<count;i++) {
  if(!ST_Read_ProblemEntry(child,v.g_problems[i])) return false;
  child=ST_nodes[child].next;
 }
 node=ST_Member(object,"g_quote");
 if(!ST_Read_QuoteState(node,v.g_quote)) return false;
 node=ST_Member(object,"g_rules");
 if(!ST_Read_SymbolRules(node,v.g_rules)) return false;
 node=ST_Member(object,"g_state");
 if(!ST_GetInt(node,v.g_state)) return false;
 node=ST_Member(object,"g_savedState");
 if(!ST_GetInt(node,v.g_savedState)) return false;
 node=ST_Member(object,"g_timer");
 if(!ST_GetInt(node,v.g_timer)) return false;
 node=ST_Member(object,"g_exitReason");
 if(!ST_GetInt(node,v.g_exitReason)) return false;
 node=ST_Member(object,"g_resultKind");
 if(!ST_GetInt(node,v.g_resultKind)) return false;
 node=ST_Member(object,"g_cycle");
 if(!ST_GetLong(node,v.g_cycle)) return false;
 node=ST_Member(object,"g_cycleSerial");
 if(!ST_GetLong(node,v.g_cycleSerial)) return false;
 node=ST_Member(object,"g_intentSerial");
 if(!ST_GetLong(node,v.g_intentSerial)) return false;
 node=ST_Member(object,"g_observationSerial");
 if(!ST_GetLong(node,v.g_observationSerial)) return false;
 node=ST_Member(object,"g_problemSerial");
 if(!ST_GetLong(node,v.g_problemSerial)) return false;
 node=ST_Member(object,"g_saveSequence");
 if(!ST_GetLong(node,v.g_saveSequence)) return false;
 node=ST_Member(object,"g_haveActive");
 if(!ST_GetBool(node,v.g_haveActive)) return false;
 node=ST_Member(object,"g_exitLatched");
 if(!ST_GetBool(node,v.g_exitLatched)) return false;
 node=ST_Member(object,"g_restartCancelled");
 if(!ST_GetBool(node,v.g_restartCancelled)) return false;
 node=ST_Member(object,"g_autoRestart");
 if(!ST_GetBool(node,v.g_autoRestart)) return false;
 node=ST_Member(object,"g_expiryBlock");
 if(!ST_GetBool(node,v.g_expiryBlock)) return false;
 node=ST_Member(object,"g_symbolChanged");
 if(!ST_GetBool(node,v.g_symbolChanged)) return false;
 node=ST_Member(object,"g_autoPending");
 if(!ST_GetBool(node,v.g_autoPending)) return false;
 node=ST_Member(object,"g_storeHealthy");
 if(!ST_GetBool(node,v.g_storeHealthy)) return false;
 node=ST_Member(object,"g_dirty");
 if(!ST_GetBool(node,v.g_dirty)) return false;
 node=ST_Member(object,"g_owned");
 if(!ST_GetBool(node,v.g_owned)) return false;
 node=ST_Member(object,"g_identityKnown");
 if(!ST_GetBool(node,v.g_identityKnown)) return false;
 node=ST_Member(object,"g_accountBlocked");
 if(!ST_GetBool(node,v.g_accountBlocked)) return false;
 node=ST_Member(object,"g_processing");
 if(!ST_GetBool(node,v.g_processing)) return false;
 node=ST_Member(object,"g_apiInFlight");
 if(!ST_GetBool(node,v.g_apiInFlight)) return false;
 node=ST_Member(object,"g_absent");
 if(!ST_GetBool(node,v.g_absent)) return false;
 node=ST_Member(object,"g_recoveryReady");
 if(!ST_GetBool(node,v.g_recoveryReady)) return false;
 node=ST_Member(object,"g_graceActive");
 if(!ST_GetBool(node,v.g_graceActive)) return false;
 node=ST_Member(object,"g_reinstallMagicChange");
 if(!ST_GetBool(node,v.g_reinstallMagicChange)) return false;
 node=ST_Member(object,"g_historyReady");
 if(!ST_GetBool(node,v.g_historyReady)) return false;
 node=ST_Member(object,"g_activeApiIntent");
 if(!ST_GetLong(node,v.g_activeApiIntent)) return false;
 node=ST_Member(object,"g_managedSymbol");
 if(!ST_GetString(node,v.g_managedSymbol)) return false;
 node=ST_Member(object,"g_installServer");
 if(!ST_GetString(node,v.g_installServer)) return false;
 node=ST_Member(object,"g_installID");
 if(!ST_GetString(node,v.g_installID)) return false;
 node=ST_Member(object,"g_installAccount");
 if(!ST_GetInt(node,v.g_installAccount)) return false;
 node=ST_Member(object,"g_installToken");
 if(!ST_GetLong(node,v.g_installToken)) return false;
 node=ST_Member(object,"g_ownerToken");
 if(!ST_GetLong(node,v.g_ownerToken)) return false;
 node=ST_Member(object,"g_blockReason");
 if(!ST_GetString(node,v.g_blockReason)) return false;
 node=ST_Member(object,"g_lifecycleReason");
 if(!ST_GetString(node,v.g_lifecycleReason)) return false;
 node=ST_Member(object,"g_previousDeinit");
 if(!ST_GetInt(node,v.g_previousDeinit)) return false;
 node=ST_Member(object,"g_now");
 if(!ST_GetUnsigned(node,v.g_now)) return false;
 node=ST_Member(object,"g_lastCounter");
 if(!ST_GetUnsigned(node,v.g_lastCounter)) return false;
 node=ST_Member(object,"g_logicalElapsed");
 if(!ST_GetUnsigned(node,v.g_logicalElapsed)) return false;
 node=ST_Member(object,"g_rawCounter");
 { ulong u=0; if(!ST_GetUnsigned(node,u) || u>4294967295) return false; v.g_rawCounter=(uint)u; }
 node=ST_Member(object,"g_lastUtc");
 if(!ST_GetDate(node,v.g_lastUtc)) return false;
 node=ST_Member(object,"g_savedUtc");
 if(!ST_GetDate(node,v.g_savedUtc)) return false;
 node=ST_Member(object,"g_lastActivityServer");
 if(!ST_GetDate(node,v.g_lastActivityServer)) return false;
 node=ST_Member(object,"g_duration");
 if(!ST_GetLong(node,v.g_duration)) return false;
 node=ST_Member(object,"g_timerRemainingSaved");
 if(!ST_GetLong(node,v.g_timerRemainingSaved)) return false;
 node=ST_Member(object,"g_timerDeadline");
 if(!ST_GetUnsigned(node,v.g_timerDeadline)) return false;
 node=ST_Member(object,"g_graceDeadline");
 if(!ST_GetUnsigned(node,v.g_graceDeadline)) return false;
 node=ST_Member(object,"g_saveRetryAt");
 if(!ST_GetUnsigned(node,v.g_saveRetryAt)) return false;
 node=ST_Member(object,"g_savedTimer");
 if(!ST_GetInt(node,v.g_savedTimer)) return false;
 node=ST_Member(object,"g_savedRemaining");
 if(!ST_GetLong(node,v.g_savedRemaining)) return false;
 node=ST_Member(object,"g_profitTarget");
 if(!ST_GetDouble(node,v.g_profitTarget)) return false;
 node=ST_Member(object,"g_lossLimit");
 if(!ST_GetDouble(node,v.g_lossLimit)) return false;
 node=ST_Member(object,"g_net");
 if(!ST_GetDouble(node,v.g_net)) return false;
 node=ST_Member(object,"g_lastResult");
 if(!ST_GetDouble(node,v.g_lastResult)) return false;
 node=ST_Member(object,"g_startBid");
 if(!ST_GetDouble(node,v.g_startBid)) return false;
 node=ST_Member(object,"g_startAsk");
 if(!ST_GetDouble(node,v.g_startAsk)) return false;
 node=ST_Member(object,"g_initialProgress");
 if(!ST_GetInt(node,v.g_initialProgress)) return false;
 node=ST_Member(object,"g_netAvailable");
 if(!ST_GetBool(node,v.g_netAvailable)) return false;
 node=ST_Member(object,"g_panelX");
 if(!ST_GetInt(node,v.g_panelX)) return false;
 node=ST_Member(object,"g_panelY");
 if(!ST_GetInt(node,v.g_panelY)) return false;
 node=ST_Member(object,"g_collapsed");
 if(!ST_GetBool(node,v.g_collapsed)) return false;
 node=ST_Member(object,"g_dragging");
 if(!ST_GetBool(node,v.g_dragging)) return false;
 node=ST_Member(object,"g_dragX");
 if(!ST_GetInt(node,v.g_dragX)) return false;
 node=ST_Member(object,"g_dragY");
 if(!ST_GetInt(node,v.g_dragY)) return false;
 node=ST_Member(object,"g_draftBuy");
 if(!ST_GetString(node,v.g_draftBuy)) return false;
 node=ST_Member(object,"g_draftSell");
 if(!ST_GetString(node,v.g_draftSell)) return false;
 node=ST_Member(object,"g_draftProfit");
 if(!ST_GetString(node,v.g_draftProfit)) return false;
 node=ST_Member(object,"g_draftLoss");
 if(!ST_GetString(node,v.g_draftLoss)) return false;
 node=ST_Member(object,"g_draftHours");
 if(!ST_GetString(node,v.g_draftHours)) return false;
 node=ST_Member(object,"g_draftMinutes");
 if(!ST_GetString(node,v.g_draftMinutes)) return false;
 node=ST_Member(object,"g_draftSeconds");
 if(!ST_GetString(node,v.g_draftSeconds)) return false;
 node=ST_Member(object,"g_draftBuyDirty");
 if(!ST_GetBool(node,v.g_draftBuyDirty)) return false;
 node=ST_Member(object,"g_draftSellDirty");
 if(!ST_GetBool(node,v.g_draftSellDirty)) return false;
 node=ST_Member(object,"g_draftFinancialDirty");
 if(!ST_GetBool(node,v.g_draftFinancialDirty)) return false;
 node=ST_Member(object,"g_draftTimeDirty");
 if(!ST_GetBool(node,v.g_draftTimeDirty)) return false;
 node=ST_Member(object,"g_confirmReset");
 if(!ST_GetBool(node,v.g_confirmReset)) return false;
 node=ST_Member(object,"g_commands");
 if(node<0 || ST_nodes[node].type!=ST_ARRAY) return false;
 count=ST_Count(node); if(count<0 || count>ST_MAX_RECORDS) return false;
 if(ArrayResize(v.g_commands,count)!=count) return false;
 child=ST_nodes[node].first;
 for(int i=0;i<count;i++) {
  if(!ST_GetInt(child,v.g_commands[i])) return false;
  child=ST_nodes[child].next;
 }
 node=ST_Member(object,"g_commandSides");
 if(node<0 || ST_nodes[node].type!=ST_ARRAY) return false;
 count=ST_Count(node); if(count<0 || count>ST_MAX_RECORDS) return false;
 if(ArrayResize(v.g_commandSides,count)!=count) return false;
 child=ST_nodes[node].first;
 for(int i=0;i<count;i++) {
  if(!ST_GetInt(child,v.g_commandSides[i])) return false;
  child=ST_nodes[child].next;
 }
 node=ST_Member(object,"g_commandSerials");
 if(node<0 || ST_nodes[node].type!=ST_ARRAY) return false;
 count=ST_Count(node); if(count<0 || count>ST_MAX_RECORDS) return false;
 if(ArrayResize(v.g_commandSerials,count)!=count) return false;
 child=ST_nodes[node].first;
 for(int i=0;i<count;i++) {
  if(!ST_GetLong(child,v.g_commandSerials[i])) return false;
  child=ST_nodes[child].next;
 }
 node=ST_Member(object,"g_commandSerial");
 if(!ST_GetLong(node,v.g_commandSerial)) return false;
 return true;
}
bool ST_Commit(ST_Snapshot &v) {
 CopyConfiguration(g_active,v.g_active);
 CopyConfiguration(g_next,v.g_next);
 for(int i=0;i<2;i++) g_side[i]=v.g_side[i];
 if(ArrayResize(g_orders,ArraySize(v.g_orders))!=ArraySize(v.g_orders)) return false;
 for(int i=0;i<ArraySize(v.g_orders);i++) g_orders[i]=v.g_orders[i];
 if(ArrayResize(g_links,ArraySize(v.g_links))!=ArraySize(v.g_links)) return false;
 for(int i=0;i<ArraySize(v.g_links);i++) g_links[i]=v.g_links[i];
 if(ArrayResize(g_ledger,ArraySize(v.g_ledger))!=ArraySize(v.g_ledger)) return false;
 for(int i=0;i<ArraySize(v.g_ledger);i++) g_ledger[i]=v.g_ledger[i];
 if(ArrayResize(g_intents,ArraySize(v.g_intents))!=ArraySize(v.g_intents)) return false;
 for(int i=0;i<ArraySize(v.g_intents);i++) g_intents[i]=v.g_intents[i];
 if(ArrayResize(g_archives,ArraySize(v.g_archives))!=ArraySize(v.g_archives)) return false;
 for(int i=0;i<ArraySize(v.g_archives);i++) g_archives[i]=v.g_archives[i];
 if(ArrayResize(g_problems,ArraySize(v.g_problems))!=ArraySize(v.g_problems)) return false;
 for(int i=0;i<ArraySize(v.g_problems);i++) g_problems[i]=v.g_problems[i];
 g_quote=v.g_quote;
 g_rules=v.g_rules;
 g_state=v.g_state;
 g_savedState=v.g_savedState;
 g_timer=v.g_timer;
 g_exitReason=v.g_exitReason;
 g_resultKind=v.g_resultKind;
 g_cycle=v.g_cycle;
 g_cycleSerial=v.g_cycleSerial;
 g_intentSerial=v.g_intentSerial;
 g_observationSerial=v.g_observationSerial;
 g_problemSerial=v.g_problemSerial;
 g_saveSequence=v.g_saveSequence;
 g_haveActive=v.g_haveActive;
 g_exitLatched=v.g_exitLatched;
 g_restartCancelled=v.g_restartCancelled;
 g_autoRestart=v.g_autoRestart;
 g_expiryBlock=v.g_expiryBlock;
 g_symbolChanged=v.g_symbolChanged;
 g_autoPending=v.g_autoPending;
 g_storeHealthy=v.g_storeHealthy;
 g_dirty=v.g_dirty;
 g_identityKnown=v.g_identityKnown;
 g_absent=v.g_absent;
 g_recoveryReady=v.g_recoveryReady;
 g_graceActive=v.g_graceActive;
 g_reinstallMagicChange=v.g_reinstallMagicChange;
 g_historyReady=v.g_historyReady;
 g_managedSymbol=v.g_managedSymbol;
 g_blockReason=v.g_blockReason;
 g_now=v.g_now;
 g_logicalElapsed=v.g_logicalElapsed;
 g_savedUtc=v.g_savedUtc;
 g_lastActivityServer=v.g_lastActivityServer;
 g_duration=v.g_duration;
 g_timerRemainingSaved=v.g_timerRemainingSaved;
 g_timerDeadline=v.g_timerDeadline;
 g_graceDeadline=v.g_graceDeadline;
 g_saveRetryAt=v.g_saveRetryAt;
 g_savedTimer=v.g_savedTimer;
 g_savedRemaining=v.g_savedRemaining;
 g_profitTarget=v.g_profitTarget;
 g_lossLimit=v.g_lossLimit;
 g_net=v.g_net;
 g_lastResult=v.g_lastResult;
 g_startBid=v.g_startBid;
 g_startAsk=v.g_startAsk;
 g_initialProgress=v.g_initialProgress;
 g_netAvailable=v.g_netAvailable;
 g_panelX=v.g_panelX;
 g_panelY=v.g_panelY;
 g_collapsed=v.g_collapsed;
 g_draftBuy=v.g_draftBuy;
 g_draftSell=v.g_draftSell;
 g_draftProfit=v.g_draftProfit;
 g_draftLoss=v.g_draftLoss;
 g_draftHours=v.g_draftHours;
 g_draftMinutes=v.g_draftMinutes;
 g_draftSeconds=v.g_draftSeconds;
 g_draftBuyDirty=v.g_draftBuyDirty;
 g_draftSellDirty=v.g_draftSellDirty;
 g_draftFinancialDirty=v.g_draftFinancialDirty;
 g_draftTimeDirty=v.g_draftTimeDirty;
 if(ArrayResize(g_commands,ArraySize(v.g_commands))!=ArraySize(v.g_commands)) return false;
 for(int i=0;i<ArraySize(v.g_commands);i++) g_commands[i]=v.g_commands[i];
 if(ArrayResize(g_commandSides,ArraySize(v.g_commandSides))!=ArraySize(v.g_commandSides)) return false;
 for(int i=0;i<ArraySize(v.g_commandSides);i++) g_commandSides[i]=v.g_commandSides[i];
 if(ArrayResize(g_commandSerials,ArraySize(v.g_commandSerials))!=ArraySize(v.g_commandSerials)) return false;
 for(int i=0;i<ArraySize(v.g_commandSerials);i++) g_commandSerials[i]=v.g_commandSerials[i];
 g_commandSerial=v.g_commandSerial;
 g_processing=false; g_apiInFlight=false; g_activeApiIntent=0;
 g_dragging=false; g_confirmReset=false; g_quote.valid=false; g_rules.valid=false;
 for(int i=0;i<ArraySize(g_intents);i++) { if(g_intents[i].sent && g_intents[i].status==IS_PREPARED) g_intents[i].status=IS_UNKNOWN; }
 g_savedState=(v.g_state==GS_RECOVERING?v.g_savedState:v.g_state);
 g_savedTimer=v.g_timer; g_savedRemaining=v.g_timerRemainingSaved;
 g_state=GS_RECOVERING; g_recoveryReady=false; g_absent=true; g_dirty=false;
 return true;
}
bool ST_ConfigurationShape(Configuration &v,bool active) {
 if(!active) return true;
 if(!MathIsValidNumber(v.pip) || !MathIsValidNumber(v.buyThreshold) || !MathIsValidNumber(v.sellThreshold) || !MathIsValidNumber(v.buyStep) || !MathIsValidNumber(v.sellStep) || !MathIsValidNumber(v.closeSlippage)) return false;
 if(v.buyMagic<0 || v.sellMagic<0 || v.retrySeconds<0 || v.maxQuoteAge<0 || v.priority<0 || v.priority>1) return false;
 if(v.pip<0 || v.buyThreshold<0 || v.sellThreshold<0 || v.buyStep<0 || v.sellStep<0 || v.closeSlippage<-1.0) return false;
 for(int s=0;s<48;s++) {
  if(!MathIsValidNumber(v.buyDistance[s]) || !MathIsValidNumber(v.sellDistance[s]) || !MathIsValidNumber(v.buySL[s]) || !MathIsValidNumber(v.sellSL[s]) || !MathIsValidNumber(v.buyTP[s]) || !MathIsValidNumber(v.sellTP[s])) return false;
  if(v.buyDistance[s]<0 || v.sellDistance[s]<0 || v.buySL[s]<0 || v.sellSL[s]<0 || v.buyTP[s]<0 || v.sellTP[s]<0) return false;
  if(active && (v.buyDistance[s]<=0 || v.sellDistance[s]<=0)) return false;
 }
 if(active && (v.pip<=0 || v.buyMagic<=0 || v.sellMagic<=0 || v.buyMagic==v.sellMagic || v.retrySeconds<1 || v.maxQuoteAge<1 || v.closeSlippage<0 || v.buyThreshold<=0 || v.sellThreshold<=0 || v.buyStep<=0 || v.sellStep<=0)) return false;
 return true;
}
bool ST_UniqueKeys(long &keys[]) {
 int n=ArraySize(keys); if(n<2) return true;
 if(!ArraySort(keys,WHOLE_ARRAY,0,MODE_ASCEND)) return false;
 for(int i=1;i<n;i++) if(keys[i]==keys[i-1]) return false;
 return true;
}
bool ST_ValidateSnapshot(ST_Snapshot &v,long sequence,string server,int account,string id) {
 if(v.g_installServer!=server || v.g_installAccount!=account || v.g_installID!=id || v.g_saveSequence!=sequence) return false;
 if(v.g_state<GS_STANDBY || v.g_state>GS_BLOCKED || v.g_savedState<GS_STANDBY || v.g_savedState>GS_BLOCKED) return false;
 if(v.g_timer<TM_OFF || v.g_timer>TM_EXPIRED || v.g_savedTimer<TM_OFF || v.g_savedTimer>TM_EXPIRED) return false;
 if(v.g_exitReason<XR_NONE || v.g_exitReason>XR_NEW_MAGICS || v.g_resultKind<RK_CURRENT || v.g_resultKind>RK_UNAVAILABLE) return false;
 if(v.g_cycle<0 || v.g_cycleSerial<v.g_cycle || v.g_intentSerial<0 || v.g_observationSerial<0 || v.g_problemSerial<0 || v.g_commandSerial<0) return false;
 if(v.g_duration<1 || v.g_duration>=86400 || v.g_timerRemainingSaved<0 || v.g_timerRemainingSaved>86400 || v.g_savedRemaining<0 || v.g_savedRemaining>86400) return false;
 if(v.g_profitTarget<0 || v.g_lossLimit<0 || v.g_startBid<0 || v.g_startAsk<0 || v.g_initialProgress<0 || v.g_initialProgress>2) return false;
 if(v.g_installToken<0 || v.g_installToken>9007199254740991 || v.g_ownerToken<0 || v.g_ownerToken>9007199254740991) return false;
 if(v.g_haveActive && (v.g_managedSymbol=="" || v.g_cycle<=0)) return false;
 if(!ST_ConfigurationShape(v.g_active,v.g_haveActive)) return false;
 // NEXT may contain unappliable user Inputs. It must remain exactly representable,
 // including negatives, rather than making a recoverable ACTIVE snapshot unusable.
 for(int side=0;side<2;side++) {
  if(v.g_side[side].control<SC_PLAYING || v.g_side[side].control>SC_RESUMING || v.g_side[side].phase<OP_NONE || v.g_side[side].phase>OP_UNRESOLVED) return false;
  if(v.g_side[side].stage<0 || v.g_side[side].stage>48 || v.g_side[side].targetStage<0 || v.g_side[side].targetStage>48 || v.g_side[side].occurrence<0) return false;
  if(v.g_side[side].ticket<-1 || v.g_side[side].orderLot<0 || v.g_side[side].lastPending<0 || v.g_side[side].finalClose<0 || v.g_side[side].nextLot<0 || v.g_side[side].targetLot<0 || v.g_side[side].playGeneration<-1) return false;
  // -1 is the reserved wait before a Resuming NEXT has an intent identity.
  // It carries no successful Play effect and must not poison a valid save.
  if(v.g_side[side].playGeneration==-1 &&
     (v.g_side[side].control!=SC_RESUMING || v.g_side[side].phase!=OP_NEXT || !v.g_side[side].finalKnown)) return false;
  if(v.g_side[side].finalKnown && (v.g_side[side].finalClose<=0 || v.g_side[side].finalCloseTime<=0)) return false;
  if(v.g_side[side].nextLotApplied && v.g_side[side].nextLot<=0) return false;
  if(v.g_side[side].targetLotFrozen && v.g_side[side].targetLot<=0) return false;
 }
 long keys[];
 if(ArrayResize(keys,ArraySize(v.g_links))!=ArraySize(v.g_links)) return false;
 for(int i=0;i<ArraySize(v.g_links);i++) {
  keys[i]=(long)v.g_links[i].ticket;
  if(v.g_links[i].ticket<=0 || v.g_links[i].cycle<=0 || v.g_links[i].cycle>v.g_cycleSerial || v.g_links[i].occurrence<1 || v.g_links[i].side<0 || v.g_links[i].side>1 || v.g_links[i].stage<1 || v.g_links[i].stage>48) return false;
  if(v.g_links[i].symbol=="" || v.g_links[i].magic<=0 || v.g_links[i].parentTicket<0 || v.g_links[i].parentTicket==v.g_links[i].ticket || v.g_links[i].initialLot<=0 || v.g_links[i].observedLot<0 || v.g_links[i].entry<=0 || v.g_links[i].sequence<0) return false;
  int type=v.g_links[i].originType;
  if(type!=OP_BUY && type!=OP_SELL && type!=OP_BUYSTOP && type!=OP_SELLSTOP) return false;
  if((v.g_links[i].side==BUY_SIDE && type!=OP_BUY && type!=OP_BUYSTOP) || (v.g_links[i].side==SELL_SIDE && type!=OP_SELL && type!=OP_SELLSTOP)) return false;
 }
 if(!ST_UniqueKeys(keys)) return false;
 if(ArrayResize(keys,ArraySize(v.g_ledger))!=ArraySize(v.g_ledger)) return false;
 for(int i=0;i<ArraySize(v.g_ledger);i++) {
  keys[i]=(long)v.g_ledger[i].ticket;
  if(v.g_ledger[i].ticket<=0 || v.g_ledger[i].cycle<0 || v.g_ledger[i].cycle>v.g_cycleSerial || v.g_ledger[i].occurrence<0 || v.g_ledger[i].side<-1 || v.g_ledger[i].side>1 || v.g_ledger[i].stage<0 || v.g_ledger[i].stage>48 || v.g_ledger[i].type<OP_BUY || v.g_ledger[i].type>OP_SELLSTOP || v.g_ledger[i].lots<0 || v.g_ledger[i].price<0 || v.g_ledger[i].observationSequence<0) return false;
  if(v.g_ledger[i].counted && (v.g_ledger[i].cycle<=0 || v.g_ledger[i].occurrence<=0 || v.g_ledger[i].side<0 || v.g_ledger[i].stage<1)) return false;
 }
 if(!ST_UniqueKeys(keys)) return false;
 if(ArrayResize(keys,ArraySize(v.g_intents))!=ArraySize(v.g_intents)) return false;
 for(int i=0;i<ArraySize(v.g_intents);i++) {
  keys[i]=v.g_intents[i].id;
  if(v.g_intents[i].id<=0 || v.g_intents[i].id>v.g_intentSerial || v.g_intents[i].kind<IK_INITIAL || v.g_intents[i].kind>IK_CLOSE || v.g_intents[i].status<IS_PREPARED || v.g_intents[i].status>IS_CANCELLED || v.g_intents[i].side<0 || v.g_intents[i].side>1) return false;
  if(v.g_intents[i].cycle<0 || v.g_intents[i].cycle>v.g_cycleSerial || v.g_intents[i].occurrence<0 || v.g_intents[i].stage<0 || v.g_intents[i].stage>48 || v.g_intents[i].ticket<0 || v.g_intents[i].resultTicket<-1 || v.g_intents[i].orderType<OP_BUY || v.g_intents[i].orderType>OP_SELLSTOP || v.g_intents[i].symbol=="" || v.g_intents[i].magic<=0 || v.g_intents[i].lots<0 || v.g_intents[i].price<0 || v.g_intents[i].sl<0 || v.g_intents[i].tp<0 || v.g_intents[i].beforePrice<0 || v.g_intents[i].beforeSL<0 || v.g_intents[i].beforeTP<0 || v.g_intents[i].beforeLots<0 || v.g_intents[i].slippage<0) return false;
  // This proof is set only after actual complete cycle-zero cleanup. It is
  // independent of later cycle state and survives an exact late confirmation.
  if(v.g_intents[i].cleanupSettled &&
     (v.g_intents[i].cycle!=0 || !v.g_intents[i].essential || !v.g_intents[i].sent || !v.g_intents[i].obsolete ||
      (v.g_intents[i].kind!=IK_DELETE && v.g_intents[i].kind!=IK_CLOSE) ||
      (v.g_intents[i].status!=IS_UNKNOWN && v.g_intents[i].status!=IS_CONFIRMED && v.g_intents[i].status!=IS_CANCELLED))) return false;
 }
 if(!ST_UniqueKeys(keys)) return false;
 if(ArrayResize(keys,ArraySize(v.g_archives))!=ArraySize(v.g_archives)) return false;
 for(int i=0;i<ArraySize(v.g_archives);i++) {
  keys[i]=v.g_archives[i].id;
  if(v.g_archives[i].id<=0 || v.g_archives[i].id>v.g_cycleSerial || v.g_archives[i].resultKind<RK_CURRENT || v.g_archives[i].resultKind>RK_UNAVAILABLE) return false;
 }
 if(!ST_UniqueKeys(keys)) return false;
 for(int i=0;i<ArraySize(v.g_orders);i++) if(v.g_orders[i].ticket<=0 || v.g_orders[i].type<OP_BUY || v.g_orders[i].type>OP_SELLSTOP || v.g_orders[i].magic<=0 || v.g_orders[i].side<0 || v.g_orders[i].side>1 || v.g_orders[i].symbol=="" || v.g_orders[i].lots<=0 || v.g_orders[i].price<=0 || v.g_orders[i].sl<0 || v.g_orders[i].tp<0) return false;
 if(ArraySize(v.g_commands)!=ArraySize(v.g_commandSides) || ArraySize(v.g_commands)!=ArraySize(v.g_commandSerials)) return false;
 for(int i=0;i<ArraySize(v.g_commands);i++) if(v.g_commands[i]<CMD_RUN || v.g_commands[i]>CMD_CONFIRM_RESET || v.g_commandSides[i]<-1 || v.g_commandSides[i]>1 || v.g_commandSerials[i]<=0 || v.g_commandSerials[i]>v.g_commandSerial) return false;
 for(int i=0;i<ArraySize(v.g_problems);i++) if(v.g_problems[i].key=="" || v.g_problems[i].sequence<0 || v.g_problems[i].sequence>v.g_problemSerial) return false;
 return true;
}
string ST_Content(long sequence,string server,int account,string id,string data) {
 return "{\"schema\":"+IntegerToString(SCHEMA_VERSION)+",\"saveSeq\":"+ST_Long(sequence)+",\"identity\":["+ST_Escape(server)+","+IntegerToString(account)+","+ST_Escape(id)+"],\"data\":"+data+"}";
}
bool ST_Candidate(string contents,long &sequence,string &digest,bool commit=false) {
 sequence=0; digest="";
 if(!ST_Parse(contents) || ST_nodes[0].type!=ST_OBJECT || ST_Count(0)!=5) return false;
 int schema=0; if(!ST_GetInt(ST_Member(0,"schema"),schema) || schema!=SCHEMA_VERSION) return false;
 if(!ST_GetLong(ST_Member(0,"saveSeq"),sequence) || sequence<1) return false;
 int identity=ST_Member(0,"identity");
 if(identity<0 || ST_nodes[identity].type!=ST_ARRAY || ST_Count(identity)!=3) return false;
 int child=ST_nodes[identity].first; string server="",id=""; int account=0;
 if(!ST_GetString(child,server)) return false; child=ST_nodes[child].next;
 if(!ST_GetInt(child,account)) return false; child=ST_nodes[child].next;
 if(!ST_GetString(child,id) || server=="" || account<=0 || id=="") return false;
 if(server!=g_installServer || account!=g_installAccount || id!=g_installID) return false;
 if(!ST_GetString(ST_Member(0,"sha256"),digest) || StringLen(digest)!=64) return false;
 for(int i=0;i<64;i++) { ushort c=StringGetCharacter(digest,i); if(!((c>=48 && c<=57) || (c>=97 && c<=102))) return false; }
 int data=ST_Member(0,"data"); if(data<0 || ST_nodes[data].type!=ST_OBJECT) return false;
 string payload=StringSubstr(contents,ST_nodes[data].begin,ST_nodes[data].end-ST_nodes[data].begin);
 string expected=ST_SHA256(ST_Content(sequence,server,account,id,payload));
 if(expected=="" || expected!=digest) return false;
 ST_Snapshot candidate;
 if(!ST_ReadSnapshot(data,candidate) || !ST_ValidateSnapshot(candidate,sequence,server,account,id)) return false;
 if(commit && !ST_Commit(candidate)) return false;
 return true;
}
bool ST_HealthyFile(string name,string &contents,long &sequence,string &digest) {
 if(!ST_ReadFile(name,contents)) return false;
 return ST_Candidate(contents,sequence,digest,false);
}
bool ST_Path() {
 if(g_installServer=="" || g_installAccount<=0 || g_installID=="") return false;
 g_identityHash=IdentityDigest(g_installServer,g_installAccount,g_installID);
 if(StringLen(g_identityHash)!=64) return false;
 g_storageDir="EA48\\"+g_identityHash+"\\"; return true;
}
void ST_StorageFailure(string action,string detail) {
 g_storeHealthy=false; g_dirty=true; g_saveRetryAt=g_now+RetryDelay();
 Problem("storage","SYSTEM",action,"Saved state is unavailable",detail+"; error="+IntegerToString(GetLastError()));
}
bool ST_SelectCandidate(string &best,string &bestName,long &bestSequence,string &bestDigest,bool &anyFile) {
 best=""; bestName=""; bestSequence=0; bestDigest=""; anyFile=false;
 string files[3]; files[0]="state.json"; files[1]="backup.json"; files[2]="pending.json";
 long seenSequence[3]; string seenDigest[3]; int healthyCount=0;
 for(int i=0;i<3;i++) {
  string path=g_storageDir+files[i]; if(FileIsExist(path)) anyFile=true;
  string contents="",digest=""; long sequence=0;
  if(!ST_HealthyFile(path,contents,sequence,digest)) continue;
  for(int j=0;j<healthyCount;j++) if(sequence==seenSequence[j] && digest!=seenDigest[j]) { ST_parseError="Conflicting healthy snapshots share a save sequence"; return false; }
  seenSequence[healthyCount]=sequence; seenDigest[healthyCount]=digest; healthyCount++;
  if(sequence>bestSequence) { best=contents; bestName=files[i]; bestSequence=sequence; bestDigest=digest; }
 }
 return true;
}
bool ST_CopyVerified(string source,string destination,string expectedDigest,long expectedSequence) {
 if(!FileCopy(source,0,destination,FILE_REWRITE)) return false;
 string contents="",digest=""; long sequence=0;
 return ST_HealthyFile(destination,contents,sequence,digest) && sequence==expectedSequence && digest==expectedDigest;
}
bool ST_RepairPromotion() {
 string best="",name="",digest=""; long sequence=0; bool anyFile=false;
 if(!ST_SelectCandidate(best,name,sequence,digest,anyFile)) return false;
 if(sequence==0) return !anyFile;
 if(sequence>g_saveSequence) g_saveSequence=sequence;
 if(name=="state.json") return true;
 string current="",currentDigest=""; long currentSequence=0;
 if(name=="pending.json" && ST_HealthyFile(g_storageDir+"state.json",current,currentSequence,currentDigest)) {
  if(!ST_CopyVerified(g_storageDir+"state.json",g_storageDir+"backup.json",currentDigest,currentSequence)) return false;
 }
 return ST_CopyVerified(g_storageDir+name,g_storageDir+"state.json",digest,sequence);
}
string ST_PlainDouble(double value) {
 string text=ST_Double(value); int exponentAt=StringFind(text,"e"); if(exponentAt<0) exponentAt=StringFind(text,"E");
 if(exponentAt<0) return text;
 string mantissa=StringSubstr(text,0,exponentAt); int exponent=(int)StringToInteger(StringSubstr(text,exponentAt+1));
 string sign=""; if(StringLen(mantissa)>0 && StringGetCharacter(mantissa,0)==45) { sign="-"; mantissa=StringSubstr(mantissa,1); }
 int point=StringFind(mantissa,"."); if(point<0) point=StringLen(mantissa);
 string digits=mantissa; StringReplace(digits,".",""); int target=point+exponent;
 if(target<=0) { string result=sign+"0."; for(int i=0;i<-target;i++) result+="0"; return result+digits; }
 if(target>=StringLen(digits)) { string result=sign+digits; for(int i=StringLen(digits);i<target;i++) result+="0"; return result; }
 return sign+StringSubstr(digits,0,target)+"."+StringSubstr(digits,target);
}
void ST_ResetDraftsToApplied() {
 g_draftBuy=(g_side[BUY_SIDE].nextLotApplied?ST_PlainDouble(g_side[BUY_SIDE].nextLot):"");
 g_draftSell=(g_side[SELL_SIDE].nextLotApplied?ST_PlainDouble(g_side[SELL_SIDE].nextLot):"");
 g_draftProfit=ST_PlainDouble(g_profitTarget); g_draftLoss=ST_PlainDouble(g_lossLimit);
 g_draftHours=IntegerToString((int)(g_duration/3600)); g_draftMinutes=IntegerToString((int)((g_duration%3600)/60)); g_draftSeconds=IntegerToString((int)(g_duration%60));
 g_draftBuyDirty=false; g_draftSellDirty=false; g_draftFinancialDirty=false; g_draftTimeDirty=false;
}
bool LoadState() {
 if(ST_accountSessionMismatch || g_accountBlocked) return false;
 if(!ST_Path()) { g_identityKnown=false; g_state=GS_BLOCKED; g_blockReason="Installation identity is unavailable"; return false; }
 string best="",name="",digest=""; long sequence=0; bool anyFile=false;
 if(!ST_SelectCandidate(best,name,sequence,digest,anyFile) || (anyFile && sequence==0)) {
  g_identityKnown=false; g_state=GS_BLOCKED; g_blockReason="Previous managed scope cannot be identified from healthy saved state";
  ST_StorageFailure("Load",ST_parseError==""?"All saved-state candidates failed validation":ST_parseError); return false;
 }
 if(sequence==0) { g_storeHealthy=true; g_identityKnown=true; g_dirty=true; return false; }
 long loaded=0; string loadedDigest="";
 if(!ST_Candidate(best,loaded,loadedDigest,true)) {
  g_identityKnown=false; g_state=GS_BLOCKED; g_blockReason="Saved state could not be hydrated";
  ST_StorageFailure("Load","State hydration failed; no broker state was guessed"); return false;
 }
 g_saveSequence=sequence; g_identityKnown=true; g_storeHealthy=true;
 // Restore only the serialized lifecycle reason when no current reinit proof exists.
 if(!ST_sameInstallation) {
  int previous=-1; string lifecycle=""; int data=ST_Member(0,"data");
  ST_GetInt(ST_Member(data,"g_previousDeinit"),previous); ST_GetString(ST_Member(data,"g_lifecycleReason"),lifecycle);
  g_previousDeinit=previous; g_lifecycleReason=lifecycle;
  if(previous==REASON_CHARTCHANGE || previous==REASON_PARAMETERS) {
   g_previousDeinit=-1; g_lifecycleReason="Fresh attachment; saved reinit reason "+IntegerToString(previous)+" has no terminal-session proof";
  }
 }
 if(!ST_retainDrafts) ST_ResetDraftsToApplied();
 ResolveProblem("storage"); return true;
}
bool SaveState(bool essential=false) {
 if(ST_accountSessionMismatch || !g_identityKnown || !g_owned || AccountNumber()!=g_installAccount || AccountServer()!=g_installServer) return false;
 if(!VerifyOwnership()) return false;
 UpdateClock();
 if(!ST_Path()) { ST_StorageFailure("Save","Installation identity could not be hashed"); return false; }
 ResetLastError(); FolderCreate("EA48"); FolderCreate("EA48\\"+g_identityHash);
 if(!ST_RepairPromotion()) { ST_StorageFailure("Save","Previous promotion could not be completed safely"); return false; }
 if(g_saveSequence>=9223372036854775806) { ST_StorageFailure("Save","Save sequence exhausted"); return false; }
 // Capture both clocks from one UpdateClock sample after IO preparation.
 UpdateClock();
 g_saveSequence++; g_savedUtc=g_lastUtc; g_savedTimer=g_timer;
 ulong remaining=(g_timer==TM_RUNNING && g_timerDeadline>g_now?g_timerDeadline-g_now:0);
 g_timerRemainingSaved=(long)(remaining/1000+(remaining%1000>0?1:0)); g_savedRemaining=g_timerRemainingSaved;
 if(g_state!=GS_RECOVERING) g_savedState=g_state;
 string content=ST_Content(g_saveSequence,g_installServer,g_installAccount,g_installID,ST_Payload());
 string digest=ST_SHA256(content);
 if(digest=="") { ST_StorageFailure("Save","SHA-256 calculation failed"); return false; }
 string envelope=StringSubstr(content,0,StringLen(content)-1)+",\"sha256\":"+ST_Escape(digest)+"}";
 string pending=g_storageDir+"pending.json";
 if(!ST_WriteFile(pending,envelope)) { ST_StorageFailure("Save","Pending state write failed"); return false; }
 string checked="",checkedDigest=""; long checkedSequence=0;
 if(!ST_HealthyFile(pending,checked,checkedSequence,checkedDigest) || checkedSequence!=g_saveSequence || checkedDigest!=digest) { ST_StorageFailure("Save","Closed pending file did not pass readback validation"); return false; }
 string main=g_storageDir+"state.json",previous="",previousDigest=""; long previousSequence=0;
 if(ST_HealthyFile(main,previous,previousSequence,previousDigest)) {
  if(!ST_CopyVerified(main,g_storageDir+"backup.json",previousDigest,previousSequence)) { ST_StorageFailure("Save","Last healthy main state could not be retained as backup"); return false; }
 }
 if(!ST_CopyVerified(pending,main,digest,g_saveSequence)) { ST_StorageFailure("Save","Verified pending state could not be promoted"); return false; }
 g_storeHealthy=true; g_dirty=false; g_saveRetryAt=0; ResolveProblem("storage"); return true;
}

string ST_LifecycleBase() { return "E48L."+ST_Long(ChartID()); }
string ST_LifecycleObject() { return "EA48.Lifecycle"; }
string ST_LifecycleData(int reason,bool blocked) {
 return "{\"token\":"+ST_Long(g_installToken)+",\"reason\":"+IntegerToString(reason)+",\"server\":"+ST_Escape(g_installServer)+",\"account\":"+IntegerToString(g_installAccount)+",\"id\":"+ST_Escape(g_installID)+",\"chartSymbol\":"+ST_Escape(_Symbol)+",\"blocked\":"+ST_Boolean(blocked)+"}";
}
bool ST_SetMarker(long chart,string name,string value) {
 if(ObjectFind(chart,name)<0 && !ObjectCreate(chart,name,OBJ_LABEL,0,0,0)) return false;
 if(!ObjectSetString(chart,name,OBJPROP_TEXT,value)) return false;
 ObjectSetInteger(chart,name,OBJPROP_HIDDEN,true); ObjectSetInteger(chart,name,OBJPROP_SELECTABLE,false);
 ObjectSetInteger(chart,name,OBJPROP_COLOR,clrNONE); ObjectSetInteger(chart,name,OBJPROP_XDISTANCE,-10000); ObjectSetInteger(chart,name,OBJPROP_YDISTANCE,-10000);
 return true;
}
long ST_NewToken() {
 string counter="EA48.installToken";
 if(!GlobalVariableTemp(counter)) return 0;
 for(int i=0;i<128;i++) {
  double old=GlobalVariableGet(counter);
  if(!MathIsValidNumber(old) || old<0 || old>=9007199254740990.0 || MathFloor(old)!=old) return 0;
  long base=(long)TimeLocal()*4096; if(base<=0) return 0;
  long next=(long)MathMax((double)base,old+1.0);
  if(next>9007199254740991) return 0;
  if(GlobalVariableSetOnCondition(counter,(double)next,old)) return next;
 }
 return 0;
}
bool RestoreLifecycle() {
 ST_sameInstallation=false; ST_retainDrafts=false; ST_accountSessionMismatch=false;
 ST_chartSymbol=_Symbol; string base=ST_LifecycleBase(),marker=ST_LifecycleObject();
 bool hasMarker=ObjectFind(0,marker)>=0;
 bool found=GlobalVariableCheck(base+".token") && hasMarker;
 if(found) {
  long token=0; int reason=-1,account=0; string server="",id="",symbol=""; bool blocked=false;
  string text=ObjectGetString(0,marker,OBJPROP_TEXT);
  bool valid=ST_Parse(text) && ST_nodes[0].type==ST_OBJECT && ST_Count(0)==7;
  if(valid) valid=ST_GetLong(ST_Member(0,"token"),token) && ST_GetInt(ST_Member(0,"reason"),reason) && ST_GetString(ST_Member(0,"server"),server) && ST_GetInt(ST_Member(0,"account"),account) && ST_GetString(ST_Member(0,"id"),id) && ST_GetString(ST_Member(0,"chartSymbol"),symbol) && ST_GetBool(ST_Member(0,"blocked"),blocked);
  if(valid) valid=token>0 && token<=9007199254740991 && GlobalVariableGet(base+".token")==((double)token) && account>0 && server!="";
  if(!valid) {
   g_accountBlocked=true; ST_accountSessionMismatch=true; g_state=GS_BLOCKED; g_blockReason="Chart lifecycle ownership cannot be verified";
   Problem("lifecycle","SYSTEM","Initialize","Chart lifecycle identity is unavailable","Remove and reattach the EA after handling its previous account state."); return false;
  }
  ST_sameInstallation=true; ST_lifecycleToken=token; g_installToken=token; g_ownerToken=token;
  g_previousDeinit=reason; g_lifecycleReason=IntegerToString(reason); ST_chartSymbol=symbol;
  g_installServer=server; g_installAccount=account; g_installID=id;
  blocked=blocked || (GlobalVariableCheck(base+".blocked") && GlobalVariableGet(base+".blocked")==1.0);
  // REASON_ACCOUNT also covers reconnects to the same account. The actual
  // server/account identity difference, or an existing sticky flag, is proof.
  if(account!=AccountNumber() || server!=AccountServer()) blocked=true;
  if(blocked) {
   GlobalVariableTemp(base+".blocked"); GlobalVariableSet(base+".blocked",1.0);
   g_accountBlocked=true; ST_accountSessionMismatch=true; g_state=GS_BLOCKED;
   g_blockReason="Account changed; remove and reattach the EA before trading this account";
   ST_SetMarker(0,marker,ST_LifecycleData(reason,true));
   Problem("account-change","SYSTEM","Initialize","Account change requires reattachment",g_blockReason); return false;
  }
  g_accountBlocked=false;
  // Empty InstanceID has never acquired a file identity or a scope lock.
  // Supplying its first nonempty value in Inputs can bind that fresh install.
  if(g_installID=="") g_installID=InstanceID;
  ST_retainDrafts=(reason==REASON_CHARTCHANGE && symbol==_Symbol);
 } else {
  // A chart object survives terminal shutdown but never proves a TF transfer.
  // It does preserve the origin of an attached chart until explicit removal.
  g_installToken=ST_NewToken(); g_ownerToken=g_installToken; ST_lifecycleToken=g_installToken;
  g_installServer=AccountServer(); g_installAccount=AccountNumber(); g_installID=InstanceID;
  g_previousDeinit=-1; g_lifecycleReason="Fresh attachment"; g_accountBlocked=false;
  if(g_installToken<=0) { g_state=GS_BLOCKED; g_blockReason="Installation token could not be allocated"; return false; }
  if(hasMarker) {
   long previousToken=0; int previousReason=-1,originAccount=0; string originServer="",originID="",originSymbol=""; bool previousBlock=false;
   string record=ObjectGetString(0,marker,OBJPROP_TEXT);
   bool valid=ST_Parse(record) && ST_nodes[0].type==ST_OBJECT && ST_Count(0)==7;
   if(valid) valid=ST_GetLong(ST_Member(0,"token"),previousToken) && ST_GetInt(ST_Member(0,"reason"),previousReason) && ST_GetString(ST_Member(0,"server"),originServer) && ST_GetInt(ST_Member(0,"account"),originAccount) && ST_GetString(ST_Member(0,"id"),originID) && ST_GetString(ST_Member(0,"chartSymbol"),originSymbol) && ST_GetBool(ST_Member(0,"blocked"),previousBlock);
   if(valid) valid=previousToken>0 && previousToken<=9007199254740991 && originAccount>0 && originServer!="";
   if(!valid) {
    ST_accountSessionMismatch=true; g_accountBlocked=true; g_state=GS_BLOCKED; g_blockReason="Attached chart origin metadata is unavailable; remove and reattach the EA";
    Problem("lifecycle","SYSTEM","Initialize","Attached chart origin is unavailable",g_blockReason); return false;
   }
   g_installServer=originServer; g_installAccount=originAccount; g_installID=(originID==""?InstanceID:originID); ST_chartSymbol=originSymbol;
   bool blocked=previousBlock || originAccount!=AccountNumber() || originServer!=AccountServer();
   if(blocked) {
    GlobalVariableTemp(base+".token"); GlobalVariableSet(base+".token",(double)g_installToken);
    GlobalVariableTemp(base+".blocked"); GlobalVariableSet(base+".blocked",1.0);
    ST_SetMarker(0,marker,ST_LifecycleData(previousReason,true));
    g_accountBlocked=true; ST_accountSessionMismatch=true; g_state=GS_BLOCKED;
    g_blockReason="Account changed; remove and reattach the EA before trading this account";
    Problem("account-change","SYSTEM","Initialize","Account change requires reattachment",g_blockReason); return false;
   }
  }
 }
 if(!GlobalVariableTemp(base+".token") || GlobalVariableSet(base+".token",(double)g_installToken)==0 || !GlobalVariableTemp(base+".blocked") || GlobalVariableSet(base+".blocked",0.0)==0 || !ST_SetMarker(0,marker,ST_LifecycleData(-1,false))) {
  g_state=GS_BLOCKED; g_blockReason="Chart lifecycle metadata could not be recorded"; return false;
 }
 return true;
}
void CaptureLifecycle(const int reason) {
 g_previousDeinit=reason; g_lifecycleReason=IntegerToString(reason);
 string base=ST_LifecycleBase(),marker=ST_LifecycleObject();
 if(reason==REASON_REMOVE || reason==REASON_PROGRAM || reason==REASON_CHARTCLOSE) {
  GlobalVariableDel(base+".token"); GlobalVariableDel(base+".blocked"); ObjectDelete(0,marker);
  return;
 }
 bool blocked=g_accountBlocked || ST_accountSessionMismatch || AccountNumber()!=g_installAccount || AccountServer()!=g_installServer;
 GlobalVariableTemp(base+".token"); GlobalVariableSet(base+".token",(double)g_installToken);
 GlobalVariableTemp(base+".blocked"); GlobalVariableSet(base+".blocked",blocked?1.0:0.0);
 ST_SetMarker(0,marker,ST_LifecycleData(reason,blocked));
}
string ST_IdentityKey() { return "E48I."+StringSubstr(g_identityHash,0,40); }
string ST_ScopeKey(string symbol,int magic) {
 string digest=ST_SHA256("["+ST_Escape(g_installServer)+","+IntegerToString(g_installAccount)+","+ST_Escape(symbol)+","+IntegerToString(magic)+"]");
 if(digest=="") return ""; return "E48S."+StringSubstr(digest,0,40);
}
string ST_OwnerMarker(string key) { return "E48Owner."+StringSubstr(ST_SHA256(key),0,40); }
bool ST_ChartAbsent(long chart,bool &known) {
 known=false;
 for(int pass=0;pass<2;pass++) {
  long cursor=ChartFirst(); if(cursor<0) return false; bool currentSeen=false; int count=0;
  while(cursor>=0) {
   if(cursor==chart) { known=true; return false; }
   if(cursor==ChartID()) currentSeen=true;
   if(++count>100000) return false;
   long next=ChartNext(cursor); if(next==cursor) return false; cursor=next;
  }
  if(!currentSeen) return false;
 }
 known=true; return true;
}
bool ST_OwnerMetadata(string key,long token,long &chart,long &installation) {
 chart=0; installation=0;
 if(!GlobalVariableCheck(key+".t") || !GlobalVariableCheck(key+".h") || !GlobalVariableCheck(key+".l") || !GlobalVariableCheck(key+".i")) return false;
 double recorded=GlobalVariableGet(key+".t"),high=GlobalVariableGet(key+".h"),low=GlobalVariableGet(key+".l"),install=GlobalVariableGet(key+".i");
 if(recorded!=(double)token || high<0 || high>4294967295.0 || low<0 || low>4294967295.0 || MathFloor(high)!=high || MathFloor(low)!=low || install<=0 || install>9007199254740991.0 || MathFloor(install)!=install) return false;
 chart=(long)(((ulong)(uint)high<<32)|(ulong)(uint)low); installation=(long)install;
 return chart>0;
}
bool ST_PublishOwner(string key) {
 ulong chart=(ulong)ChartID();
 if(GlobalVariableSet(key+".h",(double)(uint)(chart>>32))==0 || GlobalVariableSet(key+".l",(double)(uint)chart)==0 || GlobalVariableSet(key+".i",(double)g_installToken)==0 || GlobalVariableSet(key+".r",0.0)==0 || GlobalVariableSet(key+".t",(double)g_ownerToken)==0) return false;
 return ST_SetMarker(ChartID(),ST_OwnerMarker(key),key+":"+ST_Long(g_ownerToken));
}
bool ST_AnyMarker(string key,bool &known) {
 known=false; long chart=ChartFirst(); int count=0; bool currentSeen=false;
 while(chart>=0) {
  if(chart==ChartID()) currentSeen=true;
  if(ObjectFind(chart,ST_OwnerMarker(key))>=0) { known=true; return true; }
  if(++count>100000) return false;
  long next=ChartNext(chart); if(next==chart) return false; chart=next;
 }
 known=currentSeen; return false;
}
bool ST_TakeLock(string key,bool &newlyAcquired) {
 newlyAcquired=false; if(key=="" || g_ownerToken<=0) return false;
 if(!GlobalVariableTemp(key+".lock")) return false;
 double owner=GlobalVariableGet(key+".lock");
 if(!MathIsValidNumber(owner) || owner<0 || owner>9007199254740991.0 || MathFloor(owner)!=owner) return false;
 if(owner==(double)g_ownerToken) {
  long chart=0,install=0;
  return ST_OwnerMetadata(key,g_ownerToken,chart,install) && chart==ChartID() && install==g_installToken;
 }
 if(owner>0) {
  long chart=0,install=0; bool known=false;
  if(!ST_OwnerMetadata(key,(long)owner,chart,install) || !ST_ChartAbsent(chart,known) || !known) return false;
 } else if(GlobalVariableCheck(key+".t")) {
  double recorded=GlobalVariableGet(key+".t");
  if(!MathIsValidNumber(recorded) || recorded<=0 || recorded>9007199254740991.0 || MathFloor(recorded)!=recorded) return false;
  long old=(long)recorded,chart=0,install=0; bool known=false;
  bool released=GlobalVariableCheck(key+".r") && GlobalVariableGet(key+".r")==((double)old);
  if(!released && (!ST_OwnerMetadata(key,old,chart,install) || !ST_ChartAbsent(chart,known) || !known)) return false;
 } else {
  bool known=false; if(ST_AnyMarker(key,known) || !known) return false;
 }
 if(!GlobalVariableSetOnCondition(key+".lock",(double)g_ownerToken,owner)) return false;
 newlyAcquired=true;
 if(!ST_PublishOwner(key)) {
  GlobalVariableSet(key+".r",(double)g_ownerToken);
  GlobalVariableSetOnCondition(key+".lock",0.0,(double)g_ownerToken); ObjectDelete(ChartID(),ST_OwnerMarker(key)); return false;
 }
 return true;
}
void ST_FreeLock(string key) {
 if(!GlobalVariableCheck(key+".lock") || GlobalVariableGet(key+".lock")!=(double)g_ownerToken) return;
 long chart=0,install=0;
 if(!ST_OwnerMetadata(key,g_ownerToken,chart,install) || chart!=ChartID() || install!=g_installToken) return;
 // Record explicit release before CAS; a live chart then does not prevent a successor.
 GlobalVariableSet(key+".r",(double)g_ownerToken);
 if(GlobalVariableSetOnCondition(key+".lock",0.0,(double)g_ownerToken)) ObjectDelete(ChartID(),ST_OwnerMarker(key));
}
int ST_RequiredLocks(string &keys[]) {
 if(!ST_Path()) return 0;
 ArrayResize(keys,1); keys[0]=ST_IdentityKey();
 int buy=SideMagic(BUY_SIDE),sell=SideMagic(SELL_SIDE);
 if(g_identityKnown && g_managedSymbol!="" && buy>0 && sell>0 && buy!=sell) {
  ArrayResize(keys,3); keys[1]=ST_ScopeKey(g_managedSymbol,buy); keys[2]=ST_ScopeKey(g_managedSymbol,sell);
  if(keys[1]=="" || keys[2]=="") return 0;
 }
 return ArraySize(keys);
}
bool AcquireOwnership() {
 if(g_accountBlocked || ST_accountSessionMismatch || AccountNumber()!=g_installAccount || AccountServer()!=g_installServer) return false;
 string required[]; int count=ST_RequiredLocks(required);
 if(count<1 || g_ownerToken<=0) { g_owned=false; g_state=GS_BLOCKED; g_blockReason="Installation identity or owner token is unavailable"; return false; }
 bool newly[]; ArrayResize(newly,count);
 for(int i=0;i<count;i++) {
  if(!ST_TakeLock(required[i],newly[i])) {
   for(int j=0;j<i;j++) ST_FreeLock(required[j]);
   for(int j=0;j<ArraySize(ST_lockKeys);j++) ST_FreeLock(ST_lockKeys[j]);
   ArrayResize(ST_lockKeys,0);
   g_owned=false; g_state=GS_BLOCKED; g_blockReason="A managed identity or symbol/magic scope has an existing or unprovable owner";
   Problem("ownership","SYSTEM","Acquire","Ownership is blocked",g_blockReason); return false;
  }
 }
 for(int i=0;i<ArraySize(ST_lockKeys);i++) {
  bool retained=false; for(int j=0;j<count;j++) if(ST_lockKeys[i]==required[j]) retained=true;
  if(!retained) ST_FreeLock(ST_lockKeys[i]);
 }
 ArrayResize(ST_lockKeys,count); for(int i=0;i<count;i++) ST_lockKeys[i]=required[i];
 g_owned=true; ResolveProblem("ownership"); return true;
}
bool VerifyOwnership() {
 if(!g_owned || g_accountBlocked || ST_accountSessionMismatch || AccountNumber()!=g_installAccount || AccountServer()!=g_installServer) return false;
 string required[]; int count=ST_RequiredLocks(required); bool valid=count>0;
 for(int i=0;i<count && valid;i++) {
  long chart=0,install=0;
  valid=GlobalVariableCheck(required[i]+".lock") && GlobalVariableGet(required[i]+".lock")==((double)g_ownerToken) && ST_OwnerMetadata(required[i],g_ownerToken,chart,install) && chart==ChartID() && install==g_installToken;
 }
 if(!valid) {
  g_owned=false; g_state=GS_BLOCKED; g_blockReason="Local ownership could not be verified";
  Problem("ownership","SYSTEM","Verify","Ownership is blocked",g_blockReason);
 }
 return valid;
}
void ReleaseOwnership(bool transfer=false) {
 bool preserve=transfer && (g_previousDeinit==REASON_CHARTCHANGE || g_previousDeinit==REASON_PARAMETERS) && !g_accountBlocked && !ST_accountSessionMismatch;
 if(!preserve) for(int i=0;i<ArraySize(ST_lockKeys);i++) ST_FreeLock(ST_lockKeys[i]);
 ArrayResize(ST_lockKeys,0); g_owned=false;
}
bool ResetSavedState() {
 if(!g_confirmReset || g_state!=GS_BLOCKED || g_identityKnown || g_accountBlocked || ST_accountSessionMismatch) return false;
 if(!ST_Path() || !AcquireOwnership()) return false;
 // This reset never enumerates, deletes or closes unknown broker orders.
 string names[3]; names[0]="pending.json"; names[1]="state.json"; names[2]="backup.json";
 for(int i=0;i<3;i++) if(FileIsExist(g_storageDir+names[i]) && !FileDelete(g_storageDir+names[i])) { ST_StorageFailure("Reset Saved State","Old state files could not be removed"); return false; }
 ArrayResize(g_orders,0); ArrayResize(g_links,0); ArrayResize(g_ledger,0); ArrayResize(g_intents,0); ArrayResize(g_archives,0);
 ArrayResize(g_commands,0); ArrayResize(g_commandSides,0); ArrayResize(g_commandSerials,0);
 g_haveActive=false; CopyConfiguration(g_active,g_next); g_managedSymbol=_Symbol;
 for(int s=0;s<2;s++) {
  g_side[s].control=SC_PLAYING; g_side[s].phase=OP_NONE; g_side[s].stage=0; g_side[s].targetStage=0; g_side[s].occurrence=0;
  g_side[s].ticket=0; g_side[s].orderLot=0; g_side[s].lastPending=0; g_side[s].finalClose=0; g_side[s].finalCloseTime=0;
  g_side[s].finalKnown=false; g_side[s].initialConfirmed=false; g_side[s].tradeSeen=false; g_side[s].trailing=true;
  g_side[s].targetLot=0; g_side[s].targetLotFrozen=false; g_side[s].pauseRequested=false; g_side[s].rollbackSL=false; g_side[s].rollbackTP=false; g_side[s].retryAt=0; g_side[s].playGeneration=0;
 }
 g_cycle=0; g_cycleSerial=0; g_intentSerial=0; g_observationSerial=0; g_saveSequence=0;
 g_state=GS_STANDBY; g_savedState=GS_STANDBY; g_timer=TM_OFF; g_savedTimer=TM_OFF; g_savedRemaining=0; g_timerRemainingSaved=0; g_timerDeadline=0;
 g_exitReason=XR_NONE; g_exitLatched=false; g_autoPending=false; g_restartCancelled=true; g_resultKind=RK_CURRENT; g_net=0; g_lastResult=0;
 g_netAvailable=true; g_identityKnown=true; g_recoveryReady=false; g_graceActive=false; g_graceDeadline=0;
 g_reinstallMagicChange=false; g_historyReady=false; g_symbolChanged=false; g_initialProgress=0; g_startBid=0; g_startAsk=0;
 g_blockReason=""; g_confirmReset=false; g_dirty=true; g_storeHealthy=true;
 ST_ResetDraftsToApplied(); ResolveProblem("storage");
 if(!AcquireOwnership()) return false;
 return SaveState(false);
}


// Broker reconciliation. Read-only broker access; all trading requests belong to ROOT.
// These caches are disposable observations. Authoritative links/ledger/intents live in the header.
OrderSnapshot RC_history[];
string RC_historyComments[];
string RC_liveComments[];
bool RC_scanHealthy=false,RC_historyHealthy=false;
bool RC_orderUnresolved=false,RC_intentUnresolved=false;
bool RC_reconciling=false;
bool RC_scopeMemberUnassigned=false;

bool RC_SameNumber(double a,double b) { return MathAbs(a-b)<=0.00000001; }
bool RC_Market(int type) { return type==OP_BUY || type==OP_SELL; }
bool RC_Pending(int type) { return type==OP_BUYSTOP || type==OP_SELLSTOP; }
bool RC_Creation(int kind) { return kind==IK_INITIAL || kind==IK_NEXT || kind==IK_REBUILD; }
int RC_MarketType(int side) { return side==BUY_SIDE ? OP_BUY : OP_SELL; }
bool RC_Starting() { return g_state==GS_STARTING || (g_state==GS_RECOVERING && g_savedState==GS_STARTING); }
int RC_LinkIndex(int ticket) {
 for(int i=0;i<ArraySize(g_links);i++) if(g_links[i].ticket==ticket) return i;
 return -1;
}
int RC_LedgerIndex(int ticket) {
 for(int i=0;i<ArraySize(g_ledger);i++) if(g_ledger[i].ticket==ticket) return i;
 return -1;
}
int RC_HistoryIndex(int ticket) {
 for(int i=0;i<ArraySize(RC_history);i++) if(RC_history[i].ticket==ticket) return i;
 return -1;
}
int RC_LiveTicket(int ticket) {
 for(int i=0;i<ArraySize(g_orders);i++) if(g_orders[i].ticket==ticket) return i;
 return -1;
}
int LiveOrderIndex(int side) {
 int found=-1;
 for(int i=0;i<ArraySize(g_orders);i++) if(g_orders[i].side==side) {
  if(found>=0) return -1;
  found=i;
 }
 return found;
}
bool ScopeIdentifiable() {
 if(!g_identityKnown || g_accountBlocked || g_managedSymbol=="") return false;
 if(g_installAccount!=AccountNumber() || g_installServer!=AccountServer()) return false;
 int buy=SideMagic(BUY_SIDE),sell=SideMagic(SELL_SIDE);
 return buy>0 && sell>0 && buy!=sell;
}
bool ScopeEmpty() {
 if(!RC_scanHealthy || !IsConnected() || !ScopeIdentifiable() || ArraySize(g_orders)>0) return false;
 // An unanswered creation can arrive later. An empty snapshot is not evidence of rejection.
 for(int i=0;i<ArraySize(g_intents);i++) {
  if(!RC_Creation(g_intents[i].kind)) continue;
  bool relevant=g_intents[i].cycle==g_cycle || (g_intents[i].symbol==g_managedSymbol &&
                (g_intents[i].magic==SideMagic(BUY_SIDE) || g_intents[i].magic==SideMagic(SELL_SIDE)));
  if(!relevant) continue;
  if(g_intents[i].status!=IS_UNKNOWN && !(g_intents[i].sent && g_intents[i].status==IS_PREPARED)) continue;
  // The bounded recovery policy may finish an empty forced cleanup without
  // declaring this creation rejected. Its unknown journal remains a late-result watch.
  if(g_intents[i].obsolete && RC_CycleArchived(g_intents[i].cycle)) continue;
  if(g_exitLatched && g_state==GS_EXITING && HistoryGraceExpired()) continue;
  return false;
 }
 return true;
}
void BeginHistoryGrace(string why) {
 if(!g_graceActive) { g_graceActive=true; g_graceDeadline=g_now+(ulong)30000; MarkDirty(); }
 g_historyReady=false; g_recoveryReady=false;
 Problem("history","SYSTEM","Reconcile",why,"History grace: 30 seconds; no speculative order or stage reconstruction.");
}
bool HistoryGraceExpired() { return g_graceActive && g_now>=g_graceDeadline; }
void RC_Unresolved(string why) { RC_orderUnresolved=true; BeginHistoryGrace(why); }
void RC_GracePolicy() {
 if(!RC_orderUnresolved && !RC_intentUnresolved && RC_scanHealthy && RC_historyHealthy) {
  if(g_graceActive) { g_graceActive=false; g_graceDeadline=0; MarkDirty(); }
  g_historyReady=true; ResolveProblem("history");
  return;
 }
 if(!HistoryGraceExpired()) return;
 if(g_accountBlocked) return; // Account-change Blocked is sticky and does not become unknown-identity reset.
 if(ScopeIdentifiable()) {
  if(RC_scopeMemberUnassigned) { g_resultKind=RK_UNAVAILABLE; MarkDirty(); }
  if(g_exitReason!=XR_START_FAILURE) LatchExit(XR_INCONSISTENT);
  for(int i=0;i<ArraySize(g_intents);i++) {
   if(!RC_Creation(g_intents[i].kind) || g_intents[i].obsolete) continue;
   if(g_intents[i].status!=IS_UNKNOWN && !(g_intents[i].sent && g_intents[i].status==IS_PREPARED)) continue;
   if(g_intents[i].cycle!=g_cycle && (g_intents[i].symbol!=g_managedSymbol ||
      (g_intents[i].magic!=SideMagic(BUY_SIDE) && g_intents[i].magic!=SideMagic(SELL_SIDE)))) continue;
   g_intents[i].obsolete=true; MarkDirty();
  }
 }
 else {
  g_identityKnown=false; g_state=GS_BLOCKED;
  g_blockReason="Unknown previous order identity"; g_recoveryReady=false; MarkDirty();
  Problem("identity","SYSTEM","Recover","Previous order scope cannot be established","No unknown orders will be modified. Reset Saved State requires manual handling confirmation.");
 }
}
void RC_ReadSelected(OrderSnapshot &out) {
 out.ticket=OrderTicket(); out.type=OrderType(); out.magic=OrderMagicNumber(); out.symbol=OrderSymbol();
 out.side=-1;
 if(out.symbol==g_managedSymbol) {
  if(out.magic==SideMagic(BUY_SIDE)) out.side=BUY_SIDE;
  else if(out.magic==SideMagic(SELL_SIDE)) out.side=SELL_SIDE;
 }
 out.lots=OrderLots(); out.price=OrderOpenPrice(); out.sl=OrderStopLoss(); out.tp=OrderTakeProfit();
 out.openTime=OrderOpenTime(); out.closeTime=OrderCloseTime(); out.closePrice=OrderClosePrice();
 out.profit=OrderProfit(); out.commission=OrderCommission(); out.swap=OrderSwap();
}
bool RC_KnownScope(string symbol,int magic) {
 if(symbol==g_managedSymbol && (magic==SideMagic(BUY_SIDE) || magic==SideMagic(SELL_SIDE))) return true;
 for(int i=0;i<ArraySize(g_links);i++) if(g_links[i].symbol==symbol && g_links[i].magic==magic) return true;
 for(int j=0;j<ArraySize(g_intents);j++) if(g_intents[j].symbol==symbol && g_intents[j].magic==magic) return true;
 return false;
}
bool ScanOrders() {
 RC_scanHealthy=false;
 if(!ScopeIdentifiable()) {
  // Invalid, unapplied first-install magics disable Run; they do not invent a lost previous scope.
  if(g_state==GS_STANDBY && !g_haveActive && g_identityKnown && !g_accountBlocked &&
     g_installAccount==AccountNumber() && g_installServer==AccountServer()) {
   ArrayResize(g_orders,0); ArrayResize(RC_liveComments,0); RC_scanHealthy=true; return true;
  }
  BeginHistoryGrace("Managed order scope is unavailable"); return false;
 }
 OrderSnapshot observed[]; string comments[];
 int total=OrdersTotal(); int counts[2]; counts[0]=0; counts[1]=0;
 for(int p=0;p<total;p++) {
  if(!OrderSelect(p,SELECT_BY_POS,MODE_TRADES)) { BeginHistoryGrace("Live orders could not be read completely"); return false; }
  OrderSnapshot order; RC_ReadSelected(order);
  if(order.symbol!=g_managedSymbol || order.side<0) continue;
  int n=ArraySize(observed);
  if(ArrayResize(observed,n+1)!=n+1 || ArrayResize(comments,n+1)!=n+1) {
   BeginHistoryGrace("Insufficient memory for live order reconciliation"); return false;
  }
  observed[n]=order; comments[n]=OrderComment(); counts[order.side]++;
 }
 if(OrdersTotal()!=total) { BeginHistoryGrace("Live order pool changed while being read"); return false; }
 if(ArrayResize(g_orders,ArraySize(observed))!=ArraySize(observed) ||
    ArrayResize(RC_liveComments,ArraySize(comments))!=ArraySize(comments)) {
  BeginHistoryGrace("Insufficient memory to publish the live order snapshot"); return false;
 }
 for(int k=0;k<ArraySize(observed);k++) { g_orders[k]=observed[k]; RC_liveComments[k]=comments[k]; }
 RC_scanHealthy=true; g_observationSerial++;
 if(counts[0]>1 || counts[1]>1) {
  Problem("duplicate","SYSTEM","Reconcile","More than one managed order on a side","Combined pending and market order count exceeds one.");
  LatchExit(XR_DUPLICATE);
 } else ResolveProblem("duplicate");
 for(int q=0;q<ArraySize(g_orders);q++) {
  int side=g_orders[q].side;
  if(g_orders[q].type!=SidePendingType(side) && g_orders[q].type!=RC_MarketType(side)) {
   Problem("order-type","SYSTEM","Reconcile","Managed order type contradicts its side",IntegerToString(g_orders[q].ticket));
   LatchExit(XR_INCONSISTENT);
  }
 }
 return true;
}
bool RC_ReadHistory() {
 RC_historyHealthy=false; OrderSnapshot observed[]; string comments[];
 int total=OrdersHistoryTotal();
 for(int p=0;p<total;p++) {
  if(!OrderSelect(p,SELECT_BY_POS,MODE_HISTORY)) { RC_Unresolved("Order history could not be read completely"); return false; }
  OrderSnapshot order; RC_ReadSelected(order);
  if(!RC_KnownScope(order.symbol,order.magic)) continue;
  int n=ArraySize(observed);
  if(ArrayResize(observed,n+1)!=n+1 || ArrayResize(comments,n+1)!=n+1) {
   RC_Unresolved("Insufficient memory for history reconciliation"); return false;
  }
  observed[n]=order; comments[n]=OrderComment();
 }
 if(OrdersHistoryTotal()!=total) { RC_Unresolved("Order history changed while being read"); return false; }
 if(ArrayResize(RC_history,ArraySize(observed))!=ArraySize(observed) ||
    ArrayResize(RC_historyComments,ArraySize(comments))!=ArraySize(comments)) {
  RC_Unresolved("Insufficient memory to publish the history snapshot"); return false;
 }
 for(int k=0;k<ArraySize(observed);k++) { RC_history[k]=observed[k]; RC_historyComments[k]=comments[k]; }
 RC_historyHealthy=true; return true;
}
bool RC_LinkScope(OrderLink &link,OrderSnapshot &order) {
 if(link.ticket!=order.ticket || link.symbol!=order.symbol || link.magic!=order.magic) return false;
 return order.type==RC_MarketType(link.side) || order.type==(link.side==BUY_SIDE ? OP_BUYSTOP : OP_SELLSTOP);
}
void RC_LinkIssue(int index,string why) {
 if(g_haveActive && g_links[index].cycle==g_cycle) RC_Unresolved(why);
 else Problem("historical-record-"+IntegerToString(g_links[index].ticket),"SYSTEM","Accounting",why,
              "Only revisions attributable to the archived cycle are applied; no amount is moved into the current cycle.");
}
bool RC_HistoryUnique(int ticket,bool necessary=true) {
 int count=0;
 for(int i=0;i<ArraySize(RC_history);i++) if(RC_history[i].ticket==ticket) count++;
 if(count>1) {
  if(necessary) RC_Unresolved("Multiple history sections share a ticket without unique section identity");
  else Problem("historical-record-"+IntegerToString(ticket),"SYSTEM","Accounting","Historical record identity is ambiguous","Unsupported revision is excluded from the archived cycle; current trading scope is unaffected.");
  return false;
 }
 return count==1;
}
bool RC_AppendIntentLink(int index,int ticket) {
 if(index<0 || index>=ArraySize(g_intents) || ticket<=0) return false;
 OperationIntent intent=g_intents[index];
 if(!RC_Creation(intent.kind) || intent.side<0 || intent.side>=SIDES || intent.cycle<=0) return false;
 int old=RC_LinkIndex(ticket);
 if(old>=0) {
  if(g_links[old].cycle!=intent.cycle || g_links[old].occurrence!=intent.occurrence ||
     g_links[old].side!=intent.side || g_links[old].symbol!=intent.symbol || g_links[old].magic!=intent.magic) {
   RC_Unresolved("A result ticket conflicts with its persisted operation identity"); return false;
  }
  return true;
 }
 OrderLink link;
 link.ticket=ticket; link.cycle=intent.cycle; link.occurrence=intent.occurrence;
 link.side=intent.side; link.stage=intent.stage; link.symbol=intent.symbol; link.magic=intent.magic;
 link.originType=intent.orderType; link.parentTicket=0; link.initialLot=intent.lots;
 link.observedLot=0.0; link.entry=intent.price; link.openTime=intent.serverTime;
 link.pendingOrigin=RC_Pending(intent.orderType); link.live=false; link.settled=false;
 link.finalProcessed=false; link.lastSeenServer=0; link.sequence=g_observationSerial;
 // A returned server ticket is direct evidence, including an order already activated or closed.
 if(OrderSelect(ticket,SELECT_BY_TICKET)) {
  OrderSnapshot actual; RC_ReadSelected(actual);
  if(!RC_LinkScope(link,actual)) { RC_Unresolved("Returned ticket has incompatible symbol, magic or order type"); return false; }
  link.entry=actual.price; link.openTime=actual.openTime;
  link.live=actual.closeTime==0; link.observedLot=link.live ? actual.lots : 0.0;
  link.lastSeenServer=TimeCurrent();
 }
 int n=ArraySize(g_links);
 if(ArrayResize(g_links,n+1)!=n+1) { RC_Unresolved("Insufficient memory to register accepted order identity"); return false; }
 g_links[n]=link; MarkDirty(); return true;
}
void RC_RegisterIntentOrder(int intentIndex,int ticket) {
 if(intentIndex<0 || intentIndex>=ArraySize(g_intents) || ticket<=0) return;
 g_intents[intentIndex].resultTicket=ticket;
 if(RC_AppendIntentLink(intentIndex,ticket)) g_intents[intentIndex].status=IS_CONFIRMED;
 else g_intents[intentIndex].status=IS_UNKNOWN;
 MarkDirty();
}
// Parse a complete broker reference token; a single-direction mention is never a relation.
bool RC_ReferenceBoundary(int character) {
 return character<=32 || character==40 || character==41 || character==44 || character==58 ||
        character==59 || character==91 || character==93 || character==123 || character==125;
}
int RC_Reference(string comment,string direction) {
 string text=comment; StringToLower(text);
 string token=direction+" #"; int at=0,found=-1;
 while(true) {
  int p=StringFind(text,token,at); if(p<0) break;
  if(p>0 && !RC_ReferenceBoundary(StringGetCharacter(text,p-1))) return -1;
  int start=p+StringLen(token),end=start; long value=0;
  while(end<StringLen(text)) {
   int c=StringGetCharacter(text,end); if(c<48 || c>57) break;
   value=value*10+(c-48); if(value>2147483647) return -1; end++;
  }
  if(end==start || value<=0 || (end<StringLen(text) && !RC_ReferenceBoundary(StringGetCharacter(text,end)))) return -1;
  if(found>=0 && found!=(int)value) return -1;
  found=(int)value;
  at=start; if(at>=StringLen(text)) break;
 }
 return found;
}
bool RC_SnapshotByTicket(int ticket,OrderSnapshot &order,string &comment,bool necessary=true) {
 int live=RC_LiveTicket(ticket),hist=RC_HistoryIndex(ticket);
 if(live>=0 && hist>=0) {
  if(necessary) RC_Unresolved("A live ticket also has a separate history section without certain identity");
  return false;
 }
 if(live>=0) { order=g_orders[live]; comment=RC_liveComments[live]; return true; }
 if(hist>=0 && RC_HistoryUnique(ticket,necessary)) { order=RC_history[hist]; comment=RC_historyComments[hist]; return true; }
 return false;
}
bool RC_PartialIdentity(OrderSnapshot &parent,OrderSnapshot &child) {
 return RC_Market(parent.type) && child.type==parent.type && child.symbol==parent.symbol &&
        child.magic==parent.magic && child.openTime==parent.openTime && RC_SameNumber(child.price,parent.price);
}
bool RC_SubtreeVolume(int ticket,OrderSnapshot &root,double &volume,int depth,bool necessary) {
 volume=0.0;
 if(depth>ArraySize(RC_history)+ArraySize(g_orders)+1) return false;
 OrderSnapshot node; string comment;
 if(!RC_SnapshotByTicket(ticket,node,comment,necessary) || !RC_PartialIdentity(root,node) || node.lots<=0) return false;
 volume=node.lots;
 if(node.closeTime==0) return true;
 int next=RC_Reference(comment,"to"); if(next<0) return true;
 if(next==ticket) return false;
 OrderSnapshot child; string childComment;
 if(!RC_SnapshotByTicket(next,child,childComment,necessary) || RC_Reference(childComment,"from")!=ticket ||
    !RC_PartialIdentity(node,child)) return false;
 double remainder=0.0;
 if(!RC_SubtreeVolume(next,root,remainder,depth+1,necessary)) return false;
 volume+=remainder; return true;
}
bool RC_DiscoverPartials() {
 bool changed=false;
 // Newly registered descendants may themselves have a descendant; the growing array is intentional.
 for(int p=0;p<ArraySize(g_links);p++) {
  bool necessary=g_haveActive && g_links[p].cycle==g_cycle;
  int savedChildren=0;
  for(int relation=0;relation<ArraySize(g_links);relation++)
   if(g_links[relation].parentTicket==g_links[p].ticket && RC_GroupLink(p,relation)) savedChildren++;
  // Saved exact relations survive later broker comment rewriting and filtered history.
  if(savedChildren==1 || g_links[p].finalProcessed) continue;
  if(savedChildren>1) { RC_LinkIssue(p,"Saved partial-chain proof has more than one remaining branch"); continue; }
  int h=RC_HistoryIndex(g_links[p].ticket); if(h<0 || !RC_Market(RC_history[h].type)) continue;
  if(!RC_HistoryUnique(g_links[p].ticket,necessary)) continue;
  OrderSnapshot parent=RC_history[h];
  if(!RC_LinkScope(g_links[p],parent)) { RC_LinkIssue(p,"Closed section contradicts its exact persisted scope"); continue; }
  int childTicket=RC_Reference(RC_historyComments[h],"to");
  if(childTicket<0) continue;
  int existing=RC_LinkIndex(childTicket);
  if(existing>=0) {
   if(g_links[existing].parentTicket!=parent.ticket || g_links[existing].cycle!=g_links[p].cycle ||
      g_links[existing].occurrence!=g_links[p].occurrence) RC_LinkIssue(p,"Partial-chain relation conflicts with saved identity");
   continue;
  }
  OrderSnapshot child; string childComment;
  if(!RC_SnapshotByTicket(childTicket,child,childComment,necessary) || RC_Reference(childComment,"from")!=parent.ticket ||
     !RC_PartialIdentity(parent,child)) { RC_LinkIssue(p,"Partial close has no certain reciprocal broker relation"); continue; }
  double remaining=0.0;
  if(!RC_SubtreeVolume(childTicket,parent,remaining,0,necessary) ||
     !RC_SameNumber(parent.lots+remaining,g_links[p].initialLot)) {
   RC_LinkIssue(p,"Partial-chain volumes do not conserve the accepted order volume"); continue;
  }
  OrderLink link;
  link.ticket=childTicket; link.cycle=g_links[p].cycle; link.occurrence=g_links[p].occurrence;
  link.side=g_links[p].side; link.stage=g_links[p].stage; link.symbol=child.symbol; link.magic=child.magic;
  link.originType=g_links[p].originType; link.parentTicket=parent.ticket; link.initialLot=remaining;
  link.observedLot=child.closeTime==0 ? child.lots : 0.0; link.entry=child.price; link.openTime=child.openTime;
  link.pendingOrigin=g_links[p].pendingOrigin; link.live=child.closeTime==0; link.settled=false;
  link.finalProcessed=false; link.lastSeenServer=TimeCurrent(); link.sequence=g_observationSerial;
  int n=ArraySize(g_links);
  if(ArrayResize(g_links,n+1)!=n+1) { RC_Unresolved("Insufficient memory for partial-chain identity"); return false; }
  g_links[n]=link; changed=true; MarkDirty();
 }
 return changed;
}
bool RC_IntentCandidate(int index,OrderSnapshot &order,string comment,bool directTicket) {
 OperationIntent intent=g_intents[index];
 if(order.symbol!=intent.symbol || order.magic!=intent.magic || intent.side<0 || intent.side>=SIDES) return false;
 if(order.type!=intent.orderType && order.type!=RC_MarketType(intent.side)) return false;
 if(directTicket) return true;
 string identity=IntentComment(index);
 if(identity=="" || StringFind(comment,identity)!=0) return false;
 // The full unique persisted identity is auxiliary evidence, corroborated by exact request facts.
 // A rewritten/truncated comment, slipped entry or partial volume cannot be guessed into a match.
 if(intent.serverTime<=0 || order.openTime<intent.serverTime || order.openTime>TimeCurrent()) return false;
 if(!RC_SameNumber(order.price,intent.price) || !RC_SameNumber(order.lots,intent.lots)) return false;
 int link=RC_LinkIndex(order.ticket);
 return link<0 || (g_links[link].cycle==intent.cycle && g_links[link].occurrence==intent.occurrence && g_links[link].side==intent.side);
}
void RC_ConfirmIntent(int index,int ticket) {
 g_intents[index].resultTicket=ticket; g_intents[index].status=IS_CONFIRMED;
 ResolveProblem("intent-"+IntegerToString(g_intents[index].id)); MarkDirty();
}
void RC_IntentWait(int index,string why) {
 RC_intentUnresolved=true;
 if(g_intents[index].status!=IS_UNKNOWN) { g_intents[index].status=IS_UNKNOWN; MarkDirty(); }
 BeginHistoryGrace(why);
 Problem("intent-"+IntegerToString(g_intents[index].id),SideName(g_intents[index].side),"Reconcile",why,
         "Unanswered operation remains recorded; other essential targets may continue.");
}
bool RC_CycleArchived(long cycle) {
 for(int i=0;i<ArraySize(g_archives);i++) if(g_archives[i].id==cycle && g_archives[i].ended>0) return true;
 return false;
}
bool RC_PriorCleanupRecord(OrderSnapshot &record){
 // A known terminal target from a completed earlier cleanup is not a
 // candidate member of the newly recovered cycle, even in the same second.
 // This only excludes certain old identity; it assigns no P/L to cycle zero.
 for(int i=0;i<ArraySize(g_intents);i++){
  OperationIntent intent=g_intents[i];
  if(intent.kind!=IK_DELETE&&intent.kind!=IK_CLOSE)continue;
  if(intent.ticket!=record.ticket||intent.symbol!=record.symbol||intent.magic!=record.magic)continue;
  if(intent.cycle==g_cycle&&g_haveActive)continue;
  bool ended=(intent.cycle==0&&(intent.cleanupSettled||intent.status==IS_CONFIRMED))||
             (intent.cycle!=g_cycle&&RC_CycleArchived(intent.cycle)&&intent.status==IS_CONFIRMED);
  if(!ended)continue;
  if(record.type==intent.orderType)return true;
  if(intent.kind==IK_DELETE&&
     ((intent.orderType==OP_BUYSTOP&&record.type==OP_BUY)||
      (intent.orderType==OP_SELLSTOP&&record.type==OP_SELL)))return true;
 }
 return false;
}
void RC_CancelObsoleteIntent(int index) {
 g_intents[index].obsolete=true; g_intents[index].status=IS_CANCELLED;
 ResolveProblem("intent-"+IntegerToString(g_intents[index].id)); MarkDirty();
}
bool RC_SupersedeEssentialForRetry(int index,OrderSnapshot &actual) {
 OperationIntent intent=g_intents[index];
 bool terminal=intent.kind==IK_DELETE || intent.kind==IK_CLOSE;
 bool removal=intent.kind==IK_PAUSE || intent.kind==IK_ROLLBACK;
 if(!terminal && !removal) return false;
 if(terminal && (!intent.essential || !g_exitLatched)) return false;
 if(removal && (intent.side<0 || intent.side>=SIDES ||
    g_side[intent.side].control!=SC_APPLYING_PAUSE)) return false;
 if(g_apiInFlight || !IsConnected() || !RC_scanHealthy || !RC_historyHealthy || !ScopeIdentifiable()) return false;
 if(intent.ticket!=actual.ticket || intent.symbol!=actual.symbol || intent.magic!=actual.magic || actual.closeTime!=0) return false;
 if(g_now<intent.attemptedAt || g_now-intent.attemptedAt<RetryDelay()) return false;
 // Closing/deleting this still-existing exact target, or removing its limits,
 // is idempotent. A fresh request may supersede the unanswered one after Retry;
 // the earlier server result is not invented and remains observable.
 if(g_intents[index].status!=IS_UNKNOWN || !g_intents[index].obsolete) {
  g_intents[index].status=IS_UNKNOWN; g_intents[index].obsolete=true; MarkDirty();
 }
 Problem("intent-"+IntegerToString(intent.id),SideName(intent.side),"Reconcile",
         "Earlier essential request remains unknown; its exact live target permits retry",
         "The unknown journal is retained and a late result is still reconciled.");
 return true;
}
bool ReconcileIntents() {
 RC_intentUnresolved=false;
 if(!RC_scanHealthy || !RC_historyHealthy) { RC_intentUnresolved=true; BeginHistoryGrace("Intent reconciliation requires complete live and history snapshots"); return false; }
 for(int i=0;i<ArraySize(g_intents);i++) {
  if(g_intents[i].status==IS_FAILED || g_intents[i].status==IS_CANCELLED) continue;
  bool creation=RC_Creation(g_intents[i].kind);
  if(g_intents[i].status==IS_CONFIRMED) {
   if(creation && g_intents[i].resultTicket>0 && RC_LinkIndex(g_intents[i].resultTicket)<0)
    if(!RC_AppendIntentLink(i,g_intents[i].resultTicket)) RC_IntentWait(i,"Confirmed creation lacks a recoverable exact order identity");
   continue;
  }
  // Fresh prepared requests have not left this event. Recovered preparation is inconclusive.
  if(!g_intents[i].sent && g_intents[i].status==IS_PREPARED && g_state!=GS_RECOVERING) continue;
  if(creation) {
   int ticket=g_intents[i].resultTicket;
   int linked=-1;
   if(ticket>0) linked=RC_LinkIndex(ticket);
   if(linked>=0 && g_links[linked].cycle==g_intents[i].cycle &&
      g_links[linked].occurrence==g_intents[i].occurrence && g_links[linked].side==g_intents[i].side) {
    RC_ConfirmIntent(i,ticket); continue;
   }
   int matches=0,matchTicket=-1;
   for(int live=0;live<ArraySize(g_orders);live++) {
    bool direct=ticket>0 && g_orders[live].ticket==ticket;
    if(ticket>0 && !direct) continue;
    if(RC_IntentCandidate(i,g_orders[live],RC_liveComments[live],direct)) { matches++; matchTicket=g_orders[live].ticket; }
   }
   for(int hist=0;hist<ArraySize(RC_history);hist++) {
    bool direct=ticket>0 && RC_history[hist].ticket==ticket;
    if(ticket>0 && !direct) continue;
    if(RC_IntentCandidate(i,RC_history[hist],RC_historyComments[hist],direct)) { matches++; matchTicket=RC_history[hist].ticket; }
   }
   if(g_intents[i].obsolete && RC_CycleArchived(g_intents[i].cycle) && matches!=1) {
    Problem("intent-"+IntegerToString(g_intents[i].id),"SYSTEM","Accounting",
            matches>1 ? "Archived creation identity is ambiguous" : "Archived creation result remains unknown",
            "Its scope was verified empty after history grace; this request is never repeated and exact late results remain observable.");
    continue;
   }
   if(matches==1 && RC_AppendIntentLink(i,matchTicket)) RC_ConfirmIntent(i,matchTicket);
   else RC_IntentWait(i,matches>1 ? "Creation identity matches multiple broker records" : "Creation result cannot be established from certain evidence");
   continue;
  }
  int target=g_intents[i].ticket;
  if(target<=0) { RC_IntentWait(i,"Operation has no certain target ticket"); continue; }
  int live=RC_LiveTicket(target),hist=RC_HistoryIndex(target);
  if(live>=0 && hist>=0) { RC_IntentWait(i,"Operation target has ambiguous live and closed sections"); continue; }
  bool terminal=g_intents[i].kind==IK_DELETE || g_intents[i].kind==IK_CLOSE;
  bool completedZeroCleanup=g_intents[i].cleanupSettled;
  if(live<0 && hist<0 && !creation &&
     ((RC_CycleArchived(g_intents[i].cycle) && (!g_haveActive || g_intents[i].cycle!=g_cycle)) || completedZeroCleanup)) {
   // Archive completion already proved the entire then-managed scope empty.
   // Keep the unanswered journal result, without inventing execution or reopening a finished cycle.
   if(!g_intents[i].obsolete) { g_intents[i].obsolete=true; MarkDirty(); }
   Problem("intent-"+IntegerToString(g_intents[i].id),"SYSTEM","Accounting","Archived operation history is unavailable",
           "The final scope was verified empty; this request result remains unknown and is never repeated.");
   continue;
  }
  int savedLink=RC_LinkIndex(target),savedRecord=RC_LedgerIndex(target);
  if(live<0 && hist<0 && savedLink>=0 && savedRecord>=0 && g_links[savedLink].settled &&
     g_links[savedLink].symbol==g_intents[i].symbol && g_links[savedLink].magic==g_intents[i].magic &&
     g_ledger[savedRecord].cycle==g_links[savedLink].cycle) {
   // Persisted settlement is already certain evidence even when terminal History is filtered later.
   if(terminal) RC_ConfirmIntent(i,target);
   else RC_CancelObsoleteIntent(i);
   continue;
  }
  if(hist>=0 && RC_HistoryUnique(target)) {
   if(RC_history[hist].symbol!=g_intents[i].symbol || RC_history[hist].magic!=g_intents[i].magic) {
    RC_IntentWait(i,"Operation history target contradicts its exact scope"); continue;
   }
   if(terminal) RC_ConfirmIntent(i,target);
   else RC_CancelObsoleteIntent(i);
   continue;
  }
  if(live<0) { RC_IntentWait(i,"Operation target is missing and history is inconclusive"); continue; }
  OrderSnapshot actual=g_orders[live];
  if(actual.symbol!=g_intents[i].symbol || actual.magic!=g_intents[i].magic) {
   RC_IntentWait(i,"Operation target contradicts its exact scope"); continue;
  }
  if(g_intents[i].kind==IK_DELETE && RC_Market(actual.type)) {
   // Exact-ticket activation proves that a pending deletion did not remove this order.
   // OrderDelete cannot close the now-market object; permit essential CLOSE on this actual target.
   RC_CancelObsoleteIntent(i); continue;
  }
  if(g_intents[i].kind==IK_TRAIL && RC_Market(actual.type)) {
   RC_CancelObsoleteIntent(i); continue;
  }
  if(terminal) {
   if(!RC_SupersedeEssentialForRetry(i,actual)) RC_IntentWait(i,"Exit target still exists after an unanswered request");
   continue;
  }
  bool desired=true;
  if(g_intents[i].kind==IK_TRAIL && !RC_SameNumber(actual.price,g_intents[i].price)) desired=false;
  if(g_intents[i].changedSL && !RC_SameNumber(actual.sl,g_intents[i].sl)) desired=false;
  if(g_intents[i].changedTP && !RC_SameNumber(actual.tp,g_intents[i].tp)) desired=false;
  if(desired) RC_ConfirmIntent(i,target);
  else if(!RC_SupersedeEssentialForRetry(i,actual)) RC_IntentWait(i,"Requested modification is not yet certain in the actual order");
 }
 if(!RC_reconciling) RC_GracePolicy(); return !RC_intentUnresolved;
}
bool RC_UpsertLedger(int linkIndex,int historyIndex) {
 OrderLink link=g_links[linkIndex]; OrderSnapshot record=RC_history[historyIndex];
 bool necessary=g_haveActive && link.cycle==g_cycle;
 if(!RC_HistoryUnique(record.ticket,necessary) || !RC_LinkScope(link,record) || record.closeTime<=0 || record.lots<=0) {
  RC_LinkIssue(linkIndex,"History record cannot be uniquely assigned to its saved order identity"); return false;
 }
 int old=RC_LedgerIndex(record.ticket);
 bool newExit=old<0 && RC_Market(record.type);
 if(old>=0 && (g_ledger[old].cycle!=link.cycle || g_ledger[old].occurrence!=link.occurrence ||
               g_ledger[old].side!=link.side || g_ledger[old].stage!=link.stage)) {
  RC_LinkIssue(linkIndex,"Ledger identity conflicts with the persisted order link"); return false;
 }
 if(old>=0 && (g_ledger[old].type!=record.type || !RC_SameNumber(g_ledger[old].lots,record.lots) ||
               g_ledger[old].time!=record.closeTime || !RC_SameNumber(g_ledger[old].price,record.closePrice))) {
  // Profit/commission/swap revisions are supported. A rewritten section identity is not a cost revision.
  RC_LinkIssue(linkIndex,"A closed section changed identity and cannot be treated as a financial revision"); return false;
 }
 if(old<0) {
  old=ArraySize(g_ledger);
  if(ArrayResize(g_ledger,old+1)!=old+1) { RC_Unresolved("Insufficient memory for unique financial records"); return false; }
  g_ledger[old].ticket=record.ticket; g_ledger[old].cycle=link.cycle; g_ledger[old].occurrence=link.occurrence;
  g_ledger[old].side=link.side; g_ledger[old].stage=link.stage; g_ledger[old].type=record.type;
  g_ledger[old].lots=record.lots; g_ledger[old].price=record.closePrice; g_ledger[old].time=record.closeTime;
  g_ledger[old].counted=RC_Market(record.type); g_ledger[old].finalEvidence=false;
  g_ledger[old].observationSequence=g_observationSerial; MarkDirty();
 }
 if(g_ledger[old].profit!=record.profit || g_ledger[old].commission!=record.commission || g_ledger[old].swap!=record.swap) MarkDirty();
 g_ledger[old].profit=record.profit; g_ledger[old].commission=record.commission; g_ledger[old].swap=record.swap;
 ResolveProblem("historical-record-"+IntegerToString(record.ticket));
 if(newExit && link.cycle==g_cycle && g_haveActive && g_exitReason!=XR_START_FAILURE &&
    (g_absent || g_state==GS_RECOVERING) &&
    record.closeTime>g_lastActivityServer) LatchExit(XR_ABSENCE);
 return true;
}
bool RC_CurrentLink(int index,int side) {
 return g_haveActive && g_links[index].cycle==g_cycle && g_links[index].side==side &&
        g_links[index].occurrence==g_side[side].occurrence && g_links[index].stage==g_side[side].stage;
}
void RC_AdoptAcceptedNext(int index) {
 int side=g_links[index].side;
 if(side<0 || side>=SIDES || !g_haveActive || RC_CurrentLink(index,side) || g_links[index].cycle!=g_cycle) return;
 if(g_side[side].phase!=OP_NEXT || g_links[index].occurrence!=g_side[side].occurrence+1 ||
    g_links[index].stage!=g_side[side].targetStage) return;
 bool proof=false;
 for(int i=0;i<ArraySize(g_intents);i++) {
  if(g_intents[i].kind==IK_NEXT && g_intents[i].status==IS_CONFIRMED &&
     g_intents[i].resultTicket==g_links[index].ticket && g_intents[i].cycle==g_cycle &&
     g_intents[i].occurrence==g_links[index].occurrence && g_intents[i].stage==g_links[index].stage &&
     g_intents[i].side==side) { proof=true; break; }
 }
 if(!proof) return;
 // The persisted request and actual accepted order advance this occurrence exactly once.
 // Control, playGeneration and timer-success reporting remain owned by ROOT.
 g_side[side].stage=g_links[index].stage; g_side[side].occurrence=g_links[index].occurrence;
 g_side[side].targetStage=g_side[side].stage;
 g_side[side].phase=OP_NONE;
 g_side[side].tradeSeen=false; MarkDirty();
}
bool RC_GroupLink(int a,int b) {
 return g_links[a].cycle==g_links[b].cycle && g_links[a].side==g_links[b].side &&
        g_links[a].occurrence==g_links[b].occurrence && g_links[a].stage==g_links[b].stage;
}
bool RC_TradedLink(int index) {
 int live=RC_LiveTicket(g_links[index].ticket); if(live>=0 && RC_Market(g_orders[live].type)) return true;
 int record=RC_LedgerIndex(g_links[index].ticket); return record>=0 && RC_Market(g_ledger[record].type);
}
void RC_ObserveLinkedLive(int index,int live) {
 OrderSnapshot actual=g_orders[live];
 if(!RC_LinkScope(g_links[index],actual)) { RC_Unresolved("Live order contradicts its exact saved identity"); return; }
 bool modified=!g_links[index].live || g_links[index].settled || g_links[index].observedLot!=actual.lots ||
               g_links[index].entry!=actual.price || g_links[index].openTime!=actual.openTime;
 g_links[index].live=true; g_links[index].settled=false; g_links[index].observedLot=actual.lots;
 g_links[index].entry=actual.price; g_links[index].openTime=actual.openTime; g_links[index].lastSeenServer=TimeCurrent();
 if(modified) MarkDirty();
 int side=g_links[index].side;
 RC_AdoptAcceptedNext(index);
 if(!RC_CurrentLink(index,side)) {
  g_netAvailable=false; LatchExit(XR_INCONSISTENT);
  Problem("live-membership","SYSTEM","Reconcile","Live order belongs to a different recorded cycle or occurrence",IntegerToString(actual.ticket));
  return;
 }
 g_side[side].ticket=actual.ticket; g_side[side].orderLot=actual.lots;
 if(RC_Pending(actual.type)) {
  if(!RC_SameNumber(actual.lots,g_links[index].initialLot)) {
   g_side[side].initialConfirmed=false; RC_Unresolved("Actual pending volume differs from the exact accepted request volume"); return;
  }
  g_side[side].phase=OP_PENDING; g_side[side].lastPending=actual.price;
  if(RC_Starting() && g_links[index].stage==1) g_side[side].initialConfirmed=true;
 } else {
  g_side[side].phase=OP_OPEN; g_side[side].tradeSeen=true;
  if(RC_Starting()) LatchExit(XR_START_FAILURE);
 }
 MarkDirty();
}
void RC_ObserveLinkedHistory(int index,int hist) {
 OrderSnapshot actual=RC_history[hist];
 RC_AdoptAcceptedNext(index);
 if(RC_Starting() && RC_CurrentLink(index,g_links[index].side) && RC_Market(actual.type)) LatchExit(XR_START_FAILURE);
 if(!RC_UpsertLedger(index,hist)) return;
 if(!g_links[index].settled || g_links[index].live || g_links[index].observedLot!=0.0) MarkDirty();
 g_links[index].live=false; g_links[index].observedLot=0.0; g_links[index].settled=true;
 int side=g_links[index].side;
 if(!RC_CurrentLink(index,side)) return;
 if(RC_Market(actual.type)) { g_side[side].tradeSeen=true; return; }
 if(g_links[index].finalProcessed) return;
 // A confirmed accepted pending deletion is same-stage rebuild, including during Starting.
 // History open price is the final accepted pending location, including a last manual move.
 if(actual.type==SidePendingType(side) && g_links[index].pendingOrigin) {
  if(!RC_SameNumber(actual.lots,g_links[index].initialLot)) {
   RC_Unresolved("Deleted pending order volume differs from its exact accepted volume"); return;
  }
  g_links[index].entry=actual.price; g_links[index].openTime=actual.openTime;
  g_links[index].finalProcessed=true;
  int live=LiveOrderIndex(side);
  if(live<0) {
   g_side[side].ticket=-1; g_side[side].phase=OP_REBUILD;
   g_side[side].targetStage=g_side[side].stage;
   g_side[side].lastPending=actual.price; g_side[side].orderLot=g_links[index].initialLot;
   g_side[side].targetLot=g_links[index].initialLot; g_side[side].targetLotFrozen=true;
   g_side[side].initialConfirmed=false; MarkDirty();
  }
 }
}
bool RC_ValidateCurrentMarketGroup(int side) {
 int root=-1,rootCount=0,marketCount=0,liveCount=0,leaf=-1,leafCount=0;
 double closed=0.0,remaining=0.0; bool processed=true;
 for(int i=0;i<ArraySize(g_links);i++) {
  if(!RC_CurrentLink(i,side) || !RC_TradedLink(i)) continue;
  marketCount++;
  if(!g_links[i].finalProcessed) processed=false;
  if(g_links[i].parentTicket==0) { root=i; rootCount++; }
  else {
   int parent=RC_LinkIndex(g_links[i].parentTicket);
   if(parent<0 || !RC_GroupLink(i,parent) || !RC_TradedLink(parent)) {
    RC_Unresolved("Partial-chain parent is absent or belongs to another stage"); return false;
   }
   int cursor=i,depth=0;
   while(g_links[cursor].parentTicket>0) {
    cursor=RC_LinkIndex(g_links[cursor].parentTicket); depth++;
    if(cursor<0 || depth>ArraySize(g_links)) { RC_Unresolved("Partial-chain ancestry is cyclic or incomplete"); return false; }
   }
  }
  int live=RC_LiveTicket(g_links[i].ticket),record=RC_LedgerIndex(g_links[i].ticket);
  int child=-1,children=0;
  for(int j=0;j<ArraySize(g_links);j++) if(g_links[j].parentTicket==g_links[i].ticket && RC_GroupLink(i,j)) { child=j; children++; }
  if(children>1) { RC_Unresolved("Partial-chain ancestry has multiple remaining branches"); return false; }
  if(live>=0 && RC_Market(g_orders[live].type)) {
   if(record>=0 || children>0) { RC_Unresolved("Live partial section overlaps a closed or descendant section"); return false; }
   liveCount++; remaining+=g_orders[live].lots;
   if(!RC_SameNumber(g_orders[live].lots,g_links[i].initialLot)) {
    RC_Unresolved("Remaining live volume has decreased without uniquely attributed closed sections"); return false;
   }
  } else {
   if(record<0 || !RC_Market(g_ledger[record].type) || !g_links[i].settled) {
    RC_Unresolved("A required closed partial section is unavailable"); return false;
   }
   double expected=g_ledger[record].lots+(child>=0 ? g_links[child].initialLot : 0.0);
   if(!RC_SameNumber(expected,g_links[i].initialLot)) {
    RC_Unresolved("Closed and remaining sections do not conserve the original volume"); return false;
   }
   closed+=g_ledger[record].lots;
   if(children==0) { leaf=i; leafCount++; }
  }
 }
 if(marketCount==0) {
  if(g_side[side].tradeSeen) { RC_Unresolved("A previously observed market stage has no attributable remaining or closed volume"); return false; }
  return true;
 }
 if(rootCount!=1 || liveCount>1 || !RC_SameNumber(closed+remaining,g_links[root].initialLot)) {
  RC_Unresolved("Stage market volume or root identity is inconsistent"); return false;
 }
 if(liveCount>0) return true; // Partial exits are accounted, but never consume a stage.
 if(processed) return true;
 if(leafCount!=1 || leaf<0) { RC_Unresolved("The last closed volume section cannot be identified unequivocally"); return false; }
 int finalRecord=RC_LedgerIndex(g_links[leaf].ticket);
 if(finalRecord<0 || g_ledger[finalRecord].time<=0 || g_ledger[finalRecord].price<=0) {
  RC_Unresolved("The final closed section has no valid close time or price"); return false;
 }
 for(int p=0;p<ArraySize(g_links);p++) {
  if(!RC_CurrentLink(p,side) || !RC_TradedLink(p)) continue;
  int record=RC_LedgerIndex(g_links[p].ticket);
  if(record<0 || g_ledger[record].time>g_ledger[finalRecord].time) {
   RC_Unresolved("Final close chronology conflicts with the certain partial-chain order"); return false;
  }
 }
 // A unique terminal descendant proves order even when parent and child server times are equal.
 // History enumeration, ticket size and price averages are never ordering evidence.
 g_ledger[finalRecord].finalEvidence=true;
 g_side[side].finalClose=g_ledger[finalRecord].price; g_side[side].finalCloseTime=g_ledger[finalRecord].time;
 g_side[side].finalKnown=true; g_side[side].ticket=-1; g_side[side].orderLot=0.0;
 if(RC_Starting()) { g_side[side].phase=OP_NONE; LatchExit(XR_START_FAILURE); }
 else {
  if(g_side[side].phase!=OP_NEXT) g_side[side].targetStage=g_side[side].stage==STAGES ? 1 : g_side[side].stage+1;
  g_side[side].phase=OP_NEXT; g_side[side].targetLotFrozen=false;
 }
 for(int q=0;q<ArraySize(g_links);q++) if(RC_CurrentLink(q,side) && RC_TradedLink(q)) g_links[q].finalProcessed=true;
 MarkDirty(); return true;
}
bool ReconcileOrdersAndHistory() {
 RC_orderUnresolved=false; RC_scopeMemberUnassigned=false; RC_reconciling=true;
 bool gapReconciliation=g_haveActive && (g_absent || g_state==GS_RECOVERING);
 datetime activityCutoff=g_lastActivityServer;
 if(!RC_scanHealthy) {
  RC_Unresolved("A complete live order snapshot is required before reconciliation");
  RC_reconciling=false; RC_GracePolicy(); return false;
 }
 if(!RC_ReadHistory()) { RC_reconciling=false; RC_GracePolicy(); return false; }
 ReconcileIntents(); RC_DiscoverPartials();
 // Retain and revise every historical link, including completed cycles and previous scopes.
 for(int link=0;link<ArraySize(g_links);link++) {
  int live=RC_LiveTicket(g_links[link].ticket),hist=RC_HistoryIndex(g_links[link].ticket);
  if(live>=0 && hist>=0) { RC_Unresolved("Same ticket has inseparable live and historical sections"); continue; }
  if(live>=0) RC_ObserveLinkedLive(link,live);
  else if(hist>=0) RC_ObserveLinkedHistory(link,hist);
  else if(g_haveActive && !g_links[link].settled && !g_links[link].finalProcessed && g_links[link].cycle==g_cycle) {
   g_links[link].live=false; g_links[link].observedLot=0.0;
   RC_Unresolved("Previously accepted order is absent and its required history is unavailable");
  }
 }
 for(int order=0;order<ArraySize(g_orders);order++) {
  if(RC_LinkIndex(g_orders[order].ticket)<0) {
   RC_scopeMemberUnassigned=true; g_netAvailable=false;
   // An active cycle may gain exact partial/intent proof within history grace.
   // Only cleanup with no active cycle is already irrecoverably unassigned here.
   if(!g_haveActive) { g_resultKind=RK_UNAVAILABLE; MarkDirty(); }
   RC_Unresolved("Managed live order lacks certain cycle and partial-chain attribution");
  }
 }
 if(gapReconciliation) for(int record=0;record<ArraySize(RC_history);record++) {
  if(!RC_Market(RC_history[record].type) || RC_history[record].closeTime<activityCutoff ||
     RC_history[record].symbol!=g_managedSymbol ||
     (RC_history[record].magic!=SideMagic(BUY_SIDE) && RC_history[record].magic!=SideMagic(SELL_SIDE)) ||
     RC_LinkIndex(RC_history[record].ticket)>=0 || RC_PriorCleanupRecord(RC_history[record])) continue;
  // An older healthy backup can predate an accepted order and its entire exit.
  // Equality with the activity time is not an absence exit (20.18), but still
  // cannot supply missing cycle attribution. Known older-cycle links were excluded.
  // Do not silently resume its stale target or guess this record's cycle/P&L.
  RC_scopeMemberUnassigned=true; g_netAvailable=false;
  RC_Unresolved("Managed market history after the trusted activity cutoff lacks exact cycle attribution");
 }
 for(int side=0;side<SIDES;side++) {
  if(!g_haveActive) continue;
  if((g_side[side].phase==OP_PENDING || g_side[side].phase==OP_OPEN || g_side[side].phase==OP_UNRESOLVED) &&
     RC_LinkIndex(g_side[side].ticket)<0) RC_Unresolved("Saved current order phase lacks an exact accepted order identity");
  if(g_side[side].phase==OP_NEXT && (!g_side[side].finalKnown || g_side[side].finalClose<=0.0 ||
     g_side[side].targetStage<1 || g_side[side].targetStage>STAGES)) RC_Unresolved("Saved next stage lacks a certain final close reference");
  if(g_side[side].phase==OP_REBUILD && (g_side[side].lastPending<=0.0 || g_side[side].targetLot<=0.0))
   RC_Unresolved("Saved pending rebuild lacks the original accepted location or volume");
  RC_ValidateCurrentMarketGroup(side);
  if(RC_Starting()) {
   int actual=LiveOrderIndex(side);
   if(actual<0 || g_orders[actual].type!=SidePendingType(side)) g_side[side].initialConfirmed=false;
  }
 }
 // Unassigned standalone costs are deliberately excluded. They do not trigger cleanup.
 bool unassignedCost=false;
 for(int cost=0;cost<ArraySize(RC_history);cost++) {
  if(RC_Market(RC_history[cost].type) || RC_Pending(RC_history[cost].type) || RC_LinkIndex(RC_history[cost].ticket)>=0) continue;
  if(RC_history[cost].profit!=0.0 || RC_history[cost].commission!=0.0 || RC_history[cost].swap!=0.0) unassignedCost=true;
 }
 if(unassignedCost) Problem("unassigned-cost","SYSTEM","Accounting","Standalone costs cannot be assigned to a specific cycle","Result includes only costs with certain cycle attribution.");
 else ResolveProblem("unassigned-cost");
 if(RC_orderUnresolved || RC_intentUnresolved) g_netAvailable=false;
 RC_reconciling=false; RC_GracePolicy();
 return !RC_orderUnresolved && !RC_intentUnresolved;
}


// Accounting and user-presence timer. All times below are logical milliseconds.
// These flags are process-local baselines, never replacement recovery evidence.
bool g_atClockInitialized=false;
bool g_atClockRestored=false;

bool AT_CyclePresent()
{
 return(g_haveActive && g_cycle>0 &&
        (g_state==GS_STARTING || g_state==GS_RUNNING ||
         g_state==GS_EXITING || g_state==GS_RECOVERING));
}

long AT_RemainingSeconds()
{
 if(g_timer!=TM_RUNNING || g_timerDeadline<=g_now) return(0);
 ulong left=g_timerDeadline-g_now;
 return((long)(left/1000)+(left%1000>0 ? 1 : 0));
}

void AT_ObsoleteOrdinaryIntents()
{
 for(int i=0;i<ArraySize(g_intents);i++)
 {
  if(g_intents[i].cycle!=g_cycle || g_intents[i].obsolete) continue;
  if(g_intents[i].status!=IS_PREPARED && g_intents[i].status!=IS_UNKNOWN) continue;
  int kind=g_intents[i].kind;
  // 20.51: initial completion, including an accepted initial's rebuild,
  // continues while paused; its actual result must still be reconciled.
  bool initialPhase=(g_state==GS_STARTING ||
                     (g_state==GS_RECOVERING && g_savedState==GS_STARTING));
  if(kind==IK_INITIAL || (initialPhase && kind==IK_REBUILD)) continue;
  if(kind!=IK_NEXT && kind!=IK_REBUILD && kind!=IK_TRAIL && kind!=IK_PLAY) continue;
  g_intents[i].obsolete=true;
  if(!g_intents[i].sent && g_intents[i].status==IS_PREPARED)
   g_intents[i].status=IS_CANCELLED;
 }
}

void AT_ExpireTimer(string reason)
{
 bool changed=(g_timer!=TM_EXPIRED || !g_expiryBlock);
 g_timer=TM_EXPIRED;
 g_timerDeadline=g_now;
 g_timerRemainingSaved=0;
 g_expiryBlock=true;
 if(changed)
 {
  AT_ObsoleteOrdinaryIntents();
  if(AT_CyclePresent())
  {
   // Root keeps the frozen stage/lot target and reconciles any late effect.
   // Initial registration is not a successful Play (20.51).
   RequestPause(BUY_SIDE,true);
   RequestPause(SELL_SIDE,true);
  }
  Problem("timer-expiry","SYSTEM","Pause",reason,
          "Timer expired; automatic restart remains blocked until a successful Play.");
  MarkDirty();
 }
}

void UpdateClock()
{
 uint raw=GetTickCount();
 datetime utc=TimeGMT();
 if(!g_atClockInitialized)
 {
  g_rawCounter=raw;
  g_lastCounter=(ulong)raw;
  g_lastUtc=utc;
  g_atClockInitialized=true;
  return;
 }
 // Unsigned subtraction is modulo 2^32, so the native counter wrap cannot
 // reverse logical time or extend a deadline.
 uint step=(uint)(raw-g_rawCounter);
 g_now+=(ulong)step;
 g_logicalElapsed+=(ulong)step;
 bool uncertain=false;
 if(g_lastUtc>0 && utc>0)
 {
  long utcStep=(long)utc-(long)g_lastUtc;
  double difference=(double)utcStep-(double)step/1000.0;
  uncertain=(utcStep<0 || MathAbs(difference)>5.0);
 }
 else uncertain=true;
 g_rawCounter=raw;
 g_lastCounter=(ulong)raw;
 g_lastUtc=utc;
 if(uncertain && g_timer==TM_RUNNING)
  AT_ExpireTimer("Clock is uncertain: UTC moved backward or differs from elapsed time by more than 5 seconds.");
 if(g_timer==TM_RUNNING) g_timerRemainingSaved=AT_RemainingSeconds();
}

void RestoreTimerClock()
{
 // Root calls this exactly once after LoadState and before reconciliation.
 if(g_atClockRestored) return;
 g_atClockRestored=true;
 uint raw=GetTickCount();
 datetime utc=TimeGMT();
 ulong restoredNow=g_now;
 ulong restoredDeadline=g_timerDeadline;
 bool trustworthy=(g_savedUtc>0 && utc>0 && utc>=g_savedUtc);
 long downtime=0;
 if(trustworthy) downtime=(long)utc-(long)g_savedUtc;
 if(g_now!=g_logicalElapsed)
 {
  // Both are persisted views of the same logical clock. A mismatch is not
  // evidence from which retries, history grace or a timer may be guessed.
  trustworthy=false;
  if(g_logicalElapsed>g_now) g_now=g_logicalElapsed;
  else g_logicalElapsed=g_now;
 }
 if(trustworthy)
 {
  ulong delta=(ulong)downtime*1000;
  g_now+=delta;
  g_logicalElapsed+=delta;
 }
 g_rawCounter=raw;
 g_lastCounter=(ulong)raw;
 g_lastUtc=utc;
 g_atClockInitialized=true;
 g_timer=g_savedTimer;
 if(g_savedTimer==TM_RUNNING)
 {
  // A positive, otherwise undetectable clock change during shutdown cannot
  // be proved from native UTC alone; no such guarantee is claimed.
  bool deadlineValid=(restoredDeadline>restoredNow);
  long deadlineRemaining=0;
  if(deadlineValid)
  {
   ulong ms=restoredDeadline-restoredNow;
   deadlineRemaining=(long)(ms/1000)+(ms%1000>0 ? 1 : 0);
   deadlineValid=(deadlineRemaining==g_savedRemaining && deadlineRemaining<86400);
  }
  if(!trustworthy || !deadlineValid || g_savedRemaining<=0 || restoredDeadline<=g_now)
   AT_ExpireTimer(!trustworthy ? "Saved timer time is not trustworthy." : "Timer elapsed while the EA was absent.");
  else
  {
   // Keep the exact logical deadline. Rebuilding from displayed whole
   // seconds would silently extend the saved subsecond remainder.
   g_timerDeadline=restoredDeadline;
   g_timerRemainingSaved=AT_RemainingSeconds();
  }
 }
 else if(g_savedTimer==TM_EXPIRED)
 {
  g_timerDeadline=g_now;
  g_timerRemainingSaved=0;
  g_expiryBlock=true;
  AT_ObsoleteOrdinaryIntents();
  if(AT_CyclePresent())
  {
   RequestPause(BUY_SIDE,true);
   RequestPause(SELL_SIDE,true);
  }
 }
 else
 {
  g_timer=TM_OFF;
  g_timerDeadline=0;
  g_timerRemainingSaved=0;
 }
 MarkDirty();
}

void EvaluateTimer()
{
 if(g_timer==TM_RUNNING)
 {
  g_timerRemainingSaved=AT_RemainingSeconds();
  if(g_timerDeadline<=g_now) AT_ExpireTimer("Applied timer duration elapsed.");
 }
}

bool AT_ValidDuration(long seconds)
{
 return(seconds>0 && seconds<86400);
}

void ApplyTimerDuration(long seconds)
{
 if(!AT_ValidDuration(seconds))
 {
  Problem("timer-duration","SYSTEM","Apply Time",
          "Time duration is invalid.",
          "Rejected value "+IntegerToString(seconds)+" seconds; required total: 1 to 86399 seconds, hours 0..23, minutes and seconds 0..59.");
  return;
 }
 UpdateClock();
 EvaluateTimer();
 g_duration=seconds;
 if(g_timer==TM_RUNNING)
 {
  g_timerDeadline=g_now+(ulong)seconds*1000;
  g_timerRemainingSaved=seconds;
 }
 // Off and Expired keep their state; an edited draft is owned by the panel.
 ResolveProblem("timer-duration");
 MarkDirty();
}

void StartTimer()
{
 UpdateClock();
 EvaluateTimer();
 if(!g_haveActive || g_cycle<=0 || g_exitLatched ||
    (g_state!=GS_STARTING && g_state!=GS_RUNNING) ||
    g_timer==TM_RUNNING || !AT_ValidDuration(g_duration)) return;
 g_timer=TM_RUNNING;
 g_timerDeadline=g_now+(ulong)g_duration*1000;
 g_timerRemainingSaved=g_duration;
 // Start after Expired deliberately preserves the independent block.
 ResolveProblem("timer-duration");
 MarkDirty();
}

void ResetTimer()
{
 UpdateClock();
 EvaluateTimer();
 if(g_timer!=TM_RUNNING || g_exitLatched ||
    (g_state!=GS_STARTING && g_state!=GS_RUNNING) ||
    !AT_ValidDuration(g_duration)) return;
 g_timerDeadline=g_now+(ulong)g_duration*1000;
 g_timerRemainingSaved=g_duration;
 MarkDirty();
}

void OnSuccessfulPlay(int side)
{
 UpdateClock();
 EvaluateTimer();
 if(side<0 || side>=SIDES || !AT_CyclePresent() || g_exitLatched ||
    g_state!=GS_RUNNING || g_side[side].control!=SC_PLAYING ||
    g_side[side].pauseRequested) return;
 // This hook is called only after an actual Play result is confirmed.
 bool firstAfterExpiry=g_expiryBlock;
 if(firstAfterExpiry)
 {
  g_expiryBlock=false;
  if(g_timer!=TM_RUNNING)
  {
   if(!AT_ValidDuration(g_duration))
   {
    g_expiryBlock=true;
    AT_ExpireTimer("Applied timer duration is invalid.");
    return;
   }
   g_timer=TM_RUNNING;
   g_timerDeadline=g_now+(ulong)g_duration*1000;
   g_timerRemainingSaved=g_duration;
  }
  ResolveProblem("timer-expiry");
  MarkDirty();
 }
 // An ordinary Play with Off and no expiry block leaves the timer Off.
 // A Running deadline is never extended by either side's Play.
}

bool AT_MarketRecord(int type)
{
 return(type==OP_BUY || type==OP_SELL);
}

bool AT_RecordIdentityEqual(LedgerRecord &a,LedgerRecord &b)
{
 return(a.ticket==b.ticket && a.cycle==b.cycle &&
        a.occurrence==b.occurrence && a.side==b.side && a.stage==b.stage &&
        a.type==b.type && a.lots==b.lots && a.price==b.price && a.time==b.time);
}

bool AT_RecordMoneyEqual(LedgerRecord &a,LedgerRecord &b)
{
 return(a.profit==b.profit && a.commission==b.commission && a.swap==b.swap);
}

int AT_UniqueLedgerIndex(int index,bool &known)
{
 known=true;
 if(index<0 || index>=ArraySize(g_ledger)) { known=false; return(-1); }
 if(g_ledger[index].ticket<=0 || g_ledger[index].cycle<=0 ||
    g_ledger[index].occurrence<=0 ||
    g_ledger[index].side<0 || g_ledger[index].side>=SIDES ||
    g_ledger[index].stage<1 || g_ledger[index].stage>STAGES)
 { known=false; return(-1); }
 int latest=index;
 for(int j=0;j<ArraySize(g_ledger);j++)
 {
  if(j==index || !g_ledger[j].counted || !AT_MarketRecord(g_ledger[j].type) ||
     g_ledger[j].ticket!=g_ledger[index].ticket) continue;
  if(!AT_RecordIdentityEqual(g_ledger[index],g_ledger[j]))
  { known=false; return(-1); }
  if(g_ledger[j].observationSequence>g_ledger[latest].observationSequence)
   latest=j;
  else if(g_ledger[j].observationSequence==g_ledger[latest].observationSequence)
  {
   if(!AT_RecordMoneyEqual(g_ledger[j],g_ledger[latest]))
   { known=false; return(-1); }
   if(j<latest) latest=j;
  }
 }
 return(latest);
}

double AT_LedgerCycleSum(long cycle,bool &known)
{
 known=true;
 double total=0.0;
 for(int i=0;i<ArraySize(g_ledger);i++)
 {
  if(!g_ledger[i].counted || !AT_MarketRecord(g_ledger[i].type) ||
     g_ledger[i].cycle!=cycle) continue;
  bool uniqueKnown=false;
  int unique=AT_UniqueLedgerIndex(i,uniqueKnown);
  if(!uniqueKnown) { known=false; continue; }
  if(unique!=i) continue;
  double value=g_ledger[i].profit+g_ledger[i].commission+g_ledger[i].swap;
  if(!MathIsValidNumber(g_ledger[i].profit) ||
     !MathIsValidNumber(g_ledger[i].commission) ||
     !MathIsValidNumber(g_ledger[i].swap) || !MathIsValidNumber(value))
  { known=false; continue; }
  total+=value;
  if(!MathIsValidNumber(total)) known=false;
 }
 return(total);
}

int AT_ExactCurrentLink(OrderSnapshot &order)
{
 int found=-1;
 for(int i=0;i<ArraySize(g_links);i++)
 {
  if(g_links[i].ticket!=order.ticket) continue;
  if(g_links[i].cycle!=g_cycle || g_links[i].side!=order.side ||
     g_links[i].symbol!=order.symbol || g_links[i].magic!=order.magic ||
     g_links[i].stage<1 || g_links[i].stage>STAGES ||
     g_links[i].occurrence<=0) return(-1);
  if(order.side==BUY_SIDE && g_links[i].originType!=OP_BUY &&
     g_links[i].originType!=OP_BUYSTOP) return(-1);
  if(order.side==SELL_SIDE && g_links[i].originType!=OP_SELL &&
     g_links[i].originType!=OP_SELLSTOP) return(-1);
  if(found>=0) return(-1);
  found=i;
 }
 return(found);
}

int AT_ArchiveIndex(long cycle)
{
 for(int i=0;i<ArraySize(g_archives);i++) if(g_archives[i].id==cycle) return(i);
 return(-1);
}

bool AT_RecordTouchesCurrent(LedgerRecord &record)
{
 if(record.cycle==g_cycle) return(true);
 for(int i=0;i<ArraySize(g_links);i++)
  if(g_links[i].cycle==g_cycle && g_links[i].ticket==record.ticket) return(true);
 for(int j=0;j<ArraySize(g_intents);j++)
  if(g_intents[j].cycle==g_cycle &&
     (g_intents[j].ticket==record.ticket || g_intents[j].resultTicket==record.ticket))
   return(true);
 return(false);
}

void AT_RefreshArchives()
{
 for(int i=0;i<ArraySize(g_archives);i++)
 {
  bool known=false;
  double value=AT_LedgerCycleSum(g_archives[i].id,known);
  if(g_archives[i].net!=value)
  {
   g_archives[i].net=value;
   MarkDirty();
  }
  if(!known && g_archives[i].resultKind!=RK_UNAVAILABLE &&
     g_archives[i].resultKind!=RK_FAILED_START)
  {
   g_archives[i].resultKind=RK_UNAVAILABLE;
   MarkDirty();
  }
  // The last completed cycle can still be shown in Standby. Once a new
  // cycle starts, even a later cost correction changes only this archive.
  if(g_archives[i].id==g_cycle && !AT_CyclePresent())
  {
   if(g_archives[i].resultKind==RK_FAILED_START)
   {
    if(g_lastResult!=0.0 || g_net!=0.0 || g_resultKind!=RK_FAILED_START)
    { g_lastResult=0.0; g_net=0.0; g_resultKind=RK_FAILED_START; MarkDirty(); }
    g_netAvailable=true;
   }
   else if(g_archives[i].resultKind==RK_UNAVAILABLE)
   {
    g_resultKind=RK_UNAVAILABLE;
    g_netAvailable=false;
   }
   else
   {
    if(g_lastResult!=value || g_net!=value || g_resultKind!=RK_FINISHED)
    { g_lastResult=value; g_net=value; g_resultKind=RK_FINISHED; MarkDirty(); }
    g_netAvailable=known;
   }
  }
 }
}

void RefreshAccounting()
{
 AT_RefreshArchives();
 if(!AT_CyclePresent())
 {
  if((g_state==GS_BLOCKED && !g_identityKnown) ||
     (g_state==GS_EXITING && g_cycle<=0 && g_resultKind==RK_UNAVAILABLE))
  { g_netAvailable=false; g_resultKind=RK_UNAVAILABLE; }
  return;
 }
 if(g_resultKind==RK_FINISHED) return;
 bool known=false;
 double total=AT_LedgerCycleSum(g_cycle,known);
 bool unassigned=!known;
 known=(known && g_identityKnown && ScopeIdentifiable() &&
        g_historyReady && !g_graceActive);
 // Market records without a cycle assignment are not harmless zeros.
 // Broker balance/charge records of another type remain outside the sum.
 for(int u=0;u<ArraySize(g_ledger);u++)
 {
  if(!AT_MarketRecord(g_ledger[u].type)) continue;
  if(g_ledger[u].counted && g_ledger[u].cycle<=0 &&
     AT_RecordTouchesCurrent(g_ledger[u]))
  { known=false; unassigned=true; }
  else if(g_ledger[u].cycle==g_cycle && !g_ledger[u].counted) known=false;
 }
 for(int i=0;i<ArraySize(g_orders);i++)
 {
  if(!IsManagedOrder(g_orders[i])) continue;
  int link=AT_ExactCurrentLink(g_orders[i]);
  if(link<0) { known=false; unassigned=true; continue; }
  bool repeated=false;
  for(int p=0;p<i;p++) if(g_orders[p].ticket==g_orders[i].ticket)
  { repeated=true; known=false; unassigned=true; break; }
  if(repeated || !AT_MarketRecord(g_orders[i].type)) continue;
  double value=g_orders[i].profit+g_orders[i].commission+g_orders[i].swap;
  if(!MathIsValidNumber(g_orders[i].profit) ||
     !MathIsValidNumber(g_orders[i].commission) ||
     !MathIsValidNumber(g_orders[i].swap) || !MathIsValidNumber(value))
  { known=false; continue; }
  total+=value;
  if(!MathIsValidNumber(total)) known=false;
 }
 for(int k=0;k<ArraySize(g_links);k++)
 {
  if(g_links[k].cycle!=g_cycle || g_links[k].settled) continue;
  bool present=false;
  for(int q=0;q<ArraySize(g_orders);q++)
   if(g_orders[q].ticket==g_links[k].ticket &&
      AT_ExactCurrentLink(g_orders[q])==k) { present=true; break; }
  if(!present) known=false;
 }
 // A temporary history gap affects availability only. An irrecoverable
 // unassigned member survives its cleanup through the persisted result kind.
 if(unassigned && (HistoryGraceExpired() || (g_exitLatched && !g_graceActive)) &&
    g_resultKind!=RK_UNAVAILABLE && g_resultKind!=RK_FAILED_START)
 { g_resultKind=RK_UNAVAILABLE; MarkDirty(); }
 if(g_resultKind==RK_UNAVAILABLE) known=false;
 if(g_net!=total || g_netAvailable!=known) MarkDirty();
 g_net=total;
 g_netAvailable=known;
 if(!known)
  Problem("accounting-membership","SYSTEM","Accounting",
          "Result unavailable: current-cycle membership or financial evidence is incomplete.",
          "No missing financial record or unknown order is treated as zero.");
 else ResolveProblem("accounting-membership");
}

void EvaluateLimits()
{
 if(g_exitLatched || !AT_CyclePresent() || !g_netAvailable ||
    (g_state!=GS_STARTING && g_state!=GS_RUNNING && g_state!=GS_RECOVERING)) return;
 // The unrounded computational amount is compared, including equality.
 if(g_profitTarget>0.0 && g_net>=g_profitTarget) LatchExit(XR_PROFIT);
 else if(g_lossLimit>0.0 && g_net<=-g_lossLimit) LatchExit(XR_LOSS);
}

void StartCycleAccounting()
{
 // Root allocates the new cycle identity before this call. Historical
 // links and records are retained for late, exactly attributable costs.
 g_net=0.0;
 g_lastResult=0.0;
 g_netAvailable=true;
 g_resultKind=RK_CURRENT;
 ResolveProblem("accounting-membership");
 MarkDirty();
}

void FinalizeCycleAccounting()
{
 // Cleanup must actually be complete; an unanswered creation is not empty.
 if(!ScopeEmpty()) return;
 // Empty live scope does not settle temporarily delayed financial history.
 // Keep the completed cleanup in Exiting until exact records arrive or the
 // existing 30-second grace expires; only then may unavailability be final.
 if(g_graceActive && !HistoryGraceExpired()) return;
 // A Standby Stop may have waited for a connected empty snapshot. It did
 // not start a cycle and must not rewrite the previous archive or turn the
 // initial zero into an unknown cleanup result. Trading detaches cycle=0
 // and latches RK_UNAVAILABLE only after observing an actual cleanup order.
 if(!g_haveActive && (g_cycle>0 || g_resultKind!=RK_UNAVAILABLE)) {
  AT_RefreshArchives();
  return;
 }
 bool failedStart=(g_resultKind==RK_FAILED_START ||
                   (g_haveActive && g_cycle>0 && g_initialProgress<2));
 RefreshAccounting();
 bool known=(g_netAvailable && g_resultKind!=RK_UNAVAILABLE && g_haveActive && g_cycle>0);
 int result=(failedStart ? RK_FAILED_START : (known ? RK_FINISHED : RK_UNAVAILABLE));
 int archive=AT_ArchiveIndex(g_cycle);
 if(g_cycle>0)
 {
  if(archive<0)
  {
   int size=ArraySize(g_archives);
   if(ArrayResize(g_archives,size+1)!=size+1)
   {
    g_storeHealthy=false;
    Problem("accounting-archive","SYSTEM","Finalize",
            "The cycle result could not be retained in memory.",
            "The finished result remains visible; ordinary new operations require healthy storage.");
   }
   else archive=size;
  }
  if(archive>=0)
  {
   g_archives[archive].id=g_cycle;
   g_archives[archive].net=g_net;
   g_archives[archive].resultKind=result;
   g_archives[archive].ended=TimeCurrent();
   ResolveProblem("accounting-archive");
  }
 }
 string report="Cycle "+IntegerToString(g_cycle)+" completed; attributable net="+
               DoubleToString(g_net,8)+" "+AccountCurrency()+
               "; reason="+IntegerToString(g_exitReason)+
               "; result="+IntegerToString(result)+
               "; financial evidence="+(known ? "complete" : "incomplete")+
               ". Result includes only attributable costs; separate costs with unknown attribution are excluded.";
 Print(report);
 g_resultKind=result;
 if(result==RK_FAILED_START)
 {
  // Real failed-start costs remain in the archive/report, after cleanup.
  g_lastResult=0.0;
  g_net=0.0;
  g_netAvailable=true;
 }
 else if(result==RK_FINISHED) g_lastResult=g_net;
 else
 {
  g_netAvailable=false;
  Problem("accounting-membership","SYSTEM","Finalize",
          "Result unavailable: cleanup order membership could not be established.",report);
 }
 MarkDirty();
}

bool TradingAvailable()
{
 // IsTradeAllowed() would also classify a busy trade context as absence.
 // Request serialization and that transient busy condition belong to root.
 if(IsStopped() || !IsConnected()) return(false);
 if(!TerminalInfoInteger(TERMINAL_TRADE_ALLOWED) ||
    !MQLInfoInteger(MQL_TRADE_ALLOWED) ||
    !AccountInfoInteger(ACCOUNT_TRADE_ALLOWED) ||
    !AccountInfoInteger(ACCOUNT_TRADE_EXPERT)) return(false);
 return(true);
}

void UpdateAbsence()
{
 if(!TradingAvailable() && !g_absent)
 {
  g_absent=true;
  MarkDirty();
 }
 // Returning permission does not erase absence. Reconciliation must first
 // compare every actual close with the preserved last server activity.
}

void MarkActivity()
{
 if(!TradingAvailable() || !g_historyReady || g_graceActive ||
    g_state==GS_RECOVERING || g_state==GS_BLOCKED || !g_identityKnown) return;
 datetime server=TimeCurrent();
 if(server<=0) return;
 bool changed=g_absent;
 if(server>g_lastActivityServer)
 { g_lastActivityServer=server; changed=true; }
 g_absent=false;
 if(changed) MarkDirty();
}


// ---------- Trade journal and state machine (spec 5-14,20.5,20.7,20.27-30,20.51) ----------
// The four broker mutation APIs occur ONLY in TR_Execute(). All other routines
// prepare durable intentions or react to exact, observed broker evidence.
bool TR_Creation(int kind){return kind==IK_INITIAL||kind==IK_NEXT||kind==IK_REBUILD;}
bool TR_PendingType(int type){return type==OP_BUYLIMIT||type==OP_SELLLIMIT||type==OP_BUYSTOP||type==OP_SELLSTOP;}
bool TR_MarketType(int type){return type==OP_BUY||type==OP_SELL;}
bool TR_Unanswered(OperationIntent &intent){
 if(!intent.sent||(intent.status!=IS_PREPARED&&intent.status!=IS_UNKNOWN))return false;
 // A reconciled, superseded essential attempt remains UNKNOWN in the journal.
 // It does not prevent retrying an idempotent action on the exact current object.
 if(intent.obsolete&&((intent.essential&&(intent.kind==IK_DELETE||intent.kind==IK_CLOSE))||
    intent.kind==IK_PAUSE||intent.kind==IK_ROLLBACK))return false;
 return true;
}
bool TR_Same(double a,double b){return MathAbs(a-b)<=MathMax(1e-10,g_rules.tick*1e-7);}
string TR_Action(int kind){
 if(kind==IK_INITIAL)return "Initial pending";
 if(kind==IK_NEXT)return "Next pending";
 if(kind==IK_REBUILD)return "Rebuild pending";
 if(kind==IK_TRAIL)return "Trailing";
 if(kind==IK_PAUSE)return "Pause";
 if(kind==IK_PLAY)return "Play";
 if(kind==IK_ROLLBACK)return "Rollback Play";
 if(kind==IK_DELETE)return "Delete pending";
 if(kind==IK_CLOSE)return "Close trade";
 return "Trade request";
}
string TR_Key(int kind,int side,int ticket){return "trade-"+IntegerToString(kind)+"-"+IntegerToString(side)+"-"+IntegerToString(ticket);}
string TR_ErrorReason(int code){
 if(code==128)return "The server result is unknown after a timeout";
 if(code==6)return "Connection was lost; the server result requires reconciliation";
 if(code==129)return "The broker rejected the requested price";
 if(code==130)return "The broker rejected SL/TP or a dynamic distance restriction";
 if(code==131)return "The broker rejected the order volume";
 if(code==132)return "Market closed";
 if(code==133||code==4109)return "Trading is disabled or not permitted";
 if(code==134)return "Insufficient account funds";
 if(code==135)return "The price changed before the request was accepted";
 if(code==136)return "The broker has no usable quote";
 if(code==137||code==4)return "The broker or trade server is busy";
 if(code==138)return "The broker requoted the requested price";
 if(code==139)return "The order is locked by the broker";
 if(code==145)return "The modification is denied near the market or FreezeLevel";
 if(code==146)return "The terminal trade context is busy";
 if(code==147)return "The broker rejected expiration parameters";
 if(code==148)return "The broker order-count limit was reached";
 if(code==149)return "The broker prohibits hedging";
 if(code==150)return "The broker requires FIFO execution";
 if(code==4108)return "The target ticket no longer exists";
 if(code==1)return "The broker reported no change";
 return "Broker request failed; error "+IntegerToString(code);
}
bool TR_DefiniteError(int code){
 // Unclassified failures, common error, disconnection and timeout are uncertain.
 switch(code){
  case 1:case 3:case 4:case 5:case 7:case 8:case 64:case 65:
  case 129:case 130:case 131:case 132:case 133:case 134:case 135:
  case 136:case 137:case 138:case 139:case 140:case 141:case 145:
  case 146:case 147:case 148:case 149:case 150:case 4051:
  case 4108:case 4109:case 4110:case 4111:return true;
 }
 return false;
}
int TR_TicketIndex(int ticket){for(int i=0;i<ArraySize(g_orders);i++)if(g_orders[i].ticket==ticket)return i;return -1;}
int TR_IntentIndex(long id){for(int i=ArraySize(g_intents)-1;i>=0;i--)if(g_intents[i].id==id)return i;return -1;}
bool IntentPendingFor(int side,int ticket=-1){
 for(int i=0;i<ArraySize(g_intents);i++){
  if(g_intents[i].cycle!=g_cycle||g_intents[i].side!=side)continue;
  if(!TR_Unanswered(g_intents[i]))continue;
  if(ticket<0||g_intents[i].ticket==ticket||TR_Creation(g_intents[i].kind))return true;
 }
 return false;
}
bool TR_RequestBlocked(int kind,int side,int ticket){
 for(int i=0;i<ArraySize(g_intents);i++){
  if(g_intents[i].cycle!=g_cycle||!TR_Unanswered(g_intents[i]))continue;
  if(TR_Creation(kind)){
   if(g_intents[i].side==side)return true;
  }else if(g_intents[i].ticket==ticket){
   // Cleanup and removal may supersede a delayed normal modifier. The late
   // modifier is still reconciled and cannot authorize a new entry or Play.
   if(kind==IK_DELETE||kind==IK_CLOSE){
    if(g_intents[i].kind==IK_DELETE||g_intents[i].kind==IK_CLOSE)return true;
   }else if(kind==IK_PAUSE||kind==IK_ROLLBACK){
    if(g_intents[i].kind==IK_PAUSE||g_intents[i].kind==IK_ROLLBACK||
       g_intents[i].kind==IK_DELETE||g_intents[i].kind==IK_CLOSE)return true;
   }else return true;
  }
 }
 return false;
}
bool TR_RetryDue(int kind,int side,int ticket){
 for(int i=ArraySize(g_intents)-1;i>=0;i--){
  if(g_intents[i].cycle!=g_cycle||g_intents[i].kind!=kind||
     g_intents[i].side!=side||g_intents[i].ticket!=ticket)continue;
  if(TR_Unanswered(g_intents[i]))return false;
  if(g_intents[i].sent&&g_intents[i].status==IS_FAILED)
   return g_now>=g_intents[i].attemptedAt&&g_now-g_intents[i].attemptedAt>=RetryDelay();
  return true;
 }
 return true;
}
void TR_ObsoleteNormal(int side=-1){
 for(int i=0;i<ArraySize(g_intents);i++){
  if(g_intents[i].cycle!=g_cycle||(side>=0&&g_intents[i].side!=side))continue;
  int kind=g_intents[i].kind;
  if(kind==IK_DELETE||kind==IK_CLOSE||kind==IK_PAUSE||kind==IK_ROLLBACK)continue;
  // 20.51: an initial request already sent must remain an initial request.
  // Its actual result is required to complete Starting with Pause preserved.
  if(kind==IK_INITIAL&&g_state==GS_STARTING&&!g_exitLatched&&g_intents[i].sent)continue;
  g_intents[i].obsolete=true;
  if(!g_intents[i].sent)g_intents[i].status=IS_CANCELLED;
 }
 MarkDirty();
}
void ReconcileAfterRequest(){
 UpdateClock();
 if(!ScopeIdentifiable())return;
 ScanOrders();
 ReconcileOrdersAndHistory();
 ReconcileIntents();
 RefreshAccounting();
 EvaluateLimits();
 EvaluateTimer();
}
bool TR_NormalReady(){
 if(g_exitLatched||(g_state!=GS_STARTING&&g_state!=GS_RUNNING)||
    g_accountBlocked||!g_storeHealthy||g_graceActive||!g_historyReady||g_apiInFlight)return false;
 if(!g_owned||!VerifyOwnership()||!ScopeIdentifiable()||!TradingAvailable()||IsTradeContextBusy())return false;
 if(!RefreshSymbolRules()||!RefreshQuote()||!QuoteFresh())return false;
 return true;
}
bool TR_DirectOrder(int ticket,OrderSnapshot &order){
 if(ticket<=0||!OrderSelect(ticket,SELECT_BY_TICKET)||OrderCloseTime()!=0)return false;
 order.ticket=OrderTicket();order.type=OrderType();order.magic=OrderMagicNumber();order.symbol=OrderSymbol();
 order.side=-1;if(order.symbol==g_managedSymbol){
  if(order.magic==SideMagic(BUY_SIDE))order.side=BUY_SIDE;
  else if(order.magic==SideMagic(SELL_SIDE))order.side=SELL_SIDE;
 }
 order.lots=OrderLots();order.price=OrderOpenPrice();order.sl=OrderStopLoss();order.tp=OrderTakeProfit();
 order.openTime=OrderOpenTime();order.closeTime=0;order.closePrice=0;
 order.profit=OrderProfit();order.commission=OrderCommission();order.swap=OrderSwap();
 return order.side>=0;
}
string IntentComment(int index){
 if(index<0||index>=ArraySize(g_intents))return "";
 // At most 26 ASCII characters even for the largest positive long id.
 // Cycle and occurrence remain in the durable journal. The comment is only
 // auxiliary evidence combined with exact scope/type/time/price proof.
 return "E48:I"+IntegerToString(g_intents[index].id)+":"+
        (g_intents[index].side==BUY_SIDE?"B":"S");
}
int TR_NewIntent(int kind,int side,int stage,long occurrence,int ticket,int type,
                 double lot,double price,double sl,double tp,int slippage,bool essential,
                 double beforePrice=0,double beforeSL=0,double beforeTP=0,double beforeLots=0){
 if(g_intentSerial>=9223372036854775806){
  g_storeHealthy=false;Problem("intent-identity","SYSTEM","Prepare request","Operation identity range is exhausted");return -1;
 }
 int n=ArraySize(g_intents);if(ArrayResize(g_intents,n+1)!=n+1){
  g_storeHealthy=false;Problem("intent-memory","SYSTEM","Prepare request","The operation journal could not be extended");return -1;
 }
 g_intentSerial++;
 g_intents[n].id=g_intentSerial;g_intents[n].kind=kind;g_intents[n].status=IS_PREPARED;
 g_intents[n].side=side;g_intents[n].cycle=g_cycle;g_intents[n].occurrence=occurrence;g_intents[n].stage=stage;
 g_intents[n].ticket=ticket;g_intents[n].orderType=type;g_intents[n].symbol=g_managedSymbol;g_intents[n].magic=SideMagic(side);
 g_intents[n].lots=lot;g_intents[n].price=price;g_intents[n].sl=sl;g_intents[n].tp=tp;
 g_intents[n].beforePrice=beforePrice;g_intents[n].beforeSL=beforeSL;g_intents[n].beforeTP=beforeTP;g_intents[n].beforeLots=beforeLots;
 g_intents[n].slippage=slippage;g_intents[n].serverTime=TimeCurrent();g_intents[n].attemptedAt=0;
 g_intents[n].error=0;g_intents[n].resultTicket=0;g_intents[n].essential=essential;
 g_intents[n].sent=false;g_intents[n].obsolete=false;g_intents[n].effectsApplied=false;g_intents[n].cleanupSettled=false;
 g_intents[n].changedSL=!TR_Same(beforeSL,sl);g_intents[n].changedTP=!TR_Same(beforeTP,tp);
 ResolveProblem("intent-memory");MarkDirty();return n;
}
void TR_CancelUnsent(int index){
 if(index<0||index>=ArraySize(g_intents)||g_intents[index].sent)return;
 g_intents[index].status=IS_CANCELLED;g_intents[index].obsolete=true;g_intents[index].effectsApplied=true;MarkDirty();
}
void TR_ConsumeEffects();
int TR_Execute(int index){
 // 1=positive API response, 0=definite negative response, -1=unknown result,
 // -2=no broker dispatch. A positive response alone never means UI success.
 if(index<0||index>=ArraySize(g_intents)||g_apiInFlight||g_intents[index].sent||g_intents[index].obsolete)return -2;
 ReconcileAfterRequest();TR_ConsumeEffects();
 OperationIntent intent=g_intents[index];
 if(g_intents[index].obsolete){TR_CancelUnsent(index);return -2;}
 if(g_accountBlocked||!ScopeIdentifiable()||!g_owned||!VerifyOwnership()||!TradingAvailable()||IsTradeContextBusy()){
  TR_CancelUnsent(index);return -2;
 }
 if(!intent.essential){
  bool removal=intent.kind==IK_PAUSE||intent.kind==IK_ROLLBACK;
  // Quote age limits entry, trailing and Play. Removing managed limits
  // remains possible with a usable quote and known order/FreezeLevel.
  if((removal&&!g_storeHealthy)||(!removal&&!TR_NormalReady())){TR_CancelUnsent(index);return -2;}
  if(TR_Creation(intent.kind)&&LiveOrderIndex(intent.side)>=0){TR_CancelUnsent(index);return -2;}
  if(intent.kind==IK_TRAIL&&(g_state!=GS_RUNNING||g_side[intent.side].control!=SC_PLAYING||!g_side[intent.side].trailing)){
   TR_CancelUnsent(index);return -2;
  }
  if(intent.kind==IK_PLAY&&(g_state!=GS_RUNNING||g_side[intent.side].control!=SC_PAUSED||
     g_side[intent.side].pauseRequested||g_side[intent.side].playGeneration!=intent.id)){
   TR_CancelUnsent(index);return -2;
  }
 }
 if(TR_RequestBlocked(intent.kind,intent.side,intent.ticket)){TR_CancelUnsent(index);return -2;}
 OrderSnapshot actual;
 if(!TR_Creation(intent.kind)){
  if(!TR_DirectOrder(intent.ticket,actual)||actual.symbol!=intent.symbol||actual.magic!=intent.magic||actual.type!=intent.orderType){
   TR_CancelUnsent(index);ReconcileAfterRequest();return -2;
  }
  if(MathAbs(actual.lots-intent.beforeLots)>1e-8||!TR_Same(actual.price,intent.beforePrice)||
     !TR_Same(actual.sl,intent.beforeSL)||!TR_Same(actual.tp,intent.beforeTP)){
   TR_CancelUnsent(index);ReconcileAfterRequest();return -2;
  }
 }
 if(intent.kind==IK_CLOSE||TR_Creation(intent.kind)){
  bool valid=false;int slip=CloseSlippagePoints(valid);
  if(!valid){
   Problem("cleanup-slippage","SYSTEM",TR_Action(intent.kind),"CloseSlippagePips and PipSize must produce an explicitly valid Slippage value before dispatch");
   TR_CancelUnsent(index);return -2;
  }
  g_intents[index].slippage=slip;
  if(intent.kind==IK_CLOSE){
   RefreshQuote();if(!g_quote.valid){TR_CancelUnsent(index);return -2;}
   g_intents[index].price=actual.type==OP_BUY?g_quote.bid:g_quote.ask;
  }
  ResolveProblem("cleanup-slippage");
 }
 // Save SENT before dispatch so a crash after execution cannot look unsent.
 g_intents[index].attemptedAt=g_now;g_intents[index].serverTime=TimeCurrent();
 g_intents[index].sent=true;g_intents[index].status=IS_UNKNOWN;
 g_apiInFlight=true;g_activeApiIntent=g_intents[index].id;MarkDirty();
 bool stored=SaveState(intent.essential);
 if(!stored&&!intent.essential){
  g_intents[index].sent=false;g_intents[index].status=IS_CANCELLED;g_intents[index].obsolete=true;g_intents[index].effectsApplied=true;
  g_apiInFlight=false;g_activeApiIntent=0;MarkDirty();return -2;
 }
 // File I/O can cross the deadline or quote-age limit. Sample real elapsed
 // time after that work, before permitting the prepared broker request.
 UpdateClock();EvaluateTimer();
 bool obsolete=g_intents[index].obsolete;
 if(g_exitLatched&&intent.kind!=IK_DELETE&&intent.kind!=IK_CLOSE)obsolete=true;
 if(!intent.essential){
  if(intent.kind!=IK_PAUSE&&intent.kind!=IK_ROLLBACK){
   if(!RefreshSymbolRules()||!RefreshQuote()||!QuoteFresh())obsolete=true;
  }
  if(intent.kind==IK_TRAIL&&(g_state!=GS_RUNNING||g_side[intent.side].control!=SC_PLAYING||!g_side[intent.side].trailing))obsolete=true;
  if(intent.kind==IK_PLAY&&(g_state!=GS_RUNNING||g_side[intent.side].control!=SC_PAUSED||
     g_side[intent.side].pauseRequested||g_side[intent.side].playGeneration!=intent.id))obsolete=true;
  if(intent.kind==IK_NEXT&&g_side[intent.side].control!=SC_PLAYING&&g_side[intent.side].control!=SC_RESUMING)obsolete=true;
  if(TR_Creation(intent.kind)&&g_side[intent.side].control!=SC_PLAYING&&g_side[intent.side].control!=SC_RESUMING&&
     ((StageSL(intent.side,intent.stage)>0&&g_intents[index].sl!=0)||
      (StageTP(intent.side,intent.stage)>0&&g_intents[index].tp!=0)))obsolete=true;
 }
 if(!ScanOrders())obsolete=true;
 if(TR_Creation(intent.kind)&&LiveOrderIndex(intent.side)>=0)obsolete=true;
 if(g_state==GS_STARTING&&!g_exitLatched&&TR_Creation(intent.kind)){
  int first=g_active.priority==BuyFirst?BUY_SIDE:SELL_SIDE;
  int prior=LiveOrderIndex(first);
  if(intent.side!=first&&(prior<0||g_orders[prior].type!=SidePendingType(first)))obsolete=true;
  for(int side=0;side<SIDES;side++){
   int live=LiveOrderIndex(side);
   if((live>=0&&g_orders[live].type!=SidePendingType(side))||g_side[side].tradeSeen||g_side[side].phase==OP_NEXT){
    LatchExit(XR_START_FAILURE);obsolete=true;break;
   }
  }
 }
 if(!TR_Creation(intent.kind)){
  OrderSnapshot latest;
  if(!TR_DirectOrder(intent.ticket,latest)||latest.type!=intent.orderType||
     latest.symbol!=intent.symbol||latest.magic!=intent.magic||
     MathAbs(latest.lots-intent.beforeLots)>1e-8||!TR_Same(latest.price,intent.beforePrice)||
     !TR_Same(latest.sl,intent.beforeSL)||!TR_Same(latest.tp,intent.beforeTP))obsolete=true;
 }
 if(obsolete||g_accountBlocked||!ScopeIdentifiable()||!g_owned||!VerifyOwnership()||!TradingAvailable()||IsTradeContextBusy()){
  g_intents[index].sent=false;g_intents[index].status=IS_CANCELLED;g_intents[index].obsolete=true;g_intents[index].effectsApplied=true;
  g_apiInFlight=false;g_activeApiIntent=0;MarkDirty();SaveState(intent.essential);return -2;
 }
 intent=g_intents[index];ResetLastError();bool accepted=false;int ticket=0;
 // The sole broker mutation boundary. Entry types are STOP only, expiry zero.
 if(TR_Creation(intent.kind)){
  if(intent.orderType==OP_BUYSTOP||intent.orderType==OP_SELLSTOP){
   // MT4 ignores Slippage for STOP pending entries; its required argument is
   // nevertheless sourced from the validated explicit Inputs, never guessed.
   ticket=OrderSend(intent.symbol,intent.orderType,intent.lots,intent.price,intent.slippage,intent.sl,intent.tp,IntentComment(index),intent.magic,0,clrNONE);
   accepted=ticket>0;
  }
 }else if(intent.kind==IK_DELETE)accepted=OrderDelete(intent.ticket,clrNONE);
 else if(intent.kind==IK_CLOSE)accepted=OrderClose(intent.ticket,intent.lots,intent.price,intent.slippage,clrNONE);
 else accepted=OrderModify(intent.ticket,intent.price,intent.sl,intent.tp,0,clrNONE);
 int error=accepted?0:GetLastError();
 g_apiInFlight=false;g_activeApiIntent=0;UpdateClock();
 g_intents[index].attemptedAt=g_now;g_intents[index].error=error;
 if(accepted){
  g_intents[index].resultTicket=TR_Creation(intent.kind)?ticket:intent.ticket;
  if(TR_Creation(intent.kind))RC_RegisterIntentOrder(index,ticket);
 }else g_intents[index].status=TR_DefiniteError(error)?IS_FAILED:IS_UNKNOWN;
 MarkDirty();
 if(!accepted){
  Problem(TR_Key(intent.kind,intent.side,intent.ticket),SideName(intent.side),TR_Action(intent.kind),TR_ErrorReason(error),
          "Error="+IntegerToString(error)+"; ticket="+IntegerToString(intent.ticket)+"; intent="+IntegerToString(intent.id)+"; server="+TimeToString(TimeCurrent(),TIME_DATE|TIME_SECONDS));
  if(error==132)LatchExit(XR_MARKET_CLOSED);
 }
 ReconcileAfterRequest();TR_ConsumeEffects();SaveState(intent.essential);
 if(accepted)return 1;
 return TR_DefiniteError(error)?0:-1;
}
void TR_FinishPlay(int side){
 if(g_exitLatched||g_state!=GS_RUNNING||
    (g_side[side].control!=SC_RESUMING&&(g_side[side].control!=SC_PAUSED||g_side[side].pauseRequested)))return;
 UpdateClock();EvaluateTimer();
 if(g_exitLatched||
    (g_side[side].control!=SC_RESUMING&&(g_side[side].control!=SC_PAUSED||g_side[side].pauseRequested)))return;
 g_side[side].control=SC_PLAYING;g_side[side].pauseRequested=false;
 g_side[side].rollbackSL=false;g_side[side].rollbackTP=false;g_side[side].playGeneration=0;
 ResolveProblem("play-"+IntegerToString(side));MarkDirty();OnSuccessfulPlay(side);
}
void TR_PlayFailed(int index,OrderSnapshot &order,bool haveOrder){
 int side=g_intents[index].side;
 g_side[side].rollbackSL=false;g_side[side].rollbackTP=false;
 if(haveOrder){
  g_side[side].rollbackSL=LimitsManagedSL(side)&&g_intents[index].changedSL&&order.sl>0&&TR_Same(order.sl,g_intents[index].sl);
  g_side[side].rollbackTP=LimitsManagedTP(side)&&g_intents[index].changedTP&&order.tp>0&&TR_Same(order.tp,g_intents[index].tp);
 }
 g_side[side].control=(g_side[side].rollbackSL||g_side[side].rollbackTP)?SC_APPLYING_PAUSE:SC_PAUSED;
 g_side[side].pauseRequested=true;
 if(!g_side[side].rollbackSL&&!g_side[side].rollbackTP)g_side[side].playGeneration=0;
 g_intents[index].obsolete=true;
 Problem("play-"+IntegerToString(side),SideName(side),"Play","Play was not fully confirmed; a new Play click is required",g_side[side].control==SC_APPLYING_PAUSE?"Only limits restored by this attempt are being rolled back.":"The side remains Paused.");
 MarkDirty();
}
void TR_ConsumeEffects(){
 for(int i=0;i<ArraySize(g_intents);i++){
  // A Play modifier whose exact object closed cannot prove restored limits.
  // The same click now waits for the next pending; only that wait is Resuming.
  if(g_intents[i].cycle==g_cycle&&!g_intents[i].effectsApplied&&g_intents[i].kind==IK_PLAY&&
     g_intents[i].status==IS_CANCELLED){
   int cancelledSide=g_intents[i].side;
   if(cancelledSide>=0&&cancelledSide<SIDES&&g_state==GS_RUNNING&&!g_exitLatched&&
      g_side[cancelledSide].control==SC_PAUSED&&!g_side[cancelledSide].pauseRequested&&
      g_side[cancelledSide].playGeneration==g_intents[i].id){
    if(g_side[cancelledSide].phase==OP_NEXT&&g_side[cancelledSide].finalKnown){
     g_side[cancelledSide].control=SC_RESUMING;g_side[cancelledSide].playGeneration=-1;
    }else{
     int remainder=LiveOrderIndex(cancelledSide),link=-1;
     if(remainder>=0)link=RC_LinkIndex(g_orders[remainder].ticket);
     if(link>=0&&RC_CurrentLink(link,cancelledSide)&&RC_LinkScope(g_links[link],g_orders[remainder]))
      TR_PlayFailed(i,g_orders[remainder],true);
     else{
      g_side[cancelledSide].pauseRequested=true;g_side[cancelledSide].playGeneration=0;
      Problem("play-"+IntegerToString(cancelledSide),SideName(cancelledSide),"Play",
              "The actual Play target changed before full restoration could be confirmed",
              "The side remains Paused; a new Play click is required after reconciliation.");
     }
    }
   }
   g_intents[i].effectsApplied=true;MarkDirty();
  }
  if(g_intents[i].cycle!=g_cycle||g_intents[i].effectsApplied||
     (g_intents[i].status!=IS_CONFIRMED&&g_intents[i].status!=IS_FAILED))continue;
  int side=g_intents[i].side,kind=g_intents[i].kind;
  if(side<0||side>=SIDES)continue;
  int live=LiveOrderIndex(side);bool have=live>=0;OrderSnapshot actual;
  if(have)actual=g_orders[live];
  if(g_intents[i].status==IS_FAILED){
   g_intents[i].effectsApplied=true;MarkDirty();
   if(kind==IK_INITIAL&&!g_exitLatched&&g_state==GS_STARTING)LatchExit(XR_START_FAILURE);
   else if(kind==IK_PLAY&&!g_exitLatched&&g_side[side].control==SC_PAUSED&&
           !g_side[side].pauseRequested&&g_side[side].playGeneration==g_intents[i].id)
    TR_PlayFailed(i,actual,have);
   continue;
  }
  if(g_intents[i].obsolete){
   g_intents[i].effectsApplied=true;MarkDirty();
   // A late accepted normal request cannot restore Playing after Pause.
   // It may have restored managed limits; remove those by an actual Pause.
   if(!g_exitLatched&&g_state!=GS_STANDBY&&g_side[side].control!=SC_PLAYING&&
      (TR_Creation(kind)||kind==IK_PLAY||kind==IK_TRAIL)){
    g_side[side].rollbackSL=false;g_side[side].rollbackTP=false;
    g_side[side].control=SC_APPLYING_PAUSE;g_side[side].pauseRequested=true;
   }
   continue;
  }
  if(TR_Creation(kind)){
   // Registering the returned ticket alone is not a pending confirmation.
   // The reconciler may already have followed an activation/partial chain.
   if(have&&actual.type==SidePendingType(side)){
    bool exact=false;
    for(int p=0;p<ArraySize(g_links);p++)if(g_links[p].ticket==actual.ticket&&
       g_links[p].cycle==g_intents[i].cycle&&g_links[p].side==side&&
       g_links[p].occurrence==g_intents[i].occurrence&&g_links[p].stage==g_intents[i].stage){exact=true;break;}
    if(!exact)continue;
    g_side[side].ticket=actual.ticket;g_side[side].stage=g_intents[i].stage;g_side[side].occurrence=g_intents[i].occurrence;
    g_side[side].phase=OP_PENDING;g_side[side].orderLot=actual.lots;g_side[side].lastPending=actual.price;
    if(kind==IK_INITIAL||(kind==IK_REBUILD&&g_state==GS_STARTING))g_side[side].initialConfirmed=true;
    if(kind==IK_NEXT){
     g_side[side].targetStage=0;g_side[side].targetLotFrozen=false;g_side[side].targetLot=0;
     g_side[side].finalKnown=false;g_side[side].tradeSeen=false;
     if(g_side[side].control==SC_RESUMING&&g_side[side].playGeneration==g_intents[i].id)TR_FinishPlay(side);
    }
    if(g_side[side].control==SC_PAUSED||g_side[side].control==SC_APPLYING_PAUSE){
     if((LimitsManagedSL(side)&&actual.sl>0)||(LimitsManagedTP(side)&&actual.tp>0)){
      g_side[side].control=SC_APPLYING_PAUSE;g_side[side].pauseRequested=true;
     }
    }
    g_intents[i].effectsApplied=true;
    ResolveProblem(TR_Key(kind,side,g_intents[i].ticket));MarkDirty();
   }else if(have||g_side[side].phase==OP_NEXT||g_side[side].phase==OP_REBUILD||g_exitLatched){
    // Activation/close cannot be undone or misreported as pending success.
    bool evidence=false;
    for(int link=0;link<ArraySize(g_links);link++)if(g_links[link].cycle==g_intents[i].cycle&&
       g_links[link].side==side&&g_links[link].occurrence==g_intents[i].occurrence&&
       g_links[link].stage==g_intents[i].stage&&(g_links[link].live||g_links[link].settled)){
     if(!have||g_links[link].ticket==actual.ticket){evidence=true;break;}
    }
    if(!evidence&&!g_exitLatched)continue;
    g_intents[i].effectsApplied=true;MarkDirty();
    if(g_state==GS_STARTING&&!g_exitLatched){
     if(have&&TR_MarketType(actual.type))LatchExit(XR_START_FAILURE);
     else if(g_side[side].tradeSeen||g_side[side].phase==OP_NEXT)LatchExit(XR_START_FAILURE);
     // A known deleted initial is rebuilt at its last place and old lot.
    }else if(kind==IK_NEXT&&g_state==GS_RUNNING&&!g_exitLatched&&evidence){
     if(g_side[side].occurrence==g_intents[i].occurrence&&g_side[side].stage==g_intents[i].stage){
      if(g_side[side].phase==OP_OPEN){
       g_side[side].targetStage=0;g_side[side].targetLotFrozen=false;g_side[side].targetLot=0;g_side[side].finalKnown=false;
      }
      if(g_side[side].control==SC_RESUMING&&g_side[side].playGeneration==g_intents[i].id)TR_FinishPlay(side);
     }
    }
   }
  }else if(kind==IK_PLAY){
   if(g_exitLatched||g_side[side].control!=SC_PAUSED||g_side[side].pauseRequested||g_side[side].playGeneration!=g_intents[i].id){
    g_intents[i].effectsApplied=true;MarkDirty();continue;
   }
   if(have){
    bool slOK=!LimitsManagedSL(side)||TR_Same(actual.sl,g_intents[i].sl);
    bool tpOK=!LimitsManagedTP(side)||TR_Same(actual.tp,g_intents[i].tp);
    g_intents[i].effectsApplied=true;MarkDirty();
    if(slOK&&tpOK){ResolveProblem(TR_Key(kind,side,g_intents[i].ticket));TR_FinishPlay(side);}
    else TR_PlayFailed(i,actual,true);
   }else if(g_side[side].phase==OP_NEXT){
    // A fully closed order cannot confirm restored limits. Resuming now
    // requires actual acceptance of the next pending instead.
    g_intents[i].effectsApplied=true;g_side[side].control=SC_RESUMING;g_side[side].playGeneration=-1;MarkDirty();
   }
  }else{
   g_intents[i].effectsApplied=true;ResolveProblem(TR_Key(kind,side,g_intents[i].ticket));MarkDirty();
  }
 }
}
void TR_DetachStandbyCleanup(){
 if(g_haveActive||!RC_scanHealthy||ArraySize(g_orders)==0)return;
 // A cleanup outside an active cycle cannot reuse the last finished identity.
 // Actual observation, rather than an uncertain/disconnected Stop, establishes it.
 g_cycle=0;g_resultKind=RK_UNAVAILABLE;g_netAvailable=false;MarkDirty();
}
void LatchExit(int reason){
 if(g_accountBlocked||!g_identityKnown||g_state==GS_BLOCKED)return;
 if(reason==XR_STOP){
  g_restartCancelled=true;g_autoPending=false;g_timer=TM_OFF;g_timerDeadline=0;g_timerRemainingSaved=0;
 }
 if(g_exitLatched){
  if(g_state==GS_RECOVERING&&ScopeIdentifiable()&&g_owned&&VerifyOwnership())g_state=GS_EXITING;
  if(reason!=XR_PROFIT&&reason!=XR_LOSS&&reason!=XR_NONE){
   g_restartCancelled=true;g_autoPending=false;
   if(reason!=XR_STOP&&g_exitReason!=XR_STOP)g_exitReason=reason;
  }
  MarkDirty();return;
 }
 bool failedStart=g_state==GS_STARTING||(g_state==GS_RECOVERING&&g_savedState==GS_STARTING);
 TR_DetachStandbyCleanup();
 g_exitLatched=true;g_exitReason=reason;g_state=GS_EXITING;g_autoPending=false;
 if(reason!=XR_PROFIT&&reason!=XR_LOSS)g_restartCancelled=true;
 for(int side=0;side<SIDES;side++){g_side[side].playGeneration=0;g_side[side].pauseRequested=false;}
 TR_ObsoleteNormal();
 // Record incomplete cycle membership before any foreign/unlinked order is
 // removed; an empty later snapshot cannot retrospectively establish it.
 RefreshAccounting();
 if(failedStart)g_resultKind=RK_FAILED_START;
 MarkDirty();
}
void RequestPause(int side,bool timerOrigin=false){
 if(side<0||side>=SIDES||g_exitLatched||g_accountBlocked||
    (g_state!=GS_STARTING&&g_state!=GS_RUNNING&&g_state!=GS_RECOVERING))return;
 if(timerOrigin)g_expiryBlock=true;
 if(g_side[side].control==SC_PAUSED&&g_side[side].pauseRequested){TR_ObsoleteNormal(side);return;}
 g_side[side].control=SC_APPLYING_PAUSE;g_side[side].pauseRequested=true;
 g_side[side].rollbackSL=false;g_side[side].rollbackTP=false;
 g_side[side].playGeneration=0;g_side[side].retryAt=0;
 TR_ObsoleteNormal(side);MarkDirty();
}
bool TR_PauseFrozen(OrderSnapshot &order,bool removeSL,bool removeTP,string &why){
 if(!g_rules.valid){why="Symbol restrictions are unavailable";return true;}
 if(g_rules.freezeDistance<=0)return false;
 if(!g_quote.valid){why="A usable quote is required to check FreezeLevel";return true;}
 double reference=order.side==BUY_SIDE?g_quote.bid:g_quote.ask;
 if(TR_PendingType(order.type)){
  double gap=order.type==OP_BUYSTOP?order.price-g_quote.ask:
             (order.type==OP_SELLSTOP?g_quote.bid-order.price:MathAbs(order.price-reference));
  if(gap<=g_rules.freezeDistance+g_rules.tick*1e-8){why="Pending order is inside FreezeLevel";return true;}
 }else if((removeSL&&order.sl>0&&MathAbs(reference-order.sl)<=g_rules.freezeDistance+g_rules.tick*1e-8)||
          (removeTP&&order.tp>0&&MathAbs(reference-order.tp)<=g_rules.freezeDistance+g_rules.tick*1e-8)){
  why="A managed limit is inside FreezeLevel";return true;
 }
 return false;
}
void TR_ProcessPause(int side){
 if(g_exitLatched||g_side[side].control!=SC_APPLYING_PAUSE)return;
 int live=LiveOrderIndex(side);
 bool rollback=g_side[side].rollbackSL||g_side[side].rollbackTP;
 if(live<0){
  // Wait for an unanswered entry/Play before calling its Pause complete.
  if(IntentPendingFor(side))return;
  g_side[side].control=SC_PAUSED;g_side[side].pauseRequested=true;
  g_side[side].rollbackSL=false;g_side[side].rollbackTP=false;g_side[side].playGeneration=0;
  ResolveProblem("pause-"+IntegerToString(side));MarkDirty();return;
 }
 OrderSnapshot order=g_orders[live];
 bool removeSL=LimitsManagedSL(side)&&order.sl>0,removeTP=LimitsManagedTP(side)&&order.tp>0;
 if(rollback){
  int play=TR_IntentIndex(g_side[side].playGeneration);
  if(play<0){BeginHistoryGrace("Play rollback identity is unavailable");return;}
  removeSL=g_side[side].rollbackSL&&TR_Same(order.sl,g_intents[play].sl)&&order.sl>0;
  removeTP=g_side[side].rollbackTP&&TR_Same(order.tp,g_intents[play].tp)&&order.tp>0;
  if(!removeSL)g_side[side].rollbackSL=false;
  if(!removeTP)g_side[side].rollbackTP=false;
 }
 if(!removeSL&&!removeTP){
  if(IntentPendingFor(side,order.ticket))return;
  g_side[side].control=SC_PAUSED;g_side[side].pauseRequested=true;g_side[side].playGeneration=0;
  g_side[side].rollbackSL=false;g_side[side].rollbackTP=false;
  ResolveProblem("pause-"+IntegerToString(side));MarkDirty();return;
 }
 int kind=rollback?IK_ROLLBACK:IK_PAUSE;
 if(TR_RequestBlocked(kind,side,order.ticket)||!TR_RetryDue(kind,side,order.ticket)||g_now<g_side[side].retryAt)return;
 bool essential=g_expiryBlock||g_timer==TM_EXPIRED;
 if(!essential&&!g_storeHealthy)return;
 if(!g_owned||!VerifyOwnership()||!TradingAvailable()||IsTradeContextBusy())return;
 RefreshSymbolRules();RefreshQuote();string why="";
 if(TR_PauseFrozen(order,removeSL,removeTP,why)){
  Problem("pause-"+IntegerToString(side),SideName(side),rollback?"Rollback Play":"Pause",why,IntegerToString(order.ticket));
  g_side[side].retryAt=g_now+RetryDelay();MarkDirty();return;
 }
 int index=TR_NewIntent(kind,side,g_side[side].stage,g_side[side].occurrence,order.ticket,order.type,order.lots,
                       order.price,removeSL?0:order.sl,removeTP?0:order.tp,0,essential,order.price,order.sl,order.tp,order.lots);
 if(index<0)return;
 TR_Execute(index);
 // Confirmation comes from a later/returned actual snapshot, never bool API.
 if(g_side[side].control==SC_APPLYING_PAUSE){
  int current=LiveOrderIndex(side);
  if(current>=0){
   bool remainingSL=removeSL&&g_orders[current].sl>0;
   bool remainingTP=removeTP&&g_orders[current].tp>0;
   if(!remainingSL&&!remainingTP&&!TR_RequestBlocked(kind,side,g_orders[current].ticket)){
    g_side[side].control=SC_PAUSED;g_side[side].pauseRequested=true;g_side[side].playGeneration=0;
    g_side[side].rollbackSL=false;g_side[side].rollbackTP=false;
    ResolveProblem("pause-"+IntegerToString(side));MarkDirty();
   }
  }
 }
}
long TR_NextOccurrence(int side,int stage){
 for(int i=ArraySize(g_intents)-1;i>=0;i--)if(g_intents[i].cycle==g_cycle&&g_intents[i].side==side&&
    g_intents[i].kind==IK_NEXT&&g_intents[i].stage==stage&&!g_intents[i].obsolete&&
    g_intents[i].occurrence>g_side[side].occurrence)return g_intents[i].occurrence;
 if(g_side[side].occurrence>=9223372036854775806)return 0;
 return g_side[side].occurrence+1;
}
void TR_CreatePending(int side,int kind){
 if(!TR_NormalReady()||LiveOrderIndex(side)>=0||TR_RequestBlocked(kind,side,0)||!TR_RetryDue(kind,side,0))return;
 int stage=g_side[side].stage;double raw=0,lot=0;long occurrence=g_side[side].occurrence;
 bool paused=g_side[side].control==SC_PAUSED||g_side[side].control==SC_APPLYING_PAUSE;
 if(kind==IK_INITIAL){
  stage=1;lot=g_side[side].orderLot;
  raw=side==BUY_SIDE?g_startAsk+StageDistance(side,1)*g_active.pip:g_startBid-StageDistance(side,1)*g_active.pip;
 }else if(kind==IK_REBUILD){raw=g_side[side].lastPending;lot=g_side[side].orderLot;}
 else{
  if(g_side[side].phase!=OP_NEXT||!g_side[side].finalKnown||
     (g_side[side].control!=SC_PLAYING&&g_side[side].control!=SC_RESUMING))return;
  stage=g_side[side].targetStage;
  if(stage<1||stage>STAGES){LatchExit(XR_INCONSISTENT);return;}
  lot=g_side[side].targetLotFrozen?g_side[side].targetLot:g_side[side].nextLot;
  occurrence=TR_NextOccurrence(side,stage);
  if(occurrence<=0){LatchExit(XR_INCONSISTENT);return;}
  raw=side==BUY_SIDE?g_side[side].finalClose+StageDistance(side,stage)*g_active.pip:
                    g_side[side].finalClose-StageDistance(side,stage)*g_active.pip;
 }
 string why="";double entry=0,sl=0,tp=0;
 if(!ValidateLot(lot,why)||!BuildPendingPrices(side,stage,raw,paused,entry,sl,tp,why)){
  Problem(TR_Key(kind,side,0),SideName(side),TR_Action(kind),why,"Stage="+IntegerToString(stage)+"; lot="+DoubleToString(lot,8));return;
 }
 int index=TR_NewIntent(kind,side,stage,occurrence,0,SidePendingType(side),lot,entry,sl,tp,0,false);
 if(index<0)return;
 if(kind==IK_NEXT&&!g_side[side].targetLotFrozen){
  g_side[side].targetLot=lot;g_side[side].targetLotFrozen=true;MarkDirty();
 }
 if(kind==IK_NEXT&&g_side[side].control==SC_RESUMING)g_side[side].playGeneration=g_intents[index].id;
 TR_Execute(index);
}
void RequestPlay(int side){
 if(side<0||side>=SIDES||g_state!=GS_RUNNING||g_exitLatched||g_accountBlocked||
    g_side[side].control!=SC_PAUSED)return;
 ReconcileAfterRequest();TR_ConsumeEffects();
 if(g_state!=GS_RUNNING||g_exitLatched||g_side[side].control!=SC_PAUSED)return;
 if(!TR_NormalReady()||IntentPendingFor(side))return;
 int live=LiveOrderIndex(side);
 if(live<0){
  if(g_side[side].phase!=OP_NEXT||!g_side[side].finalKnown){
   Problem("play-"+IntegerToString(side),SideName(side),"Play","A confirmed final close is required before creating the next stage");return;
  }
  g_side[side].control=SC_RESUMING;g_side[side].pauseRequested=false;
  g_side[side].playGeneration=-1;g_side[side].retryAt=0;MarkDirty();
  TR_CreatePending(side,IK_NEXT);return;
 }
 OrderSnapshot order=g_orders[live];double sl=0,tp=0;string why="";
 if(!BuildPlayLimits(side,order,sl,tp,why)){
  Problem("play-"+IntegerToString(side),SideName(side),"Play",why,"The side remains Paused; click Play again after the condition changes.");return;
 }
 // Existing-order restoration stays Paused until actual confirmation. The
 // generation identifies the attempt; Resuming belongs only to NEXT creation.
 g_side[side].control=SC_PAUSED;g_side[side].pauseRequested=false;g_side[side].retryAt=0;g_side[side].playGeneration=0;MarkDirty();
 if(TR_Same(sl,order.sl)&&TR_Same(tp,order.tp)){
  // Inputs of zero preserve manual limits. If nothing needs restoration,
  // the actual order itself proves successful Play without a fake API call.
  if(SaveState(false)){
   // No-op Play still depends on the actual order surviving the durable save.
   ReconcileAfterRequest();TR_ConsumeEffects();
   if(g_exitLatched||g_side[side].control!=SC_PAUSED||g_side[side].pauseRequested)return;
   if(g_graceActive||!g_historyReady){
    g_side[side].pauseRequested=true;MarkDirty();
    Problem("play-"+IntegerToString(side),SideName(side),"Play","The actual order could not be completely reconciled after saving",
            "The side remains Paused; a new Play click is required after reconciliation.");return;
   }
   int current=LiveOrderIndex(side);
   double checkedSL=0,checkedTP=0;string checkWhy="";
   bool actualReady=false;
   if(current>=0&&g_orders[current].ticket==order.ticket&&
      BuildPlayLimits(side,g_orders[current],checkedSL,checkedTP,checkWhy))
    actualReady=(!LimitsManagedSL(side)||TR_Same(g_orders[current].sl,checkedSL))&&
                (!LimitsManagedTP(side)||TR_Same(g_orders[current].tp,checkedTP));
   if(actualReady)TR_FinishPlay(side);
   else if(current<0&&g_side[side].phase==OP_NEXT){g_side[side].control=SC_RESUMING;g_side[side].playGeneration=-1;MarkDirty();}
   else{
    g_side[side].control=SC_PAUSED;g_side[side].pauseRequested=true;g_side[side].playGeneration=0;
    Problem("play-"+IntegerToString(side),SideName(side),"Play","The actual order changed before Play could be confirmed",
            "A new Play click is required. "+checkWhy);MarkDirty();
   }
  }
  else{g_side[side].control=SC_PAUSED;g_side[side].pauseRequested=true;g_side[side].playGeneration=0;MarkDirty();}
  return;
 }
 int index=TR_NewIntent(IK_PLAY,side,g_side[side].stage,g_side[side].occurrence,order.ticket,order.type,order.lots,
                       order.price,sl,tp,0,false,order.price,order.sl,order.tp,order.lots);
 if(index<0){g_side[side].control=SC_PAUSED;g_side[side].pauseRequested=true;MarkDirty();return;}
 g_side[side].playGeneration=g_intents[index].id;MarkDirty();
 int result=TR_Execute(index);
 if(result==-2&&g_side[side].control==SC_PAUSED&&!g_side[side].pauseRequested&&g_side[side].playGeneration==g_intents[index].id){
  g_side[side].control=SC_PAUSED;g_side[side].pauseRequested=true;g_side[side].playGeneration=0;MarkDirty();
 }
}
void BeginCycle(bool automatic=false){
 if(g_state!=GS_STANDBY||g_exitLatched||g_apiInFlight||g_accountBlocked||!g_identityKnown)return;
 UpdateClock();EvaluateTimer();
 if(automatic&&(!g_autoPending||!g_autoRestart||g_restartCancelled||g_expiryBlock||g_symbolChanged)){
  g_autoPending=false;g_timer=TM_OFF;g_timerDeadline=0;g_timerRemainingSaved=0;MarkDirty();return;
 }
 if(!g_storeHealthy||!TradingAvailable()||IsTradeContextBusy())return;
 // A fresh cycle must not overlap a still-unknown old creation, even when
 // the new cycle uses exactly the same symbol/magics (1.4,13.8,20.5).
 if(!ScopeHandoffReady())return;
 string why="";
 // The next chart symbol has its own Point and volume rules. Establish its
 // empty, owned scope before any validation that depends on those rules.
 if(StringLen(InstanceID)==0||g_next.buyMagic<=0||g_next.sellMagic<=0||g_next.buyMagic==g_next.sellMagic){
  if(StringLen(InstanceID)==0)why="InstanceID must be non-empty";
  else if(g_next.buyMagic<=0)why="BuyMagic rejected "+IntegerToString(BuyMagic)+"; required integer 1..2147483647";
  else if(g_next.sellMagic<=0)why="SellMagic rejected "+IntegerToString(SellMagic)+"; required integer 1..2147483647";
  else why="BuyMagic/SellMagic rejected "+IntegerToString(g_next.buyMagic)+"/"+IntegerToString(g_next.sellMagic)+"; required different positive 32-bit integers";
  Problem("start-validation","SYSTEM",automatic?"Auto Restart":"Run",why);
  if(automatic){g_autoPending=false;g_timer=TM_OFF;g_timerDeadline=0;g_timerRemainingSaved=0;MarkDirty();}
  return;
 }
 if(!AdoptStartScope())return;
 if(!ValidateConfiguration(g_next,why)){
  Problem("start-validation","SYSTEM",automatic?"Auto Restart":"Run",why);
  if(automatic){g_autoPending=false;g_timer=TM_OFF;g_timerDeadline=0;g_timerRemainingSaved=0;MarkDirty();}
  return;
 }
 for(int side=0;side<SIDES;side++)if(!g_side[side].nextLotApplied||!ValidateLot(g_side[side].nextLot,why)){
  if(!g_side[side].nextLotApplied)why="A valid "+SideName(side)+" Lot must be Applied";
  Problem("start-validation",SideName(side),automatic?"Auto Restart":"Run",why);
  if(automatic){g_autoPending=false;g_timer=TM_OFF;g_timerDeadline=0;g_timerRemainingSaved=0;MarkDirty();}
  return;
 }
 if(!ScanOrders())return;
 if(!ScopeEmpty()){LatchExit(XR_STANDBY_ORDERS);return;}
 RefreshQuote();if(!QuoteFresh())return;
 if(g_cycleSerial>=9223372036854775806){Problem("cycle-identity","SYSTEM","Run","Cycle identity range is exhausted");return;}
 CopyConfiguration(g_active,g_next);g_haveActive=true;g_managedSymbol=Symbol();
 g_cycleSerial++;g_cycle=g_cycleSerial;g_exitReason=XR_NONE;g_exitLatched=false;g_restartCancelled=false;
 g_autoPending=false;g_symbolChanged=false;g_initialProgress=0;
 g_startBid=g_quote.bid;g_startAsk=g_quote.ask;g_state=GS_STARTING;
 for(int k=0;k<SIDES;k++){
  g_side[k].control=SC_PLAYING;g_side[k].phase=OP_NONE;g_side[k].stage=1;g_side[k].targetStage=0;g_side[k].occurrence=1;
  g_side[k].ticket=0;g_side[k].orderLot=g_side[k].nextLot;g_side[k].lastPending=0;
  g_side[k].finalClose=0;g_side[k].finalCloseTime=0;g_side[k].finalKnown=false;
  g_side[k].initialConfirmed=false;g_side[k].tradeSeen=false;g_side[k].trailing=true;
  g_side[k].targetLot=0;g_side[k].targetLotFrozen=false;g_side[k].pauseRequested=false;
  g_side[k].rollbackSL=false;g_side[k].rollbackTP=false;g_side[k].retryAt=0;g_side[k].playGeneration=0;
 }
 if(!automatic){g_timer=TM_OFF;g_timerDeadline=0;g_timerRemainingSaved=0;}
 StartCycleAccounting();ResolveProblem("start-validation");MarkDirty();
 // A failed initial save suspends Starting; no unjournalled normal request.
 if(!SaveState(false))return;
 ProcessStarting();
}
void TR_CheckInitialActual(){
 if(g_state!=GS_STARTING||g_exitLatched)return;
 int initialCount=0;
 for(int side=0;side<SIDES;side++){
  int live=LiveOrderIndex(side);
  if(live>=0){
   if(g_orders[live].type!=SidePendingType(side)){LatchExit(XR_START_FAILURE);return;}
   if(g_side[side].stage!=1||g_side[side].occurrence!=1){LatchExit(XR_INCONSISTENT);return;}
   bool linked=false;
   for(int l=0;l<ArraySize(g_links);l++)if(g_links[l].ticket==g_orders[live].ticket&&g_links[l].cycle==g_cycle&&
      g_links[l].side==side&&g_links[l].stage==1&&g_links[l].occurrence==1){linked=true;break;}
   if(!linked){BeginHistoryGrace("An initial pending has no exact persisted creation identity");return;}
   g_side[side].initialConfirmed=true;g_side[side].ticket=g_orders[live].ticket;
   g_side[side].orderLot=g_orders[live].lots;g_side[side].lastPending=g_orders[live].price;initialCount++;
  }else if(g_side[side].tradeSeen||g_side[side].phase==OP_NEXT){LatchExit(XR_START_FAILURE);return;}
 }
 g_initialProgress=initialCount;
 if(initialCount==SIDES){
  g_state=GS_RUNNING;ResolveProblem("start-validation");MarkDirty();
  // Applying Pause is retained; initial placement never constitutes Play.
 }
}
void ProcessStarting(){
 if(g_state!=GS_STARTING||g_exitLatched)return;
 ReconcileAfterRequest();TR_ConsumeEffects();TR_CheckInitialActual();
 if(g_state!=GS_STARTING||g_exitLatched)return;
 int first=g_active.priority==BuyFirst?BUY_SIDE:SELL_SIDE;
 // Priority removal is allowed to remain incomplete while the other initial
 // is created. The 20.51 completion condition is two actual pending orders.
 for(int pass=0;pass<SIDES;pass++){
  int side=pass==0?first:1-first;
  TR_ProcessPause(side);if(g_exitLatched)return;
 }
 for(int p=0;p<SIDES;p++){
  int side=p==0?first:1-first;
  ReconcileAfterRequest();TR_ConsumeEffects();TR_CheckInitialActual();
  if(g_state!=GS_STARTING||g_exitLatched)return;
  if(LiveOrderIndex(side)>=0)continue;
  if(p==1){
   int earlier=LiveOrderIndex(first);
   if(earlier<0||g_orders[earlier].type!=SidePendingType(first)||!g_side[first].initialConfirmed)return;
  }
  if(IntentPendingFor(side))return;
  if(g_side[side].phase==OP_REBUILD)TR_CreatePending(side,IK_REBUILD);
  else TR_CreatePending(side,IK_INITIAL);
  TR_CheckInitialActual();
  if(g_exitLatched||g_state!=GS_STARTING)return;
 }
}
void TR_Trail(int side){
 if(g_state!=GS_RUNNING||g_exitLatched||g_side[side].control!=SC_PLAYING||!g_side[side].trailing||!TR_NormalReady())return;
 int live=LiveOrderIndex(side);if(live<0)return;
 OrderSnapshot order=g_orders[live];
 if(order.type!=SidePendingType(side)||TR_RequestBlocked(IK_TRAIL,side,order.ticket)||!TR_RetryDue(IK_TRAIL,side,order.ticket))return;
 double entry=0,sl=0,tp=0;string why="";
 if(!BuildTrailingPrices(side,order,entry,sl,tp,why)){
  if(why!="")Problem(TR_Key(IK_TRAIL,side,order.ticket),SideName(side),"Trailing",why,IntegerToString(order.ticket));
  else ResolveProblem(TR_Key(IK_TRAIL,side,order.ticket));
  return;
 }
 int index=TR_NewIntent(IK_TRAIL,side,g_side[side].stage,g_side[side].occurrence,order.ticket,order.type,order.lots,
                       entry,sl,tp,0,false,order.price,order.sl,order.tp,order.lots);
 if(index>=0)TR_Execute(index);
}
void ProcessSides(){
 if(g_state!=GS_RUNNING||g_exitLatched)return;
 TR_ConsumeEffects();
 int first=g_active.priority==BuyFirst?BUY_SIDE:SELL_SIDE;
 // Removal/rollback precedes creation and trailing regardless of priority.
 for(int p=0;p<SIDES;p++){
  int side=p==0?first:1-first;TR_ProcessPause(side);if(g_exitLatched)return;
 }
 for(int q=0;q<SIDES;q++){
  int side=q==0?first:1-first;
  ReconcileAfterRequest();TR_ConsumeEffects();
  if(g_state!=GS_RUNNING||g_exitLatched)return;
  if(g_side[side].phase==OP_REBUILD&&LiveOrderIndex(side)<0){
   TR_CreatePending(side,IK_REBUILD);continue;
  }
  if(g_side[side].phase==OP_NEXT&&LiveOrderIndex(side)<0){
   if(g_side[side].control==SC_PLAYING||g_side[side].control==SC_RESUMING)TR_CreatePending(side,IK_NEXT);
   continue;
  }
  TR_Trail(side);
 }
}
void TR_CleanupTicket(int ticket){
 int live=TR_TicketIndex(ticket);if(live<0||!g_exitLatched)return;
 OrderSnapshot order=g_orders[live];int side=order.side;
 if(side<0||side>=SIDES)return;
 int kind=TR_PendingType(order.type)?IK_DELETE:(TR_MarketType(order.type)?IK_CLOSE:IK_NONE);
 if(kind==IK_NONE||TR_RequestBlocked(kind,side,ticket)||!TR_RetryDue(kind,side,ticket))return;
 bool valid=true;int slip=0;
 if(kind==IK_CLOSE){
  slip=CloseSlippagePoints(valid);
  if(!valid){Problem("cleanup-slippage","SYSTEM","Close trade","Explicit valid PipSize and CloseSlippagePips are required for market-order cleanup");return;}
  RefreshQuote();if(!g_quote.valid)return;
 }
 long occurrence=g_side[side].occurrence;int stage=g_side[side].stage;
 for(int l=0;l<ArraySize(g_links);l++)if(g_links[l].ticket==ticket){occurrence=g_links[l].occurrence;stage=g_links[l].stage;break;}
 double price=kind==IK_CLOSE?(order.type==OP_BUY?g_quote.bid:g_quote.ask):order.price;
 int index=TR_NewIntent(kind,side,stage,occurrence,ticket,order.type,order.lots,price,order.sl,order.tp,slip,true,
                       order.price,order.sl,order.tp,order.lots);
 if(index>=0)TR_Execute(index);
}
void ProcessFullExit(){
 if(!g_exitLatched||g_state!=GS_EXITING||g_accountBlocked||!ScopeIdentifiable())return;
 ReconcileAfterRequest();TR_ConsumeEffects();
 if(!ScanOrders())return;
 TR_DetachStandbyCleanup();
 int pendingTickets[];int marketTickets[];
 for(int i=0;i<ArraySize(g_orders);i++){
  if(TR_PendingType(g_orders[i].type)){int n=ArraySize(pendingTickets);ArrayResize(pendingTickets,n+1);pendingTickets[n]=g_orders[i].ticket;}
  else if(TR_MarketType(g_orders[i].type)){int m=ArraySize(marketTickets);ArrayResize(marketTickets,m+1);marketTickets[m]=g_orders[i].ticket;}
 }
 // Do not let a failed target starve any other pending or market target.
 for(int p=0;p<ArraySize(pendingTickets);p++){
  ReconcileAfterRequest();if(!g_exitLatched)return;
  int live=TR_TicketIndex(pendingTickets[p]);
  if(live>=0&&TR_PendingType(g_orders[live].type))TR_CleanupTicket(pendingTickets[p]);
 }
 // Refresh after deletions so a pending that activated is closed this round.
 ReconcileAfterRequest();if(!ScanOrders())return;
 ArrayResize(marketTickets,0);
 for(int j=0;j<ArraySize(g_orders);j++)if(TR_MarketType(g_orders[j].type)){
  int n=ArraySize(marketTickets);ArrayResize(marketTickets,n+1);marketTickets[n]=g_orders[j].ticket;
 }
 for(int c=0;c<ArraySize(marketTickets);c++){
  ReconcileAfterRequest();if(!g_exitLatched)return;TR_CleanupTicket(marketTickets[c]);
 }
 ReconcileAfterRequest();TR_ConsumeEffects();
 if(!ScopeEmpty())return;
 // A missing linked record may still appear within the contractual grace.
 // Cleanup of actual live orders proceeds, but finalization waits for it.
 if(g_graceActive&&!HistoryGraceExpired())return;
 if(!g_haveActive&&g_cycle==0){
  // Persisted Standby after this verified empty completion is the proof for
  // dormant cycle-zero cleanup journals; their API results remain UNKNOWN.
  for(int pending=0;pending<ArraySize(g_intents);pending++)if(g_intents[pending].cycle==0&&
     g_intents[pending].essential&&g_intents[pending].sent&&g_intents[pending].status==IS_UNKNOWN){
   g_intents[pending].obsolete=true;g_intents[pending].cleanupSettled=true;MarkDirty();
  }
 }
 UpdateClock();EvaluateTimer();
 bool threshold=g_exitReason==XR_PROFIT||g_exitReason==XR_LOSS;
 bool restart=threshold&&g_autoRestart&&!g_restartCancelled&&!g_expiryBlock&&!g_symbolChanged&&!g_reinstallMagicChange;
 string why="";
 if(restart&&!ValidateConfiguration(g_next,why)){
  restart=false;Problem("auto-validation","SYSTEM","Auto Restart",why,"Run is required after correcting the next-cycle configuration.");
 }
 if(restart)for(int side=0;side<SIDES;side++)if(!g_side[side].nextLotApplied||!ValidateLot(g_side[side].nextLot,why)){
  restart=false;Problem("auto-validation",SideName(side),"Auto Restart",why,"Run is required after correcting the next-cycle lot.");break;
 }
 FinalizeCycleAccounting();
 g_haveActive=false;g_state=GS_STANDBY;g_exitLatched=false;g_autoPending=restart;g_initialProgress=0;
 for(int s=0;s<SIDES;s++){
  g_side[s].ticket=0;g_side[s].phase=OP_NONE;g_side[s].targetStage=0;g_side[s].targetLotFrozen=false;
  g_side[s].pauseRequested=false;g_side[s].rollbackSL=false;g_side[s].rollbackTP=false;g_side[s].playGeneration=0;
 }
 if(!restart){g_timer=TM_OFF;g_timerDeadline=0;g_timerRemainingSaved=0;}
 // Only the NEXT dispatcher event consumes g_autoPending. No recursive Run.
 MarkDirty();SaveState(true);
}


// Panel module: native chart objects and RAM resources only. No trade API calls.
// Native TextSetFont uses tenths of a point: -10*point fixes point size;
// native FW_BOLD/FW_NORMAL set the documented MQL4 font weights.
// https://docs.mql4.com/objects/textsetfont

struct PN48ObjectRuntime {
 string name; string resource; string text;
 int generation; int width; int height; int point;
 bool bold; color foreground; color background;
};
PN48ObjectRuntime PN48_objects[];
int PN48_generation=0,PN48_width=520,PN48_padding=12,PN48_gap=8;
int PN48_columnsGap=12,PN48_buttonHeight=32,PN48_titleHeight=36;
int PN48_point=11,PN48_textHeight=17,PN48_height=0;
bool PN48_created=false,PN48_fontIssue=false,PN48_mouseWasEnabled=false;
string PN48_focus="";
uint PN48_controlEpoch[2];
uint PN48_runEpoch=0;
color PN48_background=C'32,36,43',PN48_field=C'17,21,27';
color PN48_text=C'243,244,246',PN48_buy=C'59,130,246',PN48_sell=C'245,158,11';
color PN48_wait=C'250,204,21',PN48_error=C'220,38,38';
color PN48_disabled=C'55,65,81',PN48_disabledText=C'156,163,175';

string PN48_Name(string key) { return g_prefix+"P_"+key; }
string PN48_ControlKey(int side,int command){
 return (side==BUY_SIDE?"buy_":"sell_")+(command==CMD_PLAY?"play_":"pause_")+
        StringFormat("%08X",PN48_controlEpoch[side]);
}
string PN48_RunKey(){return "run_"+StringFormat("%08X",PN48_runEpoch);}
int PN48_ObjectIndex(string name) {
 for(int i=0;i<ArraySize(PN48_objects);i++) if(PN48_objects[i].name==name) return i;
 return -1;
}
int PN48_Touch(string key,ENUM_OBJECT kind) {
 string name=PN48_Name(key);
 int i=PN48_ObjectIndex(name);
 if(i<0) {
  i=ArraySize(PN48_objects);
  if(ArrayResize(PN48_objects,i+1)!=i+1) return -1;
  PN48_objects[i].name=name; PN48_objects[i].resource="";
  PN48_objects[i].text=""; PN48_objects[i].point=-1;
 }
 PN48_objects[i].generation=PN48_generation;
 if(ObjectFind(0,name)>=0 && ObjectGetInteger(0,name,OBJPROP_TYPE)!=(long)kind) ObjectDelete(0,name);
 if(ObjectFind(0,name)<0 && !ObjectCreate(0,name,kind,0,0,0)) return -1;
 ObjectSetInteger(0,name,OBJPROP_CORNER,CORNER_LEFT_UPPER);
 ObjectSetInteger(0,name,OBJPROP_BACK,false);
 ObjectSetInteger(0,name,OBJPROP_HIDDEN,true);
 ObjectSetInteger(0,name,OBJPROP_SELECTABLE,false);
 ObjectSetInteger(0,name,OBJPROP_SELECTED,false);
 ObjectSetInteger(0,name,OBJPROP_TIMEFRAMES,OBJ_ALL_PERIODS);
 return i;
}
void PN48_Rect(string key,int x,int y,int w,int h,color bg,color border) {
 int i=PN48_Touch(key,OBJ_RECTANGLE_LABEL); if(i<0) return;
 string name=PN48_objects[i].name;
 ObjectSetInteger(0,name,OBJPROP_XDISTANCE,x); ObjectSetInteger(0,name,OBJPROP_YDISTANCE,y);
 ObjectSetInteger(0,name,OBJPROP_XSIZE,w); ObjectSetInteger(0,name,OBJPROP_YSIZE,h);
 ObjectSetInteger(0,name,OBJPROP_BGCOLOR,bg); ObjectSetInteger(0,name,OBJPROP_COLOR,border);
 ObjectSetInteger(0,name,OBJPROP_BORDER_TYPE,BORDER_FLAT);
 ObjectSetInteger(0,name,OBJPROP_ZORDER,1);
 ObjectSetString(0,name,OBJPROP_TOOLTIP,"\n");
}
bool PN48_SetFont(int points,bool bold=false) {
 // No DLL or external font file: Arial is selected with native font rendering.
 return TextSetFont("Arial",-10*points,(uint)(bold?FW_BOLD:FW_NORMAL),0);
}
void PN48_Measure(string text,int points,bool bold,uint &width,uint &height) {
 width=0; height=0;
 if(PN48_SetFont(points,bold) && TextGetSize(text,width,height) && height>0) return;
 if(!PN48_fontIssue) {
  PN48_fontIssue=true;
  Print("SYSTEM | Panel font | Arial measurement failed; native labels remain available. Time=",TimeToString(TimeCurrent(),TIME_DATE|TIME_SECONDS));
 }
 // Recovery geometry only if the terminal font renderer has failed.
 width=(uint)MathMax(1,StringLen(text)*points); height=(uint)MathMax(1,points*2);
}
int PN48_TextWidth(string text,int points=-1,bool bold=false) {
 uint w=0,h=0; PN48_Measure(text,points<0?PN48_point:points,bold,w,h); return (int)w;
}
string PN48_Fit(string text,int width,int points=-1,bool bold=false) {
 if(width<=0) return "";
 if(PN48_TextWidth(text,points,bold)<=width) return text;
 string ellipsis="...";
 if(PN48_TextWidth(ellipsis,points,bold)>width) return "";
 int lo=0,hi=StringLen(text);
 while(lo<hi) {
  int mid=(lo+hi+1)/2;
  if(PN48_TextWidth(StringSubstr(text,0,mid)+ellipsis,points,bold)<=width) lo=mid;
  else hi=mid-1;
 }
 return StringSubstr(text,0,lo)+ellipsis;
}
void PN48_Text(string key,string text,int x,int y,int w,color fg,bool bold=false,int point=-1,string tooltip="",color bg=clrNONE) {
 if(point<0) point=PN48_point;
 if(bg==clrNONE) bg=PN48_background;
 string fitted=PN48_Fit(text,w,point,bold);
 uint tw=0,th=0; PN48_Measure(fitted==""?" ":fitted,point,bold,tw,th);
 int i=PN48_Touch(key,OBJ_BITMAP_LABEL); if(i<0) return;
 string name=PN48_objects[i].name;
 bool changed=(PN48_objects[i].text!=fitted || PN48_objects[i].width!=(int)tw || PN48_objects[i].height!=(int)th ||
  PN48_objects[i].point!=point || PN48_objects[i].bold!=bold || PN48_objects[i].foreground!=fg || PN48_objects[i].background!=bg || PN48_objects[i].resource=="");
 if(changed) {
  string resource="::"+name+"R";
  uint pixels[];
  int size=(int)(tw*th);
  bool rendered=false;
  if(size>0 && ArrayResize(pixels,size)==size) {
   ArrayInitialize(pixels,ColorToARGB(bg,255));
   if(fitted=="" || (PN48_SetFont(point,bold) && TextOut(fitted,0,0,TA_LEFT|TA_TOP,pixels,tw,th,ColorToARGB(fg,255),COLOR_FORMAT_ARGB_NORMALIZE))) {
    if(PN48_objects[i].resource!="") ResourceFree(PN48_objects[i].resource);
    rendered=ResourceCreate(resource,pixels,tw,th,0,0,tw,COLOR_FORMAT_ARGB_NORMALIZE);
   }
  }
  if(rendered) {
   PN48_objects[i].resource=resource; PN48_objects[i].text=fitted;
   PN48_objects[i].width=(int)tw; PN48_objects[i].height=(int)th;
   PN48_objects[i].point=point; PN48_objects[i].bold=bold;
   PN48_objects[i].foreground=fg; PN48_objects[i].background=bg;
   ObjectSetString(0,name,OBJPROP_BMPFILE,0,resource);
  } else {
   if(!PN48_fontIssue) { PN48_fontIssue=true; Print("SYSTEM | Panel text | Native RAM text resource failed. Error=",GetLastError()); }
   // Native Arial fallback keeps controls legible if resource creation is unavailable.
   ObjectDelete(0,name); ObjectCreate(0,name,OBJ_LABEL,0,0,0);
   ObjectSetInteger(0,name,OBJPROP_CORNER,CORNER_LEFT_UPPER);
   ObjectSetInteger(0,name,OBJPROP_ANCHOR,ANCHOR_LEFT_UPPER);
   ObjectSetInteger(0,name,OBJPROP_FONTSIZE,point);
   ObjectSetInteger(0,name,OBJPROP_COLOR,fg);
   ObjectSetInteger(0,name,OBJPROP_SELECTABLE,false);
   ObjectSetInteger(0,name,OBJPROP_HIDDEN,true);
   ObjectSetString(0,name,OBJPROP_FONT,"Arial"); ObjectSetString(0,name,OBJPROP_TEXT,fitted);
   PN48_objects[i].point=-1;
  }
 }
 if(PN48_objects[i].point==point && PN48_objects[i].resource!="") ObjectSetString(0,name,OBJPROP_BMPFILE,0,PN48_objects[i].resource);
 ObjectSetInteger(0,name,OBJPROP_XDISTANCE,x); ObjectSetInteger(0,name,OBJPROP_YDISTANCE,y);
 ObjectSetInteger(0,name,OBJPROP_ZORDER,3);
 ObjectSetString(0,name,OBJPROP_TOOLTIP,tooltip!=""?tooltip:(text!=""?text:"\n"));
}
void PN48_Button(string key,string text,int x,int y,int w,bool enabled,color bg=clrNONE) {
 if(bg==clrNONE) bg=PN48_disabled;
 int i=PN48_Touch(key,OBJ_BUTTON); if(i<0) return;
 string name=PN48_objects[i].name;
 ObjectSetInteger(0,name,OBJPROP_XDISTANCE,x); ObjectSetInteger(0,name,OBJPROP_YDISTANCE,y);
 ObjectSetInteger(0,name,OBJPROP_XSIZE,w); ObjectSetInteger(0,name,OBJPROP_YSIZE,PN48_buttonHeight);
 ObjectSetInteger(0,name,OBJPROP_BGCOLOR,enabled?bg:PN48_disabled);
 ObjectSetInteger(0,name,OBJPROP_COLOR,enabled?(key=="stop"?clrWhite:PN48_text):PN48_disabledText);
 ObjectSetInteger(0,name,OBJPROP_BORDER_COLOR,enabled?bg:PN48_disabled);
 ObjectSetInteger(0,name,OBJPROP_FONTSIZE,PN48_point);
 ObjectSetInteger(0,name,OBJPROP_STATE,false); ObjectSetInteger(0,name,OBJPROP_ZORDER,5);
 ObjectSetString(0,name,OBJPROP_FONT,"Arial"); ObjectSetString(0,name,OBJPROP_TEXT,PN48_Fit(text,w-8));
 ObjectSetString(0,name,OBJPROP_TOOLTIP,text+(enabled?"":" (Disabled)"));
}

bool PN48_LexNumber(string text,bool integer=false) {
 if(StringLen(text)==0) return false;
 int digits=0,dots=0;
 for(int i=0;i<StringLen(text);i++) {
  ushort ch=StringGetCharacter(text,i);
  if(ch>=48 && ch<=57) { digits++; continue; }
  if(!integer && ch==46 && ++dots==1) continue;
  return false;
 }
 return digits>0;
}
bool PN48_Number(string text,double &value) {
 return PN48_LexNumber(text) && ParseNumber(text,value) && MathIsValidNumber(value) && value>=0;
}
bool PN48_Integer(string text,int &value) {
 return PN48_LexNumber(text,true) && ParseInteger(text,value) && value>=0;
}
bool PN48_LotValid(int side) {
 double value=0; string why="";
 return PN48_Number(side==BUY_SIDE?g_draftBuy:g_draftSell,value) && ValidateLot(value,why);
}
bool PN48_FinancialValid() {
 double profit=0,loss=0;
 return PN48_Number(g_draftProfit,profit) && PN48_Number(g_draftLoss,loss);
}
bool PN48_TimeValid() {
 int hours=0,minutes=0,seconds=0;
 return PN48_Integer(g_draftHours,hours) && hours<=23 && PN48_Integer(g_draftMinutes,minutes) && minutes<=59 &&
  PN48_Integer(g_draftSeconds,seconds) && seconds<=59 && hours*3600+minutes*60+seconds>0;
}
void PN48_Edit(string key,string draft,int x,int y,int width,bool enabled,bool valid,bool dirty) {
 int i=PN48_Touch(key,OBJ_EDIT); if(i<0) return;
 string name=PN48_objects[i].name;
 ObjectSetInteger(0,name,OBJPROP_XDISTANCE,x); ObjectSetInteger(0,name,OBJPROP_YDISTANCE,y);
 ObjectSetInteger(0,name,OBJPROP_XSIZE,width); ObjectSetInteger(0,name,OBJPROP_YSIZE,PN48_buttonHeight);
 ObjectSetInteger(0,name,OBJPROP_BGCOLOR,enabled?PN48_field:PN48_disabled);
 ObjectSetInteger(0,name,OBJPROP_COLOR,enabled?PN48_text:PN48_disabledText);
 ObjectSetInteger(0,name,OBJPROP_BORDER_COLOR,!valid?PN48_error:(dirty?PN48_wait:PN48_disabled));
 ObjectSetInteger(0,name,OBJPROP_FONTSIZE,PN48_point); ObjectSetInteger(0,name,OBJPROP_READONLY,!enabled);
 ObjectSetInteger(0,name,OBJPROP_ALIGN,ALIGN_LEFT); ObjectSetInteger(0,name,OBJPROP_ZORDER,6);
 ObjectSetString(0,name,OBJPROP_FONT,"Arial");
 // A live native editor owns its text until ENDEDIT; rendering cannot erase typing.
 if(PN48_focus!=name && ObjectGetString(0,name,OBJPROP_TEXT)!=draft) ObjectSetString(0,name,OBJPROP_TEXT,draft);
 ObjectSetString(0,name,OBJPROP_TOOLTIP,(key=="hours"||key=="minutes"||key=="seconds")?"ASCII digits 0-9 only; Apply Time commits the duration.":"ASCII digits 0-9 and one decimal point only; Apply commits the value.");
}
string PN48_NumberText(double value,int digits=8) {
 string result=DoubleToString(value,digits);
 while(StringLen(result)>0 && StringFind(result,".")>=0 && StringSubstr(result,StringLen(result)-1)=="0") result=StringSubstr(result,0,StringLen(result)-1);
 if(StringLen(result)>0 && StringSubstr(result,StringLen(result)-1)==".") result=StringSubstr(result,0,StringLen(result)-1);
 return result;
}
string PN48_Duration(long seconds) {
 if(seconds<0) seconds=0;
 long hours=seconds/3600,minutes=(seconds%3600)/60,secs=seconds%60;
 return StringFormat("%02d:%02d:%02d",(int)hours,(int)minutes,(int)secs);
}
string PN48_State() {
 switch(g_state) {
  case GS_STANDBY: return "Standby"; case GS_STARTING: return "Starting";
  case GS_RUNNING: return "Running"; case GS_EXITING: return "Exiting";
  case GS_RECOVERING: return "Recovering"; case GS_BLOCKED: return "Blocked";
 }
 return "Blocked";
}
string PN48_SideStatus(int side) {
 string control="Playing";
 if(g_side[side].control==SC_PAUSED) control="Paused";
 else if(g_side[side].control==SC_APPLYING_PAUSE) control="Applying Pause";
 else if(g_side[side].control==SC_RESUMING) control="Resuming";
 if(g_side[side].phase==OP_NEXT) return control+" / Waiting";
 return control;
}
string PN48_ControlText(int side) {
 if(g_side[side].control==SC_APPLYING_PAUSE) return "Applying Pause";
 if(g_side[side].control==SC_RESUMING) return "Resuming";
 return g_side[side].control==SC_PAUSED?"PAUSED":"PLAYING";
}
string PN48_NetText() {
 if(!g_netAvailable || g_resultKind==RK_UNAVAILABLE) return "Result unavailable";
 string result="Net: "+(g_net>=0?"+":"")+DoubleToString(g_net,2)+" "+AccountCurrency();
 if(g_resultKind==RK_FINISHED) result+=" (Finished)";
 return result;
}
string PN48_CurrentLot(int side) {
 // Actual observed live order, never next lot or a remembered deleted ticket.
 int found=-1;
 for(int i=0;i<ArraySize(g_orders);i++) {
  if(g_orders[i].side!=side || g_orders[i].closeTime!=0 || !IsManagedOrder(g_orders[i])) continue;
  if(found>=0) return "-"; // A duplicate is a reconciliation problem, not a guessed current lot.
  found=i;
 }
 return found<0?"-":PN48_NumberText(g_orders[found].lots);
}
bool PN48_SafeIdentity() { return g_identityKnown && g_owned && !g_accountBlocked; }
bool PN48_Operational() {
 return PN48_SafeIdentity() && !g_exitLatched && g_state!=GS_EXITING && g_state!=GS_BLOCKED && g_state!=GS_RECOVERING;
}
bool PN48_CurrentCycle() { return g_state==GS_STARTING || g_state==GS_RUNNING; }
bool PN48_ResetAvailable() { return g_state==GS_BLOCKED && !g_identityKnown && !g_accountBlocked; }
bool PN48_RunAvailable() {
 if(!PN48_Operational() || g_state!=GS_STANDBY || StringLen(InstanceID)==0 || !g_storeHealthy || !ScopeEntryReady() || !ScopeEmpty() || !g_rules.valid || !QuoteFresh()) return false;
 if(!g_side[0].nextLotApplied || !g_side[1].nextLotApplied) return false;
 string why="";
 return ValidateConfiguration(g_next,why) && ValidateLot(g_side[0].nextLot,why) && ValidateLot(g_side[1].nextLot,why);
}
bool PN48_CommandAllowed(int command,int side) {
 if(command==CMD_STOP) return PN48_SafeIdentity();
 if(command==CMD_RESET_SAVED) return PN48_ResetAvailable() && !g_confirmReset;
 if(command==CMD_CONFIRM_RESET) return PN48_ResetAvailable() && g_confirmReset;
 if(!PN48_Operational()) return false;
 if(command==CMD_RUN) return PN48_RunAvailable();
 if(command==CMD_PAUSE) return side>=0 && side<SIDES && PN48_CurrentCycle() && (g_side[side].control==SC_PLAYING || g_side[side].control==SC_RESUMING);
 if(command==CMD_PLAY) return side>=0 && side<SIDES && g_state==GS_RUNNING && g_side[side].control==SC_PAUSED && g_storeHealthy && !IntentPendingFor(side);
 if(command==CMD_TRAIL) return side>=0 && side<SIDES && PN48_CurrentCycle();
 if(command==CMD_LOT) return side>=0 && side<SIDES;
 if(command==CMD_TIMER_START) return PN48_CurrentCycle() && g_timer!=TM_RUNNING;
 if(command==CMD_TIMER_RESET) return PN48_CurrentCycle() && g_timer==TM_RUNNING;
 return command==CMD_LIMITS || command==CMD_TIME || command==CMD_AUTO;
}
void QueueCommand(int command,int side=-1) {
 if(!PN48_CommandAllowed(command,side)) return;
 // Repeated clicks during an existing request cannot create another operation.
 if(side>=0 && side<SIDES && IntentPendingFor(side) && (command==CMD_PLAY || command==CMD_RUN)) return;
 for(int i=0;i<ArraySize(g_commands);i++) if(g_commands[i]==command && g_commandSides[i]==side) return;
 int n=ArraySize(g_commands);
 if(ArrayResize(g_commands,n+1)!=n+1 || ArrayResize(g_commandSides,n+1)!=n+1 || ArrayResize(g_commandSerials,n+1)!=n+1) {
  ArrayResize(g_commands,n); ArrayResize(g_commandSides,n); ArrayResize(g_commandSerials,n);
  Problem("panel.command.memory","SYSTEM","Command queue","Not enough memory to queue the requested action."); return;
 }
 g_commands[n]=command; g_commandSides[n]=side; g_commandSerials[n]=++g_commandSerial;
 // Rotate only accepted action identities. The currently visible old object
 // stays unchanged until dispatch completes; all in-flight native clicks
 // on it are stale even if the request fails and returns to the same state.
 if(command==CMD_PLAY||command==CMD_PAUSE)PN48_controlEpoch[side]++;
 else if(command==CMD_RUN)PN48_runEpoch++;
 // ROOT alone processes commands. No timer, stage, control, or lot is changed here.
}
void Problem(string key,string side,string action,string reason,string detail="") {
 if(key=="") key=side+"|"+action+"|"+reason;
 if(side=="") side="SYSTEM";
 int found=-1;
 for(int i=0;i<ArraySize(g_problems);i++) if(g_problems[i].key==key) { found=i; break; }
 bool fresh=false,changed=false;
 if(found<0) {
  found=ArraySize(g_problems);
  if(ArrayResize(g_problems,found+1)!=found+1) { Print(side," | ",action," | ",reason," | ",detail); return; }
  g_problems[found].key=key; g_problems[found].active=false;
 }
 fresh=!g_problems[found].active;
 changed=fresh || g_problems[found].side!=side || g_problems[found].action!=action || g_problems[found].reason!=reason || g_problems[found].detail!=detail;
 if(fresh) g_problems[found].sequence=++g_problemSerial;
 g_problems[found].side=side; g_problems[found].action=action;
 g_problems[found].reason=reason; g_problems[found].detail=detail; g_problems[found].active=true;
 if(changed) {
  Print(side," | ",action," | ",reason," | ",detail," | Time=",TimeToString(TimeCurrent(),TIME_DATE|TIME_SECONDS));
  MarkDirty();
 }
}
void ResolveProblem(string key) {
 for(int i=0;i<ArraySize(g_problems);i++) {
  if(g_problems[i].key==key && g_problems[i].active) { g_problems[i].active=false; MarkDirty(); }
 }
}
string CurrentProblemText() {
 int found=-1; long newest=-1;
 for(int i=0;i<ArraySize(g_problems);i++) if(g_problems[i].active && g_problems[i].sequence>newest) { found=i; newest=g_problems[i].sequence; }
 if(found<0) return "";
 string result=g_problems[found].side+" | "+g_problems[found].action+": "+g_problems[found].reason;
 if(g_problems[found].detail!="") result+=" | "+g_problems[found].detail;
 return result;
}

void PN48_Preset() {
 if(PanelSize==Small) {
  PN48_width=420; PN48_point=9; PN48_buttonHeight=26; PN48_padding=10; PN48_gap=6; PN48_columnsGap=10; PN48_titleHeight=30;
 } else if(PanelSize==Large) {
  PN48_width=640; PN48_point=13; PN48_buttonHeight=40; PN48_padding=16; PN48_gap=10; PN48_columnsGap=16; PN48_titleHeight=44;
 } else {
  PN48_width=520; PN48_point=11; PN48_buttonHeight=32; PN48_padding=12; PN48_gap=8; PN48_columnsGap=12; PN48_titleHeight=36;
 }
 uint w=0,h=0; PN48_Measure("Ag0123456789",PN48_point,false,w,h);
 PN48_textHeight=(int)h;
}
void PN48_Clamp() {
 int chartWidth=(int)ChartGetInteger(0,CHART_WIDTH_IN_PIXELS,0);
 int chartHeight=(int)ChartGetInteger(0,CHART_HEIGHT_IN_PIXELS,0);
 if(chartWidth<=0 || chartHeight<=0) return;
 int maxX=(int)MathMax(0,chartWidth-PN48_width);
 // If the panel is taller than the chart, its title and first rows stay reachable.
 int maxY=(int)MathMax(0,chartHeight-PN48_height);
 int x=(int)MathMax(0,MathMin(g_panelX,maxX)),y=(int)MathMax(0,MathMin(g_panelY,maxY));
 if(x!=g_panelX || y!=g_panelY) { g_panelX=x; g_panelY=y; MarkDirty(); }
}
void PN48_PurgeUnused() {
 for(int i=ArraySize(PN48_objects)-1;i>=0;i--) {
  if(PN48_objects[i].generation==PN48_generation) continue;
  ObjectDelete(0,PN48_objects[i].name);
  if(PN48_objects[i].resource!="") ResourceFree(PN48_objects[i].resource);
  for(int j=i;j<ArraySize(PN48_objects)-1;j++) PN48_objects[j]=PN48_objects[j+1];
  ArrayResize(PN48_objects,ArraySize(PN48_objects)-1);
 }
}
int PN48_DrawFinancial(int x,int y,int usable,int leftWidth,int rightX,int rightWidth,bool operational) {
 int row=y;
 PN48_Text("net",PN48_NetText(),x,row,usable,g_netAvailable?PN48_text:PN48_wait);
 row+=PN48_textHeight+PN48_gap;
 PN48_Text("profit_label","Profit Target",x,row,leftWidth,PN48_text);
 PN48_Text("loss_label","Loss Limit",rightX,row,rightWidth,PN48_text);
 row+=PN48_textHeight+PN48_gap;
 double profitDraft=0,lossDraft=0;
 bool profitValid=PN48_Number(g_draftProfit,profitDraft),lossValid=PN48_Number(g_draftLoss,lossDraft);
 // Both values still commit together; each field shows its own unapplied change.
 bool profitDirty=g_draftFinancialDirty && (!profitValid || profitDraft!=g_profitTarget);
 bool lossDirty=g_draftFinancialDirty && (!lossValid || lossDraft!=g_lossLimit);
 PN48_Edit("profit",g_draftProfit,x,row,leftWidth,operational,profitValid,profitDirty);
 PN48_Edit("loss",g_draftLoss,rightX,row,rightWidth,operational,lossValid,lossDirty);
 row+=PN48_buttonHeight+PN48_gap;
 PN48_Text("profit_applied","Applied: "+(g_profitTarget==0?"OFF":PN48_NumberText(g_profitTarget)),x,row,leftWidth,PN48_text);
 PN48_Text("loss_applied","Applied: "+(g_lossLimit==0?"OFF":PN48_NumberText(g_lossLimit)),rightX,row,rightWidth,PN48_text);
 row+=PN48_textHeight+PN48_gap;
 PN48_Text("profit_dirty",profitDirty?"Not Applied":"",x,row,leftWidth,profitValid?PN48_wait:PN48_error);
 PN48_Text("loss_dirty",lossDirty?"Not Applied":"",rightX,row,rightWidth,lossValid?PN48_wait:PN48_error);
 row+=PN48_textHeight+PN48_gap;
 PN48_Button("limits_apply","Apply",x,row,usable,operational);
 return row+PN48_buttonHeight;
}
int PN48_DrawSide(int side,int x,int y,int width,bool operational) {
 string stem=side==BUY_SIDE?"buy_":"sell_";
 color accent=side==BUY_SIDE?PN48_buy:PN48_sell;
 int row=y;
 PN48_Text(stem+"name",side==BUY_SIDE?"BUY":"SELL",x,row,width,accent,true);
 row+=PN48_textHeight+PN48_gap;
 int stage=g_side[side].phase==OP_NEXT?g_side[side].targetStage:g_side[side].stage;
 string stageText="Stage: "+(stage>=1 && stage<=STAGES?IntegerToString(stage):"-");
 if(g_side[side].phase==OP_NEXT) stageText+=" / Waiting";
 PN48_Text(stem+"stage",stageText,x,row,width,PN48_text);
 row+=PN48_textHeight+PN48_gap;
 color statusColor=(g_side[side].control==SC_APPLYING_PAUSE || g_side[side].control==SC_RESUMING || g_side[side].phase==OP_NEXT)?PN48_wait:PN48_text;
 PN48_Text(stem+"status",PN48_SideStatus(side),x,row,width,statusColor);
 row+=PN48_textHeight+PN48_gap;
 PN48_Text(stem+"current","Current Lot: "+PN48_CurrentLot(side),x,row,width,PN48_text);
 row+=PN48_textHeight+PN48_gap;
 PN48_Text(stem+"next","Next Lot: "+(g_side[side].nextLotApplied?PN48_NumberText(g_side[side].nextLot):"-"),x,row,width,g_side[side].nextLotApplied?PN48_text:PN48_wait);
 row+=PN48_textHeight+PN48_gap;
 int available=width-PN48_gap,fieldWidth=(available*70)/100,applyWidth=available-fieldWidth;
 bool dirty=side==BUY_SIDE?g_draftBuyDirty:g_draftSellDirty;
 bool valid=PN48_LotValid(side);
 PN48_Edit(stem+"lot",side==BUY_SIDE?g_draftBuy:g_draftSell,x,row,fieldWidth,operational,valid,dirty);
 PN48_Button(stem+"apply","Apply",x+fieldWidth+PN48_gap,row,applyWidth,operational);
 row+=PN48_buttonHeight+PN48_gap;
 PN48_Text(stem+"applied","Applied: "+(g_side[side].nextLotApplied?PN48_NumberText(g_side[side].nextLot):"-"),x,row,width,PN48_text);
 row+=PN48_textHeight+PN48_gap;
 PN48_Text(stem+"dirty",dirty || !g_side[side].nextLotApplied?"Not Applied":"",x,row,width,valid?PN48_wait:PN48_error);
 row+=PN48_textHeight+PN48_gap;
 int command=g_side[side].control==SC_PAUSED?CMD_PLAY:CMD_PAUSE;
 // The object name carries the action the user actually clicked. A delayed
 // repeated Play/Pause event cannot turn into the opposite action merely
 // because the first blocking broker request has changed the side state.
 PN48_Button(PN48_ControlKey(side,command),PN48_ControlText(side),x,row,width,PN48_CommandAllowed(command,side),statusColor==PN48_wait?PN48_disabled:accent);
 row+=PN48_buttonHeight+PN48_gap;
 PN48_Button(stem+"trail",g_side[side].trailing?"Trailing ON":"Trailing OFF",x,row,width,PN48_CommandAllowed(CMD_TRAIL,side),accent);
 return row+PN48_buttonHeight;
}
int PN48_DrawTimer(int x,int y,int usable,bool operational) {
 int row=y;
 string state=g_timer==TM_RUNNING?"Running":(g_timer==TM_EXPIRED?"Expired":"Off");
 long remaining=0;
 if(g_timer==TM_RUNNING && g_timerDeadline>g_now) remaining=(long)((g_timerDeadline-g_now+999)/1000);
 PN48_Text("timer_status","Timer: "+state,x,row,usable,g_timer==TM_EXPIRED?PN48_wait:PN48_text);
 row+=PN48_textHeight+PN48_gap;
 PN48_Text("timer_remaining","Remaining: "+PN48_Duration(remaining),x,row,usable,PN48_text);
 row+=PN48_textHeight+PN48_gap;
 int third=(usable-2*PN48_columnsGap)/3;
 int widths[3]; widths[0]=third; widths[1]=third; widths[2]=usable-2*PN48_columnsGap-2*third;
 string labels[3]; labels[0]="Hours"; labels[1]="Minutes"; labels[2]="Seconds";
 string keys[3]; keys[0]="hours"; keys[1]="minutes"; keys[2]="seconds";
 string drafts[3]; drafts[0]=g_draftHours; drafts[1]=g_draftMinutes; drafts[2]=g_draftSeconds;
 int fieldX=x;
 for(int i=0;i<3;i++) {
  PN48_Text(keys[i]+"_label",labels[i],fieldX,row,widths[i],PN48_text);
  fieldX+=widths[i]+PN48_columnsGap;
 }
 row+=PN48_textHeight+PN48_gap; fieldX=x;
 for(int j=0;j<3;j++) {
  int value=0;
  bool valid=PN48_Integer(drafts[j],value) && value<=(j==0?23:59);
  if(valid && !PN48_TimeValid()) valid=false;
  PN48_Edit(keys[j],drafts[j],fieldX,row,widths[j],operational,valid,g_draftTimeDirty);
  fieldX+=widths[j]+PN48_columnsGap;
 }
 row+=PN48_buttonHeight+PN48_gap;
 PN48_Text("time_applied","Applied: "+PN48_Duration(g_duration),x,row,usable,PN48_text);
 row+=PN48_textHeight+PN48_gap;
 PN48_Text("time_dirty",g_draftTimeDirty?"Not Applied":"",x,row,usable,PN48_TimeValid()?PN48_wait:PN48_error);
 row+=PN48_textHeight+PN48_gap;
 PN48_Button("time_apply","Apply Time",x,row,usable,operational);
 row+=PN48_buttonHeight+PN48_gap;
 int half=(usable-PN48_columnsGap)/2;
 PN48_Button("timer_start","Start Timer",x,row,half,PN48_CommandAllowed(CMD_TIMER_START,-1));
 PN48_Button("timer_reset","Reset Timer",x+half+PN48_columnsGap,row,usable-PN48_columnsGap-half,PN48_CommandAllowed(CMD_TIMER_RESET,-1));
 return row+PN48_buttonHeight;
}
void PN48_TwoLines(string full,int width,string &first,string &second) {
 first=""; second=""; if(full=="") return;
 // Newlines from a technical detail cannot expand the fixed two-line bar.
 StringReplace(full,"\r"," "); StringReplace(full,"\n"," ");
 int length=StringLen(full),end=0;
 while(end<length && PN48_TextWidth(StringSubstr(full,0,end+1))<=width) end++;
 if(end>=length) { first=full; return; }
 int split=end;
 for(int i=end-1;i>0;i--) if(StringGetCharacter(full,i)==32) { split=i; break; }
 if(split<=0) split=end;
 first=StringSubstr(full,0,split);
 int start=split; while(start<length && StringGetCharacter(full,start)==32) start++;
 second=PN48_Fit(StringSubstr(full,start),width);
}
void PN48_DrawMessage(int x,int y,int usable) {
 string full=CurrentProblemText(),first="",second="";
 PN48_TwoLines(full,usable-2*PN48_gap,first,second);
 int height=2*PN48_textHeight+2*PN48_gap;
 PN48_Rect("message_bar",x,y,usable,height,PN48_field,PN48_field);
 PN48_Text("message_first",first,x+PN48_gap,y+PN48_gap,usable-2*PN48_gap,PN48_error,false,-1,full,PN48_field);
 PN48_Text("message_second",second,x+PN48_gap,y+PN48_gap+PN48_textHeight,usable-2*PN48_gap,PN48_error,false,-1,full,PN48_field);
 ObjectSetString(0,PN48_Name("message_bar"),OBJPROP_TOOLTIP,full==""?"\n":full);
}

void CreatePanel() {
 if(PN48_created) DestroyPanel();
 PN48_created=true; PN48_focus=""; PN48_fontIssue=false; g_dragging=false;
 PN48_mouseWasEnabled=(bool)ChartGetInteger(0,CHART_EVENT_MOUSE_MOVE);
 ChartSetInteger(0,CHART_EVENT_MOUSE_MOVE,true);
 PN48_Preset(); RenderPanel();
}
void RenderPanel() {
 if(!PN48_created) return;
 PN48_Preset();
 int text=PN48_textHeight,gap=PN48_gap,padding=PN48_padding;
 bool mismatch=g_managedSymbol!="" && g_managedSymbol!=Symbol();
 int symbolRows=mismatch?2*(text+gap):0;
 if(g_collapsed) PN48_height=PN48_titleHeight+2*padding+2*text+2*gap+PN48_buttonHeight;
 else {
  int financial=4*text+2*PN48_buttonHeight+5*gap;
  int sides=7*text+3*PN48_buttonHeight+9*gap;
  int timer=5*text+3*PN48_buttonHeight+7*gap;
  int message=2*text+2*gap;
  int reset=PN48_ResetAvailable()?2*gap+PN48_buttonHeight:0;
  if(PN48_ResetAvailable() && g_confirmReset) reset+=3*text+2*gap;
  PN48_height=PN48_titleHeight+2*padding+symbolRows+PN48_buttonHeight+financial+sides+timer+message+8*gap+reset;
 }
 PN48_Clamp(); PN48_generation++;
 int x=g_panelX+padding,y=g_panelY+PN48_titleHeight+padding;
 int usable=PN48_width-2*padding;
 int leftWidth=(usable-PN48_columnsGap)/2,rightWidth=usable-PN48_columnsGap-leftWidth;
 int rightX=x+leftWidth+PN48_columnsGap;
 PN48_Rect("background",g_panelX,g_panelY,PN48_width,PN48_height,PN48_background,PN48_disabled);
 PN48_Rect("title_bar",g_panelX,g_panelY,PN48_width,PN48_titleHeight,PN48_background,PN48_disabled);
 int collapseWidth=PN48_titleHeight-8,collapseX=g_panelX+PN48_width-padding-collapseWidth;
 string managed=g_managedSymbol==""?Symbol():g_managedSymbol;
 int stateWidth=g_collapsed?0:PN48_TextWidth(PN48_State())+gap;
 int titleWidth=collapseX-g_panelX-padding-gap-stateWidth;
 uint titleTextWidth=0,titleTextHeight=0;
 PN48_Measure("48-Step EA "+managed,PN48_point+2,true,titleTextWidth,titleTextHeight);
 int titleY=g_panelY+(int)MathMax(0,(PN48_titleHeight-(int)titleTextHeight)/2);
 PN48_Text("title","48-Step EA "+managed,g_panelX+padding,titleY,titleWidth,PN48_text,true,PN48_point+2);
 if(!g_collapsed) PN48_Text("global_state",PN48_State(),collapseX-gap-stateWidth,g_panelY+(PN48_titleHeight-text)/2,stateWidth,g_state==GS_BLOCKED?PN48_error:(g_state==GS_STARTING || g_state==GS_RECOVERING || g_state==GS_EXITING?PN48_wait:PN48_text),false,-1,g_blockReason);
 PN48_Button("collapse",g_collapsed?"+":"-",collapseX,g_panelY+4,collapseWidth,true);
 ObjectSetInteger(0,PN48_Name("collapse"),OBJPROP_YSIZE,PN48_titleHeight-8);
 if(g_collapsed) {
  PN48_Text("collapsed_state",PN48_State(),x,y,usable,g_state==GS_BLOCKED?PN48_error:PN48_text,false,-1,g_blockReason);
  y+=text+gap; PN48_Text("collapsed_net",PN48_NetText(),x,y,usable,g_netAvailable?PN48_text:PN48_wait);
  y+=text+gap; PN48_Button("stop","Stop",x,y,usable,PN48_CommandAllowed(CMD_STOP,-1),PN48_error);
  PN48_PurgeUnused(); ChartRedraw(0); return;
 }
 if(mismatch) {
  PN48_Text("managed_symbol","Managed Symbol: "+managed,x,y,usable,PN48_wait); y+=text+gap;
  PN48_Text("chart_symbol","Chart Symbol: "+Symbol(),x,y,usable,PN48_wait); y+=text+gap;
 }
 int third=(usable-2*gap)/3;
 PN48_Button(PN48_RunKey(),"Run",x,y,third,PN48_RunAvailable(),PN48_buy);
 PN48_Button("stop","Stop",x+third+gap,y,third,PN48_CommandAllowed(CMD_STOP,-1),PN48_error);
 PN48_Button("auto",g_autoRestart?"Auto Restart ON":"Auto Restart OFF",x+2*(third+gap),y,usable-2*(third+gap),PN48_CommandAllowed(CMD_AUTO,-1));
 y+=PN48_buttonHeight+2*gap;
 bool operational=PN48_Operational();
 y=PN48_DrawFinancial(x,y,usable,leftWidth,rightX,rightWidth,operational)+2*gap;
 int leftBottom=PN48_DrawSide(BUY_SIDE,x,y,leftWidth,operational);
 int rightBottom=PN48_DrawSide(SELL_SIDE,rightX,y,rightWidth,operational);
 y=(int)MathMax(leftBottom,rightBottom)+2*gap;
 y=PN48_DrawTimer(x,y,usable,operational)+2*gap;
 if(PN48_ResetAvailable()) {
  if(g_confirmReset) {
   string exact="Confirm that previous orders have been handled manually. Reset does not close unknown orders.";
   string first="",second="";
   PN48_TwoLines(exact,usable,first,second);
   // A separate confirmation block preserves the exact full prompt in its tooltip.
   PN48_Text("reset_prompt_first",first,x,y,usable,PN48_wait,false,-1,exact); y+=text;
   PN48_Text("reset_prompt_second",second,x,y,usable,PN48_wait,false,-1,exact); y+=text+gap;
   PN48_Text("reset_prompt_note","Reset creates Standby; it does not Run.",x,y,usable,PN48_wait,false,-1,exact); y+=text+gap;
   PN48_Button("confirm_reset","Confirm Reset",x,y,usable,true,PN48_error);
  } else PN48_Button("reset_saved","Reset Saved State",x,y,usable,true,PN48_error);
  y+=PN48_buttonHeight+2*gap;
 }
 PN48_DrawMessage(x,y,usable);
 PN48_PurgeUnused(); ChartRedraw(0);
}
void DestroyPanel() {
 for(int i=ArraySize(PN48_objects)-1;i>=0;i--) {
  ObjectDelete(0,PN48_objects[i].name);
  if(PN48_objects[i].resource!="") ResourceFree(PN48_objects[i].resource);
 }
 ArrayResize(PN48_objects,0);
 if(PN48_created) ChartSetInteger(0,CHART_EVENT_MOUSE_MOVE,PN48_mouseWasEnabled);
 PN48_created=false; PN48_focus=""; g_dragging=false;
 ChartRedraw(0);
}
void PN48_ReadField(string key) {
 string name=PN48_Name(key);
 if(ObjectFind(0,name)<0) return;
 string value=ObjectGetString(0,name,OBJPROP_TEXT),previous="";
 if(key=="buy_lot") {
  previous=g_draftBuy; g_draftBuy=value; if(previous!=value) g_draftBuyDirty=true;
 } else if(key=="sell_lot") {
  previous=g_draftSell; g_draftSell=value; if(previous!=value) g_draftSellDirty=true;
 } else if(key=="profit") {
  previous=g_draftProfit; g_draftProfit=value; if(previous!=value) g_draftFinancialDirty=true;
 } else if(key=="loss") {
  previous=g_draftLoss; g_draftLoss=value; if(previous!=value) g_draftFinancialDirty=true;
 } else if(key=="hours") {
  previous=g_draftHours; g_draftHours=value; if(previous!=value) g_draftTimeDirty=true;
 } else if(key=="minutes") {
  previous=g_draftMinutes; g_draftMinutes=value; if(previous!=value) g_draftTimeDirty=true;
 } else if(key=="seconds") {
  previous=g_draftSeconds; g_draftSeconds=value; if(previous!=value) g_draftTimeDirty=true;
 } else return;
 if(previous!=value) MarkDirty();
 bool integer=key=="hours" || key=="minutes" || key=="seconds";
 bool lotField=key=="buy_lot" || key=="sell_lot";
 string field=key=="buy_lot"?"Buy Lot":(key=="sell_lot"?"Sell Lot":(key=="profit"?"Profit Target":(key=="loss"?"Loss Limit":(key=="hours"?"Hours":(key=="minutes"?"Minutes":"Seconds")))));
 string side=key=="buy_lot"?"BUY":(key=="sell_lot"?"SELL":"SYSTEM");
 string problemKey="panel.input."+key;
 bool valid=PN48_LexNumber(value,integer);
 string range=integer?(key=="hours"?"integer 0-23":"integer 0-59"):"finite non-negative number using ASCII digits 0-9 and at most one decimal point; non-empty";
 if(lotField) range="finite positive number using ASCII digits 0-9 and at most one decimal point; non-empty; broker minimum "+PN48_NumberText(g_rules.minLot)+", maximum "+PN48_NumberText(g_rules.maxLot)+", lot step "+PN48_NumberText(g_rules.lotStep);
 if(valid && integer) { int number=0; valid=PN48_Integer(value,number) && number<=(key=="hours"?23:59); }
 else if(valid && lotField) {
  double lot=0; string why="";
  valid=PN48_Number(value,lot) && ValidateLot(lot,why);
 } else if(valid) { double number=0; valid=PN48_Number(value,number); }
 if(!valid) Problem(problemKey,side,"Edit "+field,field+" value '"+value+"' is invalid. Required: "+range+".");
 else ResolveProblem(problemKey);
 if(integer) {
  int hours=0,minutes=0,seconds=0;
  bool ready=PN48_Integer(g_draftHours,hours) && hours<=23 && PN48_Integer(g_draftMinutes,minutes) && minutes<=59 && PN48_Integer(g_draftSeconds,seconds) && seconds<=59;
  if(ready && hours*3600+minutes*60+seconds==0)
   Problem("panel.input.duration","SYSTEM","Edit Timer duration","Hours='"+g_draftHours+"', Minutes='"+g_draftMinutes+"', Seconds='"+g_draftSeconds+"' is invalid. Required: total duration 1-86399 seconds; Hours 0-23, Minutes and Seconds 0-59.");
  else ResolveProblem("panel.input.duration");
 }
}
void PN48_ReadGroup(int command,int side) {
 if(command==CMD_LOT) PN48_ReadField(side==BUY_SIDE?"buy_lot":"sell_lot");
 else if(command==CMD_LIMITS) { PN48_ReadField("profit"); PN48_ReadField("loss"); }
 else if(command==CMD_TIME) { PN48_ReadField("hours"); PN48_ReadField("minutes"); PN48_ReadField("seconds"); }
 PN48_focus="";
}
void HandlePanelEvent(const int id,const long lparam,const double dparam,const string sparam) {
 if(!PN48_created) return;
 if(id==CHARTEVENT_CHART_CHANGE) { RenderPanel(); return; }
 if(id==CHARTEVENT_MOUSE_MOVE) {
  int mouseX=(int)lparam,mouseY=(int)dparam;
  int buttons=(int)StringToInteger(sparam); bool left=(buttons&1)!=0;
  int collapseWidth=PN48_titleHeight-8;
  int collapseX=g_panelX+PN48_width-PN48_padding-collapseWidth;
  bool title=mouseX>=g_panelX && mouseX<g_panelX+PN48_width && mouseY>=g_panelY && mouseY<g_panelY+PN48_titleHeight;
  bool collapse=mouseX>=collapseX && mouseX<collapseX+collapseWidth && mouseY>=g_panelY+4 && mouseY<g_panelY+PN48_titleHeight-4;
  if(left && !g_dragging && title && !collapse) { g_dragging=true; g_dragX=mouseX-g_panelX; g_dragY=mouseY-g_panelY; }
  if(g_dragging && left) {
   int oldX=g_panelX,oldY=g_panelY;
   g_panelX=mouseX-g_dragX; g_panelY=mouseY-g_dragY; PN48_Clamp();
   if(oldX!=g_panelX || oldY!=g_panelY) { MarkDirty(); RenderPanel(); }
  }
  if(!left) g_dragging=false;
  return;
 }
 if(id==CHARTEVENT_OBJECT_ENDEDIT) {
  string prefix=g_prefix+"P_";
  if(StringFind(sparam,prefix)!=0) return;
  PN48_ReadField(StringSubstr(sparam,StringLen(prefix)));
  PN48_focus=""; RenderPanel(); return;
 }
 if(id==CHARTEVENT_KEYDOWN && lparam==13) {
  // Enter ends editing only. No behavioral command is enqueued.
  if(PN48_focus!="") { PN48_ReadField(StringSubstr(PN48_focus,StringLen(g_prefix+"P_"))); PN48_focus=""; RenderPanel(); }
  return;
 }
 if(id!=CHARTEVENT_OBJECT_CLICK) return;
 string prefix=g_prefix+"P_";
 if(StringFind(sparam,prefix)!=0) {
  if(PN48_focus!="") PN48_ReadField(StringSubstr(PN48_focus,StringLen(prefix)));
  PN48_focus=""; return;
 }
 string key=StringSubstr(sparam,StringLen(prefix));
 if(key=="buy_lot" || key=="sell_lot" || key=="profit" || key=="loss" || key=="hours" || key=="minutes" || key=="seconds") {
  if(PN48_focus!="" && PN48_focus!=sparam) PN48_ReadField(StringSubstr(PN48_focus,StringLen(prefix)));
  if(PN48_Operational()) PN48_focus=sparam;
  return;
 }
 ObjectSetInteger(0,sparam,OBJPROP_STATE,false);
 if(key=="collapse") {
  if(PN48_focus!="") PN48_ReadField(StringSubstr(PN48_focus,StringLen(prefix)));
  PN48_focus=""; g_collapsed=!g_collapsed; MarkDirty(); RenderPanel(); return;
 }
 int command=0,side=-1;
 if(key==PN48_RunKey()) command=CMD_RUN;
 else if(key=="stop") command=CMD_STOP;
 else if(key=="auto") command=CMD_AUTO;
 else if(key=="buy_apply") { command=CMD_LOT; side=BUY_SIDE; }
 else if(key=="sell_apply") { command=CMD_LOT; side=SELL_SIDE; }
 else if(key=="limits_apply") command=CMD_LIMITS;
 else if(key=="time_apply") command=CMD_TIME;
 else if(key=="timer_start") command=CMD_TIMER_START;
 else if(key=="timer_reset") command=CMD_TIMER_RESET;
 else if(key==PN48_ControlKey(BUY_SIDE,CMD_PLAY) || key==PN48_ControlKey(SELL_SIDE,CMD_PLAY)) {
  side=key==PN48_ControlKey(BUY_SIDE,CMD_PLAY)?BUY_SIDE:SELL_SIDE;command=CMD_PLAY;
 } else if(key==PN48_ControlKey(BUY_SIDE,CMD_PAUSE) || key==PN48_ControlKey(SELL_SIDE,CMD_PAUSE)) {
  side=key==PN48_ControlKey(BUY_SIDE,CMD_PAUSE)?BUY_SIDE:SELL_SIDE;command=CMD_PAUSE;
 } else if(key=="buy_trail" || key=="sell_trail") { side=key=="buy_trail"?BUY_SIDE:SELL_SIDE; command=CMD_TRAIL; }
 else if(key=="reset_saved") command=CMD_RESET_SAVED;
 else if(key=="confirm_reset") command=CMD_CONFIRM_RESET;
 if(command!=0 && PN48_CommandAllowed(command,side)) {
  int before=ArraySize(g_commands);
  if(PN48_focus!="") PN48_ReadField(StringSubstr(PN48_focus,StringLen(prefix)));
  PN48_ReadGroup(command,side); QueueCommand(command,side);
  if(ArraySize(g_commands)>before)return; // Root dispatches, then repaints.
 }
 RenderPanel();
}


// ---------- Event dispatcher and lifecycle (4.3-6,13,20.10-15,20.27-31) ----------
// Native MT4 handlers are serialized. UI-only events never call this trading
// dispatcher; panel commands are consumed once, in their recorded FIFO order.
bool EV_initialized=false;
bool EV_loaded=false;
bool EV_lifecycleValid=false;
bool EV_timerRegistered=false;
ulong EV_ownerRetry=0;
ulong EV_timerRetry=0;

void EV_ClearCommands(){
 ArrayResize(g_commands,0);ArrayResize(g_commandSides,0);ArrayResize(g_commandSerials,0);
}
void EV_DefaultSides(){
 for(int s=0;s<SIDES;s++){
  g_side[s].control=SC_PLAYING;g_side[s].phase=OP_NONE;g_side[s].stage=0;
  g_side[s].targetStage=0;g_side[s].occurrence=0;g_side[s].ticket=-1;
  g_side[s].orderLot=0;g_side[s].lastPending=0;g_side[s].finalClose=0;g_side[s].finalCloseTime=0;
  g_side[s].finalKnown=false;g_side[s].initialConfirmed=false;g_side[s].tradeSeen=false;
  g_side[s].trailing=true;g_side[s].nextLotApplied=false;g_side[s].nextLot=0;
  g_side[s].targetLot=0;g_side[s].targetLotFrozen=false;g_side[s].pauseRequested=false;
  g_side[s].rollbackSL=false;g_side[s].rollbackTP=false;g_side[s].retryAt=0;g_side[s].playGeneration=0;
 }
}
void EV_CheckIdentity(){
 if(AccountNumber()!=g_installAccount||AccountServer()!=g_installServer){
  g_accountBlocked=true;g_state=GS_BLOCKED;g_autoPending=false;
  g_blockReason="Account changed; remove and reattach the EA before trading this account";
  CaptureLifecycle(REASON_ACCOUNT);
  Problem("account-change","SYSTEM","Process","Account change requires reattachment",g_blockReason);
 }
 // InstanceID belongs to the attachment, not the editable NEXT strategy.
 // Keep the authenticated origin and its files/locks, including on reinit.
 if(InstanceID!=g_installID)
  Problem("instance-id","SYSTEM","Inputs","InstanceID differs from the attached installation identity",
          "Attached identity='"+g_installID+"'; rejected identity='"+InstanceID+"'. The previous identity and managed scope remain in force.");
 else ResolveProblem("instance-id");
}
void EV_CheckChartSymbol(){
 if(g_haveActive&&g_managedSymbol!=Symbol()){
  g_symbolChanged=true;g_autoPending=false;g_restartCancelled=true;MarkDirty();
  Problem("chart-symbol","SYSTEM","Manage","Managed Symbol differs from Chart Symbol",
          "Managed Symbol="+g_managedSymbol+"; Chart Symbol="+Symbol()+". The existing cycle retains its managed symbol; automatic restart is cancelled.");
 }else if(g_managedSymbol==Symbol())ResolveProblem("chart-symbol");
}
bool EV_SafeToProcess(){
 EV_CheckIdentity();
 if(!EV_lifecycleValid||g_accountBlocked||!g_identityKnown||g_installID=="")return false;
 if(!g_owned){
  if(g_now<EV_ownerRetry)return false;
  EV_ownerRetry=g_now+RetryDelay();
  if(!AcquireOwnership())return false;
  // Ownership retries do not infer a new stage. The saved primary state is
  // still the only continuation source for a hydrated cycle.
  if(g_state==GS_BLOCKED){g_state=EV_loaded?GS_RECOVERING:GS_STANDBY;g_recoveryReady=false;}
 }
 return VerifyOwnership();
}
void EV_RestorePrimary(){
 if(g_state!=GS_RECOVERING||g_accountBlocked||!g_identityKnown)return;
 if(g_exitLatched){g_state=GS_EXITING;MarkDirty();return;}
 if(g_savedState==GS_EXITING){
  g_exitLatched=true;g_state=GS_EXITING;
  if(g_exitReason==XR_NONE)g_exitReason=XR_INCONSISTENT;
  MarkDirty();return;
 }
 if(!g_historyReady||g_graceActive||!RC_scanHealthy)return;
 if(g_savedState==GS_STANDBY&&!g_haveActive)g_state=GS_STANDBY;
 else if(g_savedState==GS_STARTING&&g_haveActive)g_state=GS_STARTING;
 else if(g_savedState==GS_RUNNING&&g_haveActive)g_state=GS_RUNNING;
 else{
  // A valid checksum does not supply a missing primary continuation state.
  BeginHistoryGrace("Saved primary state has no permitted continuation");
  if(HistoryGraceExpired()&&ScopeIdentifiable())LatchExit(XR_INCONSISTENT);
  return;
 }
 g_recoveryReady=true;MarkDirty();
}
void EV_SaveDirty(){
 if(!EV_lifecycleValid||!g_dirty||!g_owned||!g_identityKnown||g_accountBlocked||g_installID=="")return;
 if(!g_storeHealthy&&g_now<g_saveRetryAt)return;
 if(!SaveState(g_exitLatched||g_expiryBlock))g_saveRetryAt=g_now+RetryDelay();
}
void EV_CheckStartValidity(){
 if(g_state!=GS_STANDBY||g_accountBlocked||!g_identityKnown)return;
 string why="";
 if(g_installID==""||InstanceID=="")why="InstanceID rejected ''; required a non-empty installation identity";
 else{
  if(ValidateConfiguration(g_next,why))
   for(int s=0;s<SIDES;s++){
    if(!g_side[s].nextLotApplied){why=SideName(s)+" Lot rejected 'not Applied'; required a valid lot confirmed with Apply";break;}
    if(!ValidateLot(g_side[s].nextLot,why))break;
   }
 }
 if(why!="")Problem("start-validation","SYSTEM","Run",why);
 else{ResolveProblem("start-validation");ScopeHandoffReady();}
}
void EV_RecoveryExpiryPause(){
 if(g_state!=GS_RECOVERING||!g_haveActive||g_exitLatched||!g_expiryBlock||!g_owned)return;
 // History missing on one side cannot postpone essential expiry removal on
 // the other exact, attributed live object (13.3,20.7; model B18).
 int first=g_active.priority==BuyFirst?BUY_SIDE:SELL_SIDE;
 for(int pass=0;pass<SIDES;pass++){
  int side=pass==0?first:1-first;
  if(g_side[side].control!=SC_APPLYING_PAUSE)continue;
  int live=LiveOrderIndex(side);if(live<0)continue;
  int link=RC_LinkIndex(g_orders[live].ticket);
  if(link<0||!RC_CurrentLink(link,side)||!RC_LinkScope(g_links[link],g_orders[live]))continue;
  TR_ProcessPause(side);
  if(g_exitLatched)break;
 }
}
void EV_RegisterTimer(){
 if(EV_timerRegistered||g_now<EV_timerRetry)return;
 ResetLastError();EV_timerRegistered=EventSetTimer(1);
 if(EV_timerRegistered)ResolveProblem("event-timer");
 else{
  EV_timerRetry=g_now+RetryDelay();
  Problem("event-timer","SYSTEM","Initialize","The one-second event timer could not be registered",
          "MT4 error="+IntegerToString(GetLastError())+". Registration will be retried without blocking.");
 }
}
void EV_ApplyLot(int side){
 if(side<0||side>=SIDES)return;
 string text=side==BUY_SIDE?g_draftBuy:g_draftSell,why="";double lot=0;
 if(!ParseNumber(text,lot)||!ValidateLot(lot,why)){
  Problem("lot-input-"+IntegerToString(side),SideName(side),"Apply",
          SideName(side)+" Lot value '"+text+"' is invalid",
          "Required: finite positive ASCII decimal; broker minimum="+DoubleToString(g_rules.minLot,8)+
          ", maximum="+DoubleToString(g_rules.maxLot,8)+", lot step="+DoubleToString(g_rules.lotStep,8)+". "+why);
  return;
 }
 g_side[side].nextLot=lot;g_side[side].nextLotApplied=true;
 if(side==BUY_SIDE)g_draftBuyDirty=false;else g_draftSellDirty=false;
 ResolveProblem("lot-input-"+IntegerToString(side));ResolveProblem(side==BUY_SIDE?"panel.input.buy_lot":"panel.input.sell_lot");MarkDirty();
}
void EV_ApplyLimits(){
 double profit=0,loss=0;
 bool p=ParseNumber(g_draftProfit,profit),l=ParseNumber(g_draftLoss,loss);
 if(!p||!l){
  Problem("limits-input","SYSTEM","Apply",
          (!p?"Profit Target value '"+g_draftProfit+"'":"Loss Limit value '"+g_draftLoss+"'")+" is invalid",
          "Required: a finite non-negative ASCII decimal, not empty. Neither Applied financial target was changed.");return;
 }
 // Both candidates are validated before either source of truth is changed.
 g_profitTarget=profit;g_lossLimit=loss;g_draftFinancialDirty=false;
 ResolveProblem("limits-input");ResolveProblem("panel.input.profit");ResolveProblem("panel.input.loss");
 MarkDirty();RefreshAccounting();EvaluateLimits();
}
void EV_ApplyTime(){
 int hours=0,minutes=0,seconds=0;
 bool h=ParseInteger(g_draftHours,hours)&&hours<=23;
 bool m=ParseInteger(g_draftMinutes,minutes)&&minutes<=59;
 bool s=ParseInteger(g_draftSeconds,seconds)&&seconds<=59;
 if(!h||!m||!s){
  string field=!h?"Hours":(!m?"Minutes":"Seconds");
  string value=!h?g_draftHours:(!m?g_draftMinutes:g_draftSeconds);
  Problem("time-input","SYSTEM","Apply Time",field+" value '"+value+"' is invalid",
          "Required: Hours integer 0..23; Minutes and Seconds integer 0..59; ASCII digits only. Applied duration and deadline were preserved.");return;
 }
 long duration=(long)hours*3600+(long)minutes*60+(long)seconds;
 if(duration<=0||duration>=86400){
  Problem("time-input","SYSTEM","Apply Time","Timer duration value '"+IntegerToString(duration)+" seconds' is invalid",
          "Required: total duration 1..86399 seconds. Applied duration and deadline were preserved.");return;
 }
 ApplyTimerDuration(duration);g_draftTimeDirty=false;
 ResolveProblem("time-input");ResolveProblem("panel.input.duration");ResolveProblem("panel.input.hours");
 ResolveProblem("panel.input.minutes");ResolveProblem("panel.input.seconds");MarkDirty();
}
bool EV_Operational(){
 return !g_accountBlocked&&g_identityKnown&&g_state!=GS_EXITING&&g_state!=GS_BLOCKED&&g_state!=GS_RECOVERING;
}
void EV_Command(int command,int side){
 if(command==CMD_RESET_SAVED){
  if(EV_lifecycleValid&&g_state==GS_BLOCKED&&!g_identityKnown&&!g_accountBlocked){
   g_confirmReset=true;
   Problem("reset-confirm","SYSTEM","Reset Saved State",
           "Confirm that previous orders have been handled manually. Reset does not close unknown orders.");
  }return;
 }
 if(command==CMD_CONFIRM_RESET){
  if(EV_lifecycleValid&&ResetSavedState()){
   ResolveProblem("identity");ResolveProblem("reset-confirm");ResolveProblem("history");
   EV_loaded=false;RefreshSymbolRules();RefreshQuote();MarkDirty();
  }return;
 }
 if(command==CMD_STOP){
  if(!g_accountBlocked&&g_identityKnown&&g_owned&&g_state!=GS_BLOCKED){
   if(g_state==GS_STANDBY&&!g_haveActive&&RC_scanHealthy&&ArraySize(g_orders)==0&&
      (!ScopeIdentifiable()||ScopeEmpty())){
    // Idle Stop cancels a queued auto handoff without creating a fictitious
    // cleanup cycle or replacing the already finished financial result.
    g_restartCancelled=true;g_autoPending=false;g_timer=TM_OFF;
    g_timerDeadline=0;g_timerRemainingSaved=0;MarkDirty();
   }else LatchExit(XR_STOP);
  }
  return;
 }
 if(!EV_Operational())return;
 if(command==CMD_RUN){
  if(g_state==GS_STANDBY)BeginCycle(false);return;
 }
 if(command==CMD_LOT){RefreshSymbolRules();EV_ApplyLot(side);return;}
 if(command==CMD_LIMITS){EV_ApplyLimits();return;}
 if(command==CMD_TIME){EV_ApplyTime();return;}
 if(command==CMD_AUTO){g_autoRestart=!g_autoRestart;MarkDirty();return;}
 if(command==CMD_TIMER_START){StartTimer();return;}
 if(command==CMD_TIMER_RESET){ResetTimer();return;}
 if(side<0||side>=SIDES)return;
 if(command==CMD_TRAIL){g_side[side].trailing=!g_side[side].trailing;MarkDirty();return;}
 if(command==CMD_PAUSE){
  if(g_state==GS_STARTING||g_state==GS_RUNNING)RequestPause(side,false);return;
 }
 if(command==CMD_PLAY){
  if(g_state==GS_RUNNING&&g_side[side].control==SC_PAUSED)RequestPlay(side);return;
 }
}
bool EV_StopQueued(){
 bool stop=false;
 for(int i=0;i<ArraySize(g_commands);i++)if(g_commands[i]==CMD_STOP){
  EV_Command(CMD_STOP,-1);g_commands[i]=0;stop=true;
 }
 return stop;
}
void ProcessCommands(){
 // Move a snapshot out of the receive queue before executing any command.
 // An API/IO wait cannot cause this same logical command to be consumed twice.
 int commands[],sides[];int count=ArraySize(g_commands);
 if(ArrayResize(commands,count)!=count||ArrayResize(sides,count)!=count){
  Problem("commands-memory","SYSTEM","Process","The command queue could not be copied");return;
 }
 for(int i=0;i<count;i++){commands[i]=g_commands[i];sides[i]=g_commandSides[i];}
 EV_ClearCommands();
 for(int c=0;c<count;c++){
  UpdateClock();EvaluateTimer();
  if(commands[c]!=0)EV_Command(commands[c],sides[c]);
 }
}
void EV_AdoptStandby(){
 if(g_state!=GS_STANDBY||g_haveActive||g_autoPending||g_exitLatched||!g_owned)return;
 bool scopeChanges=g_managedSymbol!=Symbol()||SideMagic(BUY_SIDE)!=g_next.buyMagic||SideMagic(SELL_SIDE)!=g_next.sellMagic;
 if(!scopeChanges)return;
 if(!ScopeHandoffReady())return;
 // Retain the old cleanup scope until a connected actual empty snapshot is
 // known. Invalid first-install magics have never defined an old scope.
 if(ScopeIdentifiable()){
  if(!ScanOrders()||!ScopeEmpty()){
   if(RC_scanHealthy&&ArraySize(g_orders)>0)LatchExit(XR_STANDBY_ORDERS);
   return;
  }
 }
 g_managedSymbol=Symbol();CopyConfiguration(g_active,g_next);
 g_symbolChanged=false;g_reinstallMagicChange=false;g_restartCancelled=true;
 g_quote.valid=false;g_quoteFreshKnown=false;MarkDirty();
 AcquireOwnership();RefreshSymbolRules();RefreshQuote();ResolveProblem("chart-symbol");
}
void ProcessEvents(){
 if(!EV_initialized||g_processing)return;
 g_processing=true;
 bool automaticFromPreviousEvent=g_autoPending;
 UpdateClock();EV_RegisterTimer();UpdateAbsence();EV_CheckChartSymbol();
 bool safe=EV_SafeToProcess();
 if(safe){
  RefreshSymbolRules();RefreshQuote();EV_CheckStartValidity();
  bool scanned=ScanOrders();
  if(scanned){ReconcileOrdersAndHistory();ReconcileIntents();}
  EV_RestorePrimary();
  // Forced cleanup and Stop precede threshold exits; every timer event still
  // observes expiry even while a higher-priority cleanup is already latched.
  EV_StopQueued();
  if(g_state==GS_STANDBY&&RC_scanHealthy&&ArraySize(g_orders)>0)LatchExit(XR_STANDBY_ORDERS);
  if(g_reinstallMagicChange&&!g_exitLatched)LatchExit(XR_NEW_MAGICS);
  RefreshAccounting();EvaluateLimits();UpdateClock();EvaluateTimer();
  if(!g_graceActive&&g_historyReady)MarkActivity();
  // A storage failure only blocks ordinary management. Essential exit and
  // expiry removal use their RAM journals and keep retrying actual targets.
  EV_SaveDirty();UpdateClock();EvaluateTimer();
  ProcessCommands();
  if(g_exitLatched&&g_state==GS_EXITING)ProcessFullExit();
  else if(g_state==GS_RECOVERING)EV_RecoveryExpiryPause();
  else if(g_state==GS_STARTING)ProcessStarting();
  else if(g_state==GS_RUNNING)ProcessSides();
  else if(g_state==GS_STANDBY){
   if(automaticFromPreviousEvent&&g_autoPending){
    UpdateClock();EvaluateTimer();BeginCycle(true);
   }else EV_AdoptStandby();
  }
 }else{
  // Unknown identity exposes only its explicit two-click exceptional reset.
  // Account/ownership Blocked cannot issue even essential broker mutations.
  UpdateClock();EvaluateTimer();RefreshSymbolRules();EV_CheckStartValidity();ProcessCommands();
 }
 UpdateClock();EvaluateTimer();EV_SaveDirty();RenderPanel();
 g_processing=false;
}
int OnInit(){
 EV_DefaultSides();ReadNextConfiguration();CopyConfiguration(g_active,g_next);
 g_managedSymbol=Symbol();g_installServer=AccountServer();g_installAccount=AccountNumber();g_installID=InstanceID;
 UpdateClock();
 bool lifecycle=RestoreLifecycle();
 EV_lifecycleValid=lifecycle;
 if(lifecycle&&g_installID!="")EV_loaded=LoadState();
 if(EV_loaded)RestoreTimerClock();
 // Current Inputs are NEXT only; hydration has already restored ACTIVE.
 ReadNextConfiguration();EV_ClearCommands();g_confirmReset=false;
 if(lifecycle&&!EV_loaded&&!g_accountBlocked&&g_identityKnown){
  g_state=GS_STANDBY;g_savedState=GS_STANDBY;g_managedSymbol=Symbol();CopyConfiguration(g_active,g_next);
 }
 // Identity-only Standby snapshots carry Applied UI values, not a lost cycle.
 if(EV_loaded&&g_savedState==GS_STANDBY&&!g_haveActive&&!g_exitLatched)g_state=GS_STANDBY;
 if(EV_loaded&&!ST_sameInstallation&&g_identityKnown&&
    (g_active.buyMagic!=g_next.buyMagic||g_active.sellMagic!=g_next.sellMagic)&&
    g_active.buyMagic>0&&g_active.sellMagic>0&&g_active.buyMagic!=g_active.sellMagic){
  g_reinstallMagicChange=true;g_restartCancelled=true;g_autoPending=false;MarkDirty();
 }
 g_prefix="E48."+IntegerToString(ChartID())+"."+IntegerToString(g_installToken)+".";
 if(StringLen(g_prefix)>38)g_prefix="E48."+StringSubstr(IdentityDigest(g_installServer,g_installAccount,IntegerToString(g_installToken)),0,28)+".";
 if(lifecycle&&!g_accountBlocked&&g_installID!="")AcquireOwnership();
 RefreshSymbolRules();RefreshQuote();CreatePanel();EV_initialized=true;
 EV_RegisterTimer();
 // Initial attachment may reconcile or clean a pre-existing known scope;
 // entry remains impossible until a valid panel Run command is received.
 ProcessEvents();return INIT_SUCCEEDED;
}
void OnDeinit(const int reason){
 EventKillTimer();EV_timerRegistered=false;UpdateClock();EvaluateTimer();CaptureLifecycle(reason);
 if(g_owned&&!g_accountBlocked&&g_identityKnown)SaveState(true);
 ReleaseOwnership(reason==REASON_PARAMETERS||reason==REASON_CHARTCHANGE);
 DestroyPanel();EV_initialized=false;
}
void OnTick(){
 if(Symbol()==g_managedSymbol)g_quoteReceipt=true;
 ProcessEvents();
}
void OnTimer(){ProcessEvents();}
void OnChartEvent(const int id,const long &lparam,const double &dparam,const string &sparam){
 if(!EV_initialized)return;
 int before=ArraySize(g_commands);
 HandlePanelEvent(id,lparam,dparam,sparam);
 if(ArraySize(g_commands)>before)ProcessEvents();
 else{
  // Drawing, moving, collapsing and ending an edit cannot submit a trade.
  // Dirty appearance is saved by the next Tick/Timer/behavioral command or
  // OnDeinit. No clock/expiry/control transition is caused by this UI path.
  RenderPanel();
 }
}
