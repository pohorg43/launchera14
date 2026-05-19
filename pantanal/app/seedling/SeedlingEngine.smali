.class public final Lpantanal/app/seedling/SeedlingEngine;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/seedling/SeedlingEngine$InitSuccessCallback;,
        Lpantanal/app/seedling/SeedlingEngine$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSeedlingEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeedlingEngine.kt\npantanal/app/seedling/SeedlingEngine\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,777:1\n1855#2,2:778\n*S KotlinDebug\n*F\n+ 1 SeedlingEngine.kt\npantanal/app/seedling/SeedlingEngine\n*L\n370#1:778,2\n*E\n"
    }
.end annotation


# static fields
.field public static final ACTION_KEY_PAGE_ID:Ljava/lang/String; = "page_id"

.field public static final ACTION_VERSION_CODE:Ljava/lang/String; = "upk_version_code"

.field public static final CARD_ENTRANCE:Ljava/lang/String; = "seedling_entrance"

.field public static final CREATE_BUSINESS_DATA:Ljava/lang/String; = "business_data"

.field public static final CREATE_CARD_CREATE_TYPE:Ljava/lang/String; = "card_create_type"

.field public static final CREATE_CARD_SIZE:Ljava/lang/String; = "card_size"

.field public static final CREATE_SERVICE_ID:Ljava/lang/String; = "service_id"

.field public static final Companion:Lpantanal/app/seedling/SeedlingEngine$Companion;

.field public static final SERVICE_ID_CALENDAR:I = 0x200013cb

.field public static final SERVICE_ID_WEATHER:I = 0x20000094

.field public static final SPLIT:Ljava/lang/String; = "&"

.field private static final TAG:Ljava/lang/String; = "SeedCardEngine"

.field public static final UNIT_SECONDS:J = 0x3e8L


# instance fields
.field private final card:Lpantanal/app/Card;

.field private final cardInfo:Lpantanal/app/bean/CardViewInfo;

.field private cardName:Ljava/lang/String;

.field private final delayNotifyTask$delegate:Lh4/f;

.field private final handler$delegate:Lh4/f;

.field private volatile iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

.field private volatile isReleased:Z

.field private volatile isWaitingCardData:Z

.field private final loadCallback:Lpantanal/app/seedling/OnSeedlingCardLoadCallback;

.field private volatile onVisible:Z

.field private pageIdGetter:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;>;"
        }
    .end annotation
.end field

.field private final seedlingCallback:Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;

.field private volatile seedlingDefaultViewLoading:Z

.field private volatile seedlingLoadFinished:Z

