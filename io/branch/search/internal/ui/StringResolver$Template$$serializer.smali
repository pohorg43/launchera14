.class public final Lio/branch/search/internal/ui/StringResolver$Template$$serializer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz7/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/StringResolver$Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz7/w<",
        "Lio/branch/search/internal/ui/StringResolver$Template;",
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
        "io/branch/search/internal/ui/StringResolver.Template.$serializer",
        "Lz7/w;",
        "Lio/branch/search/internal/ui/StringResolver$Template;",
        "Lkotlinx/serialization/encoding/Encoder;",
        "encoder",
        "value",
        "Lh4/z;",
        "serialize",
        "(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/StringResolver$Template;)V",
        "Lkotlinx/serialization/encoding/Decoder;",
        "decoder",
        "deserialize",
        "(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/StringResolver$Template;",
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

.field public static final INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    invoke-direct {v0}, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;-><init>()V

    sput-object v0, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    new-instance v1, Lz7/x0;

    const-string v2, "Template"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lz7/x0;-><init>(Ljava/lang/String;Lz7/w;I)V

    const-string v0, "template"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "field"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    sput-object v1, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x2

    new-array v0, p0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lz7/k1;->b:Lz7/k1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lw7/f;

    const-class v3, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    const/4 v4, 0x5

    new-array v5, v4, [Lz4/d;

    const-class v6, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    aput-object v6, v5, v2

    const-class v6, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    aput-object v6, v5, p0

    const-class v6, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v5, v8

    const-class v6, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    const/4 v9, 0x4

    aput-object v6, v5, v9

    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    sget-object v6, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v6, v4, v2

    sget-object v2, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v2, v4, v7

    new-instance v2, Lz7/t0;

    sget-object v6, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v10, "AppName"

    invoke-direct {v2, v10, v6}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v4, p0

    new-instance p0, Lz7/t0;

    sget-object v2, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v6, "LinkTitle"

    invoke-direct {p0, v6, v2}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object p0, v4, v8

    new-instance p0, Lz7/t0;

    sget-object v2, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v6, "LinkDescription"

    invoke-direct {p0, v6, v2}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object p0, v4, v9

    const-string p0, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v1, p0, v3, v5, v4}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    aput-object v1, v0, v7

    return-object v0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/StringResolver$Template;
    .registers 27

    move-object/from16 v0, p1

    const-class v1, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-class v2, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-class v3, Lio/branch/search/internal/ui/StringResolver$AppName;

    const-class v4, Lio/branch/search/internal/ui/StringResolver$Template;

    const-class v5, Lio/branch/search/internal/ui/StringResolver$Constant;

    const-class v6, Lio/branch/search/internal/ui/StringResolver;

    const-string v7, "decoder"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v7}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/b;

    move-result-object v0

    invoke-interface {v0}, Ly7/b;->q()Z

    move-result v8

    const-string v9, "io.branch.search.internal.ui.StringResolver"

    const-string v10, "LinkDescription"

    const-string v11, "LinkTitle"

    const-string v12, "AppName"

    const/4 v15, 0x5

    const/16 v16, 0x2

    const/4 v13, 0x0

    if-eqz v8, :cond_92

    invoke-interface {v0, v7, v13}, Ly7/b;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v8

    new-instance v14, Lw7/f;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    move-object/from16 v18, v8

    new-array v8, v15, [Lz4/d;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    aput-object v5, v8, v13

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v8, v5

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    aput-object v3, v8, v16

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v8, v3

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v8, v2

    new-array v1, v15, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v2, v1, v13

    sget-object v2, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v2, v1, v5

    new-instance v2, Lz7/t0;

    sget-object v3, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-direct {v2, v12, v3}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v1, v16

    new-instance v2, Lz7/t0;

    sget-object v3, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-direct {v2, v11, v3}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lz7/t0;

    sget-object v3, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-direct {v2, v10, v3}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-direct {v14, v9, v6, v8, v1}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/4 v8, 0x1

    invoke-interface {v0, v7, v8, v14}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/internal/ui/StringResolver;

    const v2, 0x7fffffff

    move-object/from16 v8, v18

    goto/16 :goto_132

    :cond_92
    const/4 v8, 0x1

    const/4 v14, 0x0

    move/from16 v18, v13

    move-object/from16 v19, v14

    :goto_98
    invoke-interface {v0, v7}, Ly7/b;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v13

    const/4 v15, -0x1

    if-eq v13, v15, :cond_12d

    if-eqz v13, :cond_116

    if-ne v13, v8, :cond_110

    new-instance v13, Lw7/f;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v15

    move-object/from16 v21, v6

    const/4 v8, 0x5

    new-array v6, v8, [Lz4/d;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v22

    const/16 v20, 0x0

    aput-object v22, v6, v20

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v22

    const/16 v17, 0x1

    aput-object v22, v6, v17

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v22

    aput-object v22, v6, v16

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v22

    const/16 v23, 0x3

    aput-object v22, v6, v23

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v22

    const/16 v23, 0x4

    aput-object v22, v6, v23

    move-object/from16 v22, v1

    new-array v1, v8, [Lkotlinx/serialization/KSerializer;

    sget-object v23, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v23, v1, v20

    sget-object v23, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v23, v1, v17

    new-instance v8, Lz7/t0;

    move-object/from16 v24, v2

    sget-object v2, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-direct {v8, v12, v2}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v8, v1, v16

    new-instance v2, Lz7/t0;

    sget-object v8, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-direct {v2, v11, v8}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v8, 0x3

    aput-object v2, v1, v8

    new-instance v2, Lz7/t0;

    sget-object v8, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-direct {v2, v10, v8}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v8, 0x4

    aput-object v2, v1, v8

    invoke-direct {v13, v9, v15, v6, v1}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/4 v1, 0x1

    invoke-interface {v0, v7, v1, v13, v14}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lio/branch/search/internal/ui/StringResolver;

    or-int/lit8 v18, v18, 0x2

    move v8, v1

    move-object/from16 v6, v21

    goto :goto_126

    :cond_110
    new-instance v0, Lw7/i;

    invoke-direct {v0, v13}, Lw7/i;-><init>(I)V

    throw v0

    :cond_116
    move-object/from16 v22, v1

    move-object/from16 v24, v2

    move-object/from16 v21, v6

    move v1, v8

    const/4 v2, 0x0

    const/4 v8, 0x4

    invoke-interface {v0, v7, v2}, Ly7/b;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v19

    or-int/lit8 v18, v18, 0x1

    move v8, v1

    :goto_126
    move-object/from16 v1, v22

    move-object/from16 v2, v24

    const/4 v15, 0x5

    goto/16 :goto_98

    :cond_12d
    move-object v1, v14

    move/from16 v2, v18

    move-object/from16 v8, v19

    :goto_132
    invoke-interface {v0, v7}, Ly7/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-direct {v0, v2, v8, v1}, Lio/branch/search/internal/ui/StringResolver$Template;-><init>(ILjava/lang/String;Lio/branch/search/internal/ui/StringResolver;)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/StringResolver$Template;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    sget-object p0, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/StringResolver$Template;)V
    .registers 14

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    iget-object v0, p2, Lio/branch/search/internal/ui/StringResolver$Template;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0}, Ly7/c;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    new-instance v0, Lw7/f;

    const-class v2, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const/4 v3, 0x5

    new-array v4, v3, [Lz4/d;

    const-class v5, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    aput-object v5, v4, v1

    const-class v5, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-class v5, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    const-class v5, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    const/4 v9, 0x4

    aput-object v5, v4, v9

    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v5, v3, v1

    sget-object v1, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v1, v3, v6

    new-instance v1, Lz7/t0;

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v10, "AppName"

    invoke-direct {v1, v10, v5}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v3, v7

    new-instance v1, Lz7/t0;

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v7, "LinkTitle"

    invoke-direct {v1, v7, v5}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v3, v8

    new-instance v1, Lz7/t0;

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v7, "LinkDescription"

    invoke-direct {v1, v7, v5}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v3, v9

    const-string v1, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v0, v1, v2, v4, v3}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    iget-object p2, p2, Lio/branch/search/internal/ui/StringResolver$Template;->b:Lio/branch/search/internal/ui/StringResolver;

    invoke-interface {p1, p0, v6, v0, p2}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Ly7/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/StringResolver$Template;)V

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
