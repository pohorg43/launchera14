.class public abstract Lio/branch/search/BranchBaseAppResult;
.super Lio/branch/search/AnalyticsEntity;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Link:Lio/branch/search/BranchBaseLinkResult;",
        ">",
        "Lio/branch/search/AnalyticsEntity;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/UserHandle;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:F

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "T",
            "Link;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lio/branch/search/l;

.field public i:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final k:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)V
    .registers 6
    .param p1  # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Parcelable$Creator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/os/Parcelable$Creator<",
            "T",
            "Link;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/branch/search/AnalyticsEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/AnalyticsEntity;->sessionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lio/branch/search/BranchBaseAppResult;->f:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/BranchBaseAppResult;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_47
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/BranchBaseLinkResult;

    invoke-virtual {v0, p0}, Lio/branch/search/BranchBaseLinkResult;->setParent(Lio/branch/search/BranchBaseAppResult;)V

    goto :goto_47

    :cond_57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/branch/search/l;->valueOf(Ljava/lang/String;)Lio/branch/search/l;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/BranchBaseAppResult;->h:Lio/branch/search/l;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/BranchBaseAppResult;)V
    .registers 5
    .param p1  # Lio/branch/search/BranchBaseAppResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lio/branch/search/AnalyticsEntity;->apiName:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    iget-object v2, p1, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1, v2}, Lio/branch/search/AnalyticsEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p1, Lio/branch/search/AnalyticsEntity;->sessionId:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/AnalyticsEntity;->sessionId:Ljava/lang/String;

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->c:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->c:Ljava/lang/String;

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->e:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->e:Ljava/lang/String;

    iget v0, p1, Lio/branch/search/BranchBaseAppResult;->f:F

    iput v0, p0, Lio/branch/search/BranchBaseAppResult;->f:F

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->g:Ljava/util/List;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->g:Ljava/util/List;

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->h:Lio/branch/search/l;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->h:Lio/branch/search/l;

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    iget-object v0, p1, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    iput-object v0, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    iput-object p1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/util/List;Lio/branch/search/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
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
    .param p10  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11  # Lio/branch/search/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
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
            "F",
            "Ljava/util/List<",
            "T",
            "Link;",
            ">;",
            "Lio/branch/search/l;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/branch/search/AnalyticsEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lio/branch/search/BranchAnalytics;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/AnalyticsEntity;->sessionId:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    iput-object p6, p0, Lio/branch/search/BranchBaseAppResult;->c:Ljava/lang/String;

    iput-object p7, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    iput-object p8, p0, Lio/branch/search/BranchBaseAppResult;->e:Ljava/lang/String;

    iput p9, p0, Lio/branch/search/BranchBaseAppResult;->f:F

    iput-object p10, p0, Lio/branch/search/BranchBaseAppResult;->g:Ljava/util/List;

    iput-object p11, p0, Lio/branch/search/BranchBaseAppResult;->h:Lio/branch/search/l;

    iput-object p12, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    iput-object p13, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    iput-object p14, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lio/branch/search/BranchBaseAppResult;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchBaseLinkResult;

    invoke-virtual {v1, p0}, Lio/branch/search/BranchBaseLinkResult;->setParent(Lio/branch/search/BranchBaseAppResult;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public a(Lio/branch/search/BranchDrawableCallback;)V
    .registers 6
    .param p1  # Lio/branch/search/BranchDrawableCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<App:",
            "Lio/branch/search/BranchBaseAppResult<",
            "*>;>(",
            "Lio/branch/search/BranchDrawableCallback<",
            "TApp;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/branch/search/h5;->a(Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/m;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_14

    :goto_10
    invoke-interface {p1, p0, v0}, Lio/branch/search/BranchDrawableCallback;->a(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V

    goto :goto_51

    :cond_14
    iget-object v0, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {}, Lio/branch/search/y0;->b()Lio/branch/search/y0;

    move-result-object v0

    new-instance v1, Lio/branch/search/z0;

    iget-object v2, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    iget-object v3, p0, Lio/branch/search/BranchBaseAppResult;->h:Lio/branch/search/l;

    invoke-direct {v1, v2, v3}, Lio/branch/search/z0;-><init>(Ljava/lang/String;Lio/branch/search/l;)V

    new-instance v2, Lio/branch/search/BranchBaseAppResult$a;

    invoke-direct {v2, p0, p1}, Lio/branch/search/BranchBaseAppResult$a;-><init>(Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchDrawableCallback;)V

    invoke-virtual {v0, v1, v2}, Lio/branch/search/y0;->a(Lio/branch/search/z0;Lio/branch/search/y0$a;)V

    goto :goto_51

    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "App.loadIconDrawableInternal"

    invoke-static {v1, v0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_10

    :goto_51
    return-void
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getAppIconUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getClickJson()Lorg/json/JSONObject;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getSessionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "analytics_window_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    const-string v2, "container_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_45
    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_54

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    const-string v2, "entity_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_54
    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    const-string v2, "bundle_source_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_63
    return-object v0
.end method

.method public getContainerType()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    return-object p0
.end method

.method public getImpressionJson()Lorg/json/JSONObject;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getSessionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "analytics_window_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    const-string v2, "container_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_38
    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    const-string v2, "entity_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_47
    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    const-string v2, "bundle_source_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_56
    return-object v0
.end method

.method public getLinks()Ljava/util/List;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "T",
            "Link;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->g:Ljava/util/List;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getParseJson()Lorg/json/JSONObject;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    const-string v2, "container_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_26
    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    const-string v2, "entity_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_35
    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    const-string v2, "bundle_source_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_44
    return-object v0
.end method

.method public getRemovalJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "reason"

    invoke-static {p0, v0, v1, p1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2b

    iget-object p1, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    const-string v1, "container_type"

    invoke-static {p0, v0, v1, p1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2b
    iget-object p1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3a

    iget-object p1, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    const-string v1, "entity_type"

    invoke-static {p0, v0, v1, p1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3a
    iget-object p1, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_49

    iget-object p1, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    const-string v1, "bundle_source_id"

    invoke-static {p0, v0, v1, p1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_49
    return-object v0
.end method

.method public getResultType()Lio/branch/search/l;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->h:Lio/branch/search/l;

    return-object p0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    return-object p0
.end method

.method public isAd()Z
    .registers 2

    iget-object v0, p0, Lio/branch/search/BranchBaseAppResult;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "featured"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public loadIconDrawable(Landroid/widget/ImageView;)V
    .registers 9
    .param p1  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lio/branch/search/BranchBaseAppResult;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/branch/search/h5;->a(Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/m;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p0, Lio/branch/search/R$id;->branch_url_id:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_54

    :cond_1a
    iget-object v0, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {}, Lio/branch/search/y0;->b()Lio/branch/search/y0;

    move-result-object v1

    new-instance v2, Lio/branch/search/z0;

    iget-object v0, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->h:Lio/branch/search/l;

    invoke-direct {v2, v0, p0}, Lio/branch/search/z0;-><init>(Ljava/lang/String;Lio/branch/search/l;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/branch/search/y0;->a(Lio/branch/search/z0;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :cond_37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "App.loadIconDrawable"

    invoke-static {p1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    return-void
.end method

.method public prepareUnifiedEntity()Lio/branch/search/g4;
    .registers 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    new-instance v10, Lio/branch/search/g4;

    iget-object v2, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lio/branch/search/g4;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;J)V

    return-object v10
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lio/branch/search/AnalyticsEntity;->apiName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lio/branch/search/AnalyticsEntity;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->b:Landroid/os/UserHandle;

    invoke-static {p2, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lio/branch/search/BranchBaseAppResult;->f:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->g:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->h:Lio/branch/search/l;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseAppResult;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/BranchBaseAppResult;->k:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
