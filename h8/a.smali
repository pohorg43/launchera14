.class public final Lh8/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le8/s;


# instance fields
.field public final a:Le8/u;


# direct methods
.method public constructor <init>(Le8/u;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh8/a;->a:Le8/u;

    return-void
.end method


# virtual methods
.method public intercept(Le8/s$a;)Le8/z;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Li8/f;

    iget-object v1, v0, Li8/f;->f:Le8/x;

    iget-object v9, v0, Li8/f;->b:Lh8/g;

    iget-object v2, v1, Le8/x;->b:Ljava/lang/String;

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v8, v2, 0x1

    iget-object p0, p0, Lh8/a;->a:Le8/u;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v0, Li8/f;->i:I

    iget v4, v0, Li8/f;->j:I

    iget v5, v0, Li8/f;->k:I

    iget v6, p0, Le8/u;->A:I

    iget-boolean v7, p0, Le8/u;->v:Z

    move-object v2, v9

    :try_start_21
    invoke-virtual/range {v2 .. v8}, Lh8/g;->e(IIIIZZ)Lh8/c;

    move-result-object v2

    invoke-virtual {v2, p0, p1, v9}, Lh8/c;->i(Le8/u;Le8/s$a;Lh8/g;)Li8/c;

    move-result-object p0

    iget-object p1, v9, Lh8/g;->d:Le8/h;

    monitor-enter p1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2c} :catch_3b

    :try_start_2c
    iput-object p0, v9, Lh8/g;->n:Li8/c;

    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_38

    invoke-virtual {v9}, Lh8/g;->b()Lh8/c;

    move-result-object p1

    invoke-virtual {v0, v1, v9, p0, p1}, Li8/f;->b(Le8/x;Lh8/g;Li8/c;Lh8/c;)Le8/z;

    move-result-object p0

    return-object p0

    :catchall_38
    move-exception p0

    :try_start_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw p0
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception p0

    new-instance p1, Lh8/e;

    invoke-direct {p1, p0}, Lh8/e;-><init>(Ljava/io/IOException;)V

    throw p1
.end method
