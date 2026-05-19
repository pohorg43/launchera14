.class public final Lr5/n;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static synthetic a(I)V
    .registers 7

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p0, v3, :cond_16

    if-eq p0, v4, :cond_16

    if-eq p0, v0, :cond_11

    const-string v5, "propertyDescriptor"

    aput-object v5, v1, v2

    goto :goto_1a

    :cond_11
    const-string v5, "memberDescriptor"

    aput-object v5, v1, v2

    goto :goto_1a

    :cond_16
    const-string v5, "companionObject"

    aput-object v5, v1, v2

    :goto_1a
    const-string v2, "kotlin/reflect/jvm/internal/impl/load/java/DescriptorsJvmAbiUtil"

    aput-object v2, v1, v3

    if-eq p0, v3, :cond_33

    if-eq p0, v4, :cond_2e

    if-eq p0, v0, :cond_29

    const-string p0, "isPropertyWithBackingFieldInOuterClass"

    aput-object p0, v1, v4

    goto :goto_37

    :cond_29
    const-string p0, "hasJvmFieldAnnotation"

    aput-object p0, v1, v4

    goto :goto_37

    :cond_2e
    const-string p0, "isMappedIntrinsicCompanionObject"

    aput-object p0, v1, v4

    goto :goto_37

    :cond_33
    const-string p0, "isClassCompanionObjectWithBackingFieldsInOuter"

    aput-object p0, v1, v4

    :goto_37
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