.field private volatile uiDataBytes:[B

.field private upkVersion:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/seedling/SeedlingEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/seedling/SeedlingEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/seedling/SeedlingEngine;->Companion:Lpantanal/app/seedling/SeedlingEngine$Companion;

    return-void
.end method

.method public constructor <init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/seedling/OnSeedlingCardLoadCallback;Lpantanal/app/Card;)V
    .registers 5

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p2, p0, Lpantanal/app/seedling/SeedlingEngine;->loadCallback:Lpantanal/app/seedling/OnSeedlingCardLoadCallback;

    iput-object p3, p0, Lpantanal/app/seedling/SeedlingEngine;->card:Lpantanal/app/Card;

    const-string p1, ""

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingEngine;->upkVersion:Ljava/lang/String;

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingEngine;->pendingTasks:Ljava/util/List;

    sget-object p1, Lpantanal/app/seedling/SeedlingEngine$handler$2;->INSTANCE:Lpantanal/app/seedling/SeedlingEngine$handler$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingEngine;->handler$delegate:Lh4/f;

    new-instance p1, Lpantanal/app/seedling/SeedlingEngine$delayNotifyTask$2;

    invoke-direct {p1, p0}, Lpantanal/app/seedling/SeedlingEngine$delayNotifyTask$2;-><init>(Lpantanal/app/seedling/SeedlingEngine;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingEngine;->delayNotifyTask$delegate:Lh4/f;

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingEngine;->createCardName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    new-instance p1, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;

    invoke-direct {p1, p0}, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;-><init>(Lpantanal/app/seedling/SeedlingEngine;)V

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingEngine;->seedlingCallback:Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;

    return-void
.end method

.method public static final synthetic access$buildSeedCardIntent(Lpantanal/app/seedling/SeedlingEngine;)Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;
    .registers 1

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingEngine;->buildSeedCardIntent()Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$doUpdateCardData(Lpantanal/app/seedling/SeedlingEngine;)V
    .registers 1

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingEngine;->doUpdateCardData()V

    return-void
.end method

.method public static final synthetic access$executePendingTasks(Lpantanal/app/seedling/SeedlingEngine;)V
    .registers 1

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingEngine;->executePendingTasks()V

    return-void
.end method

.method public static final synthetic access$getCardInfo$p(Lpantanal/app/seedling/SeedlingEngine;)Lpantanal/app/bean/CardViewInfo;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    return-object p0
.end method

.method public static final synthetic access$getCardName$p(Lpantanal/app/seedling/SeedlingEngine;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getLoadCallback$p(Lpantanal/app/seedling/SeedlingEngine;)Lpantanal/app/seedling/OnSeedlingCardLoadCallback;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->loadCallback:Lpantanal/app/seedling/OnSeedlingCardLoadCallback;

    return-object p0
.end method

.method public static final synthetic access$getPendingTasks$p(Lpantanal/app/seedling/SeedlingEngine;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->pendingTasks:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getSeedlingCallback$p(Lpantanal/app/seedling/SeedlingEngine;)Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->seedlingCallback:Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;

    return-object p0
.end method

.method public static final synthetic access$handleLoadFailed(Lpantanal/app/seedling/SeedlingEngine;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lpantanal/app/seedling/SeedlingEngine;->handleLoadFailed(ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$handleNotifyResultImmediatelyOrDelay(Lpantanal/app/seedling/SeedlingEngine;)V
    .registers 1

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingEngine;->handleNotifyResultImmediatelyOrDelay()V

    return-void
.end method

.method public static final synthetic access$handleReleaseCard(Lpantanal/app/seedling/SeedlingEngine;Lcom/oplus/seedling/sdk/seedling/ISeedling;)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/app/seedling/SeedlingEngine;->handleReleaseCard(Lcom/oplus/seedling/sdk/seedling/ISeedling;)V

    return-void
.end method

.method public static final synthetic access$isReleased$p(Lpantanal/app/seedling/SeedlingEngine;)Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/seedling/SeedlingEngine;->isReleased:Z

    return p0
.end method

.method public static final synthetic access$saveSeedlingData(Lpantanal/app/seedling/SeedlingEngine;Lcom/oplus/seedling/sdk/seedling/ISeedling;)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/app/seedling/SeedlingEngine;->saveSeedlingData(Lcom/oplus/seedling/sdk/seedling/ISeedling;)V

    return-void
.end method

.method public static final synthetic access$setCardLaunchInterceptor(Lpantanal/app/seedling/SeedlingEngine;)V
    .registers 1

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingEngine;->setCardLaunchInterceptor()V

    return-void
.end method

.method public static final synthetic access$setWaitingCardData$p(Lpantanal/app/seedling/SeedlingEngine;Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/seedling/SeedlingEngine;->isWaitingCardData:Z

    return-void
.end method

.method private final buildSeedCardIntent()Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;
    .registers 21

    move-object/from16 v0, p0

    new-instance v15, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingEngine;->getCardSize()I

    move-result v3

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getSizeList()Ljava/util/List;

    move-result-object v4

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getInitData()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getAllowUIBackground()Z

    move-result v6

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getTimestamp()J

    move-result-wide v7

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->isRecommend()Z

    move-result v1

    xor-int/lit8 v9, v1, 0x1

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getExtraData()Landroid/util/ArrayMap;

    move-result-object v1

    if-nez v1, :cond_3b

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    :cond_3b
    move-object v10, v1

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->isAbnormal()Z

    move-result v11

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->isEntranceTriggerCardClick()Z

    move-result v12

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getExtraDataToEngine()Landroid/util/ArrayMap;

    move-result-object v13

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getExtraDataToEngineList()Ljava/util/List;

    move-result-object v14

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-direct {v0, v1}, Lpantanal/app/seedling/SeedlingEngine;->parseToSeedServiceInfo(Lpantanal/app/bean/CardViewInfo;)Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-result-object v16

    move-object v1, v15

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZLandroid/util/ArrayMap;Ljava/util/List;Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;)V

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    const-string v2, "SecondTermTraceContext"

    invoke-virtual {v1, v2}, Lpantanal/app/bean/CardViewInfo;->getUTraceCodeContext(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v1

    if-eqz v1, :cond_7b

    invoke-virtual/range {v17 .. v17}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->getExtraData()Landroid/util/ArrayMap;

    move-result-object v3

    if-eqz v3, :cond_7b

    sget-object v4, Lcom/oplus/utrace/sdk/UTraceCompat;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceCompat;

    invoke-virtual {v4, v1}, Lcom/oplus/utrace/sdk/UTraceCompat;->writeToJsonString(Lcom/oplus/utrace/sdk/UTraceContext;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7b
    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getUTraceIntentContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v2, v1}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;->setUTraceIntentContext(Lcom/oplus/utrace/sdk/UTraceContext;)V

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v1}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v3

    const/16 v4, 0x190

    const/16 v5, 0x28

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    sget-object v9, Ly8/c;->a:Ly8/c;

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",buildSeedCardIntent,intent = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfc

    const/16 v19, 0x0

    const-string v10, "SeedCardEngine"

    invoke-static/range {v9 .. v19}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v2
.end method

.method private final checkAndNotifySuccess()V
    .registers 25

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lpantanal/app/seedling/SeedlingEngine;->isWaitingCardData:Z

    if-nez v1, :cond_1f

    sget-object v2, Ly8/c;->a:Ly8/c;

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    const-string v1, " checkShouldNotifySuccess, isWaitingCardData is false,do nothing."

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedCardEngine"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_1f
    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v2, v0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    const-string v3, " checkShouldNotifySuccess, card data come,do notify load success."

    invoke-static {v2, v3}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfc

    const/16 v23, 0x0

    const-string v14, "SeedCardEngine"

    move-object v13, v1

    invoke-static/range {v13 .. v23}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lpantanal/app/seedling/SeedlingEngine;->isWaitingCardData:Z

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingEngine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingEngine;->getDelayNotifyTask()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, v0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz v2, :cond_60

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->loadCallback:Lpantanal/app/seedling/OnSeedlingCardLoadCallback;

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v0}, Lpantanal/app/OnLoadCallback;->onSuccess(Landroid/view/View;)V

    goto :goto_8e

    :cond_60
    iget-object v2, v0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    iget-boolean v0, v0, Lpantanal/app/seedling/SeedlingEngine;->isReleased:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " checkShouldNotifySuccess, iSeedling is null,do nothing,isReleased="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfc

    const/16 v23, 0x0

    const-string v14, "SeedCardEngine"

    move-object v13, v1

    invoke-static/range {v13 .. v23}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_8e
    return-void
.end method

.method private final checkCurCardNeedWaitCardData()Z
    .registers 14

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getServiceInfo()Lpantanal/decision/ServiceInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getNeedToWaitCardData()Z

    move-result v0

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    sget-object v2, Ly8/c;->a:Ly8/c;

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getServiceInfo()Lpantanal/decision/ServiceInfo;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCurCardNeedWaitCardData,result = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",serviceInfo = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedCardEngine"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v1
.end method

.method private final clearPendingTasks()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "SeedCardEngine"

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingEngine;->pendingTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "clearPendingTasks begin,pendingTasks size = "

    invoke-static {v3, v2}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->pendingTasks:Ljava/util/List;

    monitor-enter v0

    :try_start_1f
    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->pendingTasks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_26

    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final createCardName()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lpantanal/app/bean/CardViewInfoKt;->generateUniqueCardKey(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "_"

    invoke-static {v0, v1, p0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final doUpdateCardData()V
    .registers 15

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-nez v0, :cond_1d

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    const-string v0, ",doUpdateCardData failed, iSeedling is null."

    invoke-static {p0, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedCardEngine"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_1d
    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->uiDataBytes:[B

    if-eqz v0, :cond_74

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->uiDataBytes:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    array-length v0, v0

    if-nez v0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    if-eqz v1, :cond_2d

    goto :goto_74

    :cond_2d
    sget-object v2, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingEngine;->uiDataBytes:[B

    const/4 v13, 0x0

    if-eqz v1, :cond_3c

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3d

    :cond_3c
    move-object v1, v13

    :goto_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",doUpdateCardData success,startSeedling,onLoadFinished,dataSize = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",seedling.updateData()"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedCardEngine"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingEngine;->uiDataBytes:[B

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->updateData([B)V

    iput-object v13, p0, Lpantanal/app/seedling/SeedlingEngine;->uiDataBytes:[B

    return-void

    :cond_74
    :goto_74
    sget-object v2, Ly8/c;->a:Ly8/c;

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    const-string v0, ",doUpdateCardData failed,uiData is empty."

    invoke-static {p0, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedCardEngine"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final executePendingTasks()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "SeedCardEngine"

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingEngine;->pendingTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "executePendingTasks begin,pendingTasks size = "

    invoke-static {v3, v2}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->pendingTasks:Ljava/util/List;

    monitor-enter v0

    :try_start_1f
    iget-object v1, p0, Lpantanal/app/seedling/SeedlingEngine;->pendingTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_25

    :cond_35
    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->pendingTasks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_3c

    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic fillActionData$default(Lpantanal/app/seedling/SeedlingEngine;Ljava/util/Map;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lpantanal/app/seedling/SeedlingEngine;->fillActionData(Ljava/util/Map;Z)V

    return-void
.end method

.method private final fillActionDataInner(Ljava/util/Map;ZZLjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_74

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "service_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->isRecommend()Z

    move-result v0

    invoke-static {v0}, Lpantanal/app/bean/EntranceKt;->toCreateType(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "card_create_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getSizeCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "card_size"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v0

    invoke-virtual {v0}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "seedling_entrance"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->pageIdGetter:Lkotlin/jvm/functions/Function0;

    const-string v1, ""

    if-eqz v0, :cond_50

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_51

    :cond_50
    move-object v0, v1

    :cond_51
    const-string v2, "page_id"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->upkVersion:Ljava/lang/String;

    if-nez v0, :cond_5b

    goto :goto_5c

    :cond_5b
    move-object v1, v0

    :goto_5c
    const-string v0, "upk_version_code"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_74

    const-string p2, "business_data"

    if-eqz p3, :cond_6b

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    :cond_6b
    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getInitData()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_74
    :goto_74
    return-void
.end method

.method public static synthetic fillActionDataInner$default(Lpantanal/app/seedling/SeedlingEngine;Ljava/util/Map;ZZLjava/lang/String;ILjava/lang/Object;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_11

    const-string p4, ""

    :cond_11
    invoke-direct {p0, p1, p2, p3, p4}, Lpantanal/app/seedling/SeedlingEngine;->fillActionDataInner(Ljava/util/Map;ZZLjava/lang/String;)V

    return-void
.end method

.method private final getCardSize()I
    .registers 14

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getSize()I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getSizeList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li4/v;->H(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_23

    :cond_1b
    const/4 v0, 0x0

    goto :goto_23

    :cond_1d
    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getSize()I

    move-result v0

    :goto_23
    iget-object v1, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getSize()I

    move-result v1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getSizeList()Ljava/util/List;

    move-result-object p0

    const-string v2, "getCardSize resultSize:"

    const-string v3, ", originSize:"

    const-string v4, ", sizeList:"

    invoke-static {v2, v0, v3, v1, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedCardEngine"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v0
.end method

.method private final getDelayNotifyTask()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->delayNotifyTask$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method private final getHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->handler$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private final handleLoadFailed(ILjava/lang/String;)V
    .registers 14

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",handleLoadFailed,errorCode = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",msg= "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedCardEngine"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpantanal/app/seedling/SeedlingEngine;->seedlingDefaultViewLoading:Z

    iput-boolean v0, p0, Lpantanal/app/seedling/SeedlingEngine;->seedlingLoadFinished:Z

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->loadCallback:Lpantanal/app/seedling/OnSeedlingCardLoadCallback;

    invoke-interface {v0, p1, p2}, Lpantanal/app/OnLoadCallback;->onError(ILjava/lang/String;)V

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingEngine;->clearPendingTasks()V

    return-void
.end method

.method private final handleNotifyResultImmediatelyOrDelay()V
    .registers 25

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingEngine;->shouldNotifySuccessImmediately()Z

    move-result v1

    if-eqz v1, :cond_4b

    sget-object v2, Ly8/c;->a:Ly8/c;

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    iget-object v3, v0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz v3, :cond_15

    invoke-interface {v3}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getView()Landroid/view/View;

    move-result-object v3

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",handleNotifyResultImmediatelyOrDelay,startSeedling,onLoadFinished,notify onSuccess,view = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedCardEngine"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz v1, :cond_4a

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingEngine;->loadCallback:Lpantanal/app/seedling/OnSeedlingCardLoadCallback;

    invoke-interface {v1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lpantanal/app/OnLoadCallback;->onSuccess(Landroid/view/View;)V

    :cond_4a
    return-void

    :cond_4b
    iget-boolean v1, v0, Lpantanal/app/seedling/SeedlingEngine;->isWaitingCardData:Z

    if-eqz v1, :cond_68

    sget-object v2, Ly8/c;->a:Ly8/c;

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    const-string v1, ",handleNotifyResultImmediatelyOrDelay,isWaitingCardData = true,already posted delay task,do nothing."

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedCardEngine"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_68
    sget-object v13, Ly8/c;->a:Ly8/c;

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    iget-object v2, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getWaitCardDataTimeOut()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",handleNotifyResultImmediatelyOrDelay,startSeedling,onLoadFinished,post delay notify task,delay = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seconds."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfc

    const/16 v23, 0x0

    const-string v14, "SeedCardEngine"

    invoke-static/range {v13 .. v23}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lpantanal/app/seedling/SeedlingEngine;->isWaitingCardData:Z

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingEngine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingEngine;->getDelayNotifyTask()Ljava/lang/Runnable;

    move-result-object v2

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getWaitCardDataTimeOut()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final handleReleaseCard(Lcom/oplus/seedling/sdk/seedling/ISeedling;)V
    .registers 16

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    const-string v1, "handleReleaseCard,"

    const-string v2, ",startSeedling,onLoadFinished but Card isReleased,no more notify."

    invoke-static {v1, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v4, "SeedCardEngine"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    move-object v5, v0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-interface {p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->destroy()V

    sget-object p1, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {p1}, Lz8/f$a;->a()Lz8/f;

    move-result-object p1

    iget-object p1, p1, Lz8/f;->b:Landroid/content/Context;

    if-eqz p1, :cond_31

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {p0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lz8/c;->y(Landroid/content/Context;Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method private final obtainDefaultView(Landroid/content/Context;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lpantanal/app/seedling/SeedlingEngine;->seedlingDefaultViewLoading:Z

    if-eqz v2, :cond_21

    sget-object v3, Ly8/c;->a:Ly8/c;

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    const-string v1, ",obtainDefaultView already called,startSeedling ing...no need startSeedling again,no need to call again."

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedCardEngine"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_21
    iget-object v2, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v2}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v3

    const/16 v4, 0x190

    const/16 v5, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    sget-object v2, Ly8/c;->a:Ly8/c;

    iget-object v3, v0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    const-string v4, "cardName = "

    const-string v5, ",begin to obtainDefaultView"

    invoke-static {v4, v3, v5}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xf8

    const/16 v19, 0x0

    const-string v10, "SeedCardEngine"

    move-object v9, v2

    invoke-static/range {v9 .. v19}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lpantanal/app/seedling/SeedlingEngine;->seedlingDefaultViewLoading:Z

    sget-object v3, Lpantanal/app/seedling/SeedlingCardClient;->INSTANCE:Lpantanal/app/seedling/SeedlingCardClient;

    iget-object v4, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v4}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v4

    invoke-virtual {v3, v4}, Lpantanal/app/seedling/SeedlingCardClient;->getSeedingManagerByEntrance(Lpantanal/app/bean/Entrance;)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object v4

    if-nez v4, :cond_83

    iget-object v4, v0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    const-string v5, ", obtainDefaultView: seedlingManager is null, maybe initializing,add pending callback and startSeedling later."

    invoke-static {v4, v5}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfc

    const/16 v19, 0x0

    const-string v10, "SeedCardEngine"

    move-object v9, v2

    invoke-static/range {v9 .. v19}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v2, Lpantanal/app/seedling/SeedlingEngine$obtainDefaultView$1;

    invoke-direct {v2, v0, v1}, Lpantanal/app/seedling/SeedlingEngine$obtainDefaultView$1;-><init>(Lpantanal/app/seedling/SeedlingEngine;Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lpantanal/app/seedling/SeedlingCardClient;->addEngineCallback(Lpantanal/app/seedling/SeedlingEngine$InitSuccessCallback;)V

    return-void

    :cond_83
    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingEngine;->buildSeedCardIntent()Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    move-result-object v3

    iget-object v5, v0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", obtainDefaultView,begin to startSeedling,seedlingIntent = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xf8

    const/16 v19, 0x0

    const-string v10, "SeedCardEngine"

    move-object v9, v2

    invoke-static/range {v9 .. v19}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v2, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v2}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v5

    const/16 v6, 0x190

    const/16 v7, 0x32

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingEngine;->seedlingCallback:Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;

    invoke-interface {v4, v1, v3, v0}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->startSeedling(Landroid/content/Context;Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;)V

    return-void
.end method

.method private final parseToSeedServiceInfo(Lpantanal/app/bean/CardViewInfo;)Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;
    .registers 36

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/CardViewInfo;->getServiceInfo()Lpantanal/decision/ServiceInfo;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getServiceType()I

    move-result v3

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getScore()F

    move-result v5

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getSupportEntrance()I

    move-result v6

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getInitData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getTimeStamp()J

    move-result-wide v8

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getVersionCode()J

    move-result-wide v10

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->isParamsSendToSeedling()I

    move-result v12

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getCannotReduceRecommend()Z

    move-result v13

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getForceRebuild()Z

    move-result v14

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getServiceCategory()I

    move-result v15

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getChannelType()I

    move-result v16

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getIntentCategory()I

    move-result v17

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->isGuaranteedCard()Z

    move-result v18

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getSeedlingType()I

    move-result v19

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getSubdomain()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_50

    const-string v1, ""

    :cond_50
    move-object/from16 v20, v1

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getExtras()Landroid/util/ArrayMap;

    move-result-object v22

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getIntentId()Ljava/lang/Long;

    move-result-object v26

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getPolicy()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getInstanceId()Ljava/lang/Long;

    move-result-object v24

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getNewSeedlingCardOptions()Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    move-result-object v25

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getHostPackage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getSizeToCardType()Ljava/util/Map;

    move-result-object v28

    invoke-virtual {v0}, Lpantanal/decision/ServiceInfo;->getCloudRemindSwitch()I

    move-result v29

    new-instance v0, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;

    move-object v1, v0

    const/16 v23, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/high16 v32, 0xc080000

    const/16 v33, 0x0

    invoke-direct/range {v1 .. v33}, Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;-><init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Lcom/oplus/seedling/sdk/seedling/SeedlingCardOptions;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;IILjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final saveSeedlingData(Lcom/oplus/seedling/sdk/seedling/ISeedling;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpantanal/app/seedling/SeedlingEngine;->seedlingDefaultViewLoading:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpantanal/app/seedling/SeedlingEngine;->seedlingLoadFinished:Z

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    new-instance p1, Lpantanal/app/seedling/SeedlingEngine$saveSeedlingData$1;

    invoke-direct {p1, p0}, Lpantanal/app/seedling/SeedlingEngine$saveSeedlingData$1;-><init>(Lpantanal/app/seedling/SeedlingEngine;)V

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingEngine;->pageIdGetter:Lkotlin/jvm/functions/Function0;

    iget-object p1, p0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz p1, :cond_18

    invoke-interface {p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getUpkVersion()Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    iput-object p1, p0, Lpantanal/app/seedling/SeedlingEngine;->upkVersion:Ljava/lang/String;

    return-void
.end method

.method private final setCardLaunchInterceptor()V
    .registers 14

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getCardLaunchInterceptor()Lpantanal/app/CardLaunchInterceptor;

    move-result-object v0

    sget-object v12, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCardLaunchInterceptor cardLaunchInterceptor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",iSeedling="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedCardEngine"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v12

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-nez v0, :cond_46

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedCardEngine"

    const-string v3, "obtainDefaultView, cardLaunchInterceptor is null, not set interceptor"

    move-object v1, v12

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_56

    :cond_46
    iget-object v1, p0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz v1, :cond_56

    new-instance v2, Lpantanal/app/seedling/CardLaunchInterceptorWrapper;

    iget-object v3, p0, Lpantanal/app/seedling/SeedlingEngine;->card:Lpantanal/app/Card;

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    invoke-direct {v2, v0, v3, p0}, Lpantanal/app/seedling/CardLaunchInterceptorWrapper;-><init>(Lpantanal/app/CardLaunchInterceptor;Lpantanal/app/Card;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->interceptStartActivity(Lcom/oplus/seedling/sdk/callback/StartActivityCallback;)V

    :cond_56
    :goto_56
    return-void
.end method

.method private final shouldNotifySuccessImmediately()Z
    .registers 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->uiDataBytes:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    array-length v1, v1

    if-nez v1, :cond_d

    move v1, v3

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    xor-int/2addr v1, v3

    if-ne v1, v3, :cond_13

    move v1, v3

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    if-eqz v1, :cond_43

    sget-object v4, Ly8/c;->a:Ly8/c;

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingEngine;->uiDataBytes:[B

    if-eqz v0, :cond_22

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldNotifySuccessImmediately return true,data size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SeedCardEngine"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v3

    :cond_43
    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getWaitCardDataTimeOut()I

    move-result v1

    if-gtz v1, :cond_68

    sget-object v4, Ly8/c;->a:Ly8/c;

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getWaitCardDataTimeOut()I

    move-result v0

    const-string v1, "shouldNotifySuccessImmediately return true,waitCardDataTimeOut = "

    invoke-static {v1, v0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SeedCardEngine"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v3

    :cond_68
    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingEngine;->checkCurCardNeedWaitCardData()Z

    move-result v1

    if-nez v1, :cond_8d

    sget-object v4, Ly8/c;->a:Ly8/c;

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldNotifySuccessImmediately return true,service no need wait card data.serviceId = "

    const-string v2, ","

    invoke-static {v1, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SeedCardEngine"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v3

    :cond_8d
    sget-object v15, Ly8/c;->a:Ly8/c;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    const-string v16, "SeedCardEngine"

    const-string v17, "shouldNotifySuccessImmediately go default,return false,need to wait card data,then notify success."

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v2
.end method


# virtual methods
.method public final fillActionData(Ljava/util/Map;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lpantanal/app/seedling/SeedlingEngine;->fillActionDataInner(Ljava/util/Map;ZZLjava/lang/String;)V

    return-void
.end method

.method public final fillActionDataBySizeChanged(Ljava/util/Map;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "oldAndNewSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0, p2}, Lpantanal/app/seedling/SeedlingEngine;->fillActionDataInner(Ljava/util/Map;ZZLjava/lang/String;)V

    return-void
.end method

.method public final getISeedling()Lcom/oplus/seedling/sdk/seedling/ISeedling;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    return-object p0
.end method

.method public final getPageIdGetter()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->pageIdGetter:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getUpkVersion()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->upkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getViewProperty(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz p0, :cond_13

    invoke-interface {p0, p1, p2}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getViewProperty(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method public final getViewScreenShot()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getViewScreenshot()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public final isSeedlingLoadFinished(Lkotlin/jvm/functions/Function0;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, "SeedCardEngine"

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    iget-boolean v3, p0, Lpantanal/app/seedling/SeedlingEngine;->seedlingDefaultViewLoading:Z

    iget-boolean v4, p0, Lpantanal/app/seedling/SeedlingEngine;->seedlingLoadFinished:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSeedlingLoadFinished,cardName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", seedlingDefaultViewLoading: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", seedlingLoadFinished: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-boolean v0, p0, Lpantanal/app/seedling/SeedlingEngine;->seedlingDefaultViewLoading:Z

    if-nez v0, :cond_49

    iget-boolean v0, p0, Lpantanal/app/seedling/SeedlingEngine;->seedlingLoadFinished:Z

    if-nez v0, :cond_45

    goto :goto_49

    :cond_45
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_52

    :cond_49
    :goto_49
    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->pendingTasks:Ljava/util/List;

    monitor-enter v0

    :try_start_4c
    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->pendingTasks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_53

    monitor-exit v0

    :goto_52
    return-void

    :catchall_53
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final notifyCardDataWasIntercepted()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-boolean v1, p0, Lpantanal/app/seedling/SeedlingEngine;->isWaitingCardData:Z

    const-string v2, "notifyCardDataWasIntercepted,isWaitingCardData="

    invoke-static {v2, v1}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedCardEngine"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingEngine;->checkAndNotifySuccess()V

    return-void
.end method

.method public final obtainView([BLandroid/content/Context;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v1, :cond_16

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_17

    :cond_16
    move-object v5, v4

    :goto_17
    iget-boolean v6, v0, Lpantanal/app/seedling/SeedlingEngine;->seedlingDefaultViewLoading:Z

    iget-object v7, v0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " begin to obtainView or updateData, dataSize = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", seedlingIsLoading: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",,iSeedling = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v3, Ly8/c;->a:Ly8/c;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xf8

    const/16 v19, 0x0

    const-string v10, "SeedCardEngine"

    move-object v9, v3

    invoke-static/range {v9 .. v19}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_62

    array-length v7, v1

    if-nez v7, :cond_5c

    move v7, v5

    goto :goto_5d

    :cond_5c
    move v7, v6

    :goto_5d
    xor-int/2addr v7, v5

    if-ne v7, v5, :cond_62

    move v7, v5

    goto :goto_63

    :cond_62
    move v7, v6

    :goto_63
    if-eqz v7, :cond_67

    iput-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->uiDataBytes:[B

    :cond_67
    iget-object v7, v0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-nez v7, :cond_8c

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    const-string v4, " obtainView,seedling is null,obtainDefaultView"

    invoke-static {v1, v4}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xfc

    const/16 v22, 0x0

    const-string v13, "SeedCardEngine"

    move-object v12, v3

    invoke-static/range {v12 .. v22}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Lpantanal/app/seedling/SeedlingEngine;->obtainDefaultView(Landroid/content/Context;)V

    return-void

    :cond_8c
    iget-object v2, v0, Lpantanal/app/seedling/SeedlingEngine;->uiDataBytes:[B

    if-eqz v2, :cond_e9

    iget-object v2, v0, Lpantanal/app/seedling/SeedlingEngine;->uiDataBytes:[B

    if-eqz v2, :cond_98

    array-length v2, v2

    if-nez v2, :cond_98

    goto :goto_99

    :cond_98
    move v5, v6

    :goto_99
    if-eqz v5, :cond_9c

    goto :goto_e9

    :cond_9c
    iget-object v2, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v2}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lz8/c;->n(I)Lz8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingEngine;->doUpdateCardData()V

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingEngine;->checkAndNotifySuccess()V

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    if-eqz v1, :cond_b5

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_b5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "obtainView"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " obtainView already loaded,do update data done,data size = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xfc

    const/16 v22, 0x0

    const-string v13, "SeedCardEngine"

    move-object v12, v3

    invoke-static/range {v12 .. v22}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_e9
    :goto_e9
    iget-object v0, v0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    const-string v1, " obtainView,seedling is not null,but data is null,do nothing."

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xfc

    const/16 v22, 0x0

    const-string v13, "SeedCardEngine"

    move-object v12, v3

    invoke-static/range {v12 .. v22}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onInVisible()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    iget-boolean v2, p0, Lpantanal/app/seedling/SeedlingEngine;->onVisible:Z

    xor-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onInVisible = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedCardEngine"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x2bc

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lz8/c;->o(II)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz v0, :cond_45

    iget-boolean v1, p0, Lpantanal/app/seedling/SeedlingEngine;->onVisible:Z

    if-eqz v1, :cond_45

    const/4 v1, 0x0

    iput-boolean v1, p0, Lpantanal/app/seedling/SeedlingEngine;->onVisible:Z

    invoke-interface {v0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->onHide()V

    :cond_45
    return-void
.end method

.method public final onVisible()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    iget-boolean v2, p0, Lpantanal/app/seedling/SeedlingEngine;->onVisible:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onVisible = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedCardEngine"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x258

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lz8/c;->o(II)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz v0, :cond_43

    iget-boolean v1, p0, Lpantanal/app/seedling/SeedlingEngine;->onVisible:Z

    if-nez v1, :cond_43

    const/4 v1, 0x1

    iput-boolean v1, p0, Lpantanal/app/seedling/SeedlingEngine;->onVisible:Z

    invoke-interface {v0}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->onShow()V

    :cond_43
    return-void
.end method

.method public final releaseView()V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->cardInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v1}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v2

    const/16 v3, 0x44c

    const/16 v4, 0x15

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    sget-object v8, Ly8/c;->a:Ly8/c;

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    iget-object v2, v0, Lpantanal/app/seedling/SeedlingEngine;->cardName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseView: seedling = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v9, "SeedCardEngine"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    invoke-static/range {v8 .. v18}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lpantanal/app/seedling/SeedlingEngine;->isReleased:Z

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz v1, :cond_4b

    invoke-interface {v1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->destroy()V

    :cond_4b
    const/4 v1, 0x0

    iput-object v1, v0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lpantanal/app/seedling/SeedlingEngine;->seedlingLoadFinished:Z

    iput-boolean v1, v0, Lpantanal/app/seedling/SeedlingEngine;->seedlingDefaultViewLoading:Z

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingEngine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingEngine;->getDelayNotifyTask()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setDynamicConfiguration(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz p0, :cond_11

    invoke-interface {p0, p1, p2}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->setDynamicConfiguration(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_11
    return-void
.end method

.method public final setISeedling(Lcom/oplus/seedling/sdk/seedling/ISeedling;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    return-void
.end method

.method public final setPageIdGetter(Lkotlin/jvm/functions/Function0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingEngine;->pageIdGetter:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setUpkVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingEngine;->upkVersion:Ljava/lang/String;

    return-void
.end method

.method public final setViewStatusListener(Landroid/view/View;Lcom/oplus/seedling/sdk/seedling/IViewStatusListener;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine;->iSeedling:Lcom/oplus/seedling/sdk/seedling/ISeedling;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1, p2}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->setViewStatusListener(Landroid/view/View;Lcom/oplus/seedling/sdk/seedling/IViewStatusListener;)V

    :cond_c
    return-void
.end method
