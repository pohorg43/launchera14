.class public Ll5/r$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li5/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li5/x$a<",
        "Li5/x;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ly6/t1;

.field public b:Li5/l;

.field public c:Li5/d0;

.field public d:Li5/t;

.field public e:Li5/x;

.field public f:Li5/b$a;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/e1;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/r0;",
            ">;"
        }
    .end annotation
.end field

.field public i:Li5/r0;

.field public j:Li5/r0;

.field public k:Ly6/l0;

.field public l:Lh6/f;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lj5/h;

.field public t:Z

.field public u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Li5/a$a<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/lang/Boolean;

.field public w:Z

.field public final synthetic x:Ll5/r;


# direct methods
.method public constructor <init>(Ll5/r;Ly6/t1;Li5/l;Li5/d0;Li5/t;Li5/b$a;Ljava/util/List;Ljava/util/List;Li5/r0;Ly6/l0;Lh6/f;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/t1;",
            "Li5/l;",
            "Li5/d0;",
            "Li5/t;",
            "Li5/b$a;",
            "Ljava/util/List<",
            "Li5/e1;",
            ">;",
            "Ljava/util/List<",
            "Li5/r0;",
            ">;",
            "Li5/r0;",
            "Ly6/l0;",
            "Lh6/f;",
            ")V"
        }
    .end annotation

    const/4 p11, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_74

    const/4 v1, 0x1

    if-eqz p3, :cond_70

    if-eqz p4, :cond_6b

    if-eqz p5, :cond_66

    if-eqz p6, :cond_61

    if-eqz p7, :cond_5c

    if-eqz p8, :cond_57

    if-eqz p10, :cond_52

    iput-object p1, p0, Ll5/r$c;->x:Ll5/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p11, p0, Ll5/r$c;->e:Li5/x;

    iget-object v2, p1, Ll5/r;->j:Li5/r0;

    iput-object v2, p0, Ll5/r$c;->j:Li5/r0;

    iput-boolean v1, p0, Ll5/r$c;->m:Z

    iput-boolean v0, p0, Ll5/r$c;->n:Z

    iput-boolean v0, p0, Ll5/r$c;->o:Z

    iput-boolean v0, p0, Ll5/r$c;->p:Z

    iget-boolean v1, p1, Ll5/r;->t:Z

    iput-boolean v1, p0, Ll5/r$c;->q:Z

    iput-object p11, p0, Ll5/r$c;->r:Ljava/util/List;

    iput-object p11, p0, Ll5/r$c;->s:Lj5/h;

    iget-boolean p1, p1, Ll5/r;->u:Z

    iput-boolean p1, p0, Ll5/r$c;->t:Z

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ll5/r$c;->u:Ljava/util/Map;

    iput-object p11, p0, Ll5/r$c;->v:Ljava/lang/Boolean;

    iput-boolean v0, p0, Ll5/r$c;->w:Z

    iput-object p2, p0, Ll5/r$c;->a:Ly6/t1;

    iput-object p3, p0, Ll5/r$c;->b:Li5/l;

    iput-object p4, p0, Ll5/r$c;->c:Li5/d0;

    iput-object p5, p0, Ll5/r$c;->d:Li5/t;

    iput-object p6, p0, Ll5/r$c;->f:Li5/b$a;

    iput-object p7, p0, Ll5/r$c;->g:Ljava/util/List;

    iput-object p8, p0, Ll5/r$c;->h:Ljava/util/List;

    iput-object p9, p0, Ll5/r$c;->i:Li5/r0;

    iput-object p10, p0, Ll5/r$c;->k:Ly6/l0;

    iput-object p11, p0, Ll5/r$c;->l:Lh6/f;

    return-void

    :cond_52
    const/4 p0, 0x7

    invoke-static {p0}, Ll5/r$c;->s(I)V

    throw p11

    :cond_57
    const/4 p0, 0x6

    invoke-static {p0}, Ll5/r$c;->s(I)V

    throw p11

    :cond_5c
    const/4 p0, 0x5

    invoke-static {p0}, Ll5/r$c;->s(I)V

    throw p11

    :cond_61
    const/4 p0, 0x4

    invoke-static {p0}, Ll5/r$c;->s(I)V

    throw p11

    :cond_66
    const/4 p0, 0x3

    invoke-static {p0}, Ll5/r$c;->s(I)V

    throw p11

    :cond_6b
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/r$c;->s(I)V

    throw p11

    :cond_70
    invoke-static {v1}, Ll5/r$c;->s(I)V

    throw p11

    :cond_74
    invoke-static {v0}, Ll5/r$c;->s(I)V

    throw p11
