.class public final Lcom/android/common/util/LauncherBooster$GpuBoost;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/LauncherBooster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GpuBoost"
.end annotation


# instance fields
.field private final mOsenseClient:Lcom/oplus/osense/OsenseResClient;

.field private startAppPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/common/util/LauncherBooster$GpuBoost;

    invoke-static {v0}, Lcom/oplus/osense/OsenseResClient;->get(Ljava/lang/Class;)Lcom/oplus/osense/OsenseResClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/util/LauncherBooster$GpuBoost;->mOsenseClient:Lcom/oplus/osense/OsenseResClient;

    return-void
.end method

.method public static synthetic openWithType$default(Lcom/android/common/util/LauncherBooster$GpuBoost;Ljava/lang/String;IILjava/lang/Object;)J
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const/16 p2, 0x3e8

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/common/util/LauncherBooster$GpuBoost;->openWithType(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final closeAction(J)V
    .registers 5

    const-string v0, "LauncherBooster"

    const-string v1, "ORMS closed."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$GpuBoost;->mOsenseClient:Lcom/oplus/osense/OsenseResClient;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/osense/OsenseResClient;->osenseClrSceneAction(J)V

    return-void
.end method

.method public final getStartAppPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$GpuBoost;->startAppPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final notifyORMSAnimationEditModeOpenOrClose(I)V
    .registers 4

    const-string v0, "LauncherBooster"

    const-string/jumbo v1, "notifyORMSAnimationEditModeOpenOrClose"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OSENSE_ACTION_LAUNCHER_ICON_EDIT"

    invoke-virtual {p0, v0, p1}, Lcom/android/common/util/LauncherBooster$GpuBoost;->openAction(Ljava/lang/String;I)J

    return-void
.end method

.method public final openAction(Ljava/lang/String;I)J
    .registers 5

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$GpuBoost;->mOsenseClient:Lcom/oplus/osense/OsenseResClient;

    new-instance v0, Lcom/oplus/osense/info/OsenseSaRequest;

    const-string v1, ""

    invoke-direct {v0, v1, p1, p2}, Lcom/oplus/osense/info/OsenseSaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/oplus/osense/OsenseResClient;->osenseSetSceneAction(Lcom/oplus/osense/info/OsenseSaRequest;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final openNotification(Lcom/oplus/osense/info/OsenseNotifyRequest;)V
    .registers 3

    const-string/jumbo v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$GpuBoost;->mOsenseClient:Lcom/oplus/osense/OsenseResClient;

    invoke-virtual {p0, p1}, Lcom/oplus/osense/OsenseResClient;->osenseSetNotification(Lcom/oplus/osense/info/OsenseNotifyRequest;)V

    return-void
.end method

.method public final openWithType(Ljava/lang/String;I)J
    .registers 7

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OSENSE_ACTION_GESTURE_ANIMATION"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p2, 0x4e20

    :cond_10
    const-string v0, "OSENSE_ACTION_LAUNCHER_OPEN_APP_ANIMATION"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/common/util/LauncherBooster$GpuBoost;->startAppPackage:Ljava/lang/String;

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const-string v0, ""

    :goto_1f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/common/util/LauncherBooster$GpuBoost;->startAppPackage:Ljava/lang/String;

    const-string v1, "Gpu, openWithType(), scene="

    const-string v2, ", type="

    const-string v3, ", timeout="

    invoke-static {v1, v0, v2, p1, v3}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LauncherBooster"

    invoke-static {v1, p2, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$GpuBoost;->mOsenseClient:Lcom/oplus/osense/OsenseResClient;

    new-instance v1, Lcom/oplus/osense/info/OsenseSaRequest;

    invoke-direct {v1, v0, p1, p2}, Lcom/oplus/osense/info/OsenseSaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/oplus/osense/OsenseResClient;->osenseSetSceneAction(Lcom/oplus/osense/info/OsenseSaRequest;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final setStartAppPackage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/common/util/LauncherBooster$GpuBoost;->startAppPackage:Ljava/lang/String;

    return-void
.end method
