.class public final Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz7/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz7/w<",
        "Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;",
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
        "io/branch/search/internal/ui/ContainerResolver.FlatLinkContainerResolver.$serializer",
        "Lz7/w;",
        "Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;",
        "Lkotlinx/serialization/encoding/Encoder;",
        "encoder",
        "value",
        "Lh4/z;",
        "serialize",
        "(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;)V",
        "Lkotlinx/serialization/encoding/Decoder;",
        "decoder",
        "deserialize",
        "(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;",
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

.field public static final INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;

    invoke-direct {v0}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;-><init>()V

    sput-object v0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;

    new-instance v1, Lz7/x0;

    const-string v2, "FlatLinkContainer"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Lz7/x0;-><init>(Ljava/lang/String;Lz7/w;I)V

    const-string v0, "header"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "entities"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "includeAppAtTop"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "containerType"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    sput-object v1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    sget-object v0, Lz7/k1;->b:Lz7/k1;

    invoke-static {v0}, Lf2/a;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p0, v2

    sget-object v1, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    const/4 v2, 0x1

    aput-object v1, p0, v2

    sget-object v1, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AppEntityResolver$$serializer;

    invoke-static {v1}, Lf2/a;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, p0, v2

    invoke-static {v0}, Lf2/a;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    return-object p0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;
    .registers 19

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/b;

    move-result-object v0

    invoke-interface {v0}, Ly7/b;->q()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3f

    sget-object v2, Lz7/k1;->b:Lz7/k1;

    invoke-interface {v0, v1, v4, v2}, Ly7/b;->k(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v7, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    invoke-interface {v0, v1, v6, v7}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/branch/search/internal/ui/LinkEntityResolver;

    sget-object v7, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AppEntityResolver$$serializer;

    invoke-interface {v0, v1, v5, v7}, Ly7/b;->k(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/branch/search/internal/ui/AppEntityResolver;

    invoke-interface {v0, v1, v3, v2}, Ly7/b;->k(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const v3, 0x7fffffff

    move-object/from16 v16, v2

    move v12, v3

    move-object v13, v4

    move-object v15, v5

    move-object v14, v6

    goto :goto_8b

    :cond_3f
    const/4 v2, 0x0

    move-object v8, v2

    move-object v9, v8

    move-object v10, v9

    move v7, v4

    :goto_44
    invoke-interface {v0, v1}, Ly7/b;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_85

    if-eqz v11, :cond_7a

    if-eq v11, v6, :cond_6f

    if-eq v11, v5, :cond_64

    if-ne v11, v3, :cond_5e

    sget-object v11, Lz7/k1;->b:Lz7/k1;

    invoke-interface {v0, v1, v3, v11, v2}, Ly7/b;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v7, v7, 0x8

    goto :goto_44

    :cond_5e
    new-instance v0, Lw7/i;

    invoke-direct {v0, v11}, Lw7/i;-><init>(I)V

    throw v0

    :cond_64
    sget-object v11, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AppEntityResolver$$serializer;

    invoke-interface {v0, v1, v5, v11, v9}, Ly7/b;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/branch/search/internal/ui/AppEntityResolver;

    or-int/lit8 v7, v7, 0x4

    goto :goto_44

    :cond_6f
    sget-object v11, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    invoke-interface {v0, v1, v6, v11, v10}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/branch/search/internal/ui/LinkEntityResolver;

    or-int/lit8 v7, v7, 0x2

    goto :goto_44

    :cond_7a
    sget-object v11, Lz7/k1;->b:Lz7/k1;

    invoke-interface {v0, v1, v4, v11, v8}, Ly7/b;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    or-int/lit8 v7, v7, 0x1

    goto :goto_44

    :cond_85
    move-object/from16 v16, v2

    move v12, v7

    move-object v13, v8

    move-object v15, v9

    move-object v14, v10

    :goto_8b
    invoke-interface {v0, v1}, Ly7/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;-><init>(ILjava/lang/String;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    sget-object p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;)V
    .registers 9

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/c;

    move-result-object p1

    const-string v0, "self"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1, p0}, Lio/branch/search/internal/ui/ContainerResolver;->a(Lio/branch/search/internal/ui/ContainerResolver;Ly7/c;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    sget-object v0, Lz7/k1;->b:Lz7/k1;

    iget-object v1, p2, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, p0, v2, v0, v1}, Ly7/c;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    sget-object v1, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    iget-object v2, p2, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b:Lio/branch/search/internal/ui/LinkEntityResolver;

    const/4 v3, 0x1

    invoke-interface {p1, p0, v3, v1, v2}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    iget-object v1, p2, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->c:Lio/branch/search/internal/ui/AppEntityResolver;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    const/4 v4, 0x2

    if-nez v1, :cond_43

    invoke-interface {p1, p0, v4}, Ly7/c;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4a

    :cond_43
    sget-object v1, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AppEntityResolver$$serializer;

    iget-object v5, p2, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->c:Lio/branch/search/internal/ui/AppEntityResolver;

    invoke-interface {p1, p0, v4, v1, v5}, Ly7/c;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    :cond_4a
    iget-object v1, p2, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    const/4 v2, 0x3

    if-nez v1, :cond_5a

    invoke-interface {p1, p0, v2}, Ly7/c;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_5f

    :cond_5a
    iget-object p2, p2, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->d:Ljava/lang/String;

    invoke-interface {p1, p0, v2, v0, p2}, Ly7/c;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    :cond_5f
    invoke-interface {p1, p0}, Ly7/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;)V

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
