.class public Lz6/r;
.super Ljava/lang/Object;
.source ""


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

    packed-switch p0, :pswitch_data_56

    :pswitch_7  #0x3
    const-string v2, "a"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_c  #0x9
    const-string v2, "typeProjection"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_11  #0x8
    const-string v2, "type"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_16  #0x6, 0xb
    const-string v2, "supertype"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_1b  #0x5, 0xa
    const-string v2, "subtype"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_20  #0x2, 0x7
    const-string v2, "typeCheckingProcedure"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_25  #0x1, 0x4
    const-string v2, "b"

    aput-object v2, v0, v1

    :goto_29
    const/4 v1, 0x1

    const-string v2, "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckerProcedureCallbacksImpl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_70

    const-string p0, "assertEqualTypes"

    aput-object p0, v0, v1

    goto :goto_4a

    :pswitch_37  #0xa, 0xb
    const-string p0, "noCorrespondingSupertype"

    aput-object p0, v0, v1

    goto :goto_4a

    :pswitch_3c  #0x8, 0x9
    const-string p0, "capture"

    aput-object p0, v0, v1

    goto :goto_4a

    :pswitch_41  #0x5, 0x6, 0x7
    const-string p0, "assertSubtype"

    aput-object p0, v0, v1

    goto :goto_4a

    :pswitch_46  #0x3, 0x4
    const-string p0, "assertEqualTypeConstructors"

    aput-object p0, v0, v1

    :goto_4a
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_25  #00000001
        :pswitch_20  #00000002
        :pswitch_7  #00000003
        :pswitch_25  #00000004
        :pswitch_1b  #00000005
        :pswitch_16  #00000006
        :pswitch_20  #00000007
        :pswitch_11  #00000008
        :pswitch_c  #00000009
        :pswitch_1b  #0000000a
        :pswitch_16  #0000000b
    .end packed-switch

    :pswitch_data_70
    .packed-switch 0x3
        :pswitch_46  #00000003
        :pswitch_46  #00000004
        :pswitch_41  #00000005
        :pswitch_41  #00000006
        :pswitch_41  #00000007
        :pswitch_3c  #00000008
        :pswitch_3c  #00000009
        :pswitch_37  #0000000a
        :pswitch_37  #0000000b
    .end packed-switch
.end method


# virtual methods
.method public b(Ly6/j1;Ly6/j1;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_f

    if-eqz p2, :cond_a

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    const/4 p1, 0x4

    invoke-static {p1}, Lz6/r;->a(I)V

    throw p0

    :cond_f
    const/4 p1, 0x3

    invoke-static {p1}, Lz6/r;->a(I)V

    throw p0
.end method
