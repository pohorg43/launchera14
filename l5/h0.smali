.class public Ll5/h0;
.super Ll5/e0;
.source ""

# interfaces
.implements Li5/q0;


# instance fields
.field public m:Li5/e1;

.field public final n:Li5/q0;


# direct methods
.method public constructor <init>(Li5/o0;Lj5/h;Li5/d0;Li5/t;ZZZLi5/b$a;Li5/q0;Li5/v0;)V
    .registers 23

    const/4 v0, 0x0

    if-eqz p2, :cond_57

    if-eqz p3, :cond_52

    if-eqz p4, :cond_4d

    if-eqz p8, :cond_48

    if-eqz p10, :cond_43

    const-string v0, "<set-"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh6/f;->h(Ljava/lang/String;)Lh6/f;

    move-result-object v6

    move-object v1, p0

    move-object v2, p3

    move-object/from16 v3, p4

    move-object v4, p1

    move-object v5, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Ll5/e0;-><init>(Li5/d0;Li5/t;Li5/o0;Lj5/h;Lh6/f;ZZZLi5/b$a;Li5/v0;)V

    if-eqz p9, :cond_3e

    move-object v1, p0

    move-object/from16 v0, p9

    goto :goto_40

    :cond_3e
    move-object v0, p0

    move-object v1, v0

    :goto_40
    iput-object v0, v1, Ll5/h0;->n:Li5/q0;

    return-void

    :cond_43
    const/4 v1, 0x5

    invoke-static {v1}, Ll5/h0;->z(I)V

    throw v0

    :cond_48
    const/4 v1, 0x4

    invoke-static {v1}, Ll5/h0;->z(I)V

    throw v0

    :cond_4d
    const/4 v1, 0x3

    invoke-static {v1}, Ll5/h0;->z(I)V

    throw v0

    :cond_52
    const/4 v1, 0x2

    invoke-static {v1}, Ll5/h0;->z(I)V

    throw v0

    :cond_57
    const/4 v1, 0x1

    invoke-static {v1}, Ll5/h0;->z(I)V

    throw v0
.end method

