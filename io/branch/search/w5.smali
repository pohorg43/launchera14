.class public Lio/branch/search/w5;
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

    iput-object p1, p0, Lio/branch/search/w5;->a:Lio/branch/search/m;

    return-void
.end method


# virtual methods
.method public final a(Le8/b0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7
    .param p1  # Le8/b0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "bncencv2"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "bncencv3z"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "bncencv3"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    if-nez p0, :cond_1b

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p2, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p2, 0x1

    :goto_1c
    :try_start_1c
    invoke-virtual {p1}, Le8/b0;->a()[B

    move-result-object p1

    if-eqz p2, :cond_28

    if-eqz p3, :cond_28

    invoke-static {p1, p3, p4}, Lio/branch/search/r5;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    :cond_28
    if-eqz p0, :cond_2f

    invoke-static {p1}, Lio/branch/search/s5;->b([B)[B

    move-result-object p0

    return-object p0

    :cond_2f
    if-eqz v0, :cond_36

    invoke-static {p1}, Lio/branch/search/s5;->a([B)[B

    move-result-object p0
    :try_end_35
    .catch Ljava/security/GeneralSecurityException; {:try_start_1c .. :try_end_35} :catch_37
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_35} :catch_37

    return-object p0

    :cond_36
    return-object p1

    :catch_37
    move-exception p0

    new-instance p1, Lio/branch/search/r5$a;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lio/branch/search/r5$a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public intercept(Le8/s$a;)Le8/z;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Li8/f;

    iget-object v0, v0, Li8/f;->f:Le8/x;

    iget-object v1, p0, Lio/branch/search/w5;->a:Lio/branch/search/m;

    invoke-virtual {v1}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Le8/x$a;

    invoke-direct {v2, v0}, Le8/x$a;-><init>(Le8/x;)V

    iget-object v0, p0, Lio/branch/search/w5;->a:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->k()Ljava/lang/String;

    move-result-object v0

    const-string v3, "X-Branch-Encryption"

    invoke-virtual {v2, v3, v0}, Le8/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    const-string v0, "Accept-Encoding"

    const-string v3, "bncencv2,bncencv3,bncencv3z"

    invoke-virtual {v2, v0, v3}, Le8/x$a;->c(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    invoke-virtual {v2}, Le8/x$a;->b()Le8/x;

    move-result-object v0

    check-cast p1, Li8/f;

    iget-object v2, p1, Li8/f;->b:Lh8/g;

    iget-object v3, p1, Li8/f;->c:Li8/c;

    iget-object v4, p1, Li8/f;->d:Lh8/c;

    invoke-virtual {p1, v0, v2, v3, v4}, Li8/f;->b(Le8/x;Lh8/g;Li8/c;Lh8/c;)Le8/z;

    move-result-object p1

    iget-object v0, p1, Le8/z;->g:Le8/b0;

    iget-object v2, p1, Le8/z;->f:Le8/q;

    const-string v3, "X-Branch-IV"

    invoke-virtual {v2, v3}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4b

    goto :goto_4c

    :cond_4b
    move-object v2, v3

    :goto_4c
    iget-object v4, p1, Le8/z;->f:Le8/q;

    const-string v5, "Content-Encoding"

    invoke-virtual {v4, v5}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_57

    move-object v3, v4

    :cond_57
    if-eqz v0, :cond_6f

    new-instance v4, Le8/z$a;

    invoke-direct {v4, p1}, Le8/z$a;-><init>(Le8/z;)V

    sget-object p1, Lio/branch/search/u5;->b:Le8/t;

    invoke-virtual {p0, v0, v3, v2, v1}, Lio/branch/search/w5;->a(Le8/b0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1, p0}, Le8/b0;->d(Le8/t;[B)Le8/b0;

    move-result-object p0

    iput-object p0, v4, Le8/z$a;->g:Le8/b0;

    invoke-virtual {v4}, Le8/z$a;->b()Le8/z;

    move-result-object p0

    return-object p0

    :cond_6f
    return-object p1
.end method
