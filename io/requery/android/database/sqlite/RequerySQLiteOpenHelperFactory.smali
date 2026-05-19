.class public final Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$ConfigurationOptions;,
        Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackDatabaseErrorHandler;,
        Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackSQLiteOpenHelper;
    }
.end annotation


# instance fields
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
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$ConfigurationOptions;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory;->configurationOptions:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .registers 5

    new-instance v0, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackSQLiteOpenHelper;

    iget-object v1, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->context:Landroid/content/Context;

    iget-object v2, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->name:Ljava/lang/String;

    iget-object p1, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    iget-object p0, p0, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory;->configurationOptions:Ljava/lang/Iterable;

    invoke-direct {v0, v1, v2, p1, p0}, Lio/requery/android/database/sqlite/RequerySQLiteOpenHelperFactory$CallbackSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Ljava/lang/Iterable;)V

    return-object v0
.end method
