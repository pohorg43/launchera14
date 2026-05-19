.class public Lcom/pantanal/server/content/upkmanage/database/a$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantanal/server/content/upkmanage/database/a;->a()Lp7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Li3/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/room/RoomSQLiteQuery;

.field public final synthetic b:Lcom/pantanal/server/content/upkmanage/database/a;


# direct methods
.method public constructor <init>(Lcom/pantanal/server/content/upkmanage/database/a;Landroidx/room/RoomSQLiteQuery;)V
    .registers 3

    iput-object p1, p0, Lcom/pantanal/server/content/upkmanage/database/a$i;->b:Lcom/pantanal/server/content/upkmanage/database/a;

    iput-object p2, p0, Lcom/pantanal/server/content/upkmanage/database/a$i;->a:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantanal/server/content/upkmanage/database/a$i;->b:Lcom/pantanal/server/content/upkmanage/database/a;

    iget-object v1, v1, Lcom/pantanal/server/content/upkmanage/database/a;->a:Landroidx/room/RoomDatabase;

    iget-object v0, v0, Lcom/pantanal/server/content/upkmanage/database/a$i;->a:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_e
    const-string v0, "_id"

    invoke-static {v1, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v2, "service_id"

    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "hashed_service_id"

    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "package_name"

    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "label"

    invoke-static {v1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "icons"

    invoke-static {v1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "version_code"

    invoke-static {v1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "version_name"

    invoke-static {v1, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "files_directory_path"

    invoke-static {v1, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "last_launch_time"

    invoke-static {v1, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "click_json_string"

    invoke-static {v1, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "host_package_name"

    invoke-static {v1, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "host_component_name"

    invoke-static {v1, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "install_time"

    invoke-static {v1, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "use_template"

    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v16, v3

    new-instance v3, Ljava/util/ArrayList;

    move/from16 v17, v15

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(I)V

    :goto_75
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_14f

    new-instance v15, Li3/a;

    invoke-direct {v15}, Li3/a;-><init>()V

    move/from16 v18, v13

    move/from16 v19, v14

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-wide v13, v15, Li3/a;->a:J

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_92

    const/4 v13, 0x0

    goto :goto_96

    :cond_92
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_96
    iput-object v13, v15, Li3/a;->b:Ljava/lang/String;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_a0

    const/4 v13, 0x0

    goto :goto_a4

    :cond_a0
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_a4
    iput-object v13, v15, Li3/a;->c:Ljava/lang/String;

    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_ae

    const/4 v13, 0x0

    goto :goto_b2

    :cond_ae
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_b2
    iput-object v13, v15, Li3/a;->d:Ljava/lang/String;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_bc

    const/4 v13, 0x0

    goto :goto_c0

    :cond_bc
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_c0
    iput-object v13, v15, Li3/a;->e:Ljava/lang/String;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_ca

    const/4 v13, 0x0

    goto :goto_ce

    :cond_ca
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_ce
    iput-object v13, v15, Li3/a;->f:Ljava/lang/String;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v15, Li3/a;->g:I

    invoke-interface {v1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_de

    const/4 v13, 0x0

    goto :goto_e2

    :cond_de
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_e2
    iput-object v13, v15, Li3/a;->h:Ljava/lang/String;

    invoke-interface {v1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_ec

    const/4 v13, 0x0

    goto :goto_f0

    :cond_ec
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_f0
    iput-object v13, v15, Li3/a;->i:Ljava/lang/String;

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-wide v13, v15, Li3/a;->j:J

    invoke-interface {v1, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_100

    const/4 v13, 0x0

    goto :goto_104

    :cond_100
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_104
    iput-object v13, v15, Li3/a;->k:Ljava/lang/String;

    move/from16 v13, v18

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_110

    const/4 v14, 0x0

    goto :goto_114

    :cond_110
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_114
    iput-object v14, v15, Li3/a;->l:Ljava/lang/String;

    move/from16 v14, v19

    invoke-interface {v1, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_122

    move/from16 v19, v0

    const/4 v0, 0x0

    goto :goto_12a

    :cond_122
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move/from16 v19, v0

    move-object/from16 v0, v18

    :goto_12a
    iput-object v0, v15, Li3/a;->m:Ljava/lang/String;

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v17, v4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v15, Li3/a;->n:J

    move/from16 v4, v16

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v15, Li3/a;->o:I

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_143
    .catchall {:try_start_e .. :try_end_143} :catchall_153

    move/from16 v16, v4

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v17, v0

    move/from16 v0, v19

    goto/16 :goto_75

    :cond_14f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_153
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public finalize()V
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/upkmanage/database/a$i;->a:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
