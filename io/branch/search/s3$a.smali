.class public final Lio/branch/search/s3$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/s3;-><init>(Landroid/content/Context;Lio/branch/search/k3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TT;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/branch/search/s3$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/s3$a;

    invoke-direct {v0}, Lio/branch/search/s3$a;-><init>()V

    sput-object v0, Lio/branch/search/s3$a;->a:Lio/branch/search/s3$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/room/RoomDatabase;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    const-string p1, "it.openHelper"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    const-string p1, "SELECT * FROM sqlite_master"

    invoke-interface {p0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_18
    :try_start_18
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_24

    if-eqz p1, :cond_1f

    goto :goto_18

    :cond_1f
    const/4 p1, 0x0

    invoke-static {p0, p1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_24
    move-exception p1

    :try_start_25
    throw p1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    invoke-static {p0, p1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p0, p1}, Lio/branch/search/s3$a;->a(Landroidx/room/RoomDatabase;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
