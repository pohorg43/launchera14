.class public final Lv5/e$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/e;-><init>(Lu5/g;Ly5/a;Z)V
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
        "Lh6/f;",
        "+",
        "Lm6/g<",
        "*>;>;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaAnnotationDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaAnnotationDescriptor.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor$allValueArguments$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,124:1\n1603#2,9:125\n1855#2:134\n1856#2:137\n1612#2:138\n1#3:135\n1#3:136\n*S KotlinDebug\n*F\n+ 1 LazyJavaAnnotationDescriptor.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaAnnotationDescriptor$allValueArguments$2\n*L\n62#1:125,9\n62#1:134\n62#1:137\n62#1:138\n62#1:136\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/e;


# direct methods
.method public constructor <init>(Lv5/e;)V
    .registers 2

    iput-object p1, p0, Lv5/e$a;->a:Lv5/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lv5/e$a;->a:Lv5/e;

    iget-object v0, v0, Lv5/e;->b:Ly5/a;

    invoke-interface {v0}, Ly5/a;->getArguments()Ljava/util/Collection;

    move-result-object v0

    iget-object p0, p0, Lv5/e$a;->a:Lv5/e;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly5/b;

    invoke-interface {v2}, Ly5/b;->getName()Lh6/f;

    move-result-object v3

    if-nez v3, :cond_27

    sget-object v3, Lr5/f0;->b:Lh6/f;

    :cond_27
    invoke-virtual {p0, v2}, Lv5/e;->b(Ly5/b;)Lm6/g;

    move-result-object v2

    if-eqz v2, :cond_33

    new-instance v4, Lh4/j;

    invoke-direct {v4, v3, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    :goto_34
    if-eqz v4, :cond_13

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_3a
    invoke-static {v1}, Li4/k0;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
