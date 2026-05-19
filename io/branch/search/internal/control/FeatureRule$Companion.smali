.class public final Lio/branch/search/internal/control/FeatureRule$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/control/FeatureRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"
    }
    d2 = {
        "Lio/branch/search/internal/control/FeatureRule$Companion;",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "Lio/branch/search/internal/control/FeatureRule;",
        "serializer",
        "()Lkotlinx/serialization/KSerializer;",
        "<init>",
        "()V",
        "BranchSearchSDK_forPartnersRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lio/branch/search/internal/control/FeatureRule;",
            ">;"
        }
    .end annotation

    new-instance p0, Lw7/f;

    const-class v0, Lio/branch/search/internal/control/FeatureRule;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Lz4/d;

    const-class v3, Lio/branch/search/internal/control/FeatureRule$TrackingStatus;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lio/branch/search/internal/control/FeatureRule$Constant;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Lio/branch/search/internal/control/FeatureRule$Or;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Lio/branch/search/internal/control/FeatureRule$And;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-class v3, Lio/branch/search/internal/control/FeatureRule$Not;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v3, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;

    aput-object v3, v1, v4

    sget-object v3, Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;

    aput-object v3, v1, v5

    sget-object v3, Lio/branch/search/internal/control/FeatureRule$Or$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Or$$serializer;

    aput-object v3, v1, v6

    sget-object v3, Lio/branch/search/internal/control/FeatureRule$And$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$And$$serializer;

    aput-object v3, v1, v7

    sget-object v3, Lio/branch/search/internal/control/FeatureRule$Not$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Not$$serializer;

    aput-object v3, v1, v8

    const-string v3, "io.branch.search.internal.control.FeatureRule"

    invoke-direct {p0, v3, v0, v2, v1}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    return-object p0
.end method
