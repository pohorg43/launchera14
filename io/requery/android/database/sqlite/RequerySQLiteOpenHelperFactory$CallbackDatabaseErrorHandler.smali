.class public final Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackDatabaseErrorHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/requery/android/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallbackDatabaseErrorHandler"
.end annotation


# instance fields
.field public final callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackDatabaseErrorHandler;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    return-void
.end method


# virtual methods
.method public onCorruption(Lio/requery/android/database/sqlite/SQLiteDatabase;)V
    .registers 2

    iget-object p0, p0, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackDatabaseErrorHandler;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onCorruption(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method
