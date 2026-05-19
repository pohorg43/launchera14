.class public final Le8/w$b;
.super Lf8/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le8/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Le8/e;

.field public final synthetic c:Le8/w;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Le8/w;

    return-void
.end method

.method public constructor <init>(Le8/w;Le8/e;)V
    .registers 5

    iput-object p1, p0, Le8/w$b;->c:Le8/w;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Le8/w;->e()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lf8/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Le8/w$b;->b:Le8/e;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    iget-object v0, p0, Le8/w$b;->c:Le8/w;

    iget-object v0, v0, Le8/w;->c:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Le8/w$b;->c:Le8/w;

    invoke-virtual {v1}, Le8/w;->d()Le8/z;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_48
    .catchall {:try_start_8 .. :try_end_e} :catchall_22

    const/4 v1, 0x1

    :try_start_f
    iget-object v2, p0, Le8/w$b;->b:Le8/e;

    iget-object v3, p0, Le8/w$b;->c:Le8/w;

    invoke-interface {v2, v3, v0}, Le8/e;->onResponse(Le8/d;Le8/z;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_20
    .catchall {:try_start_f .. :try_end_16} :catchall_1b

    :goto_16
    iget-object v0, p0, Le8/w$b;->c:Le8/w;

    iget-object v0, v0, Le8/w;->a:Le8/u;

    goto :goto_81

    :catchall_1b
    move-exception v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_23

    :catch_20
    move-exception v0

    goto :goto_4c

    :catchall_22
    move-exception v1

    :goto_23
    :try_start_23
    iget-object v2, p0, Le8/w$b;->c:Le8/w;

    invoke-virtual {v2}, Le8/w;->b()V

    if-nez v0, :cond_47

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canceled due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Le8/w$b;->b:Le8/e;

    iget-object v3, p0, Le8/w$b;->c:Le8/w;

    invoke-interface {v2, v3, v0}, Le8/e;->onFailure(Le8/d;Ljava/io/IOException;)V

    :cond_47
    throw v1

    :catch_48
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    :goto_4c
    iget-object v2, p0, Le8/w$b;->c:Le8/w;

    invoke-virtual {v2, v0}, Le8/w;->f(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v1, :cond_72

    sget-object v1, Ll8/g;->a:Ll8/g;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le8/w$b;->c:Le8/w;

    invoke-virtual {v4}, Le8/w;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ll8/g;->m(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_72
    iget-object v1, p0, Le8/w$b;->c:Le8/w;

    iget-object v1, v1, Le8/w;->d:Le8/n;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Le8/w$b;->b:Le8/e;

    iget-object v2, p0, Le8/w$b;->c:Le8/w;

    invoke-interface {v1, v2, v0}, Le8/e;->onFailure(Le8/d;Ljava/io/IOException;)V
    :try_end_80
    .catchall {:try_start_23 .. :try_end_80} :catchall_87

    goto :goto_16

    :goto_81
    iget-object v0, v0, Le8/u;->a:Le8/l;

    invoke-virtual {v0, p0}, Le8/l;->a(Le8/w$b;)V

    return-void

    :catchall_87
    move-exception v0

    iget-object v1, p0, Le8/w$b;->c:Le8/w;

    iget-object v1, v1, Le8/w;->a:Le8/u;

    iget-object v1, v1, Le8/u;->a:Le8/l;

    invoke-virtual {v1, p0}, Le8/l;->a(Le8/w$b;)V

    throw v0
.end method
