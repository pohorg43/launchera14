.class public final Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;-><init>(Lcom/android/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;


# direct methods
.method public constructor <init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .registers 9

    const-string v0, "appEnterInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    invoke-static {v0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->access$getMLauncherScope$p(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_1f

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    new-instance v4, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;-><init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;Lcom/oplus/app/OplusAppEnterInfo;Ll4/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    :cond_1f
    return-void
.end method

.method public onActivityExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .registers 9

    const-string v0, "appExitInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityExit(), info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherAppSwitchMoitor"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    invoke-static {v0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->access$getMLauncherScope$p(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_3b

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    new-instance v4, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityExit$1;

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityExit$1;-><init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;Lcom/oplus/app/OplusAppExitInfo;Ll4/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    :cond_3b
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
