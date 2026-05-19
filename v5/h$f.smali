.class public final Lv5/h$f;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Lh6/f;",
        "+",
        "Ly5/n;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLazyJavaClassMemberScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyJavaClassMemberScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaClassMemberScope$enumEntryIndex$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,890:1\n766#2:891\n857#2,2:892\n1194#2,2:894\n1222#2,4:896\n*S KotlinDebug\n*F\n+ 1 LazyJavaClassMemberScope.kt\norg/jetbrains/kotlin/load/java/lazy/descriptors/LazyJavaClassMemberScope$enumEntryIndex$1\n*L\n811#1:891\n811#1:892,2\n811#1:894,2\n811#1:896,4\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/h;


# direct methods
.method public constructor <init>(Lv5/h;)V
    .registers 2

    iput-object p1, p0, Lv5/h$f;->a:Lv5/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    iget-object p0, p0, Lv5/h$f;->a:Lv5/h;

    iget-object p0, p0, Lv5/h;->o:Ly5/g;

    invoke-interface {p0}, Ly5/g;->u()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ly5/n;

    invoke-interface {v2}, Ly5/n;->E()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_28
    const/16 p0, 0xa

    invoke-static {v0, p0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p0

    invoke-static {p0}, Li4/j0;->b(I)I

    move-result p0

    const/16 v1, 0x10

    if-ge p0, v1, :cond_37

    move p0, v1

    :cond_37
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_40
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ly5/n;

    invoke-interface {v2}, Ly5/t;->getName()Lh6/f;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_55
    return-object v1
.end method
