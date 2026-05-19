.class public final Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz7/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/UISkeletonResolver$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz7/w<",
        "Lio/branch/search/internal/ui/UISkeletonResolver$Default;",
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
        "io/branch/search/internal/ui/UISkeletonResolver.Default.$serializer",
        "Lz7/w;",
        "Lio/branch/search/internal/ui/UISkeletonResolver$Default;",
        "Lkotlinx/serialization/encoding/Encoder;",
        "encoder",
        "value",
        "Lh4/z;",
        "serialize",
        "(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/UISkeletonResolver$Default;)V",
        "Lkotlinx/serialization/encoding/Decoder;",
        "decoder",
        "deserialize",
        "(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/UISkeletonResolver$Default;",
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

.field public static final INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    invoke-direct {v0}, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;-><init>()V

    sput-object v0, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    new-instance v1, Lz7/x0;

    const-string v2, "Default"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lz7/x0;-><init>(Ljava/lang/String;Lz7/w;I)V

    const-string v0, "containers"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "adLogic"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    sput-object v1, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x2

    new-array v0, p0, [Lkotlinx/serialization/KSerializer;

    new-instance v1, Lz7/f;

    new-instance v2, Lw7/f;

    const-class v3, Lio/branch/search/internal/ui/ContainerResolver;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const/4 v4, 0x3

    new-array v5, v4, [Lz4/d;

    const-class v6, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    aput-object v6, v5, p0

    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    sget-object v6, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$$serializer;

    aput-object v6, v4, v7

    sget-object v6, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$$serializer;

    aput-object v6, v4, v8

    sget-object v6, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;

    aput-object v6, v4, p0

    const-string v6, "io.branch.search.internal.ui.ContainerResolver"

    invoke-direct {v2, v6, v3, v5, v4}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    invoke-direct {v1, v2}, Lz7/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    aput-object v1, v0, v7

    new-instance v1, Lw7/f;

    const-class v2, Lio/branch/search/internal/ui/AdLogic;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    new-array v3, p0, [Lz4/d;

    const-class v4, Lio/branch/search/internal/ui/AdLogic$Static;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    aput-object v4, v3, v7

    const-class v4, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    aput-object v4, v3, v8

    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lio/branch/search/internal/ui/AdLogic$Static$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AdLogic$Static$$serializer;

    aput-object v4, p0, v7

    sget-object v4, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;

    aput-object v4, p0, v8

    const-string v4, "io.branch.search.internal.ui.AdLogic"

    invoke-direct {v1, v4, v2, v3, p0}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    aput-object v1, v0, v8

    return-object v0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/UISkeletonResolver$Default;
    .registers 25

    move-object/from16 v0, p1

    const-class v1, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    const-class v2, Lio/branch/search/internal/ui/AdLogic$Static;

    const-class v3, Lio/branch/search/internal/ui/AdLogic;

    const-class v4, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    const-class v5, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    const-class v6, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;

    const-class v7, Lio/branch/search/internal/ui/ContainerResolver;

    const-string v8, "decoder"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v8}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/b;

    move-result-object v0

    invoke-interface {v0}, Ly7/b;->q()Z

    move-result v9

    const-string v10, "io.branch.search.internal.ui.AdLogic"

    const-string v11, "io.branch.search.internal.ui.ContainerResolver"

    const/4 v12, 0x3

    const/4 v14, 0x0

    if-eqz v9, :cond_8c

    new-instance v9, Lz7/f;

    new-instance v13, Lw7/f;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v7

    new-array v15, v12, [Lz4/d;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    aput-object v6, v15, v14

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v15, v6

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v15, v5

    new-array v4, v12, [Lkotlinx/serialization/KSerializer;

    sget-object v12, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$$serializer;

    aput-object v12, v4, v14

    sget-object v12, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$$serializer;

    aput-object v12, v4, v6

    sget-object v6, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;

    aput-object v6, v4, v5

    invoke-direct {v13, v11, v7, v15, v4}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    invoke-direct {v9, v13}, Lz7/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v8, v14, v9}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v6, Lw7/f;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    new-array v7, v5, [Lz4/d;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    aput-object v2, v7, v14

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    const/4 v9, 0x1

    aput-object v1, v7, v9

    new-array v1, v5, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lio/branch/search/internal/ui/AdLogic$Static$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AdLogic$Static$$serializer;

    aput-object v2, v1, v14

    sget-object v2, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;

    aput-object v2, v1, v9

    invoke-direct {v6, v10, v3, v7, v1}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v8, v9, v6}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/internal/ui/AdLogic;

    const v2, 0x7fffffff

    goto/16 :goto_13d

    :cond_8c
    const/4 v9, 0x1

    const/4 v13, 0x0

    move-object/from16 v16, v13

    move v15, v14

    :goto_91
    invoke-interface {v0, v8}, Ly7/b;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_138

    if-eqz v12, :cond_e0

    if-ne v12, v9, :cond_da

    new-instance v12, Lw7/f;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v14

    move-object/from16 v19, v3

    const/4 v9, 0x2

    new-array v3, v9, [Lz4/d;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v20

    const/16 v18, 0x0

    aput-object v20, v3, v18

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v20

    move-object/from16 v21, v1

    const/4 v1, 0x1

    aput-object v20, v3, v1

    new-array v1, v9, [Lkotlinx/serialization/KSerializer;

    sget-object v9, Lio/branch/search/internal/ui/AdLogic$Static$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AdLogic$Static$$serializer;

    aput-object v9, v1, v18

    sget-object v9, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;

    move-object/from16 v20, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    invoke-direct {v12, v10, v14, v3, v1}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v8, v2, v12, v13}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lio/branch/search/internal/ui/AdLogic;

    or-int/lit8 v15, v15, 0x2

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    move-object/from16 v1, v21

    const/4 v9, 0x1

    const/4 v14, 0x0

    goto :goto_91

    :cond_da
    new-instance v0, Lw7/i;

    invoke-direct {v0, v12}, Lw7/i;-><init>(I)V

    throw v0

    :cond_e0
    move-object/from16 v21, v1

    move-object/from16 v20, v2

    move-object/from16 v19, v3

    new-instance v1, Lz7/f;

    new-instance v2, Lw7/f;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const/4 v9, 0x3

    new-array v12, v9, [Lz4/d;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v14

    const/4 v9, 0x0

    aput-object v14, v12, v9

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v14

    const/16 v18, 0x1

    aput-object v14, v12, v18

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v14

    const/16 v22, 0x2

    aput-object v14, v12, v22

    move-object/from16 p0, v4

    const/4 v14, 0x3

    new-array v4, v14, [Lkotlinx/serialization/KSerializer;

    sget-object v17, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$$serializer;

    aput-object v17, v4, v9

    sget-object v17, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$$serializer;

    aput-object v17, v4, v18

    sget-object v17, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;

    aput-object v17, v4, v22

    invoke-direct {v2, v11, v3, v12, v4}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    invoke-direct {v1, v2}, Lz7/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    move-object/from16 v2, v16

    invoke-interface {v0, v8, v9, v1, v2}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/util/List;

    or-int/lit8 v15, v15, 0x1

    move-object/from16 v4, p0

    move v14, v9

    move/from16 v9, v18

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    move-object/from16 v1, v21

    goto/16 :goto_91

    :cond_138
    move-object/from16 v2, v16

    move-object v4, v2

    move-object v1, v13

    move v2, v15

    :goto_13d
    invoke-interface {v0, v8}, Ly7/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-direct {v0, v2, v4, v1}, Lio/branch/search/internal/ui/UISkeletonResolver$Default;-><init>(ILjava/util/List;Lio/branch/search/internal/ui/AdLogic;)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    sget-object p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/UISkeletonResolver$Default;)V
    .registers 12

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/c;

    move-result-object p1

    const-string v0, "self"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "output"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "serialDesc"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz7/f;

    new-instance v1, Lw7/f;

    const-class v2, Lio/branch/search/internal/ui/ContainerResolver;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Lz4/d;

    const-class v5, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    sget-object v5, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$$serializer;

    aput-object v5, v3, v6

    sget-object v5, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$$serializer;

    aput-object v5, v3, v7

    sget-object v5, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;

    aput-object v5, v3, v8

    const-string v5, "io.branch.search.internal.ui.ContainerResolver"

    invoke-direct {v1, v5, v2, v4, v3}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    invoke-direct {v0, v1}, Lz7/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    iget-object v1, p2, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a:Ljava/util/List;

    invoke-interface {p1, p0, v6, v0, v1}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    new-instance v0, Lw7/f;

    const-class v1, Lio/branch/search/internal/ui/AdLogic;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    new-array v2, v8, [Lz4/d;

    const-class v3, Lio/branch/search/internal/ui/AdLogic$Static;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    aput-object v3, v2, v6

    const-class v3, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    aput-object v3, v2, v7

    new-array v3, v8, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lio/branch/search/internal/ui/AdLogic$Static$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AdLogic$Static$$serializer;

    aput-object v4, v3, v6

    sget-object v4, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;

    aput-object v4, v3, v7

    const-string v4, "io.branch.search.internal.ui.AdLogic"

    invoke-direct {v0, v4, v1, v2, v3}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    iget-object p2, p2, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->b:Lio/branch/search/internal/ui/AdLogic;

    invoke-interface {p1, p0, v7, v0, p2}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Ly7/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/UISkeletonResolver$Default;)V

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
