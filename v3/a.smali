.class public final Lv3/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lv3/r$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/a$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv3/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv3/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lv3/a$b;",
            ">;",
            "Ljava/util/List<",
            "Lv3/a$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/a;->a:Ljava/util/List;

    iput-object p2, p0, Lv3/a;->b:Ljava/util/List;

    return-void
.end method

.method public static b(Ljava/util/List;Ljava/lang/reflect/Type;Ljava/util/Set;)Lv3/a$b;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lv3/a$b;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lv3/a$b;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_21

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv3/a$b;

    iget-object v3, v2, Lv3/a$b;->a:Ljava/lang/reflect/Type;

    invoke-static {v3, p1}, Lv3/i0;->b(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, v2, Lv3/a$b;->b:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    return-object v2

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(I[Ljava/lang/reflect/Type;)Z
    .registers 6

    array-length v0, p1

    :goto_1
    if-ge p0, v0, :cond_1b

    aget-object v1, p1, p0

    instance-of v1, v1, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    return v2

    :cond_b
    aget-object v1, p1, p0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v3, Lv3/r;

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;Ljava/util/Set;Lv3/e0;)Lv3/r;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lv3/e0;",
            ")",
            "Lv3/r<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lv3/a;->a:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lv3/a;->b(Ljava/util/List;Ljava/lang/reflect/Type;Ljava/util/Set;)Lv3/a$b;

    move-result-object v3

    iget-object v0, p0, Lv3/a;->b:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lv3/a;->b(Ljava/util/List;Ljava/lang/reflect/Type;Ljava/util/Set;)Lv3/a$b;

    move-result-object v6

    const/4 v0, 0x0

    if-nez v3, :cond_12

    if-nez v6, :cond_12

    return-object v0

    :cond_12
    if-eqz v3, :cond_16

    if-nez v6, :cond_1a

    :cond_16
    :try_start_16
    invoke-virtual {p3, p0, p1, p2}, Lv3/e0;->e(Lv3/r$a;Ljava/lang/reflect/Type;Ljava/util/Set;)Lv3/r;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1a} :catch_30

    :cond_1a
    move-object v4, v0

    if-eqz v3, :cond_20

    invoke-virtual {v3, p3, p0}, Lv3/a$b;->a(Lv3/e0;Lv3/r$a;)V

    :cond_20
    if-eqz v6, :cond_25

    invoke-virtual {v6, p3, p0}, Lv3/a$b;->a(Lv3/e0;Lv3/r$a;)V

    :cond_25
    new-instance v0, Lv3/a$a;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v7, p2

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lv3/a$a;-><init>(Lv3/a;Lv3/a$b;Lv3/r;Lv3/e0;Lv3/a$b;Ljava/util/Set;Ljava/lang/reflect/Type;)V

    return-object v0

    :catch_30
    move-exception p0

    if-nez v3, :cond_36

    const-string p3, "@ToJson"

    goto :goto_38

    :cond_36
    const-string p3, "@FromJson"

    :goto_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No "

    const-string v2, " adapter for "

    invoke-static {v1, p3, v2}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1, p2}, Lw3/b;->m(Ljava/lang/reflect/Type;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
