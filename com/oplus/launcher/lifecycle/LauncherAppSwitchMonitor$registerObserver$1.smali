.class final Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->registerObserver(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.oplus.launcher.lifecycle.LauncherAppSwitchMonitor$registerObserver$1"
    f = "LauncherAppSwitchMonitor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $activityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public label:I

.field public final synthetic this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;->$activityList:Ljava/util/List;

    iput-object p2, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;->$activityList:Ljava/util/List;

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    invoke-direct {p1, v0, p0, p2}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;-><init>(Ljava/util/List;Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;->label:I

    if-nez v0, :cond_3f

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_23

    const-string p1, "onLauncherCreate(), register, activityList="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;->$activityList:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherAppSwitchMoitor"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    invoke-static {}, Lcom/oplus/app/OplusAppSwitchManager;->getInstance()Lcom/oplus/app/OplusAppSwitchManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    invoke-static {v0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->access$getMAppContext$p(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    invoke-static {v1}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->access$getMAppSwitchObserver$p(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    invoke-static {p0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->access$getMAppSwitchConfig$p(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)Lcom/oplus/app/OplusAppSwitchConfig;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/oplus/app/OplusAppSwitchManager;->registerAppSwitchObserver(Landroid/content/Context;Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
