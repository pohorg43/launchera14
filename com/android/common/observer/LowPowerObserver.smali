.class public final Lcom/android/common/observer/LowPowerObserver;
.super Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/observer/LowPowerObserver$Companion;
    }
.end annotation


# static fields
.field private static final CLOSE:I = 0x0

.field public static final Companion:Lcom/android/common/observer/LowPowerObserver$Companion;

.field private static final OPEN:I = 0x1

.field public static final instance:Lcom/android/common/observer/LowPowerObserver;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/observer/LowPowerObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/observer/LowPowerObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/observer/LowPowerObserver;->Companion:Lcom/android/common/observer/LowPowerObserver$Companion;

    new-instance v0, Lcom/android/common/observer/LowPowerObserver;

    invoke-direct {v0}, Lcom/android/common/observer/LowPowerObserver;-><init>()V

    sput-object v0, Lcom/android/common/observer/LowPowerObserver;->instance:Lcom/android/common/observer/LowPowerObserver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;-><init>()V

    return-void
.end method

.method public static final register(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/observer/LowPowerObserver;->Companion:Lcom/android/common/observer/LowPowerObserver$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/observer/LowPowerObserver$Companion;->register(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 1

    const-string p0, "low_power"

    return-object p0
.end method

.method public getUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/common/AbstractObserver;->Companion:Lcom/oplus/quickstep/common/AbstractObserver$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/common/AbstractObserver$Companion;->toGlobalUri()Ljava/util/function/Function;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/common/observer/LowPowerObserver;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "toGlobalUri().apply(getKey())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public initState(Landroid/content/Context;)I
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/common/AbsSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getAppContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/common/observer/LowPowerObserver;->getKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/oplus/quickstep/common/AbsSettingsValueProxy$Companion;->getGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final isOpen()Z
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getMState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public onChange(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/AbstractObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    :cond_a
    const-string v1, "getContext() ?: Launcher…plication.getAppContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/common/observer/LowPowerObserver;->initState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->setMState(I)V

    invoke-super {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->onChange(Z)V

    return-void
.end method
