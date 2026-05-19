.class public final Lio/branch/search/internal/control/AllFeatures;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/control/AllFeatures$Companion;,
        Lio/branch/search/internal/control/AllFeatures$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eBM\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u0010"
    }
    d2 = {
        "Lio/branch/search/internal/control/AllFeatures;",
        "",
        "",
        "seen1",
        "Lio/branch/search/internal/control/FeatureFlag;",
        "remote_search",
        "app_store_search",
        "query_hint",
        "auto_suggest",
        "analytics",
        "Lz7/g1;",
        "serializationConstructorMarker",
        "<init>",
        "(ILio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lz7/g1;)V",
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
.field public static final Companion:Lio/branch/search/internal/control/AllFeatures$Companion;


# instance fields
.field public final a:Lio/branch/search/internal/control/FeatureFlag;

.field public final b:Lio/branch/search/internal/control/FeatureFlag;

.field public final c:Lio/branch/search/internal/control/FeatureFlag;

.field public final d:Lio/branch/search/internal/control/FeatureFlag;

.field public final e:Lio/branch/search/internal/control/FeatureFlag;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/internal/control/AllFeatures$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/control/AllFeatures$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/control/AllFeatures;->Companion:Lio/branch/search/internal/control/AllFeatures$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/branch/search/internal/control/AllFeatures;-><init>(Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;I)V

    return-void
.end method

.method public synthetic constructor <init>(ILio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_8

    goto :goto_c

    :cond_8
    invoke-static {}, Lio/branch/search/q0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p2

    :goto_c
    iput-object p2, p0, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_15

    iput-object p3, p0, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    goto :goto_1b

    :cond_15
    invoke-static {}, Lio/branch/search/q0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    :goto_1b
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_22

    iput-object p4, p0, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    goto :goto_28

    :cond_22
    invoke-static {}, Lio/branch/search/q0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    :goto_28
    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_2f

    iput-object p5, p0, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    goto :goto_35

    :cond_2f
    invoke-static {}, Lio/branch/search/q0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    :goto_35
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_3c

    iput-object p6, p0, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    goto :goto_42

    :cond_3c
    invoke-static {}, Lio/branch/search/q0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    :goto_42
    return-void
.end method

.method public constructor <init>(Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;I)V
    .registers 7

    and-int/lit8 p1, p6, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_a

    invoke-static {}, Lio/branch/search/q0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p1

    goto :goto_b

    :cond_a
    move-object p1, p2

    :goto_b
    and-int/lit8 p3, p6, 0x2

    if-eqz p3, :cond_14

    invoke-static {}, Lio/branch/search/q0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p3

    goto :goto_15

    :cond_14
    move-object p3, p2

    :goto_15
    and-int/lit8 p4, p6, 0x4

    if-eqz p4, :cond_1e

    invoke-static {}, Lio/branch/search/q0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p4

    goto :goto_1f

    :cond_1e
    move-object p4, p2

    :goto_1f
    and-int/lit8 p5, p6, 0x8

    if-eqz p5, :cond_28

    invoke-static {}, Lio/branch/search/q0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p5

    goto :goto_29

    :cond_28
    move-object p5, p2

    :goto_29
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_31

    invoke-static {}, Lio/branch/search/q0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p2

    :cond_31
    const-string p6, "remote_search"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "app_store_search"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "query_hint"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "auto_suggest"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "analytics"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    iput-object p3, p0, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    iput-object p4, p0, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    iput-object p5, p0, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    iput-object p2, p0, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_3d

    instance-of v0, p1, Lio/branch/search/internal/control/AllFeatures;

    if-eqz v0, :cond_3b

    check-cast p1, Lio/branch/search/internal/control/AllFeatures;

    iget-object v0, p0, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    iget-object v1, p1, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    iget-object v1, p1, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    iget-object v1, p1, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    iget-object v1, p1, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object p0, p0, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    iget-object p1, p1, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 p0, 0x0

    return p0

    :cond_3d
    :goto_3d
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lio/branch/search/internal/control/FeatureFlag;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lio/branch/search/internal/control/FeatureFlag;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lio/branch/search/internal/control/FeatureFlag;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Lio/branch/search/internal/control/FeatureFlag;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Lio/branch/search/internal/control/FeatureFlag;->hashCode()I

    move-result v1

    :cond_3c
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "AllFeatures(remote_search="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", app_store_search="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", query_hint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", auto_suggest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", analytics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
