.class public Lio/branch/search/x1$c;
.super Lio/branch/search/x1$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final g:Lio/branch/search/BranchLocalSearchRequest;

.field public final h:Lio/branch/search/p0;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/p0;)V
    .registers 3

    invoke-direct {p0}, Lio/branch/search/x1$b;-><init>()V

    iput-object p1, p0, Lio/branch/search/x1$c;->g:Lio/branch/search/BranchLocalSearchRequest;

    iput-object p2, p0, Lio/branch/search/x1$c;->h:Lio/branch/search/p0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "user_query"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lio/branch/search/x1$c;->g:Lio/branch/search/BranchLocalSearchRequest;

    invoke-virtual {p0}, Lio/branch/search/BranchLocalSearchRequest;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string v0, "user_query_raw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lio/branch/search/x1$c;->g:Lio/branch/search/BranchLocalSearchRequest;

    invoke-virtual {p0}, Lio/branch/search/BranchLocalSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    const-string v0, "request_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object p0, p0, Lio/branch/search/x1$c;->h:Lio/branch/search/p0;

    iget-object p0, p0, Lio/branch/search/p0;->f:Ljava/lang/String;

    return-object p0

    :cond_2b
    invoke-super {p0, p1}, Lio/branch/search/x1$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
