.class public abstract Lio/branch/search/BranchBaseLinkResult;
.super Lio/branch/search/AnalyticsEntity;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Lio/branch/search/s;


# static fields
.field private static final BUNDLE_SOURCE_ID_KEY:Ljava/lang/String; = "bundle_source_id"

.field public static final LINK_CONTAINER_TYPE:Ljava/lang/String; = "container_type"

.field public static final LINK_CONTENT_TYPE:Ljava/lang/String; = "entity_type"

.field public static final LINK_DESC_KEY:Ljava/lang/String; = "description"

.field public static final LINK_ENTITY_ID_KEY:Ljava/lang/String; = "entity_id"

.field public static final LINK_HANDLERS:Ljava/lang/String; = "linking"

.field public static final LINK_IMAGE_URL_KEY:Ljava/lang/String; = "image_url"

.field public static final LINK_NAME_KEY:Ljava/lang/String; = "name"

.field public static final LINK_RANKING_HINT_KEY:Ljava/lang/String; = "ranking_hint"

.field public static final LINK_RESULT_ID_KEY:Ljava/lang/String; = "result_id"

.field public static final LINK_TRACKING_KEY:Ljava/lang/String; = "click_tracking_link"

.field private static final TAG:Ljava/lang/String; = "BranchBaseLinkResult"


# instance fields
.field private app_name:Ljava/lang/String;

.field private bundle_source_id:Ljava/lang/String;

.field private cachedShortcut:Lio/branch/search/j$h;

.field private cachedShortcutSearchDone:Z

.field private click_tracking_url:Ljava/lang/String;

.field public final containerType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final contentType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field public destination_store_id:Ljava/lang/String;

.field public entity_id:Ljava/lang/String;

.field public final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/j;",
            ">;"
        }
    .end annotation
.end field

.field public image_url:Ljava/lang/String;

.field private impressionUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parent:Lio/branch/search/BranchBaseAppResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;"
        }
    .end annotation
.end field

.field public ranking_hint:Ljava/lang/String;

.field private resultType:Lio/branch/search/l;

.field public userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1  # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/branch/search/AnalyticsEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->handlers:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->cachedShortcut:Lio/branch/search/j$h;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/branch/search/BranchBaseLinkResult;->cachedShortcutSearchDone:Z

    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->image_url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->app_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->destination_store_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->click_tracking_url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->ranking_hint:Ljava/lang/String;

    sget-object v1, Lio/branch/search/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/search/l;->valueOf(Ljava/lang/String;)Lio/branch/search/l;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->resultType:Lio/branch/search/l;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->impressionUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->containerType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/BranchBaseLinkResult;->contentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/l;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 10
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Lio/branch/search/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2, p3, p4}, Lio/branch/search/AnalyticsEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->handlers:Ljava/util/List;

    const/4 p3, 0x0

    iput-object p3, p0, Lio/branch/search/BranchBaseLinkResult;->cachedShortcut:Lio/branch/search/j$h;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lio/branch/search/BranchBaseLinkResult;->cachedShortcutSearchDone:Z

    const-string p4, "entity_id"

    invoke-static {p1, p4}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    const-string p4, "name"

    invoke-static {p1, p4}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lio/branch/search/BranchBaseLinkResult;->name:Ljava/lang/String;

    const-string p4, "description"

    invoke-static {p1, p4}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lio/branch/search/BranchBaseLinkResult;->description:Ljava/lang/String;

    const-string p4, "image_url"

    invoke-static {p1, p4}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lio/branch/search/BranchBaseLinkResult;->image_url:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/BranchBaseLinkResult;->app_name:Ljava/lang/String;

    iput-object p6, p0, Lio/branch/search/BranchBaseLinkResult;->destination_store_id:Ljava/lang/String;

    const-string p4, "click_tracking_link"

    invoke-static {p1, p4}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lio/branch/search/BranchBaseLinkResult;->click_tracking_url:Ljava/lang/String;

    const-string p4, "ranking_hint"

    invoke-static {p1, p4}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lio/branch/search/BranchBaseLinkResult;->ranking_hint:Ljava/lang/String;

    const-string p4, "bundle_source_id"

    invoke-static {p1, p4}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    iput-object p9, p0, Lio/branch/search/BranchBaseLinkResult;->impressionUrl:Ljava/lang/String;

    const-string p4, "linking"

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p4

    invoke-static {p4}, Lio/branch/search/t;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_63

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_63

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_63
    iput-object p7, p0, Lio/branch/search/BranchBaseLinkResult;->resultType:Lio/branch/search/l;

    iput-object p8, p0, Lio/branch/search/BranchBaseLinkResult;->userHandle:Landroid/os/UserHandle;

    const-string p2, "container_type"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_74

    invoke-static {p1, p2}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_75

    :cond_74
    move-object p2, p3

    :goto_75
    iput-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->containerType:Ljava/lang/String;

    const-string p2, "entity_type"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_83

    invoke-static {p1, p2}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_83
    iput-object p3, p0, Lio/branch/search/BranchBaseLinkResult;->contentType:Ljava/lang/String;

    return-void
