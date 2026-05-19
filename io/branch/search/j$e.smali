.class public Lio/branch/search/j$e;
.super Lio/branch/search/j$l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/branch/search/j$l;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/j$e;->d:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/j$e;->e:Ljava/lang/String;

    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/j$e;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONObject;Lio/branch/search/j$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/branch/search/j$e;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lio/branch/search/s;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/j$g;
    .registers 12
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lio/branch/search/IBranchIntentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of p3, p2, Lio/branch/search/BranchBaseLinkResult;

    if-nez p3, :cond_9

    invoke-static {}, Lio/branch/search/j$g;->a()Lio/branch/search/j$g;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object p3

    invoke-virtual {p3}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Lio/branch/search/BranchConfiguration;->g()Lio/branch/search/IBranchDeepViewHandler;

    move-result-object p3

    new-instance v7, Lio/branch/search/BranchDeepViewFragment;

    move-object v1, p2

    check-cast v1, Lio/branch/search/BranchBaseLinkResult;

    iget-object v2, p0, Lio/branch/search/j$l;->c:Ljava/util/List;

    iget-object v0, p0, Lio/branch/search/j$e;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p2}, Lio/branch/search/s;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_29
    iget-object v0, p0, Lio/branch/search/j$e;->e:Ljava/lang/String;

    :goto_2b
    move-object v3, v0

    iget-object v0, p0, Lio/branch/search/j$e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p2}, Lio/branch/search/s;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_39
    iget-object v0, p0, Lio/branch/search/j$e;->f:Ljava/lang/String;

    :goto_3b
    move-object v4, v0

    iget-object v0, p0, Lio/branch/search/j$e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p2}, Lio/branch/search/s;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :cond_49
    iget-object v0, p0, Lio/branch/search/j$e;->d:Ljava/lang/String;

    :goto_4b
    move-object v5, v0

    instance-of v0, p2, Lio/branch/search/BranchLinkResult;

    if-eqz v0, :cond_55

    check-cast p2, Lio/branch/search/BranchLinkResult;

    iget-object p2, p2, Lio/branch/search/BranchLinkResult;->g:Ljava/lang/String;

    goto :goto_57

    :cond_55
    const-string p2, ""

    :goto_57
    move-object v6, p2

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/branch/search/BranchDeepViewFragment;-><init>(Lio/branch/search/BranchBaseLinkResult;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1, v7}, Lio/branch/search/IBranchDeepViewHandler;->launchDeepView(Landroid/content/Context;Lio/branch/search/BranchDeepViewFragment;)Z

    move-result p1

    if-eqz p1, :cond_67

    invoke-static {p0}, Lio/branch/search/j$g;->a(Lio/branch/search/j;)Lio/branch/search/j$g;

    move-result-object p0

    return-object p0

    :cond_67
    invoke-static {}, Lio/branch/search/j$g;->a()Lio/branch/search/j$g;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/content/Context;Lio/branch/search/s;Lio/branch/search/IBranchIntentHandler;)Z
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lio/branch/search/IBranchIntentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lio/branch/search/j$l;->b(Landroid/content/Context;Lio/branch/search/s;Lio/branch/search/IBranchIntentHandler;)Z

    move-result p0

    if-eqz p0, :cond_c

    instance-of p0, p2, Lio/branch/search/BranchBaseLinkResult;

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
