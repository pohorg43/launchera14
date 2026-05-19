.class public Lio/branch/search/j$i;
.super Lio/branch/search/j$l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public final d:Ljava/lang/String;


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

    const-string v0, "package"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/j$i;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONObject;Lio/branch/search/j$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/branch/search/j$i;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Lio/branch/search/s;Lio/branch/search/IBranchIntentHandler;)Z
    .registers 5
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

    iget-object v0, p0, Lio/branch/search/j$i;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/branch/search/Util;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-super {p0, p1, p2, p3}, Lio/branch/search/j$l;->b(Landroid/content/Context;Lio/branch/search/s;Lio/branch/search/IBranchIntentHandler;)Z

    move-result p0

    return p0
.end method