.end method

.method private findShortcut(Ljava/util/List;)Lio/branch/search/j$h;
    .registers 4
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/j;",
            ">;)",
            "Lio/branch/search/j$h;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/j;

    instance-of v1, v0, Lio/branch/search/j$h;

    if-eqz v1, :cond_17

    check-cast v0, Lio/branch/search/j$h;

    return-object v0

    :cond_17
    instance-of v1, v0, Lio/branch/search/j$l;

    if-eqz v1, :cond_4

    check-cast v0, Lio/branch/search/j$l;

    iget-object v0, v0, Lio/branch/search/j$l;->c:Ljava/util/List;

    invoke-direct {p0, v0}, Lio/branch/search/BranchBaseLinkResult;->findShortcut(Ljava/util/List;)Lio/branch/search/j$h;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public findShortcut()Lio/branch/search/j$h;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lio/branch/search/BranchBaseLinkResult;->cachedShortcutSearchDone:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->handlers:Ljava/util/List;

    invoke-direct {p0, v0}, Lio/branch/search/BranchBaseLinkResult;->findShortcut(Ljava/util/List;)Lio/branch/search/j$h;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->cachedShortcut:Lio/branch/search/j$h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/branch/search/BranchBaseLinkResult;->cachedShortcutSearchDone:Z

    :cond_f
    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->cachedShortcut:Lio/branch/search/j$h;

    return-object p0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->app_name:Ljava/lang/String;

    return-object p0
.end method

.method public getClickJson()Lorg/json/JSONObject;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    const-string v2, "entity_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_14
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

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->containerType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->containerType:Ljava/lang/String;

    const-string v2, "container_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4b
    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->contentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->contentType:Ljava/lang/String;

    const-string v2, "entity_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5a
    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    const-string v2, "bundle_source_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->a(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_69
    return-object v0
.end method

.method public getClickTrackingUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->click_tracking_url:Ljava/lang/String;

    return-object p0
.end method

.method public getContainerType()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->containerType:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDestinationPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->destination_store_id:Ljava/lang/String;

    return-object p0
.end method

.method public getImageLoadingStrategy()Lio/branch/search/ui/ImageLoadingStrategy;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lio/branch/search/ui/ImageLoadingStrategy;->Companion:Lio/branch/search/ui/ImageLoadingStrategy$a;

    new-instance v1, Lio/branch/search/p5;

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v2

    invoke-virtual {v2}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/branch/search/p5;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lio/branch/search/BranchBaseLinkResult;->parent:Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v0, v1, v2, p0}, Lio/branch/search/ui/ImageLoadingStrategy$a;->b(Lio/branch/search/p5;Lio/branch/search/BranchBaseAppResult;Lio/branch/search/BranchBaseLinkResult;)Lio/branch/search/ui/ImageLoadingStrategy;

    move-result-object p0

    return-object p0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->image_url:Ljava/lang/String;

    return-object p0
.end method

.method public getImpressionJson()Lorg/json/JSONObject;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    const-string v2, "entity_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_14
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

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->containerType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->containerType:Ljava/lang/String;

    const-string v2, "container_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3e
    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->contentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->contentType:Ljava/lang/String;

    const-string v2, "entity_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4d
    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    const-string v2, "bundle_source_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->b(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5c
    return-object v0
.end method

.method public getImpressionUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->impressionUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParent()Lio/branch/search/BranchBaseAppResult;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->parent:Lio/branch/search/BranchBaseAppResult;

    return-object p0
.end method

