.class public final Lv3/e0$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv3/e0$b<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lv3/e0$b<",
            "*>;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public final synthetic d:Lv3/e0;


# direct methods
.method public constructor <init>(Lv3/e0;)V
    .registers 2

    iput-object p1, p0, Lv3/e0$c;->d:Lv3/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lv3/e0$c;->a:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lv3/e0$c;->b:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/IllegalArgumentException;)Ljava/lang/IllegalArgumentException;
    .registers 5

    iget-boolean v0, p0, Lv3/e0$c;->c:Z

    if-eqz v0, :cond_5

    return-object p1

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lv3/e0$c;->c:Z

    iget-object v1, p0, Lv3/e0$c;->b:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-ne v1, v0, :cond_1d

    iget-object v0, p0, Lv3/e0$c;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/e0$b;

    iget-object v0, v0, Lv3/e0$b;->b:Ljava/lang/String;

    if-nez v0, :cond_1d

    return-object p1

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lv3/e0$c;->b:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2c
    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/e0$b;

    const-string v2, "\nfor "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lv3/e0$b;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lv3/e0$b;->b:Ljava/lang/String;

    if-eqz v2, :cond_2c

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lv3/e0$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public b(Z)V
    .registers 8

    iget-object v0, p0, Lv3/e0$c;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    iget-object v0, p0, Lv3/e0$c;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lv3/e0$c;->d:Lv3/e0;

    iget-object v0, v0, Lv3/e0;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    if-eqz p1, :cond_50

    iget-object p1, p0, Lv3/e0$c;->d:Lv3/e0;

    iget-object p1, p1, Lv3/e0;->c:Ljava/util/Map;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_1d
    iget-object v1, p0, Lv3/e0$c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_23
    if-ge v0, v1, :cond_4b

    iget-object v2, p0, Lv3/e0$c;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv3/e0$b;

    iget-object v3, p0, Lv3/e0$c;->d:Lv3/e0;

    iget-object v3, v3, Lv3/e0;->c:Ljava/util/Map;

    iget-object v4, v2, Lv3/e0$b;->c:Ljava/lang/Object;

    iget-object v5, v2, Lv3/e0$b;->d:Lv3/r;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv3/r;

    if-eqz v3, :cond_48

    iput-object v3, v2, Lv3/e0$b;->d:Lv3/r;

    iget-object v4, p0, Lv3/e0$c;->d:Lv3/e0;

    iget-object v4, v4, Lv3/e0;->c:Ljava/util/Map;

    iget-object v2, v2, Lv3/e0$b;->c:Ljava/lang/Object;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_4b
    monitor-exit p1

    goto :goto_50

    :catchall_4d
    move-exception p0

    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_1d .. :try_end_4f} :catchall_4d

    throw p0

    :cond_50
    :goto_50
    return-void
.end method
