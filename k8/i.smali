.class public Lk8/i;
.super Lf8/b;
.source ""


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lk8/g;


# direct methods
.method public varargs constructor <init>(Lk8/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .registers 6

    iput-object p1, p0, Lk8/i;->d:Lk8/g;

    iput p4, p0, Lk8/i;->b:I

    iput-object p5, p0, Lk8/i;->c:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lf8/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lk8/i;->d:Lk8/g;

    iget-object v0, v0, Lk8/g;->j:Lk8/t;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_7
    iget-object v0, p0, Lk8/i;->d:Lk8/g;

    iget-object v0, v0, Lk8/g;->v:Lk8/r;

    iget v1, p0, Lk8/i;->b:I

    sget-object v2, Lk8/b;->g:Lk8/b;

    invoke-virtual {v0, v1, v2}, Lk8/r;->g(ILk8/b;)V

    iget-object v0, p0, Lk8/i;->d:Lk8/g;

    monitor-enter v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_27

    :try_start_15
    iget-object v1, p0, Lk8/i;->d:Lk8/g;

    iget-object v1, v1, Lk8/g;->x:Ljava/util/Set;

    iget p0, p0, Lk8/i;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_24

    :try_start_26
    throw p0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_27} :catch_27

    :catch_27
    :goto_27
    return-void
.end method
