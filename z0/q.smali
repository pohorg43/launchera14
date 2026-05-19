.class public Lz0/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz0/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz0/w<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Lz0/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/w<",
            "TZ;>;"
        }
    .end annotation
.end field

.field public final d:Lz0/q$a;

.field public final e:Lw0/c;

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(Lz0/w;ZZLw0/c;Lz0/q$a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/w<",
            "TZ;>;ZZ",
            "Lw0/c;",
            "Lz0/q$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz0/q;->c:Lz0/w;

    iput-boolean p2, p0, Lz0/q;->a:Z

    iput-boolean p3, p0, Lz0/q;->b:Z

    iput-object p4, p0, Lz0/q;->e:Lw0/c;

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p5, p0, Lz0/q;->d:Lz0/q$a;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 1

    iget-object p0, p0, Lz0/q;->c:Lz0/w;

    invoke-interface {p0}, Lz0/w;->a()I

    move-result p0

    return p0
.end method

.method public b()Ljava/lang/Class;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    iget-object p0, p0, Lz0/q;->c:Lz0/w;

    invoke-interface {p0}, Lz0/w;->b()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lz0/q;->g:Z

    if-nez v0, :cond_d

    iget v0, p0, Lz0/q;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz0/q;->f:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_15

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lz0/q;->f:I

    if-lez v0, :cond_18

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lz0/q;->f:I

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_20

    if-eqz v1, :cond_17

    iget-object v0, p0, Lz0/q;->d:Lz0/q$a;

    iget-object v1, p0, Lz0/q;->e:Lw0/c;

    invoke-interface {v0, v1, p0}, Lz0/q$a;->a(Lw0/c;Lz0/q;)V

    :cond_17
    return-void

    :cond_18
    :try_start_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object p0, p0, Lz0/q;->c:Lz0/w;

    invoke-interface {p0}, Lz0/w;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized recycle()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lz0/q;->f:I

    if-gtz v0, :cond_1f

    iget-boolean v0, p0, Lz0/q;->g:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz0/q;->g:Z

    iget-boolean v0, p0, Lz0/q;->b:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lz0/q;->c:Lz0/w;

    invoke-interface {v0}, Lz0/w;->recycle()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_27

    :cond_15
    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineResource{isMemoryCacheable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lz0/q;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz0/q;->d:Lz0/q$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz0/q;->e:Lw0/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", acquired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz0/q;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRecycled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lz0/q;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz0/q;->c:Lz0/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4d

    monitor-exit p0

    return-object v0

    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
