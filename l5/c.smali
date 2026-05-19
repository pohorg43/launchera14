.class public abstract Ll5/c;
.super Ll5/g;
.source ""


# direct methods
.method public constructor <init>(Lx6/m;Li5/l;Lj5/h;Lh6/f;Ly6/e2;ZILi5/v0;Li5/y0;)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_17

    if-eqz p4, :cond_12

    if-eqz p9, :cond_d

    invoke-direct/range {p0 .. p9}, Ll5/g;-><init>(Lx6/m;Li5/l;Lj5/h;Lh6/f;Ly6/e2;ZILi5/v0;Li5/y0;)V

    return-void

    :cond_d
    const/4 p0, 0x6

    invoke-static {p0}, Ll5/c;->z(I)V

    throw v0

    :cond_12
    const/4 p0, 0x3

    invoke-static {p0}, Ll5/c;->z(I)V

    throw v0

    :cond_17
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/c;->z(I)V

    throw v0

    :cond_1c
    const/4 p0, 0x0

    invoke-static {p0}, Ll5/c;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_40

    const-string p0, "storageManager"

    aput-object p0, v0, v1

    goto :goto_29

    :pswitch_c  #0x6
    const-string p0, "supertypeLoopChecker"

    aput-object p0, v0, v1

    goto :goto_29

    :pswitch_11  #0x5
    const-string p0, "source"

    aput-object p0, v0, v1

    goto :goto_29

    :pswitch_16  #0x4
    const-string p0, "variance"

    aput-object p0, v0, v1

    goto :goto_29

    :pswitch_1b  #0x3
    const-string p0, "name"

    aput-object p0, v0, v1

    goto :goto_29

    :pswitch_20  #0x2
    const-string p0, "annotations"

    aput-object p0, v0, v1

    goto :goto_29

    :pswitch_25  #0x1
    const-string p0, "containingDeclaration"

    aput-object p0, v0, v1

    :goto_29
    const/4 p0, 0x1

    const-string v1, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractLazyTypeParameterDescriptor"

    aput-object v1, v0, p0

    const/4 p0, 0x2

    const-string v1, "<init>"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_25  #00000001
        :pswitch_20  #00000002
        :pswitch_1b  #00000003
        :pswitch_16  #00000004
        :pswitch_11  #00000005
        :pswitch_c  #00000006
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Ll5/g;->f:Z

    const-string v2, ""

    if-eqz v1, :cond_c

    const-string v1, "reified "

    goto :goto_d

    :cond_c
    move-object v1, v2

    :goto_d
    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-virtual {p0}, Ll5/g;->getVariance()Ly6/e2;

    move-result-object v3

    sget-object v4, Ly6/e2;->c:Ly6/e2;

    if-ne v3, v4, :cond_1a

    goto :goto_2f

    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ll5/g;->getVariance()Ly6/e2;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2f
    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Ll5/m;->getName()Lh6/f;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s%s%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
