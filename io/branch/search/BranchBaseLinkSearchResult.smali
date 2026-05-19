.class public abstract Lio/branch/search/BranchBaseLinkSearchResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Lio/branch/search/BranchBaseLinkResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final requestId:Ljava/lang/String;

.field public final results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/BranchBaseLinkSearchResult;->requestId:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/BranchBaseLinkSearchResult;->results:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getResults()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TResult;>;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchBaseLinkSearchResult;->results:Ljava/util/List;

    return-object p0
.end method
