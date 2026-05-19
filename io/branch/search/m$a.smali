.class public Lio/branch/search/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/t1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/m;->isServiceEnabled(Ljava/lang/String;Lio/branch/search/IBranchServiceEnabledEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/IBranchServiceEnabledEvents;


# direct methods
.method public constructor <init>(Lio/branch/search/IBranchServiceEnabledEvents;)V
    .registers 2

    iput-object p1, p0, Lio/branch/search/m$a;->a:Lio/branch/search/IBranchServiceEnabledEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 3
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lio/branch/search/BranchSearchError;

    if-eqz v0, :cond_b

    check-cast p1, Lio/branch/search/BranchSearchError;

    invoke-static {p1}, Lio/branch/search/BranchServiceEnabledResult;->a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchServiceEnabledResult;

    move-result-object p1

    goto :goto_f

    :cond_b
    invoke-static {p1}, Lio/branch/search/BranchServiceEnabledResult;->a(Lorg/json/JSONObject;)Lio/branch/search/BranchServiceEnabledResult;

    move-result-object p1

    :goto_f
    iget-object p0, p0, Lio/branch/search/m$a;->a:Lio/branch/search/IBranchServiceEnabledEvents;

    invoke-interface {p0, p1}, Lio/branch/search/IBranchServiceEnabledEvents;->onBranchServiceEnabledResult(Lio/branch/search/BranchServiceEnabledResult;)V

    return-void
.end method
