.class public Lio/branch/search/d4$h;
.super Landroidx/room/SharedSQLiteStatement;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/d4;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lio/branch/search/d4;Landroidx/room/RoomDatabase;)V
    .registers 3

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .registers 1

    const-string p0, "DELETE FROM app_clicks WHERE timestamp NOT IN (SELECT timestamp FROM app_clicks ORDER BY timestamp DESC LIMIT ?)"

    return-object p0
.end method
