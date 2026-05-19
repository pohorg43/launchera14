.class public final Lcom/oplus/smartsdk/themecard/ViewApiDelegate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/smartsdk/ISmartViewApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;,
        Lcom/oplus/smartsdk/themecard/ViewApiDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 ?2\u00020\u0001:\u0002@?B\u0007¢\u0006\u0004\b=\u0010>J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0001H\u0002J*\u0010\u000f\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0014H\u0016J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0004H\u0016J\u0010\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\u001b\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J\u001a\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016J \u0010\"\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000bH\u0016J\u0010\u0010%\u001a\u00020\u00072\u0006\u0010$\u001a\u00020#H\u0016J\u0010\u0010&\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010(\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020\u0004H\u0016R\u0016\u0010*\u001a\u00020)8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\"\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00100,8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u0010/\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00101\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00103\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00105\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00104R\u001e\u00108\u001a\n\u0012\u0004\u0012\u000207\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010:\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010<\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010;¨\u0006A"
    }
    d2 = {
        "Lcom/oplus/smartsdk/themecard/ViewApiDelegate;",
        "Lcom/oplus/smartsdk/ISmartViewApi;",
        "Landroid/view/View;",
        "view",
        "",
        "isThemeCard",
        "api",
        "Lh4/z;",
        "initApiCommon",
        "Landroid/content/Context;",
        "hostContext",
        "",
        "cardName",
        "Lcom/oplus/smartsdk/SmartApiInfo;",
        "smartApiInfo",
        "sendCardData",
        "Lcom/oplus/smartsdk/CardUICallback;",
        "callback",
        "registerUiCallback",
        "unRegisterUiCallback",
        "Lcom/oplus/smartsdk/ErrorCallback;",
        "registerErrorCallback",
        "canLog",
        "setCanLog",
        "onVisible",
        "onInVisible",
        "onRelease",
        "unsubscribe",
        "Landroid/os/Bundle;",
        "data",
        "onSizeChange",
        "cardIdentify",
        "packageName",
        "className",
        "setBindServiceToCPData",
        "Lcom/oplus/smartsdk/InterceptStartActivityCallback;",
        "ca",
        "interceptStartActivity",
        "releaseOldViewSource",
        "useImageThread",
        "setUseImageThread",
        "Lcom/oplus/smartsdk/themecard/CardApiManager;",
        "cardApiManager",
        "Lcom/oplus/smartsdk/themecard/CardApiManager;",
        "",
        "cardUICallbackMap",
        "Ljava/util/Map;",
        "errorCallback",
        "Lcom/oplus/smartsdk/ErrorCallback;",
        "interceptStartActivityCallback",
        "Lcom/oplus/smartsdk/InterceptStartActivityCallback;",
        "enableLog",
        "Z",
        "enableImageThread",
        "",
        "Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;",
        "bindInfoList",
        "Ljava/util/List;",
        "smartCardApi",
        "Lcom/oplus/smartsdk/ISmartViewApi;",
        "themeCardApi",
        "<init>",
        "()V",
        "Companion",
        "BindInfo",
        "com.oplus.smartsdk.smartenginesdk"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/smartsdk/themecard/ViewApiDelegate$Companion;

.field private static final TAG:Ljava/lang/String; = "ViewApiDelegate"


# instance fields
.field private bindInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final cardApiManager:Lcom/oplus/smartsdk/themecard/CardApiManager;

.field private final cardUICallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/smartsdk/CardUICallback;",
            ">;"
        }
    .end annotation
.end field

.field private enableImageThread:Z

.field private enableLog:Z

.field private errorCallback:Lcom/oplus/smartsdk/ErrorCallback;

.field private interceptStartActivityCallback:Lcom/oplus/smartsdk/InterceptStartActivityCallback;

.field private smartCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

