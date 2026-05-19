.class public final Lv5/h$j;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/h;-><init>(Lu5/g;Li5/e;Ly5/g;ZLv5/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lh6/f;",
        "Li5/e;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaClassMemberScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaClassMemberScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaClassMemberScope$nestedClasses$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,890:1\n1#2:891\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/h;

.field public final synthetic b:Lu5/g;


# direct methods
.method public constructor <init>(Lv5/h;Lu5/g;)V
    .registers 3

    iput-object p1, p0, Lv5/h$j;->a:Lv5/h;

    iput-object p2, p0, Lv5/h$j;->b:Lu5/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    move-object v2, p1

    check-cast v2, Lh6/f;

    const-string p1, "name"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lv5/h$j;->a:Lv5/h;

    iget-object p1, p1, Lv5/h;->r:Lx6/i;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_58

    iget-object p1, p0, Lv5/h$j;->b:Lu5/g;

    iget-object p1, p1, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->b:Lr5/s;

    new-instance v1, Lr5/s$a;

    iget-object v3, p0, Lv5/h$j;->a:Lv5/h;

    iget-object v3, v3, Lv5/h;->n:Li5/e;

    invoke-static {v3}, Lo6/c;->f(Li5/h;)Lh6/b;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lh6/b;->d(Lh6/f;)Lh6/b;

    move-result-object v2

    const-string v3, "ownerDescriptor.classId!…createNestedClassId(name)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lv5/h$j;->a:Lv5/h;

    iget-object v3, v3, Lv5/h;->o:Ly5/g;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v0, v3, v4}, Lr5/s$a;-><init>(Lh6/b;[BLy5/g;I)V

    invoke-interface {p1, v1}, Lr5/s;->c(Lr5/s$a;)Ly5/g;

    move-result-object p1

    if-eqz p1, :cond_ef

    iget-object v1, p0, Lv5/h$j;->b:Lu5/g;

    iget-object p0, p0, Lv5/h$j;->a:Lv5/h;

    new-instance v2, Lv5/f;

    iget-object p0, p0, Lv5/h;->n:Li5/e;

    invoke-direct {v2, v1, p0, p1, v0}, Lv5/f;-><init>(Lu5/g;Li5/l;Ly5/g;Li5/e;)V

    iget-object p0, v1, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->s:Lr5/t;

    invoke-interface {p0, v2}, Lr5/t;->a(Lt5/c;)V

    move-object v0, v2

    goto/16 :goto_ef

    :cond_58
    iget-object p1, p0, Lv5/h$j;->a:Lv5/h;

    iget-object p1, p1, Lv5/h;->s:Lx6/i;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ac

    iget-object p1, p0, Lv5/h$j;->b:Lu5/g;

    iget-object p0, p0, Lv5/h$j;->a:Lv5/h;

    invoke-static {}, Li4/o;->c()Ljava/util/List;

    move-result-object v1

    iget-object v3, p1, Lu5/g;->a:Lu5/c;

    iget-object v3, v3, Lu5/c;->x:Lp6/e;

    iget-object p0, p0, Lv5/h;->n:Li5/e;

    invoke-interface {v3, p1, p0, v2, v1}, Lp6/e;->d(Lu5/g;Li5/e;Lh6/f;Ljava/util/List;)V

    invoke-static {v1}, Li4/o;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Li4/d;

    invoke-virtual {p1}, Li4/d;->a()I

    move-result p1

    if-eqz p1, :cond_ef

    const/4 v0, 0x1

    if-ne p1, v0, :cond_91

    invoke-static {p0}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Li5/e;

    goto :goto_ef

    :cond_91
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple classes with same name are generated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ac
    iget-object p1, p0, Lv5/h$j;->a:Lv5/h;

    iget-object p1, p1, Lv5/h;->t:Lx6/i;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly5/n;

    if-eqz p1, :cond_ef

    iget-object v0, p0, Lv5/h$j;->b:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->a:Lx6/m;

    new-instance v1, Lv5/i;

    iget-object v3, p0, Lv5/h$j;->a:Lv5/h;

    invoke-direct {v1, v3}, Lv5/i;-><init>(Lv5/h;)V

    invoke-interface {v0, v1}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object v3

    iget-object v0, p0, Lv5/h$j;->b:Lu5/g;

    iget-object v1, v0, Lu5/g;->a:Lu5/c;

    iget-object v1, v1, Lu5/c;->a:Lx6/m;

    iget-object v4, p0, Lv5/h$j;->a:Lv5/h;

    iget-object v4, v4, Lv5/h;->n:Li5/e;

    invoke-static {v0, p1}, Ly1/a;->a(Lu5/g;Ly5/d;)Lj5/h;

    move-result-object v5

    iget-object p0, p0, Lv5/h$j;->b:Lu5/g;

    iget-object p0, p0, Lu5/g;->a:Lu5/c;

    iget-object p0, p0, Lu5/c;->j:Lx5/b;

    invoke-interface {p0, p1}, Lx5/b;->a(Ly5/l;)Lx5/a;

    move-result-object p0

    move-object v0, v1

    move-object v1, v4

    move-object v4, v5

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Ll5/p;->D0(Lx6/m;Li5/e;Lh6/f;Lx6/i;Lj5/h;Li5/v0;)Ll5/p;

    move-result-object v0

    :cond_ef
    :goto_ef
    return-object v0
.end method
