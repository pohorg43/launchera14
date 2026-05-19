.class public Lio/branch/search/BranchServiceEnabledResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchServiceEnabledResult;
    .registers 2
    .param p0  # Lio/branch/search/BranchSearchError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p0, Lio/branch/search/BranchServiceEnabledResult;

    invoke-direct {p0}, Lio/branch/search/BranchServiceEnabledResult;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/branch/search/BranchServiceEnabledResult;->a:Z

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Lio/branch/search/BranchServiceEnabledResult;
    .registers 6
    .param p0  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lio/branch/search/BranchServiceEnabledResult;

    invoke-direct {v0}, Lio/branch/search/BranchServiceEnabledResult;-><init>()V

    const-string v1, "disabled"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_16

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_16

    move v4, v3

    :cond_16
    xor-int/lit8 p0, v4, 0x1

    iput-boolean p0, v0, Lio/branch/search/BranchServiceEnabledResult;->a:Z

    return-object v0
.end method


# virtual methods
.method public isEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lio/branch/search/BranchServiceEnabledResult;->a:Z

    return p0
.end method
