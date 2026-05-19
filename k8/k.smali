.class public Lk8/k;
.super Lf8/b;
.source ""


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lokio/Buffer;

.field public final synthetic d:I

.field public final synthetic e:Lk8/g;


# direct methods
.method public varargs constructor <init>(Lk8/g;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V
    .registers 8

    iput-object p1, p0, Lk8/k;->e:Lk8/g;

    iput p4, p0, Lk8/k;->b:I

    iput-object p5, p0, Lk8/k;->c:Lokio/Buffer;

    iput p6, p0, Lk8/k;->d:I

    invoke-direct {p0, p2, p3}, Lf8/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lk8/k;->e:Lk8/g;

    iget-object v0, v0, Lk8/g;->j:Lk8/t;

    iget-object v1, p0, Lk8/k;->c:Lokio/Buffer;

    iget v2, p0, Lk8/k;->d:I

    check-cast v0, Lk8/t$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->skip(J)V

    iget-object v0, p0, Lk8/k;->e:Lk8/g;

    iget-object v0, v0, Lk8/g;->v:Lk8/r;

    iget v1, p0, Lk8/k;->b:I

    sget-object v2, Lk8/b;->g:Lk8/b;

    invoke-virtual {v0, v1, v2}, Lk8/r;->g(ILk8/b;)V

    iget-object v0, p0, Lk8/k;->e:Lk8/g;

    monitor-enter v0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_31

    :try_start_1f
    iget-object v1, p0, Lk8/k;->e:Lk8/g;

    iget-object v1, v1, Lk8/g;->x:Ljava/util/Set;

    iget p0, p0, Lk8/k;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_31

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_2e

    :try_start_30
    throw p0
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_31} :catch_31

    :catch_31
    :goto_31
    return-void
.end method
