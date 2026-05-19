.class public final Lio/branch/search/r3$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/k3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/r3;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/branch/search/k3<",
        "Lio/branch/search/internal/sqlite/NetworkSQLiteDB;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BranchSdkNetworkRoomDatabase"

    iput-object v0, p0, Lio/branch/search/r3$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;)Landroidx/room/RoomDatabase;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/r3$a;->b(Landroid/content/Context;)Lio/branch/search/internal/sqlite/NetworkSQLiteDB;

    move-result-object p0

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/r3$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(Landroid/content/Context;)Lio/branch/search/internal/sqlite/NetworkSQLiteDB;
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB;

    const-string v0, "BranchSdkNetworkRoomDatabase"

    invoke-static {p1, p0, v0}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p0

    const-string p1, "Room.databaseBuilder(\n  …on()\n            .build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lio/branch/search/internal/sqlite/NetworkSQLiteDB;

    return-object p0
.end method