.end method

.method public static synthetic s(I)V
    .registers 18

    packed-switch p0, :pswitch_data_128

    :pswitch_3  #0xa, 0xc, 0xe, 0x11, 0x13, 0x15, 0x17, 0x19, 0x23, 0x25, 0x27
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6  #0x9, 0xb, 0xd, 0xf, 0x10, 0x12, 0x14, 0x16, 0x18, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x24, 0x26, 0x28, 0x29, 0x2a
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_170

    :pswitch_c  #0xa, 0xc, 0xe, 0x11, 0x13, 0x15, 0x17, 0x19, 0x23, 0x25, 0x27
    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e  #0x9, 0xb, 0xd, 0xf, 0x10, 0x12, 0x14, 0x16, 0x18, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x24, 0x26, 0x28, 0x29, 0x2a
    move v2, v1

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_1b8

    :pswitch_17  #0x25
    const-string v5, "substitution"

    aput-object v5, v2, v4

    goto :goto_6e

    :pswitch_1c  #0x27
    const-string v5, "userDataKey"

    aput-object v5, v2, v4

    goto :goto_6e

    :pswitch_21  #0x23
    const-string v5, "additionalAnnotations"

    aput-object v5, v2, v4

    goto :goto_6e

    :pswitch_26  #0x19
    const-string v5, "contextReceiverParameters"

    aput-object v5, v2, v4

    goto :goto_6e

    :pswitch_2b  #0x17
    const-string v5, "type"

    aput-object v5, v2, v4

    goto :goto_6e

    :pswitch_30  #0x13, 0x15
    const-string v5, "parameters"

    aput-object v5, v2, v4

    goto :goto_6e

    :pswitch_35  #0x11
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_6e

    :pswitch_3a  #0xc
    const-string v5, "visibility"

    aput-object v5, v2, v4

    goto :goto_6e

    :pswitch_3f  #0xa
    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_6e

    :pswitch_44  #0x9, 0xb, 0xd, 0xf, 0x10, 0x12, 0x14, 0x16, 0x18, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x24, 0x26, 0x28, 0x29, 0x2a
    aput-object v3, v2, v4

    goto :goto_6e

    :pswitch_47  #0x8
    const-string v5, "owner"

    aput-object v5, v2, v4

    goto :goto_6e

    :pswitch_4c  #0x7
    const-string v5, "newReturnType"

    aput-object v5, v2, v4

    goto :goto_6e

    :pswitch_51  #0x6
    const-string v5, "newContextReceiverParameters"

    aput-object v5, v2, v4

    goto :goto_6e

    :pswitch_56  #0x5
    const-string v5, "newValueParameterDescriptors"

    aput-object v5, v2, v4

    goto :goto_6e

    :pswitch_5b  #0x4, 0xe
    const-string v5, "kind"

    aput-object v5, v2, v4

    goto :goto_6e

    :pswitch_60  #0x3
    const-string v5, "newVisibility"

    aput-object v5, v2, v4

    goto :goto_6e

    :pswitch_65  #0x2
    const-string v5, "newModality"

    aput-object v5, v2, v4

    goto :goto_6e

    :pswitch_6a  #0x1
    const-string v5, "newOwner"

    aput-object v5, v2, v4

    :goto_6e
    const-string v4, "putUserData"

    const-string v5, "setSubstitution"

    const-string v6, "setAdditionalAnnotations"

    const-string v7, "setContextReceiverParameters"

    const-string v8, "setReturnType"

    const-string v9, "setTypeParameters"

    const-string v10, "setValueParameters"

    const-string v11, "setName"

    const-string v12, "setKind"

    const-string v13, "setVisibility"

    const-string v14, "setModality"

    const-string v15, "setOwner"

    const/16 v16, 0x1

    packed-switch p0, :pswitch_data_210

    :pswitch_8b  #0xa, 0xc, 0xe, 0x11, 0x13, 0x15, 0x17, 0x19, 0x23, 0x25, 0x27
    aput-object v3, v2, v16

    goto/16 :goto_ea

    :pswitch_8f  #0x2a
    const-string v3, "setJustForTypeSubstitution"

    aput-object v3, v2, v16

    goto/16 :goto_ea

    :pswitch_95  #0x29
    const-string v3, "getSubstitution"

    aput-object v3, v2, v16

    goto :goto_ea

    :pswitch_9a  #0x28
    aput-object v4, v2, v16

    goto :goto_ea

    :pswitch_9d  #0x26
    aput-object v5, v2, v16

    goto :goto_ea

    :pswitch_a0  #0x24
    aput-object v6, v2, v16

    goto :goto_ea

    :pswitch_a3  #0x22
    const-string v3, "setHiddenForResolutionEverywhereBesideSupercalls"

    aput-object v3, v2, v16

    goto :goto_ea

    :pswitch_a8  #0x21
    const-string v3, "setHiddenToOvercomeSignatureClash"

    aput-object v3, v2, v16

    goto :goto_ea

    :pswitch_ad  #0x20
    const-string v3, "setDropOriginalInContainingParts"

    aput-object v3, v2, v16

    goto :goto_ea

    :pswitch_b2  #0x1f
    const-string v3, "setPreserveSourceElement"

    aput-object v3, v2, v16

    goto :goto_ea

    :pswitch_b7  #0x1e
    const-string v3, "setSignatureChange"

    aput-object v3, v2, v16

    goto :goto_ea

    :pswitch_bc  #0x1d
    const-string v3, "setOriginal"

    aput-object v3, v2, v16

    goto :goto_ea

    :pswitch_c1  #0x1c
    const-string v3, "setDispatchReceiverParameter"

    aput-object v3, v2, v16

    goto :goto_ea

    :pswitch_c6  #0x1b
    const-string v3, "setExtensionReceiverParameter"

    aput-object v3, v2, v16

    goto :goto_ea

    :pswitch_cb  #0x1a
    aput-object v7, v2, v16

    goto :goto_ea

    :pswitch_ce  #0x18
    aput-object v8, v2, v16

    goto :goto_ea

    :pswitch_d1  #0x16
    aput-object v9, v2, v16

    goto :goto_ea

    :pswitch_d4  #0x14
    aput-object v10, v2, v16

    goto :goto_ea

    :pswitch_d7  #0x12
    aput-object v11, v2, v16

    goto :goto_ea

    :pswitch_da  #0x10
    const-string v3, "setCopyOverrides"

    aput-object v3, v2, v16

    goto :goto_ea

    :pswitch_df  #0xf
    aput-object v12, v2, v16

    goto :goto_ea

    :pswitch_e2  #0xd
    aput-object v13, v2, v16

    goto :goto_ea

    :pswitch_e5  #0xb
    aput-object v14, v2, v16

    goto :goto_ea

    :pswitch_e8  #0x9
    aput-object v15, v2, v16

    :goto_ea
    packed-switch p0, :pswitch_data_258

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_115

    :pswitch_f2  #0x27
    aput-object v4, v2, v1

    goto :goto_115

    :pswitch_f5  #0x25
    aput-object v5, v2, v1

    goto :goto_115

    :pswitch_f8  #0x23
    aput-object v6, v2, v1

    goto :goto_115

    :pswitch_fb  #0x19
    aput-object v7, v2, v1

    goto :goto_115

    :pswitch_fe  #0x17
    aput-object v8, v2, v1

    goto :goto_115

    :pswitch_101  #0x15
    aput-object v9, v2, v1

    goto :goto_115

    :pswitch_104  #0x13
    aput-object v10, v2, v1

    goto :goto_115

    :pswitch_107  #0x11
    aput-object v11, v2, v1

    goto :goto_115

    :pswitch_10a  #0xe
    aput-object v12, v2, v1

    goto :goto_115

    :pswitch_10d  #0xc
    aput-object v13, v2, v1

    goto :goto_115

    :pswitch_110  #0xa
    aput-object v14, v2, v1

    goto :goto_115

    :pswitch_113  #0x8
    aput-object v15, v2, v1

    :goto_115
    :pswitch_115  #0x9, 0xb, 0xd, 0xf, 0x10, 0x12, 0x14, 0x16, 0x18, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x24, 0x26, 0x28, 0x29, 0x2a
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_2a2

    :pswitch_11c  #0xa, 0xc, 0xe, 0x11, 0x13, 0x15, 0x17, 0x19, 0x23, 0x25, 0x27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_127

    :pswitch_122  #0x9, 0xb, 0xd, 0xf, 0x10, 0x12, 0x14, 0x16, 0x18, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x24, 0x26, 0x28, 0x29, 0x2a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_127
    throw v1

    :pswitch_data_128
    .packed-switch 0x9
        :pswitch_6  #00000009
        :pswitch_3  #0000000a
        :pswitch_6  #0000000b
        :pswitch_3  #0000000c
        :pswitch_6  #0000000d
        :pswitch_3  #0000000e
        :pswitch_6  #0000000f
        :pswitch_6  #00000010
        :pswitch_3  #00000011
        :pswitch_6  #00000012
        :pswitch_3  #00000013
        :pswitch_6  #00000014
        :pswitch_3  #00000015
        :pswitch_6  #00000016
        :pswitch_3  #00000017
        :pswitch_6  #00000018
        :pswitch_3  #00000019
        :pswitch_6  #0000001a
        :pswitch_6  #0000001b
        :pswitch_6  #0000001c
        :pswitch_6  #0000001d
        :pswitch_6  #0000001e
        :pswitch_6  #0000001f
        :pswitch_6  #00000020
        :pswitch_6  #00000021
        :pswitch_6  #00000022
        :pswitch_3  #00000023
        :pswitch_6  #00000024
        :pswitch_3  #00000025
        :pswitch_6  #00000026
        :pswitch_3  #00000027
        :pswitch_6  #00000028
        :pswitch_6  #00000029
        :pswitch_6  #0000002a
    .end packed-switch

    :pswitch_data_170
    .packed-switch 0x9
        :pswitch_e  #00000009
        :pswitch_c  #0000000a
        :pswitch_e  #0000000b
        :pswitch_c  #0000000c
        :pswitch_e  #0000000d
        :pswitch_c  #0000000e
        :pswitch_e  #0000000f
        :pswitch_e  #00000010
        :pswitch_c  #00000011
        :pswitch_e  #00000012
        :pswitch_c  #00000013
        :pswitch_e  #00000014
        :pswitch_c  #00000015
        :pswitch_e  #00000016
        :pswitch_c  #00000017
        :pswitch_e  #00000018
        :pswitch_c  #00000019
        :pswitch_e  #0000001a
        :pswitch_e  #0000001b
        :pswitch_e  #0000001c
        :pswitch_e  #0000001d
        :pswitch_e  #0000001e
        :pswitch_e  #0000001f
        :pswitch_e  #00000020
        :pswitch_e  #00000021
        :pswitch_e  #00000022
        :pswitch_c  #00000023
        :pswitch_e  #00000024
        :pswitch_c  #00000025
        :pswitch_e  #00000026
        :pswitch_c  #00000027
        :pswitch_e  #00000028
        :pswitch_e  #00000029
        :pswitch_e  #0000002a
    .end packed-switch

    :pswitch_data_1b8
    .packed-switch 0x1
        :pswitch_6a  #00000001
        :pswitch_65  #00000002
        :pswitch_60  #00000003
        :pswitch_5b  #00000004
        :pswitch_56  #00000005
        :pswitch_51  #00000006
        :pswitch_4c  #00000007
        :pswitch_47  #00000008
        :pswitch_44  #00000009
        :pswitch_3f  #0000000a
        :pswitch_44  #0000000b
        :pswitch_3a  #0000000c
        :pswitch_44  #0000000d
        :pswitch_5b  #0000000e
        :pswitch_44  #0000000f
        :pswitch_44  #00000010
        :pswitch_35  #00000011
        :pswitch_44  #00000012
        :pswitch_30  #00000013
        :pswitch_44  #00000014
        :pswitch_30  #00000015
        :pswitch_44  #00000016
        :pswitch_2b  #00000017
        :pswitch_44  #00000018
        :pswitch_26  #00000019
        :pswitch_44  #0000001a
        :pswitch_44  #0000001b
        :pswitch_44  #0000001c
        :pswitch_44  #0000001d
        :pswitch_44  #0000001e
        :pswitch_44  #0000001f
        :pswitch_44  #00000020
        :pswitch_44  #00000021
        :pswitch_44  #00000022
        :pswitch_21  #00000023
        :pswitch_44  #00000024
        :pswitch_17  #00000025
        :pswitch_44  #00000026
        :pswitch_1c  #00000027
        :pswitch_44  #00000028
        :pswitch_44  #00000029
        :pswitch_44  #0000002a
    .end packed-switch

    :pswitch_data_210
    .packed-switch 0x9
        :pswitch_e8  #00000009
        :pswitch_8b  #0000000a
        :pswitch_e5  #0000000b
        :pswitch_8b  #0000000c
        :pswitch_e2  #0000000d
        :pswitch_8b  #0000000e
        :pswitch_df  #0000000f
        :pswitch_da  #00000010
        :pswitch_8b  #00000011
        :pswitch_d7  #00000012
        :pswitch_8b  #00000013
        :pswitch_d4  #00000014
        :pswitch_8b  #00000015
        :pswitch_d1  #00000016
        :pswitch_8b  #00000017
        :pswitch_ce  #00000018
        :pswitch_8b  #00000019
        :pswitch_cb  #0000001a
        :pswitch_c6  #0000001b
        :pswitch_c1  #0000001c
        :pswitch_bc  #0000001d
        :pswitch_b7  #0000001e
        :pswitch_b2  #0000001f
        :pswitch_ad  #00000020
        :pswitch_a8  #00000021
        :pswitch_a3  #00000022
        :pswitch_8b  #00000023
        :pswitch_a0  #00000024
        :pswitch_8b  #00000025
        :pswitch_9d  #00000026
        :pswitch_8b  #00000027
        :pswitch_9a  #00000028
        :pswitch_95  #00000029
        :pswitch_8f  #0000002a
    .end packed-switch

    :pswitch_data_258
    .packed-switch 0x8
        :pswitch_113  #00000008
        :pswitch_115  #00000009
        :pswitch_110  #0000000a
        :pswitch_115  #0000000b
        :pswitch_10d  #0000000c
        :pswitch_115  #0000000d
        :pswitch_10a  #0000000e
        :pswitch_115  #0000000f
        :pswitch_115  #00000010
        :pswitch_107  #00000011
        :pswitch_115  #00000012
        :pswitch_104  #00000013
        :pswitch_115  #00000014
        :pswitch_101  #00000015
        :pswitch_115  #00000016
        :pswitch_fe  #00000017
        :pswitch_115  #00000018
        :pswitch_fb  #00000019
        :pswitch_115  #0000001a
        :pswitch_115  #0000001b
        :pswitch_115  #0000001c
        :pswitch_115  #0000001d
        :pswitch_115  #0000001e
        :pswitch_115  #0000001f
        :pswitch_115  #00000020
        :pswitch_115  #00000021
        :pswitch_115  #00000022
        :pswitch_f8  #00000023
        :pswitch_115  #00000024
        :pswitch_f5  #00000025
        :pswitch_115  #00000026
        :pswitch_f2  #00000027
        :pswitch_115  #00000028
        :pswitch_115  #00000029
        :pswitch_115  #0000002a
    .end packed-switch

    :pswitch_data_2a2
    .packed-switch 0x9
        :pswitch_122  #00000009
        :pswitch_11c  #0000000a
        :pswitch_122  #0000000b
        :pswitch_11c  #0000000c
        :pswitch_122  #0000000d
        :pswitch_11c  #0000000e
        :pswitch_122  #0000000f
        :pswitch_122  #00000010
        :pswitch_11c  #00000011
        :pswitch_122  #00000012
        :pswitch_11c  #00000013
        :pswitch_122  #00000014
        :pswitch_11c  #00000015
        :pswitch_122  #00000016
        :pswitch_11c  #00000017
        :pswitch_122  #00000018
        :pswitch_11c  #00000019
        :pswitch_122  #0000001a
        :pswitch_122  #0000001b
        :pswitch_122  #0000001c
        :pswitch_122  #0000001d
        :pswitch_122  #0000001e
        :pswitch_122  #0000001f
        :pswitch_122  #00000020
        :pswitch_122  #00000021
        :pswitch_122  #00000022
        :pswitch_11c  #00000023
        :pswitch_122  #00000024
        :pswitch_11c  #00000025
        :pswitch_122  #00000026
        :pswitch_11c  #00000027
        :pswitch_122  #00000028
        :pswitch_122  #00000029
        :pswitch_122  #0000002a
    .end packed-switch
