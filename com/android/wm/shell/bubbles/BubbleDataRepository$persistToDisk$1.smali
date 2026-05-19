.class final Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistToDisk()V
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
    c = "com.android.wm.shell.bubbles.BubbleDataRepository$persistToDisk$1"
    f = "BubbleDataRepository.kt"
    l = {
        0x88,
        0x8a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $prev:Lm7/s1;

.field public label:I

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;


# direct methods
.method public constructor <init>(Lm7/s1;Lcom/android/wm/shell/bubbles/BubbleDataRepository;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/s1;",
            "Lcom/android/wm/shell/bubbles/BubbleDataRepository;",
            "Ll4/d<",
            "-",
            "Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->$prev:Lm7/s1;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

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

    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->$prev:Lm7/s1;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;-><init>(Lm7/s1;Lcom/android/wm/shell/bubbles/BubbleDataRepository;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v4, :cond_1a

    if-ne v1, v3, :cond_12

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_e0

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_36

    :cond_1e
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->$prev:Lm7/s1;

    if-eqz p1, :cond_36

    iput v4, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->label:I

    invoke-static {p1, v2, v4, v2}, Lm7/s1$a;->a(Lm7/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-interface {p1, p0}, Lm7/s1;->w(Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_31

    goto :goto_33

    :cond_31
    sget-object p1, Lh4/z;->a:Lh4/z;

    :goto_33
    if-ne p1, v0, :cond_36

    return-object v0

    :cond_36
    :goto_36
    iput v3, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->label:I

    invoke-interface {p0}, Ll4/d;->getContext()Ll4/f;

    move-result-object p1

    invoke-static {p1}, Li5/j;->e(Ll4/f;)V

    invoke-static {p0}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v1

    instance-of v3, v1, Lr7/j;

    if-eqz v3, :cond_4a

    check-cast v1, Lr7/j;

    goto :goto_4b

    :cond_4a
    move-object v1, v2

    :goto_4b
    if-nez v1, :cond_51

    sget-object p1, Lh4/z;->a:Lh4/z;

    goto/16 :goto_cf

    :cond_51
    iget-object v3, v1, Lr7/j;->d:Lm7/f0;

    invoke-virtual {v3, p1}, Lm7/f0;->isDispatchNeeded(Ll4/f;)Z

    move-result v3

    if-eqz v3, :cond_66

    sget-object v2, Lh4/z;->a:Lh4/z;

    iput-object v2, v1, Lr7/j;->f:Ljava/lang/Object;

    iput v4, v1, Lm7/v0;->c:I

    iget-object v2, v1, Lr7/j;->d:Lm7/f0;

    invoke-virtual {v2, p1, v1}, Lm7/f0;->dispatchYield(Ll4/f;Ljava/lang/Runnable;)V

    goto/16 :goto_ce

    :cond_66
    new-instance v3, Lm7/w2;

    invoke-direct {v3}, Lm7/w2;-><init>()V

    invoke-interface {p1, v3}, Ll4/f;->plus(Ll4/f;)Ll4/f;

    move-result-object p1

    sget-object v5, Lh4/z;->a:Lh4/z;

    iput-object v5, v1, Lr7/j;->f:Ljava/lang/Object;

    iput v4, v1, Lm7/v0;->c:I

    iget-object v6, v1, Lr7/j;->d:Lm7/f0;

    invoke-virtual {v6, p1, v1}, Lm7/f0;->dispatchYield(Ll4/f;Ljava/lang/Runnable;)V

    iget-boolean p1, v3, Lm7/w2;->a:Z

    if-eqz p1, :cond_ce

    sget-object p1, Lm7/m2;->a:Lm7/m2;

    invoke-static {}, Lm7/m2;->a()Lm7/e1;

    move-result-object p1

    iget-object v3, p1, Lm7/e1;->c:Li4/h;

    if-eqz v3, :cond_8d

    invoke-virtual {v3}, Li4/h;->isEmpty()Z

    move-result v3

    goto :goto_8e

    :cond_8d
    move v3, v4

    :goto_8e
    const/4 v6, 0x0

    if-eqz v3, :cond_92

    goto :goto_c1

    :cond_92
    invoke-virtual {p1}, Lm7/e1;->x()Z

    move-result v3

    if-eqz v3, :cond_ab

    iput-object v5, v1, Lr7/j;->f:Ljava/lang/Object;

    iput v4, v1, Lm7/v0;->c:I

    iget-object v2, p1, Lm7/e1;->c:Li4/h;

    if-nez v2, :cond_a7

    new-instance v2, Li4/h;

    invoke-direct {v2}, Li4/h;-><init>()V

    iput-object v2, p1, Lm7/e1;->c:Li4/h;

    :cond_a7
    invoke-virtual {v2, v1}, Li4/h;->h(Ljava/lang/Object;)V

    goto :goto_c0

    :cond_ab
    invoke-virtual {p1, v4}, Lm7/e1;->v(Z)V

    :try_start_ae
    invoke-virtual {v1}, Lm7/v0;->run()V

    :cond_b1
    invoke-virtual {p1}, Lm7/e1;->A()Z

    move-result v3
    :try_end_b5
    .catchall {:try_start_ae .. :try_end_b5} :catchall_b8

    if-nez v3, :cond_b1

    goto :goto_bc

    :catchall_b8
    move-exception v3

    :try_start_b9
    invoke-virtual {v1, v3, v2}, Lm7/v0;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_c9

    :goto_bc
    invoke-virtual {p1, v4}, Lm7/e1;->q(Z)V

    move v4, v6

    :goto_c0
    move v6, v4

    :goto_c1
    if-eqz v6, :cond_c6

    sget-object p1, Lm4/a;->a:Lm4/a;

    goto :goto_cf

    :cond_c6
    sget-object p1, Lh4/z;->a:Lh4/z;

    goto :goto_cf

    :catchall_c9
    move-exception p0

    invoke-virtual {p1, v4}, Lm7/e1;->q(Z)V

    throw p0

    :cond_ce
    :goto_ce
    move-object p1, v0

    :goto_cf
    sget-object v1, Lm4/a;->a:Lm4/a;

    if-ne p1, v1, :cond_d8

    const-string v2, "frame"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d8
    if-ne p1, v1, :cond_db

    goto :goto_dd

    :cond_db
    sget-object p1, Lh4/z;->a:Lh4/z;

    :goto_dd
    if-ne p1, v0, :cond_e0

    return-object v0

    :cond_e0
    :goto_e0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->access$getPersistentRepository$p(Lcom/android/wm/shell/bubbles/BubbleDataRepository;)Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$persistToDisk$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->access$getVolatileRepository$p(Lcom/android/wm/shell/bubbles/BubbleDataRepository;)Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->getBubbles()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;->persistsToDisk(Landroid/util/SparseArray;)Z

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
