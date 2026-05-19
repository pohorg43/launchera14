.class public Lk6/o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk6/o$c;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk6/j;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lk6/o;

.field public static final g:Lz6/d$a;


# instance fields
.field public final a:Lz6/f;

.field public final b:Lz6/e;

.field public final c:Lz6/d$a;

.field public final d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ly6/l0;",
            "Ly6/l0;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const-class v0, Lk6/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-static {v0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lk6/o;->e:Ljava/util/List;

    new-instance v0, Lk6/o$a;

    invoke-direct {v0}, Lk6/o$a;-><init>()V

    sput-object v0, Lk6/o;->g:Lz6/d$a;

    new-instance v1, Lk6/o;

    sget-object v2, Lz6/f$a;->a:Lz6/f$a;

    sget-object v3, Lz6/e$a;->a:Lz6/e$a;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lk6/o;-><init>(Lz6/d$a;Lz6/f;Lz6/e;Lkotlin/jvm/functions/Function2;)V

    sput-object v1, Lk6/o;->f:Lk6/o;

    return-void
.end method

.method public constructor <init>(Lz6/d$a;Lz6/f;Lz6/e;Lkotlin/jvm/functions/Function2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/d$a;",
            "Lz6/f;",
            "Lz6/e;",
            "Lkotlin/jvm/functions/Function2<",
            "Ly6/l0;",
            "Ly6/l0;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 p4, 0x0

    if-eqz p1, :cond_16

    if-eqz p2, :cond_11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk6/o;->c:Lz6/d$a;

    iput-object p2, p0, Lk6/o;->a:Lz6/f;

    iput-object p3, p0, Lk6/o;->b:Lz6/e;

    iput-object p4, p0, Lk6/o;->d:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_11
    const/4 p0, 0x6

    invoke-static {p0}, Lk6/o;->a(I)V

    throw p4

    :cond_16
    const/4 p0, 0x5

    invoke-static {p0}, Lk6/o;->a(I)V

    throw p4
.end method

.method public static synthetic a(I)V
    .registers 25

    move/from16 v0, p0

    const/16 v1, 0x2d

    const/16 v2, 0x2c

    const/16 v3, 0x67

    const/16 v4, 0x62

    const/16 v5, 0x5f

    const/16 v6, 0x15

    const/16 v7, 0x10

    const/16 v8, 0xc

    const/16 v9, 0xb

    if-eq v0, v9, :cond_35

    if-eq v0, v8, :cond_35

    if-eq v0, v7, :cond_35

    if-eq v0, v6, :cond_35

    if-eq v0, v5, :cond_35

    if-eq v0, v4, :cond_35

    if-eq v0, v3, :cond_35

    if-eq v0, v2, :cond_35

    if-eq v0, v1, :cond_35

    packed-switch v0, :pswitch_data_27e

    packed-switch v0, :pswitch_data_28e

    packed-switch v0, :pswitch_data_2a2

    packed-switch v0, :pswitch_data_2b0

    const-string v10, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_37

    :cond_35
    :pswitch_35  #0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x50, 0x51, 0x52, 0x53, 0x54, 0x5a, 0x5b, 0x5c
    const-string v10, "@NotNull method %s.%s must not return null"

    :goto_37
    const/4 v11, 0x2

    if-eq v0, v9, :cond_58

    if-eq v0, v8, :cond_58

    if-eq v0, v7, :cond_58

    if-eq v0, v6, :cond_58

    if-eq v0, v5, :cond_58

    if-eq v0, v4, :cond_58

    if-eq v0, v3, :cond_58

    if-eq v0, v2, :cond_58

    if-eq v0, v1, :cond_58

    packed-switch v0, :pswitch_data_2ba

    packed-switch v0, :pswitch_data_2ca

    packed-switch v0, :pswitch_data_2de

    packed-switch v0, :pswitch_data_2ec

    const/4 v12, 0x3

    goto :goto_59

    :cond_58
    :pswitch_58  #0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x50, 0x51, 0x52, 0x53, 0x54, 0x5a, 0x5b, 0x5c
    move v12, v11

    :goto_59
    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil"

    const/4 v14, 0x0

    packed-switch v0, :pswitch_data_2f6

    :pswitch_61  #0x3, 0x6
    const-string v15, "kotlinTypeRefiner"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_67  #0x6b, 0x6c
    const-string v15, "memberDescriptor"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_6d  #0x66
    const-string v15, "onConflict"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_73  #0x64, 0x69
    const-string v15, "extractFrom"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_79  #0x63, 0x68
    const-string v15, "overrider"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_7f  #0x61
    const-string v15, "toFilter"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_85  #0x5e
    const-string v15, "classModality"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_8b  #0x4f, 0x65
    const-string v15, "descriptorByHandle"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_91  #0x4e, 0x55
    const-string v15, "overridables"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_97  #0x4c
    const-string v15, "bReturnType"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_9d  #0x4a
    const-string v15, "aReturnType"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_a3  #0x48, 0x58, 0x5d, 0x6d
    const-string v15, "descriptors"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_a9  #0x47
    const-string v15, "candidate"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_af  #0x44, 0x46, 0x4b
    const-string v15, "b"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_b5  #0x43, 0x45, 0x49
    const-string v15, "a"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_bb  #0x3f, 0x41
    const-string v15, "notOverridden"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_c1  #0x3c
    const-string v15, "descriptorsFromSuper"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_c7  #0x3b
    const-string v15, "fromCurrent"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_cd  #0x3a
    const-string v15, "fromSuper"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_d3  #0x39
    const-string v15, "overriding"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_d9  #0x38, 0x3e, 0x42, 0x57, 0x6a
    const-string v15, "strategy"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_df  #0x37, 0x3d, 0x40, 0x56, 0x59, 0x60
    const-string v15, "current"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_e5  #0x36
    const-string v15, "membersFromCurrent"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_eb  #0x35
    const-string v15, "membersFromSupertypes"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_f1  #0x34
    const-string v15, "name"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_f7  #0x32
    const-string v15, "subTypeParameter"

    aput-object v15, v12, v14

    goto/16 :goto_159

    :pswitch_fd  #0x31
    const-string v15, "superTypeParameter"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_102  #0x30, 0x33, 0x4d
    const-string v15, "typeCheckerState"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_107  #0x2f
    const-string v15, "typeInSub"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_10c  #0x2e
    const-string v15, "typeInSuper"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_111  #0x2b
    const-string v15, "secondParameters"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_116  #0x2a
    const-string v15, "firstParameters"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_11b  #0x14, 0x17, 0x1f, 0x29
    const-string v15, "subDescriptor"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_120  #0x13, 0x16, 0x1e, 0x28
    const-string v15, "superDescriptor"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_125  #0x12
    const-string v15, "result"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_12a  #0xf, 0x11
    const-string v15, "descriptor"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_12f  #0xe
    const-string v15, "g"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_134  #0xd
    const-string v15, "f"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_139  #0xb, 0xc, 0x10, 0x15, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x2c, 0x2d, 0x50, 0x51, 0x52, 0x53, 0x54, 0x5a, 0x5b, 0x5c, 0x5f, 0x62, 0x67
    aput-object v13, v12, v14

    goto :goto_159

    :pswitch_13c  #0xa
    const-string v15, "transformFirst"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_141  #0x8, 0x9
    const-string v15, "candidateSet"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_146  #0x5
    const-string v15, "axioms"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_14b  #0x4
    const-string v15, "equalityAxioms"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_150  #0x2
    const-string v15, "customSubtype"

    aput-object v15, v12, v14

    goto :goto_159

    :pswitch_155  #0x1, 0x7
    const-string v15, "kotlinTypePreparator"

    aput-object v15, v12, v14

    :goto_159
    const-string v14, "filterVisibleFakeOverrides"

    const-string v15, "getMinimalModality"

    const-string v16, "determineModalityForFakeOverride"

    const-string v17, "selectMostSpecificMember"

    const-string v18, "createTypeCheckerState"

    const-string v19, "isOverridableByWithoutExternalConditions"

    const-string v20, "isOverridableBy"

    const-string v21, "getOverriddenDeclarations"

    const-string v22, "filterOverrides"

    const/16 v23, 0x1

    if-eq v0, v9, :cond_1ab

    if-eq v0, v8, :cond_1ab

    if-eq v0, v7, :cond_1a8

    if-eq v0, v6, :cond_1a5

    if-eq v0, v5, :cond_1a2

    if-eq v0, v4, :cond_19f

    if-eq v0, v3, :cond_19a

    if-eq v0, v2, :cond_197

    if-eq v0, v1, :cond_197

    packed-switch v0, :pswitch_data_3d4

    packed-switch v0, :pswitch_data_3e4

    packed-switch v0, :pswitch_data_3f8

    packed-switch v0, :pswitch_data_406

    aput-object v13, v12, v23

    goto :goto_1ad

    :pswitch_18e  #0x5a, 0x5b, 0x5c
    aput-object v16, v12, v23

    goto :goto_1ad

    :pswitch_191  #0x50, 0x51, 0x52, 0x53, 0x54
    aput-object v17, v12, v23

    goto :goto_1ad

    :pswitch_194  #0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27
    aput-object v19, v12, v23

    goto :goto_1ad

    :cond_197
    aput-object v18, v12, v23

    goto :goto_1ad

    :cond_19a
    const-string v13, "extractMembersOverridableInBothWays"

    aput-object v13, v12, v23

    goto :goto_1ad

    :cond_19f
    aput-object v14, v12, v23

    goto :goto_1ad

    :cond_1a2
    aput-object v15, v12, v23

    goto :goto_1ad

    :cond_1a5
    :pswitch_1a5  #0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d
    aput-object v20, v12, v23

    goto :goto_1ad

    :cond_1a8
    aput-object v21, v12, v23

    goto :goto_1ad

    :cond_1ab
    aput-object v22, v12, v23

    :goto_1ad
    packed-switch v0, :pswitch_data_410

    const-string v13, "createWithTypeRefiner"

    aput-object v13, v12, v11

    goto/16 :goto_24f

    :pswitch_1b6  #0x6d
    const-string v13, "findMaxVisibility"

    aput-object v13, v12, v11

    goto/16 :goto_24f

    :pswitch_1bc  #0x6c
    const-string v13, "computeVisibilityToInherit"

    aput-object v13, v12, v11

    goto/16 :goto_24f

    :pswitch_1c2  #0x6b
    const-string v13, "resolveUnknownVisibilityForMember"

    aput-object v13, v12, v11

    goto/16 :goto_24f

    :pswitch_1c8  #0x63, 0x64, 0x65, 0x66, 0x68, 0x69, 0x6a
    const-string v13, "extractMembersOverridableInBothWays"

    aput-object v13, v12, v11

    goto/16 :goto_24f

    :pswitch_1ce  #0x60, 0x61
    aput-object v14, v12, v11

    goto/16 :goto_24f

    :pswitch_1d2  #0x5d, 0x5e
    aput-object v15, v12, v11

    goto/16 :goto_24f

    :pswitch_1d6  #0x58, 0x59
    aput-object v16, v12, v11

    goto/16 :goto_24f

    :pswitch_1da  #0x55, 0x56, 0x57
    const-string v13, "createAndBindFakeOverride"

    aput-object v13, v12, v11

    goto/16 :goto_24f

    :pswitch_1e0  #0x4e, 0x4f
    aput-object v17, v12, v11

    goto/16 :goto_24f

    :pswitch_1e4  #0x49, 0x4a, 0x4b, 0x4c, 0x4d
    const-string v13, "isReturnTypeMoreSpecific"

    aput-object v13, v12, v11

    goto/16 :goto_24f

    :pswitch_1ea  #0x47, 0x48
    const-string v13, "isMoreSpecificThenAllOf"

    aput-object v13, v12, v11

    goto/16 :goto_24f

    :pswitch_1f0  #0x45, 0x46
    const-string v13, "isVisibilityMoreSpecific"

    aput-object v13, v12, v11

    goto/16 :goto_24f

    :pswitch_1f6  #0x43, 0x44
    const-string v13, "isMoreSpecific"

    aput-object v13, v12, v11

    goto :goto_24f

    :pswitch_1fb  #0x40, 0x41, 0x42
    const-string v13, "createAndBindFakeOverrides"

    aput-object v13, v12, v11

    goto :goto_24f

    :pswitch_200  #0x3f
    const-string v13, "allHasSameContainingDeclaration"

    aput-object v13, v12, v11

    goto :goto_24f

    :pswitch_205  #0x3b, 0x3c, 0x3d, 0x3e
    const-string v13, "extractAndBindOverridesForMember"

    aput-object v13, v12, v11

    goto :goto_24f

    :pswitch_20a  #0x39, 0x3a
    const-string v13, "isVisibleForOverride"

    aput-object v13, v12, v11

    goto :goto_24f

    :pswitch_20f  #0x34, 0x35, 0x36, 0x37, 0x38
    const-string v13, "generateOverridesInFunctionGroup"

    aput-object v13, v12, v11

    goto :goto_24f

    :pswitch_214  #0x31, 0x32, 0x33
    const-string v13, "areTypeParametersEquivalent"

    aput-object v13, v12, v11

    goto :goto_24f

    :pswitch_219  #0x2e, 0x2f, 0x30
    const-string v13, "areTypesEquivalent"

    aput-object v13, v12, v11

    goto :goto_24f

    :pswitch_21e  #0x2a, 0x2b
    aput-object v18, v12, v11

    goto :goto_24f

    :pswitch_221  #0x28, 0x29
    const-string v13, "getBasicOverridabilityProblem"

    aput-object v13, v12, v11

    goto :goto_24f

    :pswitch_226  #0x1e, 0x1f
    aput-object v19, v12, v11

    goto :goto_24f

    :pswitch_229  #0x13, 0x14, 0x16, 0x17
    aput-object v20, v12, v11

    goto :goto_24f

    :pswitch_22c  #0x11, 0x12
    const-string v13, "collectOverriddenDeclarations"

    aput-object v13, v12, v11

    goto :goto_24f

    :pswitch_231  #0xf
    aput-object v21, v12, v11

    goto :goto_24f

    :pswitch_234  #0xd, 0xe
    const-string v13, "overrides"

    aput-object v13, v12, v11

    goto :goto_24f

    :pswitch_239  #0x9, 0xa
    aput-object v22, v12, v11

    goto :goto_24f

    :pswitch_23c  #0x8
    const-string v13, "filterOutOverridden"

    aput-object v13, v12, v11

    goto :goto_24f

    :pswitch_241  #0x5, 0x6, 0x7
    const-string v13, "<init>"

    aput-object v13, v12, v11

    goto :goto_24f

    :pswitch_246  #0x3, 0x4
    const-string v13, "create"

    aput-object v13, v12, v11

    goto :goto_24f

    :pswitch_24b  #0x1, 0x2
    const-string v13, "createWithTypePreparatorAndCustomSubtype"

    aput-object v13, v12, v11

    :goto_24f
    :pswitch_24f  #0xb, 0xc, 0x10, 0x15, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x2c, 0x2d, 0x50, 0x51, 0x52, 0x53, 0x54, 0x5a, 0x5b, 0x5c, 0x5f, 0x62, 0x67
    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    if-eq v0, v9, :cond_277

    if-eq v0, v8, :cond_277

    if-eq v0, v7, :cond_277

    if-eq v0, v6, :cond_277

    if-eq v0, v5, :cond_277

    if-eq v0, v4, :cond_277

    if-eq v0, v3, :cond_277

    if-eq v0, v2, :cond_277

    if-eq v0, v1, :cond_277

    packed-switch v0, :pswitch_data_4ee

    packed-switch v0, :pswitch_data_4fe

    packed-switch v0, :pswitch_data_512

    packed-switch v0, :pswitch_data_520

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_27c

    :cond_277
    :pswitch_277  #0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x50, 0x51, 0x52, 0x53, 0x54, 0x5a, 0x5b, 0x5c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_27c
    throw v0

    nop

    :pswitch_data_27e
    .packed-switch 0x18
        :pswitch_35  #00000018
        :pswitch_35  #00000019
        :pswitch_35  #0000001a
        :pswitch_35  #0000001b
        :pswitch_35  #0000001c
        :pswitch_35  #0000001d
    .end packed-switch

    :pswitch_data_28e
    .packed-switch 0x20
        :pswitch_35  #00000020
        :pswitch_35  #00000021
        :pswitch_35  #00000022
        :pswitch_35  #00000023
        :pswitch_35  #00000024
        :pswitch_35  #00000025
        :pswitch_35  #00000026
        :pswitch_35  #00000027
    .end packed-switch

    :pswitch_data_2a2
    .packed-switch 0x50
        :pswitch_35  #00000050
        :pswitch_35  #00000051
        :pswitch_35  #00000052
        :pswitch_35  #00000053
        :pswitch_35  #00000054
    .end packed-switch

    :pswitch_data_2b0
    .packed-switch 0x5a
        :pswitch_35  #0000005a
        :pswitch_35  #0000005b
        :pswitch_35  #0000005c
    .end packed-switch

    :pswitch_data_2ba
    .packed-switch 0x18
        :pswitch_58  #00000018
        :pswitch_58  #00000019
        :pswitch_58  #0000001a
        :pswitch_58  #0000001b
        :pswitch_58  #0000001c
        :pswitch_58  #0000001d
    .end packed-switch

    :pswitch_data_2ca
    .packed-switch 0x20
        :pswitch_58  #00000020
        :pswitch_58  #00000021
        :pswitch_58  #00000022
        :pswitch_58  #00000023
        :pswitch_58  #00000024
        :pswitch_58  #00000025
        :pswitch_58  #00000026
        :pswitch_58  #00000027
    .end packed-switch

    :pswitch_data_2de
    .packed-switch 0x50
        :pswitch_58  #00000050
        :pswitch_58  #00000051
        :pswitch_58  #00000052
        :pswitch_58  #00000053
        :pswitch_58  #00000054
    .end packed-switch

    :pswitch_data_2ec
    .packed-switch 0x5a
        :pswitch_58  #0000005a
        :pswitch_58  #0000005b
        :pswitch_58  #0000005c
    .end packed-switch

    :pswitch_data_2f6
    .packed-switch 0x1
        :pswitch_155  #00000001
        :pswitch_150  #00000002
        :pswitch_61  #00000003
        :pswitch_14b  #00000004
        :pswitch_146  #00000005
        :pswitch_61  #00000006
        :pswitch_155  #00000007
        :pswitch_141  #00000008
        :pswitch_141  #00000009
        :pswitch_13c  #0000000a
        :pswitch_139  #0000000b
        :pswitch_139  #0000000c
        :pswitch_134  #0000000d
        :pswitch_12f  #0000000e
        :pswitch_12a  #0000000f
        :pswitch_139  #00000010
        :pswitch_12a  #00000011
        :pswitch_125  #00000012
        :pswitch_120  #00000013
        :pswitch_11b  #00000014
        :pswitch_139  #00000015
        :pswitch_120  #00000016
        :pswitch_11b  #00000017
        :pswitch_139  #00000018
        :pswitch_139  #00000019
        :pswitch_139  #0000001a
        :pswitch_139  #0000001b
        :pswitch_139  #0000001c
        :pswitch_139  #0000001d
        :pswitch_120  #0000001e
        :pswitch_11b  #0000001f
        :pswitch_139  #00000020
        :pswitch_139  #00000021
        :pswitch_139  #00000022
        :pswitch_139  #00000023
        :pswitch_139  #00000024
        :pswitch_139  #00000025
        :pswitch_139  #00000026
        :pswitch_139  #00000027
        :pswitch_120  #00000028
        :pswitch_11b  #00000029
        :pswitch_116  #0000002a
        :pswitch_111  #0000002b
        :pswitch_139  #0000002c
        :pswitch_139  #0000002d
        :pswitch_10c  #0000002e
        :pswitch_107  #0000002f
        :pswitch_102  #00000030
        :pswitch_fd  #00000031
        :pswitch_f7  #00000032
        :pswitch_102  #00000033
        :pswitch_f1  #00000034
        :pswitch_eb  #00000035
        :pswitch_e5  #00000036
        :pswitch_df  #00000037
        :pswitch_d9  #00000038
        :pswitch_d3  #00000039
        :pswitch_cd  #0000003a
        :pswitch_c7  #0000003b
        :pswitch_c1  #0000003c
        :pswitch_df  #0000003d
        :pswitch_d9  #0000003e
        :pswitch_bb  #0000003f
        :pswitch_df  #00000040
        :pswitch_bb  #00000041
        :pswitch_d9  #00000042
        :pswitch_b5  #00000043
        :pswitch_af  #00000044
        :pswitch_b5  #00000045
        :pswitch_af  #00000046
        :pswitch_a9  #00000047
        :pswitch_a3  #00000048
        :pswitch_b5  #00000049
        :pswitch_9d  #0000004a
        :pswitch_af  #0000004b
        :pswitch_97  #0000004c
        :pswitch_102  #0000004d
        :pswitch_91  #0000004e
        :pswitch_8b  #0000004f
        :pswitch_139  #00000050
        :pswitch_139  #00000051
        :pswitch_139  #00000052
        :pswitch_139  #00000053
        :pswitch_139  #00000054
        :pswitch_91  #00000055
        :pswitch_df  #00000056
        :pswitch_d9  #00000057
        :pswitch_a3  #00000058
        :pswitch_df  #00000059
        :pswitch_139  #0000005a
        :pswitch_139  #0000005b
        :pswitch_139  #0000005c
        :pswitch_a3  #0000005d
        :pswitch_85  #0000005e
        :pswitch_139  #0000005f
        :pswitch_df  #00000060
        :pswitch_7f  #00000061
        :pswitch_139  #00000062
        :pswitch_79  #00000063
        :pswitch_73  #00000064
        :pswitch_8b  #00000065
        :pswitch_6d  #00000066
        :pswitch_139  #00000067
        :pswitch_79  #00000068
        :pswitch_73  #00000069
        :pswitch_d9  #0000006a
        :pswitch_67  #0000006b
        :pswitch_67  #0000006c
        :pswitch_a3  #0000006d
    .end packed-switch

    :pswitch_data_3d4
    .packed-switch 0x18
        :pswitch_1a5  #00000018
        :pswitch_1a5  #00000019
        :pswitch_1a5  #0000001a
        :pswitch_1a5  #0000001b
        :pswitch_1a5  #0000001c
        :pswitch_1a5  #0000001d
    .end packed-switch

    :pswitch_data_3e4
    .packed-switch 0x20
        :pswitch_194  #00000020
        :pswitch_194  #00000021
        :pswitch_194  #00000022
        :pswitch_194  #00000023
        :pswitch_194  #00000024
        :pswitch_194  #00000025
        :pswitch_194  #00000026
        :pswitch_194  #00000027
    .end packed-switch

    :pswitch_data_3f8
    .packed-switch 0x50
        :pswitch_191  #00000050
        :pswitch_191  #00000051
        :pswitch_191  #00000052
        :pswitch_191  #00000053
        :pswitch_191  #00000054
    .end packed-switch

    :pswitch_data_406
    .packed-switch 0x5a
        :pswitch_18e  #0000005a
        :pswitch_18e  #0000005b
        :pswitch_18e  #0000005c
    .end packed-switch

    :pswitch_data_410
    .packed-switch 0x1
        :pswitch_24b  #00000001
        :pswitch_24b  #00000002
        :pswitch_246  #00000003
        :pswitch_246  #00000004
        :pswitch_241  #00000005
        :pswitch_241  #00000006
        :pswitch_241  #00000007
        :pswitch_23c  #00000008
        :pswitch_239  #00000009
        :pswitch_239  #0000000a
        :pswitch_24f  #0000000b
        :pswitch_24f  #0000000c
        :pswitch_234  #0000000d
        :pswitch_234  #0000000e
        :pswitch_231  #0000000f
        :pswitch_24f  #00000010
        :pswitch_22c  #00000011
        :pswitch_22c  #00000012
        :pswitch_229  #00000013
        :pswitch_229  #00000014
        :pswitch_24f  #00000015
        :pswitch_229  #00000016
        :pswitch_229  #00000017
        :pswitch_24f  #00000018
        :pswitch_24f  #00000019
        :pswitch_24f  #0000001a
        :pswitch_24f  #0000001b
        :pswitch_24f  #0000001c
        :pswitch_24f  #0000001d
        :pswitch_226  #0000001e
        :pswitch_226  #0000001f
        :pswitch_24f  #00000020
        :pswitch_24f  #00000021
        :pswitch_24f  #00000022
        :pswitch_24f  #00000023
        :pswitch_24f  #00000024
        :pswitch_24f  #00000025
        :pswitch_24f  #00000026
        :pswitch_24f  #00000027
        :pswitch_221  #00000028
        :pswitch_221  #00000029
        :pswitch_21e  #0000002a
        :pswitch_21e  #0000002b
        :pswitch_24f  #0000002c
        :pswitch_24f  #0000002d
        :pswitch_219  #0000002e
        :pswitch_219  #0000002f
        :pswitch_219  #00000030
        :pswitch_214  #00000031
        :pswitch_214  #00000032
        :pswitch_214  #00000033
        :pswitch_20f  #00000034
        :pswitch_20f  #00000035
        :pswitch_20f  #00000036
        :pswitch_20f  #00000037
        :pswitch_20f  #00000038
        :pswitch_20a  #00000039
        :pswitch_20a  #0000003a
        :pswitch_205  #0000003b
        :pswitch_205  #0000003c
        :pswitch_205  #0000003d
        :pswitch_205  #0000003e
        :pswitch_200  #0000003f
        :pswitch_1fb  #00000040
        :pswitch_1fb  #00000041
        :pswitch_1fb  #00000042
        :pswitch_1f6  #00000043
        :pswitch_1f6  #00000044
        :pswitch_1f0  #00000045
        :pswitch_1f0  #00000046
        :pswitch_1ea  #00000047
        :pswitch_1ea  #00000048
        :pswitch_1e4  #00000049
        :pswitch_1e4  #0000004a
        :pswitch_1e4  #0000004b
        :pswitch_1e4  #0000004c
        :pswitch_1e4  #0000004d
        :pswitch_1e0  #0000004e
        :pswitch_1e0  #0000004f
        :pswitch_24f  #00000050
        :pswitch_24f  #00000051
        :pswitch_24f  #00000052
        :pswitch_24f  #00000053
        :pswitch_24f  #00000054
        :pswitch_1da  #00000055
        :pswitch_1da  #00000056
        :pswitch_1da  #00000057
        :pswitch_1d6  #00000058
        :pswitch_1d6  #00000059
        :pswitch_24f  #0000005a
        :pswitch_24f  #0000005b
        :pswitch_24f  #0000005c
        :pswitch_1d2  #0000005d
        :pswitch_1d2  #0000005e
        :pswitch_24f  #0000005f
        :pswitch_1ce  #00000060
        :pswitch_1ce  #00000061
        :pswitch_24f  #00000062
        :pswitch_1c8  #00000063
        :pswitch_1c8  #00000064
        :pswitch_1c8  #00000065
        :pswitch_1c8  #00000066
        :pswitch_24f  #00000067
        :pswitch_1c8  #00000068
        :pswitch_1c8  #00000069
        :pswitch_1c8  #0000006a
        :pswitch_1c2  #0000006b
        :pswitch_1bc  #0000006c
        :pswitch_1b6  #0000006d
    .end packed-switch

    :pswitch_data_4ee
    .packed-switch 0x18
        :pswitch_277  #00000018
        :pswitch_277  #00000019
        :pswitch_277  #0000001a
        :pswitch_277  #0000001b
        :pswitch_277  #0000001c
        :pswitch_277  #0000001d
    .end packed-switch

    :pswitch_data_4fe
    .packed-switch 0x20
        :pswitch_277  #00000020
        :pswitch_277  #00000021
        :pswitch_277  #00000022
        :pswitch_277  #00000023
        :pswitch_277  #00000024
        :pswitch_277  #00000025
        :pswitch_277  #00000026
        :pswitch_277  #00000027
    .end packed-switch

    :pswitch_data_512
    .packed-switch 0x50
        :pswitch_277  #00000050
        :pswitch_277  #00000051
        :pswitch_277  #00000052
        :pswitch_277  #00000053
        :pswitch_277  #00000054
    .end packed-switch

    :pswitch_data_520
    .packed-switch 0x5a
        :pswitch_277  #0000005a
        :pswitch_277  #0000005b
        :pswitch_277  #0000005c
    .end packed-switch
.end method

.method public static b(Ly6/l0;Ly6/l0;Ly6/i1;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_35

    if-eqz p1, :cond_2f

    if-eqz p2, :cond_29

    invoke-static {p0}, Ly0/b;->c(Ly6/l0;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    invoke-static {p1}, Ly0/b;->c(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_1a

    return v1

    :cond_1a
    sget-object v0, Ly6/i;->a:Ly6/i;

    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p0

    invoke-virtual {p1}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p1

    invoke-virtual {v0, p2, p0, p1}, Ly6/i;->e(Ly6/i1;Lc7/i;Lc7/i;)Z

    move-result p0

    return p0

    :cond_29
    const/16 p0, 0x30

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0

    :cond_2f
    const/16 p0, 0x2f

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0

    :cond_35
    const/16 p0, 0x2e

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0
.end method

.method public static c(Li5/b;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/b;",
            "Ljava/util/Set<",
            "Li5/b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_53

    if-eqz p1, :cond_4d

    invoke-interface {p0}, Li5/b;->f()Li5/b$a;

    move-result-object v0

    invoke-virtual {v0}, Li5/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_13
    invoke-interface {p0}, Li5/b;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-interface {p0}, Li5/b;->d()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/b;

    invoke-static {v0, p1}, Lk6/o;->c(Li5/b;Ljava/util/Set;)V

    goto :goto_25

    :cond_35
    :goto_35
    return-void

    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No overridden descriptors found for (fake override) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    const/16 p0, 0x12

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0

    :cond_53
    const/16 p0, 0x11

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0
.end method

.method public static d(Li5/a;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/a;",
            ")",
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Li5/a;->L()Li5/r0;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_12

    invoke-interface {v0}, Li5/d1;->getType()Ly6/l0;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-interface {p0}, Li5/a;->g()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/e1;

    invoke-interface {v0}, Li5/d1;->getType()Ly6/l0;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2e
    return-object v1
.end method

.method public static e(Ljava/util/Collection;Li5/e;Lk6/n;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Li5/b;",
            ">;",
            "Li5/e;",
            "Lk6/n;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    const/4 v2, 0x0

    if-eqz v0, :cond_1a4

    if-eqz v1, :cond_19e

    if-eqz v6, :cond_198

    if-eqz v1, :cond_192

    if-eqz v0, :cond_18c

    new-instance v3, Lk6/q;

    invoke-direct {v3, v1}, Lk6/q;-><init>(Li5/e;)V

    invoke-static {v0, v3}, Li4/v;->C(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_25

    move-object v7, v0

    goto :goto_26

    :cond_25
    move-object v7, v3

    :goto_26
    sget-object v0, Li5/d0;->d:Li5/d0;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    move v8, v5

    move v9, v8

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_6f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Li5/b;

    invoke-interface {v10}, Li5/c0;->o()Li5/d0;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eqz v12, :cond_6a

    if-eq v12, v11, :cond_53

    const/4 v10, 0x2

    if-eq v12, v10, :cond_51

    const/4 v10, 0x3

    if-eq v12, v10, :cond_4f

    goto :goto_2f

    :cond_4f
    move v9, v11

    goto :goto_2f

    :cond_51
    move v8, v11

    goto :goto_2f

    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Member cannot have SEALED modality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    sget-object v0, Li5/d0;->a:Li5/d0;

    :goto_6c
    move-object v2, v0

    goto/16 :goto_15d

    :cond_6f
    invoke-interface/range {p1 .. p1}, Li5/c0;->f0()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-interface/range {p1 .. p1}, Li5/e;->o()Li5/d0;

    move-result-object v3

    if-eq v3, v0, :cond_85

    invoke-interface/range {p1 .. p1}, Li5/e;->o()Li5/d0;

    move-result-object v3

    sget-object v10, Li5/d0;->b:Li5/d0;

    if-eq v3, v10, :cond_85

    move v3, v11

    goto :goto_86

    :cond_85
    move v3, v5

    :goto_86
    if-eqz v8, :cond_8d

    if-nez v9, :cond_8d

    sget-object v0, Li5/d0;->c:Li5/d0;

    goto :goto_6c

    :cond_8d
    if-nez v8, :cond_a0

    if-eqz v9, :cond_a0

    if-eqz v3, :cond_97

    invoke-interface/range {p1 .. p1}, Li5/e;->o()Li5/d0;

    move-result-object v0

    :cond_97
    if-eqz v0, :cond_9a

    goto :goto_6c

    :cond_9a
    const/16 v0, 0x5c

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v2

    :cond_a0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Li5/b;

    if-eqz v10, :cond_c3

    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v10, v12}, Lk6/o;->c(Li5/b;Ljava/util/Set;)V

    invoke-interface {v8, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_a9

    :cond_c3
    const/16 v0, 0xf

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v2

    :cond_c9
    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_ea

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Li5/l;

    invoke-static {v9}, Lo6/c;->k(Li5/l;)Li5/e0;

    move-result-object v9

    const-string v10, "<this>"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lz6/g;->a:Lh/b;

    invoke-interface {v9, v10}, Li5/e0;->w(Lh/b;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lz6/o;

    :cond_ea
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v9

    if-gt v9, v11, :cond_f1

    goto :goto_12d

    :cond_f1
    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_fa
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_108
    :goto_108
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_128

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v10

    check-cast v14, Li5/a;

    check-cast v13, Li5/a;

    invoke-static {v14, v13, v5, v11}, Lk6/o;->q(Li5/a;Li5/a;ZZ)Z

    move-result v15

    if-eqz v15, :cond_121

    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_108

    :cond_121
    invoke-static {v13, v14, v5, v11}, Lk6/o;->q(Li5/a;Li5/a;ZZ)Z

    move-result v13

    if-eqz v13, :cond_108

    goto :goto_fa

    :cond_128
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fa

    :cond_12c
    move-object v8, v9

    :goto_12d
    invoke-interface/range {p1 .. p1}, Li5/e;->o()Li5/d0;

    move-result-object v5

    if-eqz v5, :cond_186

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v0

    :cond_138
    :goto_138
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Li5/b;

    if-eqz v3, :cond_14e

    invoke-interface {v10}, Li5/c0;->o()Li5/d0;

    move-result-object v11

    if-ne v11, v0, :cond_14e

    move-object v10, v5

    goto :goto_152

    :cond_14e
    invoke-interface {v10}, Li5/c0;->o()Li5/d0;

    move-result-object v10

    :goto_152
    invoke-virtual {v10, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v11

    if-gez v11, :cond_138

    move-object v9, v10

    goto :goto_138

    :cond_15a
    if-eqz v9, :cond_180

    move-object v2, v9

    :goto_15d
    if-eqz v4, :cond_162

    sget-object v0, Li5/s;->h:Li5/t;

    goto :goto_164

    :cond_162
    sget-object v0, Li5/s;->g:Li5/t;

    :goto_164
    move-object v3, v0

    new-instance v0, Lk6/o$b;

    invoke-direct {v0}, Lk6/o$b;-><init>()V

    invoke-static {v7, v0}, Lk6/o;->s(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/b;

    sget-object v4, Li5/b$a;->b:Li5/b$a;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v0 .. v5}, Li5/b;->A0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/b;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Lk6/n;->d(Li5/b;Ljava/util/Collection;)V

    invoke-virtual {v6, v0}, Lk6/n;->a(Li5/b;)V

    return-void

    :cond_180
    const/16 v0, 0x5f

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v2

    :cond_186
    const/16 v0, 0x5e

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v2

    :cond_18c
    const/16 v0, 0x61

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v2

    :cond_192
    const/16 v0, 0x60

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v2

    :cond_198
    const/16 v0, 0x57

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v2

    :cond_19e
    const/16 v0, 0x56

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v2

    :cond_1a4
    const/16 v0, 0x55

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v2
.end method

.method public static g(Ljava/lang/Object;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Ljava/lang/Object;",
            ">(TH;",
            "Ljava/util/Collection<",
            "TH;>;",
            "Lkotlin/jvm/functions/Function1<",
            "TH;",
            "Li5/a;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "TH;",
            "Lh4/z;",
            ">;)",
            "Ljava/util/Collection<",
            "TH;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_56

    if-eqz p1, :cond_50

    if-eqz p2, :cond_4a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/a;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/a;

    if-ne p0, v2, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_19

    :cond_2f
    invoke-static {v1, v3}, Lk6/o;->j(Li5/a;Li5/a;)Lk6/o$c$a;

    move-result-object v3

    sget-object v4, Lk6/o$c$a;->a:Lk6/o$c$a;

    if-ne v3, v4, :cond_3e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_19

    :cond_3e
    sget-object v4, Lk6/o$c$a;->c:Lk6/o$c$a;

    if-ne v3, v4, :cond_19

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_19

    :cond_49
    return-object v0

    :cond_4a
    const/16 p0, 0x65

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0

    :cond_50
    const/16 p0, 0x64

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0

    :cond_56
    const/16 p0, 0x63

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0
.end method

.method public static i(Li5/a;Li5/a;)Lk6/o$c;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_8d

    if-eqz p1, :cond_87

    instance-of v1, p0, Li5/x;

    if-eqz v1, :cond_d

    instance-of v2, p1, Li5/x;

    if-eqz v2, :cond_15

    :cond_d
    instance-of v2, p0, Li5/o0;

    if-eqz v2, :cond_1c

    instance-of v3, p1, Li5/o0;

    if-nez v3, :cond_1c

    :cond_15
    const-string p0, "Member kind mismatch"

    invoke-static {p0}, Lk6/o$c;->d(Ljava/lang/String;)Lk6/o$c;

    move-result-object p0

    return-object p0

    :cond_1c
    if-nez v1, :cond_38

    if-eqz v2, :cond_21

    goto :goto_38

    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This type of CallableDescriptor cannot be checked for overridability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    :goto_38
    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object v1

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh6/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    const-string p0, "Name mismatch"

    invoke-static {p0}, Lk6/o$c;->d(Ljava/lang/String;)Lk6/o$c;

    move-result-object p0

    return-object p0

    :cond_4d
    invoke-interface {p0}, Li5/a;->L()Li5/r0;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_57

    move v1, v2

    goto :goto_58

    :cond_57
    move v1, v3

    :goto_58
    invoke-interface {p1}, Li5/a;->L()Li5/r0;

    move-result-object v4

    if-nez v4, :cond_5f

    goto :goto_60

    :cond_5f
    move v2, v3

    :goto_60
    if-eq v1, v2, :cond_69

    const-string p0, "Receiver presence mismatch"

    invoke-static {p0}, Lk6/o$c;->d(Ljava/lang/String;)Lk6/o$c;

    move-result-object p0

    goto :goto_83

    :cond_69
    invoke-interface {p0}, Li5/a;->g()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1}, Li5/a;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p0, p1, :cond_82

    const-string p0, "Value parameter number mismatch"

    invoke-static {p0}, Lk6/o$c;->d(Ljava/lang/String;)Lk6/o$c;

    move-result-object p0

    goto :goto_83

    :cond_82
    move-object p0, v0

    :goto_83
    if-eqz p0, :cond_86

    return-object p0

    :cond_86
    return-object v0

    :cond_87
    const/16 p0, 0x29

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0

    :cond_8d
    const/16 p0, 0x28

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0
.end method

.method public static j(Li5/a;Li5/a;)Lk6/o$c$a;
    .registers 5

    sget-object v0, Lk6/o;->f:Lk6/o;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lk6/o;->l(Li5/a;Li5/a;Li5/e;)Lk6/o$c;

    move-result-object v2

    invoke-virtual {v2}, Lk6/o$c;->c()Lk6/o$c$a;

    move-result-object v2

    invoke-virtual {v0, p0, p1, v1}, Lk6/o;->l(Li5/a;Li5/a;Li5/e;)Lk6/o$c;

    move-result-object p0

    invoke-virtual {p0}, Lk6/o$c;->c()Lk6/o$c$a;

    move-result-object p0

    sget-object p1, Lk6/o$c$a;->a:Lk6/o$c$a;

    if-ne v2, p1, :cond_1a

    if-ne p0, p1, :cond_1a

    goto :goto_23

    :cond_1a
    sget-object p1, Lk6/o$c$a;->c:Lk6/o$c$a;

    if-eq v2, p1, :cond_23

    if-ne p0, p1, :cond_21

    goto :goto_23

    :cond_21
    sget-object p1, Lk6/o$c$a;->b:Lk6/o$c$a;

    :cond_23
    :goto_23
    return-object p1
.end method

.method public static k(Li5/a;Li5/a;)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p0, :cond_99

    if-eqz p1, :cond_93

    invoke-interface {p0}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object v0

    invoke-interface {p1}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object v1

    invoke-static {p0, p1}, Lk6/o;->p(Li5/p;Li5/p;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_15

    return v3

    :cond_15
    sget-object v2, Lk6/o;->f:Lk6/o;

    invoke-interface {p0}, Li5/a;->getTypeParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {p1}, Li5/a;->getTypeParameters()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lk6/o;->f(Ljava/util/List;Ljava/util/List;)Ly6/i1;

    move-result-object v2

    instance-of v4, p0, Li5/x;

    if-eqz v4, :cond_2c

    invoke-static {p0, v0, p1, v1, v2}, Lk6/o;->o(Li5/a;Ly6/l0;Li5/a;Ly6/l0;Ly6/i1;)Z

    move-result p0

    return p0

    :cond_2c
    instance-of v4, p0, Li5/o0;

    if-eqz v4, :cond_7c

    move-object v4, p0

    check-cast v4, Li5/o0;

    move-object v5, p1

    check-cast v5, Li5/o0;

    invoke-interface {v4}, Li5/o0;->getSetter()Li5/q0;

    move-result-object v6

    invoke-interface {v5}, Li5/o0;->getSetter()Li5/q0;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v6, :cond_49

    if-nez v7, :cond_44

    goto :goto_49

    :cond_44
    invoke-static {v6, v7}, Lk6/o;->p(Li5/p;Li5/p;)Z

    move-result v6

    goto :goto_4a

    :cond_49
    :goto_49
    move v6, v8

    :goto_4a
    if-nez v6, :cond_4d

    return v3

    :cond_4d
    invoke-interface {v4}, Li5/f1;->K()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v5}, Li5/f1;->K()Z

    move-result v6

    if-eqz v6, :cond_68

    sget-object p0, Ly6/i;->a:Ly6/i;

    invoke-virtual {v0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p1

    invoke-virtual {v1}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v0

    invoke-virtual {p0, v2, p1, v0}, Ly6/i;->e(Ly6/i1;Lc7/i;Lc7/i;)Z

    move-result p0

    return p0

    :cond_68
    invoke-interface {v4}, Li5/f1;->K()Z

    move-result v4

    if-nez v4, :cond_74

    invoke-interface {v5}, Li5/f1;->K()Z

    move-result v4

    if-nez v4, :cond_7b

    :cond_74
    invoke-static {p0, v0, p1, v1, v2}, Lk6/o;->o(Li5/a;Ly6/l0;Li5/a;Ly6/l0;Ly6/i1;)Z

    move-result p0

    if-eqz p0, :cond_7b

    move v3, v8

    :cond_7b
    return v3

    :cond_7c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected callable: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_93
    const/16 p0, 0x44

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0

    :cond_99
    const/16 p0, 0x43

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0
.end method

.method public static o(Li5/a;Ly6/l0;Li5/a;Ly6/l0;Ly6/i1;)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_1a

    if-eqz p3, :cond_14

    sget-object p0, Ly6/i;->a:Ly6/i;

    invoke-virtual {p1}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p1

    invoke-virtual {p3}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p2

    invoke-virtual {p0, p4, p1, p2}, Ly6/i;->i(Ly6/i1;Lc7/i;Lc7/i;)Z

    move-result p0

    return p0

    :cond_14
    const/16 p1, 0x4c

    invoke-static {p1}, Lk6/o;->a(I)V

    throw p0

    :cond_1a
    const/16 p1, 0x4a

    invoke-static {p1}, Lk6/o;->a(I)V

    throw p0
.end method

.method public static p(Li5/p;Li5/p;)Z
    .registers 2

    invoke-interface {p0}, Li5/p;->getVisibility()Li5/t;

    move-result-object p0

    invoke-interface {p1}, Li5/p;->getVisibility()Li5/t;

    move-result-object p1

    invoke-static {p0, p1}, Li5/s;->b(Li5/t;Li5/t;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public static q(Li5/a;Li5/a;ZZ)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Li5/a;",
            ">(TD;TD;ZZ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_50

    if-eqz p1, :cond_4a

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    sget-object v0, Lk6/g;->a:Lk6/g;

    invoke-interface {p0}, Li5/a;->a()Li5/a;

    move-result-object v2

    invoke-interface {p1}, Li5/a;->a()Li5/a;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p2, p3}, Lk6/g;->a(Li5/l;Li5/l;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    invoke-interface {p1}, Li5/a;->a()Li5/a;

    move-result-object p1

    sget v0, Lk6/i;->a:I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Li5/a;->a()Li5/a;

    move-result-object p0

    invoke-static {p0, v0}, Lk6/i;->b(Li5/a;Ljava/util/Set;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/a;

    sget-object v2, Lk6/g;->a:Lk6/g;

    invoke-virtual {v2, p1, v0, p2, p3}, Lk6/g;->a(Li5/l;Li5/l;ZZ)Z

    move-result v0

    if-eqz v0, :cond_33

    return v1

    :cond_48
    const/4 p0, 0x0

    return p0

    :cond_4a
    const/16 p0, 0xe

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0

    :cond_50
    const/16 p0, 0xd

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0
.end method

.method public static r(Li5/b;Lkotlin/jvm/functions/Function1;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/b;",
            "Lkotlin/jvm/functions/Function1<",
            "Li5/b;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_11f

    invoke-interface {p0}, Li5/b;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/b;

    invoke-interface {v2}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v3

    sget-object v4, Li5/s;->g:Li5/t;

    if-ne v3, v4, :cond_b

    invoke-static {v2, p1}, Lk6/o;->r(Li5/b;Lkotlin/jvm/functions/Function1;)V

    goto :goto_b

    :cond_23
    invoke-interface {p0}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v1

    sget-object v2, Li5/s;->g:Li5/t;

    if-eq v1, v2, :cond_2c

    return-void

    :cond_2c
    invoke-interface {p0}, Li5/b;->d()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_119

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    sget-object v2, Li5/s;->k:Li5/t;

    goto :goto_88

    :cond_3b
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    move-object v3, v0

    :cond_40
    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/b;

    invoke-interface {v4}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v4

    if-nez v3, :cond_53

    goto :goto_60

    :cond_53
    invoke-static {v4, v3}, Li5/s;->b(Li5/t;Li5/t;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_5a

    goto :goto_3f

    :cond_5a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_40

    :goto_60
    move-object v3, v4

    goto :goto_40

    :cond_62
    if-nez v3, :cond_65

    goto :goto_85

    :cond_65
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/b;

    invoke-interface {v4}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v4

    invoke-static {v3, v4}, Li5/s;->b(Li5/t;Li5/t;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_85

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_69

    :cond_85
    :goto_85
    move-object v2, v0

    goto :goto_88

    :cond_87
    move-object v2, v3

    :goto_88
    if-nez v2, :cond_8c

    :goto_8a
    move-object v2, v0

    goto :goto_bb

    :cond_8c
    invoke-interface {p0}, Li5/b;->f()Li5/b$a;

    move-result-object v3

    sget-object v4, Li5/b$a;->b:Li5/b$a;

    if-ne v3, v4, :cond_b7

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_98
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/b;

    invoke-interface {v3}, Li5/c0;->o()Li5/d0;

    move-result-object v4

    sget-object v5, Li5/d0;->d:Li5/d0;

    if-eq v4, v5, :cond_98

    invoke-interface {v3}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    goto :goto_8a

    :cond_b7
    invoke-virtual {v2}, Li5/t;->d()Li5/t;

    move-result-object v2

    :cond_bb
    :goto_bb
    if-nez v2, :cond_c5

    if-eqz p1, :cond_c2

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c2
    sget-object v1, Li5/s;->e:Li5/t;

    goto :goto_c6

    :cond_c5
    move-object v1, v2

    :goto_c6
    instance-of v3, p0, Ll5/f0;

    if-eqz v3, :cond_f6

    move-object v3, p0

    check-cast v3, Ll5/f0;

    if-eqz v1, :cond_f0

    iput-object v1, v3, Ll5/f0;->j:Li5/t;

    check-cast p0, Li5/o0;

    invoke-interface {p0}, Li5/o0;->r()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_db
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_118

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/n0;

    if-nez v2, :cond_eb

    move-object v3, v0

    goto :goto_ec

    :cond_eb
    move-object v3, p1

    :goto_ec
    invoke-static {v1, v3}, Lk6/o;->r(Li5/b;Lkotlin/jvm/functions/Function1;)V

    goto :goto_db

    :cond_f0
    const/16 p0, 0x14

    invoke-static {p0}, Ll5/f0;->z(I)V

    throw v0

    :cond_f6
    instance-of p1, p0, Ll5/r;

    if-eqz p1, :cond_107

    check-cast p0, Ll5/r;

    if-eqz v1, :cond_101

    iput-object v1, p0, Ll5/r;->l:Li5/t;

    goto :goto_118

    :cond_101
    const/16 p0, 0xa

    invoke-static {p0}, Ll5/r;->z(I)V

    throw v0

    :cond_107
    check-cast p0, Ll5/e0;

    iput-object v1, p0, Ll5/e0;->k:Li5/t;

    invoke-virtual {p0}, Ll5/e0;->T()Li5/o0;

    move-result-object p1

    invoke-interface {p1}, Li5/c0;->getVisibility()Li5/t;

    move-result-object p1

    if-eq v1, p1, :cond_118

    const/4 p1, 0x0

    iput-boolean p1, p0, Ll5/e0;->e:Z

    :cond_118
    :goto_118
    return-void

    :cond_119
    const/16 p0, 0x6d

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0

    :cond_11f
    const/16 p0, 0x6b

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0
.end method

.method public static s(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TH;>;",
            "Lkotlin/jvm/functions/Function1<",
            "TH;",
            "Li5/a;",
            ">;)TH;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    invoke-static {p0}, Li4/v;->E(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_f

    return-object p0

    :cond_f
    const/16 p0, 0x50

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v2

    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "<this>"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "transform"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p0, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_46
    invoke-static {p0}, Li4/v;->E(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li5/a;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_54
    :goto_54
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_98

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Li5/a;

    if-eqz v7, :cond_92

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Li5/a;

    invoke-static {v7, v9}, Lk6/o;->k(Li5/a;Li5/a;)Z

    move-result v9

    if-nez v9, :cond_6a

    const/4 v8, 0x0

    goto :goto_7f

    :cond_7e
    move v8, v1

    :goto_7f
    if-eqz v8, :cond_84

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_84
    invoke-static {v7, v5}, Lk6/o;->k(Li5/a;Li5/a;)Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-static {v5, v7}, Lk6/o;->k(Li5/a;Li5/a;)Z

    move-result v7

    if-nez v7, :cond_54

    move-object v4, v6

    goto :goto_54

    :cond_92
    const/16 p0, 0x47

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v2

    :cond_98
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a7

    if-eqz v4, :cond_a1

    return-object v4

    :cond_a1
    const/16 p0, 0x51

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v2

    :cond_a7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v1, :cond_ba

    invoke-static {v0}, Li4/v;->E(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_b4

    return-object p0

    :cond_b4
    const/16 p0, 0x52

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v2

    :cond_ba
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_be
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/a;

    invoke-interface {v3}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object v3

    invoke-static {v3}, Ly6/h0;->b(Ly6/l0;)Z

    move-result v3

    if-nez v3, :cond_be

    goto :goto_da

    :cond_d9
    move-object v1, v2

    :goto_da
    if-eqz v1, :cond_dd

    return-object v1

    :cond_dd
    invoke-static {v0}, Li4/v;->E(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_e4

    return-object p0

    :cond_e4
    const/16 p0, 0x54

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v2
.end method


# virtual methods
.method public final f(Ljava/util/List;Ljava/util/List;)Ly6/i1;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;)",
            "Ly6/i1;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5f

    if-eqz p2, :cond_59

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    new-instance p1, Lk6/r;

    const/4 v3, 0x0

    iget-object v4, p0, Lk6/o;->c:Lz6/d$a;

    iget-object v5, p0, Lk6/o;->a:Lz6/f;

    iget-object v6, p0, Lk6/o;->b:Lz6/e;

    iget-object v7, p0, Lk6/o;->d:Lkotlin/jvm/functions/Function2;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lk6/r;-><init>(Ljava/util/Map;Lz6/d$a;Lz6/f;Lz6/e;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1, v1, v1}, Lk6/r;->u0(ZZ)Ly6/i1;

    move-result-object p0

    return-object p0

    :cond_20
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_46

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/a1;

    invoke-interface {v2}, Li5/a1;->h()Ly6/j1;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/a1;

    invoke-interface {v4}, Li5/a1;->h()Ly6/j1;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_46
    new-instance p1, Lk6/r;

    iget-object v4, p0, Lk6/o;->c:Lz6/d$a;

    iget-object v5, p0, Lk6/o;->a:Lz6/f;

    iget-object v6, p0, Lk6/o;->b:Lz6/e;

    iget-object v7, p0, Lk6/o;->d:Lkotlin/jvm/functions/Function2;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lk6/r;-><init>(Ljava/util/Map;Lz6/d$a;Lz6/f;Lz6/e;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1, v1, v1}, Lk6/r;->u0(ZZ)Ly6/i1;

    move-result-object p0

    return-object p0

    :cond_59
    const/16 p0, 0x2b

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0

    :cond_5f
    const/16 p0, 0x2a

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0
.end method

.method public h(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Li5/e;Lk6/n;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "+",
            "Li5/b;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Li5/b;",
            ">;",
            "Li5/e;",
            "Lk6/n;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    const/4 v3, 0x0

    if-eqz p1, :cond_18a

    if-eqz v0, :cond_184

    if-eqz p3, :cond_17e

    if-eqz v1, :cond_178

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eqz v6, :cond_8f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li5/b;

    if-eqz v6, :cond_89

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Li7/e;->a()Li7/e;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_80

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Li5/b;

    move-object/from16 v14, p0

    invoke-virtual {v14, v13, v6, v1}, Lk6/o;->l(Li5/a;Li5/a;Li5/e;)Lk6/o$c;

    move-result-object v15

    invoke-virtual {v15}, Lk6/o$c;->c()Lk6/o$c$a;

    move-result-object v15

    invoke-interface {v13}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Li5/s;->e(Li5/t;)Z

    move-result v16

    if-nez v16, :cond_63

    invoke-static {v13, v6, v7}, Li5/s;->f(Li5/p;Li5/l;Z)Z

    move-result v16

    if-eqz v16, :cond_63

    move/from16 v16, v8

    goto :goto_65

    :cond_63
    move/from16 v16, v7

    :goto_65
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-eqz v15, :cond_77

    if-eq v15, v9, :cond_6e

    goto :goto_3a

    :cond_6e
    if-eqz v16, :cond_73

    invoke-virtual {v2, v13, v6}, Lk6/n;->c(Li5/b;Li5/b;)V

    :cond_73
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_77
    if-eqz v16, :cond_7c

    invoke-virtual {v11, v13}, Li7/e;->add(Ljava/lang/Object;)Z

    :cond_7c
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_80
    move-object/from16 v14, p0

    invoke-virtual {v2, v6, v11}, Lk6/n;->d(Li5/b;Ljava/util/Collection;)V

    invoke-interface {v4, v10}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    goto :goto_18

    :cond_89
    const/16 v0, 0x3b

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v3

    :cond_8f
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge v0, v9, :cond_96

    goto :goto_d5

    :cond_96
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/b;

    invoke-interface {v0}, Li5/m;->b()Li5/l;

    move-result-object v0

    new-instance v5, Lk6/p;

    invoke-direct {v5, v0}, Lk6/p;-><init>(Li5/l;)V

    const-string v0, "<this>"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ba

    goto :goto_d5

    :cond_ba
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_be
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lk6/p;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_be

    goto :goto_d6

    :cond_d5
    :goto_d5
    move v7, v8

    :goto_d6
    if-eqz v7, :cond_f0

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_dc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_177

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/b;

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lk6/o;->e(Ljava/util/Collection;Li5/e;Lk6/n;)V

    goto :goto_dc

    :cond_f0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    :goto_f5
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_177

    const-string v4, "descriptors"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v3

    :cond_108
    :goto_108
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li5/b;

    if-nez v5, :cond_117

    goto :goto_12b

    :cond_117
    invoke-interface {v5}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v7

    invoke-interface {v6}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v8

    invoke-static {v7, v8}, Li5/s;->b(Li5/t;Li5/t;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_108

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_108

    :goto_12b
    move-object v5, v6

    goto :goto_108

    :cond_12d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v5, :cond_171

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13e
    :goto_13e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Li5/b;

    if-ne v5, v7, :cond_151

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_13e

    :cond_151
    invoke-static {v5, v8}, Lk6/o;->j(Li5/a;Li5/a;)Lk6/o$c$a;

    move-result-object v8

    sget-object v9, Lk6/o$c$a;->a:Lk6/o$c$a;

    if-ne v8, v9, :cond_160

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_13e

    :cond_160
    sget-object v9, Lk6/o$c$a;->c:Lk6/o$c$a;

    if-ne v8, v9, :cond_13e

    check-cast v7, Li5/b;

    invoke-virtual {v2, v5, v7}, Lk6/n;->b(Li5/b;Li5/b;)V

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_13e

    :cond_16d
    invoke-static {v4, v1, v2}, Lk6/o;->e(Ljava/util/Collection;Li5/e;Lk6/n;)V

    goto :goto_f5

    :cond_171
    const/16 v0, 0x68

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v3

    :cond_177
    return-void

    :cond_178
    const/16 v0, 0x37

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v3

    :cond_17e
    const/16 v0, 0x36

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v3

    :cond_184
    const/16 v0, 0x35

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v3

    :cond_18a
    const/16 v0, 0x34

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v3
.end method

.method public l(Li5/a;Li5/a;Li5/e;)Lk6/o$c;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    if-eqz p2, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lk6/o;->m(Li5/a;Li5/a;Li5/e;Z)Lk6/o$c;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 p0, 0x14

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0

    :cond_11
    const/16 p0, 0x13

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0
.end method

.method public m(Li5/a;Li5/a;Li5/e;Z)Lk6/o$c;
    .registers 14

    const/4 v0, 0x0

    if-eqz p1, :cond_bc

    if-eqz p2, :cond_b6

    invoke-virtual {p0, p1, p2, p4}, Lk6/o;->n(Li5/a;Li5/a;Z)Lk6/o$c;

    move-result-object p0

    invoke-virtual {p0}, Lk6/o$c;->c()Lk6/o$c$a;

    move-result-object p4

    sget-object v1, Lk6/o$c$a;->a:Lk6/o$c$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p4, v1, :cond_15

    move p4, v3

    goto :goto_16

    :cond_15
    move p4, v2

    :goto_16
    sget-object v1, Lk6/o;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "External condition"

    const-string v6, "External condition failed"

    const/4 v7, 0x2

    if-eqz v4, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk6/j;

    invoke-interface {v4}, Lk6/j;->b()I

    move-result v8

    if-ne v8, v3, :cond_34

    goto :goto_1c

    :cond_34
    if-eqz p4, :cond_3d

    invoke-interface {v4}, Lk6/j;->b()I

    move-result v8

    if-ne v8, v7, :cond_3d

    goto :goto_1c

    :cond_3d
    invoke-interface {v4, p1, p2, p3}, Lk6/j;->a(Li5/a;Li5/a;Li5/e;)I

    move-result v4

    invoke-static {v4}, Lk/b;->g(I)I

    move-result v4

    if-eqz v4, :cond_56

    if-eq v4, v3, :cond_51

    if-eq v4, v7, :cond_4c

    goto :goto_1c

    :cond_4c
    invoke-static {v5}, Lk6/o$c;->d(Ljava/lang/String;)Lk6/o$c;

    move-result-object p0

    return-object p0

    :cond_51
    invoke-static {v6}, Lk6/o$c;->b(Ljava/lang/String;)Lk6/o$c;

    move-result-object p0

    return-object p0

    :cond_56
    move p4, v3

    goto :goto_1c

    :cond_58
    if-nez p4, :cond_5b

    return-object p0

    :cond_5b
    sget-object p0, Lk6/o;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_61
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_ad

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lk6/j;

    invoke-interface {p4}, Lk6/j;->b()I

    move-result v1

    if-eq v1, v3, :cond_74

    goto :goto_61

    :cond_74
    invoke-interface {p4, p1, p2, p3}, Lk6/j;->a(Li5/a;Li5/a;Li5/e;)I

    move-result v1

    invoke-static {v1}, Lk/b;->g(I)I

    move-result v1

    if-eqz v1, :cond_8d

    if-eq v1, v3, :cond_88

    if-eq v1, v7, :cond_83

    goto :goto_61

    :cond_83
    invoke-static {v5}, Lk6/o$c;->d(Ljava/lang/String;)Lk6/o$c;

    move-result-object p0

    return-object p0

    :cond_88
    invoke-static {v6}, Lk6/o$c;->b(Ljava/lang/String;)Lk6/o$c;

    move-result-object p0

    return-object p0

    :cond_8d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Contract violation in "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " condition. It\'s not supposed to end with success"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ad
    sget-object p0, Lk6/o$c;->b:Lk6/o$c;

    if-eqz p0, :cond_b2

    return-object p0

    :cond_b2
    invoke-static {v2}, Lk6/o$c;->a(I)V

    throw v0

    :cond_b6
    const/16 p0, 0x17

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0

    :cond_bc
    const/16 p0, 0x16

    invoke-static {p0}, Lk6/o;->a(I)V

    throw v0
.end method

.method public n(Li5/a;Li5/a;Z)Lk6/o$c;
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v0, :cond_161

    if-eqz v1, :cond_15b

    invoke-static/range {p1 .. p2}, Lk6/o;->i(Li5/a;Li5/a;)Lk6/o$c;

    move-result-object v3

    if-eqz v3, :cond_10

    return-object v3

    :cond_10
    invoke-static/range {p1 .. p1}, Lk6/o;->d(Li5/a;)Ljava/util/List;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lk6/o;->d(Li5/a;)Ljava/util/List;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Li5/a;->getTypeParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Li5/a;->getTypeParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    if-eq v7, v8, :cond_5c

    :goto_2b
    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "Type parameter number mismatch"

    if-ge v9, v1, :cond_57

    sget-object v1, Lz6/d;->a:Lz6/d;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/l0;

    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly6/l0;

    check-cast v1, Lz6/m;

    invoke-virtual {v1, v0, v5}, Lz6/m;->b(Ly6/l0;Ly6/l0;)Z

    move-result v0

    if-nez v0, :cond_54

    invoke-static {v2}, Lk6/o$c;->d(Ljava/lang/String;)Lk6/o$c;

    move-result-object v0

    return-object v0

    :cond_54
    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    :cond_57
    invoke-static {v2}, Lk6/o$c;->b(Ljava/lang/String;)Lk6/o$c;

    move-result-object v0

    return-object v0

    :cond_5c
    move-object/from16 v7, p0

    invoke-virtual {v7, v5, v6}, Lk6/o;->f(Ljava/util/List;Ljava/util/List;)Ly6/i1;

    move-result-object v7

    move v8, v9

    :goto_63
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v8, v10, :cond_d5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Li5/a1;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Li5/a1;

    if-eqz v10, :cond_cf

    if-eqz v12, :cond_c9

    invoke-interface {v10}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object v10

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v12}, Li5/a1;->getUpperBounds()Ljava/util/List;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eq v12, v14, :cond_92

    goto :goto_bc

    :cond_92
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_96
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_bd

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ly6/l0;

    invoke-virtual {v13}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v14

    :cond_a6
    invoke-interface {v14}, Ljava/util/ListIterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_bc

    invoke-interface {v14}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ly6/l0;

    invoke-static {v12, v15, v7}, Lk6/o;->b(Ly6/l0;Ly6/l0;Ly6/i1;)Z

    move-result v15

    if-eqz v15, :cond_a6

    invoke-interface {v14}, Ljava/util/ListIterator;->remove()V

    goto :goto_96

    :cond_bc
    :goto_bc
    move v11, v9

    :cond_bd
    if-nez v11, :cond_c6

    const-string v0, "Type parameter bounds mismatch"

    invoke-static {v0}, Lk6/o$c;->d(Ljava/lang/String;)Lk6/o$c;

    move-result-object v0

    return-object v0

    :cond_c6
    add-int/lit8 v8, v8, 0x1

    goto :goto_63

    :cond_c9
    const/16 v0, 0x32

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v2

    :cond_cf
    const/16 v0, 0x31

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v2

    :cond_d5
    move v5, v9

    :goto_d6
    move-object v6, v3

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_fe

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly6/l0;

    move-object v8, v4

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ly6/l0;

    invoke-static {v6, v8, v7}, Lk6/o;->b(Ly6/l0;Ly6/l0;Ly6/i1;)Z

    move-result v6

    if-nez v6, :cond_fb

    const-string v0, "Value parameter type mismatch"

    invoke-static {v0}, Lk6/o$c;->d(Ljava/lang/String;)Lk6/o$c;

    move-result-object v0

    return-object v0

    :cond_fb
    add-int/lit8 v5, v5, 0x1

    goto :goto_d6

    :cond_fe
    instance-of v3, v0, Li5/x;

    if-eqz v3, :cond_11d

    instance-of v3, v1, Li5/x;

    if-eqz v3, :cond_11d

    move-object v3, v0

    check-cast v3, Li5/x;

    invoke-interface {v3}, Li5/x;->isSuspend()Z

    move-result v3

    move-object v4, v1

    check-cast v4, Li5/x;

    invoke-interface {v4}, Li5/x;->isSuspend()Z

    move-result v4

    if-eq v3, v4, :cond_11d

    const-string v0, "Incompatible suspendability"

    invoke-static {v0}, Lk6/o$c;->b(Ljava/lang/String;)Lk6/o$c;

    move-result-object v0

    return-object v0

    :cond_11d
    if-eqz p3, :cond_152

    invoke-interface/range {p1 .. p1}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object v1

    if-eqz v0, :cond_152

    if-eqz v1, :cond_152

    invoke-static {v1}, Ly0/b;->c(Ly6/l0;)Z

    move-result v3

    if-eqz v3, :cond_138

    invoke-static {v0}, Ly0/b;->c(Ly6/l0;)Z

    move-result v3

    if-eqz v3, :cond_138

    goto :goto_139

    :cond_138
    move v11, v9

    :goto_139
    if-nez v11, :cond_152

    sget-object v3, Ly6/i;->a:Ly6/i;

    invoke-virtual {v1}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v1

    invoke-virtual {v0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v0

    invoke-virtual {v3, v7, v1, v0}, Ly6/i;->i(Ly6/i1;Lc7/i;Lc7/i;)Z

    move-result v0

    if-nez v0, :cond_152

    const-string v0, "Return type mismatch"

    invoke-static {v0}, Lk6/o$c;->b(Ljava/lang/String;)Lk6/o$c;

    move-result-object v0

    return-object v0

    :cond_152
    sget-object v0, Lk6/o$c;->b:Lk6/o$c;

    if-eqz v0, :cond_157

    return-object v0

    :cond_157
    invoke-static {v9}, Lk6/o$c;->a(I)V

    throw v2

    :cond_15b
    const/16 v0, 0x1f

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v2

    :cond_161
    const/16 v0, 0x1e

    invoke-static {v0}, Lk6/o;->a(I)V

    throw v2
.end method
