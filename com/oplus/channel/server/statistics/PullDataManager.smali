.class public final Lcom/oplus/channel/server/statistics/PullDataManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/statistics/PullDataManager$RequestState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001:\u00018B\t\b\u0002¢\u0006\u0004\b6\u00107J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J7\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0002H\u0002J\u0018\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0002H\u0002J4\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00022\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0006J\u0016\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\b\u001a\u00020\u0002J&\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0011\u001a\u00020\u0002J\u000e\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0002J\u000e\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 J\u0006\u0010#\u001a\u00020\u0004R\u0016\u0010$\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010&\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b&\u0010%R\u0016\u0010\'\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\'\u0010%R\"\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n0(8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010,\u001a\u00020+8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u0010.\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b.\u0010%R\u0016\u0010/\u001a\u00020\u00068\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00101\u001a\u00020\u00068\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b1\u00100R\u0016\u00102\u001a\u00020\u00068\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b2\u00100R\u0016\u00103\u001a\u00020\u00068\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b3\u00100R\u0018\u00104\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105¨\u00069"
    }
    d2 = {
        "Lcom/oplus/channel/server/statistics/PullDataManager;",
        "",
        "",
        "widgetCode",
        "Lh4/z;",
        "removePullDataByWidgetCode",
        "",
        "rules",
        "clientPuller",
        "state",
        "Lcom/oplus/channel/server/statistics/RequestActionData;",
        "findMapValue",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/oplus/channel/server/statistics/RequestActionData;",
        "requestDataStr",
        "removePullDataStateMap",
        "Landroid/content/Context;",
        "context",
        "clientPackage",
        "Landroid/os/Bundle;",
        "getExtras",
        "callbackId",
        "",
        "extras",
        "",
        "requestData",
        "protocol",
        "registerOrRemovePullData",
        "bindWidgetCodeAndClientPuller",
        "",
        "callResult",
        "createChannelState",
        "receiveUIDataState",
        "Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;",
        "callBack",
        "registerStatisticsCallBack",
        "unregisterStatisticsCallBack",
        "TAG",
        "Ljava/lang/String;",
        "CLIENT_VERSION_CODE",
        "CLIENT_SDK_VERSION_CODE",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "pullDataStateMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "BUSINESS_DELAY_TIME",
        "J",
        "CARD_PREFIX",
        "JSON",
        "I",
        "RULES_CLIENT_AND_STATE",
        "RULES_WIDGETCODE_AND_STATE",
        "RULES_WIDGETCODE",
        "statisticsCallBack",
        "Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;",
        "<init>",
        "()V",
        "RequestState",
        "server_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final BUSINESS_DELAY_TIME:J = 0xfa0L

.field private static final CARD_PREFIX:Ljava/lang/String; = "card:"

.field private static final CLIENT_SDK_VERSION_CODE:Ljava/lang/String; = "ClientSdkVersionCode"

.field private static final CLIENT_VERSION_CODE:Ljava/lang/String; = "ClientVersionCode"

.field public static final INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

.field private static final JSON:I = 0x2

.field private static final RULES_CLIENT_AND_STATE:I = 0x1

.field private static final RULES_WIDGETCODE:I = 0x3

.field private static final RULES_WIDGETCODE_AND_STATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PullDataManager"

.field private static final pullDataStateMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/channel/server/statistics/RequestActionData;",
            ">;"
        }
    .end annotation
.end field

