.class public Lk6/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lh6/c;

    const-string v1, "kotlin.jvm.JvmName"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static A(Li5/p;)Li5/p;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Li5/p;",
            ">(TD;)TD;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    instance-of v1, p0, Li5/b;

    if-eqz v1, :cond_e

    check-cast p0, Li5/b;

    invoke-static {p0}, Lk6/i;->z(Li5/b;)Li5/b;

    move-result-object p0

    return-object p0

    :cond_e
    if-eqz p0, :cond_11

    return-object p0

    :cond_11
    const/16 p0, 0x41

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0

    :cond_17
    const/16 p0, 0x40

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .registers 24

    sparse-switch p0, :sswitch_data_230

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :sswitch_6
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    sparse-switch p0, :sswitch_data_29e

    const/4 v2, 0x3

    goto :goto_f

    :sswitch_e
    move v2, v1

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_30c

    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    goto/16 :goto_97

    :pswitch_1d  #0x58, 0x5b, 0x5d
    const-string v5, "name"

    aput-object v5, v2, v4

    goto/16 :goto_97

    :pswitch_23  #0x55, 0x57, 0x5a, 0x5c
    const-string v5, "scope"

    aput-object v5, v2, v4

    goto/16 :goto_97

    :pswitch_29  #0x4f, 0x50, 0x51
    const-string v5, "annotated"

    aput-object v5, v2, v4

    goto/16 :goto_97

    :pswitch_2f  #0x4b
    const-string v5, "memberDescriptor"

    aput-object v5, v2, v4

    goto/16 :goto_97

    :pswitch_35  #0x4a
    const-string v5, "result"

    aput-object v5, v2, v4

    goto/16 :goto_97

    :pswitch_3b  #0x49
    const-string v5, "current"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_40  #0x47
    const-string v5, "f"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_45  #0x42
    const-string v5, "variable"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_4a  #0x38
    const-string v5, "location"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_4f  #0x37
    const-string v5, "innerClassName"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_54  #0x2e
    const-string v5, "typeConstructor"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_59  #0x26, 0x27, 0x29, 0x2c, 0x30, 0x36, 0x44, 0x45, 0x46, 0x4d, 0x4e
    const-string v5, "classDescriptor"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_5e  #0x25
    const-string v5, "classKind"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_63  #0x1f
    const-string v5, "other"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_68  #0x1e, 0x20, 0x2d, 0x43
    const-string v5, "type"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_6d  #0x1b, 0x1d, 0x21
    const-string v5, "superClass"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_72  #0x1a, 0x1c
    const-string v5, "subClass"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_77  #0x19
    const-string v5, "declarationDescriptor"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_7c  #0x14
    const-string v5, "kotlinType"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_81  #0x12, 0x13
    const-string v5, "aClass"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_86  #0x11
    const-string v5, "second"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_8b  #0x10
    const-string v5, "first"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_90  #0x4, 0x7, 0x9, 0xa, 0xc, 0x16, 0x28, 0x2a, 0x2b, 0x2f, 0x31, 0x32, 0x33, 0x34, 0x35, 0x3c, 0x3e, 0x3f, 0x41, 0x48, 0x4c, 0x53, 0x54, 0x56, 0x59, 0x5e, 0x60
    aput-object v3, v2, v4

    goto :goto_97

    :pswitch_93  #0x1, 0x2, 0x3, 0x5, 0x6, 0x8, 0xb, 0xd, 0xe, 0xf, 0x15, 0x17, 0x18, 0x22, 0x23, 0x24, 0x39, 0x3a, 0x3b, 0x3d, 0x40, 0x52, 0x5f, 0x61
    const-string v5, "descriptor"

    aput-object v5, v2, v4

    :goto_97
    const-string v4, "getPropertyByName"

    const-string v5, "getFunctionByName"

    const-string v6, "getAllDescriptors"

    const-string v7, "getContainingSourceFile"

    const-string v8, "getAllOverriddenDeclarations"

    const-string v9, "getAllOverriddenDescriptors"

    const-string v10, "unwrapFakeOverrideToAnyDeclaration"

    const-string v11, "unwrapSubstitutionOverride"

    const-string v12, "unwrapFakeOverride"

    const-string v13, "getDefaultConstructorVisibility"

    const-string v14, "getClassDescriptorForTypeConstructor"

    const-string v15, "getSuperClassType"

    const-string v16, "getSuperclassDescriptors"

    const-string v17, "getContainingModule"

    const-string v18, "getClassIdForNonLocalClass"

    const-string v19, "getFqNameFromTopLevelClass"

    const-string v20, "getFqNameUnsafe"

    const-string v21, "getFqNameSafe"

    const/16 v22, 0x1

    sparse-switch p0, :sswitch_data_3d2

    aput-object v3, v2, v22

    goto :goto_fd

    :sswitch_c3
    const-string v3, "getDirectMember"

    aput-object v3, v2, v22

    goto :goto_fd

    :sswitch_c8
    aput-object v4, v2, v22

    goto :goto_fd

    :sswitch_cb
    aput-object v5, v2, v22

    goto :goto_fd

    :sswitch_ce
    aput-object v6, v2, v22

    goto :goto_fd

    :sswitch_d1
    aput-object v7, v2, v22

    goto :goto_fd

    :sswitch_d4
    aput-object v8, v2, v22

    goto :goto_fd

    :sswitch_d7
    aput-object v9, v2, v22

    goto :goto_fd

    :sswitch_da
    aput-object v10, v2, v22

    goto :goto_fd

    :sswitch_dd
    aput-object v11, v2, v22

    goto :goto_fd

    :sswitch_e0
    aput-object v12, v2, v22

    goto :goto_fd

    :sswitch_e3
    aput-object v13, v2, v22

    goto :goto_fd

    :sswitch_e6
    aput-object v14, v2, v22

    goto :goto_fd

    :sswitch_e9
    aput-object v15, v2, v22

    goto :goto_fd

    :sswitch_ec
    aput-object v16, v2, v22

    goto :goto_fd

    :sswitch_ef
    aput-object v17, v2, v22

    goto :goto_fd

    :sswitch_f2
    aput-object v18, v2, v22

    goto :goto_fd

    :sswitch_f5
    aput-object v19, v2, v22

    goto :goto_fd

    :sswitch_f8
    aput-object v20, v2, v22

    goto :goto_fd

    :sswitch_fb
    aput-object v21, v2, v22

    :goto_fd
    packed-switch p0, :pswitch_data_440

    const-string v3, "getDispatchReceiverParameterIfNeeded"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_106  #0x61
    const-string v3, "isMethodOfAny"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_10c  #0x5f
    const-string v3, "getDirectMember"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_112  #0x5c, 0x5d
    aput-object v4, v2, v1

    goto/16 :goto_21d

    :pswitch_116  #0x5a, 0x5b
    const-string v3, "getFunctionByNameOrNull"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_11c  #0x57, 0x58
    aput-object v5, v2, v1

    goto/16 :goto_21d

    :pswitch_120  #0x55
    aput-object v6, v2, v1

    goto/16 :goto_21d

    :pswitch_124  #0x52
    aput-object v7, v2, v1

    goto/16 :goto_21d

    :pswitch_128  #0x51
    const-string v3, "hasJvmNameAnnotation"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_12e  #0x50
    const-string v3, "findJvmNameAnnotation"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_134  #0x4f
    const-string v3, "getJvmName"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_13a  #0x4e
    const-string v3, "canHaveDeclaredConstructors"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_140  #0x4d
    const-string v3, "isSingletonOrAnonymousObject"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_146  #0x4b
    aput-object v8, v2, v1

    goto/16 :goto_21d

    :pswitch_14a  #0x49, 0x4a
    const-string v3, "collectAllOverriddenDescriptors"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_150  #0x47
    aput-object v9, v2, v1

    goto/16 :goto_21d

    :pswitch_154  #0x46
    const-string v3, "classCanHaveOpenMembers"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_15a  #0x45
    const-string v3, "classCanHaveAbstractDeclaration"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_160  #0x44
    const-string v3, "classCanHaveAbstractFakeOverride"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_166  #0x42, 0x43
    const-string v3, "shouldRecordInitializerForProperty"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_16c  #0x40
    aput-object v10, v2, v1

    goto/16 :goto_21d

    :pswitch_170  #0x3d
    aput-object v11, v2, v1

    goto/16 :goto_21d

    :pswitch_174  #0x3b
    aput-object v12, v2, v1

    goto/16 :goto_21d

    :pswitch_178  #0x3a
    const-string v3, "isTopLevelOrInnerClass"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_17e  #0x39
    const-string v3, "isStaticNestedClass"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_184  #0x36, 0x37, 0x38
    const-string v3, "getInnerClassByName"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_18a  #0x30
    aput-object v13, v2, v1

    goto/16 :goto_21d

    :pswitch_18e  #0x2e
    aput-object v14, v2, v1

    goto/16 :goto_21d

    :pswitch_192  #0x2d
    const-string v3, "getClassDescriptorForType"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_198  #0x2c
    const-string v3, "getSuperClassDescriptor"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_19e  #0x29
    aput-object v15, v2, v1

    goto/16 :goto_21d

    :pswitch_1a2  #0x27
    aput-object v16, v2, v1

    goto/16 :goto_21d

    :pswitch_1a6  #0x26
    const-string v3, "hasAbstractMembers"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_1ac  #0x25
    const-string v3, "isKindOf"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_1b2  #0x24
    const-string v3, "isEnumEntry"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_1b8  #0x23
    const-string v3, "isAnonymousFunction"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_1be  #0x22
    const-string v3, "isAnonymousObject"

    aput-object v3, v2, v1

    goto/16 :goto_21d

    :pswitch_1c4  #0x20, 0x21
    const-string v3, "isSubtypeOfClass"

    aput-object v3, v2, v1

    goto :goto_21d

    :pswitch_1c9  #0x1e, 0x1f
    const-string v3, "isSameClass"

    aput-object v3, v2, v1

    goto :goto_21d

    :pswitch_1ce  #0x1c, 0x1d
    const-string v3, "isSubclass"

    aput-object v3, v2, v1

    goto :goto_21d

    :pswitch_1d3  #0x1a, 0x1b
    const-string v3, "isDirectSubclass"

    aput-object v3, v2, v1

    goto :goto_21d

    :pswitch_1d8  #0x19
    const-string v3, "isAncestor"

    aput-object v3, v2, v1

    goto :goto_21d

    :pswitch_1dd  #0x18
    const-string v3, "getContainingClass"

    aput-object v3, v2, v1

    goto :goto_21d

    :pswitch_1e2  #0x15
    aput-object v17, v2, v1

    goto :goto_21d

    :pswitch_1e5  #0x14, 0x17
    const-string v3, "getContainingModuleOrNull"

    aput-object v3, v2, v1

    goto :goto_21d

    :pswitch_1ea  #0x12, 0x13
    const-string v3, "getParentOfType"

    aput-object v3, v2, v1

    goto :goto_21d

    :pswitch_1ef  #0x10, 0x11
    const-string v3, "areInSameModule"

    aput-object v3, v2, v1

    goto :goto_21d

    :pswitch_1f4  #0xf
    const-string v3, "isStaticDeclaration"

    aput-object v3, v2, v1

    goto :goto_21d

    :pswitch_1f9  #0xe
    const-string v3, "isOverride"

    aput-object v3, v2, v1

    goto :goto_21d

    :pswitch_1fe  #0xd
    const-string v3, "isExtension"

    aput-object v3, v2, v1

    goto :goto_21d

    :pswitch_203  #0xb
    aput-object v18, v2, v1

    goto :goto_21d

    :pswitch_206  #0x8
    aput-object v19, v2, v1

    goto :goto_21d

    :pswitch_209  #0x6
    aput-object v20, v2, v1

    goto :goto_21d

    :pswitch_20c  #0x5
    const-string v3, "getFqNameSafeIfPossible"

    aput-object v3, v2, v1

    goto :goto_21d

    :pswitch_211  #0x3
    aput-object v21, v2, v1

    goto :goto_21d

    :pswitch_214  #0x2
    const-string v3, "getFqName"

    aput-object v3, v2, v1

    goto :goto_21d

    :pswitch_219  #0x1
    const-string v3, "isLocal"

    aput-object v3, v2, v1

    :goto_21d
    :pswitch_21d  #0x4, 0x7, 0x9, 0xa, 0xc, 0x16, 0x28, 0x2a, 0x2b, 0x2f, 0x31, 0x32, 0x33, 0x34, 0x35, 0x3c, 0x3e, 0x3f, 0x41, 0x48, 0x4c, 0x53, 0x54, 0x56, 0x59, 0x5e, 0x60
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sparse-switch p0, :sswitch_data_506

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_22f

    :sswitch_22a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_22f
    throw v1

    :sswitch_data_230
    .sparse-switch
        0x4 -> :sswitch_6
        0x7 -> :sswitch_6
        0x9 -> :sswitch_6
        0xa -> :sswitch_6
        0xc -> :sswitch_6
        0x16 -> :sswitch_6
        0x28 -> :sswitch_6
        0x2a -> :sswitch_6
        0x2b -> :sswitch_6
        0x2f -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x3c -> :sswitch_6
        0x3e -> :sswitch_6
        0x3f -> :sswitch_6
        0x41 -> :sswitch_6
        0x48 -> :sswitch_6
        0x4c -> :sswitch_6
        0x53 -> :sswitch_6
        0x54 -> :sswitch_6
        0x56 -> :sswitch_6
        0x59 -> :sswitch_6
        0x5e -> :sswitch_6
        0x60 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_29e
    .sparse-switch
        0x4 -> :sswitch_e
        0x7 -> :sswitch_e
        0x9 -> :sswitch_e
        0xa -> :sswitch_e
        0xc -> :sswitch_e
        0x16 -> :sswitch_e
        0x28 -> :sswitch_e
        0x2a -> :sswitch_e
        0x2b -> :sswitch_e
        0x2f -> :sswitch_e
        0x31 -> :sswitch_e
        0x32 -> :sswitch_e
        0x33 -> :sswitch_e
        0x34 -> :sswitch_e
        0x35 -> :sswitch_e
        0x3c -> :sswitch_e
        0x3e -> :sswitch_e
        0x3f -> :sswitch_e
        0x41 -> :sswitch_e
        0x48 -> :sswitch_e
        0x4c -> :sswitch_e
        0x53 -> :sswitch_e
        0x54 -> :sswitch_e
        0x56 -> :sswitch_e
        0x59 -> :sswitch_e
        0x5e -> :sswitch_e
        0x60 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_30c
    .packed-switch 0x1
        :pswitch_93  #00000001
        :pswitch_93  #00000002
        :pswitch_93  #00000003
        :pswitch_90  #00000004
        :pswitch_93  #00000005
        :pswitch_93  #00000006
        :pswitch_90  #00000007
        :pswitch_93  #00000008
        :pswitch_90  #00000009
        :pswitch_90  #0000000a
        :pswitch_93  #0000000b
        :pswitch_90  #0000000c
        :pswitch_93  #0000000d
        :pswitch_93  #0000000e
        :pswitch_93  #0000000f
        :pswitch_8b  #00000010
        :pswitch_86  #00000011
        :pswitch_81  #00000012
        :pswitch_81  #00000013
        :pswitch_7c  #00000014
        :pswitch_93  #00000015
        :pswitch_90  #00000016
        :pswitch_93  #00000017
        :pswitch_93  #00000018
        :pswitch_77  #00000019
        :pswitch_72  #0000001a
        :pswitch_6d  #0000001b
        :pswitch_72  #0000001c
        :pswitch_6d  #0000001d
        :pswitch_68  #0000001e
        :pswitch_63  #0000001f
        :pswitch_68  #00000020
        :pswitch_6d  #00000021
        :pswitch_93  #00000022
        :pswitch_93  #00000023
        :pswitch_93  #00000024
        :pswitch_5e  #00000025
        :pswitch_59  #00000026
        :pswitch_59  #00000027
        :pswitch_90  #00000028
        :pswitch_59  #00000029
        :pswitch_90  #0000002a
        :pswitch_90  #0000002b
        :pswitch_59  #0000002c
        :pswitch_68  #0000002d
        :pswitch_54  #0000002e
        :pswitch_90  #0000002f
        :pswitch_59  #00000030
        :pswitch_90  #00000031
        :pswitch_90  #00000032
        :pswitch_90  #00000033
        :pswitch_90  #00000034
        :pswitch_90  #00000035
        :pswitch_59  #00000036
        :pswitch_4f  #00000037
        :pswitch_4a  #00000038
        :pswitch_93  #00000039
        :pswitch_93  #0000003a
        :pswitch_93  #0000003b
        :pswitch_90  #0000003c
        :pswitch_93  #0000003d
        :pswitch_90  #0000003e
        :pswitch_90  #0000003f
        :pswitch_93  #00000040
        :pswitch_90  #00000041
        :pswitch_45  #00000042
        :pswitch_68  #00000043
        :pswitch_59  #00000044
        :pswitch_59  #00000045
        :pswitch_59  #00000046
        :pswitch_40  #00000047
        :pswitch_90  #00000048
        :pswitch_3b  #00000049
        :pswitch_35  #0000004a
        :pswitch_2f  #0000004b
        :pswitch_90  #0000004c
        :pswitch_59  #0000004d
        :pswitch_59  #0000004e
        :pswitch_29  #0000004f
        :pswitch_29  #00000050
        :pswitch_29  #00000051
        :pswitch_93  #00000052
        :pswitch_90  #00000053
        :pswitch_90  #00000054
        :pswitch_23  #00000055
        :pswitch_90  #00000056
        :pswitch_23  #00000057
        :pswitch_1d  #00000058
        :pswitch_90  #00000059
        :pswitch_23  #0000005a
        :pswitch_1d  #0000005b
        :pswitch_23  #0000005c
        :pswitch_1d  #0000005d
        :pswitch_90  #0000005e
        :pswitch_93  #0000005f
        :pswitch_90  #00000060
        :pswitch_93  #00000061
    .end packed-switch

    :sswitch_data_3d2
    .sparse-switch
        0x4 -> :sswitch_fb
        0x7 -> :sswitch_f8
        0x9 -> :sswitch_f5
        0xa -> :sswitch_f5
        0xc -> :sswitch_f2
        0x16 -> :sswitch_ef
        0x28 -> :sswitch_ec
        0x2a -> :sswitch_e9
        0x2b -> :sswitch_e9
        0x2f -> :sswitch_e6
        0x31 -> :sswitch_e3
        0x32 -> :sswitch_e3
        0x33 -> :sswitch_e3
        0x34 -> :sswitch_e3
        0x35 -> :sswitch_e3
        0x3c -> :sswitch_e0
        0x3e -> :sswitch_dd
        0x3f -> :sswitch_dd
        0x41 -> :sswitch_da
        0x48 -> :sswitch_d7
        0x4c -> :sswitch_d4
        0x53 -> :sswitch_d1
        0x54 -> :sswitch_d1
        0x56 -> :sswitch_ce
        0x59 -> :sswitch_cb
        0x5e -> :sswitch_c8
        0x60 -> :sswitch_c3
    .end sparse-switch

    :pswitch_data_440
    .packed-switch 0x1
        :pswitch_219  #00000001
        :pswitch_214  #00000002
        :pswitch_211  #00000003
        :pswitch_21d  #00000004
        :pswitch_20c  #00000005
        :pswitch_209  #00000006
        :pswitch_21d  #00000007
        :pswitch_206  #00000008
        :pswitch_21d  #00000009
        :pswitch_21d  #0000000a
        :pswitch_203  #0000000b
        :pswitch_21d  #0000000c
        :pswitch_1fe  #0000000d
        :pswitch_1f9  #0000000e
        :pswitch_1f4  #0000000f
        :pswitch_1ef  #00000010
        :pswitch_1ef  #00000011
        :pswitch_1ea  #00000012
        :pswitch_1ea  #00000013
        :pswitch_1e5  #00000014
        :pswitch_1e2  #00000015
        :pswitch_21d  #00000016
        :pswitch_1e5  #00000017
        :pswitch_1dd  #00000018
        :pswitch_1d8  #00000019
        :pswitch_1d3  #0000001a
        :pswitch_1d3  #0000001b
        :pswitch_1ce  #0000001c
        :pswitch_1ce  #0000001d
        :pswitch_1c9  #0000001e
        :pswitch_1c9  #0000001f
        :pswitch_1c4  #00000020
        :pswitch_1c4  #00000021
        :pswitch_1be  #00000022
        :pswitch_1b8  #00000023
        :pswitch_1b2  #00000024
        :pswitch_1ac  #00000025
        :pswitch_1a6  #00000026
        :pswitch_1a2  #00000027
        :pswitch_21d  #00000028
        :pswitch_19e  #00000029
        :pswitch_21d  #0000002a
        :pswitch_21d  #0000002b
        :pswitch_198  #0000002c
        :pswitch_192  #0000002d
        :pswitch_18e  #0000002e
        :pswitch_21d  #0000002f
        :pswitch_18a  #00000030
        :pswitch_21d  #00000031
        :pswitch_21d  #00000032
        :pswitch_21d  #00000033
        :pswitch_21d  #00000034
        :pswitch_21d  #00000035
        :pswitch_184  #00000036
        :pswitch_184  #00000037
        :pswitch_184  #00000038
        :pswitch_17e  #00000039
        :pswitch_178  #0000003a
        :pswitch_174  #0000003b
        :pswitch_21d  #0000003c
        :pswitch_170  #0000003d
        :pswitch_21d  #0000003e
        :pswitch_21d  #0000003f
        :pswitch_16c  #00000040
        :pswitch_21d  #00000041
        :pswitch_166  #00000042
        :pswitch_166  #00000043
        :pswitch_160  #00000044
        :pswitch_15a  #00000045
        :pswitch_154  #00000046
        :pswitch_150  #00000047
        :pswitch_21d  #00000048
        :pswitch_14a  #00000049
        :pswitch_14a  #0000004a
        :pswitch_146  #0000004b
        :pswitch_21d  #0000004c
        :pswitch_140  #0000004d
        :pswitch_13a  #0000004e
        :pswitch_134  #0000004f
        :pswitch_12e  #00000050
        :pswitch_128  #00000051
        :pswitch_124  #00000052
        :pswitch_21d  #00000053
        :pswitch_21d  #00000054
        :pswitch_120  #00000055
        :pswitch_21d  #00000056
        :pswitch_11c  #00000057
        :pswitch_11c  #00000058
        :pswitch_21d  #00000059
        :pswitch_116  #0000005a
        :pswitch_116  #0000005b
        :pswitch_112  #0000005c
        :pswitch_112  #0000005d
        :pswitch_21d  #0000005e
        :pswitch_10c  #0000005f
        :pswitch_21d  #00000060
        :pswitch_106  #00000061
    .end packed-switch

    :sswitch_data_506
    .sparse-switch
        0x4 -> :sswitch_22a
        0x7 -> :sswitch_22a
        0x9 -> :sswitch_22a
        0xa -> :sswitch_22a
        0xc -> :sswitch_22a
        0x16 -> :sswitch_22a
        0x28 -> :sswitch_22a
        0x2a -> :sswitch_22a
        0x2b -> :sswitch_22a
        0x2f -> :sswitch_22a
        0x31 -> :sswitch_22a
        0x32 -> :sswitch_22a
        0x33 -> :sswitch_22a
        0x34 -> :sswitch_22a
        0x35 -> :sswitch_22a
        0x3c -> :sswitch_22a
        0x3e -> :sswitch_22a
        0x3f -> :sswitch_22a
        0x41 -> :sswitch_22a
        0x48 -> :sswitch_22a
        0x4c -> :sswitch_22a
        0x53 -> :sswitch_22a
        0x54 -> :sswitch_22a
        0x56 -> :sswitch_22a
        0x59 -> :sswitch_22a
        0x5e -> :sswitch_22a
        0x60 -> :sswitch_22a
    .end sparse-switch
