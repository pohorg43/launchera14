.class public final Ls5/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ls5/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_4a

    const-string v2, "method"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_c  #0x6
    const-string v2, "signatureErrors"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_11  #0x5
    const-string v2, "descriptor"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_16  #0x4
    const-string v2, "typeParameters"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_1b  #0x3
    const-string v2, "valueParameters"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_20  #0x2
    const-string v2, "returnType"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_25  #0x1
    const-string v2, "owner"

    aput-object v2, v0, v1

    :goto_29
    const/4 v1, 0x1

    const-string v2, "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eq p0, v1, :cond_3a

    const/4 v1, 0x6

    if-eq p0, v1, :cond_3a

    const-string p0, "resolvePropagatedSignature"

    aput-object p0, v0, v2

    goto :goto_3e

    :cond_3a
    const-string p0, "reportSignatureErrors"

    aput-object p0, v0, v2

    :goto_3e
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_25  #00000001
        :pswitch_20  #00000002
        :pswitch_1b  #00000003
        :pswitch_16  #00000004
        :pswitch_11  #00000005
        :pswitch_c  #00000006
    .end packed-switch
.end method
