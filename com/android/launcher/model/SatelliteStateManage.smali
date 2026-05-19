.class public final Lcom/android/launcher/model/SatelliteStateManage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;,
        Lcom/android/launcher/model/SatelliteStateManage$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/model/SatelliteStateManage$Companion;

.field private static final TAG:Ljava/lang/String; = "SatelliteStateManage"

.field private static sInstance:Lcom/android/launcher/model/SatelliteStateManage;


# instance fields
.field private mCallback:Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;

.field private mConnector:Lcom/oplus/evolution/EvolutionConnector;

.field private mContext:Landroid/content/Context;

.field private mIsSatelliteModeState:Z

.field private mIsSatelliteRadioState:Z

.field private mIsSatelliteServiceState:Z

.field private mProxy:Lcom/oplus/evolution/SatelliteProxy;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/model/SatelliteStateManage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/model/SatelliteStateManage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/model/SatelliteStateManage;->Companion:Lcom/android/launcher/model/SatelliteStateManage$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/model/SatelliteStateManage;Landroid/content/Context;Lcom/oplus/evolution/SatelliteProxy;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/model/SatelliteStateManage;->initSatelliteProxy$lambda$0(Lcom/android/launcher/model/SatelliteStateManage;Landroid/content/Context;Lcom/oplus/evolution/SatelliteProxy;)V

    return-void
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/android/launcher/model/SatelliteStateManage;
    .registers 1

    sget-object v0, Lcom/android/launcher/model/SatelliteStateManage;->sInstance:Lcom/android/launcher/model/SatelliteStateManage;

    return-object v0
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/android/launcher/model/SatelliteStateManage;)V
    .registers 1

    sput-object p0, Lcom/android/launcher/model/SatelliteStateManage;->sInstance:Lcom/android/launcher/model/SatelliteStateManage;

    return-void
.end method

.method public static final getInstance()Lcom/android/launcher/model/SatelliteStateManage;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/model/SatelliteStateManage;->Companion:Lcom/android/launcher/model/SatelliteStateManage$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/model/SatelliteStateManage$Companion;->getInstance()Lcom/android/launcher/model/SatelliteStateManage;

    move-result-object v0

    return-object v0
.end method

.method private static final initSatelliteProxy$lambda$0(Lcom/android/launcher/model/SatelliteStateManage;Landroid/content/Context;Lcom/oplus/evolution/SatelliteProxy;)V
    .registers 5

    const-string v0, "SatelliteStateManage"

    const-string/jumbo v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_d
    iput-object p2, p0, Lcom/android/launcher/model/SatelliteStateManage;->mProxy:Lcom/oplus/evolution/SatelliteProxy;

    const-string p2, " initSatelliteProxy register callback to evolution framework"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher/model/SatelliteStateManage;->mProxy:Lcom/oplus/evolution/SatelliteProxy;

    if-eqz p2, :cond_37

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/model/SatelliteStateManage;->mCallback:Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;

    invoke-virtual {p2, p1, p0}, Lcom/oplus/evolution/SatelliteProxy;->registerStatelliteCallback(Ljava/util/concurrent/Executor;Lcom/oplus/evolution/SatelliteCallback;)Z
    :try_end_21
    .catch Lcom/oplus/evolution/EvolutionException; {:try_start_d .. :try_end_21} :catch_22

    goto :goto_37

    :catch_22
    move-exception p0

    const-string p1, " register evolution callback failed code = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/evolution/EvolutionException;->getCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    :goto_37
    return-void
.end method


# virtual methods
.method public final getMCallback()Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/model/SatelliteStateManage;->mCallback:Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;

    return-object p0
.end method

.method public final getMConnector()Lcom/oplus/evolution/EvolutionConnector;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/model/SatelliteStateManage;->mConnector:Lcom/oplus/evolution/EvolutionConnector;

    return-object p0
.end method

.method public final getMContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/model/SatelliteStateManage;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getMIsSatelliteModeState()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/model/SatelliteStateManage;->mIsSatelliteModeState:Z

    return p0
.end method

.method public final getMIsSatelliteRadioState()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/model/SatelliteStateManage;->mIsSatelliteRadioState:Z

    return p0
.end method

.method public final getMIsSatelliteServiceState()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/model/SatelliteStateManage;->mIsSatelliteServiceState:Z

    return p0
.end method

.method public final getMProxy()Lcom/oplus/evolution/SatelliteProxy;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/model/SatelliteStateManage;->mProxy:Lcom/oplus/evolution/SatelliteProxy;

    return-object p0
