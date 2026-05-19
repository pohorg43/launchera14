.class public final Lio/branch/search/internal/control/FeatureFlag$$serializer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz7/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/control/FeatureFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz7/w<",
        "Lio/branch/search/internal/control/FeatureFlag;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J \u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000e0\rHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00118V@\u0016XÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"
    }
    d2 = {
        "io/branch/search/internal/control/FeatureFlag.$serializer",
        "Lz7/w;",
        "Lio/branch/search/internal/control/FeatureFlag;",
        "Lkotlinx/serialization/encoding/Encoder;",
        "encoder",
        "value",
        "Lh4/z;",
        "serialize",
        "(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/control/FeatureFlag;)V",
        "Lkotlinx/serialization/encoding/Decoder;",
        "decoder",
        "deserialize",
        "(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/control/FeatureFlag;",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "childSerializers",
        "()[Lkotlinx/serialization/KSerializer;",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "descriptor",
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


# static fields
.field private static final synthetic $$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/branch/search/internal/control/FeatureFlag$$serializer;

    invoke-direct {v0}, Lio/branch/search/internal/control/FeatureFlag$$serializer;-><init>()V

    sput-object v0, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    new-instance v1, Lz7/x0;

    const-string v2, "io.branch.search.internal.control.FeatureFlag"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lz7/x0;-><init>(Ljava/lang/String;Lz7/w;I)V

    const-string v0, "rule"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    sput-object v1, Lio/branch/search/internal/control/FeatureFlag$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x1

    new-array v0, p0, [Lkotlinx/serialization/KSerializer;

    new-instance v1, Lw7/f;

    const-class v2, Lio/branch/search/internal/control/FeatureRule;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const/4 v3, 0x5

    new-array v4, v3, [Lz4/d;

    const-class v5, Lio/branch/search/internal/control/FeatureRule$TrackingStatus;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Lio/branch/search/internal/control/FeatureRule$Constant;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    aput-object v5, v4, p0

    const-class v5, Lio/branch/search/internal/control/FeatureRule$Or;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-class v5, Lio/branch/search/internal/control/FeatureRule$And;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    const-class v5, Lio/branch/search/internal/control/FeatureRule$Not;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    const/4 v9, 0x4

    aput-object v5, v4, v9

    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    sget-object v5, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;

    aput-object v5, v3, v6

    sget-object v5, Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;

    aput-object v5, v3, p0

    sget-object p0, Lio/branch/search/internal/control/FeatureRule$Or$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Or$$serializer;

    aput-object p0, v3, v7

    sget-object p0, Lio/branch/search/internal/control/FeatureRule$And$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$And$$serializer;

    aput-object p0, v3, v8

    sget-object p0, Lio/branch/search/internal/control/FeatureRule$Not$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Not$$serializer;

    aput-object p0, v3, v9

    const-string p0, "io.branch.search.internal.control.FeatureRule"

    invoke-direct {v1, p0, v2, v4, v3}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    aput-object v1, v0, v6

    return-object v0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/control/FeatureFlag;
    .registers 23

    move-object/from16 v0, p1

    const-class v1, Lio/branch/search/internal/control/FeatureRule$Not;

    const-class v2, Lio/branch/search/internal/control/FeatureRule$And;

    const-class v3, Lio/branch/search/internal/control/FeatureRule$Or;

    const-class v4, Lio/branch/search/internal/control/FeatureRule$Constant;

    const-class v5, Lio/branch/search/internal/control/FeatureRule$TrackingStatus;

    const-class v6, Lio/branch/search/internal/control/FeatureRule;

    const-string v7, "decoder"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lio/branch/search/internal/control/FeatureFlag$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v7}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/b;

    move-result-object v0

    invoke-interface {v0}, Ly7/b;->q()Z

    move-result v8

    const-string v9, "io.branch.search.internal.control.FeatureRule"

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x5

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v8, :cond_70

    new-instance v8, Lw7/f;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    new-array v10, v13, [Lz4/d;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    aput-object v5, v10, v15

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    aput-object v4, v10, v14

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    aput-object v3, v10, v12

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    aput-object v2, v10, v11

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v10, v2

    new-array v1, v13, [Lkotlinx/serialization/KSerializer;

    sget-object v3, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;

    aput-object v3, v1, v15

    sget-object v3, Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;

    aput-object v3, v1, v14

    sget-object v3, Lio/branch/search/internal/control/FeatureRule$Or$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Or$$serializer;

    aput-object v3, v1, v12

    sget-object v3, Lio/branch/search/internal/control/FeatureRule$And$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$And$$serializer;

    aput-object v3, v1, v11

    sget-object v3, Lio/branch/search/internal/control/FeatureRule$Not$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Not$$serializer;

    aput-object v3, v1, v2

    invoke-direct {v8, v9, v6, v10, v1}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v7, v15, v8}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/internal/control/FeatureRule;

    const v2, 0x7fffffff

    goto :goto_dc

    :cond_70
    const/4 v8, 0x0

    move v10, v15

    :goto_72
    invoke-interface {v0, v7}, Ly7/b;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_da

    if-nez v11, :cond_d4

    new-instance v11, Lw7/f;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v12

    new-array v14, v13, [Lz4/d;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v18

    aput-object v18, v14, v15

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v18

    const/16 v17, 0x1

    aput-object v18, v14, v17

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v18

    const/16 v16, 0x2

    aput-object v18, v14, v16

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v18

    const/16 v19, 0x3

    aput-object v18, v14, v19

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v18

    const/16 v20, 0x4

    aput-object v18, v14, v20

    move-object/from16 p0, v1

    new-array v1, v13, [Lkotlinx/serialization/KSerializer;

    sget-object v18, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;

    aput-object v18, v1, v15

    sget-object v18, Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;

    aput-object v18, v1, v17

    sget-object v18, Lio/branch/search/internal/control/FeatureRule$Or$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Or$$serializer;

    aput-object v18, v1, v16

    sget-object v18, Lio/branch/search/internal/control/FeatureRule$And$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$And$$serializer;

    aput-object v18, v1, v19

    sget-object v18, Lio/branch/search/internal/control/FeatureRule$Not$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Not$$serializer;

    aput-object v18, v1, v20

    invoke-direct {v11, v9, v12, v14, v1}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v7, v15, v11, v8}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lio/branch/search/internal/control/FeatureRule;

    or-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move/from16 v12, v16

    move/from16 v14, v17

    goto :goto_72

    :cond_d4
    new-instance v0, Lw7/i;

    invoke-direct {v0, v11}, Lw7/i;-><init>(I)V

    throw v0

    :cond_da
    move-object v1, v8

    move v2, v10

    :goto_dc
    invoke-interface {v0, v7}, Ly7/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lio/branch/search/internal/control/FeatureFlag;

    invoke-direct {v0, v2, v1}, Lio/branch/search/internal/control/FeatureFlag;-><init>(ILio/branch/search/internal/control/FeatureRule;)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/internal/control/FeatureFlag$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    sget-object p0, Lio/branch/search/internal/control/FeatureFlag$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/control/FeatureFlag;)V
    .registers 13

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/internal/control/FeatureFlag$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/c;

    move-result-object p1

    const-string v0, "self"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw7/f;

    const-class v1, Lio/branch/search/internal/control/FeatureRule;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    const/4 v2, 0x5

    new-array v3, v2, [Lz4/d;

    const-class v4, Lio/branch/search/internal/control/FeatureRule$TrackingStatus;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lio/branch/search/internal/control/FeatureRule$Constant;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lio/branch/search/internal/control/FeatureRule$Or;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Lio/branch/search/internal/control/FeatureRule$And;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-class v4, Lio/branch/search/internal/control/FeatureRule$Not;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;

    aput-object v4, v2, v5

    sget-object v4, Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;

    aput-object v4, v2, v6

    sget-object v4, Lio/branch/search/internal/control/FeatureRule$Or$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Or$$serializer;

    aput-object v4, v2, v7

    sget-object v4, Lio/branch/search/internal/control/FeatureRule$And$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$And$$serializer;

    aput-object v4, v2, v8

    sget-object v4, Lio/branch/search/internal/control/FeatureRule$Not$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Not$$serializer;

    aput-object v4, v2, v9

    const-string v4, "io.branch.search.internal.control.FeatureRule"

    invoke-direct {v0, v4, v1, v3, v2}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    iget-object p2, p2, Lio/branch/search/internal/control/FeatureFlag;->a:Lio/branch/search/internal/control/FeatureRule;

    invoke-interface {p1, p0, v5, v0, p2}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Ly7/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lio/branch/search/internal/control/FeatureFlag;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/control/FeatureFlag$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/control/FeatureFlag;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lz7/y0;->a:[Lkotlinx/serialization/KSerializer;

    return-object p0
.end method
