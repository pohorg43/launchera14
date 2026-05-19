.class public abstract Lio/branch/search/p3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/x3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/o3;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/p3$a;

    invoke-direct {v0, p0}, Lio/branch/search/p3$a;-><init>(Lio/branch/search/p3;)V

    const-string p0, "local_entities"

    invoke-virtual {p1, p0, v0}, Lio/branch/search/x3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract a()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_entities"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/o3;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM local_entities WHERE package_name IN(:packageNames) ORDER BY rank ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lio/branch/search/o3;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(J)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM local_entities WHERE user_id=:staleUserId"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;J)V
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM local_entities WHERE package_name IS :packageName AND user_id IS :userId"
    .end annotation
.end method

.method public abstract b()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM local_entities"
    .end annotation
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/o3;",
            ">;)V"
        }
    .end annotation
.end method

.method public c(Ljava/util/List;)V
    .registers 2
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/o3;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/branch/search/p3;->b()V

    invoke-virtual {p0, p1}, Lio/branch/search/p3;->b(Ljava/util/List;)V

    return-void
.end method
