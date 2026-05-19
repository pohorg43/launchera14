.class public Lio/branch/search/x5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le8/s;


# instance fields
.field public final a:Lio/branch/search/m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/branch/search/m;)V
    .registers 2
    .param p1  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/x5;->a:Lio/branch/search/m;

    return-void
.end method


# virtual methods
.method public final a(Le8/y;Ljava/lang/String;)Le8/y;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    iget-object v0, p0, Lio/branch/search/x5;->a:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {p1, v1}, Le8/y;->writeTo(Lokio/BufferedSink;)V

    invoke-virtual {v1}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    :try_start_1a
    invoke-static {v1}, Lio/branch/search/s5;->c([B)[B

    move-result-object v1

    invoke-static {v1, p2, v0}, Lio/branch/search/r5;->b([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    new-instance v0, Lio/branch/search/x5$a;

    invoke-direct {v0, p0, p1, p2}, Lio/branch/search/x5$a;-><init>(Lio/branch/search/x5;Le8/y;[B)V
    :try_end_27
    .catch Ljava/security/GeneralSecurityException; {:try_start_1a .. :try_end_27} :catch_28

    return-object v0

    :catch_28
    move-exception p1

    iget-object p0, p0, Lio/branch/search/x5;->a:Lio/branch/search/m;

    const-string p2, "EncryptionInterceptor.maybeEncode"

    invoke-virtual {p0, p2, p1}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lio/branch/search/r5$a;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/branch/search/r5$a;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public intercept(Le8/s$a;)Le8/z;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    invoke-static {v0}, Lio/branch/search/r5;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/x5;->a:Lio/branch/search/m;

    invoke-virtual {v1}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->k()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Li8/f;

    iget-object v2, v2, Li8/f;->f:Le8/x;

    iget-object v3, v2, Le8/x;->d:Le8/y;

    if-nez v3, :cond_26

    check-cast p1, Li8/f;

    iget-object p0, p1, Li8/f;->b:Lh8/g;

    iget-object v0, p1, Li8/f;->c:Li8/c;

    iget-object v1, p1, Li8/f;->d:Lh8/c;

    invoke-virtual {p1, v2, p0, v0, v1}, Li8/f;->b(Le8/x;Lh8/g;Li8/c;Lh8/c;)Le8/z;

    move-result-object p0

    return-object p0

    :cond_26
    new-instance v3, Le8/x$a;

    invoke-direct {v3, v2}, Le8/x$a;-><init>(Le8/x;)V

    iget-object v4, v2, Le8/x;->b:Ljava/lang/String;

    iget-object v2, v2, Le8/x;->d:Le8/y;

    invoke-virtual {p0, v2, v0}, Lio/branch/search/x5;->a(Le8/y;Ljava/lang/String;)Le8/y;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Le8/x$a;->d(Ljava/lang/String;Le8/y;)Le8/x$a;

    const-string p0, "X-Branch-Encryption"

    invoke-virtual {v3, p0, v1}, Le8/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    const-string p0, "X-Branch-IV"

    invoke-virtual {v3, p0, v0}, Le8/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    const-string p0, "Content-Encoding"

    const-string v0, "bncencv2"

    invoke-virtual {v3, p0, v0}, Le8/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    invoke-virtual {v3}, Le8/x$a;->b()Le8/x;

    move-result-object p0

    check-cast p1, Li8/f;

    iget-object v0, p1, Li8/f;->b:Lh8/g;

    iget-object v1, p1, Li8/f;->c:Li8/c;

    iget-object v2, p1, Li8/f;->d:Lh8/c;

    invoke-virtual {p1, p0, v0, v1, v2}, Li8/f;->b(Le8/x;Lh8/g;Li8/c;Lh8/c;)Le8/z;

    move-result-object p0

    return-object p0
.end method
