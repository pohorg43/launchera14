.class public Lv0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx0/d;
.implements Le8/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx0/d<",
        "Ljava/io/InputStream;",
        ">;",
        "Le8/e;"
    }
.end annotation


# instance fields
.field public final a:Le8/d$a;

.field public final b:Ld1/g;

.field public c:Ljava/io/InputStream;

.field public d:Le8/b0;

.field public e:Lx0/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Le8/d;


# direct methods
.method public constructor <init>(Le8/d$a;Ld1/g;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/a;->a:Le8/d$a;

    iput-object p2, p0, Lv0/a;->b:Ld1/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public b()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lv0/a;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    iget-object v0, p0, Lv0/a;->d:Le8/b0;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Le8/b0;->close()V

    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lv0/a;->e:Lx0/d$a;

    return-void
.end method

.method public c(Lcom/bumptech/glide/e;Lx0/d$a;)V
    .registers 6
    .param p1  # Lcom/bumptech/glide/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lx0/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e;",
            "Lx0/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Le8/x$a;

    invoke-direct {p1}, Le8/x$a;-><init>()V

    iget-object v0, p0, Lv0/a;->b:Ld1/g;

    invoke-virtual {v0}, Ld1/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Le8/x$a;->g(Ljava/lang/String;)Le8/x$a;

    iget-object v0, p0, Lv0/a;->b:Ld1/g;

    iget-object v0, v0, Ld1/g;->b:Ld1/h;

    invoke-interface {v0}, Ld1/h;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Le8/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    goto :goto_1e

    :cond_3a
    invoke-virtual {p1}, Le8/x$a;->b()Le8/x;

    move-result-object p1

    iput-object p2, p0, Lv0/a;->e:Lx0/d$a;

    iget-object p2, p0, Lv0/a;->a:Le8/d$a;

    check-cast p2, Le8/u;

    invoke-virtual {p2, p1}, Le8/u;->b(Le8/x;)Le8/d;

    move-result-object p1

    iput-object p1, p0, Lv0/a;->f:Le8/d;

    iget-object p1, p0, Lv0/a;->f:Le8/d;

    check-cast p1, Le8/w;

    invoke-virtual {p1, p0}, Le8/w;->c(Le8/e;)V

    return-void
.end method

.method public cancel()V
    .registers 1

    iget-object p0, p0, Lv0/a;->f:Le8/d;

    if-eqz p0, :cond_9

    check-cast p0, Le8/w;

    invoke-virtual {p0}, Le8/w;->b()V

    :cond_9
    return-void
.end method

.method public e()Lcom/bumptech/glide/load/a;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/bumptech/glide/load/a;->b:Lcom/bumptech/glide/load/a;

    return-object p0
.end method

.method public onFailure(Le8/d;Ljava/io/IOException;)V
    .registers 4
    .param p1  # Le8/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/io/IOException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "OkHttpFetcher"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "OkHttp failed to obtain result"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    iget-object p0, p0, Lv0/a;->e:Lx0/d$a;

    invoke-interface {p0, p2}, Lx0/d$a;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Le8/d;Le8/z;)V
    .registers 5
    .param p1  # Le8/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Le8/z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p2, Le8/z;->g:Le8/b0;

    iput-object p1, p0, Lv0/a;->d:Le8/b0;

    iget v0, p2, Le8/z;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_10

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_33

    const-string p2, "Argument must not be null"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Le8/b0;->b()J

    move-result-wide p1

    iget-object v0, p0, Lv0/a;->d:Le8/b0;

    invoke-virtual {v0}, Le8/b0;->e()Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/util/b;

    invoke-direct {v1, v0, p1, p2}, Lcom/bumptech/glide/util/b;-><init>(Ljava/io/InputStream;J)V

    iput-object v1, p0, Lv0/a;->c:Ljava/io/InputStream;

    iget-object p0, p0, Lv0/a;->e:Lx0/d$a;

    invoke-interface {p0, v1}, Lx0/d$a;->f(Ljava/lang/Object;)V

    goto :goto_41

    :cond_33
    iget-object p0, p0, Lv0/a;->e:Lx0/d$a;

    new-instance p1, Lw0/b;

    iget-object v0, p2, Le8/z;->d:Ljava/lang/String;

    iget p2, p2, Le8/z;->c:I

    invoke-direct {p1, v0, p2}, Lw0/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, p1}, Lx0/d$a;->d(Ljava/lang/Exception;)V

    :goto_41
    return-void
.end method