.end method

.method public final initSatelliteProxy(Landroid/content/Context;)V
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    const-string v0, "SatelliteStateManage"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/model/SatelliteStateManage;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;

    invoke-direct {v1, p0}, Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;-><init>(Lcom/android/launcher/model/SatelliteStateManage;)V

    iput-object v1, p0, Lcom/android/launcher/model/SatelliteStateManage;->mCallback:Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;

    :try_start_14
    const-string v1, " initSatelliteProxy evolution framework"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/oplus/evolution/EvolutionConnector;

    invoke-direct {v1, p1}, Lcom/oplus/evolution/EvolutionConnector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher/model/SatelliteStateManage;->mConnector:Lcom/oplus/evolution/EvolutionConnector;

    new-instance v2, Lcom/android/launcher/model/a;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher/model/a;-><init>(Lcom/android/launcher/model/SatelliteStateManage;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/oplus/evolution/EvolutionConnector;->connect(Lcom/oplus/evolution/EvolutionConnector$ISatelliteConnectCallback;)V
    :try_end_28
    .catch Lcom/oplus/evolution/EvolutionException; {:try_start_14 .. :try_end_28} :catch_29

    goto :goto_3e

    :catch_29
    move-exception p0

    const-string p1, " connect to evolution framework exception code = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/evolution/EvolutionException;->getCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    return-void
.end method

.method public final isDisplaySatelliteBadge()Z
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, " isDisplaySatelliteBadge =  mIsSatelliteModeState = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/model/SatelliteStateManage;->mIsSatelliteModeState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   mIsSatelliteRadioState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/model/SatelliteStateManage;->mIsSatelliteRadioState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mIsSatelliteServiceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/model/SatelliteStateManage;->mIsSatelliteServiceState:Z

    const-string v2, "SatelliteStateManage"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_27
    iget-boolean v0, p0, Lcom/android/launcher/model/SatelliteStateManage;->mIsSatelliteModeState:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/launcher/model/SatelliteStateManage;->mIsSatelliteRadioState:Z

    if-eqz v0, :cond_35

    iget-boolean p0, p0, Lcom/android/launcher/model/SatelliteStateManage;->mIsSatelliteServiceState:Z

    if-eqz p0, :cond_35

    const/4 p0, 0x1

    goto :goto_36

    :cond_35
    const/4 p0, 0x0

    :goto_36
    return p0
.end method

.method public final setMCallback(Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/model/SatelliteStateManage;->mCallback:Lcom/android/launcher/model/SatelliteStateManage$SatelliteStateCallback;

    return-void
.end method

.method public final setMConnector(Lcom/oplus/evolution/EvolutionConnector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/model/SatelliteStateManage;->mConnector:Lcom/oplus/evolution/EvolutionConnector;

    return-void
.end method

.method public final setMContext(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/model/SatelliteStateManage;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final setMIsSatelliteModeState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/model/SatelliteStateManage;->mIsSatelliteModeState:Z

    return-void
.end method

.method public final setMIsSatelliteRadioState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/model/SatelliteStateManage;->mIsSatelliteRadioState:Z

    return-void
.end method

.method public final setMIsSatelliteServiceState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/model/SatelliteStateManage;->mIsSatelliteServiceState:Z

    return-void
.end method

.method public final setMProxy(Lcom/oplus/evolution/SatelliteProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/model/SatelliteStateManage;->mProxy:Lcom/oplus/evolution/SatelliteProxy;

    return-void
.end method

.method public final unregisterSatelliteCallback()V
    .registers 2

    :try_start_0
    iget-object p0, p0, Lcom/android/launcher/model/SatelliteStateManage;->mProxy:Lcom/oplus/evolution/SatelliteProxy;

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lcom/oplus/evolution/SatelliteProxy;->unregisterSatelliteCallback()Z
    :try_end_7
    .catch Lcom/oplus/evolution/EvolutionException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_1f

    :catch_8
    move-exception p0

    const-string v0, " unregisterSatelliteCallback ex = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/evolution/EvolutionException;->getCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SatelliteStateManage"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final updateSatelliteBadge()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/model/SatelliteStateManage;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string p0, "SatelliteStateManage"

    const-string v0, " updateSatelliteBadge context is empty"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/model/UpdateSatelliteBadgeTask;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher/model/SatelliteStateManage;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/launcher/model/UpdateSatelliteBadgeTask;-><init>(Landroid/os/UserHandle;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method
