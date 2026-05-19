.class public final Li8/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le8/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li8/b$a;
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Li8/b;->a:Z

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

    check-cast p1, Li8/f;

    iget-object v0, p1, Li8/f;->c:Li8/c;

    iget-object v1, p1, Li8/f;->b:Lh8/g;

    iget-object v2, p1, Li8/f;->d:Lh8/c;

    iget-object v3, p1, Li8/f;->f:Le8/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p1, Li8/f;->h:Le8/n;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Li8/c;->d(Le8/x;)V

    iget-object v6, p1, Li8/f;->h:Le8/n;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v3, Le8/x;->b:Ljava/lang/String;

    invoke-static {v6}, Ll7/d;->a(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_79

    iget-object v6, v3, Le8/x;->d:Le8/y;

    if-eqz v6, :cond_79

    iget-object v6, v3, Le8/x;->c:Le8/q;

    const-string v8, "Expect"

    invoke-virtual {v6, v8}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "100-continue"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v0}, Li8/c;->f()V

    iget-object v6, p1, Li8/f;->h:Le8/n;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Li8/c;->e(Z)Le8/z$a;

    move-result-object v6

    goto :goto_47

    :cond_46
    move-object v6, v7

    :goto_47
    if-nez v6, :cond_6f

    iget-object v2, p1, Li8/f;->h:Le8/n;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v3, Le8/x;->d:Le8/y;

    invoke-virtual {v2}, Le8/y;->contentLength()J

    move-result-wide v8

    new-instance v2, Li8/b$a;

    invoke-interface {v0, v3, v8, v9}, Li8/c;->b(Le8/x;J)Lokio/Sink;

    move-result-object v8

    invoke-direct {v2, v8}, Li8/b$a;-><init>(Lokio/Sink;)V

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    iget-object v8, v3, Le8/x;->d:Le8/y;

    invoke-virtual {v8, v2}, Le8/y;->writeTo(Lokio/BufferedSink;)V

    invoke-interface {v2}, Lokio/Sink;->close()V

    iget-object v2, p1, Li8/f;->h:Le8/n;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    :cond_6f
    invoke-virtual {v2}, Lh8/c;->h()Z

    move-result v2

    if-nez v2, :cond_7a

    invoke-virtual {v1}, Lh8/g;->f()V

    goto :goto_7a

    :cond_79
    move-object v6, v7

    :cond_7a
    :goto_7a
    invoke-interface {v0}, Li8/c;->a()V

    const/4 v2, 0x0

    if-nez v6, :cond_89

    iget-object v6, p1, Li8/f;->h:Le8/n;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Li8/c;->e(Z)Le8/z$a;

    move-result-object v6

    :cond_89
    iput-object v3, v6, Le8/z$a;->a:Le8/x;

    invoke-virtual {v1}, Lh8/g;->b()Lh8/c;

    move-result-object v8

    iget-object v8, v8, Lh8/c;->f:Le8/p;

    iput-object v8, v6, Le8/z$a;->e:Le8/p;

    iput-wide v4, v6, Le8/z$a;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Le8/z$a;->l:J

    invoke-virtual {v6}, Le8/z$a;->b()Le8/z;

    move-result-object v6

    iget v8, v6, Le8/z;->c:I

    const/16 v9, 0x64

    if-ne v8, v9, :cond_c1

    invoke-interface {v0, v2}, Li8/c;->e(Z)Le8/z$a;

    move-result-object v2

    iput-object v3, v2, Le8/z$a;->a:Le8/x;

    invoke-virtual {v1}, Lh8/g;->b()Lh8/c;

    move-result-object v3

    iget-object v3, v3, Lh8/c;->f:Le8/p;

    iput-object v3, v2, Le8/z$a;->e:Le8/p;

    iput-wide v4, v2, Le8/z$a;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Le8/z$a;->l:J

    invoke-virtual {v2}, Le8/z$a;->b()Le8/z;

    move-result-object v6

    iget v8, v6, Le8/z;->c:I

    :cond_c1
    iget-object p1, p1, Li8/f;->h:Le8/n;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, p0, Li8/b;->a:Z

    if-eqz p0, :cond_dc

    const/16 p0, 0x65

    if-ne v8, p0, :cond_dc

    new-instance p0, Le8/z$a;

    invoke-direct {p0, v6}, Le8/z$a;-><init>(Le8/z;)V

    sget-object p1, Lf8/c;->c:Le8/b0;

    iput-object p1, p0, Le8/z$a;->g:Le8/b0;

    invoke-virtual {p0}, Le8/z$a;->b()Le8/z;

    move-result-object p0

    goto :goto_eb

    :cond_dc
    new-instance p0, Le8/z$a;

    invoke-direct {p0, v6}, Le8/z$a;-><init>(Le8/z;)V

    invoke-interface {v0, v6}, Li8/c;->c(Le8/z;)Le8/b0;

    move-result-object p1

    iput-object p1, p0, Le8/z$a;->g:Le8/b0;

    invoke-virtual {p0}, Le8/z$a;->b()Le8/z;

    move-result-object p0

    :goto_eb
    iget-object p1, p0, Le8/z;->a:Le8/x;

    iget-object p1, p1, Le8/x;->c:Le8/q;

    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "close"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10c

    iget-object p1, p0, Le8/z;->f:Le8/q;

    invoke-virtual {p1, v0}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_106

    move-object v7, p1

    :cond_106
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10f

    :cond_10c
    invoke-virtual {v1}, Lh8/g;->f()V

    :cond_10f
    const/16 p1, 0xcc

    if-eq v8, p1, :cond_117

    const/16 p1, 0xcd

    if-ne v8, p1, :cond_123

    :cond_117
    iget-object p1, p0, Le8/z;->g:Le8/b0;

    invoke-virtual {p1}, Le8/b0;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_124

    :cond_123
    return-object p0

    :cond_124
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "HTTP "

    const-string v1, " had non-zero Content-Length: "

    invoke-static {v0, v8, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Le8/z;->g:Le8/b0;

    invoke-virtual {p0}, Le8/b0;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
