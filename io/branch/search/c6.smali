.class public Lio/branch/search/c6;
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


# direct methods
.method public constructor <init>(Lio/branch/search/m;Lio/branch/search/r3;Lio/branch/search/t5;)V
    .registers 4
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

    iput-object p1, p0, Lio/branch/search/c6;->a:Lio/branch/search/m;

    iput-object p2, p0, Lio/branch/search/c6;->b:Lio/branch/search/r3;

    iput-object p3, p0, Lio/branch/search/c6;->c:Lio/branch/search/t5;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/c6;)Lio/branch/search/m;
    .registers 1

    iget-object p0, p0, Lio/branch/search/c6;->a:Lio/branch/search/m;

    return-object p0
.end method

.method public static synthetic b(Lio/branch/search/c6;)Lio/branch/search/t5;
    .registers 1

    iget-object p0, p0, Lio/branch/search/c6;->c:Lio/branch/search/t5;

    return-object p0
.end method


# virtual methods
.method public intercept(Le8/s$a;)Le8/z;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Li8/f;

    iget-object v0, v0, Li8/f;->f:Le8/x;

    iget-object v1, p0, Lio/branch/search/c6;->a:Lio/branch/search/m;

    iget-object v1, v1, Lio/branch/search/m;->g:Lio/branch/search/q1;

    invoke-virtual {v1}, Lio/branch/search/q1;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/branch/search/c6;->b:Lio/branch/search/r3;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v4, Lio/branch/search/c6$a;

    invoke-direct {v4, p0, v1}, Lio/branch/search/c6$a;-><init>(Lio/branch/search/c6;Ljava/lang/String;)V

    const-string p0, "isNetworkBandwidthLimitExceeded"

    invoke-virtual {v2, v3, p0, v4}, Lio/branch/search/s3;->a(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_2b

    check-cast p1, Li8/f;

    invoke-virtual {p1, v0}, Li8/f;->a(Le8/x;)Le8/z;

    move-result-object p0

    return-object p0

    :cond_2b
    new-instance p0, Lio/branch/search/b6;

    const-string p1, "Cannot make network request, bandwidth usage limit rule has been reached"

    invoke-direct {p0, p1}, Lio/branch/search/b6;-><init>(Ljava/lang/String;)V

    throw p0
.end method
