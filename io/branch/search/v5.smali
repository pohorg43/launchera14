.class public Lio/branch/search/v5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le8/s;


# instance fields
.field public a:Lio/branch/search/m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:Lio/branch/search/r3;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public c:Lio/branch/search/t5;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lio/branch/search/e5;


# direct methods
.method public constructor <init>(Lio/branch/search/m;Lio/branch/search/r3;Lio/branch/search/t5;Lio/branch/search/e5;)V
    .registers 5
    .param p1  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/r3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lio/branch/search/t5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/v5;->a:Lio/branch/search/m;

    iput-object p2, p0, Lio/branch/search/v5;->b:Lio/branch/search/r3;

    iput-object p3, p0, Lio/branch/search/v5;->c:Lio/branch/search/t5;

    iput-object p4, p0, Lio/branch/search/v5;->d:Lio/branch/search/e5;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/v5;)Lio/branch/search/m;
    .registers 1

    iget-object p0, p0, Lio/branch/search/v5;->a:Lio/branch/search/m;

    return-object p0
.end method

.method public static synthetic b(Lio/branch/search/v5;)Lio/branch/search/t5;
    .registers 1

    iget-object p0, p0, Lio/branch/search/v5;->c:Lio/branch/search/t5;

    return-object p0
.end method

.method public static synthetic c(Lio/branch/search/v5;)Lio/branch/search/e5;
    .registers 1

    iget-object p0, p0, Lio/branch/search/v5;->d:Lio/branch/search/e5;

    return-object p0
.end method


# virtual methods
.method public intercept(Le8/s$a;)Le8/z;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Li8/f;

    iget-object v0, v0, Li8/f;->f:Le8/x;

    iget-object v1, v0, Le8/x;->a:Le8/r;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_13

    iget-object v1, v1, Le8/r;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v4, v1

    goto :goto_14

    :cond_13
    move-wide v4, v2

    :goto_14
    add-long/2addr v4, v2

    iget-object v1, v0, Le8/x;->c:Le8/q;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Le8/q;->a()J

    move-result-wide v6

    goto :goto_1f

    :cond_1e
    move-wide v6, v2

    :goto_1f
    add-long/2addr v4, v6

    iget-object v1, v0, Le8/x;->d:Le8/y;

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Le8/y;->contentLength()J

    move-result-wide v6

    goto :goto_2a

    :cond_29
    move-wide v6, v2

    :goto_2a
    add-long/2addr v4, v6

    iget-object v1, p0, Lio/branch/search/v5;->c:Lio/branch/search/t5;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    check-cast p1, Li8/f;

    iget-object v1, p1, Li8/f;->b:Lh8/g;

    iget-object v6, p1, Li8/f;->c:Li8/c;

    iget-object v7, p1, Li8/f;->d:Lh8/c;

    invoke-virtual {p1, v0, v1, v6, v7}, Li8/f;->b(Le8/x;Lh8/g;Li8/c;Lh8/c;)Le8/z;

    move-result-object p1

    iget-object v0, p1, Le8/z;->f:Le8/q;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Le8/q;->a()J

    move-result-wide v0

    goto :goto_46

    :cond_45
    move-wide v0, v2

    :goto_46
    add-long/2addr v4, v0

    iget-object v0, p1, Le8/z;->g:Le8/b0;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Le8/b0;->b()J

    move-result-wide v2

    :cond_4f
    add-long/2addr v4, v2

    iget-object v0, p0, Lio/branch/search/v5;->a:Lio/branch/search/m;

    iget-object v0, v0, Lio/branch/search/m;->g:Lio/branch/search/q1;

    invoke-virtual {v0}, Lio/branch/search/q1;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lio/branch/search/v5;->b:Lio/branch/search/r3;

    new-instance v3, Lio/branch/search/v5$a;

    invoke-direct {v3, p0, v1, v0}, Lio/branch/search/v5$a;-><init>(Lio/branch/search/v5;Ljava/lang/Long;Ljava/lang/String;)V

    const/4 p0, 0x0

    const-string v0, "updateNetworkChannelUsage"

    invoke-virtual {v2, p0, v0, v3}, Lio/branch/search/s3;->a(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    new-instance p0, Le8/z$a;

    invoke-direct {p0, p1}, Le8/z$a;-><init>(Le8/z;)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Branch-API-Call-Size"

    invoke-virtual {p0, v0, p1}, Le8/z$a;->e(Ljava/lang/String;Ljava/lang/String;)Le8/z$a;

    invoke-virtual {p0}, Le8/z$a;->b()Le8/z;

    move-result-object p0

    return-object p0
.end method
