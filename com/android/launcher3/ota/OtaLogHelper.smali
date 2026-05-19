.class public final Lcom/android/launcher3/ota/OtaLogHelper;
.super Lcom/android/common/debug/FileLogHelper;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;
.implements Lcom/android/common/debug/LogUtils$LogStateChangedListener;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/ota/OtaLogHelper;

.field private static final LOG_TIMEOUT_FOR_LAUNCHER_RESUME:J = 0x493e0L

.field private static final LOG_TIMEOUT_FOR_LOG_KIT_OPEN:J = 0x0L

.field private static final LOG_TIMEOUT_FOR_OTA_REBOOT:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "OtaLogHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/ota/OtaLogHelper;

    invoke-direct {v0}, Lcom/android/launcher3/ota/OtaLogHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/ota/OtaLogHelper;->INSTANCE:Lcom/android/launcher3/ota/OtaLogHelper;

    invoke-static {v0}, Lcom/android/common/debug/LogUtils;->registerLogStateChangedListener(Lcom/android/common/debug/LogUtils$LogStateChangedListener;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    new-instance v7, Lcom/android/common/debug/FileLogHelper$FileLogInfo;

    const/4 v1, 0x2

    const-string v2, "OTA"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/common/debug/FileLogHelper$FileLogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v7}, Lcom/android/common/debug/FileLogHelper;-><init>(Lcom/android/common/debug/FileLogHelper$FileLogInfo;)V

    return-void
.end method

.method public static final onOtaReboot()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/ota/OtaLogHelper;->INSTANCE:Lcom/android/launcher3/ota/OtaLogHelper;

    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Lcom/android/common/debug/FileLogHelper;->startPersistentLog(J)V

    const-string v0, "OtaLogHelper"

    const-string/jumbo v1, "onOtaReboot"

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLogStateChanged(Z)V
    .registers 4

    if-eqz p1, :cond_f

    const-string p1, "OtaLogHelper"

    const-string/jumbo v0, "onLogKitOpen"

    invoke-static {p1, v0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/common/debug/FileLogHelper;->stopPersistentLog(J)V

    :cond_f
    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x493e0

    invoke-virtual {p0, v0, v1}, Lcom/android/common/debug/FileLogHelper;->stopPersistentLog(J)V

    return-void
.end method
