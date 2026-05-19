.class final Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1;->onActivityEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherAppSwitchMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherAppSwitchMonitor.kt\ncom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,156:1\n1855#2:157\n1856#2:159\n1#3:158\n*S KotlinDebug\n*F\n+ 1 LauncherAppSwitchMonitor.kt\ncom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1\n*L\n59#1:157\n59#1:159\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.oplus.launcher.lifecycle.LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1"
    f = "LauncherAppSwitchMonitor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $appEnterInfo:Lcom/oplus/app/OplusAppEnterInfo;

.field public label:I

.field public final synthetic this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;


# direct methods
.method public constructor <init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;Lcom/oplus/app/OplusAppEnterInfo;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;",
            "Lcom/oplus/app/OplusAppEnterInfo;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    iput-object p2, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;->$appEnterInfo:Lcom/oplus/app/OplusAppEnterInfo;

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

    new-instance p1, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;->$appEnterInfo:Lcom/oplus/app/OplusAppEnterInfo;

    invoke-direct {p1, v0, p0, p2}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;-><init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;Lcom/oplus/app/OplusAppEnterInfo;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;->label:I

    if-nez v0, :cond_43

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    invoke-static {p1}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->access$getMLauncherWatchEvents(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;->$appEnterInfo:Lcom/oplus/app/OplusAppEnterInfo;

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1$onActivityEnter$1;->this$0:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;

    iget-object v2, v0, Lcom/oplus/app/OplusAppEnterInfo;->targetName:Ljava/lang/String;

    const-string v3, "appEnterInfo.targetName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->hasConfig(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {p0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->access$getMLauncher$p(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)Lcom/android/launcher/Launcher;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-static {p0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->access$getMLauncher$p(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)Lcom/android/launcher/Launcher;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v1, v0}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->onActivityEnter(Lcom/oplus/app/OplusAppEnterInfo;)V

    goto :goto_17

    :cond_40
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_43
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
