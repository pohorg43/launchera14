.class public final Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackSQLiteOpenHelper;
.super Lio/requery/android/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallbackSQLiteOpenHelper"
.end annotation


# instance fields
.field public final callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

.field public final configurationOptions:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$ConfigurationOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Ljava/lang/Iterable;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;",
            "Ljava/lang/Iterable<",
            "Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$ConfigurationOptions;",
            ">;)V"
        }
    .end annotation

    iget v4, p3, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->version:I

    new-instance v5, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackDatabaseErrorHandler;

    invoke-direct {v5, p3}, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackDatabaseErrorHandler;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/requery/android/database/sqlite/SQLiteDatabase$CursorFactory;ILio/requery/android/database/DatabaseErrorHandler;)V

    iput-object p3, p0, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackSQLiteOpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    iput-object p4, p0, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackSQLiteOpenHelper;->configurationOptions:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public createConfiguration(Ljava/lang/String;I)Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;
    .registers 3

    invoke-super {p0, p1, p2}, Lio/requery/android/database/sqlite/SQLiteOpenHelper;->createConfiguration(Ljava/lang/String;I)Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    move-result-object p1

    iget-object p0, p0, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackSQLiteOpenHelper;->configurationOptions:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$ConfigurationOptions;

    invoke-interface {p2, p1}, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$ConfigurationOptions;->apply(Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;)Lio/requery/android/database/sqlite/SQLiteDatabaseConfiguration;

    move-result-object p1

    goto :goto_a

    :cond_1b
    return-object p1
.end method

.method public onConfigure(Lio/requery/android/database/sqlite/SQLiteDatabase;)V
    .registers 2

    iget-object p0, p0, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackSQLiteOpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onConfigure(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onCreate(Lio/requery/android/database/sqlite/SQLiteDatabase;)V
    .registers 2

    iget-object p0, p0, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackSQLiteOpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Lio/requery/android/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    iget-object p0, p0, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackSQLiteOpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onDowngrade(Landroidx/sqlite/db/SupportSQLiteDatabase;II)V

    return-void
.end method

.method public onOpen(Lio/requery/android/database/sqlite/SQLiteDatabase;)V
    .registers 2

    iget-object p0, p0, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackSQLiteOpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Lio/requery/android/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    iget-object p0, p0, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackSQLiteOpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onUpgrade(Landroidx/sqlite/db/SupportSQLiteDatabase;II)V

    return-void
.end method
