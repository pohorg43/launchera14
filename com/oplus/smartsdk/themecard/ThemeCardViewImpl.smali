.class public final Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/smartsdk/ISmartViewApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$KeyguardCtrlFactory;,
        Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 52\u00020\u0001:\u000256B\u000f\u0012\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b3\u00104J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J*\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0018\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u0010\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u0010\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u001f\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010 \u001a\u00020\t2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0016J\u001a\u0010#\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016J\u000e\u0010$\u001a\u00020\u001a2\u0006\u0010\u0006\u001a\u00020\u0004R\u0016\u0010&\u001a\u00020%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010\'R\"\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00140(8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\"\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020+0(8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010*R\u0018\u0010-\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u0010/\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00101\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102¨\u00067"
    }
    d2 = {
        "Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;",
        "Lcom/oplus/smartsdk/ISmartViewApi;",
        "Landroid/view/View;",
        "view",
        "",
        "getCardName",
        "cardName",
        "",
        "code",
        "Lh4/z;",
        "onError",
        "removeKeyguardCtrl",
        "Landroid/content/Context;",
        "context",
        "Lcom/oplus/smartsdk/SmartApiInfo;",
        "smartApiInfo",
        "sendCardData",
        "Lcom/oplus/smartsdk/ErrorCallback;",
        "callback",
        "registerErrorCallback",
        "Lcom/oplus/smartsdk/CardUICallback;",
        "registerUiCallback",
        "unRegisterUiCallback",
        "Lcom/oplus/smartsdk/InterceptStartActivityCallback;",
        "ca",
        "interceptStartActivity",
        "",
        "canLog",
        "setCanLog",
        "onVisible",
        "onInVisible",
        "onRelease",
        "unsubscribe",
        "Landroid/os/Bundle;",
        "data",
        "onSizeChange",
        "isThemeCard",
        "Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$KeyguardCtrlFactory;",
        "ctrlFactory",
        "Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$KeyguardCtrlFactory;",
        "",
        "cardUICallbackMap",
        "Ljava/util/Map;",
        "Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;",
        "keyguardCtrlMap",
        "errorCallback",
        "Lcom/oplus/smartsdk/ErrorCallback;",
        "interceptStartActivityCallback",
        "Lcom/oplus/smartsdk/InterceptStartActivityCallback;",
        "debug",
        "Z",
        "<init>",
        "(Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$KeyguardCtrlFactory;)V",
        "Companion",
        "KeyguardCtrlFactory",
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
.field public static final Companion:Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "ThemeCardViewImpl"


# instance fields
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

.field private final ctrlFactory:Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$KeyguardCtrlFactory;

.field private debug:Z

.field private errorCallback:Lcom/oplus/smartsdk/ErrorCallback;

.field private interceptStartActivityCallback:Lcom/oplus/smartsdk/InterceptStartActivityCallback;

.field private final keyguardCtrlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->Companion:Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$KeyguardCtrlFactory;)V
    .registers 3

    const-string v0, "ctrlFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->ctrlFactory:Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$KeyguardCtrlFactory;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->cardUICallbackMap:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->keyguardCtrlMap:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/smartsdk/ErrorCallback;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->onError$lambda-9$lambda-8(Lcom/oplus/smartsdk/ErrorCallback;Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$getCardUICallbackMap$p(Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->cardUICallbackMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getInterceptStartActivityCallback$p(Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;)Lcom/oplus/smartsdk/InterceptStartActivityCallback;
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->interceptStartActivityCallback:Lcom/oplus/smartsdk/InterceptStartActivityCallback;

    return-object p0
.end method

