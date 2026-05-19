.class public final Lio/branch/search/internal/ui/AppEntityResolver$$serializer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz7/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/AppEntityResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz7/w<",
        "Lio/branch/search/internal/ui/AppEntityResolver;",
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
        "io/branch/search/internal/ui/AppEntityResolver.$serializer",
        "Lz7/w;",
        "Lio/branch/search/internal/ui/AppEntityResolver;",
        "Lkotlinx/serialization/encoding/Encoder;",
        "encoder",
        "value",
        "Lh4/z;",
        "serialize",
        "(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/AppEntityResolver;)V",
        "Lkotlinx/serialization/encoding/Decoder;",
        "decoder",
        "deserialize",
        "(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/AppEntityResolver;",
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

.field public static final INSTANCE:Lio/branch/search/internal/ui/AppEntityResolver$$serializer;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;

    invoke-direct {v0}, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;-><init>()V

    sput-object v0, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AppEntityResolver$$serializer;

    new-instance v1, Lz7/x0;

    const-string v2, "io.branch.search.internal.ui.AppEntityResolver"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v0, v3}, Lz7/x0;-><init>(Ljava/lang/String;Lz7/w;I)V

    const-string v0, "name"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "description"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "primaryImage"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "secondaryImage"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "extra"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    sput-object v1, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const-class v0, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    const-class v1, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    const-class v2, Lio/branch/search/internal/ui/ImageResolver;

    const-class v3, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-class v4, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-class v5, Lio/branch/search/internal/ui/StringResolver$AppName;

    const-class v6, Lio/branch/search/internal/ui/StringResolver$Template;

    const-class v7, Lio/branch/search/internal/ui/StringResolver$Constant;

    const-class v8, Lio/branch/search/internal/ui/StringResolver;

    const/4 v9, 0x5

    new-array v10, v9, [Lkotlinx/serialization/KSerializer;

    new-instance v11, Lw7/f;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v12

    new-array v13, v9, [Lz4/d;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v14

    const/16 v17, 0x3

    aput-object v14, v13, v17

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v14

    const/16 v18, 0x4

    aput-object v14, v13, v18

    new-array v14, v9, [Lkotlinx/serialization/KSerializer;

    sget-object v19, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    const/16 v20, 0x0

    aput-object v19, v14, v20

    sget-object v20, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    const/16 v16, 0x1

    aput-object v20, v14, v16

    new-instance v9, Lz7/t0;

    sget-object v15, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    move-object/from16 v22, v0

    const-string v0, "AppName"

    invoke-direct {v9, v0, v15}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v21, 0x2

    aput-object v9, v14, v21

    new-instance v9, Lz7/t0;

    move-object/from16 v23, v1

    sget-object v1, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    move-object/from16 v24, v2

    const-string v2, "LinkTitle"

    invoke-direct {v9, v2, v1}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v9, v14, v17

    new-instance v9, Lz7/t0;

    move-object/from16 v25, v1

    sget-object v1, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    move-object/from16 v26, v2

    const-string v2, "LinkDescription"

    invoke-direct {v9, v2, v1}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v9, v14, v18

    const-string v9, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v11, v9, v12, v13, v14}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/4 v12, 0x0

    aput-object v11, v10, v12

    new-instance v11, Lw7/f;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v8

    const/4 v13, 0x5

    new-array v14, v13, [Lz4/d;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v7

    aput-object v7, v14, v12

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v14, v7

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v14, v6

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    aput-object v4, v14, v17

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    aput-object v3, v14, v18

    new-array v3, v13, [Lkotlinx/serialization/KSerializer;

    aput-object v19, v3, v12

    aput-object v20, v3, v7

    new-instance v4, Lz7/t0;

    invoke-direct {v4, v0, v15}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v3, v6

    new-instance v0, Lz7/t0;

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    invoke-direct {v0, v5, v4}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v0, v3, v17

    new-instance v0, Lz7/t0;

    invoke-direct {v0, v2, v1}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v0, v3, v18

    invoke-direct {v11, v9, v8, v14, v3}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    invoke-static {v11}, Lf2/a;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v10, v1

    new-instance v0, Lw7/f;

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Lz4/d;

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    aput-object v5, v4, v1

    new-array v5, v3, [Lkotlinx/serialization/KSerializer;

    new-instance v3, Lz7/t0;

    sget-object v7, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    const-string v8, "FromApp"

    invoke-direct {v3, v8, v7}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v5, v6

    new-instance v3, Lz7/t0;

    sget-object v6, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    const-string v9, "FromLink"

    invoke-direct {v3, v9, v6}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v5, v1

    const-string v3, "io.branch.search.internal.ui.ImageResolver"

    invoke-direct {v0, v3, v2, v4, v5}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x2

    aput-object v0, v10, v2

    new-instance v0, Lw7/f;

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    new-array v5, v2, [Lz4/d;

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v5, v12

    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v11

    aput-object v11, v5, v1

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    new-instance v11, Lz7/t0;

    invoke-direct {v11, v8, v7}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v11, v2, v12

    new-instance v7, Lz7/t0;

    invoke-direct {v7, v9, v6}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v2, v1

    invoke-direct {v0, v3, v4, v5, v2}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    invoke-static {v0}, Lf2/a;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v10, v17

    new-instance v0, Lw7/f;

    const-class v2, Lio/branch/search/internal/ui/ExtraResolver;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    new-array v3, v1, [Lz4/d;

    const-class v4, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    new-instance v4, Lz7/t0;

    sget-object v6, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;->a:Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    const-string v7, "FromAppStoreLink"

    invoke-direct {v4, v7, v6}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v1, v5

    const-string v4, "io.branch.search.internal.ui.ExtraResolver"

    invoke-direct {v0, v4, v2, v3, v1}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    invoke-static {v0}, Lf2/a;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v10, v18

    return-object v10
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/AppEntityResolver;
    .registers 43

    move-object/from16 v0, p1

    const-class v1, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    const-class v2, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    const-class v3, Lio/branch/search/internal/ui/ImageResolver;

    const-class v4, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-class v5, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-class v6, Lio/branch/search/internal/ui/StringResolver$AppName;

    const-class v7, Lio/branch/search/internal/ui/StringResolver$Template;

    const-class v8, Lio/branch/search/internal/ui/StringResolver$Constant;

    const-class v9, Lio/branch/search/internal/ui/StringResolver;

    const-string v10, "decoder"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v10}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/b;

    move-result-object v0

    invoke-interface {v0}, Ly7/b;->q()Z

    move-result v11

    const-string v12, "FromLink"

    const-string v13, "FromApp"

    const-string v14, "io.branch.search.internal.ui.StringResolver"

    const-string v15, "LinkDescription"

    move-object/from16 p0, v12

    const-string v12, "LinkTitle"

    move-object/from16 p1, v13

    const-string v13, "AppName"

    move-object/from16 v16, v1

    if-eqz v11, :cond_1a8

    new-instance v11, Lw7/f;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    const/4 v2, 0x5

    new-array v3, v2, [Lz4/d;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v17

    const/16 v21, 0x0

    aput-object v17, v3, v21

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v17

    const/16 v22, 0x1

    aput-object v17, v3, v22

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v17

    const/16 v20, 0x2

    aput-object v17, v3, v20

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v17

    const/16 v18, 0x3

    aput-object v17, v3, v18

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v17

    const/16 v19, 0x4

    aput-object v17, v3, v19

    move-object/from16 v25, v4

    new-array v4, v2, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v2, v4, v21

    sget-object v26, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v26, v4, v22

    move-object/from16 v27, v2

    new-instance v2, Lz7/t0;

    move-object/from16 v28, v5

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-direct {v2, v13, v5}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v20, 0x2

    aput-object v2, v4, v20

    new-instance v2, Lz7/t0;

    move-object/from16 v29, v5

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-direct {v2, v12, v5}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v18, 0x3

    aput-object v2, v4, v18

    new-instance v2, Lz7/t0;

    move-object/from16 v30, v5

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-direct {v2, v15, v5}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v19, 0x4

    aput-object v2, v4, v19

    invoke-direct {v11, v14, v1, v3, v4}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/4 v1, 0x0

    invoke-interface {v0, v10, v1, v11}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/internal/ui/StringResolver;

    new-instance v3, Lw7/f;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    const/4 v9, 0x5

    new-array v11, v9, [Lz4/d;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v8

    aput-object v8, v11, v1

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v11, v8

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v11, v7

    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    const/16 v17, 0x3

    aput-object v6, v11, v17

    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    const/16 v18, 0x4

    aput-object v6, v11, v18

    new-array v6, v9, [Lkotlinx/serialization/KSerializer;

    aput-object v27, v6, v1

    aput-object v26, v6, v8

    new-instance v1, Lz7/t0;

    move-object/from16 v9, v29

    invoke-direct {v1, v13, v9}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v6, v7

    new-instance v1, Lz7/t0;

    move-object/from16 v7, v30

    invoke-direct {v1, v12, v7}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v6, v17

    new-instance v1, Lz7/t0;

    invoke-direct {v1, v15, v5}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x4

    aput-object v1, v6, v5

    invoke-direct {v3, v14, v4, v11, v6}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v10, v8, v3}, Ly7/b;->k(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/internal/ui/StringResolver;

    new-instance v3, Lw7/f;

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Lz4/d;

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v6, v9

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v7

    aput-object v7, v6, v8

    new-array v7, v5, [Lkotlinx/serialization/KSerializer;

    new-instance v11, Lz7/t0;

    sget-object v12, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    move-object/from16 v13, p1

    invoke-direct {v11, v13, v12}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v11, v7, v9

    new-instance v9, Lz7/t0;

    sget-object v11, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    move-object/from16 v14, p0

    invoke-direct {v9, v14, v11}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v9, v7, v8

    const-string v9, "io.branch.search.internal.ui.ImageResolver"

    invoke-direct {v3, v9, v4, v6, v7}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v10, v5, v3}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/internal/ui/ImageResolver;

    new-instance v4, Lw7/f;

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    new-array v7, v5, [Lz4/d;

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v9

    const/4 v15, 0x0

    aput-object v9, v7, v15

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v9

    aput-object v9, v7, v8

    new-array v5, v5, [Lkotlinx/serialization/KSerializer;

    new-instance v9, Lz7/t0;

    invoke-direct {v9, v13, v12}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v9, v5, v15

    new-instance v9, Lz7/t0;

    invoke-direct {v9, v14, v11}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v9, v5, v8

    const-string v9, "io.branch.search.internal.ui.ImageResolver"

    invoke-direct {v4, v9, v6, v7, v5}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/4 v5, 0x3

    invoke-interface {v0, v10, v5, v4}, Ly7/b;->k(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/internal/ui/ImageResolver;

    new-instance v5, Lw7/f;

    const-class v6, Lio/branch/search/internal/ui/ExtraResolver;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    new-array v7, v8, [Lz4/d;

    const-class v9, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v7, v11

    new-array v8, v8, [Lkotlinx/serialization/KSerializer;

    new-instance v9, Lz7/t0;

    sget-object v12, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;->a:Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    const-string v13, "FromAppStoreLink"

    invoke-direct {v9, v13, v12}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v9, v8, v11

    const-string v9, "io.branch.search.internal.ui.ExtraResolver"

    invoke-direct {v5, v9, v6, v7, v8}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/4 v6, 0x4

    invoke-interface {v0, v10, v6, v5}, Ly7/b;->k(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/branch/search/internal/ui/ExtraResolver;

    const v6, 0x7fffffff

    move-object/from16 v37, v1

    move-object/from16 v36, v2

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    move/from16 v35, v6

    goto/16 :goto_3d8

    :cond_1a8
    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v28, v5

    move-object/from16 v2, p1

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v11, v5

    move-object/from16 v26, v11

    move-object/from16 v29, v26

    const/16 v27, 0x0

    :goto_1be
    invoke-interface {v0, v10}, Ly7/b;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v3

    move-object/from16 p0, v14

    const/4 v14, -0x1

    if-eq v3, v14, :cond_3c4

    if-eqz v3, :cond_333

    const/4 v14, 0x1

    if-eq v3, v14, :cond_2b1

    const/4 v14, 0x2

    if-eq v3, v14, :cond_25e

    const/4 v14, 0x3

    if-eq v3, v14, :cond_218

    const/4 v14, 0x4

    if-ne v3, v14, :cond_212

    new-instance v3, Lw7/f;

    const-class v14, Lio/branch/search/internal/ui/ExtraResolver;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v14

    move-object/from16 v30, v12

    move-object/from16 p1, v15

    const/4 v15, 0x1

    new-array v12, v15, [Lz4/d;

    const-class v22, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v22

    const/16 v21, 0x0

    aput-object v22, v12, v21

    move-object/from16 v31, v13

    new-array v13, v15, [Lkotlinx/serialization/KSerializer;

    new-instance v15, Lz7/t0;

    move-object/from16 v32, v6

    sget-object v6, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;->a:Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    move-object/from16 v33, v7

    const-string v7, "FromAppStoreLink"

    invoke-direct {v15, v7, v6}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v15, v13, v21

    const-string v6, "io.branch.search.internal.ui.ExtraResolver"

    invoke-direct {v3, v6, v14, v12, v13}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/4 v6, 0x4

    invoke-interface {v0, v10, v6, v3, v4}, Ly7/b;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lio/branch/search/internal/ui/ExtraResolver;

    or-int/lit8 v27, v27, 0x10

    goto/16 :goto_2a3

    :cond_212
    new-instance v0, Lw7/i;

    invoke-direct {v0, v3}, Lw7/i;-><init>(I)V

    throw v0

    :cond_218
    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 p1, v15

    new-instance v3, Lw7/f;

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    const/4 v7, 0x2

    new-array v12, v7, [Lz4/d;

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v12, v15

    new-array v13, v7, [Lkotlinx/serialization/KSerializer;

    new-instance v7, Lz7/t0;

    sget-object v15, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-direct {v7, v2, v15}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v13, v14

    new-instance v7, Lz7/t0;

    sget-object v14, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-direct {v7, v1, v14}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v14, 0x1

    aput-object v7, v13, v14

    const-string v7, "io.branch.search.internal.ui.ImageResolver"

    invoke-direct {v3, v7, v6, v12, v13}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/4 v6, 0x3

    invoke-interface {v0, v10, v6, v3, v11}, Ly7/b;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lio/branch/search/internal/ui/ImageResolver;

    or-int/lit8 v27, v27, 0x8

    goto :goto_2a3

    :cond_25e
    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 p1, v15

    new-instance v3, Lw7/f;

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    const/4 v7, 0x2

    new-array v12, v7, [Lz4/d;

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v12, v15

    new-array v13, v7, [Lkotlinx/serialization/KSerializer;

    new-instance v7, Lz7/t0;

    sget-object v15, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-direct {v7, v2, v15}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v13, v14

    new-instance v7, Lz7/t0;

    sget-object v14, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-direct {v7, v1, v14}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v14, 0x1

    aput-object v7, v13, v14

    const-string v7, "io.branch.search.internal.ui.ImageResolver"

    invoke-direct {v3, v7, v6, v12, v13}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/4 v6, 0x2

    invoke-interface {v0, v10, v6, v3, v5}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lio/branch/search/internal/ui/ImageResolver;

    or-int/lit8 v27, v27, 0x4

    :goto_2a3
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v12, v30

    move-object/from16 v13, v31

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    goto/16 :goto_1be

    :cond_2b1
    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 p1, v15

    new-instance v3, Lw7/f;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    const/4 v7, 0x5

    new-array v12, v7, [Lz4/d;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {v33 .. v33}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v12, v15

    invoke-static/range {v32 .. v32}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v13

    const/16 v17, 0x2

    aput-object v13, v12, v17

    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v13

    const/16 v17, 0x3

    aput-object v13, v12, v17

    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v13

    const/16 v17, 0x4

    aput-object v13, v12, v17

    new-array v13, v7, [Lkotlinx/serialization/KSerializer;

    sget-object v7, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v7, v13, v14

    sget-object v7, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v7, v13, v15

    new-instance v7, Lz7/t0;

    sget-object v14, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    move-object/from16 v15, v31

    invoke-direct {v7, v15, v14}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v14, 0x2

    aput-object v7, v13, v14

    new-instance v7, Lz7/t0;

    sget-object v14, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    move-object/from16 v31, v1

    move-object/from16 v1, v30

    invoke-direct {v7, v1, v14}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v14, 0x3

    aput-object v7, v13, v14

    new-instance v7, Lz7/t0;

    sget-object v14, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    move-object/from16 v30, v2

    move-object/from16 v2, p1

    invoke-direct {v7, v2, v14}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v14, 0x4

    aput-object v7, v13, v14

    move-object/from16 v7, p0

    invoke-direct {v3, v7, v6, v12, v13}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    move-object/from16 v6, v29

    const/4 v12, 0x1

    invoke-interface {v0, v10, v12, v3, v6}, Ly7/b;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Lio/branch/search/internal/ui/StringResolver;

    or-int/lit8 v27, v27, 0x2

    move-object v12, v1

    move-object v14, v7

    move-object v13, v15

    goto/16 :goto_3b9

    :cond_333
    move-object/from16 v31, v1

    move-object/from16 v30, v2

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object v1, v12

    move-object v2, v15

    move-object/from16 v6, v29

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object v15, v13

    new-instance v3, Lw7/f;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v13

    const/4 v14, 0x5

    new-array v12, v14, [Lz4/d;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v17

    const/16 v21, 0x0

    aput-object v17, v12, v21

    invoke-static/range {v33 .. v33}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v17

    const/16 v22, 0x1

    aput-object v17, v12, v22

    invoke-static/range {v32 .. v32}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v17

    const/16 v20, 0x2

    aput-object v17, v12, v20

    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v17

    const/16 v18, 0x3

    aput-object v17, v12, v18

    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v17

    const/16 v19, 0x4

    aput-object v17, v12, v19

    move-object/from16 v17, v4

    new-array v4, v14, [Lkotlinx/serialization/KSerializer;

    sget-object v29, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v29, v4, v21

    sget-object v29, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v29, v4, v22

    new-instance v14, Lz7/t0;

    move-object/from16 p0, v5

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-direct {v14, v15, v5}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x2

    aput-object v14, v4, v5

    new-instance v14, Lz7/t0;

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-direct {v14, v1, v5}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x3

    aput-object v14, v4, v5

    new-instance v14, Lz7/t0;

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-direct {v14, v2, v5}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x4

    aput-object v14, v4, v5

    invoke-direct {v3, v7, v13, v12, v4}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    move-object/from16 v4, v26

    const/4 v12, 0x0

    invoke-interface {v0, v10, v12, v3, v4}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Lio/branch/search/internal/ui/StringResolver;

    or-int/lit8 v27, v27, 0x1

    move-object/from16 v5, p0

    move-object v12, v1

    move-object/from16 v29, v6

    move-object v14, v7

    move-object v13, v15

    move-object/from16 v4, v17

    :goto_3b9
    move-object/from16 v1, v31

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    move-object v15, v2

    move-object/from16 v2, v30

    goto/16 :goto_1be

    :cond_3c4
    move-object/from16 v17, v4

    move-object/from16 p0, v5

    move-object/from16 v4, v26

    move-object/from16 v6, v29

    move-object/from16 v38, p0

    move-object/from16 v36, v4

    move-object/from16 v37, v6

    move-object/from16 v39, v11

    move-object/from16 v40, v17

    move/from16 v35, v27

    :goto_3d8
    invoke-interface {v0, v10}, Ly7/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lio/branch/search/internal/ui/AppEntityResolver;

    move-object/from16 v34, v0

    invoke-direct/range {v34 .. v40}, Lio/branch/search/internal/ui/AppEntityResolver;-><init>(ILio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ExtraResolver;)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/AppEntityResolver;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    sget-object p0, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/AppEntityResolver;)V
    .registers 32

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "encoder"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v2}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/c;

    move-result-object v0

    const-class v3, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    const-class v4, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    const-class v5, Lio/branch/search/internal/ui/ImageResolver;

    const-class v6, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-class v7, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-class v8, Lio/branch/search/internal/ui/StringResolver$AppName;

    const-class v9, Lio/branch/search/internal/ui/StringResolver$Template;

    const-class v10, Lio/branch/search/internal/ui/StringResolver$Constant;

    const-class v11, Lio/branch/search/internal/ui/StringResolver;

    const-string v12, "self"

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "output"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "serialDesc"

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lw7/f;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v13

    const/4 v14, 0x5

    new-array v15, v14, [Lz4/d;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v16

    const/4 v14, 0x0

    aput-object v16, v15, v14

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v16

    const/4 v14, 0x1

    aput-object v16, v15, v14

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v16

    const/4 v14, 0x2

    aput-object v16, v15, v14

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v16

    const/4 v14, 0x3

    aput-object v16, v15, v14

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v16

    const/4 v14, 0x4

    aput-object v16, v15, v14

    move-object/from16 v20, v3

    const/4 v14, 0x5

    new-array v3, v14, [Lkotlinx/serialization/KSerializer;

    sget-object v14, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    const/16 v21, 0x0

    aput-object v14, v3, v21

    sget-object v21, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    const/16 v17, 0x1

    aput-object v21, v3, v17

    move-object/from16 v22, v4

    new-instance v4, Lz7/t0;

    move-object/from16 v23, v5

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    move-object/from16 v24, v14

    const-string v14, "AppName"

    invoke-direct {v4, v14, v5}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v18, 0x2

    aput-object v4, v3, v18

    new-instance v4, Lz7/t0;

    move-object/from16 v25, v5

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    move-object/from16 v26, v14

    const-string v14, "LinkTitle"

    invoke-direct {v4, v14, v5}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v19, 0x3

    aput-object v4, v3, v19

    new-instance v4, Lz7/t0;

    move-object/from16 v27, v5

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    move-object/from16 v28, v14

    const-string v14, "LinkDescription"

    invoke-direct {v4, v14, v5}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v16, 0x4

    aput-object v4, v3, v16

    const-string v4, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v12, v4, v13, v15, v3}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    iget-object v3, v1, Lio/branch/search/internal/ui/AppEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    const/4 v13, 0x0

    invoke-interface {v0, v2, v13, v12, v3}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    iget-object v3, v1, Lio/branch/search/internal/ui/AppEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    const/4 v12, 0x0

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v13, 0x1

    xor-int/2addr v3, v13

    if-nez v3, :cond_c6

    invoke-interface {v0, v2, v13}, Ly7/c;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_c4

    goto :goto_c6

    :cond_c4
    move v5, v13

    goto :goto_11f

    :cond_c6
    :goto_c6
    new-instance v3, Lw7/f;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v11

    const/4 v15, 0x5

    new-array v12, v15, [Lz4/d;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v10

    const/16 v17, 0x0

    aput-object v10, v12, v17

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v9

    aput-object v9, v12, v13

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v12, v9

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v12, v8

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v12, v7

    new-array v6, v15, [Lkotlinx/serialization/KSerializer;

    aput-object v24, v6, v17

    aput-object v21, v6, v13

    new-instance v7, Lz7/t0;

    move-object/from16 v10, v25

    move-object/from16 v13, v26

    invoke-direct {v7, v13, v10}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v6, v9

    new-instance v7, Lz7/t0;

    move-object/from16 v9, v27

    move-object/from16 v10, v28

    invoke-direct {v7, v10, v9}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v6, v8

    new-instance v7, Lz7/t0;

    invoke-direct {v7, v14, v5}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x4

    aput-object v7, v6, v5

    invoke-direct {v3, v4, v11, v12, v6}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    iget-object v4, v1, Lio/branch/search/internal/ui/AppEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    const/4 v5, 0x1

    invoke-interface {v0, v2, v5, v3, v4}, Ly7/c;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    :goto_11f
    iget-object v3, v1, Lio/branch/search/internal/ui/AppEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    sget-object v4, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v5

    const-string v5, "FromLink"

    const-string v6, "FromApp"

    const-string v7, "io.branch.search.internal.ui.ImageResolver"

    if-nez v3, :cond_13a

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Ly7/c;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v8

    if-eqz v8, :cond_138

    goto :goto_13b

    :cond_138
    const/4 v13, 0x1

    goto :goto_16b

    :cond_13a
    const/4 v3, 0x2

    :goto_13b
    new-instance v8, Lw7/f;

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v9

    new-array v10, v3, [Lz4/d;

    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v10, v13

    new-array v11, v3, [Lkotlinx/serialization/KSerializer;

    new-instance v14, Lz7/t0;

    invoke-direct {v14, v6, v4}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v14, v11, v12

    new-instance v12, Lz7/t0;

    sget-object v14, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-direct {v12, v5, v14}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v12, v11, v13

    invoke-direct {v8, v7, v9, v10, v11}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    iget-object v9, v1, Lio/branch/search/internal/ui/AppEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    invoke-interface {v0, v2, v3, v8, v9}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    :goto_16b
    iget-object v3, v1, Lio/branch/search/internal/ui/AppEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    const/4 v8, 0x0

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v13

    if-nez v3, :cond_17f

    const/4 v3, 0x3

    invoke-interface {v0, v2, v3}, Ly7/c;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v8

    if-eqz v8, :cond_17d

    goto :goto_17f

    :cond_17d
    const/4 v13, 0x1

    goto :goto_1b1

    :cond_17f
    :goto_17f
    new-instance v3, Lw7/f;

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v8

    const/4 v9, 0x2

    new-array v10, v9, [Lz4/d;

    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v10, v13

    new-array v9, v9, [Lkotlinx/serialization/KSerializer;

    new-instance v11, Lz7/t0;

    invoke-direct {v11, v6, v4}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v11, v9, v12

    new-instance v4, Lz7/t0;

    sget-object v6, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-direct {v4, v5, v6}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v9, v13

    invoke-direct {v3, v7, v8, v10, v9}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    iget-object v4, v1, Lio/branch/search/internal/ui/AppEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    const/4 v5, 0x3

    invoke-interface {v0, v2, v5, v3, v4}, Ly7/c;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    :goto_1b1
    iget-object v3, v1, Lio/branch/search/internal/ui/AppEntityResolver;->e:Lio/branch/search/internal/ui/ExtraResolver;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v13

    if-nez v3, :cond_1c2

    const/4 v3, 0x4

    invoke-interface {v0, v2, v3}, Ly7/c;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_1ed

    :cond_1c2
    new-instance v3, Lw7/f;

    const-class v4, Lio/branch/search/internal/ui/ExtraResolver;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    new-array v5, v13, [Lz4/d;

    const-class v6, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v6, v13, [Lkotlinx/serialization/KSerializer;

    new-instance v8, Lz7/t0;

    sget-object v9, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;->a:Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    const-string v10, "FromAppStoreLink"

    invoke-direct {v8, v10, v9}, Lz7/t0;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v8, v6, v7

    const-string v7, "io.branch.search.internal.ui.ExtraResolver"

    invoke-direct {v3, v7, v4, v5, v6}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    iget-object v1, v1, Lio/branch/search/internal/ui/AppEntityResolver;->e:Lio/branch/search/internal/ui/ExtraResolver;

    const/4 v4, 0x4

    invoke-interface {v0, v2, v4, v3, v1}, Ly7/c;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    :cond_1ed
    invoke-interface {v0, v2}, Ly7/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lio/branch/search/internal/ui/AppEntityResolver;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/AppEntityResolver;)V

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