.method public getParseJson()Lorg/json/JSONObject;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    const-string v2, "entity_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->containerType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->containerType:Ljava/lang/String;

    const-string v2, "container_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_35
    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->contentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->contentType:Ljava/lang/String;

    const-string v2, "entity_type"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_44
    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    const-string v2, "bundle_source_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->c(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_53
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

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    const-string v2, "entity_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result_id"

    invoke-static {p0, v0, v2, v1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "reason"

    invoke-static {p0, v0, v1, p1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/BranchBaseLinkResult;->containerType:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3a

    iget-object p1, p0, Lio/branch/search/BranchBaseLinkResult;->containerType:Ljava/lang/String;

    const-string v1, "container_type"

    invoke-static {p0, v0, v1, p1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3a
    iget-object p1, p0, Lio/branch/search/BranchBaseLinkResult;->contentType:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_49

    iget-object p1, p0, Lio/branch/search/BranchBaseLinkResult;->contentType:Ljava/lang/String;

    const-string v1, "entity_type"

    invoke-static {p0, v0, v1, p1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_49
    iget-object p1, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_58

    iget-object p1, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    const-string v1, "bundle_source_id"

    invoke-static {p0, v0, v1, p1}, Lio/branch/search/a;->d(Lio/branch/search/AnalyticsEntity;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_58
    return-object v0
.end method

.method public getResultType()Lio/branch/search/l;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->resultType:Lio/branch/search/l;

    return-object p0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->userHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public isAd()Z
    .registers 2

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->ranking_hint:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "featured"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public loadImageDrawable(Landroid/widget/ImageView;)V
    .registers 11
    .param p1  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->findShortcut()Lio/branch/search/j$h;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lio/branch/search/j$h;->d:Landroid/os/UserHandle;

    iget-object v0, v0, Lio/branch/search/j$h;->c:Ljava/lang/String;

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lio/branch/search/h5;->a(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Lio/branch/search/m;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1c
    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->destination_store_id:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->userHandle:Landroid/os/UserHandle;

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/branch/search/h5;->a(Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/m;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v0, p0, Lio/branch/search/BranchLinkResult;

    if-eqz v0, :cond_34

    move-object v0, p0

    check-cast v0, Lio/branch/search/BranchLinkResult;

    invoke-virtual {v0}, Lio/branch/search/BranchLinkResult;->getAppIconUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    move-object v7, v0

    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->image_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-static {}, Lio/branch/search/y0;->b()Lio/branch/search/y0;

    move-result-object v3

    new-instance v4, Lio/branch/search/z0;

    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->image_url:Ljava/lang/String;

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->resultType:Lio/branch/search/l;

    invoke-direct {v4, v0, p0}, Lio/branch/search/z0;-><init>(Ljava/lang/String;Lio/branch/search/l;)V

    :goto_4b
    const/4 v8, 0x0

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lio/branch/search/y0;->a(Lio/branch/search/z0;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    :cond_51
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    invoke-static {}, Lio/branch/search/y0;->b()Lio/branch/search/y0;

    move-result-object v3

    new-instance v4, Lio/branch/search/z0;

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->resultType:Lio/branch/search/l;

    invoke-direct {v4, v7, p0}, Lio/branch/search/z0;-><init>(Ljava/lang/String;Lio/branch/search/l;)V

    const/4 v7, 0x0

    goto :goto_4b

    :cond_64
    if-eqz v6, :cond_6a

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_71

    :cond_6a
    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    const-string p1, "Link.loadImageDrawable"

    invoke-static {p1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_71
    return-void
.end method

.method public loadImageDrawableInternal(Lio/branch/search/BranchDrawableCallback;)V
    .registers 6
    .param p1  # Lio/branch/search/BranchDrawableCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "Link:Lio/branch/search/BranchBaseLinkResult;",
            ">(",
            "Lio/branch/search/BranchDrawableCallback<",
            "T",
            "Link;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->findShortcut()Lio/branch/search/j$h;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lio/branch/search/j$h;->d:Landroid/os/UserHandle;

    iget-object v0, v0, Lio/branch/search/j$h;->c:Ljava/lang/String;

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lio/branch/search/h5;->a(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Lio/branch/search/m;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_16
    invoke-interface {p1, p0, v0}, Lio/branch/search/BranchDrawableCallback;->a(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V

    goto :goto_41

    :cond_1a
    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->image_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {}, Lio/branch/search/y0;->b()Lio/branch/search/y0;

    move-result-object v0

    new-instance v1, Lio/branch/search/z0;

    iget-object v2, p0, Lio/branch/search/BranchBaseLinkResult;->image_url:Ljava/lang/String;

    iget-object v3, p0, Lio/branch/search/BranchBaseLinkResult;->resultType:Lio/branch/search/l;

    invoke-direct {v1, v2, v3}, Lio/branch/search/z0;-><init>(Ljava/lang/String;Lio/branch/search/l;)V

    new-instance v2, Lio/branch/search/BranchBaseLinkResult$a;

    invoke-direct {v2, p0, p1}, Lio/branch/search/BranchBaseLinkResult$a;-><init>(Lio/branch/search/BranchBaseLinkResult;Lio/branch/search/BranchDrawableCallback;)V

    invoke-virtual {v0, v1, v2}, Lio/branch/search/y0;->a(Lio/branch/search/z0;Lio/branch/search/y0$a;)V

    goto :goto_41

    :cond_38
    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    const-string v1, "Link.loadImageDrawableInternal"

    invoke-static {v1, v0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_16

    :goto_41
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

    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->j()Lio/branch/search/IBranchIntentHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/branch/search/BranchBaseLinkResult;->open(Landroid/content/Context;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/BranchSearchError;

    move-result-object p0

    return-object p0
.end method

.method public open(Landroid/content/Context;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/BranchSearchError;
    .registers 12
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchIntentHandler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->registerClickEventInternal()V

    new-instance v8, Lio/branch/search/f4;

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getDestinationPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/branch/search/f4;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    iget-object v0, v0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object v1, v0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    if-eqz v1, :cond_3e

    iget-object v1, v0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-virtual {v1}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v0, v0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    invoke-virtual {v0, v8}, Lio/branch/search/v3;->a(Lio/branch/search/f4;)V

    :cond_3e
    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    if-eqz p2, :cond_45

    goto :goto_4d

    :cond_45
    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lio/branch/search/BranchConfiguration;->j()Lio/branch/search/IBranchIntentHandler;

    move-result-object p2

    :goto_4d
    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/j;

    invoke-virtual {v1, p1, p0, p2}, Lio/branch/search/j;->c(Landroid/content/Context;Lio/branch/search/s;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/j$g;

    move-result-object v2

    iget-boolean v3, v2, Lio/branch/search/j$g;->a:Z

    if-eqz v3, :cond_53

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object p1

    invoke-static {v1}, Lio/branch/search/j;->a(Lio/branch/search/j;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, v2, Lio/branch/search/j$g;->b:Lorg/json/JSONObject;

    invoke-virtual {p1, p0, p2, v0}, Lio/branch/search/m;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p0, 0x0

    return-object p0

    :cond_76
    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    const-string p1, "LINK_FAILED_TO_OPEN"

    invoke-static {p1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/BranchSearchError;

    sget-object p1, Lio/branch/search/BranchSearchError$ERR_CODE;->l:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {p0, p1}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    return-object p0
.end method

.method public prepareUnifiedEntity()Lio/branch/search/g4;
    .registers 13
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->findShortcut()Lio/branch/search/j$h;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v8, v1

    goto :goto_c

    :cond_9
    iget-object v2, v0, Lio/branch/search/j$h;->c:Ljava/lang/String;

    move-object v8, v2

    :goto_c
    if-eqz v0, :cond_28

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iget-object v0, v0, Lio/branch/search/j$h;->d:Landroid/os/UserHandle;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_28
    move-object v9, v1

    new-instance v0, Lio/branch/search/g4;

    iget-object v4, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    iget-object v7, p0, Lio/branch/search/BranchBaseLinkResult;->destination_store_id:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lio/branch/search/g4;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;J)V

    return-object v0
.end method

.method public registerClickEvent()V
    .registers 1

    return-void
.end method

.method public registerClickEventInternal()V
    .registers 4

    iget-object v0, p0, Lio/branch/search/BranchBaseLinkResult;->click_tracking_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->click_tracking_url:Ljava/lang/String;

    sget-object v0, Lio/branch/search/t5;->n:Lio/branch/search/t5;

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lio/branch/search/f1;->a(Ljava/lang/String;Lio/branch/search/t1;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public setParent(Lio/branch/search/BranchBaseAppResult;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/branch/search/BranchBaseLinkResult;->parent:Lio/branch/search/BranchBaseAppResult;

    return-void
.end method

.method public validate(Lio/branch/search/p0;)Z
    .registers 3
    .param p1  # Lio/branch/search/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->j()Lio/branch/search/IBranchIntentHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/branch/search/BranchBaseLinkResult;->validate(Lio/branch/search/p0;Lio/branch/search/IBranchIntentHandler;)Z

    move-result p0

    return p0
.end method

.method public validate(Lio/branch/search/p0;Lio/branch/search/IBranchIntentHandler;)Z
    .registers 7
    .param p1  # Lio/branch/search/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchIntentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/j;

    invoke-virtual {v2}, Lio/branch/search/j;->b()Z

    move-result v2

    if-eqz v2, :cond_e

    return v3

    :cond_22
    iget-object v1, p0, Lio/branch/search/BranchBaseLinkResult;->handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/j;

    invoke-virtual {v2, v0, p0, p2}, Lio/branch/search/j;->b(Landroid/content/Context;Lio/branch/search/s;Lio/branch/search/IBranchIntentHandler;)Z

    move-result v2

    if-eqz v2, :cond_28

    return v3

    :cond_3b
    if-eqz p1, :cond_42

    const-string p2, "Entity failed the linking validation test."

    invoke-virtual {p1, p0, p2}, Lio/branch/search/p0;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getApiName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getResultId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->userHandle:Landroid/os/UserHandle;

    invoke-static {p2, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->image_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->app_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->destination_store_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->click_tracking_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->ranking_hint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->handlers:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->resultType:Lio/branch/search/l;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->bundle_source_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->impressionUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->containerType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->contentType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
