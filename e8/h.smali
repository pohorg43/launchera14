.class public final Le8/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final g:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Ljava/lang/Runnable;

.field public final d:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lh8/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lh8/d;

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v0, 0x1

    sget-object v7, Lf8/c;->a:[B

    new-instance v7, Lf8/d;

    const-string v9, "OkHttp ConnectionPool"

    invoke-direct {v7, v9, v0}, Lf8/d;-><init>(Ljava/lang/String;Z)V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Le8/h;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Le8/h$a;

    invoke-direct {v1, p0}, Le8/h$a;-><init>(Le8/h;)V

    iput-object v1, p0, Le8/h;->c:Ljava/lang/Runnable;

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Le8/h;->d:Ljava/util/Deque;

    new-instance v1, Lh8/d;

    invoke-direct {v1}, Lh8/d;-><init>()V

    iput-object v1, p0, Le8/h;->e:Lh8/d;

    const/4 v1, 0x5

    iput v1, p0, Le8/h;->a:I

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Le8/h;->b:J

    return-void
.end method


# virtual methods
.method public final a(Lh8/c;J)I
    .registers 10

    iget-object v0, p1, Lh8/c;->n:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4c

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_19

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_19
    check-cast v3, Lh8/g$a;

    const-string v4, "A connection to "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lh8/c;->c:Le8/c0;

    iget-object v5, v5, Le8/c0;->a:Le8/a;

    iget-object v5, v5, Le8/a;->a:Le8/r;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ll8/g;->a:Ll8/g;

    iget-object v3, v3, Lh8/g$a;->a:Ljava/lang/Object;

    invoke-virtual {v5, v4, v3}, Ll8/g;->n(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, p1, Lh8/c;->k:Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v2, p0, Le8/h;->b:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Lh8/c;->o:J

    return v1

    :cond_4c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
