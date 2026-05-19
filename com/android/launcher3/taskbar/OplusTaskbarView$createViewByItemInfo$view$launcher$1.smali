.class final Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarView;->createViewByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;IZ)Landroid/view/View;
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
        "Lcom/android/launcher/Launcher;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskbarView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskbarView.kt\ncom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1339:1\n314#2,11:1340\n*S KotlinDebug\n*F\n+ 1 OplusTaskbarView.kt\ncom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1\n*L\n446#1:1340,11\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher3.taskbar.OplusTaskbarView$createViewByItemInfo$view$launcher$1"
    f = "OplusTaskbarView.kt"
    l = {
        0x53c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusTaskbarView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarView;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/taskbar/OplusTaskbarView;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 3
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

    new-instance p1, Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;-><init>(Lcom/android/launcher3/taskbar/OplusTaskbarView;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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
            "Lcom/android/launcher/Launcher;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_4d

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->addObserverForObtainLauncher(Lcom/android/launcher3/taskbar/TaskbarUtils$ILauncherAvailableObserver;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarView;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/launcher3/taskbar/OplusTaskbarView$createViewByItemInfo$view$launcher$1;->label:I

    new-instance v1, Lm7/n;

    invoke-static {p0}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lm7/n;-><init>(Ll4/d;I)V

    invoke-virtual {v1}, Lm7/n;->w()V

    const-string v2, "Taskbar"

    const-string v3, "OplusTaskbarView"

    const-string v4, "create folder is suspend for launcher is null"

    invoke-static {v2, v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/android/launcher3/taskbar/OplusTaskbarView;->access$setDeferTask$p(Lcom/android/launcher3/taskbar/OplusTaskbarView;Lm7/l;)V

    invoke-virtual {v1}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4a

    const-string v1, "frame"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4a
    if-ne p1, v0, :cond_4d

    return-object v0

    :cond_4d
    :goto_4d
    return-object p1
.end method
