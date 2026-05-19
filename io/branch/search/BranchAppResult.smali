.class public Lio/branch/search/BranchAppResult;
.super Lio/branch/search/BranchBaseAppResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/BranchBaseAppResult<",
        "Lio/branch/search/BranchLinkResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/BranchAppResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/BranchAppResult$a;

    invoke-direct {v0}, Lio/branch/search/BranchAppResult$a;-><init>()V

    sput-object v0, Lio/branch/search/BranchAppResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1  # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lio/branch/search/BranchLinkResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {p0, p1, v0}, Lio/branch/search/BranchBaseAppResult;-><init>(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lio/branch/search/BranchAppResult$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/branch/search/BranchAppResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLio/branch/search/l;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 28
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9  # Lio/branch/search/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F",
            "Lio/branch/search/l;",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLinkResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p9

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v0 .. v14}, Lio/branch/search/BranchBaseAppResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/util/List;Lio/branch/search/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lio/branch/search/p0;Lorg/json/JSONObject;)Lio/branch/search/BranchAppResult;
    .registers 26
    .param p0  # Lio/branch/search/p0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "app_name"

    invoke-static {v1, v2}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_store_id"

    invoke-static {v1, v3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "app_icon_url"

    invoke-static {v1, v3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "score"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v14, v3

    const-string v3, "ranking_hint"

    invoke-static {v1, v3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "deepview_extra_text"

    invoke-static {v1, v3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v3, "request_id"

    invoke-static {v1, v3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v12}, Lio/branch/search/Util;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    const-string v3, "impression_url"

    invoke-static {v1, v3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v3, "deep_links"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    if-eqz v11, :cond_9b

    move v8, v9

    :goto_52
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v8, v3, :cond_9b

    invoke-virtual {v11, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_68

    move/from16 v21, v8

    move-object/from16 v23, v11

    move/from16 v20, v14

    move-object/from16 v22, v15

    move-object v15, v10

    goto :goto_90

    :cond_68
    new-instance v7, Lio/branch/search/BranchLinkResult;

    iget-object v6, v0, Lio/branch/search/p0;->i:Ljava/lang/String;

    move-object v3, v7

    move-object/from16 v5, v17

    move/from16 v20, v14

    move-object v14, v7

    move-object v7, v2

    move/from16 v21, v8

    move-object v8, v12

    move-object/from16 v22, v15

    move v15, v9

    move-object v9, v13

    move-object v15, v10

    move-object/from16 v10, v16

    move-object/from16 v23, v11

    move-object/from16 v11, v19

    invoke-direct/range {v3 .. v11}, Lio/branch/search/BranchLinkResult;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lio/branch/search/p0;->c(Lio/branch/search/AnalyticsEntity;)V

    invoke-virtual {v14, v0}, Lio/branch/search/BranchBaseLinkResult;->validate(Lio/branch/search/p0;)Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_90
    :goto_90
    add-int/lit8 v8, v21, 0x1

    move-object v10, v15

    move/from16 v14, v20

    move-object/from16 v15, v22

    move-object/from16 v11, v23

    const/4 v9, 0x0

    goto :goto_52

    :cond_9b
    move/from16 v20, v14

    move-object/from16 v22, v15

    move-object v15, v10

    if-nez v18, :cond_ce

    const v3, 0x7fffffff

    const-string v4, "not_installed_max_results"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v3

    :goto_b4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_c8

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/branch/search/BranchLinkResult;

    const-string v6, "Results exceed the not_installed_max_results value."

    invoke-virtual {v0, v5, v6}, Lio/branch/search/p0;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b4

    :cond_c8
    const/4 v4, 0x0

    invoke-virtual {v15, v4, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    move-object v15, v3

    :cond_ce
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_d6

    return-object v4

    :cond_d6
    new-instance v16, Lio/branch/search/BranchAppResult;

    iget-object v0, v0, Lio/branch/search/p0;->h:Ljava/lang/String;

    const/16 v6, -0x4d2

    sget-object v14, Lio/branch/search/l;->e:Lio/branch/search/l;

    const-string v3, "container_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_eb

    invoke-static {v1, v3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_ed

    :cond_eb
    const-string v3, "remote_search"

    :goto_ed
    move-object/from16 v18, v3

    const-string v3, "content_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_fc

    invoke-static {v1, v3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_fd

    :cond_fc
    move-object v1, v4

    :goto_fd
    move-object/from16 v3, v16

    move-object v4, v0

    move-object/from16 v5, v17

    move-object v7, v12

    move-object v8, v2

    move-object v9, v13

    move-object/from16 v10, v22

    move/from16 v11, v20

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v18

    move-object v15, v1

    invoke-direct/range {v3 .. v15}, Lio/branch/search/BranchAppResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLio/branch/search/l;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v16
.end method


# virtual methods
.method public getDeepLinks()Ljava/util/List;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLinkResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getScore()F
    .registers 1

    iget p0, p0, Lio/branch/search/BranchBaseAppResult;->f:F

    return p0
.end method

.method public isSearchDeepLinkAvailable()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public loadIconDrawable(Lio/branch/search/BranchDrawableCallback;)V
    .registers 2
    .param p1  # Lio/branch/search/BranchDrawableCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchDrawableCallback<",
            "Lio/branch/search/BranchAppResult;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/branch/search/BranchBaseAppResult;->a(Lio/branch/search/BranchDrawableCallback;)V

    return-void
.end method

.method public openApp(Landroid/content/Context;Z)Lio/branch/search/BranchSearchError;
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public openSearchDeepLink(Landroid/content/Context;Z)Lio/branch/search/BranchSearchError;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Use of deprecated method, openSearchDeepLink()"

    invoke-static {p0, p1}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
