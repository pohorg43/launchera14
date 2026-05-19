.class public final Lio/branch/search/KNetworkUsageCappingRule$$serializer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz7/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/KNetworkUsageCappingRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz7/w<",
        "Lio/branch/search/KNetworkUsageCappingRule;",
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
        "io/branch/search/KNetworkUsageCappingRule.$serializer",
        "Lz7/w;",
        "Lio/branch/search/KNetworkUsageCappingRule;",
        "Lkotlinx/serialization/encoding/Encoder;",
        "encoder",
        "value",
        "Lh4/z;",
        "serialize",
        "(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/KNetworkUsageCappingRule;)V",
        "Lkotlinx/serialization/encoding/Decoder;",
        "decoder",
        "deserialize",
        "(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/KNetworkUsageCappingRule;",
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

.field public static final INSTANCE:Lio/branch/search/KNetworkUsageCappingRule$$serializer;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/branch/search/KNetworkUsageCappingRule$$serializer;

    invoke-direct {v0}, Lio/branch/search/KNetworkUsageCappingRule$$serializer;-><init>()V

    sput-object v0, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->INSTANCE:Lio/branch/search/KNetworkUsageCappingRule$$serializer;

    new-instance v1, Lz7/x0;

    const-string v2, "io.branch.search.KNetworkUsageCappingRule"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Lz7/x0;-><init>(Ljava/lang/String;Lz7/w;I)V

    const-string v0, "days"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "byte_limit"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "channels"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "connection_types"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    sput-object v1, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x4

    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lz7/d0;->b:Lz7/d0;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lz7/o0;->b:Lz7/o0;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Lz7/k1;->b:Lz7/k1;

    invoke-static {v0}, Lf2/a;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, p0, v2

    invoke-static {v0}, Lf2/a;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    return-object p0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/KNetworkUsageCappingRule;
    .registers 22

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/b;

    move-result-object v0

    invoke-interface {v0}, Ly7/b;->q()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_38

    invoke-interface {v0, v1, v6}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v2

    invoke-interface {v0, v1, v5}, Ly7/b;->f(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v5

    sget-object v7, Lz7/k1;->b:Lz7/k1;

    invoke-interface {v0, v1, v4, v7}, Ly7/b;->k(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v1, v3, v7}, Ly7/b;->k(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const v7, 0x7fffffff

    move v14, v2

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    move-wide v15, v5

    move v13, v7

    goto :goto_80

    :cond_38
    const/4 v2, 0x0

    const-wide/16 v7, 0x0

    move v11, v6

    move-wide v9, v7

    move-object v7, v2

    move-object v8, v7

    move v2, v11

    :goto_40
    invoke-interface {v0, v1}, Ly7/b;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_79

    if-eqz v12, :cond_72

    if-eq v12, v5, :cond_6b

    if-eq v12, v4, :cond_60

    if-ne v12, v3, :cond_5a

    sget-object v12, Lz7/k1;->b:Lz7/k1;

    invoke-interface {v0, v1, v3, v12, v7}, Ly7/b;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    or-int/lit8 v11, v11, 0x8

    goto :goto_40

    :cond_5a
    new-instance v0, Lw7/i;

    invoke-direct {v0, v12}, Lw7/i;-><init>(I)V

    throw v0

    :cond_60
    sget-object v12, Lz7/k1;->b:Lz7/k1;

    invoke-interface {v0, v1, v4, v12, v8}, Ly7/b;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    or-int/lit8 v11, v11, 0x4

    goto :goto_40

    :cond_6b
    invoke-interface {v0, v1, v5}, Ly7/b;->f(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v9

    or-int/lit8 v11, v11, 0x2

    goto :goto_40

    :cond_72
    invoke-interface {v0, v1, v6}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v2

    or-int/lit8 v11, v11, 0x1

    goto :goto_40

    :cond_79
    move v14, v2

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move-wide v15, v9

    move v13, v11

    :goto_80
    invoke-interface {v0, v1}, Ly7/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lio/branch/search/KNetworkUsageCappingRule;

    const/16 v19, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Lio/branch/search/KNetworkUsageCappingRule;-><init>(IIJLjava/lang/String;Ljava/lang/String;Lz7/g1;)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/KNetworkUsageCappingRule;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    sget-object p0, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/KNetworkUsageCappingRule;)V
    .registers 3

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/c;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lio/branch/search/KNetworkUsageCappingRule;->a(Lio/branch/search/KNetworkUsageCappingRule;Ly7/c;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, p0}, Ly7/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lio/branch/search/KNetworkUsageCappingRule;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/KNetworkUsageCappingRule;)V

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
