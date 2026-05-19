.class public Lv3/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lv3/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;Ljava/util/Set;Lv3/e0;)Lv3/r;
    .registers 5
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

    invoke-static {p1}, Lv3/i0;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_c

    return-object v0

    :cond_c
    const-class p2, Ljava/util/List;

    if-eq p0, p2, :cond_2e

    const-class p2, Ljava/util/Collection;

    if-ne p0, p2, :cond_15

    goto :goto_2e

    :cond_15
    const-class p2, Ljava/util/Set;

    if-ne p0, p2, :cond_2d

    const-class p0, Ljava/util/Collection;

    invoke-static {p1, p0}, Lv3/i0;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {p3, p0}, Lv3/e0;->b(Ljava/lang/reflect/Type;)Lv3/r;

    move-result-object p0

    new-instance p1, Lv3/o;

    invoke-direct {p1, p0}, Lv3/o;-><init>(Lv3/r;)V

    invoke-virtual {p1}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    return-object p0

    :cond_2d
    return-object v0

    :cond_2e
    :goto_2e
    const-class p0, Ljava/util/Collection;

    invoke-static {p1, p0}, Lv3/i0;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {p3, p0}, Lv3/e0;->b(Ljava/lang/reflect/Type;)Lv3/r;

    move-result-object p0

    new-instance p1, Lv3/n;

    invoke-direct {p1, p0}, Lv3/n;-><init>(Lv3/r;)V

    invoke-virtual {p1}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    return-object p0
.end method
