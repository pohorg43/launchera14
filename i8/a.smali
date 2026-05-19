.class public final Li8/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le8/s;


# instance fields
.field public final a:Le8/k;


# direct methods
.method public constructor <init>(Le8/k;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li8/a;->a:Le8/k;

    return-void
.end method


# virtual methods
.method public intercept(Le8/s$a;)Le8/z;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Li8/f;

    iget-object v0, v0, Li8/f;->f:Le8/x;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Le8/x$a;

    invoke-direct {v1, v0}, Le8/x$a;-><init>(Le8/x;)V

    iget-object v2, v0, Le8/x;->d:Le8/y;

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Le8/y;->contentType()Le8/t;

    move-result-object v7

    if-eqz v7, :cond_22

    iget-object v7, v7, Le8/t;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v7}, Le8/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    :cond_22
    invoke-virtual {v2}, Le8/y;->contentLength()J

    move-result-wide v7

    cmp-long v2, v7, v4

    const-string v9, "Transfer-Encoding"

    if-eqz v2, :cond_39

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Le8/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    iget-object v2, v1, Le8/x$a;->c:Le8/q$a;

    invoke-virtual {v2, v9}, Le8/q$a;->b(Ljava/lang/String;)Le8/q$a;

    goto :goto_43

    :cond_39
    const-string v2, "chunked"

    invoke-virtual {v1, v9, v2}, Le8/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    iget-object v2, v1, Le8/x$a;->c:Le8/q$a;

    invoke-virtual {v2, v6}, Le8/q$a;->b(Ljava/lang/String;)Le8/q$a;

    :cond_43
    :goto_43
    iget-object v2, v0, Le8/x;->c:Le8/q;

    const-string v7, "Host"

    invoke-virtual {v2, v7}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    if-nez v2, :cond_57

    iget-object v2, v0, Le8/x;->a:Le8/r;

    invoke-static {v2, v8}, Lf8/c;->n(Le8/r;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Le8/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    :cond_57
    iget-object v2, v0, Le8/x;->c:Le8/q;

    const-string v7, "Connection"

    invoke-virtual {v2, v7}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_66

    const-string v2, "Keep-Alive"

    invoke-virtual {v1, v7, v2}, Le8/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    :cond_66
    iget-object v2, v0, Le8/x;->c:Le8/q;

    const-string v7, "Accept-Encoding"

    invoke-virtual {v2, v7}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "gzip"

    if-nez v2, :cond_81

    iget-object v2, v0, Le8/x;->c:Le8/q;

    const-string v10, "Range"

    invoke-virtual {v2, v10}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_81

    invoke-virtual {v1, v7, v9}, Le8/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    const/4 v2, 0x1

    goto :goto_82

    :cond_81
    move v2, v8

    :goto_82
    iget-object v7, p0, Li8/a;->a:Le8/k;

    check-cast v7, Le8/k$a;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    :goto_9c
    if-ge v8, v11, :cond_bd

    if-lez v8, :cond_a5

    const-string v12, "; "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a5
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le8/j;

    iget-object v13, v12, Le8/j;->a:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v12, v12, Le8/j;->b:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_9c

    :cond_bd
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Cookie"

    invoke-virtual {v1, v8, v7}, Le8/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    :cond_c6
    iget-object v7, v0, Le8/x;->c:Le8/q;

    const-string v8, "User-Agent"

    invoke-virtual {v7, v8}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_d5

    const-string v7, "okhttp/3.12.12"

    invoke-virtual {v1, v8, v7}, Le8/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    :cond_d5
    invoke-virtual {v1}, Le8/x$a;->b()Le8/x;

    move-result-object v1

    check-cast p1, Li8/f;

    iget-object v7, p1, Li8/f;->b:Lh8/g;

    iget-object v8, p1, Li8/f;->c:Li8/c;

    iget-object v10, p1, Li8/f;->d:Lh8/c;

    invoke-virtual {p1, v1, v7, v8, v10}, Li8/f;->b(Le8/x;Lh8/g;Li8/c;Lh8/c;)Le8/z;

    move-result-object p1

    iget-object p0, p0, Li8/a;->a:Le8/k;

    iget-object v1, v0, Le8/x;->a:Le8/r;

    iget-object v7, p1, Le8/z;->f:Le8/q;

    invoke-static {p0, v1, v7}, Li8/e;->d(Le8/k;Le8/r;Le8/q;)V

    new-instance p0, Le8/z$a;

    invoke-direct {p0, p1}, Le8/z$a;-><init>(Le8/z;)V

    iput-object v0, p0, Le8/z$a;->a:Le8/x;

    if-eqz v2, :cond_155

    iget-object v0, p1, Le8/z;->f:Le8/q;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_103

    goto :goto_104

    :cond_103
    move-object v0, v2

    :goto_104
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_155

    invoke-static {p1}, Li8/e;->b(Le8/z;)Z

    move-result v0

    if-eqz v0, :cond_155

    new-instance v0, Lokio/GzipSource;

    iget-object v7, p1, Le8/z;->g:Le8/b0;

    invoke-virtual {v7}, Le8/b0;->e()Lokio/BufferedSource;

    move-result-object v7

    invoke-direct {v0, v7}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    iget-object v7, p1, Le8/z;->f:Le8/q;

    invoke-virtual {v7}, Le8/q;->f()Le8/q$a;

    move-result-object v7

    invoke-virtual {v7, v1}, Le8/q$a;->b(Ljava/lang/String;)Le8/q$a;

    invoke-virtual {v7, v6}, Le8/q$a;->b(Ljava/lang/String;)Le8/q$a;

    iget-object v1, v7, Le8/q$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v6, Le8/q$a;

    invoke-direct {v6}, Le8/q$a;-><init>()V

    iget-object v7, v6, Le8/q$a;->a:Ljava/util/List;

    invoke-static {v7, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iput-object v6, p0, Le8/z$a;->f:Le8/q$a;

    iget-object p1, p1, Le8/z;->f:Le8/q;

    invoke-virtual {p1, v3}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14a

    move-object v2, p1

    :cond_14a
    new-instance p1, Li8/g;

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p1, v2, v4, v5, v0}, Li8/g;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    iput-object p1, p0, Le8/z$a;->g:Le8/b0;

    :cond_155
    invoke-virtual {p0}, Le8/z$a;->b()Le8/z;

    move-result-object p0

    return-object p0
.end method
