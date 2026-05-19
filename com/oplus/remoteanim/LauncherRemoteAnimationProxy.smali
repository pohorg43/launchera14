.class public final Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherRemoteAnimationProxy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherRemoteAnimationProxy.kt\ncom/oplus/remoteanim/LauncherRemoteAnimationProxy\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,108:1\n1#2:109\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;

.field private static final TAG:Ljava/lang/String; = "LauncherRemoteAnimationProxy"

.field private static launcherRemoteProxy:Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;

.field private static final launcherRemoteProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private static mainHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;

    invoke-direct {v0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;-><init>()V

    sput-object v0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;

    sget-object v0, Lcom/oplus/remoteanim/a;->a:Lcom/oplus/remoteanim/a;

    sput-object v0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxyDeathRecipient$lambda$0()V

    return-void
.end method

.method private final checkIfProxyNull()V
    .registers 2

    sget-object p0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxy:Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;

    if-eqz p0, :cond_5

    return-void

    :cond_5
    const-string p0, "LauncherRemoteAnimationProxy"

    const-string v0, "checkIfProxyNull: launcherRemoteProxy is NULL."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final clearRemoteAnimationViewInfo(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->checkIfProxyNull()V

    sget-object p0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxy:Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;

    const-string v0, "LauncherRemoteAnimationProxy"

    if-eqz p0, :cond_21

    :try_start_9
    invoke-interface {p0, p1}, Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;->clearRemoteAnimationViewInfo(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_14

    :catchall_f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_14
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1b

    goto :goto_26

    :cond_1b
    const-string p0, "Failed call clearRemoteAnimationViewInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_21
    const-string p0, "clearRemoteAnimationViewInfo: maybe launcherRemoteProxy is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void
.end method

.method private static final launcherRemoteProxyDeathRecipient$lambda$0()V
    .registers 3

    const-string v0, "LauncherRemoteAnimationProxy"

    const-string v1, "launcherRemoteProxy maybe died, so we should clear proxy now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    sget-object v1, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->INSTANCE:Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;

    new-instance v2, Lcom/android/wm/shell/common/c;

    invoke-direct {v2, v1}, Lcom/android/wm/shell/common/c;-><init>(Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method private final linkToDeath()V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->checkIfProxyNull()V

    sget-object p0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxy:Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;

    const-string v0, "LauncherRemoteAnimationProxy"

    if-eqz p0, :cond_28

    :try_start_9
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    sget-object v1, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1b
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_22

    goto :goto_2d

    :cond_22
    const-string p0, "Failed to link remote animation proxy death recipient"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :cond_28
    const-string p0, "linkToDeath: maybe launcherRemoteProxy is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method

.method private final notifyTransaction(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->checkIfProxyNull()V

    sget-object p0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxy:Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;

    const-string v0, "LauncherRemoteAnimationProxy"

    if-eqz p0, :cond_21

    :try_start_9
    invoke-interface {p0, p1}, Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;->notifyTransaction(Landroid/os/Bundle;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_14

    :catchall_f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_14
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1b

    goto :goto_26

    :cond_1b
    const-string p0, "Failed call clearRemoteAnimationViewInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_21
    const-string p0, "clearRemoteAnimationViewInfo: maybe launcherRemoteProxy is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void
.end method

.method private final sendRemoteAnimationViewInfo(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;)V
    .registers 5

    invoke-direct {p0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->checkIfProxyNull()V

    sget-object p0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxy:Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;

    const-string v0, "LauncherRemoteAnimationProxy"

    if-eqz p0, :cond_35

    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRemoteAnimationViewInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;->sendRemoteAnimationViewInfo(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_23

    goto :goto_28

    :catchall_23
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_28
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2f

    goto :goto_3a

    :cond_2f
    const-string p0, "Failed call sendRemoteAnimationViewInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :cond_35
    const-string p0, "sendRemoteAnimationViewInfo: maybe launcherRemoteProxy is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method

.method private final unlinkToDeath()V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->checkIfProxyNull()V

    sget-object p0, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxy:Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;

    const-string v0, "LauncherRemoteAnimationProxy"

    if-eqz p0, :cond_2b

    :try_start_9
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    sget-object v1, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxyDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_25

    goto :goto_30

    :cond_25
    const-string p0, "Failed to unlink remote animation proxy death recipient"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_2b
    const-string p0, "unlinkToDeath: maybe launcherRemoteProxy is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method


# virtual methods
.method public final clearProxy()V
    .registers 3

    const-string v0, "LauncherRemoteAnimationProxy"

    const-string v1, "clearProxy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->setProxy(Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;)V

    return-void
.end method

.method public final setProxy(Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProxy: proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherRemoteAnimationProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->unlinkToDeath()V

    sput-object p1, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->launcherRemoteProxy:Lcom/oplus/remoteanim/proxyinterface/ILauncherRemoteProxy;

    invoke-direct {p0}, Lcom/oplus/remoteanim/LauncherRemoteAnimationProxy;->linkToDeath()V

    return-void
.end method
