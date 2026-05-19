.class public final Lv5/j$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/j;-><init>(Lu5/g;Ly5/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "La6/t;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaPackageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaPackageFragment.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaPackageFragment$binaryClasses$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1603#2,9:98\n1855#2:107\n1856#2:110\n1612#2:111\n1#3:108\n1#3:109\n*S KotlinDebug\n*F\n+ 1 LazyJavaPackageFragment.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaPackageFragment$binaryClasses$2\n*L\n47#1:98,9\n47#1:107\n47#1:110\n47#1:111\n47#1:109\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/j;


# direct methods
.method public constructor <init>(Lv5/j;)V
    .registers 2

    iput-object p1, p0, Lv5/j$a;->a:Lv5/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lv5/j$a;->a:Lv5/j;

    iget-object v1, v0, Lv5/j;->h:Lu5/g;

    iget-object v1, v1, Lu5/g;->a:Lu5/c;

    iget-object v1, v1, Lu5/c;->l:La6/y;

    iget-object v0, v0, Ll5/c0;->e:Lh6/c;

    invoke-virtual {v0}, Lh6/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fqName.asString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, La6/y;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lv5/j$a;->a:Lv5/j;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lp6/c;->d(Ljava/lang/String;)Lp6/c;

    move-result-object v3

    new-instance v4, Lh6/c;

    iget-object v3, v3, Lp6/c;->a:Ljava/lang/String;

    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v3

    const-string v4, "topLevel(JvmClassName.by…velClassMaybeWithDollars)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lv5/j;->h:Lu5/g;

    iget-object v4, v4, Lu5/g;->a:Lu5/c;

    iget-object v4, v4, Lu5/c;->c:La6/r;

    iget-object v5, p0, Lv5/j;->i:Lg6/e;

    invoke-static {v4, v3, v5}, La6/s;->a(La6/r;Lh6/b;Lg6/e;)La6/t;

    move-result-object v3

    if-eqz v3, :cond_5e

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5f

    :cond_5e
    const/4 v4, 0x0

    :goto_5f
    if-eqz v4, :cond_22

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_65
    invoke-static {v1}, Li4/k0;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
