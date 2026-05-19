.class public abstract Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final launcherAppSwitchMonitor:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;


# direct methods
.method public constructor <init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)V
    .registers 3

    const-string v0, "launcherAppSwitchMonitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->launcherAppSwitchMonitor:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    return-void
.end method


# virtual methods
.method public abstract getConfigList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfigType()I
.end method

.method public final getLauncherAppSwitchMonitor()Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;
    .registers 1

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->launcherAppSwitchMonitor:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    return-object p0
.end method

.method public final hasConfig(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "targetName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->getConfigList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->getConfigList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1
.end method

.method public onActivityEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .registers 2

    const-string p0, "appEnterInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityExit(Lcom/android/launcher/Launcher;Lcom/oplus/app/OplusAppExitInfo;)V
    .registers 3

    const-string p0, "launcher"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appExitInfo"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAppEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .registers 2

    const-string p0, "appEnterInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAppExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .registers 2

    const-string p0, "appExitInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onLauncherCreate(Lcom/android/launcher/Launcher;)V
    .registers 2

    return-void
.end method

.method public onLauncherDestroy(Lcom/android/launcher/Launcher;)V
    .registers 2

    return-void
.end method

.method public onLauncherPause()V
    .registers 1

    return-void
.end method

.method public onLauncherResume()V
    .registers 1

    return-void
.end method

.method public onLauncherStart()V
    .registers 1

    return-void
.end method

.method public onLauncherStop()V
    .registers 1

    return-void
.end method
