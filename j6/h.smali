.class public final enum Lj6/h;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj6/h;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDescriptorRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DescriptorRenderer.kt\norg/jetbrains/kotlin/renderer/DescriptorRendererModifier\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,318:1\n3792#2:319\n4307#2,2:320\n*S KotlinDebug\n*F\n+ 1 DescriptorRenderer.kt\norg/jetbrains/kotlin/renderer/DescriptorRendererModifier\n*L\n312#1:319\n312#1:320,2\n*E\n"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj6/h;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj6/h;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final enum d:Lj6/h;

.field public static final enum e:Lj6/h;

.field public static final enum f:Lj6/h;

.field public static final enum g:Lj6/h;

.field public static final enum h:Lj6/h;

.field public static final enum i:Lj6/h;

.field public static final enum j:Lj6/h;

.field public static final enum k:Lj6/h;

.field public static final enum l:Lj6/h;

.field public static final enum m:Lj6/h;

.field public static final enum n:Lj6/h;

.field public static final enum o:Lj6/h;

.field public static final enum p:Lj6/h;

.field public static final enum q:Lj6/h;

.field public static final synthetic r:[Lj6/h;


# instance fields
.field public final a:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 18

    new-instance v0, Lj6/h;

    const-string v1, "VISIBILITY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lj6/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lj6/h;->d:Lj6/h;

    new-instance v1, Lj6/h;

    const-string v4, "MODALITY"

    invoke-direct {v1, v4, v3, v3}, Lj6/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lj6/h;->e:Lj6/h;

    new-instance v4, Lj6/h;

    const-string v5, "OVERRIDE"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Lj6/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lj6/h;->f:Lj6/h;

    new-instance v5, Lj6/h;

    const-string v7, "ANNOTATIONS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lj6/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lj6/h;->g:Lj6/h;

    new-instance v7, Lj6/h;

    const-string v9, "INNER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v3}, Lj6/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lj6/h;->h:Lj6/h;

    new-instance v9, Lj6/h;

    const-string v11, "MEMBER_KIND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v3}, Lj6/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lj6/h;->i:Lj6/h;

    new-instance v11, Lj6/h;

    const-string v13, "DATA"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v3}, Lj6/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lj6/h;->j:Lj6/h;

    new-instance v13, Lj6/h;

    const-string v15, "INLINE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v3}, Lj6/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lj6/h;->k:Lj6/h;

    new-instance v15, Lj6/h;

    const-string v14, "EXPECT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v3}, Lj6/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Lj6/h;->l:Lj6/h;

    new-instance v14, Lj6/h;

    const-string v12, "ACTUAL"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v3}, Lj6/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lj6/h;->m:Lj6/h;

    new-instance v12, Lj6/h;

    const-string v10, "CONST"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v3}, Lj6/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Lj6/h;->n:Lj6/h;

    new-instance v10, Lj6/h;

    const-string v8, "LATEINIT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v3}, Lj6/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Lj6/h;->o:Lj6/h;

    new-instance v8, Lj6/h;

    const-string v6, "FUN"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v3}, Lj6/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lj6/h;->p:Lj6/h;

    new-instance v6, Lj6/h;

    const-string v2, "VALUE"

    move-object/from16 v17, v8

    const/16 v8, 0xd

    invoke-direct {v6, v2, v8, v3}, Lj6/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lj6/h;->q:Lj6/h;

    const/16 v2, 0xe

    new-array v2, v2, [Lj6/h;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    aput-object v1, v2, v3

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    aput-object v6, v2, v8

    sput-object v2, Lj6/h;->r:[Lj6/h;

    invoke-static {}, Lj6/h;->values()[Lj6/h;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    move/from16 v3, v16

    :goto_d4
    if-ge v3, v2, :cond_e2

    aget-object v4, v0, v3

    iget-boolean v5, v4, Lj6/h;->a:Z

    if-eqz v5, :cond_df

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_df
    add-int/lit8 v3, v3, 0x1

    goto :goto_d4

    :cond_e2
    invoke-static {v1}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj6/h;->b:Ljava/util/Set;

    invoke-static {}, Lj6/h;->values()[Lj6/h;

    move-result-object v0

    invoke-static {v0}, Li4/k;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj6/h;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lj6/h;->a:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj6/h;
    .registers 2

    const-class v0, Lj6/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj6/h;

    return-object p0
.end method

.method public static values()[Lj6/h;
    .registers 1

    sget-object v0, Lj6/h;->r:[Lj6/h;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj6/h;

    return-object v0
.end method
