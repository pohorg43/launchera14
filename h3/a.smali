.class public interface abstract Lh3/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract a()Lp7/d;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM UpkEntity"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp7/d<",
            "Ljava/util/List<",
            "Li3/a;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "delete from UpkEntity where service_id = :serviceId"
    .end annotation
.end method
