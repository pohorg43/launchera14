.class public abstract Lcom/android/quickstep/util/UxCancellableTask;
.super Lcom/android/quickstep/util/CancellableTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/quickstep/util/CancellableTask<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private eventID:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/quickstep/util/CancellableTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/UxCancellableTask;->eventID:I

    iput p1, p0, Lcom/android/quickstep/util/UxCancellableTask;->eventID:I

    return-void
.end method


# virtual methods
.method public setUxDisable()V
    .registers 5

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    iget p0, p0, Lcom/android/quickstep/util/UxCancellableTask;->eventID:I

    invoke-virtual {v0, p0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->releaseCpuResources(I)V

    return-void
.end method

.method public setUxEnable()V
    .registers 5

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    iget p0, p0, Lcom/android/quickstep/util/UxCancellableTask;->eventID:I

    invoke-virtual {v0, p0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->requestCpuResources(I)V

    return-void
.end method