.end method


# virtual methods
.method public a(Ly6/l0;)Li5/x$a;
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Ll5/r$c;->k:Ly6/l0;

    return-object p0

    :cond_5
    const/16 p0, 0x17

    invoke-static {p0}, Ll5/r$c;->s(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public b(Li5/b;)Li5/x$a;
    .registers 2

    check-cast p1, Li5/x;

    iput-object p1, p0, Ll5/r$c;->e:Li5/x;

    return-object p0
.end method

.method public build()Li5/x;
    .registers 2

    iget-object v0, p0, Ll5/r$c;->x:Ll5/r;

    invoke-virtual {v0, p0}, Ll5/r;->E0(Ll5/r$c;)Li5/x;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/util/List;)Li5/x$a;
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Ll5/r$c;->g:Ljava/util/List;

    return-object p0

    :cond_5
    const/16 p0, 0x13

    invoke-static {p0}, Ll5/r$c;->s(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public d(Li5/a$a;Ljava/lang/Object;)Li5/x$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Li5/a$a<",
            "TV;>;TV;)",
            "Li5/x$a<",
            "Li5/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll5/r$c;->u:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public e()Li5/x$a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll5/r$c;->t:Z

    return-object p0
.end method

.method public f(Lh6/f;)Li5/x$a;
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Ll5/r$c;->l:Lh6/f;

    return-object p0

    :cond_5
    const/16 p0, 0x11

    invoke-static {p0}, Ll5/r$c;->s(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public g(Li5/l;)Li5/x$a;
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Ll5/r$c;->b:Li5/l;

    return-object p0

    :cond_5
    const/16 p0, 0x8

    invoke-static {p0}, Ll5/r$c;->s(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public h()Li5/x$a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll5/r$c;->q:Z

    return-object p0
.end method

.method public i(Li5/b$a;)Li5/x$a;
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Ll5/r$c;->f:Li5/b$a;

    return-object p0

    :cond_5
    const/16 p0, 0xe

    invoke-static {p0}, Ll5/r$c;->s(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public j(Li5/r0;)Li5/x$a;
    .registers 2

    iput-object p1, p0, Ll5/r$c;->j:Li5/r0;

    return-object p0
.end method

.method public k()Li5/x$a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll5/r$c;->o:Z

    return-object p0
.end method

.method public l(Li5/d0;)Li5/x$a;
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Ll5/r$c;->c:Li5/d0;

    return-object p0

    :cond_5
    const/16 p0, 0xa

    invoke-static {p0}, Ll5/r$c;->s(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public m(Z)Li5/x$a;
    .registers 2

    iput-boolean p1, p0, Ll5/r$c;->m:Z

    return-object p0
.end method

.method public n(Ljava/util/List;)Li5/x$a;
    .registers 2

    iput-object p1, p0, Ll5/r$c;->r:Ljava/util/List;

    return-object p0
.end method

.method public o(Ly6/t1;)Li5/x$a;
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Ll5/r$c;->a:Ly6/t1;

    return-object p0

    :cond_5
    const/16 p0, 0x25

    invoke-static {p0}, Ll5/r$c;->s(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public p(Lj5/h;)Li5/x$a;
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Ll5/r$c;->s:Lj5/h;

    return-object p0

    :cond_5
    const/16 p0, 0x23

    invoke-static {p0}, Ll5/r$c;->s(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public q(Li5/t;)Li5/x$a;
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Ll5/r$c;->d:Li5/t;

    return-object p0

    :cond_5
    const/16 p0, 0xc

    invoke-static {p0}, Ll5/r$c;->s(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public r()Li5/x$a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll5/r$c;->n:Z

    return-object p0
.end method
