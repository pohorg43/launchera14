.class public abstract Li6/h;
.super Li6/a;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/h$f;,
        Li6/h$e;,
        Li6/h$c;,
        Li6/h$d;,
        Li6/h$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Li6/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Li6/h$b;)V
    .registers 2

    invoke-direct {p0}, Li6/a;-><init>()V

    return-void
.end method

.method public static c(Li6/p;Li6/p;Li6/i$b;ILi6/y;ZLjava/lang/Class;)Li6/h$f;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Li6/p;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Li6/p;",
            "Li6/i$b<",
            "*>;I",
            "Li6/y;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Li6/h$f<",
            "TContainingType;TType;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v6, Li6/h$f;

    new-instance v4, Li6/h$e;

    const/4 v8, 0x0

    const/4 v11, 0x1

    move-object v7, v4

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Li6/h$e;-><init>(Li6/i$b;ILi6/y;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Li6/h$f;-><init>(Li6/p;Ljava/lang/Object;Li6/p;Li6/h$e;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static d(Li6/p;Ljava/lang/Object;Li6/p;Li6/i$b;ILi6/y;Ljava/lang/Class;)Li6/h$f;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Li6/p;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Li6/p;",
            "Li6/i$b<",
            "*>;I",
            "Li6/y;",
            "Ljava/lang/Class;",
            ")",
            "Li6/h$f<",
            "TContainingType;TType;>;"
        }
    .end annotation

    new-instance p3, Li6/h$f;

    new-instance v6, Li6/h$e;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Li6/h$e;-><init>(Li6/i$b;ILi6/y;ZZ)V

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Li6/h$f;-><init>(Li6/p;Ljava/lang/Object;Li6/p;Li6/h$e;Ljava/lang/Class;)V

    return-object p3
.end method
