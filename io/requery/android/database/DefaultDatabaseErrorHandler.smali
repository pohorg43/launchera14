.class public final Lio/requery/android/database/DefaultDatabaseErrorHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/requery/android/database/DatabaseErrorHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deleteDatabaseFile(Ljava/lang/String;)V
    .registers 3

    const-string p0, ":memory:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_38

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_13

    goto :goto_38

    :cond_13
    const-string p0, "deleting the database file: "

    const-string v0, "DefaultDatabaseError"

    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1a
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/requery/android/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_23

    goto :goto_38

    :catch_23
    move-exception p0

    const-string p1, "delete failed: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :goto_38
    return-void
.end method

.method public onCorruption(Lio/requery/android/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const-string v0, "Corruption reported by sqlite on database: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDatabaseError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/requery/android/database/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    return-void

    :cond_24
    const/4 v0, 0x0

    :try_start_25
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_29} :catch_2c
    .catchall {:try_start_25 .. :try_end_29} :catchall_2a

    goto :goto_2c

    :catchall_2a
    move-exception v1

    goto :goto_30

    :catch_2c
    :goto_2c
    :try_start_2c
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteClosable;->close()V
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_2f} :catch_52
    .catchall {:try_start_2c .. :try_end_2f} :catchall_2a

    goto :goto_52

    :goto_30
    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/requery/android/database/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    goto :goto_36

    :cond_4a
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/requery/android/database/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    :cond_51
    throw v1

    :catch_52
    :goto_52
    if-eqz v0, :cond_6c

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_58
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/requery/android/database/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    goto :goto_58

    :cond_6c
    invoke-virtual {p1}, Lio/requery/android/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/requery/android/database/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    :cond_73
    return-void
.end method