.field private static statisticsCallBack:Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/statistics/PullDataManager;

    invoke-direct {v0}, Lcom/oplus/channel/server/statistics/PullDataManager;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/statistics/PullDataManager;->pullDataStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/channel/server/statistics/RequestActionData;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/channel/server/statistics/PullDataManager;->createChannelState$lambda-1$lambda-0(Lcom/oplus/channel/server/statistics/RequestActionData;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static final createChannelState$lambda-1$lambda-0(Lcom/oplus/channel/server/statistics/RequestActionData;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$clientPackage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getWidgetCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createChannelState not receive uidata "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullDataManager"

    invoke-static {v1, v0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/statistics/PullDataManager;->statisticsCallBack:Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;

    if-nez v0, :cond_23

    goto :goto_34

    :cond_23
    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getWidgetCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/channel/server/statistics/WidgetCodeTranslaterKt;->getWidgetCodeCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    invoke-direct {v2, p1, p2}, Lcom/oplus/channel/server/statistics/PullDataManager;->getExtras(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;->onReceiveUIDataError(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_34
    sget-object p1, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getRequestData()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/oplus/channel/server/statistics/PullDataManager;->removePullDataStateMap(Ljava/lang/String;)V

    return-void
.end method

.method private final findMapValue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/oplus/channel/server/statistics/RequestActionData;
    .registers 8

    sget-object p0, Lcom/oplus/channel/server/statistics/PullDataManager;->pullDataStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/channel/server/statistics/RequestActionData;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_49

    const/4 v1, 0x2

    if-eq p1, v1, :cond_31

    const/4 v1, 0x3

    if-eq p1, v1, :cond_26

    goto :goto_a

    :cond_26
    invoke-virtual {v0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getWidgetCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    :cond_31
    invoke-virtual {v0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getWidgetCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getRequestState()I

    move-result v1

    if-nez p4, :cond_42

    goto :goto_a

    :cond_42
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_a

    return-object v0

    :cond_49
    invoke-virtual {v0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getClientPuller()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getRequestState()I

    move-result v1

    if-nez p4, :cond_5a

    goto :goto_a

    :cond_5a
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_a

    return-object v0

    :cond_61
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic findMapValue$default(Lcom/oplus/channel/server/statistics/PullDataManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/oplus/channel/server/statistics/RequestActionData;
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const-string v0, ""

    if-eqz p6, :cond_7

    move-object p2, v0

    :cond_7
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_c

    move-object p3, v0

    :cond_c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/channel/server/statistics/PullDataManager;->findMapValue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/oplus/channel/server/statistics/RequestActionData;

    move-result-object p0

    return-object p0
.end method

.method private final getExtras(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, p2}, Lcom/oplus/channel/server/utils/ClientPackageUtils;->getClientVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientVersionCode"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/oplus/channel/server/utils/ClientPackageUtils;->getClientSdkVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ClientSdkVersionCode"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final removePullDataByWidgetCode(Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/oplus/channel/server/statistics/PullDataManager;->findMapValue$default(Lcom/oplus/channel/server/statistics/PullDataManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/oplus/channel/server/statistics/RequestActionData;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_22

    :cond_e
    sget-object v0, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getRequestData()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/channel/server/statistics/PullDataManager;->removePullDataStateMap(Ljava/lang/String;)V

    const-string p0, "removePullDataByWidgetCode: remove pullDataStateMap = "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PullDataManager"

    invoke-static {p1, p0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22
    return-void
.end method

.method private final removePullDataStateMap(Ljava/lang/String;)V
    .registers 4

    sget-object p0, Lcom/oplus/channel/server/statistics/PullDataManager;->pullDataStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/channel/server/statistics/RequestActionData;

    if-nez v0, :cond_11

    goto :goto_21

    :cond_11
    invoke-virtual {v0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_21

    :cond_18
    sget-object v1, Lcom/oplus/channel/server/utils/WorkHandler;->Companion:Lcom/oplus/channel/server/utils/WorkHandler$Companion;

    invoke-virtual {v1}, Lcom/oplus/channel/server/utils/WorkHandler$Companion;->getInstance()Lcom/oplus/channel/server/utils/WorkHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/channel/server/utils/WorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_21
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "removePullDataStateMap: remove pullDataStateMap = "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PullDataManager"

    invoke-static {p1, p0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method public final bindWidgetCodeAndClientPuller([BLjava/lang/String;)V
    .registers 6

    const-string p0, "requestData"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clientPuller"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/String;

    sget-object v0, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object p1, Lcom/oplus/channel/server/statistics/PullDataManager;->pullDataStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/channel/server/statistics/RequestActionData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    goto :goto_25

    :cond_1e
    invoke-virtual {v0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getRequestState()I

    move-result v0

    if-nez v0, :cond_25

    move v2, v1

    :cond_25
    :goto_25
    if-eqz v2, :cond_67

    const-string v0, "bindWidgetCodeAndClientPuller: widgetCode = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/channel/server/statistics/RequestActionData;

    if-nez v2, :cond_37

    const/4 v2, 0x0

    goto :goto_3b

    :cond_37
    invoke-virtual {v2}, Lcom/oplus/channel/server/statistics/RequestActionData;->getWidgetCode()Ljava/lang/String;

    move-result-object v2

    :goto_3b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " clientPuller = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PullDataManager"

    invoke-static {v2, v0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/channel/server/statistics/RequestActionData;

    if-nez v0, :cond_58

    goto :goto_5b

    :cond_58
    invoke-virtual {v0, p2}, Lcom/oplus/channel/server/statistics/RequestActionData;->setClientPuller(Ljava/lang/String;)V

    :goto_5b
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/channel/server/statistics/RequestActionData;

    if-nez p0, :cond_64

    goto :goto_67

    :cond_64
    invoke-virtual {p0, v1}, Lcom/oplus/channel/server/statistics/RequestActionData;->setRequestState(I)V

    :cond_67
    :goto_67
    return-void
.end method

.method public final createChannelState(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientPuller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientPackage"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p2

    invoke-static/range {v1 .. v7}, Lcom/oplus/channel/server/statistics/PullDataManager;->findMapValue$default(Lcom/oplus/channel/server/statistics/PullDataManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/oplus/channel/server/statistics/RequestActionData;

    move-result-object p0

    if-nez p0, :cond_21

    goto :goto_74

    :cond_21
    const-string p2, "PullDataManager"

    if-eqz p3, :cond_4a

    new-instance p3, Lcom/android/quickstep/f1;

    invoke-direct {p3, p0, p1, p4}, Lcom/android/quickstep/f1;-><init>(Lcom/oplus/channel/server/statistics/RequestActionData;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/oplus/channel/server/statistics/RequestActionData;->setRunnable(Ljava/lang/Runnable;)V

    sget-object p1, Lcom/oplus/channel/server/utils/WorkHandler;->Companion:Lcom/oplus/channel/server/utils/WorkHandler$Companion;

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/WorkHandler$Companion;->getInstance()Lcom/oplus/channel/server/utils/WorkHandler;

    move-result-object p1

    const-wide/16 v0, 0xfa0

    invoke-virtual {p1, p3, v0, v1}, Lcom/oplus/channel/server/utils/WorkHandler;->postDelayed(Ljava/lang/Runnable;J)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/oplus/channel/server/statistics/RequestActionData;->setRequestState(I)V

    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getWidgetCode()Ljava/lang/String;

    move-result-object p0

    const-string p1, "createChannelState start runnable "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74

    :cond_4a
    sget-object p3, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getRequestData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/oplus/channel/server/statistics/PullDataManager;->removePullDataStateMap(Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/statistics/PullDataManager;->statisticsCallBack:Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;

    if-nez v0, :cond_58

    goto :goto_67

    :cond_58
    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getWidgetCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/channel/server/statistics/WidgetCodeTranslaterKt;->getWidgetCodeCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, p1, p4}, Lcom/oplus/channel/server/statistics/PullDataManager;->getExtras(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;->onCreateChannelError(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_67
    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getWidgetCode()Ljava/lang/String;

    move-result-object p0

    const-string p1, "createChannelState createChannelError "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_74
    return-void
.end method

.method public final receiveUIDataState(Ljava/lang/String;)V
    .registers 14

    const-string v0, "callbackId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card:"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_16

    const/4 v3, 0x4

    invoke-static {p1, v0, v4, v1, v3}, Lk7/m;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    :cond_16
    move-object v7, v4

    const/4 v6, 0x2

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Lcom/oplus/channel/server/statistics/PullDataManager;->findMapValue$default(Lcom/oplus/channel/server/statistics/PullDataManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/oplus/channel/server/statistics/RequestActionData;

    move-result-object p0

    if-nez p0, :cond_27

    goto :goto_3b

    :cond_27
    const-string v0, "receiveUIDataState: callbackId = "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PullDataManager"

    invoke-static {v0, p1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/channel/server/statistics/PullDataManager;->INSTANCE:Lcom/oplus/channel/server/statistics/PullDataManager;

    invoke-virtual {p0}, Lcom/oplus/channel/server/statistics/RequestActionData;->getRequestData()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/oplus/channel/server/statistics/PullDataManager;->removePullDataStateMap(Ljava/lang/String;)V

    :goto_3b
    return-void
.end method

.method public final registerOrRemovePullData(Ljava/lang/String;Ljava/util/Map;[BI)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BI)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "callbackId"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "requestData"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "card:"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v0, v3, v4, v5}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_21

    const/4 v6, 0x4

    invoke-static {v0, v3, v7, v4, v6}, Lk7/m;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v7

    :cond_21
    if-nez v1, :cond_25

    const/4 v0, 0x0

    goto :goto_2d

    :cond_25
    const-string v0, "life_circle"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2d
    move-object v10, v0

    move/from16 v0, p4

    if-ne v5, v0, :cond_96

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    if-eqz v10, :cond_6f

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x65825f6

    if-eq v1, v2, :cond_61

    const v2, 0x35c12fb3

    if-eq v1, v2, :cond_58

    const v2, 0x5cd39ffa

    if-eq v1, v2, :cond_4f

    goto :goto_6f

    :cond_4f
    const-string v1, "destroy"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    goto :goto_6f

    :cond_58
    const-string v1, "unsubscribed"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    goto :goto_6f

    :cond_61
    const-string v1, "pause"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    goto :goto_6f

    :cond_6a
    move-object/from16 v1, p0

    invoke-direct {v1, v7}, Lcom/oplus/channel/server/statistics/PullDataManager;->removePullDataByWidgetCode(Ljava/lang/String;)V

    :cond_6f
    :goto_6f
    const-string v1, "subscribed"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    sget-object v1, Lcom/oplus/channel/server/statistics/PullDataManager;->pullDataStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/oplus/channel/server/statistics/RequestActionData;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x30

    const/16 v16, 0x0

    move-object v8, v2

    move-object v9, v7

    move-object v11, v0

    invoke-direct/range {v8 .. v16}, Lcom/oplus/channel/server/statistics/RequestActionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "registerOrRemovePullData: add to pullDataStateMap = "

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullDataManager"

    invoke-static {v1, v0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_96
    return-void
.end method

.method public final registerStatisticsCallBack(Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;)V
    .registers 2

    const-string p0, "callBack"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/statistics/PullDataManager;->statisticsCallBack:Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;

    if-nez p0, :cond_b

    sput-object p1, Lcom/oplus/channel/server/statistics/PullDataManager;->statisticsCallBack:Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;

    :cond_b
    return-void
.end method

.method public final unregisterStatisticsCallBack()V
    .registers 1

    sget-object p0, Lcom/oplus/channel/server/statistics/PullDataManager;->statisticsCallBack:Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;

    if-eqz p0, :cond_7

    const/4 p0, 0x0

    sput-object p0, Lcom/oplus/channel/server/statistics/PullDataManager;->statisticsCallBack:Lcom/oplus/channel/server/api/IChannelStatisticsCallBack;

    :cond_7
    return-void
.end method
