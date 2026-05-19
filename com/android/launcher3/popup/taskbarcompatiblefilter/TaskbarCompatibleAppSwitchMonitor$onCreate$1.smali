.class final Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V
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
    c = "com.android.launcher3.popup.taskbarcompatiblefilter.TaskbarCompatibleAppSwitchMonitor$onCreate$1"
    f = "TaskbarCompatibleAppSwitchMonitor.kt"
    l = {
        0xbf
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;->this$0:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

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

    new-instance v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;->this$0:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;-><init>(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;Ll4/d;)V

    iput-object p1, v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_39

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;->L$0:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lm7/j0;

    sget-object v4, Lm7/y0;->d:Lm7/f0;

    new-instance v6, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1$job$1;

    iget-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;->this$0:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;

    const/4 v1, 0x0

    invoke-direct {v6, p1, v1}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1$job$1;-><init>(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;Ll4/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lm7/h;->a(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/p0;

    move-result-object p1

    iput v2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;->label:I

    check-cast p1, Lm7/q0;

    invoke-virtual {p1, p0}, Lm7/q0;->d(Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_39

    return-object v0

    :cond_39
    :goto_39
    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor$onCreate$1;->this$0:Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;

    invoke-static {p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;->access$registerAppSwitchObserver(Lcom/android/launcher3/popup/taskbarcompatiblefilter/TaskbarCompatibleAppSwitchMonitor;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
