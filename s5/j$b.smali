.class public Ls5/j$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls5/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ly6/l0;

.field public final b:Ly6/l0;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/e1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly6/l0;Ly6/l0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/l0;",
            "Ly6/l0;",
            "Ljava/util/List<",
            "Li5/e1;",
            ">;",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 p6, 0x0

    if-eqz p1, :cond_26

    if-eqz p3, :cond_21

    if-eqz p4, :cond_1c

    if-eqz p5, :cond_17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls5/j$b;->a:Ly6/l0;

    iput-object p2, p0, Ls5/j$b;->b:Ly6/l0;

    iput-object p3, p0, Ls5/j$b;->c:Ljava/util/List;

    iput-object p4, p0, Ls5/j$b;->d:Ljava/util/List;

    iput-object p5, p0, Ls5/j$b;->e:Ljava/util/List;

    return-void

    :cond_17
    const/4 p0, 0x3

    invoke-static {p0}, Ls5/j$b;->a(I)V

    throw p6

    :cond_1c
    const/4 p0, 0x2

    invoke-static {p0}, Ls5/j$b;->a(I)V

    throw p6

    :cond_21
    const/4 p0, 0x1

    invoke-static {p0}, Ls5/j$b;->a(I)V

    throw p6

    :cond_26
    const/4 p0, 0x0

    invoke-static {p0}, Ls5/j$b;->a(I)V

    throw p6
.end method

.method public static synthetic a(I)V
    .registers 11

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eq p0, v3, :cond_f

    if-eq p0, v2, :cond_f

    if-eq p0, v1, :cond_f

    if-eq p0, v0, :cond_f

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_11

    :cond_f
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_11
    const/4 v5, 0x2

    if-eq p0, v3, :cond_1c

    if-eq p0, v2, :cond_1c

    if-eq p0, v1, :cond_1c

    if-eq p0, v0, :cond_1c

    const/4 v6, 0x3

    goto :goto_1d

    :cond_1c
    move v6, v5

    :goto_1d
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_7e

    const-string v9, "returnType"

    aput-object v9, v6, v8

    goto :goto_3b

    :pswitch_2a  #0x4, 0x5, 0x6, 0x7
    aput-object v7, v6, v8

    goto :goto_3b

    :pswitch_2d  #0x3
    const-string v9, "signatureErrors"

    aput-object v9, v6, v8

    goto :goto_3b

    :pswitch_32  #0x2
    const-string v9, "typeParameters"

    aput-object v9, v6, v8

    goto :goto_3b

    :pswitch_37  #0x1
    const-string v9, "valueParameters"

    aput-object v9, v6, v8

    :goto_3b
    const/4 v8, 0x1

    if-eq p0, v3, :cond_56

    if-eq p0, v2, :cond_51

    if-eq p0, v1, :cond_4c

    if-eq p0, v0, :cond_47

    aput-object v7, v6, v8

    goto :goto_5a

    :cond_47
    const-string v7, "getErrors"

    aput-object v7, v6, v8

    goto :goto_5a

    :cond_4c
    const-string v7, "getTypeParameters"

    aput-object v7, v6, v8

    goto :goto_5a

    :cond_51
    const-string v7, "getValueParameters"

    aput-object v7, v6, v8

    goto :goto_5a

    :cond_56
    const-string v7, "getReturnType"

    aput-object v7, v6, v8

    :goto_5a
    if-eq p0, v3, :cond_66

    if-eq p0, v2, :cond_66

    if-eq p0, v1, :cond_66

    if-eq p0, v0, :cond_66

    const-string v7, "<init>"

    aput-object v7, v6, v5

    :cond_66
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_78

    if-eq p0, v2, :cond_78

    if-eq p0, v1, :cond_78

    if-eq p0, v0, :cond_78

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7d

    :cond_78
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_7d
    throw p0

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_37  #00000001
        :pswitch_32  #00000002
        :pswitch_2d  #00000003
        :pswitch_2a  #00000004
        :pswitch_2a  #00000005
        :pswitch_2a  #00000006
        :pswitch_2a  #00000007
    .end packed-switch
.end method
