.class public final Lcom/oplus/smartsdk/themecard/CardApiManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;,
        Lcom/oplus/smartsdk/themecard/CardApiManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002J\u001e\u0010\r\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0010¨\u0006\u0016"
    }
    d2 = {
        "Lcom/oplus/smartsdk/themecard/CardApiManager;",
        "",
        "Lcom/oplus/smartsdk/SmartApiInfo;",
        "smartApiInfo",
        "",
        "isThemeCard",
        "Landroid/content/Context;",
        "cardContext",
        "hostContext",
        "Lh4/z;",
        "updateDisplayContext",
        "Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;",
        "callback",
        "loadCardApi",
        "Lcom/oplus/smartsdk/themecard/ApiLoader;",
        "smartCardApiLoader",
        "Lcom/oplus/smartsdk/themecard/ApiLoader;",
        "themeCardApiLoader",
        "<init>",
        "()V",
        "Companion",
        "Callback",
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
.field public static final Companion:Lcom/oplus/smartsdk/themecard/CardApiManager$Companion;

.field public static final TAG:Ljava/lang/String; = "CardApiManager"


# instance fields
.field private final smartCardApiLoader:Lcom/oplus/smartsdk/themecard/ApiLoader;

.field private final themeCardApiLoader:Lcom/oplus/smartsdk/themecard/ApiLoader;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/smartsdk/themecard/CardApiManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/smartsdk/themecard/CardApiManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/smartsdk/themecard/CardApiManager;->Companion:Lcom/oplus/smartsdk/themecard/CardApiManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/smartsdk/themecard/SmartApiLoader;

    invoke-direct {v0}, Lcom/oplus/smartsdk/themecard/SmartApiLoader;-><init>()V

    iput-object v0, p0, Lcom/oplus/smartsdk/themecard/CardApiManager;->smartCardApiLoader:Lcom/oplus/smartsdk/themecard/ApiLoader;

    new-instance v0, Lcom/oplus/smartsdk/themecard/ThemeCardApiLoader;

    invoke-direct {v0}, Lcom/oplus/smartsdk/themecard/ThemeCardApiLoader;-><init>()V

    iput-object v0, p0, Lcom/oplus/smartsdk/themecard/CardApiManager;->themeCardApiLoader:Lcom/oplus/smartsdk/themecard/ApiLoader;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/oplus/smartsdk/themecard/CardApiManager;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/smartsdk/themecard/CardApiManager;->loadCardApi$lambda-0(Landroid/content/Context;Lcom/oplus/smartsdk/themecard/CardApiManager;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;)V

    return-void
.end method

.method private final isThemeCard(Lcom/oplus/smartsdk/SmartApiInfo;)Z
    .registers 9

    invoke-virtual {p1}, Lcom/oplus/smartsdk/SmartApiInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "card_uri"

    const-string v2, "card_size"

    const-string v3, "card_entry"

    const-string v4, "card_id"

    if-nez p0, :cond_10

    goto :goto_29

    :cond_10
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    return v0

    :cond_29
    :goto_29
    invoke-virtual {p1}, Lcom/oplus/smartsdk/SmartApiInfo;->getData()[B

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    sget-object v6, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, p0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_52

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_52

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_52

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_52

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    return v0
.end method

.method private static final loadCardApi$lambda-0(Landroid/content/Context;Lcom/oplus/smartsdk/themecard/CardApiManager;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;)V
    .registers 9

    const-string v0, "CardApiManager"

    const-string v1, "$hostContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$smartApiInfo"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$callback"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_16
    sget-object v1, Lcom/oplus/smartsdk/themecard/ThemeCardApiLoader;->Companion:Lcom/oplus/smartsdk/themecard/ThemeCardApiLoader$Companion;

    invoke-virtual {v1, p0}, Lcom/oplus/smartsdk/themecard/ThemeCardApiLoader$Companion;->isSupportThemeCard(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p1, p2}, Lcom/oplus/smartsdk/themecard/CardApiManager;->isThemeCard(Lcom/oplus/smartsdk/SmartApiInfo;)Z

    move-result p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadCardApi isSupportedThemeCard="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isThemeCardInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_42

    if-eqz p2, :cond_42

    const/4 p2, 0x1

    goto :goto_43

    :cond_42
    const/4 p2, 0x0

    :goto_43
    if-eqz p2, :cond_4c

    iget-object v1, p1, Lcom/oplus/smartsdk/themecard/CardApiManager;->themeCardApiLoader:Lcom/oplus/smartsdk/themecard/ApiLoader;

    invoke-interface {v1, p0}, Lcom/oplus/smartsdk/themecard/ApiLoader;->loadApi(Landroid/content/Context;)Lh4/j;

    move-result-object v1

    goto :goto_52

    :cond_4c
    iget-object v1, p1, Lcom/oplus/smartsdk/themecard/CardApiManager;->smartCardApiLoader:Lcom/oplus/smartsdk/themecard/ApiLoader;

    invoke-interface {v1, p0}, Lcom/oplus/smartsdk/themecard/ApiLoader;->loadApi(Landroid/content/Context;)Lh4/j;

    move-result-object v1

    :goto_52
    iget-object v2, v1, Lh4/j;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v3, v4, :cond_75

    invoke-direct {p1, v2, p0}, Lcom/oplus/smartsdk/themecard/CardApiManager;->updateDisplayContext(Landroid/content/Context;Landroid/content/Context;)V

    :cond_75
    iget-object p0, v1, Lh4/j;->a:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/smartsdk/ISmartViewApi;

    invoke-interface {p3, p0, v2, p2}, Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;->onLoad(Lcom/oplus/smartsdk/ISmartViewApi;Landroid/content/Context;Z)V
    :try_end_7c
    .catchall {:try_start_16 .. :try_end_7c} :catchall_7d

    goto :goto_8e

    :catchall_7d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "loadCardApi failed! e="

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, p0}, Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;->onError(Ljava/lang/Throwable;)V

    :goto_8e
    return-void
.end method

.method private final updateDisplayContext(Landroid/content/Context;Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    iput p2, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method


# virtual methods
.method public final loadCardApi(Landroid/content/Context;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;)V
    .registers 6

    const-string v0, "hostContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartApiInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/smartsdk/SmartEngineManager;->SINGLE_THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oplus/quickstep/gesture/g;

    invoke-direct {v1, p1, p0, p2, p3}, Lcom/oplus/quickstep/gesture/g;-><init>(Landroid/content/Context;Lcom/oplus/smartsdk/themecard/CardApiManager;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
