.class public final Lio/branch/search/internal/control/FeatureFlag;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/control/FeatureFlag$Companion;,
        Lio/branch/search/internal/control/FeatureFlag$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"
    }
    d2 = {
        "Lio/branch/search/internal/control/FeatureFlag;",
        "",
        "Lio/branch/search/internal/control/FeatureRule;",
        "rule",
        "<init>",
        "(Lio/branch/search/internal/control/FeatureRule;)V",
        "",
        "seen1",
        "Lz7/g1;",
        "serializationConstructorMarker",
        "(ILio/branch/search/internal/control/FeatureRule;Lz7/g1;)V",
        "Companion",
        "serializer",
        "BranchSearchSDK_forPartnersRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation

.annotation runtime Lkotlinx/serialization/a;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/control/FeatureFlag$Companion;


# instance fields
.field public final a:Lio/branch/search/internal/control/FeatureRule;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/internal/control/FeatureFlag$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/control/FeatureFlag$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/control/FeatureFlag;->Companion:Lio/branch/search/internal/control/FeatureFlag$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILio/branch/search/internal/control/FeatureRule;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_a

    iput-object p2, p0, Lio/branch/search/internal/control/FeatureFlag;->a:Lio/branch/search/internal/control/FeatureRule;

    return-void

    :cond_a
    new-instance p0, Lw7/b;

    const-string p1, "rule"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lio/branch/search/internal/control/FeatureRule;)V
    .registers 3

    const-string v0, "rule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/internal/control/FeatureFlag;->a:Lio/branch/search/internal/control/FeatureRule;

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/m;)Z
    .registers 4

    const-string v0, "branchSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/r0;

    invoke-virtual {p1}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object p1

    const-string v1, "branchSearch.branchConfiguration"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/search/BranchConfiguration;->m()Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    move-result-object p1

    const-string v1, "branchSearch.branchConfi…on.optedOutTrackingStatus"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lio/branch/search/r0;-><init>(Lio/branch/search/BranchConfiguration$BranchTrackingStatus;)V

    const-string p1, "userData"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/internal/control/FeatureFlag;->a:Lio/branch/search/internal/control/FeatureRule;

    invoke-virtual {p0, v0}, Lio/branch/search/internal/control/FeatureRule;->b(Lio/branch/search/r0;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_15

    instance-of v0, p1, Lio/branch/search/internal/control/FeatureFlag;

    if-eqz v0, :cond_13

    check-cast p1, Lio/branch/search/internal/control/FeatureFlag;

    iget-object p0, p0, Lio/branch/search/internal/control/FeatureFlag;->a:Lio/branch/search/internal/control/FeatureRule;

    iget-object p1, p1, Lio/branch/search/internal/control/FeatureFlag;->a:Lio/branch/search/internal/control/FeatureRule;

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

    iget-object p0, p0, Lio/branch/search/internal/control/FeatureFlag;->a:Lio/branch/search/internal/control/FeatureRule;

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

    const-string v0, "FeatureFlag(rule="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lio/branch/search/internal/control/FeatureFlag;->a:Lio/branch/search/internal/control/FeatureRule;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
