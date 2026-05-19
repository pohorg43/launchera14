.class public Lio/branch/search/BranchLocalAppResult;
.super Lio/branch/search/BranchBaseAppResult;
.source ""

# interfaces
.implements Lio/branch/search/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/BranchBaseAppResult<",
        "Lio/branch/search/BranchLocalLinkResult;",
        ">;",
        "Lio/branch/search/s;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/j;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/BranchLocalAppResult$a;

    invoke-direct {v0}, Lio/branch/search/BranchLocalAppResult$a;-><init>()V

    sput-object v0, Lio/branch/search/BranchLocalAppResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1  # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lio/branch/search/BranchLocalLinkResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {p0, p1, v0}, Lio/branch/search/BranchBaseAppResult;-><init>(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method public constructor <init>(Lio/branch/search/BranchLocalAppResult;)V
    .registers 2
    .param p1  # Lio/branch/search/BranchLocalAppResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/branch/search/BranchBaseAppResult;-><init>(Lio/branch/search/BranchBaseAppResult;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/branch/search/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 32
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12  # Lio/branch/search/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalLinkResult;",
            ">;",
            "Lio/branch/search/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    invoke-direct/range {v0 .. v14}, Lio/branch/search/BranchBaseAppResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/util/List;Lio/branch/search/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p10

    iput-object v0, v15, Lio/branch/search/BranchLocalAppResult;->m:Ljava/lang/String;

    invoke-static/range {p9 .. p9}, Lio/branch/search/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v15, Lio/branch/search/BranchLocalAppResult;->l:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDestinationPackageName()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getAppName()Ljava/lang/String;

    move-result-object p0

    return-object p0
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
            "Lio/branch/search/BranchLocalAppResult;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/branch/search/BranchBaseAppResult;->a(Lio/branch/search/BranchDrawableCallback;)V

    return-void
.end method

.method public open(Landroid/content/Context;)Lio/branch/search/BranchSearchError;
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->j()Lio/branch/search/IBranchIntentHandler;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p0, p1, v0}, Lio/branch/search/BranchLocalAppResult;->open(Landroid/content/Context;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/BranchSearchError;

    move-result-object p0

    return-object p0
.end method

.method public open(Landroid/content/Context;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/BranchSearchError;
    .registers 12
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    if-eqz p2, :cond_7

    goto :goto_f

    :cond_7
    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration;->j()Lio/branch/search/IBranchIntentHandler;

    move-result-object p2

    :goto_f
    iget-object v1, p0, Lio/branch/search/BranchLocalAppResult;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    iget-object v1, p0, Lio/branch/search/BranchLocalAppResult;->m:Ljava/lang/String;

    sget-object v3, Lio/branch/search/t5;->n:Lio/branch/search/t5;

    invoke-static {v1, v2, v3, v0, v2}, Lio/branch/search/f1;->a(Ljava/lang/String;Lio/branch/search/t1;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)V

    :cond_1f
    iget-object v1, p0, Lio/branch/search/BranchLocalAppResult;->l:Ljava/util/List;

    if-eqz v1, :cond_4d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lio/branch/search/BranchLocalAppResult;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/j;

    invoke-virtual {v3, p1, p0, p2}, Lio/branch/search/j;->c(Landroid/content/Context;Lio/branch/search/s;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/j$g;

    move-result-object v4

    iget-boolean v5, v4, Lio/branch/search/j$g;->a:Z

    if-eqz v5, :cond_2f

    invoke-static {v3}, Lio/branch/search/j;->a(Lio/branch/search/j;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, v4, Lio/branch/search/j$g;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1, p2}, Lio/branch/search/m;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v2

    :cond_4d
    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->isAd()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6d

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getLinks()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/BranchLocalLinkResult;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/BranchBaseLinkResult;->open(Landroid/content/Context;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/BranchSearchError;

    move-result-object p0

    return-object p0

    :cond_6d
    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BranchLocalAppResult.openAd"

    invoke-static {v3, v1}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    invoke-interface {p2, p1, v1, v3}, Lio/branch/search/IBranchIntentHandler;->openApp(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_9f

    const-string p1, "launch_intent"

    invoke-virtual {v0, p0, p1}, Lio/branch/search/m;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/e4;

    iget-object v4, p0, Lio/branch/search/AnalyticsEntity;->sessionId:Ljava/lang/String;

    iget-object v5, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lio/branch/search/e4;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    iget-object p0, v0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-virtual {p0, p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/e4;)V

    return-object v2

    :cond_9f
    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BranchLocalAppResult.open"

    invoke-static {p1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/BranchSearchError;

    sget-object p1, Lio/branch/search/BranchSearchError$ERR_CODE;->l:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p0, p1}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    return-object p0
.end method
