.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatorHelper"
.end annotation


# instance fields
.field public volatile a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Ljava/lang/Runnable;

.field public c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;

.field public final synthetic f:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$1;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->b:Ljava/lang/Runnable;

    new-instance p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$2;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$2;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->c:Ljava/lang/Runnable;

    new-instance p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$3;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$3;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->d:Ljava/lang/Runnable;

    new-instance p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$4;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$4;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_12

    const-string p0, "COUISearchViewAnimate"

    const-string v0, "runStateChangeAnimation: same state , return. targetState = "

    invoke-static {v0, p1, p0}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_12
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_36

    monitor-enter p0

    :try_start_17
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_21

    monitor-exit p0

    goto :goto_4f

    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_33

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-boolean v0, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->r0:Z

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->j0:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4f

    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1

    :cond_36
    if-nez p1, :cond_4f

    monitor-enter p0

    :try_start_39
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_43

    monitor-exit p0

    goto :goto_4f

    :cond_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_4c

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n0:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4f

    :catchall_4c
    move-exception p1

    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p1

    :cond_4f
    :goto_4f
    return-void
.end method
