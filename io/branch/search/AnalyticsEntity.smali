.class public abstract Lio/branch/search/AnalyticsEntity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/AnalyticsEntity$a;
    }
.end annotation


# static fields
.field public static final APP_STORE_API:Ljava/lang/String; = "app_store_api"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final APP_STORE_APP:Ljava/lang/String; = "app_store_app"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final AUTOSUGGESTION:Ljava/lang/String; = "autosuggest"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final AUTOSUGGEST_API:Ljava/lang/String; = "autosuggest"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final LOCAL_HINTS_API:Ljava/lang/String; = "local_hints"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final LOCAL_HINTS_RESULT:Ljava/lang/String; = "local_hints"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final LOCAL_SEARCH_API:Ljava/lang/String; = "local_search"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final LOCAL_SEARCH_APP:Ljava/lang/String; = "app"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final LOCAL_SEARCH_LINK:Ljava/lang/String; = "local_search"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final LOCAL_ZERO_STATE_API:Ljava/lang/String; = "zero_state"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final LOCAL_ZERO_STATE_APP:Ljava/lang/String; = "app"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final LOCAL_ZERO_STATE_LINK:Ljava/lang/String; = "zero_state"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final REMOTE_HINTS_API:Ljava/lang/String; = "hints"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final REMOTE_HINTS_RESULT:Ljava/lang/String; = "hints"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final REMOTE_LINK:Ljava/lang/String; = "search"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final REMOTE_LINK_GROUP:Ljava/lang/String; = "remote_app"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final REMOTE_SEARCH_API:Ljava/lang/String; = "search"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final REMOTE_ZERO_STATE_API:Ljava/lang/String; = "remote_zero_state"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final REMOTE_ZERO_STATE_APP:Ljava/lang/String; = "remote_app"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final REMOTE_ZERO_STATE_LINK:Ljava/lang/String; = "remote_zero_state"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field public apiName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public requestId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public resultId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public sessionId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/AnalyticsEntity;->apiName:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    invoke-static {}, Lio/branch/search/BranchAnalytics;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/AnalyticsEntity;->sessionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/AnalyticsEntity;->apiName:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getClickJson()Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public getFullAnalyticsEntityName()Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/branch/search/AnalyticsEntity;->apiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImpressionId()I
    .registers 2

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->impressionable()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getImpressionJson()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public abstract getImpressionJson()Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getParseJson()Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getRemovalJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public final getRequestId()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final getResultId()Ljava/lang/Integer;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    return-object p0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/AnalyticsEntity;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public impressionable()Z
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity;->getImpressionJson()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public initEncounter(F)Lio/branch/search/AnalyticsEntity$a;
    .registers 2

    new-instance p0, Lio/branch/search/AnalyticsEntity$a;

    invoke-direct {p0, p1}, Lio/branch/search/AnalyticsEntity$a;-><init>(F)V

    return-object p0
.end method

.method public abstract prepareUnifiedEntity()Lio/branch/search/g4;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
