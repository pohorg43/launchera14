.class public Lio/branch/search/a6$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/a6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/a6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/m;Lio/branch/search/t5;)Ljava/util/List;
    .registers 8
    .param p1  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/t5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/m;",
            "Lio/branch/search/t5;",
            ")",
            "Ljava/util/List<",
            "Le8/s;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lio/branch/search/y5;

    invoke-direct {v0}, Lio/branch/search/y5;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/branch/search/d6;

    invoke-direct {v0}, Lio/branch/search/d6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3f

    new-instance v0, Lio/branch/search/q5;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lio/branch/search/q5;-><init>(ZLio/branch/search/b;Lio/branch/search/t5;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/branch/search/c6;

    iget-object v1, p1, Lio/branch/search/m;->f:Lio/branch/search/r3;

    invoke-direct {v0, p1, v1, p2}, Lio/branch/search/c6;-><init>(Lio/branch/search/m;Lio/branch/search/r3;Lio/branch/search/t5;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/branch/search/v5;

    iget-object v1, p1, Lio/branch/search/m;->f:Lio/branch/search/r3;

    new-instance v2, Lio/branch/search/e5;

    sget-object v3, Lio/branch/search/t5;->D:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lio/branch/search/e5;-><init>(J)V

    invoke-direct {v0, p1, v1, p2, v2}, Lio/branch/search/v5;-><init>(Lio/branch/search/m;Lio/branch/search/r3;Lio/branch/search/t5;Lio/branch/search/e5;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    return-object p0
.end method
