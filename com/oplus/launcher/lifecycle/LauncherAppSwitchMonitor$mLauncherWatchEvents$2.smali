.class final Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mLauncherWatchEvents$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;-><init>(Lcom/android/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;


# direct methods
.method public constructor <init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mLauncherWatchEvents$2;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mLauncherWatchEvents$2;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;

    new-instance v2, Lcom/oplus/launcher/lifecycle/LauncherLocateCloseEvent;

    iget-object v3, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mLauncherWatchEvents$2;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    invoke-direct {v2, v3}, Lcom/oplus/launcher/lifecycle/LauncherLocateCloseEvent;-><init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Li4/o;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;

    new-instance v4, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;

    iget-object v5, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mLauncherWatchEvents$2;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    invoke-direct {v4, v5}, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;-><init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)V

    aput-object v4, v2, v3

    new-instance v3, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;

    iget-object v4, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mLauncherWatchEvents$2;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    invoke-direct {v3, v4}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;-><init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)V

    aput-object v3, v2, v0

    const/4 v0, 0x2

    new-instance v3, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mLauncherWatchEvents$2;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    invoke-direct {v3, p0}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;-><init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)V

    aput-object v3, v2, v0

    invoke-static {v2}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3d
    return-object v1
.end method
