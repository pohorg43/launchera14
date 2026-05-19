.class public Lcom/pantanal/server/content/upkmanage/database/a$a;
.super Landroidx/room/EntityInsertionAdapter;
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
        "Landroidx/room/EntityInsertionAdapter<",
        "Li3/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/pantanal/server/content/upkmanage/database/a;Landroidx/room/RoomDatabase;)V
    .registers 3

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Li3/a;

    iget-wide v0, p2, Li3/a;->a:J

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Li3/a;->b:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p0, :cond_11

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_14

    :cond_11
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_14
    iget-object p0, p2, Li3/a;->c:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p0, :cond_1d

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_20

    :cond_1d
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_20
    iget-object p0, p2, Li3/a;->d:Ljava/lang/String;

    const/4 v0, 0x4

    if-nez p0, :cond_29

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2c

    :cond_29
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_2c
    iget-object p0, p2, Li3/a;->e:Ljava/lang/String;

    const/4 v0, 0x5

    if-nez p0, :cond_35

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_38

    :cond_35
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_38
    iget-object p0, p2, Li3/a;->f:Ljava/lang/String;

    const/4 v0, 0x6

    if-nez p0, :cond_41

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_44

    :cond_41
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_44
    const/4 p0, 0x7

    iget v0, p2, Li3/a;->g:I

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Li3/a;->h:Ljava/lang/String;

    const/16 v0, 0x8

    if-nez p0, :cond_55

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_58

    :cond_55
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_58
    iget-object p0, p2, Li3/a;->i:Ljava/lang/String;

    const/16 v0, 0x9

    if-nez p0, :cond_62

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_65

    :cond_62
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_65
    const/16 p0, 0xa

    iget-wide v0, p2, Li3/a;->j:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p0, p2, Li3/a;->k:Ljava/lang/String;

    const/16 v0, 0xb

    if-nez p0, :cond_76

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_79

    :cond_76
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_79
    iget-object p0, p2, Li3/a;->l:Ljava/lang/String;

    const/16 v0, 0xc

    if-nez p0, :cond_83

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_86

    :cond_83
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_86
    iget-object p0, p2, Li3/a;->m:Ljava/lang/String;

    const/16 v0, 0xd

    if-nez p0, :cond_90

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_93

    :cond_90
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_93
    const/16 p0, 0xe

    iget-wide v0, p2, Li3/a;->n:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/16 p0, 0xf

    iget p2, p2, Li3/a;->o:I

    int-to-long v0, p2

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 1

    const-string p0, "INSERT OR REPLACE INTO `UpkEntity` (`_id`,`service_id`,`hashed_service_id`,`package_name`,`label`,`icons`,`version_code`,`version_name`,`files_directory_path`,`last_launch_time`,`click_json_string`,`host_package_name`,`host_component_name`,`install_time`,`use_template`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0
.end method
