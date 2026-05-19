.class public Lm1/e$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm1/e;


# direct methods
.method public constructor <init>(Lm1/e;)V
    .registers 2

    iput-object p1, p0, Lm1/e$a;->a:Lm1/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lm1/e$a;->a:Lm1/e;

    iget-boolean v0, p2, Lm1/e;->c:Z

    invoke-virtual {p2, p1}, Lm1/e;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p2, Lm1/e;->c:Z

    iget-object p1, p0, Lm1/e$a;->a:Lm1/e;

    iget-boolean p1, p1, Lm1/e;->c:Z

    if-eq v0, p1, :cond_74

    const-string p1, "ConnectivityMonitor"

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "ConnectivityMonitor"

    const-string p2, "connectivity changed, isConnected: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lm1/e$a;->a:Lm1/e;

    iget-boolean v0, v0, Lm1/e;->c:Z

    invoke-static {p2, v0, p1}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_28
    iget-object p0, p0, Lm1/e$a;->a:Lm1/e;

    iget-object p1, p0, Lm1/e;->b:Lm1/c$a;

    iget-boolean p0, p0, Lm1/e;->c:Z

    check-cast p1, Lcom/bumptech/glide/h$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_74

    iget-object p0, p1, Lcom/bumptech/glide/h$b;->b:Lcom/bumptech/glide/h;

    monitor-enter p0

    :try_start_38
    iget-object p1, p1, Lcom/bumptech/glide/h$b;->a:Lm1/m;

    iget-object p2, p1, Lm1/m;->a:Ljava/util/Set;

    invoke-static {p2}, Lt1/f;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_46
    :goto_46
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp1/d;

    invoke-interface {v0}, Lp1/d;->e()Z

    move-result v1

    if-nez v1, :cond_46

    invoke-interface {v0}, Lp1/d;->d()Z

    move-result v1

    if-nez v1, :cond_46

    invoke-interface {v0}, Lp1/d;->clear()V

    iget-boolean v1, p1, Lm1/m;->c:Z

    if-nez v1, :cond_69

    invoke-interface {v0}, Lp1/d;->j()V

    goto :goto_46

    :cond_69
    iget-object v1, p1, Lm1/m;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_6f
    monitor-exit p0

    goto :goto_74

    :catchall_71
    move-exception p1

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_38 .. :try_end_73} :catchall_71

    throw p1

    :cond_74
    :goto_74
    return-void
.end method
