.class public final Ls5/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ls5/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/g;
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

    packed-switch p0, :pswitch_data_52

    const-string v2, "fqName"

    aput-object v2, v0, v1

    goto :goto_24

    :pswitch_c  #0x7
    const-string v2, "javaClass"

    aput-object v2, v0, v1

    goto :goto_24

    :pswitch_11  #0x5
    const-string v2, "field"

    aput-object v2, v0, v1

    goto :goto_24

    :pswitch_16  #0x3
    const-string v2, "element"

    aput-object v2, v0, v1

    goto :goto_24

    :pswitch_1b  #0x2, 0x4, 0x6, 0x8
    const-string v2, "descriptor"

    aput-object v2, v0, v1

    goto :goto_24

    :pswitch_20  #0x1
    const-string v2, "member"

    aput-object v2, v0, v1

    :goto_24
    const/4 v1, 0x1

    const-string v2, "kotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_66

    const-string p0, "getClassResolvedFromSource"

    aput-object p0, v0, v1

    goto :goto_45

    :pswitch_32  #0x7, 0x8
    const-string p0, "recordClass"

    aput-object p0, v0, v1

    goto :goto_45

    :pswitch_37  #0x5, 0x6
    const-string p0, "recordField"

    aput-object p0, v0, v1

    goto :goto_45

    :pswitch_3c  #0x3, 0x4
    const-string p0, "recordConstructor"

    aput-object p0, v0, v1

    goto :goto_45

    :pswitch_41  #0x1, 0x2
    const-string p0, "recordMethod"

    aput-object p0, v0, v1

    :goto_45
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_20  #00000001
        :pswitch_1b  #00000002
        :pswitch_16  #00000003
        :pswitch_1b  #00000004
        :pswitch_11  #00000005
        :pswitch_1b  #00000006
        :pswitch_c  #00000007
        :pswitch_1b  #00000008
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_41  #00000001
        :pswitch_41  #00000002
        :pswitch_3c  #00000003
        :pswitch_3c  #00000004
        :pswitch_37  #00000005
        :pswitch_37  #00000006
        :pswitch_32  #00000007
        :pswitch_32  #00000008
    .end packed-switch
.end method


# virtual methods
.method public b(Ly5/l;Li5/k;)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x3

    invoke-static {p0}, Ls5/g$a;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
