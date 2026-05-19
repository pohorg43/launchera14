.class public final Lio/branch/search/internal/control/AllFeatures$$serializer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz7/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/control/AllFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz7/w<",
        "Lio/branch/search/internal/control/AllFeatures;",
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
        "io/branch/search/internal/control/AllFeatures.$serializer",
        "Lz7/w;",
        "Lio/branch/search/internal/control/AllFeatures;",
        "Lkotlinx/serialization/encoding/Encoder;",
        "encoder",
        "value",
        "Lh4/z;",
        "serialize",
        "(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/control/AllFeatures;)V",
        "Lkotlinx/serialization/encoding/Decoder;",
        "decoder",
        "deserialize",
        "(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/control/AllFeatures;",
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

.field public static final INSTANCE:Lio/branch/search/internal/control/AllFeatures$$serializer;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/branch/search/internal/control/AllFeatures$$serializer;

    invoke-direct {v0}, Lio/branch/search/internal/control/AllFeatures$$serializer;-><init>()V

    sput-object v0, Lio/branch/search/internal/control/AllFeatures$$serializer;->INSTANCE:Lio/branch/search/internal/control/AllFeatures$$serializer;

    new-instance v1, Lz7/x0;

    const-string v2, "io.branch.search.internal.control.AllFeatures"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v0, v3}, Lz7/x0;-><init>(Ljava/lang/String;Lz7/w;I)V

    const-string v0, "remote_search"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "app_store_search"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "query_hint"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "auto_suggest"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "analytics"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    sput-object v1, Lio/branch/search/internal/control/AllFeatures$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x5

    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const/4 v1, 0x4

    aput-object v0, p0, v1

    return-object p0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/control/AllFeatures;
    .registers 22

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/branch/search/internal/control/AllFeatures$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/b;

    move-result-object v0

    invoke-interface {v0}, Ly7/b;->q()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_47

    sget-object v2, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    invoke-interface {v0, v1, v4, v2}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/internal/control/FeatureFlag;

    invoke-interface {v0, v1, v7, v2}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/branch/search/internal/control/FeatureFlag;

    invoke-interface {v0, v1, v6, v2}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/branch/search/internal/control/FeatureFlag;

    invoke-interface {v0, v1, v3, v2}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/internal/control/FeatureFlag;

    invoke-interface {v0, v1, v5, v2}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/internal/control/FeatureFlag;

    const v5, 0x7fffffff

    move-object/from16 v19, v2

    move-object/from16 v18, v3

    move-object v15, v4

    move v14, v5

    move-object/from16 v17, v6

    move-object/from16 v16, v7

    goto/16 :goto_a5

    :cond_47
    const/4 v2, 0x0

    move-object v8, v2

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move v10, v4

    :goto_4d
    invoke-interface {v0, v1}, Ly7/b;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_9b

    if-eqz v13, :cond_90

    if-eq v13, v7, :cond_85

    if-eq v13, v6, :cond_7a

    if-eq v13, v3, :cond_6f

    if-ne v13, v5, :cond_69

    sget-object v13, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    invoke-interface {v0, v1, v5, v13, v2}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/internal/control/FeatureFlag;

    or-int/lit8 v10, v10, 0x10

    goto :goto_4d

    :cond_69
    new-instance v0, Lw7/i;

    invoke-direct {v0, v13}, Lw7/i;-><init>(I)V

    throw v0

    :cond_6f
    sget-object v13, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    invoke-interface {v0, v1, v3, v13, v8}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/branch/search/internal/control/FeatureFlag;

    or-int/lit8 v10, v10, 0x8

    goto :goto_4d

    :cond_7a
    sget-object v13, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    invoke-interface {v0, v1, v6, v13, v11}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/branch/search/internal/control/FeatureFlag;

    or-int/lit8 v10, v10, 0x4

    goto :goto_4d

    :cond_85
    sget-object v13, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    invoke-interface {v0, v1, v7, v13, v12}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/branch/search/internal/control/FeatureFlag;

    or-int/lit8 v10, v10, 0x2

    goto :goto_4d

    :cond_90
    sget-object v13, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    invoke-interface {v0, v1, v4, v13, v9}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/branch/search/internal/control/FeatureFlag;

    or-int/lit8 v10, v10, 0x1

    goto :goto_4d

    :cond_9b
    move-object/from16 v19, v2

    move-object/from16 v18, v8

    move-object v15, v9

    move v14, v10

    move-object/from16 v17, v11

    move-object/from16 v16, v12

    :goto_a5
    invoke-interface {v0, v1}, Ly7/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lio/branch/search/internal/control/AllFeatures;

    move-object v13, v0

    invoke-direct/range {v13 .. v19}, Lio/branch/search/internal/control/AllFeatures;-><init>(ILio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/internal/control/AllFeatures$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/control/AllFeatures;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    sget-object p0, Lio/branch/search/internal/control/AllFeatures$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/control/AllFeatures;)V
    .registers 7

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/internal/control/AllFeatures$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/c;

    move-result-object p1

    const-string v0, "self"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {}, Lio/branch/search/q0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_34

    invoke-interface {p1, p0, v2}, Ly7/c;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_34
    sget-object v0, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    iget-object v3, p2, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    invoke-interface {p1, p0, v2, v0, v3}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    :cond_3b
    iget-object v0, p2, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {}, Lio/branch/search/q0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_4e

    invoke-interface {p1, p0, v1}, Ly7/c;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_4e
    sget-object v0, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    iget-object v2, p2, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    invoke-interface {p1, p0, v1, v0, v2}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    :cond_55
    iget-object v0, p2, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {}, Lio/branch/search/q0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v2, 0x2

    if-nez v0, :cond_69

    invoke-interface {p1, p0, v2}, Ly7/c;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_70

    :cond_69
    sget-object v0, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    iget-object v3, p2, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    invoke-interface {p1, p0, v2, v0, v3}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    :cond_70
    iget-object v0, p2, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {}, Lio/branch/search/q0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v2, 0x3

    if-nez v0, :cond_84

    invoke-interface {p1, p0, v2}, Ly7/c;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_8b

    :cond_84
    sget-object v0, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    iget-object v3, p2, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    invoke-interface {p1, p0, v2, v0, v3}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    :cond_8b
    iget-object v0, p2, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {}, Lio/branch/search/q0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v1, 0x4

    if-nez v0, :cond_9f

    invoke-interface {p1, p0, v1}, Ly7/c;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_a6

    :cond_9f
    sget-object v0, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    iget-object p2, p2, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    invoke-interface {p1, p0, v1, v0, p2}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    :cond_a6
    invoke-interface {p1, p0}, Ly7/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lio/branch/search/internal/control/AllFeatures;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/control/AllFeatures$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/control/AllFeatures;)V

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
