.class public final enum Lp6/d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp6/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lp6/d;

.field public static final enum f:Lp6/d;

.field public static final enum g:Lp6/d;

.field public static final enum h:Lp6/d;

.field public static final enum i:Lp6/d;

.field public static final enum j:Lp6/d;

.field public static final enum k:Lp6/d;

.field public static final enum l:Lp6/d;

.field public static final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lh6/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lp6/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lf5/h;",
            "Lp6/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lp6/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic q:[Lp6/d;


# instance fields
.field public final a:Lf5/h;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lh6/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 22

    new-instance v7, Lp6/d;

    sget-object v3, Lf5/h;->f:Lf5/h;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    const-string v4, "boolean"

    const-string v5, "Z"

    const-string v6, "java.lang.Boolean"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lp6/d;-><init>(Ljava/lang/String;ILf5/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lp6/d;->e:Lp6/d;

    new-instance v0, Lp6/d;

    sget-object v11, Lf5/h;->g:Lf5/h;

    const-string v9, "CHAR"

    const/4 v10, 0x1

    const-string v12, "char"

    const-string v13, "C"

    const-string v14, "java.lang.Character"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lp6/d;-><init>(Ljava/lang/String;ILf5/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lp6/d;->f:Lp6/d;

    new-instance v1, Lp6/d;

    sget-object v18, Lf5/h;->h:Lf5/h;

    const-string v16, "BYTE"

    const/16 v17, 0x2

    const-string v19, "byte"

    const-string v20, "B"

    const-string v21, "java.lang.Byte"

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lp6/d;-><init>(Ljava/lang/String;ILf5/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lp6/d;->g:Lp6/d;

    new-instance v2, Lp6/d;

    sget-object v11, Lf5/h;->i:Lf5/h;

    const-string v9, "SHORT"

    const/4 v10, 0x3

    const-string v12, "short"

    const-string v13, "S"

    const-string v14, "java.lang.Short"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lp6/d;-><init>(Ljava/lang/String;ILf5/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lp6/d;->h:Lp6/d;

    new-instance v3, Lp6/d;

    sget-object v18, Lf5/h;->j:Lf5/h;

    const-string v16, "INT"

    const/16 v17, 0x4

    const-string v19, "int"

    const-string v20, "I"

    const-string v21, "java.lang.Integer"

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lp6/d;-><init>(Ljava/lang/String;ILf5/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lp6/d;->i:Lp6/d;

    new-instance v4, Lp6/d;

    sget-object v11, Lf5/h;->k:Lf5/h;

    const-string v9, "FLOAT"

    const/4 v10, 0x5

    const-string v12, "float"

    const-string v13, "F"

    const-string v14, "java.lang.Float"

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lp6/d;-><init>(Ljava/lang/String;ILf5/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lp6/d;->j:Lp6/d;

    new-instance v5, Lp6/d;

    sget-object v18, Lf5/h;->l:Lf5/h;

    const-string v16, "LONG"

    const/16 v17, 0x6

    const-string v19, "long"

    const-string v20, "J"

    const-string v21, "java.lang.Long"

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lp6/d;-><init>(Ljava/lang/String;ILf5/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lp6/d;->k:Lp6/d;

    new-instance v6, Lp6/d;

    sget-object v11, Lf5/h;->m:Lf5/h;

    const-string v9, "DOUBLE"

    const/4 v10, 0x7

    const-string v12, "double"

    const-string v13, "D"

    const-string v14, "java.lang.Double"

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lp6/d;-><init>(Ljava/lang/String;ILf5/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lp6/d;->l:Lp6/d;

    const/16 v8, 0x8

    new-array v8, v8, [Lp6/d;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v7, 0x1

    aput-object v0, v8, v7

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v0, 0x3

    aput-object v2, v8, v0

    const/4 v0, 0x4

    aput-object v3, v8, v0

    const/4 v0, 0x5

    aput-object v4, v8, v0

    const/4 v0, 0x6

    aput-object v5, v8, v0

    const/4 v0, 0x7

    aput-object v6, v8, v0

    sput-object v8, Lp6/d;->q:[Lp6/d;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lp6/d;->m:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lp6/d;->n:Ljava/util/Map;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lf5/h;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lp6/d;->o:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lp6/d;->p:Ljava/util/Map;

    invoke-static {}, Lp6/d;->values()[Lp6/d;

    move-result-object v0

    array-length v1, v0

    :goto_dc
    if-ge v9, v1, :cond_116

    aget-object v2, v0, v9

    sget-object v3, Lp6/d;->m:Ljava/util/Set;

    invoke-virtual {v2}, Lp6/d;->f()Lh6/c;

    move-result-object v4

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lp6/d;->n:Ljava/util/Map;

    iget-object v4, v2, Lp6/d;->b:Ljava/lang/String;

    if-eqz v4, :cond_10f

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lp6/d;->o:Ljava/util/Map;

    invoke-virtual {v2}, Lp6/d;->e()Lf5/h;

    move-result-object v4

    check-cast v3, Ljava/util/EnumMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lp6/d;->p:Ljava/util/Map;

    invoke-virtual {v2}, Lp6/d;->d()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_dc

    :cond_10f
    const/16 v0, 0xb

    invoke-static {v0}, Lp6/d;->a(I)V

    const/4 v0, 0x0

    throw v0

    :cond_116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILf5/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf5/h;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_13

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lp6/d;->a:Lf5/h;

    iput-object p4, p0, Lp6/d;->b:Ljava/lang/String;

    iput-object p5, p0, Lp6/d;->c:Ljava/lang/String;

    new-instance p1, Lh6/c;

    invoke-direct {p1, p6}, Lh6/c;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lp6/d;->d:Lh6/c;

    return-void

    :cond_13
    const/4 p0, 0x6

    invoke-static {p0}, Lp6/d;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(I)V
    .registers 8

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    if-eq p0, v0, :cond_c

    packed-switch p0, :pswitch_data_8e

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_e

    :cond_c
    :pswitch_c  #0xa, 0xb, 0xc, 0xd
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_e
    if-eq p0, v1, :cond_17

    if-eq p0, v0, :cond_17

    packed-switch p0, :pswitch_data_9a

    const/4 v3, 0x3

    goto :goto_18

    :cond_17
    :pswitch_17  #0xa, 0xb, 0xc, 0xd
    move v3, v1

    :goto_18
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_a6

    const-string v6, "className"

    aput-object v6, v3, v5

    goto :goto_40

    :pswitch_25  #0x9
    const-string v6, "wrapperClassName"

    aput-object v6, v3, v5

    goto :goto_40

    :pswitch_2a  #0x6
    const-string v6, "primitiveType"

    aput-object v6, v3, v5

    goto :goto_40

    :pswitch_2f  #0x5, 0x8
    const-string v6, "desc"

    aput-object v6, v3, v5

    goto :goto_40

    :pswitch_34  #0x3
    const-string v6, "type"

    aput-object v6, v3, v5

    goto :goto_40

    :pswitch_39  #0x2, 0x4, 0xa, 0xb, 0xc, 0xd
    aput-object v4, v3, v5

    goto :goto_40

    :pswitch_3c  #0x1, 0x7
    const-string v6, "name"

    aput-object v6, v3, v5

    :goto_40
    const-string v5, "get"

    const/4 v6, 0x1

    if-eq p0, v1, :cond_61

    if-eq p0, v0, :cond_61

    packed-switch p0, :pswitch_data_c4

    aput-object v4, v3, v6

    goto :goto_63

    :pswitch_4d  #0xd
    const-string v4, "getWrapperFqName"

    aput-object v4, v3, v6

    goto :goto_63

    :pswitch_52  #0xc
    const-string v4, "getDesc"

    aput-object v4, v3, v6

    goto :goto_63

    :pswitch_57  #0xb
    const-string v4, "getJavaKeywordName"

    aput-object v4, v3, v6

    goto :goto_63

    :pswitch_5c  #0xa
    const-string v4, "getPrimitiveType"

    aput-object v4, v3, v6

    goto :goto_63

    :cond_61
    aput-object v5, v3, v6

    :goto_63
    packed-switch p0, :pswitch_data_d0

    const-string v4, "isWrapperClassName"

    aput-object v4, v3, v1

    goto :goto_77

    :pswitch_6b  #0x6, 0x7, 0x8, 0x9
    const-string v4, "<init>"

    aput-object v4, v3, v1

    goto :goto_77

    :pswitch_70  #0x5
    const-string v4, "getByDesc"

    aput-object v4, v3, v1

    goto :goto_77

    :pswitch_75  #0x1, 0x3
    aput-object v5, v3, v1

    :goto_77
    :pswitch_77  #0x2, 0x4, 0xa, 0xb, 0xc, 0xd
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_88

    if-eq p0, v0, :cond_88

    packed-switch p0, :pswitch_data_ee

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8d

    :cond_88
    :pswitch_88  #0xa, 0xb, 0xc, 0xd
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_8d
    throw p0

    :pswitch_data_8e
    .packed-switch 0xa
        :pswitch_c  #0000000a
        :pswitch_c  #0000000b
        :pswitch_c  #0000000c
        :pswitch_c  #0000000d
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0xa
        :pswitch_17  #0000000a
        :pswitch_17  #0000000b
        :pswitch_17  #0000000c
        :pswitch_17  #0000000d
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_3c  #00000001
        :pswitch_39  #00000002
        :pswitch_34  #00000003
        :pswitch_39  #00000004
        :pswitch_2f  #00000005
        :pswitch_2a  #00000006
        :pswitch_3c  #00000007
        :pswitch_2f  #00000008
        :pswitch_25  #00000009
        :pswitch_39  #0000000a
        :pswitch_39  #0000000b
        :pswitch_39  #0000000c
        :pswitch_39  #0000000d
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0xa
        :pswitch_5c  #0000000a
        :pswitch_57  #0000000b
        :pswitch_52  #0000000c
        :pswitch_4d  #0000000d
    .end packed-switch

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_75  #00000001
        :pswitch_77  #00000002
        :pswitch_75  #00000003
        :pswitch_77  #00000004
        :pswitch_70  #00000005
        :pswitch_6b  #00000006
        :pswitch_6b  #00000007
        :pswitch_6b  #00000008
        :pswitch_6b  #00000009
        :pswitch_77  #0000000a
        :pswitch_77  #0000000b
        :pswitch_77  #0000000c
        :pswitch_77  #0000000d
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0xa
        :pswitch_88  #0000000a
        :pswitch_88  #0000000b
        :pswitch_88  #0000000c
        :pswitch_88  #0000000d
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Lp6/d;
    .registers 3

    sget-object v0, Lp6/d;->n:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp6/d;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Non-primitive type name passed: "

    invoke-static {v1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lp6/d;
    .registers 2

    const-class v0, Lp6/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp6/d;

    return-object p0
.end method

.method public static values()[Lp6/d;
    .registers 1

    sget-object v0, Lp6/d;->q:[Lp6/d;

    invoke-virtual {v0}, [Lp6/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp6/d;

    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lp6/d;->c:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0xc

    invoke-static {p0}, Lp6/d;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public e()Lf5/h;
    .registers 1

    iget-object p0, p0, Lp6/d;->a:Lf5/h;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0xa

    invoke-static {p0}, Lp6/d;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public f()Lh6/c;
    .registers 1

    iget-object p0, p0, Lp6/d;->d:Lh6/c;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0xd

    invoke-static {p0}, Lp6/d;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
