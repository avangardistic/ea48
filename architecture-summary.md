# خلاصهٔ معماری سورس مستقل EA48

مرجع مصوب نسخهٔ۲+۲۰.۵۱ و تصمیم A01/A02 است. فایل تحویل فقط [EA48.mq4](../EA48.mq4)، MQL4 با هدف MT4 Build≥2600 است؛ قطعات توسعه در EA48_Work هنگام اجرا لازم نیستند. نسخهٔ۲.۱۱، قالب ذخیره schema211؛ هش دقیق همان سورس در delivery-source-version.json و verification-report.md ثبت است. **کامپایل انجام نشده است**؛ Tester/دمو **اجرا نشده**.

| بخش داخل فایل | داده/تابع واقعی | نقش و اتصال |
| --- | --- | --- |
| رابط Inputs و اعتبار |۳۰۱ Input مستقل؛ ReadNextConfiguration،ValidateConfiguration،ValidateLot،ParseNumber/ParseInteger | تمام۴۸ مرحله و عمومی‌ها پیش شروع اعتبارسنجی؛ حجم خودکار اصلاح نمی‌شود؛ ACTIVE جاری از NEXT جداست. |
| حالت و هماهنگی رویداد | GlobalState،SideState.control/phase،TimerMode؛ ProcessEvents،ProcessCommands،EV_Command | handlerها فرمان را یک‌بار مصرف می‌کنند؛ key خصوصی Play/Pause/Run شامل action و epoch runtime است و فقط enqueue معتبر نسل را عوض می‌کند؛ اولویت هویت/مالک، Stop/پاک‌سازی، آستانه، انقضا، سپس عملیات عادی. |
| مشاهده و تطبیق | ScanOrders،ReconcileOrdersAndHistory،ReconcileIntents؛ OrderLink،LedgerRecord | actual/intent/history قبل و بعد API؛ partial chain و final close قطعی؛ ticket غایب، نزدیک‌ترین قیمت/حجم یا بزرگ‌ترین ticket دلیل تعلق نیست. |
| قیمت و حجم | RefreshSymbolRules/RefreshQuote،GridPrice،BuildPendingPrices،BuildTrailingPrices،BuildPlayLimits،SlippagePairPoints/CloseSlippagePoints | managed symbol منبع قواعد؛ PipSize/Point/tick جدا؛ rounding جهت‌دار؛ Play بدون widening؛ X ورودی صفر حفظ؛ quote cached خوانده‌شده خودبه‌خود تازه نیست. |
| قصد و مرز بروکر | OperationIntent؛ TR_NewIntent،TR_Execute،TR_ConsumeEffects | قصد و SENT/UNKNOWN پیش API ذخیره؛ فقط TR_Execute چهار API معاملاتی را دارد؛ یک API در جریان؛ پاسخ واقعی دوباره تطبیق؛ ضروری هنگام شکست ذخیره طبق۲۰.۷ پیگیری. |
| شروع و مرحله | BeginCycle،ProcessStarting،TR_CheckInitialActual،TR_CreatePending،RC_ValidateCurrentMarketGroup | جفت Bid/Ask مشترک، InitialOrderPriority، دو Pending واقعی؛ target یک‌بار و lot retry ثابت؛ replacement از آخرین محل و حجم قبلی؛ گردش۴۸→۱ سیکل را تمام نمی‌کند. |
| Pause/Play/تریلینگ | RequestPause،TR_ProcessPause،RequestPlay،TR_FinishPlay،TR_PlayFailed،TR_Trail | از درخواست Pause، next/trail متوقف؛ فقط M حذف؛ Applying Pause تا واقعیت. موجود تا تأیید Paused؛ Resuming فقط NEXT؛ rollback فقط M برگشتهٔ همان تلاش. معاملهٔ باز trailing ندارد. |
| مالی و خروج | RefreshAccounting،EvaluateLimits،LatchExit،ProcessFullExit،FinalizeCycleAccounting | Profit+Commission+Swap با علامت واقعی و تعلق سیکل؛ correction همان archive؛ pending delete قبل close؛ فقط actualempty پایان خروج؛ grace موقت عدد را دائماً unavailable نمی‌کند. |
| زمان و غیبت | UpdateClock،RestoreTimerClock،EvaluateTimer،OnSuccessfulPlay،UpdateAbsence/MarkActivity | counter پیوسته/wrap و UTC bridge؛ انقضای نامطمئن، deadline و مانع مستقل؛ Play موفق Running را تمدید نمی‌کند؛ gap activity anchor منجمد؛ خروج غیبت cleanup دو سمت. |
| ذخیره و بازیابی | SaveState،LoadState،ST_SelectCandidate،ST_Candidate/ST_ValidateSnapshot | UTF-8 و SHA-256 با هویت سه‌جزئی؛ pending کامل/بسته/readback سپس promotion و backup؛ newest healthy فقط نامزد تطبیق actual/history است. |
| مالکیت و lifecycle | RestoreLifecycle/CaptureLifecycle،AcquireOwnership/VerifyOwnership،ST_TakeLock | CAS محلیِ هویت و هر دو symbol/magic؛ absence چارت/نصب با مدرک؛ heartbeat دلیل نبود مالک نیست؛ account destination تا remove/reattach Blocked؛ TF draft فقط همان جلسه. |
| پنل و مشکل | RenderPanel،HandlePanelEvent،PN48_Preset،Problem/ResolveProblem | انگلیسی/Arial و اندازه/رنگ/چیدمان مصوب؛ Draft/Applied جدا؛ Enter فقط پایان edit؛ ظاهر صرفاً renderer؛ newest unresolved به هویت منطقی، Tooltip و log. |

