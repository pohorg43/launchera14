.class public Lio/branch/search/BranchLinkResult;
.super Lio/branch/search/BranchBaseLinkResult;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/BranchLinkResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICON_CATEGORY_BUSINESS:Ljava/lang/String; = "business"

.field public static final ICON_CATEGORY_CARS:Ljava/lang/String; = "cars"

.field public static final ICON_CATEGORY_COMMUNICATION:Ljava/lang/String; = "communication"

.field public static final ICON_CATEGORY_EDUCATION:Ljava/lang/String; = "education"

.field public static final ICON_CATEGORY_EVENTS:Ljava/lang/String; = "events"

.field public static final ICON_CATEGORY_FOOD:Ljava/lang/String; = "food"

.field public static final ICON_CATEGORY_GAMES:Ljava/lang/String; = "games"

.field public static final ICON_CATEGORY_HEALTH:Ljava/lang/String; = "health"

.field public static final ICON_CATEGORY_HOME:Ljava/lang/String; = "home"

.field public static final ICON_CATEGORY_LIFESTYLE:Ljava/lang/String; = "lifestyle"

.field public static final ICON_CATEGORY_MAPS:Ljava/lang/String; = "maps"

.field public static final ICON_CATEGORY_MUSIC:Ljava/lang/String; = "music"

.field public static final ICON_CATEGORY_NEWS:Ljava/lang/String; = "news"

.field public static final ICON_CATEGORY_OTHER:Ljava/lang/String; = "other"

.field public static final ICON_CATEGORY_PHOTOS:Ljava/lang/String; = "photos"

.field public static final ICON_CATEGORY_SHOPPING:Ljava/lang/String; = "shopping"

.field public static final ICON_CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final ICON_CATEGORY_SPORTS:Ljava/lang/String; = "sports"

.field public static final ICON_CATEGORY_TRAVEL:Ljava/lang/String; = "travel"

.field public static final ICON_CATEGORY_UTILITIES:Ljava/lang/String; = "utilities"

.field public static final ICON_CATEGORY_VIDEO:Ljava/lang/String; = "video"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lorg/json/JSONObject;

.field public c:Ljava/lang/String;

.field public d:F

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/BranchLinkResult$a;

    invoke-direct {v0}, Lio/branch/search/BranchLinkResult$a;-><init>()V

    sput-object v0, Lio/branch/search/BranchLinkResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1  # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/branch/search/BranchBaseLinkResult;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchLinkResult;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchLinkResult;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lio/branch/search/BranchLinkResult;->d:F

    :try_start_15
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/BranchLinkResult;->b:Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_20} :catch_21

    goto :goto_2e

    :catch_21
    move-exception v0

    const-string v1, "BranchLinkResult.constructor"

    invoke-static {v1, v0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/branch/search/BranchLinkResult;->b:Lorg/json/JSONObject;

    :goto_2e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchLinkResult;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/BranchLinkResult;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/BranchLinkResult;->g:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lio/branch/search/BranchLinkResult$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/branch/search/BranchLinkResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
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
    .param p4  # Ljava/lang/String;
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
    .param p7  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v10, p0

    move-object v11, p1

    const-string v0, "result_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v7, Lio/branch/search/l;->e:Lio/branch/search/l;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lio/branch/search/BranchBaseLinkResult;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/l;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v0, "icon_category"

    const-string v1, "other"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lio/branch/search/BranchLinkResult;->a:Ljava/lang/String;

    const-string v0, "type"

    invoke-static {p1, v0}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lio/branch/search/BranchLinkResult;->c:Ljava/lang/String;

    const-string v0, "score"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v10, Lio/branch/search/BranchLinkResult;->d:F

    const-string v0, "metadata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v10, Lio/branch/search/BranchLinkResult;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_4c

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v10, Lio/branch/search/BranchLinkResult;->b:Lorg/json/JSONObject;

    :cond_4c
    const-string v0, "routing_mode"

    invoke-static {p1, v0}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lio/branch/search/BranchLinkResult;->e:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, v10, Lio/branch/search/BranchLinkResult;->f:Ljava/lang/String;

    const-string v0, "deepview_extra_text"

    move-object/from16 v1, p7

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lio/branch/search/BranchLinkResult;->g:Ljava/lang/String;

    return-void
.end method

.method private createDeepViewFragmentForLegacyAPIs()Lio/branch/search/BranchDeepViewFragment;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAndroidShortcutId()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppIconUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchLinkResult;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getEntityID()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    return-object p0
.end method

.method public getIconCategory()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchLinkResult;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkResult;->image_url:Ljava/lang/String;

    return-object p0
.end method

.method public getMetadata()Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchLinkResult;->b:Lorg/json/JSONObject;

    return-object p0
.end method

.method public getParentAppGroup()Lio/branch/search/BranchAppResult;
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getParent()Lio/branch/search/BranchBaseAppResult;

    move-result-object p0

    check-cast p0, Lio/branch/search/BranchAppResult;

    return-object p0
.end method

.method public getRankingHint()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRoutingMode()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchLinkResult;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getScore()F
    .registers 1

    iget p0, p0, Lio/branch/search/BranchLinkResult;->d:F

    return p0
.end method

.method public getType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchLinkResult;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getUriScheme()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWebLink()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p0, ""

    return-object p0
.end method

.method public loadImageDrawable(Lio/branch/search/BranchDrawableCallback;)V
    .registers 2
    .param p1  # Lio/branch/search/BranchDrawableCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchDrawableCallback<",
            "Lio/branch/search/BranchLinkResult;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/branch/search/BranchBaseLinkResult;->loadImageDrawableInternal(Lio/branch/search/BranchDrawableCallback;)V

    return-void
.end method

.method public openContent(Landroid/content/Context;Z)Lio/branch/search/BranchSearchError;
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

.method public openDeepView(Landroid/app/FragmentManager;)Lio/branch/search/BranchSearchError;
    .registers 2
    .param p1  # Landroid/app/FragmentManager;
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

.method public openDeepView(Landroidx/fragment/app/FragmentManager;)Lio/branch/search/BranchSearchError;
    .registers 2
    .param p1  # Landroidx/fragment/app/FragmentManager;
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lio/branch/search/BranchBaseLinkResult;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lio/branch/search/BranchLinkResult;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchLinkResult;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lio/branch/search/BranchLinkResult;->d:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p2, p0, Lio/branch/search/BranchLinkResult;->b:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchLinkResult;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchLinkResult;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/BranchLinkResult;->g:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
