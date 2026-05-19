.class public abstract Lio/branch/search/f2$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# instance fields
.field public final d:Lio/branch/search/p0;

.field public final e:Lio/branch/search/l;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lp1/c<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Lio/branch/search/w1;

.field public final h:Lio/branch/search/w1;

.field public final i:Lio/branch/search/w1;

.field public final j:Lio/branch/search/m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/branch/search/m;Lio/branch/search/p0;Lio/branch/search/l;)V
    .registers 6
    .param p1  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/p0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/f2$e;->f:Ljava/util/Map;

    new-instance v0, Lio/branch/search/w1;

    const-string v1, "ANA_"

    invoke-direct {v0, v1}, Lio/branch/search/w1;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/f2$e;->g:Lio/branch/search/w1;

    new-instance v0, Lio/branch/search/w1;

    const-string v1, "ANL_"

    invoke-direct {v0, v1}, Lio/branch/search/w1;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/f2$e;->h:Lio/branch/search/w1;

    new-instance v0, Lio/branch/search/w1;

    const-string v1, "ANR_"

    invoke-direct {v0, v1}, Lio/branch/search/w1;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/f2$e;->i:Lio/branch/search/w1;

    iput-object p2, p0, Lio/branch/search/f2$e;->d:Lio/branch/search/p0;

    iput-object p3, p0, Lio/branch/search/f2$e;->e:Lio/branch/search/l;

    iput-object p1, p0, Lio/branch/search/f2$e;->j:Lio/branch/search/m;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;Lio/branch/search/m;)Lio/branch/search/BranchLocalAppResult;
    .registers 44
    .param p2  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "click_tracking_url"

    const-string v4, "linking"

    const-string v5, "image_url"

    const-string v6, "description"

    iget-object v7, v1, Lio/branch/search/f2$e;->i:Lio/branch/search/w1;

    invoke-virtual {v7, v0}, Lio/branch/search/w1;->b(Landroid/database/Cursor;)Z

    move-result v7

    const-string v8, "BaseLocal.cursorToAppResult"

    const-string v9, "request_id"

    const/4 v10, 0x0

    if-eqz v7, :cond_3c

    iget-object v3, v1, Lio/branch/search/f2$e;->i:Lio/branch/search/w1;

    invoke-virtual {v3, v0}, Lio/branch/search/w1;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v1, v1, Lio/branch/search/f2$e;->d:Lio/branch/search/p0;

    invoke-virtual {v1, v0}, Lio/branch/search/p0;->a(Ljava/util/Map;)V

    goto :goto_3b

    :cond_29
    new-instance v0, Lh4/j;

    iget-object v1, v1, Lio/branch/search/f2$e;->d:Lio/branch/search/p0;

    iget-object v1, v1, Lio/branch/search/p0;->f:Ljava/lang/String;

    invoke-direct {v0, v9, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "requestExtras = null"

    invoke-virtual {v2, v8, v1, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_3b
    return-object v10

    :cond_3c
    const-string v7, "app_name"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v11, "app_store_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const-string v11, "user_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_61

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    goto :goto_7a

    :cond_61
    invoke-virtual/range {p2 .. p2}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v12

    const-class v13, Landroid/os/UserManager;

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-long v13, v11

    invoke-virtual {v12, v13, v14}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v11

    :goto_7a
    move-object/from16 v28, v11

    const-string v11, "app_icon_url"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v15, "ranking_hint"

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const/4 v14, -0x1

    if-eq v11, v14, :cond_99

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    goto :goto_9a

    :cond_99
    move-object v13, v10

    :goto_9a
    iget-object v11, v1, Lio/branch/search/f2$e;->d:Lio/branch/search/p0;

    invoke-virtual {v11}, Lio/branch/search/p0;->e()I

    move-result v11

    const-string v12, "entity_id"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v14, "name"

    move-object/from16 v17, v12

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v8

    const-string v8, "bundle_source_id"

    move-object/from16 v19, v12

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v20, v14

    const/4 v14, -0x1

    if-eq v12, v14, :cond_d5

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v12

    goto :goto_d7

    :cond_d5
    const/16 v16, 0x0

    :goto_d7
    const-string v12, "app_linking"

    move-object/from16 v21, v13

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v14, :cond_ec

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v22, v12

    goto :goto_ee

    :cond_ec
    const/16 v22, 0x0

    :goto_ee
    const-string v12, "app_click_tracking_url"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v14, :cond_101

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v23, v12

    goto :goto_103

    :cond_101
    const/16 v23, 0x0

    :goto_103
    const-string v13, "container_type"

    const-string v12, "local_search"

    invoke-static {v0, v13, v12}, Lio/branch/search/d5;->b(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v30, v9

    new-instance v9, Lio/branch/search/BranchLocalAppResult;

    iget-object v14, v1, Lio/branch/search/f2$e;->d:Lio/branch/search/p0;

    move-object/from16 v25, v12

    iget-object v12, v14, Lio/branch/search/p0;->h:Ljava/lang/String;

    iget-object v14, v14, Lio/branch/search/p0;->f:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    iget-object v11, v1, Lio/branch/search/f2$e;->e:Lio/branch/search/l;

    const/16 v31, 0x0

    move-object/from16 v32, v11

    move-object v11, v9

    move-object/from16 v36, v3

    move-object/from16 v33, v8

    move-object/from16 v35, v16

    move-object/from16 v3, v17

    move-object/from16 v8, v19

    move-object/from16 v34, v25

    move-object/from16 v38, v13

    move-object/from16 v37, v21

    move-object v13, v14

    move-object/from16 v39, v4

    move-object/from16 v4, v20

    move-object/from16 v14, v26

    move-object/from16 v40, v15

    move-object/from16 v15, v27

    move-object/from16 v16, v28

    move-object/from16 v17, v7

    move-object/from16 v19, v37

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v2

    move-object/from16 v23, v32

    move-object/from16 v24, v35

    move-object/from16 v26, v31

    invoke-direct/range {v11 .. v26}, Lio/branch/search/BranchLocalAppResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/branch/search/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v1, Lio/branch/search/f2$e;->d:Lio/branch/search/p0;

    iget-object v12, v1, Lio/branch/search/f2$e;->g:Lio/branch/search/w1;

    invoke-virtual {v12, v0}, Lio/branch/search/w1;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Lio/branch/search/p0;->a(Lio/branch/search/AnalyticsEntity;Ljava/util/Map;)V

    if-nez v10, :cond_162

    if-nez v8, :cond_162

    return-object v9

    :cond_162
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    :try_start_167
    invoke-virtual {v12, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v39

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_195} :catch_215

    move-object/from16 v3, v34

    move-object/from16 v4, v38

    :try_start_199
    invoke-virtual {v12, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v10, v37

    if-eqz v10, :cond_1a5

    move-object/from16 v4, v40

    invoke-virtual {v12, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1a5
    move-object/from16 v4, v36

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_1ab} :catch_213

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1bb

    const-string v5, "click_tracking_link"

    :try_start_1b0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1bb
    move-object/from16 v4, v33

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_1c8

    move-object/from16 v5, v35

    invoke-virtual {v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1c8} :catch_213

    :cond_1c8
    const-string v3, "impression_url"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_1db

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v20, v10

    goto :goto_1dd

    :cond_1db
    const/16 v20, 0x0

    :goto_1dd
    new-instance v3, Lio/branch/search/BranchLocalLinkResult;

    iget-object v4, v1, Lio/branch/search/f2$e;->d:Lio/branch/search/p0;

    iget-object v13, v4, Lio/branch/search/p0;->i:Ljava/lang/String;

    iget-object v14, v4, Lio/branch/search/p0;->f:Ljava/lang/String;

    invoke-virtual {v4}, Lio/branch/search/p0;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v4, v1, Lio/branch/search/f2$e;->e:Lio/branch/search/l;

    move-object v11, v3

    move-object/from16 v16, v7

    move-object/from16 v17, v27

    move-object/from16 v18, v28

    move-object/from16 v19, v4

    invoke-direct/range {v11 .. v20}, Lio/branch/search/BranchLocalLinkResult;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/l;Ljava/lang/String;)V

    iget-object v4, v1, Lio/branch/search/f2$e;->d:Lio/branch/search/p0;

    iget-object v5, v1, Lio/branch/search/f2$e;->h:Lio/branch/search/w1;

    invoke-virtual {v5, v0}, Lio/branch/search/w1;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lio/branch/search/p0;->a(Lio/branch/search/AnalyticsEntity;Ljava/util/Map;)V

    iget-object v0, v1, Lio/branch/search/f2$e;->d:Lio/branch/search/p0;

    invoke-virtual {v1, v3, v0}, Lio/branch/search/f2$e;->a(Lio/branch/search/BranchLocalLinkResult;Lio/branch/search/p0;)Z

    move-result v0

    if-eqz v0, :cond_20f

    return-object v9

    :cond_20f
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v9

    :catch_213
    move-exception v0

    goto :goto_218

    :catch_215
    move-exception v0

    move-object/from16 v3, v34

    :goto_218
    const-string v2, "suggested_app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_236

    new-instance v2, Lh4/j;

    iget-object v1, v1, Lio/branch/search/f2$e;->d:Lio/branch/search/p0;

    iget-object v1, v1, Lio/branch/search/p0;->f:Ljava/lang/String;

    move-object/from16 v3, v30

    invoke-direct {v2, v3, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v2, p2

    move-object/from16 v3, v29

    invoke-virtual {v2, v3, v0, v1}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_236
    return-object v9
.end method

.method public a(Lio/branch/search/z0;)Lp1/c;
    .registers 2
    .param p1  # Lio/branch/search/z0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/z0;",
            ")",
            "Lp1/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/branch/search/y0;->b()Lio/branch/search/y0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/branch/search/y0;->a(Lio/branch/search/z0;)Lp1/c;

    move-result-object p0

    return-object p0
.end method

.method public a(Lio/branch/search/BranchLocalLinkResult;Lio/branch/search/p0;)Z
    .registers 3
    .param p1  # Lio/branch/search/BranchLocalLinkResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/p0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Lio/branch/search/BranchBaseLinkResult;->validate(Lio/branch/search/p0;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public b(Landroid/database/Cursor;)Z
    .registers 7

    const-string v0, "can_use_uncached_images"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :cond_16
    :goto_16
    if-nez v2, :cond_60

    const-string v0, "app_icon_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_46

    iget-object v1, p0, Lio/branch/search/f2$e;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lio/branch/search/f2$e;->f:Ljava/util/Map;

    new-instance v3, Lio/branch/search/z0;

    iget-object v4, p0, Lio/branch/search/f2$e;->e:Lio/branch/search/l;

    invoke-direct {v3, v0, v4}, Lio/branch/search/z0;-><init>(Ljava/lang/String;Lio/branch/search/l;)V

    invoke-virtual {p0, v3}, Lio/branch/search/f2$e;->a(Lio/branch/search/z0;)Lp1/c;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    if-eqz p1, :cond_60

    iget-object v0, p0, Lio/branch/search/f2$e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lio/branch/search/f2$e;->f:Ljava/util/Map;

    new-instance v1, Lio/branch/search/z0;

    iget-object v3, p0, Lio/branch/search/f2$e;->e:Lio/branch/search/l;

    invoke-direct {v1, p1, v3}, Lio/branch/search/z0;-><init>(Ljava/lang/String;Lio/branch/search/l;)V

    invoke-virtual {p0, v1}, Lio/branch/search/f2$e;->a(Lio/branch/search/z0;)Lp1/c;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    return v2
.end method