OnInit پس lifecycle/Load/ownership به ProcessEvents می‌رسد؛ OnTick و OnTimer نیز همین dispatcher را دارند. OnChartEvent فقط وقتی فرمان مجاز تازه صف می‌شود به dispatcher می‌رود؛ شاخهٔ drag/collapse/Enter/ظاهر فقط RenderPanel دارد. OnDeinit ذخیره/lifecycle/آزادسازی مالکیت و پنل را انجام می‌دهد؛ برداشتن EA به‌خودی‌خود دستور حذف سفارش یا بستن معامله صادر نمی‌کند.

A01 فقط Starting است: اولیهٔ سمت Pause از مرجع/فاصله/حجم مصوب بدون M تکمیل؛ unknown قبلی اول تطبیق؛ M ثبت‌شده حذف/Retry؛ دو Pending واقعی پایان Starting، با حفظ Paused/Applying Pause؛ ثبت اولیه موفقیت Play یا timer hook نیست. A02 snapshot معتبر مربوط را مقدم و فقط در نبود آن Inputs صریح معتبر را پس تبدیل floor/range مصرف می‌کند؛ −۱ یا صفر حدسی ممنوع.

دو جزئیات فنیِ نهایی رفتار تازه نیستند: cleanupSettled فقط مدرک پایدار پایان واقعی cleanup بدون سیکل است و late actual هنوز تطبیق می‌شود؛ ScopeEntryReady از journal جاری محاسبه و ورود تازهٔ همان scope را تا رفع UNKNOWN ایجاد متداخل نگه می‌دارد. sentinel=-1 برای انتظار Resuming پیش قصد با قید OP_NEXT/finalKnown معتبر است. هیچ Input جدید، AutoRun یا ابزار fault-injection به EA افزوده نشده است.

مسیرهای مستقیم هر۵۹۶ الزام و مصرف۳۰۱ Input در static-coverage.json، ساختار/API در static-checks.json، و یافته/اصلاح/بازبررسی در implementation-findings.md هستند. این شواهد ایستا تضمین رفتار بروکر نیستند؛ پذیرش عملی طبق compile-manual-checklist.md و qa-plan.md توسط کاربر باقی است.

اصلاح UI-05، نام و متن دکمه‌های قابل مشاهده را عوض نمی‌کند: هویت خصوصی رویداد، فرمانِ کلیک‌شده و epoch آن را نگه می‌دارد؛ پیش dispatchِ فرمان پذیرفته‌شده repaint انجام نمی‌شود و key تازه فقط پس نتیجه ظاهر می‌شود. بنابراین کلیک قدیمیِ صف native پس موفقیت یا شکست، فرمان مقابل یا تلاش تازه نیست؛ کلیک دستی تازه از key تازه و guard فعلی می‌گذرد. انتخاب Trailing مستقل از intent نامعلوم است، ولی اجرای مؤثر guardهای Playing/Running/ON/quote/storage را همچنان دارد (UI-03).
