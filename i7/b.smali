.class public Li7/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li7/b$f;,
        Li7/b$b;,
        Li7/b$e;,
        Li7/b$c;,
        Li7/b$d;
    }
.end annotation


# direct methods
.method public static synthetic a(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_56

    :pswitch_7  #0x4, 0x7, 0x11, 0x14
    const-string v2, "nodes"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_c  #0x16
    const-string v2, "current"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_11  #0xa, 0xe
    const-string v2, "node"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_16  #0x9
    const-string v2, "predicate"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_1b  #0x3, 0x6, 0xd, 0x19
    const-string v2, "handler"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_20  #0x2, 0xc, 0x10, 0x13, 0x18
    const-string v2, "visited"

    aput-object v2, v0, v1

    goto :goto_29

    :pswitch_25  #0x1, 0x5, 0x8, 0xb, 0xf, 0x12, 0x15, 0x17
    const-string v2, "neighbors"

    aput-object v2, v0, v1

    :goto_29
    const/4 v1, 0x1

    const-string v2, "kotlin/reflect/jvm/internal/impl/utils/DFS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_8c

    const-string p0, "dfs"

    aput-object p0, v0, v1

    goto :goto_4a

    :pswitch_37  #0x16, 0x17, 0x18, 0x19
    const-string p0, "doDfs"

    aput-object p0, v0, v1

    goto :goto_4a

    :pswitch_3c  #0x11, 0x12, 0x13, 0x14, 0x15
    const-string p0, "topologicalOrder"

    aput-object p0, v0, v1

    goto :goto_4a

    :pswitch_41  #0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10
    const-string p0, "dfsFromNode"

    aput-object p0, v0, v1

    goto :goto_4a

    :pswitch_46  #0x7, 0x8, 0x9
    const-string p0, "ifAny"

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
        :pswitch_1b  #00000003
        :pswitch_7  #00000004
        :pswitch_25  #00000005
        :pswitch_1b  #00000006
        :pswitch_7  #00000007
        :pswitch_25  #00000008
        :pswitch_16  #00000009
        :pswitch_11  #0000000a
        :pswitch_25  #0000000b
        :pswitch_20  #0000000c
        :pswitch_1b  #0000000d
        :pswitch_11  #0000000e
        :pswitch_25  #0000000f
        :pswitch_20  #00000010
        :pswitch_7  #00000011
        :pswitch_25  #00000012
        :pswitch_20  #00000013
        :pswitch_7  #00000014
        :pswitch_25  #00000015
        :pswitch_c  #00000016
        :pswitch_25  #00000017
        :pswitch_20  #00000018
        :pswitch_1b  #00000019
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x7
        :pswitch_46  #00000007
        :pswitch_46  #00000008
        :pswitch_46  #00000009
        :pswitch_41  #0000000a
        :pswitch_41  #0000000b
        :pswitch_41  #0000000c
        :pswitch_41  #0000000d
        :pswitch_41  #0000000e
        :pswitch_41  #0000000f
        :pswitch_41  #00000010
        :pswitch_3c  #00000011
        :pswitch_3c  #00000012
        :pswitch_3c  #00000013
        :pswitch_3c  #00000014
        :pswitch_3c  #00000015
        :pswitch_37  #00000016
        :pswitch_37  #00000017
        :pswitch_37  #00000018
        :pswitch_37  #00000019
    .end packed-switch
.end method

.method public static b(Ljava/util/Collection;Li7/b$c;Li7/b$d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TN;>;",
            "Li7/b$c<",
            "TN;>;",
            "Li7/b$d<",
            "TN;TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    if-eqz p1, :cond_21

    new-instance v0, Li7/b$f;

    invoke-direct {v0}, Li7/b$f;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1, v0, p2}, Li7/b;->c(Ljava/lang/Object;Li7/b$c;Li7/b$e;Li7/b$d;)V

    goto :goto_e

    :cond_1c
    invoke-interface {p2}, Li7/b$d;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_21
    const/4 p0, 0x5

    invoke-static {p0}, Li7/b;->a(I)V

    throw v0

    :cond_26
    const/4 p0, 0x4

    invoke-static {p0}, Li7/b;->a(I)V

    throw v0
.end method

.method public static c(Ljava/lang/Object;Li7/b$c;Li7/b$e;Li7/b$d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(TN;",
            "Li7/b$c<",
            "TN;>;",
            "Li7/b$e<",
            "TN;>;",
            "Li7/b$d<",
            "TN;*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_48

    if-eqz p1, :cond_42

    if-eqz p2, :cond_3c

    if-eqz p3, :cond_36

    move-object v0, p2

    check-cast v0, Li7/b$f;

    iget-object v0, v0, Li7/b$f;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    invoke-interface {p3, p0}, Li7/b$d;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    invoke-interface {p1, p0}, Li7/b$c;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Li7/b;->c(Ljava/lang/Object;Li7/b$c;Li7/b$e;Li7/b$d;)V

    goto :goto_24

    :cond_32
    invoke-interface {p3, p0}, Li7/b$d;->b(Ljava/lang/Object;)V

    return-void

    :cond_36
    const/16 p0, 0x19

    invoke-static {p0}, Li7/b;->a(I)V

    throw v0

    :cond_3c
    const/16 p0, 0x18

    invoke-static {p0}, Li7/b;->a(I)V

    throw v0

    :cond_42
    const/16 p0, 0x17

    invoke-static {p0}, Li7/b;->a(I)V

    throw v0

    :cond_48
    const/16 p0, 0x16

    invoke-static {p0}, Li7/b;->a(I)V

    throw v0
.end method

.method public static d(Ljava/util/Collection;Li7/b$c;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TN;>;",
            "Li7/b$c<",
            "TN;>;",
            "Lkotlin/jvm/functions/Function1<",
            "TN;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    if-eqz p2, :cond_14

    const/4 v0, 0x1

    new-array v0, v0, [Z

    new-instance v1, Li7/b$a;

    invoke-direct {v1, p2, v0}, Li7/b$a;-><init>(Lkotlin/jvm/functions/Function1;[Z)V

    invoke-static {p0, p1, v1}, Li7/b;->b(Ljava/util/Collection;Li7/b$c;Li7/b$d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_14
    const/16 p0, 0x9

    invoke-static {p0}, Li7/b;->a(I)V

    throw v0

    :cond_1a
    const/4 p0, 0x7

    invoke-static {p0}, Li7/b;->a(I)V

    throw v0
.end method