.method public static final synthetic access$onError(Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->onError(Ljava/lang/String;I)V

    return-void
.end method

.method private final getCardName(Landroid/view/View;)Ljava/lang/String;
    .registers 2

    sget p0, Lcom/oplus/smartsdk/R$id;->tag_theme_card_name:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_d

    check-cast p0, Ljava/lang/String;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method private final onError(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError cardName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeCardViewImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->removeKeyguardCtrl(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->errorCallback:Lcom/oplus/smartsdk/ErrorCallback;

    if-nez p0, :cond_26

    goto :goto_30

    :cond_26
    sget-object v0, Lcom/oplus/smartsdk/SmartEngineManager;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/badge/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher/badge/c;-><init>(Lcom/oplus/smartsdk/ErrorCallback;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_30
    return-void
.end method

.method private static final onError$lambda-9$lambda-8(Lcom/oplus/smartsdk/ErrorCallback;Ljava/lang/String;I)V
    .registers 4

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cardName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lcom/oplus/smartsdk/ErrorCallback;->onCall(Ljava/lang/String;I)V

    return-void
.end method

.method private final removeKeyguardCtrl(Ljava/lang/String;)V
    .registers 5

    const-string v0, "removeKeyguardCtrl cardName="

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeCardViewImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_18

    return-void

    :cond_18
    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->keyguardCtrlMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;

    if-nez p0, :cond_24

    const/4 p0, 0x0

    goto :goto_29

    :cond_24
    invoke-virtual {p0, v2}, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;->destroy(Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_29
    if-nez p0, :cond_34

    const-string p0, "removeKeyguardCtrl keyguardCtrl not found! cardName="

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void
.end method


# virtual methods
.method public interceptStartActivity(Lcom/oplus/smartsdk/InterceptStartActivityCallback;)V
    .registers 3

    const-string v0, "ca"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->interceptStartActivityCallback:Lcom/oplus/smartsdk/InterceptStartActivityCallback;

    return-void
.end method

.method public final isThemeCard(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "cardName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->keyguardCtrlMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onInVisible(Landroid/view/View;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->getCardName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onInVisible cardName="

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeCardViewImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->keyguardCtrlMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;

    if-nez p0, :cond_20

    const/4 p0, 0x0

    goto :goto_25

    :cond_20
    invoke-virtual {p0}, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;->hide()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_25
    if-nez p0, :cond_30

    const-string p0, "onInVisible keyguardCtrl not found! cardName="

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void
.end method

.method public onRelease(Landroid/view/View;)V
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->getCardName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRelease cardName="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThemeCardViewImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_17

    goto :goto_36

    :cond_17
    iget-object v1, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->keyguardCtrlMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;

    if-nez v1, :cond_22

    goto :goto_36

    :cond_22
    invoke-virtual {v1, p1}, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;->release(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_36

    const-string p1, "onRelease remove keyguardCtrl cardName="

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->keyguardCtrlMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    :goto_36
    return-void
.end method

.method public onSizeChange(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->getCardName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChange cardName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThemeCardViewImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->keyguardCtrlMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;

    if-nez p0, :cond_33

    const/4 p0, 0x0

    goto :goto_38

    :cond_33
    invoke-virtual {p0, p1, p2}, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;->onSizeChange(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_38
    if-nez p0, :cond_43

    const-string p0, "onSizeChange keyguardCtrl not found! cardName="

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-void
.end method

.method public onVisible(Landroid/view/View;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->getCardName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onVisible cardName="

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeCardViewImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->keyguardCtrlMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;

    if-nez p0, :cond_20

    const/4 p0, 0x0

    goto :goto_25

    :cond_20
    invoke-virtual {p0}, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;->show()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_25
    if-nez p0, :cond_30

    const-string p0, "onVisible keyguardCtrl not found! cardName="

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void
.end method

.method public registerErrorCallback(Lcom/oplus/smartsdk/ErrorCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->errorCallback:Lcom/oplus/smartsdk/ErrorCallback;

    return-void
.end method

.method public registerUiCallback(Ljava/lang/String;Lcom/oplus/smartsdk/CardUICallback;)V
    .registers 6

    const-string v0, "cardName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ThemeCardViewImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerUiCallback cardName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->cardUICallbackMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_2b
    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->cardUICallbackMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_32

    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public sendCardData(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V
    .registers 13

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "cardName"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "smartApiInfo"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "sendCardData cardName="

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeCardViewImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->keyguardCtrlMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->ctrlFactory:Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$KeyguardCtrlFactory;

    invoke-interface {v0, p2}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$KeyguardCtrlFactory;->createKeyguardCtrl(Ljava/lang/String;)Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v2, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->keyguardCtrlMap:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    const/4 v2, 0x1

    if-nez v0, :cond_39

    invoke-direct {p0, p2, v2}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->onError(Ljava/lang/String;I)V

    goto/16 :goto_138

    :cond_39
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :try_start_3e
    invoke-virtual {p4}, Lcom/oplus/smartsdk/SmartApiInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v4
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_139

    const-string v5, "card_uri"

    if-nez v4, :cond_47

    goto :goto_72

    :cond_47
    :try_start_47
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_51

    goto :goto_72

    :cond_51
    instance-of v6, v4, Landroid/os/Parcelable;

    if-eqz v6, :cond_5b

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_72

    :cond_5b
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_69

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_72

    :cond_69
    const-string v6, "sendCardData invalidate uri="

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_72
    invoke-virtual {p4}, Lcom/oplus/smartsdk/SmartApiInfo;->getData()[B

    move-result-object v4

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " data="

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " bundle="

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/oplus/smartsdk/SmartApiInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_ab

    move p3, v2

    goto :goto_ac

    :cond_ab
    const/4 p3, 0x0

    :goto_ac
    if-eqz p3, :cond_12e

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p4

    const-string v4, "jsonObject.keys()"

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_bc
    :goto_bc
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12e

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_da

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_bc

    :cond_da
    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_e8

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bc

    :cond_e8
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_f6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_bc

    :cond_f6
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_104

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_bc

    :cond_104
    instance-of v7, v6, Ljava/lang/Float;

    if-eqz v7, :cond_112

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_bc

    :cond_112
    instance-of v7, v6, Ljava/lang/Double;

    if-eqz v7, :cond_120

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_bc

    :cond_120
    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_bc

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_12d
    .catchall {:try_start_47 .. :try_end_12d} :catchall_139

    goto :goto_bc

    :cond_12e
    iget-boolean p3, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->debug:Z

    new-instance p4, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$sendCardData$3;

    invoke-direct {p4, p0, p2}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl$sendCardData$3;-><init>(Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v3, p3, p4}, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;->beInflate(Landroid/content/Context;Landroid/os/Bundle;ZLcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$IKeyguardCallback;)V

    :goto_138
    return-void

    :catchall_139
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "sendCardData json to bundle failed! e: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, v2}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->onError(Ljava/lang/String;I)V

    return-void
.end method

.method public setCanLog(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->debug:Z

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->keyguardCtrlMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->keyguardCtrlMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;

    invoke-virtual {v0, p1}, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;->setDebug(Z)V

    goto :goto_16

    :cond_26
    return-void
.end method

.method public unRegisterUiCallback(Ljava/lang/String;)V
    .registers 4

    const-string v0, "cardName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ThemeCardViewImpl"

    const-string v1, "unRegisterUiCallback cardName="

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->cardUICallbackMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_13
    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->cardUICallbackMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/smartsdk/CardUICallback;
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1d

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .registers 4

    const-string v0, "unsubscribe cardName="

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeCardViewImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_e

    goto :goto_11

    :cond_e
    invoke-direct {p0, p1}, Lcom/oplus/smartsdk/themecard/ThemeCardViewImpl;->removeKeyguardCtrl(Ljava/lang/String;)V

    :goto_11
    return-void
.end method