.method public static E0(Li5/q0;Ly6/l0;Lj5/h;)Ll5/o0;
    .registers 16

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    if-eqz p2, :cond_19

    new-instance v0, Ll5/o0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v6, Lh6/h;->h:Lh6/f;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Li5/v0;->a:Li5/v0;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v12}, Ll5/o0;-><init>(Li5/a;Li5/e1;ILj5/h;Lh6/f;Ly6/l0;ZZZLy6/l0;Li5/v0;)V

    return-object v0

    :cond_19
    const/16 p0, 0x9

    invoke-static {p0}, Ll5/h0;->z(I)V

    throw v0

    :cond_1f
    const/16 p0, 0x8

    invoke-static {p0}, Ll5/h0;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 7

    packed-switch p0, :pswitch_data_84

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6  #0xa, 0xb, 0xc, 0xd
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_90

    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e  #0xa, 0xb, 0xc, 0xd
    move v2, v1

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_9c

    const-string v5, "correspondingProperty"

    aput-object v5, v2, v4

    goto :goto_46

    :pswitch_1c  #0xa, 0xb, 0xc, 0xd
    aput-object v3, v2, v4

    goto :goto_46

    :pswitch_1f  #0x8
    const-string v5, "type"

    aput-object v5, v2, v4

    goto :goto_46

    :pswitch_24  #0x7
    const-string v5, "setterDescriptor"

    aput-object v5, v2, v4

    goto :goto_46

    :pswitch_29  #0x6
    const-string v5, "parameter"

    aput-object v5, v2, v4

    goto :goto_46

    :pswitch_2e  #0x5
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_46

    :pswitch_33  #0x4
    const-string v5, "kind"

    aput-object v5, v2, v4

    goto :goto_46

    :pswitch_38  #0x3
    const-string v5, "visibility"

    aput-object v5, v2, v4

    goto :goto_46

    :pswitch_3d  #0x2
    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_46

    :pswitch_42  #0x1, 0x9
    const-string v5, "annotations"

    aput-object v5, v2, v4

    :goto_46
    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_ba

    aput-object v3, v2, v4

    goto :goto_60

    :pswitch_4d  #0xd
    const-string v3, "getOriginal"

    aput-object v3, v2, v4

    goto :goto_60

    :pswitch_52  #0xc
    const-string v3, "getReturnType"

    aput-object v3, v2, v4

    goto :goto_60

    :pswitch_57  #0xb
    const-string v3, "getValueParameters"

    aput-object v3, v2, v4

    goto :goto_60

    :pswitch_5c  #0xa
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v4

    :goto_60
    packed-switch p0, :pswitch_data_c6

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_71

    :pswitch_68  #0x7, 0x8, 0x9
    const-string v3, "createSetterParameter"

    aput-object v3, v2, v1

    goto :goto_71

    :pswitch_6d  #0x6
    const-string v3, "initialize"

    aput-object v3, v2, v1

    :goto_71
    :pswitch_71  #0xa, 0xb, 0xc, 0xd
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_da

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_83

    :pswitch_7e  #0xa, 0xb, 0xc, 0xd
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_83
    throw p0

    :pswitch_data_84
    .packed-switch 0xa
        :pswitch_6  #0000000a
        :pswitch_6  #0000000b
        :pswitch_6  #0000000c
        :pswitch_6  #0000000d
    .end packed-switch

    :pswitch_data_90
    .packed-switch 0xa
        :pswitch_e  #0000000a
        :pswitch_e  #0000000b
        :pswitch_e  #0000000c
        :pswitch_e  #0000000d
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_42  #00000001
        :pswitch_3d  #00000002
        :pswitch_38  #00000003
        :pswitch_33  #00000004
        :pswitch_2e  #00000005
        :pswitch_29  #00000006
        :pswitch_24  #00000007
        :pswitch_1f  #00000008
        :pswitch_42  #00000009
        :pswitch_1c  #0000000a
        :pswitch_1c  #0000000b
        :pswitch_1c  #0000000c
        :pswitch_1c  #0000000d
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0xa
        :pswitch_5c  #0000000a
        :pswitch_57  #0000000b
        :pswitch_52  #0000000c
        :pswitch_4d  #0000000d
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x6
        :pswitch_6d  #00000006
        :pswitch_68  #00000007
        :pswitch_68  #00000008
        :pswitch_68  #00000009
        :pswitch_71  #0000000a
        :pswitch_71  #0000000b
        :pswitch_71  #0000000c
        :pswitch_71  #0000000d
    .end packed-switch

    :pswitch_data_da
    .packed-switch 0xa
        :pswitch_7e  #0000000a
        :pswitch_7e  #0000000b
        :pswitch_7e  #0000000c
        :pswitch_7e  #0000000d
    .end packed-switch
.end method


# virtual methods
.method public F(Li5/n;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Li5/n<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Li5/n;->i(Li5/q0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public F0()Li5/q0;
    .registers 1

    iget-object p0, p0, Ll5/h0;->n:Li5/q0;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0xd

    invoke-static {p0}, Ll5/h0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public G0(Li5/e1;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Ll5/h0;->m:Li5/e1;

    return-void

    :cond_5
    const/4 p0, 0x6

    invoke-static {p0}, Ll5/h0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic a()Li5/a;
    .registers 1

    invoke-virtual {p0}, Ll5/h0;->F0()Li5/q0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/b;
    .registers 1

    invoke-virtual {p0}, Ll5/h0;->F0()Li5/q0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/l;
    .registers 1

    invoke-virtual {p0}, Ll5/h0;->F0()Li5/q0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/x;
    .registers 1

    invoke-virtual {p0}, Ll5/h0;->F0()Li5/q0;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Li5/q0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ll5/e0;->D0(Z)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/e1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ll5/h0;->m:Li5/e1;

    if-eqz p0, :cond_12

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    const/16 p0, 0xb

    invoke-static {p0}, Ll5/h0;->z(I)V

    const/4 p0, 0x0

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getReturnType()Ly6/l0;
    .registers 1

    invoke-static {p0}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object p0

    invoke-virtual {p0}, Lf5/g;->y()Ly6/s0;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    const/16 p0, 0xc

    invoke-static {p0}, Ll5/h0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic x0()Li5/o;
    .registers 1

    invoke-virtual {p0}, Ll5/h0;->F0()Li5/q0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic z0()Li5/n0;
    .registers 1

    invoke-virtual {p0}, Ll5/h0;->F0()Li5/q0;

    move-result-object p0

    return-object p0
.end method