.end method

.method public static b(Li5/a;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Li5/a;",
            ">(TD;",
            "Ljava/util/Set<",
            "TD;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_2d

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-interface {p0}, Li5/a;->a()Li5/a;

    move-result-object p0

    invoke-interface {p0}, Li5/a;->d()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/a;

    invoke-interface {v0}, Li5/a;->a()Li5/a;

    move-result-object v0

    invoke-static {v0, p1}, Lk6/i;->b(Li5/a;Ljava/util/Set;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2c
    return-void

    :cond_2d
    const/16 p0, 0x49

    invoke-static {p0}, Lk6/i;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Ly6/l0;)Li5/e;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    check-cast p0, Li5/e;

    if-eqz p0, :cond_12

    return-object p0

    :cond_12
    const/16 p0, 0x2f

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0

    :cond_18
    const/16 p0, 0x2e

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0

    :cond_1e
    const/16 p0, 0x2d

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0
.end method

.method public static d(Li5/l;)Li5/e0;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    invoke-static {p0}, Lk6/i;->e(Li5/l;)Li5/e0;

    move-result-object p0

    if-eqz p0, :cond_a

    return-object p0

    :cond_a
    const/16 p0, 0x16

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0

    :cond_10
    const/16 p0, 0x15

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0
.end method

.method public static e(Li5/l;)Li5/e0;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    :goto_3
    if-eqz p0, :cond_1c

    instance-of v1, p0, Li5/e0;

    if-eqz v1, :cond_c

    check-cast p0, Li5/e0;

    return-object p0

    :cond_c
    instance-of v1, p0, Li5/l0;

    if-eqz v1, :cond_17

    check-cast p0, Li5/l0;

    invoke-interface {p0}, Li5/l0;->u0()Li5/e0;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-interface {p0}, Li5/l;->b()Li5/l;

    move-result-object p0

    goto :goto_3

    :cond_1c
    return-object v0

    :cond_1d
    const/16 p0, 0x17

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0
.end method

.method public static f(Li5/l;)Li5/w0;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    instance-of v1, p0, Li5/q0;

    if-eqz v1, :cond_d

    check-cast p0, Li5/q0;

    invoke-interface {p0}, Li5/n0;->T()Li5/o0;

    move-result-object p0

    :cond_d
    instance-of v1, p0, Li5/o;

    if-eqz v1, :cond_24

    check-cast p0, Li5/o;

    invoke-interface {p0}, Li5/o;->getSource()Li5/v0;

    move-result-object p0

    invoke-interface {p0}, Li5/v0;->b()Li5/w0;

    move-result-object p0

    if-eqz p0, :cond_1e

    return-object p0

    :cond_1e
    const/16 p0, 0x53

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0

    :cond_24
    sget-object p0, Li5/w0;->a:Li5/w0;

    return-object p0

    :cond_27
    const/16 p0, 0x52

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0
.end method

.method public static g(Li5/l;)Lh6/d;
    .registers 2

    if-eqz p0, :cond_12

    invoke-static {p0}, Lk6/i;->h(Li5/l;)Lh6/c;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lh6/c;->j()Lh6/d;

    move-result-object p0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lk6/i;->i(Li5/l;)Lh6/d;

    move-result-object p0

    :goto_11
    return-object p0

    :cond_12
    const/4 p0, 0x2

    invoke-static {p0}, Lk6/i;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static h(Li5/l;)Lh6/c;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    instance-of v1, p0, Li5/e0;

    if-nez v1, :cond_25

    invoke-static {p0}, La7/j;->f(Li5/l;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_25

    :cond_e
    instance-of v1, p0, Li5/l0;

    if-eqz v1, :cond_19

    check-cast p0, Li5/l0;

    invoke-interface {p0}, Li5/l0;->e()Lh6/c;

    move-result-object p0

    return-object p0

    :cond_19
    instance-of v1, p0, Li5/h0;

    if-eqz v1, :cond_24

    check-cast p0, Li5/h0;

    invoke-interface {p0}, Li5/h0;->e()Lh6/c;

    move-result-object p0

    return-object p0

    :cond_24
    return-object v0

    :cond_25
    :goto_25
    sget-object p0, Lh6/c;->c:Lh6/c;

    return-object p0

    :cond_28
    const/4 p0, 0x5

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0
.end method

.method public static i(Li5/l;)Lh6/d;
    .registers 2

    if-eqz p0, :cond_13

    invoke-interface {p0}, Li5/l;->b()Li5/l;

    move-result-object v0

    invoke-static {v0}, Lk6/i;->g(Li5/l;)Lh6/d;

    move-result-object v0

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Lh6/d;->c(Lh6/f;)Lh6/d;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x6

    invoke-static {p0}, Lk6/i;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static j(Li5/l;Ljava/lang/Class;)Li5/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Li5/l;",
            ">(",
            "Li5/l;",
            "Ljava/lang/Class<",
            "TD;>;)TD;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lk6/i;->k(Li5/l;Ljava/lang/Class;Z)Li5/l;

    move-result-object p0

    return-object p0
.end method

.method public static k(Li5/l;Ljava/lang/Class;Z)Li5/l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Li5/l;",
            ">(",
            "Li5/l;",
            "Ljava/lang/Class<",
            "TD;>;Z)TD;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    if-eqz p2, :cond_c

    invoke-interface {p0}, Li5/l;->b()Li5/l;

    move-result-object p0

    :cond_c
    :goto_c
    if-eqz p0, :cond_1a

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    return-object p0

    :cond_15
    invoke-interface {p0}, Li5/l;->b()Li5/l;

    move-result-object p0

    goto :goto_c

    :cond_1a
    return-object v0

    :cond_1b
    const/16 p0, 0x13

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0
.end method

.method public static l(Li5/e;)Li5/e;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_29

    invoke-interface {p0}, Li5/h;->h()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly6/l0;

    invoke-static {v1}, Lk6/i;->c(Ly6/l0;)Li5/e;

    move-result-object v1

    invoke-interface {v1}, Li5/e;->f()Li5/f;

    move-result-object v2

    sget-object v3, Li5/f;->b:Li5/f;

    if-eq v2, v3, :cond_f

    return-object v1

    :cond_28
    return-object v0

    :cond_29
    const/16 p0, 0x2c

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0
.end method

.method public static m(Li5/l;)Z
    .registers 2

    sget-object v0, Li5/f;->e:Li5/f;

    invoke-static {p0, v0}, Lk6/i;->s(Li5/l;Li5/f;)Z

    move-result p0

    return p0
.end method

.method public static n(Li5/l;)Z
    .registers 2

    sget-object v0, Li5/f;->a:Li5/f;

    invoke-static {p0, v0}, Lk6/i;->s(Li5/l;Li5/f;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    sget-object v0, Lh6/h;->b:Lh6/f;

    invoke-virtual {p0, v0}, Lh6/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static o(Li5/l;)Z
    .registers 2

    sget-object v0, Li5/f;->a:Li5/f;

    invoke-static {p0, v0}, Lk6/i;->s(Li5/l;Li5/f;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p0}, Lk6/i;->q(Li5/l;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public static p(Li5/l;)Z
    .registers 2

    sget-object v0, Li5/f;->f:Li5/f;

    invoke-static {p0, v0}, Lk6/i;->s(Li5/l;Li5/f;)Z

    move-result v0

    if-eqz v0, :cond_12

    check-cast p0, Li5/e;

    invoke-interface {p0}, Li5/e;->X()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static q(Li5/l;)Z
    .registers 2

    sget-object v0, Li5/f;->c:Li5/f;

    invoke-static {p0, v0}, Lk6/i;->s(Li5/l;Li5/f;)Z

    move-result p0

    return p0
.end method

.method public static r(Li5/l;)Z
    .registers 2

    if-eqz p0, :cond_9

    sget-object v0, Li5/f;->d:Li5/f;

    invoke-static {p0, v0}, Lk6/i;->s(Li5/l;Li5/f;)Z

    move-result p0

    return p0

    :cond_9
    const/16 p0, 0x24

    invoke-static {p0}, Lk6/i;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static s(Li5/l;Li5/f;)Z
    .registers 3

    instance-of v0, p0, Li5/e;

    if-eqz v0, :cond_e

    check-cast p0, Li5/e;

    invoke-interface {p0}, Li5/e;->f()Li5/f;

    move-result-object p0

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static t(Li5/l;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p0, :cond_26

    :goto_3
    const/4 v1, 0x0

    if-eqz p0, :cond_25

    invoke-static {p0}, Lk6/i;->n(Li5/l;)Z

    move-result v2

    if-nez v2, :cond_24

    instance-of v2, p0, Li5/p;

    if-eqz v2, :cond_1c

    move-object v2, p0

    check-cast v2, Li5/p;

    invoke-interface {v2}, Li5/p;->getVisibility()Li5/t;

    move-result-object v2

    sget-object v3, Li5/s;->f:Li5/t;

    if-ne v2, v3, :cond_1c

    move v1, v0

    :cond_1c
    if-eqz v1, :cond_1f

    goto :goto_24

    :cond_1f
    invoke-interface {p0}, Li5/l;->b()Li5/l;

    move-result-object p0

    goto :goto_3

    :cond_24
    :goto_24
    return v0

    :cond_25
    return v1

    :cond_26
    invoke-static {v0}, Lk6/i;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static u(Ly6/l0;Li5/l;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_37

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-interface {p0}, Li5/l;->a()Li5/l;

    move-result-object p0

    instance-of v0, p0, Li5/h;

    if-eqz v0, :cond_2f

    instance-of v0, p1, Li5/h;

    if-eqz v0, :cond_2f

    check-cast p1, Li5/h;

    invoke-interface {p1}, Li5/h;->h()Ly6/j1;

    move-result-object p1

    check-cast p0, Li5/h;

    invoke-interface {p0}, Li5/h;->h()Ly6/j1;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0

    :cond_31
    const/16 p0, 0x1f

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0

    :cond_37
    const/16 p0, 0x1e

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0
.end method

.method public static v(Li5/l;)Z
    .registers 2

    sget-object v0, Li5/f;->a:Li5/f;

    invoke-static {p0, v0}, Lk6/i;->s(Li5/l;Li5/f;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Li5/f;->b:Li5/f;

    invoke-static {p0, v0}, Lk6/i;->s(Li5/l;Li5/f;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_10
    check-cast p0, Li5/e;

    invoke-interface {p0}, Li5/e;->o()Li5/d0;

    move-result-object p0

    sget-object v0, Li5/d0;->b:Li5/d0;

    if-ne p0, v0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public static w(Li5/e;Li5/e;)Z
    .registers 2

    invoke-interface {p0}, Li5/e;->m()Ly6/s0;

    move-result-object p0

    invoke-interface {p1}, Li5/e;->a()Li5/e;

    move-result-object p1

    invoke-static {p0, p1}, Lk6/i;->x(Ly6/l0;Li5/l;)Z

    move-result p0

    return p0
.end method

.method public static x(Ly6/l0;Li5/l;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_34

    if-eqz p1, :cond_2e

    invoke-static {p0, p1}, Lk6/i;->u(Ly6/l0;Li5/l;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    return v1

    :cond_d
    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/l0;

    invoke-static {v0, p1}, Lk6/i;->x(Ly6/l0;Li5/l;)Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    :cond_2c
    const/4 p0, 0x0

    return p0

    :cond_2e
    const/16 p0, 0x21

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0

    :cond_34
    const/16 p0, 0x20

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0
.end method

.method public static y(Li5/l;)Z
    .registers 1

    if-eqz p0, :cond_c

    invoke-interface {p0}, Li5/l;->b()Li5/l;

    move-result-object p0

    instance-of p0, p0, Li5/h0;

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static z(Li5/b;)Li5/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Li5/b;",
            ">(TD;)TD;"
        }
    .end annotation

    if-eqz p0, :cond_37

    :goto_2
    invoke-interface {p0}, Li5/b;->f()Li5/b$a;

    move-result-object v0

    sget-object v1, Li5/b$a;->b:Li5/b$a;

    if-ne v0, v1, :cond_36

    invoke-interface {p0}, Li5/b;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/b;

    goto :goto_2

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fake override should have at least one overridden descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    return-object p0

    :cond_37
    const/16 p0, 0x3b

    invoke-static {p0}, Lk6/i;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
