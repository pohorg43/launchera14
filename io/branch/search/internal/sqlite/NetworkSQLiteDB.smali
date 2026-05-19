.class public abstract Lio/branch/search/internal/sqlite/NetworkSQLiteDB;
.super Landroidx/room/RoomDatabase;
.source ""


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lio/branch/search/h3;
    }
    exportSchema = false
    version = 0x1
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract c()Lio/branch/search/i3;
.end method
