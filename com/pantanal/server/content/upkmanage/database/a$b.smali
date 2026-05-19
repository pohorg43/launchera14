.class public Lcom/pantanal/server/content/upkmanage/database/a$b;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantanal/server/content/upkmanage/database/a;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Li3/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/pantanal/server/content/upkmanage/database/a;Landroidx/room/RoomDatabase;)V
    .registers 3

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Li3/a;

    iget-wide v0, p2, Li3/a;->a:J

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 1

    const-string p0, "DELETE FROM `UpkEntity` WHERE `_id` = ?"

    return-object p0
.end method