.field private themeCardApi:Lcom/oplus/smartsdk/ISmartViewApi;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->Companion:Lcom/oplus/smartsdk/themecard/ViewApiDelegate$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/smartsdk/themecard/CardApiManager;

    invoke-direct {v0}, Lcom/oplus/smartsdk/themecard/CardApiManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->cardApiManager:Lcom/oplus/smartsdk/themecard/CardApiManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->cardUICallbackMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getBindInfoList$p(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->bindInfoList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getEnableImageThread$p(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->enableImageThread:Z

    return p0
.end method

.method public static final synthetic access$getErrorCallback$p(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;)Lcom/oplus/smartsdk/ErrorCallback;
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->errorCallback:Lcom/oplus/smartsdk/ErrorCallback;

    return-object p0
.end method

.method public static final synthetic access$getSmartCardApi$p(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;)Lcom/oplus/smartsdk/ISmartViewApi;
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->smartCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    return-object p0
.end method

.method public static final synthetic access$getThemeCardApi$p(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;)Lcom/oplus/smartsdk/ISmartViewApi;
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->themeCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    return-object p0
.end method

.method public static final synthetic access$initApiCommon(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->initApiCommon(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public static final synthetic access$setBindInfoList$p(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->bindInfoList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setSmartCardApi$p(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->smartCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    return-void
.end method

.method public static final synthetic access$setThemeCardApi$p(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->themeCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    return-void
.end method

.method private final initApiCommon(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->enableLog:Z

    invoke-interface {p1, v0}, Lcom/oplus/smartsdk/ISmartViewApi;->setCanLog(Z)V

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->errorCallback:Lcom/oplus/smartsdk/ErrorCallback;

    if-nez v0, :cond_a

    goto :goto_d

    :cond_a
    invoke-interface {p1, v0}, Lcom/oplus/smartsdk/ISmartViewApi;->registerErrorCallback(Lcom/oplus/smartsdk/ErrorCallback;)V

    :goto_d
    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->interceptStartActivityCallback:Lcom/oplus/smartsdk/InterceptStartActivityCallback;

    if-nez v0, :cond_12

    goto :goto_15

    :cond_12
    invoke-interface {p1, v0}, Lcom/oplus/smartsdk/ISmartViewApi;->interceptStartActivity(Lcom/oplus/smartsdk/InterceptStartActivityCallback;)V

    :goto_15
    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->cardUICallbackMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_18
    iget-object v1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->cardUICallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_48

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->cardUICallbackMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/smartsdk/CardUICallback;

    invoke-interface {p1, v2, v1}, Lcom/oplus/smartsdk/ISmartViewApi;->registerUiCallback(Ljava/lang/String;Lcom/oplus/smartsdk/CardUICallback;)V
    :try_end_47
    .catchall {:try_start_18 .. :try_end_47} :catchall_4a

    goto :goto_2c

    :cond_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final isThemeCard(Landroid/view/View;)Z
    .registers 2

    sget p0, Lcom/oplus/smartsdk/R$id;->tag_theme_card_name:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public interceptStartActivity(Lcom/oplus/smartsdk/InterceptStartActivityCallback;)V
    .registers 3

    const-string v0, "ca"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->interceptStartActivityCallback:Lcom/oplus/smartsdk/InterceptStartActivityCallback;

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->themeCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez v0, :cond_c

    goto :goto_f

    :cond_c
    invoke-interface {v0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->interceptStartActivity(Lcom/oplus/smartsdk/InterceptStartActivityCallback;)V

    :goto_f
    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->smartCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez p0, :cond_14

    goto :goto_17

    :cond_14
    invoke-interface {p0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->interceptStartActivity(Lcom/oplus/smartsdk/InterceptStartActivityCallback;)V

    :goto_17
    return-void
.end method

.method public onInVisible(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->isThemeCard(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->themeCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez p0, :cond_10

    goto :goto_1c

    :cond_10
    invoke-interface {p0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->onInVisible(Landroid/view/View;)V

    goto :goto_1c

    :cond_14
    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->smartCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez p0, :cond_19

    goto :goto_1c

    :cond_19
    invoke-interface {p0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->onInVisible(Landroid/view/View;)V

    :goto_1c
    return-void
.end method

.method public onRelease(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->isThemeCard(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->themeCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez p0, :cond_10

    goto :goto_1c

    :cond_10
    invoke-interface {p0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->onRelease(Landroid/view/View;)V

    goto :goto_1c

    :cond_14
    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->smartCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez p0, :cond_19

    goto :goto_1c

    :cond_19
    invoke-interface {p0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->onRelease(Landroid/view/View;)V

    :goto_1c
    return-void
.end method

.method public onSizeChange(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSizeChange view ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " data ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewApiDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->isThemeCard(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->themeCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez p0, :cond_2e

    goto :goto_31

    :cond_2e
    invoke-interface {p0, p1, p2}, Lcom/oplus/smartsdk/ISmartViewApi;->onSizeChange(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public onVisible(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->isThemeCard(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->themeCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez p0, :cond_10

    goto :goto_1c

    :cond_10
    invoke-interface {p0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->onVisible(Landroid/view/View;)V

    goto :goto_1c

    :cond_14
    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->smartCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez p0, :cond_19

    goto :goto_1c

    :cond_19
    invoke-interface {p0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->onVisible(Landroid/view/View;)V

    :goto_1c
    return-void
.end method

.method public registerErrorCallback(Lcom/oplus/smartsdk/ErrorCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->errorCallback:Lcom/oplus/smartsdk/ErrorCallback;

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->themeCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez v0, :cond_c

    goto :goto_f

    :cond_c
    invoke-interface {v0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->registerErrorCallback(Lcom/oplus/smartsdk/ErrorCallback;)V

    :goto_f
    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->smartCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez p0, :cond_14

    goto :goto_17

    :cond_14
    invoke-interface {p0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->registerErrorCallback(Lcom/oplus/smartsdk/ErrorCallback;)V

    :goto_17
    return-void
.end method

.method public registerUiCallback(Ljava/lang/String;Lcom/oplus/smartsdk/CardUICallback;)V
    .registers 5

    const-string v0, "cardName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->cardUICallbackMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->cardUICallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->themeCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez v1, :cond_17

    goto :goto_1a

    :cond_17
    invoke-interface {v1, p1, p2}, Lcom/oplus/smartsdk/ISmartViewApi;->registerUiCallback(Ljava/lang/String;Lcom/oplus/smartsdk/CardUICallback;)V

    :goto_1a
    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->smartCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez p0, :cond_1f

    goto :goto_22

    :cond_1f
    invoke-interface {p0, p1, p2}, Lcom/oplus/smartsdk/ISmartViewApi;->registerUiCallback(Ljava/lang/String;Lcom/oplus/smartsdk/CardUICallback;)V
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_24

    :goto_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public releaseOldViewSource(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->smartCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-interface {p0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->releaseOldViewSource(Landroid/view/View;)V

    :goto_d
    return-void
.end method

.method public sendCardData(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V
    .registers 7

    const-string v0, "hostContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartApiInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->cardApiManager:Lcom/oplus/smartsdk/themecard/CardApiManager;

    new-instance v1, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;-><init>(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;Ljava/lang/String;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V

    invoke-virtual {v0, p1, p4, v1}, Lcom/oplus/smartsdk/themecard/CardApiManager;->loadCardApi(Landroid/content/Context;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;)V

    return-void
.end method

.method public setBindServiceToCPData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string v1, "cardIdentify"

    const-string v3, "packageName"

    const-string v5, "className"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->smartCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_17

    :cond_12
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/smartsdk/ISmartViewApi;->setBindServiceToCPData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    :goto_17
    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->bindInfoList:Ljava/util/List;

    if-nez v0, :cond_24

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->bindInfoList:Ljava/util/List;

    :cond_24
    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->bindInfoList:Ljava/util/List;

    if-nez p0, :cond_29

    goto :goto_31

    :cond_29
    new-instance v0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    :goto_31
    return-void
.end method

.method public setCanLog(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->enableLog:Z

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->themeCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez v0, :cond_7

    goto :goto_a

    :cond_7
    invoke-interface {v0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->setCanLog(Z)V

    :goto_a
    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->smartCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez p0, :cond_f

    goto :goto_12

    :cond_f
    invoke-interface {p0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->setCanLog(Z)V

    :goto_12
    return-void
.end method

.method public setUseImageThread(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->enableImageThread:Z

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->smartCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez p0, :cond_7

    goto :goto_a

    :cond_7
    invoke-interface {p0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->setUseImageThread(Z)V

    :goto_a
    return-void
.end method

.method public unRegisterUiCallback(Ljava/lang/String;)V
    .registers 4

    const-string v0, "cardName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->cardUICallbackMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->cardUICallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->themeCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez v1, :cond_12

    goto :goto_15

    :cond_12
    invoke-interface {v1, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->unRegisterUiCallback(Ljava/lang/String;)V

    :goto_15
    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->smartCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez p0, :cond_1a

    goto :goto_1d

    :cond_1a
    invoke-interface {p0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->unRegisterUiCallback(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1f

    :goto_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_1d

    :cond_3
    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->themeCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    instance-of v1, v0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;

    if-eqz v1, :cond_15

    check-cast v0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;

    invoke-virtual {v0, p1}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->isThemeCard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0, p1}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->unsubscribe(Ljava/lang/String;)V

    goto :goto_1d

    :cond_15
    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->smartCardApi:Lcom/oplus/smartsdk/ISmartViewApi;

    if-nez p0, :cond_1a

    goto :goto_1d

    :cond_1a
    invoke-interface {p0, p1}, Lcom/oplus/smartsdk/ISmartViewApi;->unsubscribe(Ljava/lang/String;)V

    :goto_1d
    return-void
.end method
