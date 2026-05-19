.class public final Le8/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le8/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le8/w$b;
    }
.end annotation


# instance fields
.field public final a:Le8/u;

.field public final b:Li8/i;

.field public final c:Lokio/AsyncTimeout;

.field public d:Le8/n;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final e:Le8/x;

.field public final f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Le8/u;Le8/x;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le8/w;->a:Le8/u;

    iput-object p2, p0, Le8/w;->e:Le8/x;

    iput-boolean p3, p0, Le8/w;->f:Z

    new-instance p2, Li8/i;

    invoke-direct {p2, p1, p3}, Li8/i;-><init>(Le8/u;Z)V

    iput-object p2, p0, Le8/w;->b:Li8/i;

    new-instance p2, Le8/w$a;

    invoke-direct {p2, p0}, Le8/w$a;-><init>(Le8/w;)V

    iput-object p2, p0, Le8/w;->c:Lokio/AsyncTimeout;

    iget p0, p1, Le8/u;->w:I

    int-to-long p0, p0

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1, p3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    iget-object p0, p0, Le8/w;->b:Li8/i;

    const/4 v0, 0x1

    iput-boolean v0, p0, Li8/i;->d:Z

    iget-object p0, p0, Li8/i;->b:Lh8/g;

    if-eqz p0, :cond_24

    iget-object v1, p0, Lh8/g;->d:Le8/h;

    monitor-enter v1

    :try_start_c
    iput-boolean v0, p0, Lh8/g;->m:Z

    iget-object v0, p0, Lh8/g;->n:Li8/c;

    iget-object p0, p0, Lh8/g;->j:Lh8/c;

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_21

    if-eqz v0, :cond_19

    invoke-interface {v0}, Li8/c;->cancel()V

    goto :goto_24

    :cond_19
    if-eqz p0, :cond_24

    iget-object p0, p0, Lh8/c;->d:Ljava/net/Socket;

    invoke-static {p0}, Lf8/c;->f(Ljava/net/Socket;)V

    goto :goto_24

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0

    :cond_24
    :goto_24
    return-void
.end method

.method public c(Le8/e;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Le8/w;->g:Z

    if-nez v0, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, p0, Le8/w;->g:Z

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_39

    sget-object v0, Ll8/g;->a:Ll8/g;

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Ll8/g;->j(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Le8/w;->b:Li8/i;

    iput-object v0, v1, Li8/i;->c:Ljava/lang/Object;

    iget-object v0, p0, Le8/w;->d:Le8/n;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Le8/w;->a:Le8/u;

    iget-object v0, v0, Le8/u;->a:Le8/l;

    new-instance v1, Le8/w$b;

    invoke-direct {v1, p0, p1}, Le8/w$b;-><init>(Le8/w;Le8/e;)V

    monitor-enter v0

    :try_start_24
    iget-object p0, v0, Le8/l;->b:Ljava/util/Deque;

    invoke-interface {p0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2e

    invoke-virtual {v0}, Le8/l;->b()Z

    return-void

    :catchall_2e
    move-exception p0

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0

    :cond_31
    :try_start_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_39
    move-exception p1

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Le8/w;->a:Le8/u;

    iget-object v1, p0, Le8/w;->e:Le8/x;

    iget-boolean p0, p0, Le8/w;->f:Z

    new-instance v2, Le8/w;

    invoke-direct {v2, v0, v1, p0}, Le8/w;-><init>(Le8/u;Le8/x;Z)V

    iget-object p0, v0, Le8/u;->g:Le8/n$b;

    check-cast p0, Le8/o;

    iget-object p0, p0, Le8/o;->a:Le8/n;

    iput-object p0, v2, Le8/w;->d:Le8/n;

    return-object v2
.end method

.method public d()Le8/z;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Le8/w;->a:Le8/u;

    iget-object v0, v0, Le8/u;->e:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Le8/w;->b:Li8/i;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Li8/a;

    iget-object v2, p0, Le8/w;->a:Le8/u;

    iget-object v2, v2, Le8/u;->i:Le8/k;

    invoke-direct {v0, v2}, Li8/a;-><init>(Le8/k;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lg8/b;

    iget-object v2, p0, Le8/w;->a:Le8/u;

    iget-object v2, v2, Le8/u;->j:Lg8/e;

    invoke-direct {v0, v2}, Lg8/b;-><init>(Lg8/e;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh8/a;

    iget-object v2, p0, Le8/w;->a:Le8/u;

    invoke-direct {v0, v2}, Lh8/a;-><init>(Le8/u;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Le8/w;->f:Z

    if-nez v0, :cond_3e

    iget-object v0, p0, Le8/w;->a:Le8/u;

    iget-object v0, v0, Le8/u;->f:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3e
    new-instance v0, Li8/b;

    iget-boolean v2, p0, Le8/w;->f:Z

    invoke-direct {v0, v2}, Li8/b;-><init>(Z)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Li8/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v13, p0, Le8/w;->e:Le8/x;

    iget-object v8, p0, Le8/w;->d:Le8/n;

    iget-object v0, p0, Le8/w;->a:Le8/u;

    iget v9, v0, Le8/u;->x:I

    iget v10, v0, Le8/u;->y:I

    iget v11, v0, Le8/u;->z:I

    move-object v0, v12

    move-object v6, v13

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Li8/f;-><init>(Ljava/util/List;Lh8/g;Li8/c;Lh8/c;ILe8/x;Le8/d;Le8/n;III)V

    invoke-virtual {v12, v13}, Li8/f;->a(Le8/x;)Le8/z;

    move-result-object v0

    iget-object p0, p0, Le8/w;->b:Li8/i;

    iget-boolean p0, p0, Li8/i;->d:Z

    if-nez p0, :cond_6b

    return-object v0

    :cond_6b
    invoke-static {v0}, Lf8/c;->e(Ljava/io/Closeable;)V

    new-instance p0, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e()Ljava/lang/String;
    .registers 9

    iget-object p0, p0, Le8/w;->e:Le8/x;

    iget-object p0, p0, Le8/x;->a:Le8/r;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/..."

    :try_start_9
    new-instance v1, Le8/r$a;

    invoke-direct {v1}, Le8/r$a;-><init>()V

    invoke-virtual {v1, p0, v0}, Le8/r$a;->c(Le8/r;Ljava/lang/String;)Le8/r$a;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    const/4 v1, 0x0

    :goto_13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v2, ""

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    invoke-static/range {v2 .. v7}, Le8/r;->b(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Le8/r$a;->b:Ljava/lang/String;

    const-string v2, ""

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    invoke-static/range {v2 .. v7}, Le8/r;->b(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Le8/r$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Le8/r$a;->a()Le8/r;

    move-result-object p0

    iget-object p0, p0, Le8/r;->i:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .param p1  # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Le8/w;->c:Lokio/AsyncTimeout;

    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result p0

    if-nez p0, :cond_9

    return-object p1

    :cond_9
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_15

    invoke-virtual {p0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_15
    return-object p0
.end method

.method public g()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le8/w;->b:Li8/i;

    iget-boolean v1, v1, Li8/i;->d:Z

    if-eqz v1, :cond_e

    const-string v1, "canceled "

    goto :goto_10

    :cond_e
    const-string v1, ""

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le8/w;->f:Z

    if-eqz v1, :cond_1a

    const-string v1, "web socket"

    goto :goto_1c

    :cond_1a
    const-string v1, "call"

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/w;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
