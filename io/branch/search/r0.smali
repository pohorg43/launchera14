.class public final Lio/branch/search/r0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchConfiguration$BranchTrackingStatus;)V
    .registers 3

    const-string v0, "analyticsTrackingStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/r0;->a:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    return-void
.end method


# virtual methods
.method public final a()Lio/branch/search/BranchConfiguration$BranchTrackingStatus;
    .registers 1

    iget-object p0, p0, Lio/branch/search/r0;->a:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_15

    instance-of v0, p1, Lio/branch/search/r0;

    if-eqz v0, :cond_13

    check-cast p1, Lio/branch/search/r0;

    iget-object p0, p0, Lio/branch/search/r0;->a:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    iget-object p1, p1, Lio/branch/search/r0;->a:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lio/branch/search/r0;->a:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "UserData(analyticsTrackingStatus="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lio/branch/search/r0;->a:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
